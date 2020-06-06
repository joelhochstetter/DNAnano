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
	<24.201805, 34.944187, 34.515007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182610, 34.949627, 34.914509>,  <24.171093, 34.952892, 35.154209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182610, 34.949627, 34.914509>,  <24.201805, 34.944187, 34.515007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182610, 34.949627, 34.914509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137712, -0.990268, 0.020100,
		0.989309, 0.138505, 0.045648,
		-0.047988, 0.013599, 0.998755,
		24.168213, 34.953705, 35.214134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686245, 34.594067, 34.930370>,  <24.201805, 34.944187, 34.515007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686245, 34.594067, 34.930370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368223, 34.616547, 35.171940>,  <24.177410, 34.630035, 35.316883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368223, 34.616547, 35.171940>,  <24.686245, 34.594067, 34.930370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368223, 34.616547, 35.171940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130067, -0.956736, 0.260267,
		0.592427, 0.285478, 0.753348,
		-0.795056, 0.056203, 0.603927,
		24.129707, 34.633408, 35.353119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886120, 34.405895, 35.732338>,  <24.686245, 34.594067, 34.930370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886120, 34.405895, 35.732338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511023, 34.335361, 35.612644>,  <24.285965, 34.293041, 35.540829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511023, 34.335361, 35.612644>,  <24.886120, 34.405895, 35.732338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511023, 34.335361, 35.612644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084767, -0.951675, 0.295176,
		-0.336825, 0.251434, 0.907375,
		-0.937744, -0.176338, -0.299235,
		24.229700, 34.282459, 35.522873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573780, 34.611095, 35.577766>,  <24.886120, 34.405895, 35.732338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573780, 34.611095, 35.577766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764053, 34.582722, 35.928467>,  <25.878218, 34.565697, 36.138889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764053, 34.582722, 35.928467>,  <25.573780, 34.611095, 35.577766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764053, 34.582722, 35.928467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113407, -0.993370, -0.018840,
		0.872276, -0.090468, -0.480573,
		0.475682, -0.070934, 0.876753,
		25.906757, 34.561443, 36.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205082, 34.049152, 35.460789>,  <25.573780, 34.611095, 35.577766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205082, 34.049152, 35.460789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031643, 34.094788, 35.818333>,  <25.927580, 34.122169, 36.032860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031643, 34.094788, 35.818333>,  <26.205082, 34.049152, 35.460789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031643, 34.094788, 35.818333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227664, -0.973641, 0.013838,
		0.871874, -0.197499, 0.448141,
		-0.433595, 0.114091, 0.893856,
		25.901564, 34.129013, 36.086491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760490, 33.996258, 36.030708>,  <26.205082, 34.049152, 35.460789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760490, 33.996258, 36.030708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145897, 34.098278, 35.998241>,  <27.377140, 34.159492, 35.978760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145897, 34.098278, 35.998241>,  <26.760490, 33.996258, 36.030708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145897, 34.098278, 35.998241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065517, -0.069296, -0.995442,
		-0.259515, 0.964441, -0.050058,
		0.963514, 0.255053, -0.081170,
		27.434952, 34.174793, 35.973892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804283, 34.525063, 35.511829>,  <26.760490, 33.996258, 36.030708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804283, 34.525063, 35.511829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159994, 34.342609, 35.525230>,  <27.373421, 34.233135, 35.533272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159994, 34.342609, 35.525230>,  <26.804283, 34.525063, 35.511829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159994, 34.342609, 35.525230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133358, 0.188523, -0.972972,
		0.437492, 0.869711, 0.228479,
		0.889279, -0.456137, 0.033506,
		27.426777, 34.205769, 35.535282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224897, 34.990017, 35.255436>,  <26.804283, 34.525063, 35.511829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224897, 34.990017, 35.255436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391306, 34.627140, 35.230362>,  <27.491150, 34.409412, 35.215317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391306, 34.627140, 35.230362>,  <27.224897, 34.990017, 35.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391306, 34.627140, 35.230362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028599, 0.081954, -0.996226,
		0.908906, 0.412657, 0.060039,
		0.416019, -0.907192, -0.062687,
		27.516111, 34.354980, 35.211555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783543, 35.050694, 34.801655>,  <27.224897, 34.990017, 35.255436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783543, 35.050694, 34.801655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705383, 34.658493, 34.793228>,  <27.658487, 34.423172, 34.788170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705383, 34.658493, 34.793228>,  <27.783543, 35.050694, 34.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705383, 34.658493, 34.793228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111671, -0.000901, -0.993745,
		0.974346, -0.196526, 0.109669,
		-0.195396, -0.980498, -0.021069,
		27.646765, 34.364342, 34.786907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298460, 34.832237, 34.363262>,  <27.783543, 35.050694, 34.801655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298460, 34.832237, 34.363262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030899, 34.534962, 34.369499>,  <27.870361, 34.356598, 34.373241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030899, 34.534962, 34.369499>,  <28.298460, 34.832237, 34.363262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030899, 34.534962, 34.369499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041902, -0.058637, -0.997400,
		0.742167, -0.666512, 0.070364,
		-0.668904, -0.743185, 0.015590,
		27.830227, 34.312008, 34.374176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586885, 34.162632, 34.314522>,  <28.298460, 34.832237, 34.363262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586885, 34.162632, 34.314522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210814, 34.123619, 34.183952>,  <27.985170, 34.100212, 34.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210814, 34.123619, 34.183952>,  <28.586885, 34.162632, 34.314522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210814, 34.123619, 34.183952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, -0.227213, -0.912431,
		0.014824, -0.968949, 0.246817,
		-0.940179, -0.097532, -0.326421,
		27.928761, 34.094360, 34.086025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682850, 33.755127, 33.789021>,  <28.586885, 34.162632, 34.314522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682850, 33.755127, 33.789021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293493, 33.838913, 33.751858>,  <28.059879, 33.889183, 33.729561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293493, 33.838913, 33.751858>,  <28.682850, 33.755127, 33.789021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293493, 33.838913, 33.751858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035379, -0.263192, -0.964095,
		-0.226389, -0.941731, 0.248779,
		-0.973394, 0.209459, -0.092901,
		28.001476, 33.901752, 33.723988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406792, 33.166401, 33.352077>,  <28.682850, 33.755127, 33.789021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406792, 33.166401, 33.352077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197092, 33.506115, 33.327183>,  <28.071272, 33.709946, 33.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197092, 33.506115, 33.327183>,  <28.406792, 33.166401, 33.352077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197092, 33.506115, 33.327183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089622, -0.017649, -0.995820,
		-0.846837, -0.527633, -0.066863,
		-0.524247, 0.849289, -0.062234,
		28.039818, 33.760902, 33.308514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081982, 33.118637, 32.692730>,  <28.406792, 33.166401, 33.352077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081982, 33.118637, 32.692730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031891, 33.503307, 32.790302>,  <28.001837, 33.734108, 32.848846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031891, 33.503307, 32.790302>,  <28.081982, 33.118637, 32.692730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031891, 33.503307, 32.790302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102996, 0.257138, -0.960870,
		-0.986767, -0.095205, -0.131250,
		-0.125229, 0.961674, 0.243929,
		27.994322, 33.791809, 32.863480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671352, 33.392345, 32.258537>,  <28.081982, 33.118637, 32.692730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671352, 33.392345, 32.258537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878313, 33.703602, 32.400967>,  <28.002489, 33.890354, 32.486423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878313, 33.703602, 32.400967>,  <27.671352, 33.392345, 32.258537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878313, 33.703602, 32.400967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298136, 0.226114, -0.927355,
		-0.802127, 0.585975, -0.115000,
		0.517404, 0.778143, 0.356072,
		28.033535, 33.937046, 32.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329508, 34.028370, 32.014984>,  <27.671352, 33.392345, 32.258537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329508, 34.028370, 32.014984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719679, 34.081871, 32.085014>,  <27.953781, 34.113972, 32.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719679, 34.081871, 32.085014>,  <27.329508, 34.028370, 32.014984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719679, 34.081871, 32.085014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116566, 0.361001, -0.925252,
		-0.186958, 0.922924, 0.336539,
		0.975428, 0.133754, 0.175074,
		28.012308, 34.121998, 32.137535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483467, 34.534401, 31.563278>,  <27.329508, 34.028370, 32.014984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483467, 34.534401, 31.563278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859463, 34.436230, 31.658087>,  <28.085060, 34.377327, 31.714972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859463, 34.436230, 31.658087>,  <27.483467, 34.534401, 31.563278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859463, 34.436230, 31.658087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258657, 0.059548, -0.964132,
		0.222515, 0.967583, 0.119457,
		0.939992, -0.245432, 0.237022,
		28.141460, 34.362598, 31.729193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851891, 35.046654, 31.342611>,  <27.483467, 34.534401, 31.563278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851891, 35.046654, 31.342611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094721, 34.729599, 31.365215>,  <28.240419, 34.539368, 31.378778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094721, 34.729599, 31.365215>,  <27.851891, 35.046654, 31.342611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094721, 34.729599, 31.365215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213382, 0.094101, -0.972426,
		0.765459, 0.602395, 0.226260,
		0.607076, -0.792632, 0.056510,
		28.276844, 34.491810, 31.382168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290804, 35.173206, 30.786526>,  <27.851891, 35.046654, 31.342611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290804, 35.173206, 30.786526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351528, 34.789936, 30.883562>,  <28.387962, 34.559975, 30.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351528, 34.789936, 30.883562>,  <28.290804, 35.173206, 30.786526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351528, 34.789936, 30.883562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115811, -0.226501, -0.967101,
		0.981601, 0.174912, 0.076582,
		0.151811, -0.958177, 0.242591,
		28.397072, 34.502483, 30.956339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943151, 34.997768, 30.516445>,  <28.290804, 35.173206, 30.786526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943151, 34.997768, 30.516445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742268, 34.653111, 30.545712>,  <28.621738, 34.446316, 30.563272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742268, 34.653111, 30.545712>,  <28.943151, 34.997768, 30.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742268, 34.653111, 30.545712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194114, -0.194781, -0.961447,
		0.842679, -0.468643, 0.265078,
		-0.502207, -0.861646, 0.073167,
		28.591606, 34.394615, 30.567661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406025, 34.491989, 30.334391>,  <28.943151, 34.997768, 30.516445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406025, 34.491989, 30.334391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054485, 34.306549, 30.289324>,  <28.843561, 34.195286, 30.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054485, 34.306549, 30.289324>,  <29.406025, 34.491989, 30.334391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054485, 34.306549, 30.289324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276310, -0.302074, -0.912362,
		0.388939, -0.832961, 0.393576,
		-0.878851, -0.463602, -0.112667,
		28.790831, 34.167469, 30.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579906, 33.804214, 30.132290>,  <29.406025, 34.491989, 30.334391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579906, 33.804214, 30.132290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204765, 33.871521, 30.010885>,  <28.979681, 33.911903, 29.938044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204765, 33.871521, 30.010885>,  <29.579906, 33.804214, 30.132290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204765, 33.871521, 30.010885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233670, -0.340428, -0.910773,
		-0.256568, -0.925093, 0.279955,
		-0.937855, 0.168258, -0.303509,
		28.923409, 33.922001, 29.919832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342737, 33.225040, 29.823034>,  <29.579906, 33.804214, 30.132290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342737, 33.225040, 29.823034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108000, 33.515945, 29.680651>,  <28.967157, 33.690487, 29.595221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108000, 33.515945, 29.680651>,  <29.342737, 33.225040, 29.823034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108000, 33.515945, 29.680651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275047, -0.234427, -0.932413,
		-0.761552, -0.645087, -0.062458,
		-0.586846, 0.727260, -0.355958,
		28.931946, 33.734123, 29.573864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207024, 32.951393, 29.211651>,  <29.342737, 33.225040, 29.823034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207024, 32.951393, 29.211651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087582, 33.330002, 29.162773>,  <29.015917, 33.557167, 29.133446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087582, 33.330002, 29.162773>,  <29.207024, 32.951393, 29.211651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087582, 33.330002, 29.162773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191073, -0.066154, -0.979344,
		-0.935054, -0.315785, -0.161101,
		-0.298605, 0.946522, -0.122196,
		28.998001, 33.613960, 29.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910332, 32.968784, 28.509880>,  <29.207024, 32.951393, 29.211651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910332, 32.968784, 28.509880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926994, 33.364174, 28.568106>,  <28.936991, 33.601406, 28.603041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926994, 33.364174, 28.568106>,  <28.910332, 32.968784, 28.509880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926994, 33.364174, 28.568106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084001, 0.141711, -0.986338,
		-0.995595, 0.053313, -0.077129,
		0.041655, 0.988471, 0.145565,
		28.939491, 33.660717, 28.611774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467268, 33.328136, 27.997448>,  <28.910332, 32.968784, 28.509880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467268, 33.328136, 27.997448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768112, 33.537670, 28.157413>,  <28.948618, 33.663391, 28.253393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768112, 33.537670, 28.157413>,  <28.467268, 33.328136, 27.997448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768112, 33.537670, 28.157413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415397, 0.094289, -0.904740,
		-0.511640, 0.846587, -0.146683,
		0.752111, 0.523832, 0.399912,
		28.993746, 33.694820, 28.277388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647390, 34.097492, 27.708441>,  <28.467268, 33.328136, 27.997448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647390, 34.097492, 27.708441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969213, 33.915146, 27.860689>,  <29.162308, 33.805740, 27.952038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969213, 33.915146, 27.860689>,  <28.647390, 34.097492, 27.708441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969213, 33.915146, 27.860689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502713, 0.181574, -0.845169,
		0.316171, 0.871332, 0.375256,
		0.804560, -0.455864, 0.380621,
		29.210581, 33.778385, 27.974876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112049, 34.291603, 27.233639>,  <28.647390, 34.097492, 27.708441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112049, 34.291603, 27.233639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335360, 34.000820, 27.393568>,  <29.469345, 33.826351, 27.489527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335360, 34.000820, 27.393568>,  <29.112049, 34.291603, 27.233639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335360, 34.000820, 27.393568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342598, -0.236911, -0.909120,
		0.755616, 0.644519, 0.116793,
		0.558275, -0.726959, 0.399825,
		29.502842, 33.782734, 27.513515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891300, 34.282871, 27.028280>,  <29.112049, 34.291603, 27.233639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891300, 34.282871, 27.028280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805752, 33.899433, 27.103483>,  <29.754423, 33.669369, 27.148605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805752, 33.899433, 27.103483>,  <29.891300, 34.282871, 27.028280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805752, 33.899433, 27.103483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259950, -0.241369, -0.934969,
		0.941639, -0.151092, 0.300810,
		-0.213873, -0.958599, 0.188006,
		29.741590, 33.611855, 27.159885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411093, 33.845219, 26.772543>,  <29.891300, 34.282871, 27.028280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411093, 33.845219, 26.772543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073404, 33.635590, 26.727575>,  <29.870790, 33.509811, 26.700596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073404, 33.635590, 26.727575>,  <30.411093, 33.845219, 26.772543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073404, 33.635590, 26.727575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288941, -0.268324, -0.918975,
		0.451444, -0.808302, 0.377951,
		-0.844223, -0.524071, -0.112418,
		29.820137, 33.478367, 26.693850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607283, 33.230762, 26.456926>,  <30.411093, 33.845219, 26.772543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607283, 33.230762, 26.456926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216202, 33.270649, 26.383005>,  <29.981552, 33.294582, 26.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216202, 33.270649, 26.383005>,  <30.607283, 33.230762, 26.456926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216202, 33.270649, 26.383005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147117, -0.302698, -0.941664,
		-0.149839, -0.947856, 0.281279,
		-0.977704, 0.099717, -0.184801,
		29.922890, 33.300564, 26.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222885, 33.111149, 26.941231>,  <30.607283, 33.230762, 26.456926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222885, 33.111149, 26.941231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407867, 33.269001, 26.623638>,  <31.518856, 33.363712, 26.433083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407867, 33.269001, 26.623638>,  <31.222885, 33.111149, 26.941231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407867, 33.269001, 26.623638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707520, -0.375453, -0.598707,
		-0.534369, 0.838632, 0.105577,
		0.462456, 0.394628, -0.793979,
		31.546604, 33.387390, 26.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376400, 33.408360, 27.653706>,  <31.222885, 33.111149, 26.941231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376400, 33.408360, 27.653706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556328, 33.754074, 27.563663>,  <31.664286, 33.961502, 27.509638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556328, 33.754074, 27.563663>,  <31.376400, 33.408360, 27.653706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556328, 33.754074, 27.563663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449123, -0.001043, 0.893469,
		0.771978, -0.503000, -0.388640,
		0.449821, 0.864285, -0.225104,
		31.691275, 34.013359, 27.496132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021122, 33.570862, 27.879984>,  <31.376400, 33.408360, 27.653706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021122, 33.570862, 27.879984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875801, 33.939754, 27.932892>,  <31.788609, 34.161091, 27.964636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875801, 33.939754, 27.932892>,  <32.021122, 33.570862, 27.879984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875801, 33.939754, 27.932892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161838, -0.077340, 0.983782,
		0.917506, 0.378820, -0.121155,
		-0.363306, 0.922233, 0.132268,
		31.766809, 34.216423, 27.972572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518890, 34.029922, 28.285887>,  <32.021122, 33.570862, 27.879984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518890, 34.029922, 28.285887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138226, 34.145332, 28.328020>,  <31.909828, 34.214581, 28.353300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138226, 34.145332, 28.328020>,  <32.518890, 34.029922, 28.285887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138226, 34.145332, 28.328020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125882, 0.053556, 0.990599,
		0.280175, 0.955972, -0.087287,
		-0.951660, 0.288529, 0.105335,
		31.852728, 34.231892, 28.359621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399349, 34.699726, 28.745615>,  <32.518890, 34.029922, 28.285887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399349, 34.699726, 28.745615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083122, 34.454937, 28.754478>,  <31.893385, 34.308064, 28.759796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083122, 34.454937, 28.754478>,  <32.399349, 34.699726, 28.745615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083122, 34.454937, 28.754478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034967, 0.081237, 0.996081,
		-0.611371, 0.786699, -0.085622,
		-0.790571, -0.611969, 0.022157,
		31.845951, 34.271347, 28.761126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965801, 34.989391, 29.190691>,  <32.399349, 34.699726, 28.745615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965801, 34.989391, 29.190691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835306, 34.611317, 29.196136>,  <31.757010, 34.384472, 29.199404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835306, 34.611317, 29.196136>,  <31.965801, 34.989391, 29.190691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835306, 34.611317, 29.196136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146028, 0.064622, 0.987168,
		-0.933941, 0.320063, -0.159106,
		-0.326238, -0.945190, 0.013615,
		31.737434, 34.327759, 29.200220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363821, 34.984398, 29.571753>,  <31.965801, 34.989391, 29.190691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363821, 34.984398, 29.571753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459370, 34.596134, 29.582748>,  <31.516699, 34.363174, 29.589346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459370, 34.596134, 29.582748>,  <31.363821, 34.984398, 29.571753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459370, 34.596134, 29.582748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132880, -0.004632, 0.991121,
		-0.961916, -0.240405, -0.130088,
		0.238873, -0.970662, 0.027489,
		31.531033, 34.304935, 29.590996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879015, 34.727203, 29.987417>,  <31.363821, 34.984398, 29.571753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879015, 34.727203, 29.987417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193569, 34.480145, 29.991562>,  <31.382301, 34.331909, 29.994049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193569, 34.480145, 29.991562>,  <30.879015, 34.727203, 29.987417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193569, 34.480145, 29.991562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063916, -0.064668, 0.995858,
		-0.614421, -0.783790, -0.090332,
		0.786385, -0.617649, 0.010363,
		31.429485, 34.294849, 29.994671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741436, 34.139927, 30.230593>,  <30.879015, 34.727203, 29.987417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741436, 34.139927, 30.230593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119276, 34.218716, 30.335611>,  <31.345980, 34.265991, 30.398623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119276, 34.218716, 30.335611>,  <30.741436, 34.139927, 30.230593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119276, 34.218716, 30.335611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204952, -0.270813, 0.940561,
		0.256368, -0.942264, -0.215440,
		0.944601, 0.196975, 0.262547,
		31.402657, 34.277809, 30.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832088, 33.799828, 30.939053>,  <30.741436, 34.139927, 30.230593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832088, 33.799828, 30.939053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163523, 34.007935, 30.856327>,  <31.362383, 34.132797, 30.806692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163523, 34.007935, 30.856327>,  <30.832088, 33.799828, 30.939053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163523, 34.007935, 30.856327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270613, -0.048787, 0.961451,
		0.490120, -0.852610, -0.181215,
		0.828584, 0.520266, -0.206816,
		31.412098, 34.164013, 30.794283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347761, 33.459393, 31.356533>,  <30.832088, 33.799828, 30.939053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347761, 33.459393, 31.356533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459581, 33.831146, 31.260128>,  <31.526674, 34.054199, 31.202284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459581, 33.831146, 31.260128>,  <31.347761, 33.459393, 31.356533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459581, 33.831146, 31.260128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243084, 0.174334, 0.954211,
		0.928850, -0.325337, -0.177184,
		0.279551, 0.929389, -0.241014,
		31.543447, 34.109962, 31.187824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933798, 33.486092, 31.568998>,  <31.347761, 33.459393, 31.356533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933798, 33.486092, 31.568998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812847, 33.867081, 31.554272>,  <31.740276, 34.095676, 31.545435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812847, 33.867081, 31.554272>,  <31.933798, 33.486092, 31.568998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812847, 33.867081, 31.554272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323747, 0.138956, 0.935884,
		0.896524, 0.271071, -0.350379,
		-0.302378, 0.952477, -0.036819,
		31.722134, 34.152824, 31.543226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426384, 33.776527, 31.904398>,  <31.933798, 33.486092, 31.568998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426384, 33.776527, 31.904398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110065, 34.021046, 31.916805>,  <31.920275, 34.167755, 31.924250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110065, 34.021046, 31.916805>,  <32.426384, 33.776527, 31.904398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110065, 34.021046, 31.916805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070006, 0.039988, 0.996745,
		0.608066, 0.790391, -0.074416,
		-0.790794, 0.611297, 0.031017,
		31.872828, 34.204433, 31.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600636, 34.223537, 32.465637>,  <32.426384, 33.776527, 31.904398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600636, 34.223537, 32.465637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213017, 34.308884, 32.415981>,  <31.980444, 34.360092, 32.386189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213017, 34.308884, 32.415981>,  <32.600636, 34.223537, 32.465637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213017, 34.308884, 32.415981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081588, 0.197806, 0.976840,
		0.232985, 0.956737, -0.174276,
		-0.969052, 0.213370, -0.124144,
		31.922300, 34.372894, 32.378738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478691, 34.872410, 32.860310>,  <32.600636, 34.223537, 32.465637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478691, 34.872410, 32.860310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130287, 34.678368, 32.829304>,  <31.921244, 34.561943, 32.810699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130287, 34.678368, 32.829304>,  <32.478691, 34.872410, 32.860310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130287, 34.678368, 32.829304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158325, 0.127839, 0.979076,
		-0.465046, 0.865061, -0.188154,
		-0.871014, -0.485105, -0.077510,
		31.868982, 34.532837, 32.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041210, 35.271610, 33.264671>,  <32.478691, 34.872410, 32.860310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041210, 35.271610, 33.264671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858341, 34.916828, 33.238453>,  <31.748619, 34.703957, 33.222721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858341, 34.916828, 33.238453>,  <32.041210, 35.271610, 33.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858341, 34.916828, 33.238453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392773, 0.135232, 0.909638,
		-0.797949, 0.441605, -0.410198,
		-0.457173, -0.886959, -0.065542,
		31.721189, 34.650742, 33.218792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531935, 35.543617, 33.552876>,  <32.041210, 35.271610, 33.264671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531935, 35.543617, 33.552876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511362, 35.144871, 33.576935>,  <31.499020, 34.905624, 33.591370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511362, 35.144871, 33.576935>,  <31.531935, 35.543617, 33.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511362, 35.144871, 33.576935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571729, 0.078769, 0.816653,
		-0.818829, 0.007613, -0.573987,
		-0.051430, -0.996864, 0.060146,
		31.495934, 34.845810, 33.594978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871723, 35.405277, 33.797581>,  <31.531935, 35.543617, 33.552876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871723, 35.405277, 33.797581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078434, 35.076382, 33.892967>,  <31.202459, 34.879044, 33.950199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078434, 35.076382, 33.892967>,  <30.871723, 35.405277, 33.797581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078434, 35.076382, 33.892967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392071, 0.020317, 0.919711,
		-0.761067, -0.568779, -0.311877,
		0.516776, -0.822240, 0.238464,
		31.233467, 34.829708, 33.964508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364643, 34.912418, 34.052711>,  <30.871723, 35.405277, 33.797581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364643, 34.912418, 34.052711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719423, 34.791656, 34.192524>,  <30.932291, 34.719200, 34.276413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719423, 34.791656, 34.192524>,  <30.364643, 34.912418, 34.052711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719423, 34.791656, 34.192524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380876, -0.050033, 0.923272,
		-0.261250, -0.952025, -0.159364,
		0.886951, -0.301903, 0.349532,
		30.985508, 34.701084, 34.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114065, 34.431614, 34.460865>,  <30.364643, 34.912418, 34.052711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114065, 34.431614, 34.460865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487650, 34.492271, 34.590305>,  <30.711800, 34.528667, 34.667969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487650, 34.492271, 34.590305>,  <30.114065, 34.431614, 34.460865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487650, 34.492271, 34.590305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287703, -0.218109, 0.932553,
		0.212000, -0.964070, -0.160076,
		0.933961, 0.151647, 0.323605,
		30.767838, 34.537766, 34.687386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285490, 33.811058, 34.889984>,  <30.114065, 34.431614, 34.460865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285490, 33.811058, 34.889984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514938, 34.120148, 34.998692>,  <30.652607, 34.305599, 35.063915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514938, 34.120148, 34.998692>,  <30.285490, 33.811058, 34.889984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514938, 34.120148, 34.998692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292143, -0.116965, 0.949195,
		0.765252, -0.623874, 0.158652,
		0.573622, 0.772723, 0.271768,
		30.687025, 34.351963, 35.080223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626284, 33.587460, 35.415585>,  <30.285490, 33.811058, 34.889984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626284, 33.587460, 35.415585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679895, 33.981319, 35.460312>,  <30.712063, 34.217636, 35.487148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679895, 33.981319, 35.460312>,  <30.626284, 33.587460, 35.415585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679895, 33.981319, 35.460312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363975, -0.056036, 0.929721,
		0.921714, -0.165311, 0.350877,
		0.134031, 0.984648, 0.111819,
		30.720104, 34.276714, 35.493858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882973, 33.694347, 36.066761>,  <30.626284, 33.587460, 35.415585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882973, 33.694347, 36.066761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750071, 34.063667, 35.989697>,  <30.670330, 34.285259, 35.943459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750071, 34.063667, 35.989697>,  <30.882973, 33.694347, 36.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750071, 34.063667, 35.989697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353072, 0.067661, 0.933146,
		0.874613, 0.378065, 0.303512,
		-0.332254, 0.923303, -0.192661,
		30.650394, 34.340660, 35.931900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981785, 34.192154, 36.683834>,  <30.882973, 33.694347, 36.066761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981785, 34.192154, 36.683834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696814, 34.350052, 36.451756>,  <30.525831, 34.444790, 36.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696814, 34.350052, 36.451756>,  <30.981785, 34.192154, 36.683834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696814, 34.350052, 36.451756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436703, 0.397799, 0.806875,
		0.549308, 0.828212, -0.111018,
		-0.712426, 0.394741, -0.580197,
		30.483086, 34.468475, 36.277695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914829, 34.850071, 37.016838>,  <30.981785, 34.192154, 36.683834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914829, 34.850071, 37.016838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581318, 34.783051, 36.806412>,  <30.381210, 34.742836, 36.680157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581318, 34.783051, 36.806412>,  <30.914829, 34.850071, 37.016838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581318, 34.783051, 36.806412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528184, 0.519482, 0.671684,
		0.160736, 0.837892, -0.521632,
		-0.833778, -0.167554, -0.526061,
		30.331184, 34.732784, 36.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495806, 35.600716, 37.000740>,  <30.914829, 34.850071, 37.016838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495806, 35.600716, 37.000740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218431, 35.336086, 36.886570>,  <30.052008, 35.177307, 36.818069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218431, 35.336086, 36.886570>,  <30.495806, 35.600716, 37.000740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218431, 35.336086, 36.886570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677204, 0.463153, 0.571737,
		-0.246051, 0.589755, -0.769187,
		-0.693436, -0.661573, -0.285425,
		30.010401, 35.137615, 36.800941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680773, 36.365368, 36.950935>,  <30.495806, 35.600716, 37.000740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680773, 36.365368, 36.950935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966028, 36.344551, 37.230572>,  <31.137182, 36.332062, 37.398354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966028, 36.344551, 37.230572>,  <30.680773, 36.365368, 36.950935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966028, 36.344551, 37.230572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490006, -0.750169, 0.444005,
		0.501326, -0.659195, -0.560476,
		0.713138, -0.052045, 0.699089,
		31.179970, 36.328938, 37.440300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251083, 36.906311, 36.633659>,  <30.680773, 36.365368, 36.950935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251083, 36.906311, 36.633659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570669, 36.686707, 36.535484>,  <31.762421, 36.554943, 36.476582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570669, 36.686707, 36.535484>,  <31.251083, 36.906311, 36.633659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570669, 36.686707, 36.535484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599527, 0.695151, 0.396651,
		-0.047153, -0.464054, 0.884551,
		0.798964, -0.549016, -0.245435,
		31.810358, 36.522003, 36.461853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553391, 36.791149, 37.205833>,  <31.251083, 36.906311, 36.633659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553391, 36.791149, 37.205833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802460, 36.774475, 36.893284>,  <31.951900, 36.764469, 36.705753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802460, 36.774475, 36.893284>,  <31.553391, 36.791149, 37.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802460, 36.774475, 36.893284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509898, 0.779067, 0.364771,
		0.593533, -0.625553, 0.506362,
		0.622674, -0.041690, -0.781370,
		31.989262, 36.761967, 36.658875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873394, 37.251396, 37.748077>,  <31.553391, 36.791149, 37.205833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873394, 37.251396, 37.748077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843962, 37.603062, 37.936401>,  <31.826302, 37.814060, 38.049397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843962, 37.603062, 37.936401>,  <31.873394, 37.251396, 37.748077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843962, 37.603062, 37.936401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706748, -0.287109, 0.646587,
		0.703628, 0.380320, -0.600220,
		-0.073581, 0.879161, 0.470809,
		31.821888, 37.866810, 38.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555653, 37.695210, 37.636223>,  <31.873394, 37.251396, 37.748077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555653, 37.695210, 37.636223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339485, 37.749390, 37.968391>,  <32.209785, 37.781898, 38.167694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339485, 37.749390, 37.968391>,  <32.555653, 37.695210, 37.636223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339485, 37.749390, 37.968391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745491, -0.380525, 0.547215,
		0.390114, 0.914798, 0.104670,
		-0.540420, 0.135446, 0.830422,
		32.177361, 37.790024, 38.217518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992851, 37.895325, 38.241997>,  <32.555653, 37.695210, 37.636223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992851, 37.895325, 38.241997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651791, 37.727753, 38.366882>,  <32.447155, 37.627209, 38.441814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651791, 37.727753, 38.366882>,  <32.992851, 37.895325, 38.241997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651791, 37.727753, 38.366882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514891, -0.572324, 0.638226,
		-0.088682, 0.704943, 0.703698,
		-0.852656, -0.418927, 0.312214,
		32.395992, 37.602074, 38.460548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899494, 37.952618, 38.996521>,  <32.992851, 37.895325, 38.241997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899494, 37.952618, 38.996521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715607, 37.616676, 38.881069>,  <32.605274, 37.415112, 38.811798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715607, 37.616676, 38.881069>,  <32.899494, 37.952618, 38.996521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715607, 37.616676, 38.881069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474138, -0.506928, 0.719873,
		-0.750903, 0.194087, 0.631249,
		-0.459716, -0.839854, -0.288629,
		32.577690, 37.364719, 38.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423492, 37.565304, 39.475662>,  <32.899494, 37.952618, 38.996521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423492, 37.565304, 39.475662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646908, 37.295094, 39.283119>,  <32.780956, 37.132969, 39.167595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646908, 37.295094, 39.283119>,  <32.423492, 37.565304, 39.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646908, 37.295094, 39.283119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494953, -0.194252, 0.846928,
		-0.665625, -0.711289, 0.225856,
		0.558538, -0.675525, -0.481354,
		32.814468, 37.092438, 39.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498276, 36.879162, 39.953323>,  <32.423492, 37.565304, 39.475662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498276, 36.879162, 39.953323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799404, 36.899181, 39.690796>,  <32.980083, 36.911194, 39.533279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799404, 36.899181, 39.690796>,  <32.498276, 36.879162, 39.953323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799404, 36.899181, 39.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641250, -0.280728, 0.714137,
		-0.148506, -0.958482, -0.243431,
		0.752825, 0.050047, -0.656316,
		33.025253, 36.914196, 39.493900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818611, 36.255070, 40.079929>,  <32.498276, 36.879162, 39.953323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818611, 36.255070, 40.079929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083916, 36.496037, 39.902309>,  <33.243099, 36.640617, 39.795738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083916, 36.496037, 39.902309>,  <32.818611, 36.255070, 40.079929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083916, 36.496037, 39.902309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685838, -0.251797, 0.682807,
		0.299525, -0.757424, -0.580167,
		0.663258, 0.602418, -0.444050,
		33.282894, 36.676762, 39.769093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384960, 35.907913, 40.044857>,  <32.818611, 36.255070, 40.079929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384960, 35.907913, 40.044857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540157, 36.275074, 40.011589>,  <33.633274, 36.495373, 39.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540157, 36.275074, 40.011589>,  <33.384960, 35.907913, 40.044857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540157, 36.275074, 40.011589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655067, -0.211154, 0.725466,
		0.648346, -0.335957, -0.683214,
		0.387989, 0.917904, -0.083174,
		33.656555, 36.550446, 39.986637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231712, 35.955307, 39.956406>,  <33.384960, 35.907913, 40.044857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231712, 35.955307, 39.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097828, 36.303383, 40.101040>,  <34.017498, 36.512226, 40.187820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097828, 36.303383, 40.101040>,  <34.231712, 35.955307, 39.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097828, 36.303383, 40.101040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767055, 0.028718, 0.640938,
		0.547352, 0.491884, -0.677094,
		-0.334712, 0.870187, 0.361583,
		33.997414, 36.564438, 40.209515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854000, 36.340614, 40.045856>,  <34.231712, 35.955307, 39.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854000, 36.340614, 40.045856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583595, 36.516083, 40.282696>,  <34.421352, 36.621365, 40.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583595, 36.516083, 40.282696>,  <34.854000, 36.340614, 40.045856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583595, 36.516083, 40.282696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697492, 0.121691, 0.706184,
		0.237727, 0.890372, -0.388231,
		-0.676011, 0.438667, 0.592098,
		34.380791, 36.647682, 40.460327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239883, 36.699570, 40.574970>,  <34.854000, 36.340614, 40.045856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239883, 36.699570, 40.574970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895218, 36.737144, 40.774452>,  <34.688419, 36.759689, 40.894142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895218, 36.737144, 40.774452>,  <35.239883, 36.699570, 40.574970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895218, 36.737144, 40.774452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502416, 0.019533, 0.864405,
		0.071461, 0.995386, -0.064028,
		-0.861668, 0.093940, 0.498702,
		34.636719, 36.765327, 40.924065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409832, 37.042927, 41.288391>,  <35.239883, 36.699570, 40.574970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409832, 37.042927, 41.288391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054913, 36.858944, 41.301872>,  <34.841961, 36.748554, 41.309959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054913, 36.858944, 41.301872>,  <35.409832, 37.042927, 41.288391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054913, 36.858944, 41.301872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227157, -0.372265, 0.899899,
		-0.401371, 0.806136, 0.434794,
		-0.887300, -0.459960, 0.033704,
		34.788723, 36.720955, 41.311985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123184, 37.304504, 41.953659>,  <35.409832, 37.042927, 41.288391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123184, 37.304504, 41.953659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950481, 36.953568, 41.869892>,  <34.846859, 36.743004, 41.819633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950481, 36.953568, 41.869892>,  <35.123184, 37.304504, 41.953659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950481, 36.953568, 41.869892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142378, -0.295550, 0.944658,
		-0.890680, 0.378050, 0.252521,
		-0.431760, -0.877342, -0.209414,
		34.820953, 36.690365, 41.807068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576008, 37.306812, 42.317337>,  <35.123184, 37.304504, 41.953659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576008, 37.306812, 42.317337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661934, 36.921299, 42.254124>,  <34.713490, 36.689991, 42.216194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661934, 36.921299, 42.254124>,  <34.576008, 37.306812, 42.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661934, 36.921299, 42.254124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013218, -0.158930, 0.987201,
		-0.976564, -0.214159, -0.021402,
		0.214819, -0.963783, -0.158036,
		34.726379, 36.632164, 42.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263931, 36.895065, 42.901779>,  <34.576008, 37.306812, 42.317337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263931, 36.895065, 42.901779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516014, 36.640373, 42.724056>,  <34.667263, 36.487556, 42.617424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516014, 36.640373, 42.724056>,  <34.263931, 36.895065, 42.901779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516014, 36.640373, 42.724056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200118, -0.419705, 0.885325,
		-0.750192, -0.646854, -0.137081,
		0.630210, -0.636732, -0.444307,
		34.705078, 36.449352, 42.590763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009975, 36.214153, 43.054096>,  <34.263931, 36.895065, 42.901779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009975, 36.214153, 43.054096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390896, 36.142780, 42.955082>,  <34.619450, 36.099957, 42.895672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390896, 36.142780, 42.955082>,  <34.009975, 36.214153, 43.054096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390896, 36.142780, 42.955082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150966, -0.429471, 0.890373,
		-0.265184, -0.885277, -0.382050,
		0.952306, -0.178436, -0.247536,
		34.676586, 36.089249, 42.880821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136803, 35.607452, 43.370579>,  <34.009975, 36.214153, 43.054096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136803, 35.607452, 43.370579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 35.719841, 43.282112>,  <34.734489, 35.787273, 43.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 35.719841, 43.282112>,  <34.136803, 35.607452, 43.370579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510357, 35.719841, 43.282112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337750, -0.490049, 0.803602,
		0.117409, -0.825170, -0.552548,
		0.933884, 0.280974, -0.221165,
		34.790524, 35.804134, 43.215763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511784, 35.022755, 43.373665>,  <34.136803, 35.607452, 43.370579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511784, 35.022755, 43.373665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782291, 35.308304, 43.446384>,  <34.944595, 35.479633, 43.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782291, 35.308304, 43.446384>,  <34.511784, 35.022755, 43.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782291, 35.308304, 43.446384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367975, -0.541155, 0.756138,
		0.638164, -0.444457, -0.628653,
		0.676270, 0.713869, 0.181797,
		34.985172, 35.522465, 43.500923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969639, 34.741859, 43.857452>,  <34.511784, 35.022755, 43.373665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969639, 34.741859, 43.857452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067745, 35.127876, 43.894398>,  <35.126610, 35.359489, 43.916565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067745, 35.127876, 43.894398>,  <34.969639, 34.741859, 43.857452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067745, 35.127876, 43.894398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181721, -0.139348, 0.973427,
		0.952273, -0.221961, -0.209546,
		0.245262, 0.965047, 0.092362,
		35.141323, 35.417389, 43.922108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599216, 34.754185, 44.332912>,  <34.969639, 34.741859, 43.857452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599216, 34.754185, 44.332912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443348, 35.122555, 44.336060>,  <35.349827, 35.343575, 44.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443348, 35.122555, 44.336060>,  <35.599216, 34.754185, 44.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443348, 35.122555, 44.336060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044404, 0.010250, 0.998961,
		0.919883, 0.389615, -0.044887,
		-0.389670, 0.920921, 0.007872,
		35.326447, 35.398830, 44.338421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104012, 35.122574, 44.795044>,  <35.599216, 34.754185, 44.332912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104012, 35.122574, 44.795044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770187, 35.342484, 44.780842>,  <35.569893, 35.474430, 44.772320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770187, 35.342484, 44.780842>,  <36.104012, 35.122574, 44.795044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770187, 35.342484, 44.780842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137810, -0.145930, 0.979649,
		0.533403, 0.822469, 0.197552,
		-0.834560, 0.549772, -0.035505,
		35.519821, 35.507416, 44.770191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197487, 35.615574, 45.352112>,  <36.104012, 35.122574, 44.795044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197487, 35.615574, 45.352112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809925, 35.590061, 45.256485>,  <35.577389, 35.574753, 45.199108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809925, 35.590061, 45.256485>,  <36.197487, 35.615574, 45.352112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809925, 35.590061, 45.256485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229073, -0.133938, 0.964151,
		-0.093515, 0.988935, 0.115162,
		-0.968907, -0.063782, -0.239064,
		35.519253, 35.570927, 45.184765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917122, 36.099590, 45.788261>,  <36.197487, 35.615574, 45.352112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917122, 36.099590, 45.788261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618317, 35.851105, 45.693542>,  <35.439034, 35.702015, 45.636711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618317, 35.851105, 45.693542>,  <35.917122, 36.099590, 45.788261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618317, 35.851105, 45.693542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160930, -0.176632, 0.971032,
		-0.645042, 0.763478, 0.031974,
		-0.747009, -0.621210, -0.236801,
		35.394215, 35.664742, 45.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435009, 36.226604, 46.280811>,  <35.917122, 36.099590, 45.788261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435009, 36.226604, 46.280811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320728, 35.867718, 46.146126>,  <35.252159, 35.652386, 46.065315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320728, 35.867718, 46.146126>,  <35.435009, 36.226604, 46.280811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320728, 35.867718, 46.146126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112112, -0.317657, 0.941554,
		-0.951739, 0.306750, -0.009835,
		-0.285698, -0.897217, -0.336717,
		35.235020, 35.598553, 46.045109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749134, 36.024616, 46.537025>,  <35.435009, 36.226604, 46.280811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749134, 36.024616, 46.537025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944332, 35.687080, 46.447765>,  <35.061451, 35.484558, 46.394211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944332, 35.687080, 46.447765>,  <34.749134, 36.024616, 46.537025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944332, 35.687080, 46.447765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146317, -0.331126, 0.932173,
		-0.860496, -0.422243, -0.285055,
		0.487993, -0.843840, -0.223151,
		35.090729, 35.433929, 46.380821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306641, 35.556969, 46.847641>,  <34.749134, 36.024616, 46.537025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306641, 35.556969, 46.847641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656689, 35.372562, 46.788822>,  <34.866718, 35.261917, 46.753532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656689, 35.372562, 46.788822>,  <34.306641, 35.556969, 46.847641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656689, 35.372562, 46.788822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128313, -0.514073, 0.848095,
		-0.466577, -0.723320, -0.509032,
		0.875124, -0.461017, -0.147044,
		34.919224, 35.234257, 46.744709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215649, 34.856506, 47.084244>,  <34.306641, 35.556969, 46.847641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215649, 34.856506, 47.084244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612148, 34.902325, 47.110497>,  <34.850048, 34.929817, 47.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612148, 34.902325, 47.110497>,  <34.215649, 34.856506, 47.084244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612148, 34.902325, 47.110497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026287, -0.658454, 0.752162,
		0.129372, -0.743853, -0.655702,
		0.991247, 0.114545, 0.065632,
		34.909523, 34.936687, 47.130184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499638, 34.166489, 47.123524>,  <34.215649, 34.856506, 47.084244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499638, 34.166489, 47.123524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822174, 34.372028, 47.240669>,  <35.015697, 34.495354, 47.310959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822174, 34.372028, 47.240669>,  <34.499638, 34.166489, 47.123524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822174, 34.372028, 47.240669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187398, -0.691622, 0.697524,
		0.560974, -0.507562, -0.653979,
		0.806344, 0.513848, 0.292866,
		35.064075, 34.526184, 47.328529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011929, 33.710308, 47.257645>,  <34.499638, 34.166489, 47.123524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011929, 33.710308, 47.257645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148003, 34.037533, 47.443134>,  <35.229649, 34.233868, 47.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148003, 34.037533, 47.443134>,  <35.011929, 33.710308, 47.257645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148003, 34.037533, 47.443134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334095, -0.566109, 0.753592,
		0.879007, -0.101435, -0.465895,
		0.340188, 0.818066, 0.463725,
		35.250057, 34.282951, 47.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690079, 33.629597, 47.350307>,  <35.011929, 33.710308, 47.257645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690079, 33.629597, 47.350307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578648, 33.888313, 47.634296>,  <35.511791, 34.043541, 47.804691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578648, 33.888313, 47.634296>,  <35.690079, 33.629597, 47.350307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578648, 33.888313, 47.634296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542594, -0.503969, 0.672018,
		0.792458, 0.572433, -0.210552,
		-0.278573, 0.646789, 0.709972,
		35.495075, 34.082352, 47.847286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255890, 33.617851, 47.793915>,  <35.690079, 33.629597, 47.350307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255890, 33.617851, 47.793915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033920, 33.807384, 48.067425>,  <35.900738, 33.921104, 48.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033920, 33.807384, 48.067425>,  <36.255890, 33.617851, 47.793915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033920, 33.807384, 48.067425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309939, -0.645007, 0.698502,
		0.772007, 0.599544, 0.211073,
		-0.554926, 0.473829, 0.683772,
		35.867443, 33.949532, 48.272556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714737, 33.527309, 48.413177>,  <36.255890, 33.617851, 47.793915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714737, 33.527309, 48.413177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362141, 33.644730, 48.561127>,  <36.150581, 33.715183, 48.649895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362141, 33.644730, 48.561127>,  <36.714737, 33.527309, 48.413177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362141, 33.644730, 48.561127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223396, -0.430833, 0.874344,
		0.416015, 0.853353, 0.314197,
		-0.881491, 0.293549, 0.369868,
		36.097694, 33.732796, 48.672089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783890, 33.968262, 49.053574>,  <36.714737, 33.527309, 48.413177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783890, 33.968262, 49.053574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433479, 33.775364, 49.052116>,  <36.223232, 33.659626, 49.051243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433479, 33.775364, 49.052116>,  <36.783890, 33.968262, 49.053574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433479, 33.775364, 49.052116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219744, -0.405891, 0.887110,
		-0.429282, 0.776334, 0.461543,
		-0.876031, -0.482242, -0.003646,
		36.170670, 33.630692, 49.051022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624580, 33.940334, 49.692402>,  <36.783890, 33.968262, 49.053574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624580, 33.940334, 49.692402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327309, 33.686859, 49.606491>,  <36.148945, 33.534775, 49.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327309, 33.686859, 49.606491>,  <36.624580, 33.940334, 49.692402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327309, 33.686859, 49.606491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224208, -0.538291, 0.812388,
		-0.630408, 0.555596, 0.542124,
		-0.743180, -0.633684, -0.214774,
		36.104355, 33.496754, 49.542061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327190, 33.837708, 50.251392>,  <36.624580, 33.940334, 49.692402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327190, 33.837708, 50.251392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221428, 33.523117, 50.028126>,  <36.157970, 33.334362, 49.894165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221428, 33.523117, 50.028126>,  <36.327190, 33.837708, 50.251392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221428, 33.523117, 50.028126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014309, -0.575498, 0.817678,
		-0.964306, 0.224184, 0.140910,
		-0.264404, -0.786475, -0.558164,
		36.142105, 33.287174, 49.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790554, 33.423016, 50.665901>,  <36.327190, 33.837708, 50.251392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790554, 33.423016, 50.665901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937706, 33.157825, 50.405094>,  <36.025997, 32.998711, 50.248608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937706, 33.157825, 50.405094>,  <35.790554, 33.423016, 50.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937706, 33.157825, 50.405094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093078, -0.671418, 0.735210,
		-0.925203, -0.331158, -0.185293,
		0.367880, -0.662972, -0.652021,
		36.048069, 32.958935, 50.209488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420723, 32.857628, 50.692944>,  <35.790554, 33.423016, 50.665901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420723, 32.857628, 50.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745033, 32.698643, 50.521049>,  <35.939617, 32.603252, 50.417912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745033, 32.698643, 50.521049>,  <35.420723, 32.857628, 50.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745033, 32.698643, 50.521049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009756, -0.724865, 0.688822,
		-0.585279, -0.562671, -0.583823,
		0.810773, -0.397457, -0.429738,
		35.988266, 32.579407, 50.392128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289295, 32.117901, 50.624935>,  <35.420723, 32.857628, 50.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289295, 32.117901, 50.624935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683559, 32.177025, 50.592400>,  <35.920120, 32.212498, 50.572880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683559, 32.177025, 50.592400>,  <35.289295, 32.117901, 50.624935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683559, 32.177025, 50.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168708, -0.860017, 0.481568,
		0.001229, -0.488387, -0.872626,
		0.985666, 0.147811, -0.081338,
		35.979259, 32.221367, 50.567997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731487, 31.524920, 50.308334>,  <35.289295, 32.117901, 50.624935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731487, 31.524920, 50.308334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928352, 31.747564, 50.576054>,  <36.046471, 31.881151, 50.736687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928352, 31.747564, 50.576054>,  <35.731487, 31.524920, 50.308334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928352, 31.747564, 50.576054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053736, -0.747974, 0.661549,
		0.868846, -0.361553, -0.338211,
		0.492158, 0.556610, 0.669302,
		36.076000, 31.914547, 50.776844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247692, 31.068756, 50.521103>,  <35.731487, 31.524920, 50.308334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247692, 31.068756, 50.521103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209885, 31.345037, 50.807877>,  <36.187202, 31.510805, 50.979942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209885, 31.345037, 50.807877>,  <36.247692, 31.068756, 50.521103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209885, 31.345037, 50.807877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024063, -0.721535, 0.691960,
		0.995232, 0.048150, 0.084818,
		-0.094517, 0.690702, 0.716937,
		36.181530, 31.552248, 51.022957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812572, 31.028458, 50.980186>,  <36.247692, 31.068756, 50.521103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812572, 31.028458, 50.980186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545574, 31.229233, 51.200191>,  <36.385376, 31.349697, 51.332195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545574, 31.229233, 51.200191>,  <36.812572, 31.028458, 50.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545574, 31.229233, 51.200191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130876, -0.648068, 0.750253,
		0.733024, 0.572772, 0.366890,
		-0.667494, 0.501936, 0.550011,
		36.345325, 31.379814, 51.365196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047039, 30.973061, 51.712303>,  <36.812572, 31.028458, 50.980186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047039, 30.973061, 51.712303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659527, 31.068281, 51.739998>,  <36.427021, 31.125414, 51.756615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659527, 31.068281, 51.739998>,  <37.047039, 30.973061, 51.712303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659527, 31.068281, 51.739998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063878, -0.509522, 0.858083,
		0.239543, 0.826873, 0.508823,
		-0.968782, 0.238051, 0.069234,
		36.368893, 31.139696, 51.760769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052578, 31.098978, 52.488102>,  <37.047039, 30.973061, 51.712303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052578, 31.098978, 52.488102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689510, 31.059147, 52.325020>,  <36.471668, 31.035248, 52.227169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689510, 31.059147, 52.325020>,  <37.052578, 31.098978, 52.488102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689510, 31.059147, 52.325020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251451, -0.648754, 0.718256,
		-0.336024, 0.754455, 0.563813,
		-0.907668, -0.099580, -0.407705,
		36.417210, 31.029272, 52.202709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456219, 31.122974, 52.998310>,  <37.052578, 31.098978, 52.488102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456219, 31.122974, 52.998310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299145, 30.915503, 52.694527>,  <36.204899, 30.791019, 52.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299145, 30.915503, 52.694527>,  <36.456219, 31.122974, 52.998310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299145, 30.915503, 52.694527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349647, -0.679580, 0.644917,
		-0.850614, 0.518791, 0.085507,
		-0.392686, -0.518679, -0.759454,
		36.181339, 30.759899, 52.466690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724110, 31.159121, 53.076916>,  <36.456219, 31.122974, 52.998310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724110, 31.159121, 53.076916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795425, 30.839558, 52.847149>,  <35.838215, 30.647820, 52.709290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795425, 30.839558, 52.847149>,  <35.724110, 31.159121, 53.076916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795425, 30.839558, 52.847149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467274, -0.582494, 0.665098,
		-0.865948, 0.149829, -0.477163,
		0.178294, -0.798907, -0.574421,
		35.848915, 30.599886, 52.674824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213665, 30.731897, 53.180988>,  <35.724110, 31.159121, 53.076916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213665, 30.731897, 53.180988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514576, 30.502363, 53.051502>,  <35.695122, 30.364643, 52.973812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514576, 30.502363, 53.051502>,  <35.213665, 30.731897, 53.180988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514576, 30.502363, 53.051502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101551, -0.586458, 0.803589,
		-0.650973, -0.571648, -0.499453,
		0.752278, -0.573835, -0.323716,
		35.740261, 30.330214, 52.954388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232578, 30.521032, 53.857311>,  <35.213665, 30.731897, 53.180988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232578, 30.521032, 53.857311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130726, 30.497629, 54.243416>,  <35.069614, 30.483587, 54.475079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130726, 30.497629, 54.243416>,  <35.232578, 30.521032, 53.857311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130726, 30.497629, 54.243416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401903, -0.901477, -0.160664,
		0.879566, -0.428853, 0.206031,
		-0.254634, -0.058510, 0.965266,
		35.054337, 30.480076, 54.532997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406567, 29.775108, 54.122395>,  <35.232578, 30.521032, 53.857311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406567, 29.775108, 54.122395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104912, 29.963274, 54.305695>,  <34.923920, 30.076174, 54.415676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104912, 29.963274, 54.305695>,  <35.406567, 29.775108, 54.122395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104912, 29.963274, 54.305695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533979, -0.845427, -0.010894,
		0.382292, -0.252911, 0.888757,
		-0.754135, 0.470413, 0.458249,
		34.878670, 30.104399, 54.443169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148354, 29.331488, 54.658970>,  <35.406567, 29.775108, 54.122395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148354, 29.331488, 54.658970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852139, 29.575354, 54.545898>,  <34.674408, 29.721672, 54.478054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852139, 29.575354, 54.545898>,  <35.148354, 29.331488, 54.658970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852139, 29.575354, 54.545898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617913, -0.783108, -0.070191,
		-0.264161, 0.122692, 0.956643,
		-0.740542, 0.609663, -0.282680,
		34.629974, 29.758253, 54.461094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514542, 29.045805, 55.023830>,  <35.148354, 29.331488, 54.658970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514542, 29.045805, 55.023830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456722, 29.259392, 54.690605>,  <34.422031, 29.387545, 54.490669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456722, 29.259392, 54.690605>,  <34.514542, 29.045805, 55.023830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456722, 29.259392, 54.690605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563189, -0.736625, -0.374436,
		-0.813588, 0.415047, 0.407198,
		-0.144544, 0.533966, -0.833059,
		34.413361, 29.419582, 54.440689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872890, 28.584801, 54.500961>,  <34.514542, 29.045805, 55.023830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872890, 28.584801, 54.500961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072716, 28.238951, 54.479549>,  <35.192612, 28.031441, 54.466702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072716, 28.238951, 54.479549>,  <34.872890, 28.584801, 54.500961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072716, 28.238951, 54.479549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061226, 0.096876, -0.993412,
		0.864113, 0.492992, 0.101333,
		0.499560, -0.864624, -0.053529,
		35.222584, 27.979563, 54.463490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564709, 28.617208, 54.219948>,  <34.872890, 28.584801, 54.500961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564709, 28.617208, 54.219948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344437, 28.296242, 54.127964>,  <35.212273, 28.103661, 54.072773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344437, 28.296242, 54.127964>,  <35.564709, 28.617208, 54.219948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344437, 28.296242, 54.127964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118850, 0.197309, -0.973110,
		0.826215, -0.563199, -0.013286,
		-0.550676, -0.802419, -0.229956,
		35.179234, 28.055515, 54.058979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934135, 28.118017, 53.703098>,  <35.564709, 28.617208, 54.219948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934135, 28.118017, 53.703098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542953, 28.079353, 53.629070>,  <35.308243, 28.056154, 53.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542953, 28.079353, 53.629070>,  <35.934135, 28.118017, 53.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542953, 28.079353, 53.629070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164505, 0.189157, -0.968069,
		0.128578, -0.977178, -0.169087,
		-0.977960, -0.096657, -0.185073,
		35.249565, 28.050356, 53.573547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822105, 27.859243, 53.059731>,  <35.934135, 28.118017, 53.703098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822105, 27.859243, 53.059731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458813, 28.007910, 53.136646>,  <35.240837, 28.097111, 53.182796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458813, 28.007910, 53.136646>,  <35.822105, 27.859243, 53.059731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458813, 28.007910, 53.136646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133175, 0.178914, -0.974810,
		-0.396710, -0.910962, -0.112999,
		-0.908232, 0.371668, 0.192294,
		35.186344, 28.119410, 53.194336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443581, 27.785257, 52.508350>,  <35.822105, 27.859243, 53.059731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443581, 27.785257, 52.508350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247231, 28.083080, 52.689316>,  <35.129421, 28.261774, 52.797897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247231, 28.083080, 52.689316>,  <35.443581, 27.785257, 52.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247231, 28.083080, 52.689316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350539, 0.306612, -0.884936,
		-0.797601, -0.592979, 0.110490,
		-0.490871, 0.744557, 0.452416,
		35.099968, 28.306448, 52.825039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746780, 27.882772, 52.205029>,  <35.443581, 27.785257, 52.508350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746780, 27.882772, 52.205029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887245, 28.233952, 52.335194>,  <34.971523, 28.444658, 52.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887245, 28.233952, 52.335194>,  <34.746780, 27.882772, 52.205029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887245, 28.233952, 52.335194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104814, 0.382223, -0.918107,
		-0.930431, 0.288292, 0.226242,
		0.351158, 0.877948, 0.325415,
		34.992592, 28.497335, 52.432819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257591, 28.558819, 51.997368>,  <34.746780, 27.882772, 52.205029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257591, 28.558819, 51.997368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655197, 28.599785, 52.012592>,  <34.893761, 28.624365, 52.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655197, 28.599785, 52.012592>,  <34.257591, 28.558819, 51.997368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655197, 28.599785, 52.012592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010660, 0.255779, -0.966676,
		-0.108736, 0.961295, 0.253156,
		0.994013, 0.102414, 0.038060,
		34.953400, 28.630508, 52.024010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370804, 29.185244, 51.738560>,  <34.257591, 28.558819, 51.997368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370804, 29.185244, 51.738560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705696, 28.987270, 51.645527>,  <34.906631, 28.868486, 51.589706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705696, 28.987270, 51.645527>,  <34.370804, 29.185244, 51.738560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705696, 28.987270, 51.645527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158660, 0.187171, -0.969430,
		0.523335, 0.848534, 0.078178,
		0.837226, -0.494932, -0.232582,
		34.956863, 28.838791, 51.575752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794201, 29.635590, 51.330414>,  <34.370804, 29.185244, 51.738560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794201, 29.635590, 51.330414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935719, 29.270063, 51.250637>,  <35.020630, 29.050749, 51.202770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935719, 29.270063, 51.250637>,  <34.794201, 29.635590, 51.330414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935719, 29.270063, 51.250637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106178, 0.251091, -0.962123,
		0.929278, 0.319215, 0.185861,
		0.353792, -0.913814, -0.199439,
		35.041855, 28.995920, 51.190804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233551, 29.794207, 50.787159>,  <34.794201, 29.635590, 51.330414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233551, 29.794207, 50.787159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241364, 29.394838, 50.766071>,  <35.246052, 29.155218, 50.753418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241364, 29.394838, 50.766071>,  <35.233551, 29.794207, 50.787159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241364, 29.394838, 50.766071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177450, 0.055349, -0.982572,
		0.983936, 0.009833, 0.178250,
		0.019527, -0.998418, -0.052715,
		35.247223, 29.095312, 50.750256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890591, 29.553713, 50.816589>,  <35.233551, 29.794207, 50.787159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890591, 29.553713, 50.816589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654148, 29.299927, 50.617374>,  <35.512283, 29.147655, 50.497845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654148, 29.299927, 50.617374>,  <35.890591, 29.553713, 50.816589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654148, 29.299927, 50.617374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503504, 0.192136, -0.842358,
		0.630140, -0.748689, 0.205883,
		-0.591107, -0.634467, -0.498041,
		35.476814, 29.109587, 50.467960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311344, 29.116655, 50.384666>,  <35.890591, 29.553713, 50.816589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311344, 29.116655, 50.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955650, 29.065594, 50.208954>,  <35.742233, 29.034958, 50.103527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955650, 29.065594, 50.208954>,  <36.311344, 29.116655, 50.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955650, 29.065594, 50.208954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456238, -0.177518, -0.871971,
		0.033328, -0.975803, 0.216094,
		-0.889233, -0.127652, -0.439283,
		35.688881, 29.027298, 50.077168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553322, 28.792696, 49.671963>,  <36.311344, 29.116655, 50.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553322, 28.792696, 49.671963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166145, 28.877661, 49.618343>,  <35.933838, 28.928638, 49.586174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166145, 28.877661, 49.618343>,  <36.553322, 28.792696, 49.671963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166145, 28.877661, 49.618343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154010, 0.080345, -0.984797,
		-0.198411, -0.973872, -0.110482,
		-0.967943, 0.212410, -0.134045,
		35.875763, 28.941383, 49.578129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329674, 28.368793, 49.169746>,  <36.553322, 28.792696, 49.671963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329674, 28.368793, 49.169746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075249, 28.677444, 49.168522>,  <35.922592, 28.862635, 49.167786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075249, 28.677444, 49.168522>,  <36.329674, 28.368793, 49.169746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075249, 28.677444, 49.168522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151242, 0.120776, -0.981091,
		-0.756667, -0.624502, -0.193525,
		-0.636066, 0.771628, -0.003064,
		35.884430, 28.908934, 49.167603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912552, 28.229389, 48.586826>,  <36.329674, 28.368793, 49.169746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912552, 28.229389, 48.586826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861526, 28.615774, 48.676842>,  <35.830910, 28.847605, 48.730850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861526, 28.615774, 48.676842>,  <35.912552, 28.229389, 48.586826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861526, 28.615774, 48.676842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098489, 0.238103, -0.966233,
		-0.986928, -0.101092, -0.125510,
		-0.127563, 0.965965, 0.225034,
		35.823257, 28.905563, 48.744350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531212, 28.521086, 48.044655>,  <35.912552, 28.229389, 48.586826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531212, 28.521086, 48.044655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695869, 28.848091, 48.205761>,  <35.794666, 29.044294, 48.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695869, 28.848091, 48.205761>,  <35.531212, 28.521086, 48.044655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695869, 28.848091, 48.205761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275675, 0.309543, -0.910048,
		-0.868649, 0.485650, -0.097945,
		0.411646, 0.817513, 0.402766,
		35.819363, 29.093346, 48.326591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293343, 29.038836, 47.720242>,  <35.531212, 28.521086, 48.044655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293343, 29.038836, 47.720242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620491, 29.207033, 47.877350>,  <35.816780, 29.307953, 47.971615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620491, 29.207033, 47.877350>,  <35.293343, 29.038836, 47.720242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620491, 29.207033, 47.877350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224335, 0.395565, -0.890619,
		-0.529869, 0.816524, 0.229189,
		0.817871, 0.420496, 0.392772,
		35.865852, 29.333181, 47.995182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151005, 29.739344, 47.587166>,  <35.293343, 29.038836, 47.720242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151005, 29.739344, 47.587166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544350, 29.718309, 47.656708>,  <35.780357, 29.705688, 47.698433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544350, 29.718309, 47.656708>,  <35.151005, 29.739344, 47.587166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544350, 29.718309, 47.656708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172755, 0.566402, -0.805819,
		-0.056098, 0.822450, 0.566064,
		0.983366, -0.052585, 0.173856,
		35.839359, 29.702534, 47.708866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373329, 30.451904, 47.727547>,  <35.151005, 29.739344, 47.587166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373329, 30.451904, 47.727547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700886, 30.241299, 47.636162>,  <35.897419, 30.114935, 47.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700886, 30.241299, 47.636162>,  <35.373329, 30.451904, 47.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700886, 30.241299, 47.636162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207086, 0.642287, -0.737958,
		0.535281, 0.557000, 0.635000,
		0.818895, -0.526515, -0.228458,
		35.946556, 30.083344, 47.567623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946133, 30.906019, 47.816956>,  <35.373329, 30.451904, 47.727547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946133, 30.906019, 47.816956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061096, 30.619944, 47.562115>,  <36.130074, 30.448298, 47.409210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061096, 30.619944, 47.562115>,  <35.946133, 30.906019, 47.816956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061096, 30.619944, 47.562115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134780, 0.688748, -0.712363,
		0.948279, 0.118868, 0.294343,
		0.287405, -0.715190, -0.637104,
		36.147316, 30.405386, 47.370983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398224, 31.093609, 47.198391>,  <35.946133, 30.906019, 47.816956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398224, 31.093609, 47.198391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268509, 30.747437, 47.045624>,  <36.190678, 30.539732, 46.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268509, 30.747437, 47.045624>,  <36.398224, 31.093609, 47.198391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268509, 30.747437, 47.045624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151555, 0.446054, -0.882081,
		0.933738, -0.228170, -0.275812,
		-0.324292, -0.865433, -0.381917,
		36.171223, 30.487806, 46.931049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817913, 31.027138, 46.574947>,  <36.398224, 31.093609, 47.198391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817913, 31.027138, 46.574947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493999, 30.795090, 46.539810>,  <36.299652, 30.655861, 46.518730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493999, 30.795090, 46.539810>,  <36.817913, 31.027138, 46.574947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493999, 30.795090, 46.539810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149943, 0.349351, -0.924916,
		0.567252, -0.735807, -0.369883,
		-0.809779, -0.580123, -0.087841,
		36.251064, 30.621054, 46.513458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943108, 30.719591, 45.917603>,  <36.817913, 31.027138, 46.574947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943108, 30.719591, 45.917603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553703, 30.677515, 45.998802>,  <36.320061, 30.652269, 46.047520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553703, 30.677515, 45.998802>,  <36.943108, 30.719591, 45.917603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553703, 30.677515, 45.998802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222782, 0.236915, -0.945642,
		0.051380, -0.965819, -0.254075,
		-0.973513, -0.105190, 0.202994,
		36.261650, 30.645958, 46.059700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643158, 30.315199, 45.378197>,  <36.943108, 30.719591, 45.917603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643158, 30.315199, 45.378197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325020, 30.518515, 45.510296>,  <36.134136, 30.640505, 45.589558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325020, 30.518515, 45.510296>,  <36.643158, 30.315199, 45.378197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325020, 30.518515, 45.510296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187807, 0.311377, -0.931543,
		-0.576327, -0.802923, -0.152192,
		-0.795347, 0.508290, 0.330250,
		36.086414, 30.671001, 45.609371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119152, 30.214422, 44.867184>,  <36.643158, 30.315199, 45.378197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119152, 30.214422, 44.867184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016048, 30.539188, 45.076698>,  <35.954185, 30.734049, 45.202408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016048, 30.539188, 45.076698>,  <36.119152, 30.214422, 44.867184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016048, 30.539188, 45.076698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229886, 0.475002, -0.849427,
		-0.938463, -0.339357, 0.064213,
		-0.257757, 0.811918, 0.523785,
		35.938721, 30.782764, 45.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496651, 30.553036, 44.526512>,  <36.119152, 30.214422, 44.867184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496651, 30.553036, 44.526512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603584, 30.856140, 44.764614>,  <35.667744, 31.038002, 44.907475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603584, 30.856140, 44.764614>,  <35.496651, 30.553036, 44.526512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603584, 30.856140, 44.764614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160444, 0.644123, -0.747906,
		-0.950152, 0.104437, 0.293776,
		0.267337, 0.757759, 0.595259,
		35.683784, 31.083467, 44.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927891, 30.993973, 44.454098>,  <35.496651, 30.553036, 44.526512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927891, 30.993973, 44.454098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224579, 31.220921, 44.597172>,  <35.402592, 31.357090, 44.683014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224579, 31.220921, 44.597172>,  <34.927891, 30.993973, 44.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224579, 31.220921, 44.597172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243567, 0.724743, -0.644533,
		-0.624917, 0.390945, 0.675752,
		0.741723, 0.567370, 0.357683,
		35.447098, 31.391132, 44.704475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621452, 31.558252, 44.664146>,  <34.927891, 30.993973, 44.454098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621452, 31.558252, 44.664146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004536, 31.640892, 44.584038>,  <35.234386, 31.690475, 44.535973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004536, 31.640892, 44.584038>,  <34.621452, 31.558252, 44.664146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004536, 31.640892, 44.584038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287562, 0.711337, -0.641333,
		0.009961, 0.671801, 0.740665,
		0.957710, 0.206598, -0.200270,
		35.291847, 31.702871, 44.523956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728035, 32.289001, 44.779976>,  <34.621452, 31.558252, 44.664146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728035, 32.289001, 44.779976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026539, 32.174393, 44.539642>,  <35.205643, 32.105625, 44.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026539, 32.174393, 44.539642>,  <34.728035, 32.289001, 44.779976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026539, 32.174393, 44.539642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266483, 0.698535, -0.664105,
		0.609984, 0.655707, 0.444935,
		0.746261, -0.286526, -0.600830,
		35.250416, 32.088436, 44.359394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087391, 32.850124, 44.578182>,  <34.728035, 32.289001, 44.779976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087391, 32.850124, 44.578182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226189, 32.594933, 44.303204>,  <35.309467, 32.441818, 44.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226189, 32.594933, 44.303204>,  <35.087391, 32.850124, 44.578182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226189, 32.594933, 44.303204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017452, 0.728469, -0.684857,
		0.937703, 0.249641, 0.241643,
		0.346998, -0.637976, -0.687444,
		35.330288, 32.403542, 44.096970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440155, 33.320858, 44.188087>,  <35.087391, 32.850124, 44.578182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440155, 33.320858, 44.188087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431030, 32.989899, 43.963627>,  <35.425556, 32.791325, 43.828949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431030, 32.989899, 43.963627>,  <35.440155, 33.320858, 44.188087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431030, 32.989899, 43.963627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030162, 0.561611, -0.826851,
		0.999285, -0.001940, -0.037770,
		-0.022816, -0.827399, -0.561151,
		35.424187, 32.741680, 43.795280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935268, 33.452675, 43.640621>,  <35.440155, 33.320858, 44.188087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935268, 33.452675, 43.640621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701595, 33.154133, 43.513069>,  <35.561390, 32.975010, 43.436539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701595, 33.154133, 43.513069>,  <35.935268, 33.452675, 43.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701595, 33.154133, 43.513069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027394, 0.374537, -0.926807,
		0.811158, -0.550163, -0.198353,
		-0.584186, -0.746353, -0.318880,
		35.526340, 32.930225, 43.417404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207066, 33.311741, 42.923870>,  <35.935268, 33.452675, 43.640621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207066, 33.311741, 42.923870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858620, 33.115337, 42.920628>,  <35.649551, 32.997494, 42.918682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858620, 33.115337, 42.920628>,  <36.207066, 33.311741, 42.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858620, 33.115337, 42.920628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065052, 0.131738, -0.989148,
		0.486751, -0.861135, -0.146700,
		-0.871115, -0.491011, -0.008105,
		35.597286, 32.968033, 42.918198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271481, 32.641113, 42.392052>,  <36.207066, 33.311741, 42.923870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271481, 32.641113, 42.392052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898720, 32.767567, 42.463169>,  <35.675064, 32.843437, 42.505840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898720, 32.767567, 42.463169>,  <36.271481, 32.641113, 42.392052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898720, 32.767567, 42.463169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216760, -0.092396, -0.971843,
		-0.290805, -0.944204, 0.154629,
		-0.931905, 0.316134, 0.177796,
		35.619148, 32.862408, 42.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903557, 32.251926, 42.002411>,  <36.271481, 32.641113, 42.392052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903557, 32.251926, 42.002411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642410, 32.550629, 42.053204>,  <35.485722, 32.729851, 42.083679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642410, 32.550629, 42.053204>,  <35.903557, 32.251926, 42.002411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642410, 32.550629, 42.053204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283008, -0.084975, -0.955346,
		-0.702622, -0.659645, 0.266815,
		-0.652862, 0.746758, 0.126979,
		35.446552, 32.774654, 42.091297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251701, 32.064396, 41.603325>,  <35.903557, 32.251926, 42.002411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251701, 32.064396, 41.603325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185574, 32.452377, 41.674728>,  <35.145897, 32.685165, 41.717571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185574, 32.452377, 41.674728>,  <35.251701, 32.064396, 41.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185574, 32.452377, 41.674728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633761, 0.034203, -0.772773,
		-0.755657, -0.240888, 0.609062,
		-0.165319, 0.969950, 0.178511,
		35.135979, 32.743362, 41.728283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422787, 32.244457, 41.614182>,  <35.251701, 32.064396, 41.603325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422787, 32.244457, 41.614182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639366, 32.568192, 41.523140>,  <34.769314, 32.762432, 41.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639366, 32.568192, 41.523140>,  <34.422787, 32.244457, 41.614182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639366, 32.568192, 41.523140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564033, 0.148922, -0.812212,
		-0.623459, 0.568149, 0.537127,
		0.541448, 0.809339, -0.227608,
		34.801800, 32.810993, 41.454857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978348, 32.770088, 41.445690>,  <34.422787, 32.244457, 41.614182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978348, 32.770088, 41.445690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312820, 32.874828, 41.252930>,  <34.513504, 32.937672, 41.137272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312820, 32.874828, 41.252930>,  <33.978348, 32.770088, 41.445690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312820, 32.874828, 41.252930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548386, 0.385963, -0.741825,
		-0.008250, 0.884572, 0.466331,
		0.836184, 0.261850, -0.481903,
		34.563675, 32.953384, 41.108360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711788, 33.349800, 40.965130>,  <33.978348, 32.770088, 41.445690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711788, 33.349800, 40.965130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080521, 33.293369, 40.820728>,  <34.301758, 33.259510, 40.734085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080521, 33.293369, 40.820728>,  <33.711788, 33.349800, 40.965130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080521, 33.293369, 40.820728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254137, 0.483252, -0.837784,
		0.292652, 0.864039, 0.409623,
		0.921830, -0.141078, -0.361009,
		34.357071, 33.251045, 40.712425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918404, 33.944969, 40.766468>,  <33.711788, 33.349800, 40.965130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918404, 33.944969, 40.766468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102413, 33.665382, 40.547443>,  <34.212818, 33.497631, 40.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102413, 33.665382, 40.547443>,  <33.918404, 33.944969, 40.766468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102413, 33.665382, 40.547443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414467, 0.376335, -0.828607,
		0.785235, 0.608125, -0.116576,
		0.460025, -0.698969, -0.547559,
		34.240421, 33.455692, 40.383175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234020, 34.314411, 40.266727>,  <33.918404, 33.944969, 40.766468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234020, 34.314411, 40.266727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208267, 33.937149, 40.136307>,  <34.192814, 33.710793, 40.058056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208267, 33.937149, 40.136307>,  <34.234020, 34.314411, 40.266727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208267, 33.937149, 40.136307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395742, 0.324070, -0.859282,
		0.916102, 0.073709, -0.394112,
		-0.064383, -0.943157, -0.326051,
		34.188953, 33.654202, 40.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551609, 34.315308, 39.578293>,  <34.234020, 34.314411, 40.266727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551609, 34.315308, 39.578293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330536, 33.982025, 39.585251>,  <34.197891, 33.782055, 39.589424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330536, 33.982025, 39.585251>,  <34.551609, 34.315308, 39.578293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330536, 33.982025, 39.585251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490733, 0.308503, -0.814867,
		0.673590, -0.458898, -0.579388,
		-0.552683, -0.833210, 0.017392,
		34.164730, 33.732063, 39.590469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427441, 34.166630, 38.876637>,  <34.551609, 34.315308, 39.578293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427441, 34.166630, 38.876637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160133, 33.918369, 39.040695>,  <33.999748, 33.769413, 39.139130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160133, 33.918369, 39.040695>,  <34.427441, 34.166630, 38.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160133, 33.918369, 39.040695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643168, 0.204962, -0.737784,
		0.373841, -0.756825, -0.536151,
		-0.668264, -0.620649, 0.410143,
		33.959652, 33.732174, 39.163738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308823, 33.716442, 38.452396>,  <34.427441, 34.166630, 38.876637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308823, 33.716442, 38.452396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975349, 33.741402, 38.671883>,  <33.775265, 33.756378, 38.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975349, 33.741402, 38.671883>,  <34.308823, 33.716442, 38.452396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975349, 33.741402, 38.671883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531055, 0.182026, -0.827555,
		-0.151522, -0.981312, -0.118612,
		-0.833680, 0.062403, 0.548711,
		33.725246, 33.760120, 38.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878666, 33.310638, 38.067410>,  <34.308823, 33.716442, 38.452396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878666, 33.310638, 38.067410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661205, 33.548767, 38.304066>,  <33.530727, 33.691643, 38.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661205, 33.548767, 38.304066>,  <33.878666, 33.310638, 38.067410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661205, 33.548767, 38.304066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709157, 0.051230, -0.703187,
		-0.448929, -0.801855, 0.394323,
		-0.543653, 0.595318, 0.591640,
		33.498108, 33.727364, 38.481556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433052, 32.824181, 38.330002>,  <33.878666, 33.310638, 38.067410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433052, 32.824181, 38.330002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704876, 32.645531, 38.097202>,  <34.867970, 32.538342, 37.957523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704876, 32.645531, 38.097202>,  <34.433052, 32.824181, 38.330002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704876, 32.645531, 38.097202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533904, -0.242996, 0.809876,
		-0.503137, -0.861090, 0.073325,
		0.679559, -0.446627, -0.582000,
		34.908745, 32.511543, 37.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625748, 32.134602, 38.544476>,  <34.433052, 32.824181, 38.330002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625748, 32.134602, 38.544476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951687, 32.230556, 38.333393>,  <35.147251, 32.288128, 38.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951687, 32.230556, 38.333393>,  <34.625748, 32.134602, 38.544476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951687, 32.230556, 38.333393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579277, -0.303397, 0.756563,
		0.021382, -0.922174, -0.386183,
		0.814850, 0.239884, -0.527707,
		35.196140, 32.302521, 38.175079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123055, 31.522900, 38.690819>,  <34.625748, 32.134602, 38.544476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123055, 31.522900, 38.690819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349854, 31.830748, 38.573383>,  <35.485935, 32.015457, 38.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349854, 31.830748, 38.573383>,  <35.123055, 31.522900, 38.690819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349854, 31.830748, 38.573383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627242, -0.172373, 0.759510,
		0.533927, -0.614794, -0.580474,
		0.567001, 0.769620, -0.293590,
		35.519955, 32.061634, 38.485306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772648, 31.208269, 38.462830>,  <35.123055, 31.522900, 38.690819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772648, 31.208269, 38.462830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818752, 31.585165, 38.588623>,  <35.846413, 31.811302, 38.664097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818752, 31.585165, 38.588623>,  <35.772648, 31.208269, 38.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818752, 31.585165, 38.588623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624819, -0.314884, 0.714458,
		0.772216, 0.114147, -0.625022,
		0.115256, 0.942241, 0.314480,
		35.853329, 31.867838, 38.682968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489388, 31.351545, 38.448162>,  <35.772648, 31.208269, 38.462830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489388, 31.351545, 38.448162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308186, 31.606863, 38.697117>,  <36.199463, 31.760054, 38.846489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308186, 31.606863, 38.697117>,  <36.489388, 31.351545, 38.448162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308186, 31.606863, 38.697117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622429, -0.273365, 0.733385,
		0.638254, 0.719620, -0.273457,
		-0.453004, 0.638294, 0.622389,
		36.172283, 31.798351, 38.883835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099327, 31.568800, 38.728916>,  <36.489388, 31.351545, 38.448162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099327, 31.568800, 38.728916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791862, 31.686029, 38.956345>,  <36.607384, 31.756367, 39.092800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791862, 31.686029, 38.956345>,  <37.099327, 31.568800, 38.728916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791862, 31.686029, 38.956345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434861, -0.412447, 0.800489,
		0.469107, 0.862552, 0.189585,
		-0.768658, 0.293072, 0.568572,
		36.561264, 31.773951, 39.126915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386517, 32.091114, 39.279953>,  <37.099327, 31.568800, 38.728916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386517, 32.091114, 39.279953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048149, 31.975445, 39.459198>,  <36.845131, 31.906042, 39.566746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048149, 31.975445, 39.459198>,  <37.386517, 32.091114, 39.279953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048149, 31.975445, 39.459198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524655, -0.300406, 0.796551,
		-0.095728, 0.908919, 0.405836,
		-0.845916, -0.289176, 0.448112,
		36.794373, 31.888693, 39.593632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463047, 32.300049, 39.977627>,  <37.386517, 32.091114, 39.279953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463047, 32.300049, 39.977627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173943, 32.023617, 39.975651>,  <37.000481, 31.857758, 39.974464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173943, 32.023617, 39.975651>,  <37.463047, 32.300049, 39.977627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173943, 32.023617, 39.975651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292185, -0.312044, 0.904023,
		-0.626293, 0.651950, 0.427456,
		-0.722762, -0.691079, -0.004941,
		36.957115, 31.816294, 39.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465988, 32.235550, 40.681259>,  <37.463047, 32.300049, 39.977627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465988, 32.235550, 40.681259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245598, 31.940563, 40.525017>,  <37.113365, 31.763571, 40.431271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245598, 31.940563, 40.525017>,  <37.465988, 32.235550, 40.681259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245598, 31.940563, 40.525017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147744, -0.546861, 0.824084,
		-0.821341, 0.396338, 0.410262,
		-0.550972, -0.737468, -0.390603,
		37.080307, 31.719322, 40.407837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006096, 32.055965, 41.217400>,  <37.465988, 32.235550, 40.681259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006096, 32.055965, 41.217400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026161, 31.745459, 40.966038>,  <37.038200, 31.559155, 40.815220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026161, 31.745459, 40.966038>,  <37.006096, 32.055965, 41.217400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026161, 31.745459, 40.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260834, -0.597179, 0.758514,
		-0.964080, -0.201956, 0.172522,
		0.050159, -0.776267, -0.628405,
		37.041210, 31.512579, 40.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542088, 31.489458, 41.332745>,  <37.006096, 32.055965, 41.217400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542088, 31.489458, 41.332745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864265, 31.313192, 41.174217>,  <37.057571, 31.207434, 41.079102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864265, 31.313192, 41.174217>,  <36.542088, 31.489458, 41.332745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864265, 31.313192, 41.174217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013335, -0.655065, 0.755455,
		-0.592516, -0.613765, -0.521745,
		0.805449, -0.440662, -0.396321,
		37.105900, 31.180994, 41.055321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485882, 30.747665, 41.382942>,  <36.542088, 31.489458, 41.332745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485882, 30.747665, 41.382942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876156, 30.777794, 41.300610>,  <37.110321, 30.795872, 41.251209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876156, 30.777794, 41.300610>,  <36.485882, 30.747665, 41.382942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876156, 30.777794, 41.300610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207942, -0.614938, 0.760665,
		-0.069276, -0.784970, -0.615649,
		0.975685, 0.075323, -0.205828,
		37.168861, 30.800390, 41.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752598, 30.053795, 41.325554>,  <36.485882, 30.747665, 41.382942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752598, 30.053795, 41.325554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068401, 30.289270, 41.394985>,  <37.257881, 30.430555, 41.436646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068401, 30.289270, 41.394985>,  <36.752598, 30.053795, 41.325554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068401, 30.289270, 41.394985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370230, -0.682376, 0.630312,
		0.489502, -0.433370, -0.756689,
		0.789505, 0.588687, 0.173578,
		37.305252, 30.465878, 41.447060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321991, 29.631710, 41.382774>,  <36.752598, 30.053795, 41.325554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321991, 29.631710, 41.382774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439579, 29.965742, 41.568771>,  <37.510132, 30.166162, 41.680370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439579, 29.965742, 41.568771>,  <37.321991, 29.631710, 41.382774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439579, 29.965742, 41.568771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366156, -0.547769, 0.752249,
		0.882899, -0.050880, -0.466799,
		0.293972, 0.835081, 0.464994,
		37.527771, 30.216267, 41.708271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999310, 29.453630, 41.585728>,  <37.321991, 29.631710, 41.382774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999310, 29.453630, 41.585728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879662, 29.761778, 41.810959>,  <37.807873, 29.946667, 41.946098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879662, 29.761778, 41.810959>,  <37.999310, 29.453630, 41.585728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879662, 29.761778, 41.810959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186077, -0.531676, 0.826254,
		0.935896, 0.351928, 0.015689,
		-0.299123, 0.770368, 0.563078,
		37.789925, 29.992889, 41.979881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532070, 29.491827, 42.084209>,  <37.999310, 29.453630, 41.585728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532070, 29.491827, 42.084209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224335, 29.660706, 42.275990>,  <38.039696, 29.762033, 42.391056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224335, 29.660706, 42.275990>,  <38.532070, 29.491827, 42.084209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224335, 29.660706, 42.275990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295643, -0.430004, 0.853048,
		0.566319, 0.798027, 0.205998,
		-0.769336, 0.422196, 0.479451,
		37.993534, 29.787365, 42.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777866, 29.691439, 42.680035>,  <38.532070, 29.491827, 42.084209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777866, 29.691439, 42.680035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390354, 29.724291, 42.773602>,  <38.157848, 29.744001, 42.829742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390354, 29.724291, 42.773602>,  <38.777866, 29.691439, 42.680035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390354, 29.724291, 42.773602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191299, -0.352533, 0.916038,
		0.157697, 0.932188, 0.325816,
		-0.968781, 0.082128, 0.233921,
		38.099720, 29.748930, 42.843777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719082, 29.861389, 43.384644>,  <38.777866, 29.691439, 42.680035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719082, 29.861389, 43.384644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347763, 29.729076, 43.316692>,  <38.124973, 29.649689, 43.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347763, 29.729076, 43.316692>,  <38.719082, 29.861389, 43.384644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347763, 29.729076, 43.316692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004512, -0.446779, 0.894633,
		-0.371824, 0.831247, 0.413249,
		-0.928293, -0.330781, -0.169874,
		38.069275, 29.629843, 43.265732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423141, 29.951927, 43.939671>,  <38.719082, 29.861389, 43.384644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423141, 29.951927, 43.939671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188034, 29.681145, 43.762466>,  <38.046970, 29.518675, 43.656143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188034, 29.681145, 43.762466>,  <38.423141, 29.951927, 43.939671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188034, 29.681145, 43.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051609, -0.515095, 0.855578,
		-0.807379, 0.525747, 0.267821,
		-0.587771, -0.676954, -0.443011,
		38.011703, 29.478058, 43.629562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943901, 29.885069, 44.420929>,  <38.423141, 29.951927, 43.939671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943901, 29.885069, 44.420929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898190, 29.552408, 44.203564>,  <37.870762, 29.352812, 44.073147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898190, 29.552408, 44.203564>,  <37.943901, 29.885069, 44.420929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898190, 29.552408, 44.203564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145688, -0.527051, 0.837253,
		-0.982708, 0.174849, -0.060931,
		-0.114279, -0.831652, -0.543411,
		37.863907, 29.302912, 44.040539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241489, 29.659922, 44.570164>,  <37.943901, 29.885069, 44.420929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241489, 29.659922, 44.570164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507580, 29.377836, 44.472069>,  <37.667236, 29.208584, 44.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507580, 29.377836, 44.472069>,  <37.241489, 29.659922, 44.570164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507580, 29.377836, 44.472069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020640, -0.345700, 0.938118,
		-0.746354, -0.619002, -0.244526,
		0.665229, -0.705215, -0.245238,
		37.707150, 29.166271, 44.398499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862518, 29.059513, 44.776279>,  <37.241489, 29.659922, 44.570164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862518, 29.059513, 44.776279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259159, 29.009869, 44.761742>,  <37.497143, 28.980082, 44.753017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259159, 29.009869, 44.761742>,  <36.862518, 29.059513, 44.776279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259159, 29.009869, 44.761742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033003, -0.514591, 0.856800,
		-0.125041, -0.848406, -0.514366,
		0.991603, -0.124111, -0.036345,
		37.556641, 28.972635, 44.750839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906536, 28.344370, 44.992229>,  <36.862518, 29.059513, 44.776279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906536, 28.344370, 44.992229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254452, 28.528484, 45.063343>,  <37.463200, 28.638952, 45.106010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254452, 28.528484, 45.063343>,  <36.906536, 28.344370, 44.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254452, 28.528484, 45.063343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140702, -0.576711, 0.804740,
		0.472943, -0.674937, -0.566379,
		0.869786, 0.460287, 0.177786,
		37.515388, 28.666571, 45.116680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273430, 27.881191, 45.301060>,  <36.906536, 28.344370, 44.992229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273430, 27.881191, 45.301060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474380, 28.215261, 45.390591>,  <37.594952, 28.415705, 45.444309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474380, 28.215261, 45.390591>,  <37.273430, 27.881191, 45.301060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474380, 28.215261, 45.390591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284458, -0.404098, 0.869361,
		0.816520, -0.373072, -0.440581,
		0.502372, 0.835178, 0.223831,
		37.625092, 28.465815, 45.457741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899681, 27.679976, 45.577240>,  <37.273430, 27.881191, 45.301060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899681, 27.679976, 45.577240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860680, 28.052164, 45.718502>,  <37.837276, 28.275476, 45.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860680, 28.052164, 45.718502>,  <37.899681, 27.679976, 45.577240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860680, 28.052164, 45.718502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198126, -0.329597, 0.923099,
		0.975315, 0.159978, -0.152212,
		-0.097507, 0.930469, 0.353156,
		37.831429, 28.331305, 45.824448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341908, 27.726643, 46.064541>,  <37.899681, 27.679976, 45.577240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341908, 27.726643, 46.064541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115078, 28.033091, 46.185528>,  <37.978981, 28.216959, 46.258121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115078, 28.033091, 46.185528>,  <38.341908, 27.726643, 46.064541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115078, 28.033091, 46.185528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229441, -0.205760, 0.951325,
		0.791064, 0.608872, -0.059097,
		-0.567075, 0.766119, 0.302469,
		37.944954, 28.262926, 46.276268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816872, 27.967943, 46.525368>,  <38.341908, 27.726643, 46.064541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816872, 27.967943, 46.525368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440872, 28.087330, 46.591488>,  <38.215271, 28.158962, 46.631161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440872, 28.087330, 46.591488>,  <38.816872, 27.967943, 46.525368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440872, 28.087330, 46.591488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114956, -0.179094, 0.977093,
		0.321233, 0.937467, 0.134037,
		-0.939997, 0.298466, 0.165298,
		38.158875, 28.176870, 46.641079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909103, 28.487373, 46.910019>,  <38.816872, 27.967943, 46.525368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909103, 28.487373, 46.910019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525597, 28.393379, 46.973946>,  <38.295490, 28.336983, 47.012302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525597, 28.393379, 46.973946>,  <38.909103, 28.487373, 46.910019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525597, 28.393379, 46.973946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196711, -0.142901, 0.969992,
		-0.205094, 0.961437, 0.183233,
		-0.958771, -0.234983, 0.159817,
		38.237965, 28.322884, 47.021893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694477, 28.951281, 47.544106>,  <38.909103, 28.487373, 46.910019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694477, 28.951281, 47.544106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443691, 28.640640, 47.519444>,  <38.293221, 28.454256, 47.504646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443691, 28.640640, 47.519444>,  <38.694477, 28.951281, 47.544106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443691, 28.640640, 47.519444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102370, -0.160587, 0.981699,
		-0.772291, 0.609180, 0.180183,
		-0.626966, -0.776603, -0.061658,
		38.255600, 28.407660, 47.500946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991947, 29.091169, 47.924484>,  <38.694477, 28.951281, 47.544106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991947, 29.091169, 47.924484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056721, 28.697102, 47.901798>,  <38.095585, 28.460661, 47.888187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056721, 28.697102, 47.901798>,  <37.991947, 29.091169, 47.924484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056721, 28.697102, 47.901798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018708, -0.054399, 0.998344,
		-0.986624, -0.162727, 0.009621,
		0.161934, -0.985170, -0.056715,
		38.105301, 28.401550, 47.884785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614555, 28.801178, 48.528950>,  <37.991947, 29.091169, 47.924484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614555, 28.801178, 48.528950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848049, 28.495291, 48.419796>,  <37.988144, 28.311758, 48.354305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848049, 28.495291, 48.419796>,  <37.614555, 28.801178, 48.528950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848049, 28.495291, 48.419796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028806, -0.316370, 0.948198,
		-0.811437, -0.561352, -0.162646,
		0.583730, -0.764718, -0.272885,
		38.023167, 28.265875, 48.337929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286430, 28.197166, 48.772816>,  <37.614555, 28.801178, 48.528950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286430, 28.197166, 48.772816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671993, 28.097633, 48.734951>,  <37.903332, 28.037914, 48.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671993, 28.097633, 48.734951>,  <37.286430, 28.197166, 48.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671993, 28.097633, 48.734951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033211, -0.240389, 0.970108,
		-0.264158, -0.938239, -0.223449,
		0.963907, -0.248841, -0.094660,
		37.961166, 28.022984, 48.706554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333027, 27.556601, 49.217537>,  <37.286430, 28.197166, 48.772816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333027, 27.556601, 49.217537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703011, 27.697571, 49.160610>,  <37.924999, 27.782154, 49.126453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703011, 27.697571, 49.160610>,  <37.333027, 27.556601, 49.217537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703011, 27.697571, 49.160610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234042, -0.233090, 0.943871,
		0.299473, -0.906347, -0.298080,
		0.924955, 0.352427, -0.142319,
		37.980495, 27.803299, 49.117916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775608, 27.009205, 49.460434>,  <37.333027, 27.556601, 49.217537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775608, 27.009205, 49.460434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005985, 27.334469, 49.494041>,  <38.144211, 27.529629, 49.514206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005985, 27.334469, 49.494041>,  <37.775608, 27.009205, 49.460434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005985, 27.334469, 49.494041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210021, -0.246511, 0.946110,
		0.790053, -0.527257, -0.312757,
		0.575940, 0.813162, 0.084022,
		38.178768, 27.578417, 49.519249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334427, 26.830637, 49.911407>,  <37.775608, 27.009205, 49.460434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334427, 26.830637, 49.911407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401382, 27.224993, 49.911430>,  <38.441555, 27.461607, 49.911446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401382, 27.224993, 49.911430>,  <38.334427, 26.830637, 49.911407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401382, 27.224993, 49.911430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409341, -0.069552, 0.909726,
		0.896895, -0.152256, -0.415208,
		0.167389, 0.985891, 0.000056,
		38.451599, 27.520760, 49.911446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103096, 27.028149, 50.076187>,  <38.334427, 26.830637, 49.911407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103096, 27.028149, 50.076187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858120, 27.331913, 50.164017>,  <38.711132, 27.514172, 50.216713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858120, 27.331913, 50.164017>,  <39.103096, 27.028149, 50.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858120, 27.331913, 50.164017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271563, -0.058742, 0.960626,
		0.742406, 0.647956, -0.170251,
		-0.612443, 0.759409, 0.219571,
		38.674389, 27.559736, 50.229889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496181, 27.574768, 50.460320>,  <39.103096, 27.028149, 50.076187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496181, 27.574768, 50.460320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109882, 27.583294, 50.563763>,  <38.878101, 27.588409, 50.625828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109882, 27.583294, 50.563763>,  <39.496181, 27.574768, 50.460320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109882, 27.583294, 50.563763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256753, -0.065645, 0.964245,
		0.037530, 0.997615, 0.057923,
		-0.965748, 0.021316, 0.258605,
		38.820156, 27.589689, 50.641346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482349, 28.230835, 50.884342>,  <39.496181, 27.574768, 50.460320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482349, 28.230835, 50.884342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775623, 28.457695, 51.034424>,  <39.951588, 28.593811, 51.124474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775623, 28.457695, 51.034424>,  <39.482349, 28.230835, 50.884342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775623, 28.457695, 51.034424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289005, 0.239564, -0.926868,
		-0.615557, 0.788005, 0.011737,
		0.733188, 0.567149, 0.375203,
		39.995579, 28.627840, 51.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422935, 28.914524, 50.659580>,  <39.482349, 28.230835, 50.884342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422935, 28.914524, 50.659580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813232, 28.883989, 50.741657>,  <40.047409, 28.865669, 50.790905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813232, 28.883989, 50.741657>,  <39.422935, 28.914524, 50.659580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813232, 28.883989, 50.741657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218898, 0.356216, -0.908402,
		-0.003750, 0.931280, 0.364284,
		0.975740, -0.076335, 0.205192,
		40.105953, 28.861090, 50.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740364, 29.539171, 50.432987>,  <39.422935, 28.914524, 50.659580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740364, 29.539171, 50.432987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063999, 29.305059, 50.454224>,  <40.258183, 29.164593, 50.466965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063999, 29.305059, 50.454224>,  <39.740364, 29.539171, 50.432987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063999, 29.305059, 50.454224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330882, 0.379013, -0.864214,
		0.485683, 0.716796, 0.500314,
		0.809091, -0.585280, 0.053095,
		40.306728, 29.129475, 50.470154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349575, 29.912069, 50.330883>,  <39.740364, 29.539171, 50.432987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349575, 29.912069, 50.330883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424721, 29.541082, 50.201569>,  <40.469807, 29.318491, 50.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424721, 29.541082, 50.201569>,  <40.349575, 29.912069, 50.330883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424721, 29.541082, 50.201569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144785, 0.351699, -0.924849,
		0.971466, 0.126935, 0.200354,
		0.187860, -0.927467, -0.323285,
		40.481079, 29.262842, 50.104584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855190, 29.965685, 49.852165>,  <40.349575, 29.912069, 50.330883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855190, 29.965685, 49.852165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773636, 29.581272, 49.777500>,  <40.724701, 29.350624, 49.732700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773636, 29.581272, 49.777500>,  <40.855190, 29.965685, 49.852165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773636, 29.581272, 49.777500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120026, 0.164696, -0.979014,
		0.971608, -0.222015, 0.081769,
		-0.203889, -0.961033, -0.186667,
		40.712467, 29.292963, 49.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452408, 29.580305, 49.627934>,  <40.855190, 29.965685, 49.852165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452408, 29.580305, 49.627934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129429, 29.390970, 49.487087>,  <40.935642, 29.277370, 49.402580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129429, 29.390970, 49.487087>,  <41.452408, 29.580305, 49.627934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129429, 29.390970, 49.487087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268497, 0.236619, -0.933767,
		0.525303, -0.848508, -0.063967,
		-0.807444, -0.473335, -0.352119,
		40.887196, 29.248970, 49.381451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625046, 29.440409, 48.909523>,  <41.452408, 29.580305, 49.627934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625046, 29.440409, 48.909523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230350, 29.375576, 48.905834>,  <40.993534, 29.336678, 48.903622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230350, 29.375576, 48.905834>,  <41.625046, 29.440409, 48.909523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230350, 29.375576, 48.905834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057919, 0.404557, -0.912677,
		0.151659, -0.900035, -0.408578,
		-0.986735, -0.162080, -0.009226,
		40.934330, 29.326952, 48.903065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431046, 29.077757, 48.338066>,  <41.625046, 29.440409, 48.909523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431046, 29.077757, 48.338066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080788, 29.257282, 48.409412>,  <40.870632, 29.364998, 48.452221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080788, 29.257282, 48.409412>,  <41.431046, 29.077757, 48.338066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080788, 29.257282, 48.409412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089166, 0.212727, -0.973035,
		-0.474654, -0.867936, -0.146254,
		-0.875645, 0.448814, 0.178361,
		40.818092, 29.391926, 48.462921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920532, 28.780041, 47.807049>,  <41.431046, 29.077757, 48.338066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920532, 28.780041, 47.807049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732685, 29.103796, 47.948105>,  <40.619976, 29.298050, 48.032738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732685, 29.103796, 47.948105>,  <40.920532, 28.780041, 47.807049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732685, 29.103796, 47.948105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210355, 0.285343, -0.935056,
		-0.857446, -0.513294, 0.036258,
		-0.469613, 0.809388, 0.352640,
		40.591801, 29.346613, 48.053898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204266, 28.780544, 47.564602>,  <40.920532, 28.780041, 47.807049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204266, 28.780544, 47.564602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305580, 29.156351, 47.656818>,  <40.366371, 29.381836, 47.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305580, 29.156351, 47.656818>,  <40.204266, 28.780544, 47.564602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305580, 29.156351, 47.656818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294123, 0.301821, -0.906860,
		-0.921595, 0.161890, 0.352782,
		0.253288, 0.939519, 0.230541,
		40.381565, 29.438208, 47.725979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667637, 29.242428, 47.387615>,  <40.204266, 28.780544, 47.564602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667637, 29.242428, 47.387615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960922, 29.513428, 47.410934>,  <40.136894, 29.676027, 47.424927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960922, 29.513428, 47.410934>,  <39.667637, 29.242428, 47.387615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960922, 29.513428, 47.410934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349530, 0.449027, -0.822316,
		-0.583294, 0.582554, 0.566037,
		0.733210, 0.677499, 0.058294,
		40.180885, 29.716677, 47.428421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333977, 29.835148, 47.068394>,  <39.667637, 29.242428, 47.387615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333977, 29.835148, 47.068394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715019, 29.948591, 47.112396>,  <39.943645, 30.016657, 47.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715019, 29.948591, 47.112396>,  <39.333977, 29.835148, 47.068394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715019, 29.948591, 47.112396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050009, 0.502708, -0.863008,
		-0.300053, 0.816610, 0.493068,
		0.952611, 0.283606, 0.110002,
		40.000801, 30.033672, 47.145397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293499, 30.581518, 46.968266>,  <39.333977, 29.835148, 47.068394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293499, 30.581518, 46.968266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649723, 30.422518, 46.879826>,  <39.863457, 30.327118, 46.826759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649723, 30.422518, 46.879826>,  <39.293499, 30.581518, 46.968266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649723, 30.422518, 46.879826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044494, 0.407635, -0.912060,
		0.452675, 0.822086, 0.345339,
		0.890565, -0.397502, -0.221104,
		39.916893, 30.303267, 46.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716442, 31.137178, 46.687172>,  <39.293499, 30.581518, 46.968266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716442, 31.137178, 46.687172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873520, 30.808563, 46.521828>,  <39.967766, 30.611395, 46.422623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873520, 30.808563, 46.521828>,  <39.716442, 31.137178, 46.687172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873520, 30.808563, 46.521828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045620, 0.466315, -0.883441,
		0.918537, 0.328065, 0.220598,
		0.392694, -0.821537, -0.413362,
		39.991329, 30.562101, 46.397820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280964, 31.390646, 46.342587>,  <39.716442, 31.137178, 46.687172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280964, 31.390646, 46.342587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202053, 31.034317, 46.178875>,  <40.154705, 30.820518, 46.080647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202053, 31.034317, 46.178875>,  <40.280964, 31.390646, 46.342587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202053, 31.034317, 46.178875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098346, 0.397398, -0.912361,
		0.975401, -0.220243, 0.009210,
		-0.197281, -0.890824, -0.409282,
		40.142868, 30.767069, 46.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851498, 31.250582, 45.841656>,  <40.280964, 31.390646, 46.342587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851498, 31.250582, 45.841656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523880, 31.043476, 45.742790>,  <40.327309, 30.919212, 45.683472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523880, 31.043476, 45.742790>,  <40.851498, 31.250582, 45.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523880, 31.043476, 45.742790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078576, 0.325512, -0.942267,
		0.568326, -0.791179, -0.225925,
		-0.819043, -0.517763, -0.247165,
		40.278168, 30.888147, 45.668640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077545, 30.919737, 45.233284>,  <40.851498, 31.250582, 45.841656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077545, 30.919737, 45.233284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677750, 30.913738, 45.221992>,  <40.437874, 30.910139, 45.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677750, 30.913738, 45.221992>,  <41.077545, 30.919737, 45.233284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677750, 30.913738, 45.221992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025133, 0.176728, -0.983939,
		0.019744, -0.984146, -0.176260,
		-0.999489, -0.014997, -0.028224,
		40.377903, 30.909239, 45.213524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003204, 30.682888, 44.628391>,  <41.077545, 30.919737, 45.233284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003204, 30.682888, 44.628391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624672, 30.790716, 44.699703>,  <40.397552, 30.855413, 44.742489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624672, 30.790716, 44.699703>,  <41.003204, 30.682888, 44.628391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624672, 30.790716, 44.699703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140085, 0.154984, -0.977935,
		-0.291254, -0.950427, -0.108904,
		-0.946333, 0.269572, 0.178280,
		40.340771, 30.871588, 44.753189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639908, 30.345001, 44.169651>,  <41.003204, 30.682888, 44.628391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639908, 30.345001, 44.169651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402622, 30.649954, 44.273090>,  <40.260250, 30.832926, 44.335152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402622, 30.649954, 44.273090>,  <40.639908, 30.345001, 44.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402622, 30.649954, 44.273090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312194, 0.078226, -0.946792,
		-0.742044, -0.642385, 0.191606,
		-0.593216, 0.762379, 0.258596,
		40.224659, 30.878668, 44.350670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134979, 30.304274, 43.681278>,  <40.639908, 30.345001, 44.169651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134979, 30.304274, 43.681278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102299, 30.677849, 43.820465>,  <40.082691, 30.901995, 43.903976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102299, 30.677849, 43.820465>,  <40.134979, 30.304274, 43.681278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102299, 30.677849, 43.820465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175625, 0.330178, -0.927436,
		-0.981061, -0.136887, 0.137046,
		-0.081704, 0.933940, 0.347965,
		40.077789, 30.958031, 43.924854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615513, 30.601891, 43.341434>,  <40.134979, 30.304274, 43.681278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615513, 30.601891, 43.341434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755836, 30.957586, 43.458862>,  <39.840031, 31.171003, 43.529320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755836, 30.957586, 43.458862>,  <39.615513, 30.601891, 43.341434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755836, 30.957586, 43.458862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086736, 0.342998, -0.935323,
		-0.932421, 0.302658, 0.197457,
		0.350810, 0.889242, 0.293567,
		39.861080, 31.224360, 43.546932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179466, 31.084040, 43.127884>,  <39.615513, 30.601891, 43.341434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179466, 31.084040, 43.127884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545700, 31.241734, 43.159576>,  <39.765442, 31.336349, 43.178593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545700, 31.241734, 43.159576>,  <39.179466, 31.084040, 43.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545700, 31.241734, 43.159576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034470, 0.273249, -0.961326,
		-0.400637, 0.877447, 0.263773,
		0.915588, 0.394235, 0.079228,
		39.820377, 31.360004, 43.183346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042599, 31.816660, 43.083015>,  <39.179466, 31.084040, 43.127884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042599, 31.816660, 43.083015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422337, 31.722567, 42.999668>,  <39.650177, 31.666111, 42.949661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422337, 31.722567, 42.999668>,  <39.042599, 31.816660, 43.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422337, 31.722567, 42.999668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144875, 0.260783, -0.954465,
		0.278862, 0.936300, 0.213492,
		0.949340, -0.235234, -0.208369,
		39.707138, 31.651997, 42.937157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143181, 32.234638, 42.486996>,  <39.042599, 31.816660, 43.083015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143181, 32.234638, 42.486996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485939, 32.028927, 42.472843>,  <39.691593, 31.905499, 42.464352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485939, 32.028927, 42.472843>,  <39.143181, 32.234638, 42.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485939, 32.028927, 42.472843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128421, 0.279437, -0.951537,
		0.499245, 0.810820, 0.305491,
		0.856891, -0.514282, -0.035381,
		39.743008, 31.874641, 42.462231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635288, 32.709282, 42.225758>,  <39.143181, 32.234638, 42.486996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635288, 32.709282, 42.225758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770874, 32.337391, 42.168182>,  <39.852226, 32.114258, 42.133636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770874, 32.337391, 42.168182>,  <39.635288, 32.709282, 42.225758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770874, 32.337391, 42.168182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086947, 0.183297, -0.979205,
		0.936774, 0.319397, 0.142968,
		0.338961, -0.929724, -0.143937,
		39.872562, 32.058472, 42.125000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297859, 32.722015, 41.760414>,  <39.635288, 32.709282, 42.225758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297859, 32.722015, 41.760414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130836, 32.360664, 41.721317>,  <40.030624, 32.143852, 41.697857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130836, 32.360664, 41.721317>,  <40.297859, 32.722015, 41.760414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130836, 32.360664, 41.721317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057750, 0.133738, -0.989332,
		0.906814, -0.407458, -0.108013,
		-0.417557, -0.903378, -0.097745,
		40.005569, 32.089649, 41.691994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726982, 32.299076, 41.312347>,  <40.297859, 32.722015, 41.760414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726982, 32.299076, 41.312347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383648, 32.094360, 41.297733>,  <40.177647, 31.971531, 41.288963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383648, 32.094360, 41.297733>,  <40.726982, 32.299076, 41.312347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383648, 32.094360, 41.297733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043544, -0.001710, -0.999050,
		0.511237, -0.859111, 0.023753,
		-0.858336, -0.511786, -0.036535,
		40.126148, 31.940825, 41.286774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876366, 31.752548, 40.950363>,  <40.726982, 32.299076, 41.312347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876366, 31.752548, 40.950363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481033, 31.803532, 40.916981>,  <40.243835, 31.834122, 40.896950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481033, 31.803532, 40.916981>,  <40.876366, 31.752548, 40.950363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481033, 31.803532, 40.916981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090118, 0.047429, -0.994801,
		-0.122838, -0.990709, -0.058362,
		-0.988327, 0.127458, -0.083455,
		40.184536, 31.841768, 40.891945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690849, 31.362061, 40.379013>,  <40.876366, 31.752548, 40.950363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690849, 31.362061, 40.379013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372231, 31.601801, 40.410728>,  <40.181057, 31.745646, 40.429760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372231, 31.601801, 40.410728>,  <40.690849, 31.362061, 40.379013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372231, 31.601801, 40.410728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028972, 0.168843, -0.985217,
		-0.603877, -0.782478, -0.151856,
		-0.796551, 0.599349, 0.079290,
		40.133266, 31.781605, 40.434517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295933, 31.236864, 39.861401>,  <40.690849, 31.362061, 40.379013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295933, 31.236864, 39.861401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130596, 31.589432, 39.952835>,  <40.031395, 31.800972, 40.007694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130596, 31.589432, 39.952835>,  <40.295933, 31.236864, 39.861401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130596, 31.589432, 39.952835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035277, 0.235341, -0.971272,
		-0.909892, -0.409531, -0.066183,
		-0.413342, 0.881419, 0.228582,
		40.006592, 31.853857, 40.021408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714455, 31.312822, 39.419434>,  <40.295933, 31.236864, 39.861401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714455, 31.312822, 39.419434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815617, 31.673840, 39.558834>,  <39.876312, 31.890450, 39.642475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815617, 31.673840, 39.558834>,  <39.714455, 31.312822, 39.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815617, 31.673840, 39.558834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047666, 0.348155, -0.936224,
		-0.966316, 0.253388, 0.045030,
		0.252906, 0.902542, 0.348505,
		39.891487, 31.944603, 39.663387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409283, 31.779364, 38.918610>,  <39.714455, 31.312822, 39.419434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409283, 31.779364, 38.918610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669331, 32.018787, 39.105827>,  <39.825359, 32.162441, 39.218159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669331, 32.018787, 39.105827>,  <39.409283, 31.779364, 38.918610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669331, 32.018787, 39.105827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175616, 0.480942, -0.858984,
		-0.739258, 0.640639, 0.207553,
		0.650120, 0.598561, 0.468047,
		39.864368, 32.198357, 39.246243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201679, 32.487370, 38.845627>,  <39.409283, 31.779364, 38.918610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201679, 32.487370, 38.845627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592609, 32.521236, 38.923260>,  <39.827168, 32.541557, 38.969841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592609, 32.521236, 38.923260>,  <39.201679, 32.487370, 38.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592609, 32.521236, 38.923260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124223, 0.513016, -0.849343,
		-0.171481, 0.854193, 0.490865,
		0.977324, 0.084670, 0.194082,
		39.885807, 32.546638, 38.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402611, 33.181019, 38.676826>,  <39.201679, 32.487370, 38.845627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402611, 33.181019, 38.676826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761559, 33.006691, 38.704502>,  <39.976929, 32.902096, 38.721107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761559, 33.006691, 38.704502>,  <39.402611, 33.181019, 38.676826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761559, 33.006691, 38.704502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241157, 0.353036, -0.903996,
		0.369553, 0.827905, 0.421905,
		0.897371, -0.435820, 0.069190,
		40.030769, 32.875946, 38.725258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874241, 33.721283, 38.500912>,  <39.402611, 33.181019, 38.676826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874241, 33.721283, 38.500912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074760, 33.381130, 38.436981>,  <40.195072, 33.177036, 38.398624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074760, 33.381130, 38.436981>,  <39.874241, 33.721283, 38.500912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074760, 33.381130, 38.436981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378826, 0.381766, -0.843057,
		0.777938, 0.362079, 0.513528,
		0.501301, -0.850384, -0.159826,
		40.225151, 33.126015, 38.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515541, 33.991543, 38.203140>,  <39.874241, 33.721283, 38.500912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515541, 33.991543, 38.203140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498322, 33.603172, 38.108955>,  <40.487988, 33.370148, 38.052444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498322, 33.603172, 38.108955>,  <40.515541, 33.991543, 38.203140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498322, 33.603172, 38.108955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527736, 0.178017, -0.830545,
		0.848317, -0.160017, 0.504730,
		-0.043051, -0.970930, -0.235462,
		40.485405, 33.311893, 38.038319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229141, 33.652603, 38.175529>,  <40.515541, 33.991543, 38.203140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229141, 33.652603, 38.175529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000103, 33.425285, 37.939163>,  <40.862682, 33.288895, 37.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000103, 33.425285, 37.939163>,  <41.229141, 33.652603, 38.175529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000103, 33.425285, 37.939163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548333, 0.270364, -0.791350,
		0.609482, -0.777138, 0.156807,
		-0.572593, -0.568295, -0.590912,
		40.828323, 33.254795, 37.761890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648041, 33.332302, 37.690582>,  <41.229141, 33.652603, 38.175529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648041, 33.332302, 37.690582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298386, 33.284229, 37.502354>,  <41.088593, 33.255386, 37.389416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298386, 33.284229, 37.502354>,  <41.648041, 33.332302, 37.690582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298386, 33.284229, 37.502354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402532, 0.362853, -0.840420,
		0.271746, -0.924065, -0.268809,
		-0.874141, -0.120176, -0.470570,
		41.036144, 33.248177, 37.361183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910805, 33.167179, 37.058475>,  <41.648041, 33.332302, 37.690582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910805, 33.167179, 37.058475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526989, 33.269821, 37.012093>,  <41.296700, 33.331406, 36.984261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526989, 33.269821, 37.012093>,  <41.910805, 33.167179, 37.058475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526989, 33.269821, 37.012093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204429, 0.351594, -0.913559,
		-0.193654, -0.900297, -0.389824,
		-0.959535, 0.256605, -0.115959,
		41.239128, 33.346802, 36.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693836, 32.855637, 36.481853>,  <41.910805, 33.167179, 37.058475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693836, 32.855637, 36.481853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470451, 33.179420, 36.554405>,  <41.336422, 33.373692, 36.597939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470451, 33.179420, 36.554405>,  <41.693836, 32.855637, 36.481853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470451, 33.179420, 36.554405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199076, 0.343047, -0.917980,
		-0.805287, -0.476549, -0.352723,
		-0.558463, 0.809457, 0.181382,
		41.302914, 33.422256, 36.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408745, 33.002808, 35.766342>,  <41.693836, 32.855637, 36.481853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408745, 33.002808, 35.766342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369057, 33.346443, 35.967186>,  <41.345245, 33.552624, 36.087692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369057, 33.346443, 35.967186>,  <41.408745, 33.002808, 35.766342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369057, 33.346443, 35.967186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231480, 0.510685, -0.828021,
		-0.967767, 0.034076, -0.249531,
		-0.099216, 0.859093, 0.502112,
		41.339291, 33.604172, 36.117821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907047, 33.360352, 35.401611>,  <41.408745, 33.002808, 35.766342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907047, 33.360352, 35.401611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167603, 33.578926, 35.612171>,  <41.323936, 33.710072, 35.738506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167603, 33.578926, 35.612171>,  <40.907047, 33.360352, 35.401611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167603, 33.578926, 35.612171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271951, 0.479546, -0.834313,
		-0.708331, 0.686620, 0.163768,
		0.651391, 0.546433, 0.526404,
		41.363018, 33.742855, 35.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871933, 34.006130, 35.319473>,  <40.907047, 33.360352, 35.401611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871933, 34.006130, 35.319473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257122, 33.954964, 35.414402>,  <41.488235, 33.924263, 35.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257122, 33.954964, 35.414402>,  <40.871933, 34.006130, 35.319473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257122, 33.954964, 35.414402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267245, 0.569058, -0.777659,
		-0.035572, 0.812287, 0.582172,
		0.962972, -0.127919, 0.237322,
		41.546013, 33.916588, 35.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028122, 34.719570, 35.259441>,  <40.871933, 34.006130, 35.319473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028122, 34.719570, 35.259441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346199, 34.478268, 35.234974>,  <41.537045, 34.333485, 35.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346199, 34.478268, 35.234974>,  <41.028122, 34.719570, 35.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346199, 34.478268, 35.234974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271170, 0.444036, -0.853990,
		0.542337, 0.662503, 0.516682,
		0.795196, -0.603259, -0.061166,
		41.584759, 34.297291, 35.216625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707928, 35.106316, 35.021999>,  <41.028122, 34.719570, 35.259441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707928, 35.106316, 35.021999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712448, 34.714958, 34.939415>,  <41.715160, 34.480145, 34.889866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712448, 34.714958, 34.939415>,  <41.707928, 35.106316, 35.021999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712448, 34.714958, 34.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357945, 0.196747, -0.912779,
		0.933674, -0.063587, 0.352433,
		0.011299, -0.978390, -0.206458,
		41.715839, 34.421440, 34.877476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092155, 35.080116, 34.432640>,  <41.707928, 35.106316, 35.021999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092155, 35.080116, 34.432640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915920, 34.721256, 34.445374>,  <41.810181, 34.505939, 34.453014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915920, 34.721256, 34.445374>,  <42.092155, 35.080116, 34.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915920, 34.721256, 34.445374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284996, -0.173416, -0.942711,
		0.851271, -0.406270, 0.332088,
		-0.440585, -0.897146, 0.031838,
		41.783745, 34.452114, 34.454926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536808, 34.515476, 34.277622>,  <42.092155, 35.080116, 34.432640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536808, 34.515476, 34.277622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161976, 34.409012, 34.187256>,  <41.937077, 34.345131, 34.133034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161976, 34.409012, 34.187256>,  <42.536808, 34.515476, 34.277622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161976, 34.409012, 34.187256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298835, -0.276957, -0.913232,
		0.180500, -0.923283, 0.339069,
		-0.937079, -0.266164, -0.225919,
		41.880852, 34.329163, 34.119480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958885, 34.118366, 34.678940>,  <42.536808, 34.515476, 34.277622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958885, 34.118366, 34.678940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198284, 34.391594, 34.846375>,  <43.341923, 34.555531, 34.946835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198284, 34.391594, 34.846375>,  <42.958885, 34.118366, 34.678940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198284, 34.391594, 34.846375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442913, -0.717509, 0.537596,
		0.667554, -0.136353, -0.731969,
		0.598497, 0.683073, 0.418583,
		43.377834, 34.596516, 34.971951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545509, 34.242401, 34.112324>,  <42.958885, 34.118366, 34.678940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545509, 34.242401, 34.112324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900051, 34.398071, 34.212654>,  <44.112778, 34.491474, 34.272854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900051, 34.398071, 34.212654>,  <43.545509, 34.242401, 34.112324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900051, 34.398071, 34.212654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240946, 0.850313, -0.467882,
		-0.395372, 0.354273, 0.847450,
		0.886356, 0.389177, 0.250829,
		44.165958, 34.514824, 34.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295738, 34.764523, 34.360641>,  <43.545509, 34.242401, 34.112324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295738, 34.764523, 34.360641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677799, 34.830528, 34.262287>,  <43.907036, 34.870132, 34.203274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677799, 34.830528, 34.262287>,  <43.295738, 34.764523, 34.360641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677799, 34.830528, 34.262287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269302, 0.829357, -0.489533,
		0.123143, 0.533794, 0.836600,
		0.955150, 0.165016, -0.245881,
		43.964344, 34.880032, 34.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432865, 35.564438, 34.420883>,  <43.295738, 34.764523, 34.360641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432865, 35.564438, 34.420883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729137, 35.417370, 34.195953>,  <43.906902, 35.329128, 34.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729137, 35.417370, 34.195953>,  <43.432865, 35.564438, 34.420883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729137, 35.417370, 34.195953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185098, 0.692911, -0.696860,
		0.645855, 0.620237, 0.445171,
		0.740682, -0.367670, -0.562324,
		43.951344, 35.307068, 34.027256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763744, 36.135159, 34.141033>,  <43.432865, 35.564438, 34.420883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763744, 36.135159, 34.141033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874599, 35.828056, 33.909950>,  <43.941113, 35.643795, 33.771301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874599, 35.828056, 33.909950>,  <43.763744, 36.135159, 34.141033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874599, 35.828056, 33.909950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196118, 0.543399, -0.816245,
		0.940602, 0.339512, 0.000026,
		0.277139, -0.767756, -0.577706,
		43.957741, 35.597729, 33.736637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217361, 36.413994, 33.612743>,  <43.763744, 36.135159, 34.141033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217361, 36.413994, 33.612743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103741, 36.052589, 33.484383>,  <44.035568, 35.835747, 33.407368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103741, 36.052589, 33.484383>,  <44.217361, 36.413994, 33.612743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103741, 36.052589, 33.484383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041712, 0.322724, -0.945574,
		0.957901, -0.281979, -0.053984,
		-0.284054, -0.903514, -0.320899,
		44.018524, 35.781536, 33.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705780, 36.297291, 33.063133>,  <44.217361, 36.413994, 33.612743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705780, 36.297291, 33.063133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386448, 36.065525, 32.997478>,  <44.194847, 35.926464, 32.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386448, 36.065525, 32.997478>,  <44.705780, 36.297291, 33.063133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386448, 36.065525, 32.997478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092801, 0.387667, -0.917116,
		0.595024, -0.716931, -0.363258,
		-0.798332, -0.579417, -0.164139,
		44.146950, 35.891701, 32.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706135, 36.140732, 32.326565>,  <44.705780, 36.297291, 33.063133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706135, 36.140732, 32.326565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333206, 36.053394, 32.441875>,  <44.109447, 36.000992, 32.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333206, 36.053394, 32.441875>,  <44.706135, 36.140732, 32.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333206, 36.053394, 32.441875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361480, 0.539647, -0.760337,
		0.010445, -0.813085, -0.582051,
		-0.932321, -0.218341, 0.288278,
		44.053509, 35.987892, 32.528358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366238, 36.007130, 31.712881>,  <44.706135, 36.140732, 32.326565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366238, 36.007130, 31.712881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075874, 36.108067, 31.968813>,  <43.901657, 36.168629, 32.122372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075874, 36.108067, 31.968813>,  <44.366238, 36.007130, 31.712881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075874, 36.108067, 31.968813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446769, 0.534286, -0.717591,
		-0.522931, -0.806760, -0.275103,
		-0.725907, 0.252343, 0.639830,
		43.858101, 36.183769, 32.160763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701332, 35.846249, 31.336380>,  <44.366238, 36.007130, 31.712881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701332, 35.846249, 31.336380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581825, 36.112976, 31.609463>,  <43.510120, 36.273014, 31.773312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581825, 36.112976, 31.609463>,  <43.701332, 35.846249, 31.336380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581825, 36.112976, 31.609463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448691, 0.533230, -0.717177,
		-0.842268, -0.520593, 0.139885,
		-0.298766, 0.666820, 0.682707,
		43.492195, 36.313023, 31.814276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267902, 36.163437, 30.921476>,  <43.701332, 35.846249, 31.336380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267902, 36.163437, 30.921476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295471, 36.384861, 31.253456>,  <43.312012, 36.517715, 31.452644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295471, 36.384861, 31.253456>,  <43.267902, 36.163437, 30.921476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295471, 36.384861, 31.253456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559217, 0.710375, -0.427367,
		-0.826151, -0.434666, 0.358525,
		0.068926, 0.553563, 0.829950,
		43.316151, 36.550930, 31.502441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585217, 36.517357, 31.030594>,  <43.267902, 36.163437, 30.921476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585217, 36.517357, 31.030594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842148, 36.741310, 31.239952>,  <42.996307, 36.875683, 31.365568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842148, 36.741310, 31.239952>,  <42.585217, 36.517357, 31.030594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842148, 36.741310, 31.239952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323987, 0.817240, -0.476604,
		-0.694585, 0.136562, 0.706331,
		0.642327, 0.559884, 0.523398,
		43.034847, 36.909275, 31.396971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229992, 37.045521, 31.606724>,  <42.585217, 36.517357, 31.030594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229992, 37.045521, 31.606724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581665, 37.195843, 31.489550>,  <42.792667, 37.286037, 31.419245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581665, 37.195843, 31.489550>,  <42.229992, 37.045521, 31.606724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581665, 37.195843, 31.489550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465215, 0.544055, -0.698269,
		-0.103041, 0.750182, 0.653153,
		0.879180, 0.375807, -0.292936,
		42.845421, 37.308586, 31.401669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017727, 37.691490, 31.436956>,  <42.229992, 37.045521, 31.606724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017727, 37.691490, 31.436956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371262, 37.648857, 31.254761>,  <42.583382, 37.623280, 31.145443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371262, 37.648857, 31.254761>,  <42.017727, 37.691490, 31.436956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371262, 37.648857, 31.254761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282667, 0.654157, -0.701554,
		0.372733, 0.748812, 0.548042,
		0.883838, -0.106579, -0.455490,
		42.636414, 37.616882, 31.118114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219742, 38.355900, 31.233080>,  <42.017727, 37.691490, 31.436956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219742, 38.355900, 31.233080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468731, 38.134411, 31.011839>,  <42.618126, 38.001518, 30.879095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468731, 38.134411, 31.011839>,  <42.219742, 38.355900, 31.233080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468731, 38.134411, 31.011839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033147, 0.724729, -0.688236,
		0.781940, 0.410075, 0.469478,
		0.622472, -0.553721, -0.553101,
		42.655472, 37.968296, 30.845909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699776, 38.729153, 31.039927>,  <42.219742, 38.355900, 31.233080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699776, 38.729153, 31.039927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723339, 38.448513, 30.755875>,  <42.737476, 38.280128, 30.585443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723339, 38.448513, 30.755875>,  <42.699776, 38.729153, 31.039927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723339, 38.448513, 30.755875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113562, 0.711456, -0.693495,
		0.991783, -0.039789, 0.121588,
		0.058910, -0.701604, -0.710128,
		42.741013, 38.238033, 30.542837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268398, 38.878223, 30.699648>,  <42.699776, 38.729153, 31.039927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268398, 38.878223, 30.699648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085175, 38.659416, 30.419376>,  <42.975243, 38.528130, 30.251213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085175, 38.659416, 30.419376>,  <43.268398, 38.878223, 30.699648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085175, 38.659416, 30.419376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002924, 0.787304, -0.616558,
		0.888919, -0.284466, -0.359029,
		-0.458055, -0.547020, -0.700682,
		42.947758, 38.495312, 30.209171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674870, 39.009037, 30.075323>,  <43.268398, 38.878223, 30.699648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674870, 39.009037, 30.075323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305470, 38.887863, 29.981194>,  <43.083828, 38.815159, 29.924715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305470, 38.887863, 29.981194>,  <43.674870, 39.009037, 30.075323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305470, 38.887863, 29.981194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071774, 0.739089, -0.669773,
		0.376825, -0.601645, -0.704291,
		-0.923500, -0.302937, -0.235324,
		43.028419, 38.796982, 29.910597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726345, 38.886768, 29.324722>,  <43.674870, 39.009037, 30.075323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726345, 38.886768, 29.324722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332653, 38.918434, 29.387999>,  <43.096439, 38.937435, 29.425964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332653, 38.918434, 29.387999>,  <43.726345, 38.886768, 29.324722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332653, 38.918434, 29.387999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088435, 0.554300, -0.827605,
		-0.153203, -0.828544, -0.538558,
		-0.984230, 0.079164, 0.158193,
		43.037384, 38.942184, 29.435457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406063, 38.631542, 28.685360>,  <43.726345, 38.886768, 29.324722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406063, 38.631542, 28.685360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172115, 38.877842, 28.896555>,  <43.031746, 39.025623, 29.023272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172115, 38.877842, 28.896555>,  <43.406063, 38.631542, 28.685360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172115, 38.877842, 28.896555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082696, 0.602275, -0.793993,
		-0.806898, -0.508048, -0.301335,
		-0.584873, 0.615753, 0.527988,
		42.996655, 39.062569, 29.054951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717773, 38.779716, 28.336164>,  <43.406063, 38.631542, 28.685360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717773, 38.779716, 28.336164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738750, 39.101784, 28.572454>,  <42.751339, 39.295025, 28.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738750, 39.101784, 28.572454>,  <42.717773, 38.779716, 28.336164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738750, 39.101784, 28.572454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366331, 0.565813, -0.738686,
		-0.929005, -0.177660, 0.324632,
		0.052446, 0.805166, 0.590726,
		42.754486, 39.343334, 28.749672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048332, 39.255909, 28.323193>,  <42.717773, 38.779716, 28.336164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048332, 39.255909, 28.323193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363792, 39.480564, 28.423262>,  <42.553070, 39.615356, 28.483303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363792, 39.480564, 28.423262>,  <42.048332, 39.255909, 28.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363792, 39.480564, 28.423262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261242, 0.674436, -0.690571,
		-0.556580, 0.479264, 0.678620,
		0.788652, 0.561642, 0.250173,
		42.600388, 39.649055, 28.498314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763088, 39.961395, 28.491899>,  <42.048332, 39.255909, 28.323193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763088, 39.961395, 28.491899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126358, 39.950954, 28.324785>,  <42.344318, 39.944691, 28.224516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126358, 39.950954, 28.324785>,  <41.763088, 39.961395, 28.491899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126358, 39.950954, 28.324785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322637, 0.592254, -0.738337,
		0.266707, 0.805329, 0.529446,
		0.908170, -0.026101, -0.417786,
		42.398808, 39.943123, 28.199450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917202, 40.631100, 28.442461>,  <41.763088, 39.961395, 28.491899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917202, 40.631100, 28.442461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115482, 40.420254, 28.166367>,  <42.234451, 40.293747, 28.000710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115482, 40.420254, 28.166367>,  <41.917202, 40.631100, 28.442461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115482, 40.420254, 28.166367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306822, 0.637216, -0.706977,
		0.812489, 0.562231, 0.154139,
		0.495704, -0.527117, -0.690236,
		42.264194, 40.262119, 27.959295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456650, 41.011738, 28.149597>,  <41.917202, 40.631100, 28.442461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456650, 41.011738, 28.149597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266182, 40.738480, 27.928123>,  <42.151901, 40.574524, 27.795238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266182, 40.738480, 27.928123>,  <42.456650, 41.011738, 28.149597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266182, 40.738480, 27.928123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376457, 0.727404, -0.573727,
		0.794694, -0.064754, -0.603546,
		-0.476173, -0.683147, -0.553687,
		42.123329, 40.533535, 27.762018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198990, 41.024036, 28.448559>,  <42.456650, 41.011738, 28.149597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198990, 41.024036, 28.448559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167709, 41.332966, 28.196402>,  <43.148941, 41.518326, 28.045107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167709, 41.332966, 28.196402>,  <43.198990, 41.024036, 28.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167709, 41.332966, 28.196402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391483, -0.557747, -0.731887,
		-0.916857, -0.304021, -0.258737,
		-0.078199, 0.772327, -0.630394,
		43.144249, 41.564663, 28.007284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301376, 40.613510, 27.785624>,  <43.198990, 41.024036, 28.448559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301376, 40.613510, 27.785624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320648, 41.004730, 27.704531>,  <43.332211, 41.239460, 27.655876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320648, 41.004730, 27.704531>,  <43.301376, 40.613510, 27.785624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320648, 41.004730, 27.704531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338610, 0.174953, 0.924518,
		0.939692, -0.113193, -0.322748,
		0.048184, 0.978048, -0.202731,
		43.335102, 41.298145, 27.643711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002285, 40.828083, 27.891996>,  <43.301376, 40.613510, 27.785624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002285, 40.828083, 27.891996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752007, 41.136555, 27.938972>,  <43.601841, 41.321636, 27.967157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752007, 41.136555, 27.938972>,  <44.002285, 40.828083, 27.891996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752007, 41.136555, 27.938972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505643, 0.286318, 0.813847,
		0.593995, 0.568603, -0.569088,
		-0.625696, 0.771176, 0.117439,
		43.564297, 41.367908, 27.974205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383385, 41.430302, 27.747681>,  <44.002285, 40.828083, 27.891996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383385, 41.430302, 27.747681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082500, 41.483658, 28.005793>,  <43.901970, 41.515671, 28.160660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082500, 41.483658, 28.005793>,  <44.383385, 41.430302, 27.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082500, 41.483658, 28.005793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658831, 0.136015, 0.739893,
		0.010926, 0.981686, -0.190193,
		-0.752212, 0.133389, 0.645279,
		43.856838, 41.523674, 28.199377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390686, 42.095791, 28.130913>,  <44.383385, 41.430302, 27.747681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390686, 42.095791, 28.130913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254765, 41.761097, 28.302683>,  <44.173210, 41.560280, 28.405745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254765, 41.761097, 28.302683>,  <44.390686, 42.095791, 28.130913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254765, 41.761097, 28.302683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697697, 0.081914, 0.711694,
		-0.630676, 0.541447, 0.555953,
		-0.339804, -0.836735, 0.429427,
		44.152824, 41.510075, 28.431511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217518, 42.151863, 28.968569>,  <44.390686, 42.095791, 28.130913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217518, 42.151863, 28.968569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087475, 42.366142, 29.280296>,  <44.009449, 42.494709, 29.467333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087475, 42.366142, 29.280296>,  <44.217518, 42.151863, 28.968569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087475, 42.366142, 29.280296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446615, -0.639420, 0.625841,
		0.833573, 0.551518, -0.031372,
		-0.325103, 0.535696, 0.779319,
		43.989944, 42.526852, 29.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719135, 42.484280, 29.400362>,  <44.217518, 42.151863, 28.968569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719135, 42.484280, 29.400362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409309, 42.416874, 29.644215>,  <44.223412, 42.376431, 29.790525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409309, 42.416874, 29.644215>,  <44.719135, 42.484280, 29.400362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409309, 42.416874, 29.644215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578414, -0.578680, 0.574949,
		0.255894, 0.797956, 0.545697,
		-0.774568, -0.168513, 0.609630,
		44.176941, 42.366322, 29.827103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974953, 42.622196, 30.193233>,  <44.719135, 42.484280, 29.400362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974953, 42.622196, 30.193233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647865, 42.392879, 30.172543>,  <44.451614, 42.255287, 30.160128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647865, 42.392879, 30.172543>,  <44.974953, 42.622196, 30.193233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647865, 42.392879, 30.172543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385694, -0.612396, 0.690081,
		-0.427297, 0.544339, 0.721881,
		-0.817715, -0.573295, -0.051727,
		44.402550, 42.220890, 30.157024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772263, 42.503723, 30.898743>,  <44.974953, 42.622196, 30.193233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772263, 42.503723, 30.898743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567905, 42.221931, 30.701687>,  <44.445290, 42.052856, 30.583454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567905, 42.221931, 30.701687>,  <44.772263, 42.503723, 30.898743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567905, 42.221931, 30.701687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202084, -0.655434, 0.727714,
		-0.835554, 0.272230, 0.477222,
		-0.510893, -0.704483, -0.492638,
		44.414639, 42.010586, 30.553896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346542, 42.071312, 31.514080>,  <44.772263, 42.503723, 30.898743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346542, 42.071312, 31.514080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363556, 41.857891, 31.176201>,  <44.373764, 41.729839, 30.973475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363556, 41.857891, 31.176201>,  <44.346542, 42.071312, 31.514080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363556, 41.857891, 31.176201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089946, -0.839983, 0.535106,
		-0.995038, -0.098735, 0.012267,
		0.042530, -0.533554, -0.844696,
		44.376316, 41.697826, 30.922792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758209, 41.535339, 31.491293>,  <44.346542, 42.071312, 31.514080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758209, 41.535339, 31.491293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070526, 41.425007, 31.267052>,  <44.257915, 41.358807, 31.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070526, 41.425007, 31.267052>,  <43.758209, 41.535339, 31.491293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070526, 41.425007, 31.267052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053752, -0.864287, 0.500118,
		-0.622471, -0.420623, -0.660005,
		0.780795, -0.275832, -0.560603,
		44.304764, 41.342258, 31.098871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675159, 40.791836, 31.385454>,  <43.758209, 41.535339, 31.491293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675159, 40.791836, 31.385454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055183, 40.832668, 31.267500>,  <44.283199, 40.857166, 31.196728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055183, 40.832668, 31.267500>,  <43.675159, 40.791836, 31.385454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055183, 40.832668, 31.267500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264271, -0.765729, 0.586362,
		-0.165948, -0.635011, -0.754468,
		0.950064, 0.102079, -0.294886,
		44.340202, 40.863293, 31.179033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879112, 40.206535, 31.155441>,  <43.675159, 40.791836, 31.385454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879112, 40.206535, 31.155441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232391, 40.378006, 31.231544>,  <44.444359, 40.480888, 31.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232391, 40.378006, 31.231544>,  <43.879112, 40.206535, 31.155441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232391, 40.378006, 31.231544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311261, -0.839202, 0.445934,
		0.350828, -0.334627, -0.874611,
		0.883196, 0.428679, 0.190259,
		44.497349, 40.506611, 31.288622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476238, 39.613686, 31.137321>,  <43.879112, 40.206535, 31.155441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476238, 39.613686, 31.137321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606236, 39.938858, 31.330618>,  <44.684235, 40.133961, 31.446596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606236, 39.938858, 31.330618>,  <44.476238, 39.613686, 31.137321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606236, 39.938858, 31.330618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512518, -0.580832, 0.632423,
		0.794799, 0.042137, -0.605408,
		0.324992, 0.812932, 0.483241,
		44.703732, 40.182739, 31.475590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180168, 39.542725, 31.240892>,  <44.476238, 39.613686, 31.137321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180168, 39.542725, 31.240892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065964, 39.792023, 31.532112>,  <44.997440, 39.941601, 31.706844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065964, 39.792023, 31.532112>,  <45.180168, 39.542725, 31.240892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065964, 39.792023, 31.532112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279123, -0.672659, 0.685288,
		0.916829, 0.398870, 0.018088,
		-0.285508, 0.623243, 0.728047,
		44.980312, 39.978996, 31.750526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714264, 39.470619, 31.720852>,  <45.180168, 39.542725, 31.240892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714264, 39.470619, 31.720852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379280, 39.608597, 31.890408>,  <45.178291, 39.691383, 31.992140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379280, 39.608597, 31.890408>,  <45.714264, 39.470619, 31.720852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379280, 39.608597, 31.890408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167209, -0.576709, 0.799655,
		0.520297, 0.740553, 0.425290,
		-0.837456, 0.344946, 0.423887,
		45.128044, 39.712082, 32.017574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922405, 39.712452, 32.346004>,  <45.714264, 39.470619, 31.720852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922405, 39.712452, 32.346004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530300, 39.659145, 32.404423>,  <45.295036, 39.627159, 32.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530300, 39.659145, 32.404423>,  <45.922405, 39.712452, 32.346004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530300, 39.659145, 32.404423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194340, -0.513522, 0.835779,
		-0.036385, 0.847663, 0.529285,
		-0.980259, -0.133271, 0.146050,
		45.236221, 39.619164, 32.448238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817451, 39.498077, 33.090065>,  <45.922405, 39.712452, 32.346004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817451, 39.498077, 33.090065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453625, 39.395802, 32.959038>,  <45.235329, 39.334435, 32.880421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453625, 39.395802, 32.959038>,  <45.817451, 39.498077, 33.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453625, 39.395802, 32.959038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075466, -0.673537, 0.735291,
		-0.408638, 0.693520, 0.593334,
		-0.909571, -0.255691, -0.327570,
		45.180752, 39.319096, 32.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454327, 39.384552, 33.701134>,  <45.817451, 39.498077, 33.090065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454327, 39.384552, 33.701134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274357, 39.203571, 33.393143>,  <45.166374, 39.094982, 33.208347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274357, 39.203571, 33.393143>,  <45.454327, 39.384552, 33.701134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274357, 39.203571, 33.393143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169638, -0.803173, 0.571084,
		-0.876809, 0.387560, 0.284612,
		-0.449921, -0.452450, -0.769974,
		45.139381, 39.067837, 33.162151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836803, 39.083263, 34.035370>,  <45.454327, 39.384552, 33.701134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836803, 39.083263, 34.035370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875481, 38.887482, 33.688709>,  <44.898689, 38.770012, 33.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875481, 38.887482, 33.688709>,  <44.836803, 39.083263, 34.035370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875481, 38.887482, 33.688709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030121, -0.868894, 0.494081,
		-0.994858, -0.073880, -0.069275,
		0.096696, -0.489454, -0.866651,
		44.904488, 38.740646, 33.428715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442932, 38.527378, 34.180336>,  <44.836803, 39.083263, 34.035370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442932, 38.527378, 34.180336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676979, 38.430988, 33.870609>,  <44.817406, 38.373154, 33.684772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676979, 38.430988, 33.870609>,  <44.442932, 38.527378, 34.180336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676979, 38.430988, 33.870609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330342, -0.801196, 0.498959,
		-0.740614, -0.547740, -0.389193,
		0.585119, -0.240969, -0.774318,
		44.852516, 38.358696, 33.638313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376961, 37.761795, 34.145828>,  <44.442932, 38.527378, 34.180336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376961, 37.761795, 34.145828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720200, 37.870441, 33.971519>,  <44.926144, 37.935631, 33.866936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720200, 37.870441, 33.971519>,  <44.376961, 37.761795, 34.145828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720200, 37.870441, 33.971519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427168, -0.848543, 0.312253,
		-0.284955, -0.454089, -0.844158,
		0.858095, 0.271619, -0.435769,
		44.977627, 37.951927, 33.840790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537891, 37.212643, 33.723301>,  <44.376961, 37.761795, 34.145828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537891, 37.212643, 33.723301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863468, 37.426991, 33.813053>,  <45.058815, 37.555599, 33.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863468, 37.426991, 33.813053>,  <44.537891, 37.212643, 33.723301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863468, 37.426991, 33.813053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464106, -0.832095, 0.303685,
		0.349442, -0.143044, -0.925974,
		0.813938, 0.535871, 0.224382,
		45.107651, 37.587753, 33.880367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067070, 36.901924, 33.390312>,  <44.537891, 37.212643, 33.723301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067070, 36.901924, 33.390312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277679, 37.111134, 33.658409>,  <45.404045, 37.236660, 33.819267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277679, 37.111134, 33.658409>,  <45.067070, 36.901924, 33.390312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277679, 37.111134, 33.658409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405084, -0.847461, 0.343097,
		0.747450, 0.090855, -0.658076,
		0.526522, 0.523024, 0.670239,
		45.435635, 37.268040, 33.859482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706703, 36.565086, 33.444389>,  <45.067070, 36.901924, 33.390312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706703, 36.565086, 33.444389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716602, 36.782806, 33.779800>,  <45.722542, 36.913437, 33.981049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716602, 36.782806, 33.779800>,  <45.706703, 36.565086, 33.444389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716602, 36.782806, 33.779800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429111, -0.763366, 0.482842,
		0.902913, 0.347870, -0.252458,
		0.024751, 0.544297, 0.838527,
		45.724030, 36.946095, 34.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279465, 36.300308, 33.711597>,  <45.706703, 36.565086, 33.444389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279465, 36.300308, 33.711597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107796, 36.483532, 34.022980>,  <46.004795, 36.593464, 34.209808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107796, 36.483532, 34.022980>,  <46.279465, 36.300308, 33.711597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107796, 36.483532, 34.022980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338571, -0.717437, 0.608814,
		0.837363, 0.524851, 0.152822,
		-0.429177, 0.458057, 0.778454,
		45.979042, 36.620949, 34.256516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783215, 36.667141, 34.183197>,  <46.279465, 36.300308, 33.711597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783215, 36.667141, 34.183197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452049, 36.471691, 34.293331>,  <46.253349, 36.354420, 34.359413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452049, 36.471691, 34.293331>,  <46.783215, 36.667141, 34.183197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452049, 36.471691, 34.293331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560859, -0.721926, 0.405291,
		0.000736, 0.489969, 0.871740,
		-0.827911, -0.488625, 0.275335,
		46.203674, 36.325104, 34.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683964, 36.507133, 34.987740>,  <46.783215, 36.667141, 34.183197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683964, 36.507133, 34.987740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524193, 36.204872, 34.780106>,  <46.428329, 36.023514, 34.655525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524193, 36.204872, 34.780106>,  <46.683964, 36.507133, 34.987740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.524193, 36.204872, 34.780106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582197, -0.646459, 0.493090,
		-0.708170, -0.105254, 0.698153,
		-0.399427, -0.755654, -0.519081,
		46.404366, 35.978176, 34.624382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497578, 36.086555, 35.489468>,  <46.683964, 36.507133, 34.987740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497578, 36.086555, 35.489468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531536, 35.881641, 35.147625>,  <46.551910, 35.758694, 34.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531536, 35.881641, 35.147625>,  <46.497578, 36.086555, 35.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531536, 35.881641, 35.147625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770634, -0.509928, 0.382227,
		-0.631598, -0.691040, 0.351493,
		0.084898, -0.512286, -0.854608,
		46.557007, 35.727955, 34.891243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714642, 35.349155, 35.670326>,  <46.497578, 36.086555, 35.489468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714642, 35.349155, 35.670326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819950, 35.439407, 35.295139>,  <46.883133, 35.493557, 35.070026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819950, 35.439407, 35.295139>,  <46.714642, 35.349155, 35.670326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819950, 35.439407, 35.295139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951454, -0.221425, 0.213789,
		-0.159453, -0.948717, -0.272968,
		0.263267, 0.225627, -0.937967,
		46.898930, 35.507095, 35.013748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166065, 35.006504, 35.570827>,  <46.714642, 35.349155, 35.670326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166065, 35.006504, 35.570827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226704, 35.202282, 35.227325>,  <47.263084, 35.319748, 35.021225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226704, 35.202282, 35.227325>,  <47.166065, 35.006504, 35.570827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226704, 35.202282, 35.227325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988124, -0.097096, 0.119091,
		-0.025095, -0.866614, -0.498349,
		0.151593, 0.489442, -0.858759,
		47.272182, 35.349113, 34.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548241, 34.516872, 35.028263>,  <47.166065, 35.006504, 35.570827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548241, 34.516872, 35.028263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616802, 34.901512, 34.942524>,  <47.657940, 35.132298, 34.891079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616802, 34.901512, 34.942524>,  <47.548241, 34.516872, 35.028263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616802, 34.901512, 34.942524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978088, -0.192187, -0.080056,
		-0.118177, -0.195931, -0.973471,
		0.171403, 0.961600, -0.214350,
		47.668224, 35.189991, 34.878220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.901047, 34.324226, 46.656361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606674, 34.525951, 46.837059>,  <38.430050, 34.646988, 46.945477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606674, 34.525951, 46.837059>,  <38.901047, 34.324226, 46.656361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606674, 34.525951, 46.837059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295235, 0.361415, -0.884429,
		-0.609296, -0.784251, -0.117086,
		-0.735931, 0.504311, 0.451747,
		38.385895, 34.677246, 46.972584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300262, 34.195034, 46.281292>,  <38.901047, 34.324226, 46.656361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300262, 34.195034, 46.281292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244583, 34.539669, 46.476551>,  <38.211174, 34.746452, 46.593704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244583, 34.539669, 46.476551>,  <38.300262, 34.195034, 46.281292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244583, 34.539669, 46.476551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377448, 0.409567, -0.830535,
		-0.915509, -0.299860, 0.268194,
		-0.139200, 0.861591, 0.488143,
		38.202824, 34.798145, 46.622993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762936, 34.473583, 45.866497>,  <38.300262, 34.195034, 46.281292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762936, 34.473583, 45.866497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876698, 34.784645, 46.090767>,  <37.944954, 34.971283, 46.225330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876698, 34.784645, 46.090767>,  <37.762936, 34.473583, 45.866497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876698, 34.784645, 46.090767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360896, 0.628654, -0.688875,
		-0.888182, -0.006426, 0.459447,
		0.284406, 0.777659, 0.560678,
		37.962021, 35.017944, 46.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151363, 34.895882, 45.967670>,  <37.762936, 34.473583, 45.866497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151363, 34.895882, 45.967670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467979, 35.133362, 46.025616>,  <37.657948, 35.275848, 46.060383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467979, 35.133362, 46.025616>,  <37.151363, 34.895882, 45.967670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467979, 35.133362, 46.025616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339578, 0.624377, -0.703449,
		-0.508089, 0.507614, 0.695826,
		0.791538, 0.593702, 0.144865,
		37.705441, 35.311474, 46.069077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891224, 35.602985, 45.847694>,  <37.151363, 34.895882, 45.967670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891224, 35.602985, 45.847694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288403, 35.617889, 45.802685>,  <37.526711, 35.626831, 45.775681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288403, 35.617889, 45.802685>,  <36.891224, 35.602985, 45.847694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288403, 35.617889, 45.802685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115139, 0.528659, -0.840989,
		0.028152, 0.848016, 0.529222,
		0.992950, 0.037258, -0.112522,
		37.586288, 35.629066, 45.768929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981586, 36.291180, 45.629272>,  <36.891224, 35.602985, 45.847694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981586, 36.291180, 45.629272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.321896, 36.096485, 45.550014>,  <37.526081, 35.979668, 45.502460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.321896, 36.096485, 45.550014>,  <36.981586, 36.291180, 45.629272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321896, 36.096485, 45.550014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089505, 0.505743, -0.858029,
		0.517848, 0.712256, 0.473840,
		0.850777, -0.486740, -0.198147,
		37.577129, 35.950462, 45.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526863, 36.786575, 45.430370>,  <36.981586, 36.291180, 45.629272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526863, 36.786575, 45.430370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608246, 36.431892, 45.264305>,  <37.657074, 36.219082, 45.164665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608246, 36.431892, 45.264305>,  <37.526863, 36.786575, 45.430370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608246, 36.431892, 45.264305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031930, 0.417798, -0.907979,
		0.978564, 0.197988, 0.056690,
		0.203454, -0.886705, -0.415164,
		37.669281, 36.165882, 45.139755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977077, 36.938259, 44.875561>,  <37.526863, 36.786575, 45.430370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977077, 36.938259, 44.875561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864586, 36.564445, 44.788338>,  <37.797092, 36.340157, 44.736004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864586, 36.564445, 44.788338>,  <37.977077, 36.938259, 44.875561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864586, 36.564445, 44.788338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014378, 0.223095, -0.974691,
		0.959533, -0.277247, -0.049304,
		-0.281229, -0.934539, -0.218053,
		37.780216, 36.284084, 44.722923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217625, 36.840153, 44.251469>,  <37.977077, 36.938259, 44.875561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217625, 36.840153, 44.251469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948120, 36.544575, 44.251846>,  <37.786419, 36.367226, 44.252071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948120, 36.544575, 44.251846>,  <38.217625, 36.840153, 44.251469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948120, 36.544575, 44.251846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044344, 0.039158, -0.998249,
		0.737617, -0.672624, -0.059152,
		-0.673762, -0.738948, 0.000943,
		37.745991, 36.322891, 44.252129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540981, 36.282982, 43.872349>,  <38.217625, 36.840153, 44.251469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540981, 36.282982, 43.872349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144444, 36.240730, 43.841141>,  <37.906521, 36.215382, 43.822414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144444, 36.240730, 43.841141>,  <38.540981, 36.282982, 43.872349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144444, 36.240730, 43.841141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079545, -0.010258, -0.996778,
		0.104487, -0.994353, 0.018571,
		-0.991340, -0.105628, -0.078024,
		37.847042, 36.209042, 43.817734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422722, 35.918900, 43.228069>,  <38.540981, 36.282982, 43.872349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422722, 35.918900, 43.228069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059055, 36.064850, 43.308353>,  <37.840855, 36.152420, 43.356522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059055, 36.064850, 43.308353>,  <38.422722, 35.918900, 43.228069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059055, 36.064850, 43.308353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210108, 0.014202, -0.977575,
		-0.359540, -0.930950, 0.063751,
		-0.909168, 0.364872, 0.200706,
		37.786304, 36.174313, 43.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042988, 35.573807, 42.870293>,  <38.422722, 35.918900, 43.228069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042988, 35.573807, 42.870293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815788, 35.899117, 42.920830>,  <37.679470, 36.094303, 42.951153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815788, 35.899117, 42.920830>,  <38.042988, 35.573807, 42.870293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815788, 35.899117, 42.920830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169938, 0.034318, -0.984857,
		-0.805296, -0.580866, 0.118714,
		-0.567996, 0.813276, 0.126347,
		37.645390, 36.143101, 42.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327187, 35.486122, 42.530064>,  <38.042988, 35.573807, 42.870293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327187, 35.486122, 42.530064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392326, 35.879028, 42.567249>,  <37.431408, 36.114773, 42.589561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392326, 35.879028, 42.567249>,  <37.327187, 35.486122, 42.530064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392326, 35.879028, 42.567249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398706, 0.151701, -0.904445,
		-0.902505, 0.110219, 0.416338,
		0.162846, 0.982262, 0.092966,
		37.441181, 36.173706, 42.595139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697319, 35.873249, 42.178078>,  <37.327187, 35.486122, 42.530064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697319, 35.873249, 42.178078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986599, 36.146843, 42.216335>,  <37.160168, 36.311001, 42.239292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986599, 36.146843, 42.216335>,  <36.697319, 35.873249, 42.178078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986599, 36.146843, 42.216335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292171, 0.428482, -0.855008,
		-0.625798, 0.590393, 0.509718,
		0.723196, 0.683988, 0.095647,
		37.203556, 36.352039, 42.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372486, 36.454796, 42.043743>,  <36.697319, 35.873249, 42.178078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372486, 36.454796, 42.043743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757477, 36.551205, 41.993874>,  <36.988472, 36.609051, 41.963951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757477, 36.551205, 41.993874>,  <36.372486, 36.454796, 42.043743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757477, 36.551205, 41.993874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199051, 0.314829, -0.928042,
		-0.184433, 0.918035, 0.350993,
		0.962478, 0.241026, -0.124671,
		37.046219, 36.623512, 41.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436028, 37.038494, 41.420094>,  <36.372486, 36.454796, 42.043743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436028, 37.038494, 41.420094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800732, 36.878544, 41.457596>,  <37.019554, 36.782574, 41.480099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800732, 36.878544, 41.457596>,  <36.436028, 37.038494, 41.420094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800732, 36.878544, 41.457596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074858, -0.062654, -0.995224,
		0.403841, 0.914425, -0.027191,
		0.911761, -0.399877, 0.093754,
		37.074261, 36.758579, 41.485722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847095, 37.338932, 40.939285>,  <36.436028, 37.038494, 41.420094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847095, 37.338932, 40.939285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062950, 37.010708, 41.014622>,  <37.192463, 36.813774, 41.059822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062950, 37.010708, 41.014622>,  <36.847095, 37.338932, 40.939285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062950, 37.010708, 41.014622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197966, -0.093762, -0.975714,
		0.818293, 0.563815, 0.111847,
		0.539635, -0.820562, 0.188341,
		37.224842, 36.764538, 41.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543129, 37.458763, 40.678574>,  <36.847095, 37.338932, 40.939285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543129, 37.458763, 40.678574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512779, 37.061413, 40.713070>,  <37.494568, 36.823002, 40.733768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512779, 37.061413, 40.713070>,  <37.543129, 37.458763, 40.678574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512779, 37.061413, 40.713070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241531, -0.102229, -0.964993,
		0.967422, -0.052388, 0.247689,
		-0.075875, -0.993381, 0.086245,
		37.490017, 36.763397, 40.738945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135406, 37.194321, 40.384190>,  <37.543129, 37.458763, 40.678574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135406, 37.194321, 40.384190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889442, 36.878956, 40.390999>,  <37.741863, 36.689735, 40.395084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889442, 36.878956, 40.390999>,  <38.135406, 37.194321, 40.384190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889442, 36.878956, 40.390999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325854, -0.273687, -0.904939,
		0.718127, -0.550906, 0.425201,
		-0.614908, -0.788414, 0.017027,
		37.704971, 36.642433, 40.396107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559757, 36.665852, 40.188297>,  <38.135406, 37.194321, 40.384190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559757, 36.665852, 40.188297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182102, 36.542957, 40.140625>,  <37.955509, 36.469219, 40.112022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182102, 36.542957, 40.140625>,  <38.559757, 36.665852, 40.188297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182102, 36.542957, 40.140625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234820, -0.373463, -0.897433,
		0.231216, -0.875288, 0.424747,
		-0.944139, -0.307240, -0.119184,
		37.898861, 36.450787, 40.104870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537197, 36.036060, 39.819447>,  <38.559757, 36.665852, 40.188297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537197, 36.036060, 39.819447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171909, 36.181679, 39.746243>,  <37.952736, 36.269051, 39.702320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171909, 36.181679, 39.746243>,  <38.537197, 36.036060, 39.819447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171909, 36.181679, 39.746243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147742, -0.122735, -0.981381,
		-0.379732, -0.923258, 0.058299,
		-0.913222, 0.364049, -0.183011,
		37.897942, 36.290894, 39.691338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095257, 35.554745, 39.355312>,  <38.537197, 36.036060, 39.819447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095257, 35.554745, 39.355312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995525, 35.941196, 39.328709>,  <37.935684, 36.173069, 39.312744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995525, 35.941196, 39.328709>,  <38.095257, 35.554745, 39.355312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995525, 35.941196, 39.328709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277750, 0.005545, -0.960637,
		-0.927733, -0.257991, -0.269726,
		-0.249331, 0.966131, -0.066513,
		37.920727, 36.231037, 39.308754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625965, 35.488575, 38.694649>,  <38.095257, 35.554745, 39.355312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625965, 35.488575, 38.694649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998852, 35.572994, 38.577053>,  <39.222584, 35.623646, 38.506496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998852, 35.572994, 38.577053>,  <38.625965, 35.488575, 38.694649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998852, 35.572994, 38.577053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358677, -0.430599, 0.828212,
		0.048201, -0.877521, -0.477109,
		0.932216, 0.211049, -0.293992,
		39.278515, 35.636311, 38.488857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003101, 34.846546, 38.590992>,  <38.625965, 35.488575, 38.694649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003101, 34.846546, 38.590992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278645, 35.128338, 38.659336>,  <39.443970, 35.297413, 38.700344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278645, 35.128338, 38.659336>,  <39.003101, 34.846546, 38.590992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278645, 35.128338, 38.659336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361987, -0.538508, 0.760904,
		0.628049, -0.462302, -0.625965,
		0.688854, 0.704475, 0.170862,
		39.485302, 35.339680, 38.710594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621376, 34.510891, 38.785973>,  <39.003101, 34.846546, 38.590992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621376, 34.510891, 38.785973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668449, 34.881771, 38.928207>,  <39.696693, 35.104301, 39.013550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668449, 34.881771, 38.928207>,  <39.621376, 34.510891, 38.785973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668449, 34.881771, 38.928207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358138, -0.373609, 0.855660,
		0.926222, 0.026649, -0.376036,
		0.117688, 0.927203, 0.355589,
		39.703754, 35.159931, 39.034885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280285, 34.561756, 38.984764>,  <39.621376, 34.510891, 38.785973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280285, 34.561756, 38.984764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102703, 34.856602, 39.188553>,  <39.996155, 35.033508, 39.310825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102703, 34.856602, 39.188553>,  <40.280285, 34.561756, 38.984764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102703, 34.856602, 39.188553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473245, -0.289924, 0.831856,
		0.760882, 0.610413, -0.220122,
		-0.443957, 0.737116, 0.509473,
		39.969517, 35.077736, 39.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796108, 34.870800, 39.379589>,  <40.280285, 34.561756, 38.984764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796108, 34.870800, 39.379589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453163, 34.987438, 39.549248>,  <40.247395, 35.057419, 39.651043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453163, 34.987438, 39.549248>,  <40.796108, 34.870800, 39.379589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453163, 34.987438, 39.549248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322433, -0.338050, 0.884172,
		0.401199, 0.894816, 0.195814,
		-0.857366, 0.291592, 0.424143,
		40.195953, 35.074917, 39.676491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946014, 35.323406, 40.012253>,  <40.796108, 34.870800, 39.379589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946014, 35.323406, 40.012253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566017, 35.217224, 40.078037>,  <40.338020, 35.153515, 40.117508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566017, 35.217224, 40.078037>,  <40.946014, 35.323406, 40.012253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566017, 35.217224, 40.078037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160805, 0.035602, 0.986344,
		-0.267685, 0.963466, 0.008865,
		-0.949993, -0.265455, 0.164461,
		40.281021, 35.137589, 40.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786434, 35.501774, 40.682243>,  <40.946014, 35.323406, 40.012253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786434, 35.501774, 40.682243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490868, 35.237980, 40.626987>,  <40.313530, 35.079704, 40.593834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490868, 35.237980, 40.626987>,  <40.786434, 35.501774, 40.682243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490868, 35.237980, 40.626987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066915, -0.132181, 0.988964,
		-0.670468, 0.740004, 0.053541,
		-0.738915, -0.659487, -0.138140,
		40.269192, 35.040134, 40.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254787, 35.725323, 41.142654>,  <40.786434, 35.501774, 40.682243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254787, 35.725323, 41.142654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164276, 35.346741, 41.050541>,  <40.109970, 35.119591, 40.995274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164276, 35.346741, 41.050541>,  <40.254787, 35.725323, 41.142654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164276, 35.346741, 41.050541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079046, -0.217790, 0.972790,
		-0.970850, 0.238326, -0.025532,
		-0.226281, -0.946450, -0.230280,
		40.096394, 35.062805, 40.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621590, 35.464146, 41.449936>,  <40.254787, 35.725323, 41.142654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621590, 35.464146, 41.449936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886414, 35.170994, 41.387230>,  <40.045307, 34.995102, 41.349606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886414, 35.170994, 41.387230>,  <39.621590, 35.464146, 41.449936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886414, 35.170994, 41.387230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103851, -0.296866, 0.949255,
		-0.742225, -0.612179, -0.272651,
		0.662055, -0.732876, -0.156766,
		40.085030, 34.951130, 41.340199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358868, 35.068977, 41.936493>,  <39.621590, 35.464146, 41.449936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358868, 35.068977, 41.936493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701035, 34.897297, 41.820530>,  <39.906334, 34.794289, 41.750954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701035, 34.897297, 41.820530>,  <39.358868, 35.068977, 41.936493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701035, 34.897297, 41.820530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093748, -0.422182, 0.901651,
		-0.509390, -0.798464, -0.320903,
		0.855414, -0.429207, -0.289910,
		39.957661, 34.768536, 41.733559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289177, 34.307690, 42.062977>,  <39.358868, 35.068977, 41.936493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289177, 34.307690, 42.062977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.676048, 34.408314, 42.048656>,  <39.908173, 34.468689, 42.040066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.676048, 34.408314, 42.048656>,  <39.289177, 34.307690, 42.062977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676048, 34.408314, 42.048656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162672, -0.504792, 0.847775,
		0.195195, -0.825774, -0.529146,
		0.967180, 0.251559, -0.035797,
		39.966202, 34.483780, 42.037918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662800, 33.658142, 42.163612>,  <39.289177, 34.307690, 42.062977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662800, 33.658142, 42.163612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914997, 33.958820, 42.240990>,  <40.066315, 34.139229, 42.287418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914997, 33.958820, 42.240990>,  <39.662800, 33.658142, 42.163612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914997, 33.958820, 42.240990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400000, -0.528249, 0.748968,
		0.665187, -0.394843, -0.633739,
		0.630497, 0.751699, 0.193448,
		40.104145, 34.184330, 42.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228790, 33.238384, 42.470409>,  <39.662800, 33.658142, 42.163612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228790, 33.238384, 42.470409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276035, 33.626476, 42.554977>,  <40.304382, 33.859333, 42.605721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276035, 33.626476, 42.554977>,  <40.228790, 33.238384, 42.470409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276035, 33.626476, 42.554977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285439, -0.237102, 0.928605,
		0.951091, -0.049330, -0.304946,
		0.118111, 0.970231, 0.211425,
		40.311470, 33.917545, 42.618404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865486, 33.234158, 42.816341>,  <40.228790, 33.238384, 42.470409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865486, 33.234158, 42.816341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658039, 33.566570, 42.896770>,  <40.533573, 33.766018, 42.945030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658039, 33.566570, 42.896770>,  <40.865486, 33.234158, 42.816341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658039, 33.566570, 42.896770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162857, -0.134857, 0.977390,
		0.839355, 0.539636, -0.065399,
		-0.518615, 0.831028, 0.201076,
		40.502453, 33.815880, 42.957092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147327, 33.528267, 43.375610>,  <40.865486, 33.234158, 42.816341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147327, 33.528267, 43.375610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815697, 33.750744, 43.398525>,  <40.616718, 33.884232, 43.412273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815697, 33.750744, 43.398525>,  <41.147327, 33.528267, 43.375610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815697, 33.750744, 43.398525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148217, 0.119826, 0.981669,
		0.539134, 0.822368, -0.181782,
		-0.829075, 0.556195, 0.057287,
		40.566975, 33.917603, 43.415710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283821, 33.941071, 43.864380>,  <41.147327, 33.528267, 43.375610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283821, 33.941071, 43.864380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884453, 33.962795, 43.870201>,  <40.644833, 33.975830, 43.873695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884453, 33.962795, 43.870201>,  <41.283821, 33.941071, 43.864380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884453, 33.962795, 43.870201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014705, 0.002367, 0.999889,
		0.054274, 0.998521, -0.003162,
		-0.998418, 0.054314, 0.014555,
		40.584927, 33.979088, 43.874569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211620, 34.180355, 44.481594>,  <41.283821, 33.941071, 43.864380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211620, 34.180355, 44.481594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834126, 34.072239, 44.405384>,  <40.607628, 34.007370, 44.359657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834126, 34.072239, 44.405384>,  <41.211620, 34.180355, 44.481594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834126, 34.072239, 44.405384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207309, 0.034706, 0.977660,
		-0.257644, 0.962152, -0.088787,
		-0.943739, -0.270295, -0.190521,
		40.551003, 33.991150, 44.348228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621696, 34.686634, 44.851059>,  <41.211620, 34.180355, 44.481594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621696, 34.686634, 44.851059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483425, 34.317089, 44.785339>,  <40.400463, 34.095364, 44.745907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483425, 34.317089, 44.785339>,  <40.621696, 34.686634, 44.851059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483425, 34.317089, 44.785339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111650, -0.133355, 0.984759,
		-0.931688, 0.358752, -0.057051,
		-0.345676, -0.923858, -0.164300,
		40.379723, 34.039932, 44.736050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.798538, 34.700920, 45.251892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953888, 34.345516, 45.154144>,  <40.047100, 34.132275, 45.095493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953888, 34.345516, 45.154144>,  <39.798538, 34.700920, 45.251892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953888, 34.345516, 45.154144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143910, -0.203453, 0.968451,
		-0.910194, -0.411292, 0.048849,
		0.388378, -0.888507, -0.244371,
		40.070400, 34.078964, 45.080833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414898, 34.295143, 45.731228>,  <39.798538, 34.700920, 45.251892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414898, 34.295143, 45.731228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726841, 34.079327, 45.604279>,  <39.914005, 33.949837, 45.528107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726841, 34.079327, 45.604279>,  <39.414898, 34.295143, 45.731228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726841, 34.079327, 45.604279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169508, -0.306056, 0.936801,
		-0.602575, -0.784366, -0.147223,
		0.779853, -0.539537, -0.317378,
		39.960796, 33.917465, 45.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312523, 33.635880, 46.019745>,  <39.414898, 34.295143, 45.731228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312523, 33.635880, 46.019745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699612, 33.696312, 45.939064>,  <39.931866, 33.732571, 45.890656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699612, 33.696312, 45.939064>,  <39.312523, 33.635880, 46.019745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699612, 33.696312, 45.939064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244346, -0.366575, 0.897729,
		0.061695, -0.918039, -0.391661,
		0.967723, 0.151086, -0.201704,
		39.989929, 33.741638, 45.878551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607632, 33.043095, 46.173954>,  <39.312523, 33.635880, 46.019745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607632, 33.043095, 46.173954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893734, 33.322605, 46.178478>,  <40.065395, 33.490311, 46.181194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893734, 33.322605, 46.178478>,  <39.607632, 33.043095, 46.173954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893734, 33.322605, 46.178478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254556, -0.275565, 0.926966,
		0.650856, -0.660136, -0.374976,
		0.715253, 0.698774, 0.011312,
		40.108311, 33.532238, 46.181873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231022, 32.738682, 46.326866>,  <39.607632, 33.043095, 46.173954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231022, 32.738682, 46.326866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330521, 33.115463, 46.417068>,  <40.390221, 33.341530, 46.471191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330521, 33.115463, 46.417068>,  <40.231022, 32.738682, 46.326866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330521, 33.115463, 46.417068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280850, -0.292969, 0.913943,
		0.926957, -0.164006, -0.337422,
		0.248746, 0.941951, 0.225509,
		40.405144, 33.398048, 46.484722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764172, 32.685577, 46.713909>,  <40.231022, 32.738682, 46.326866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764172, 32.685577, 46.713909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643909, 33.050957, 46.823616>,  <40.571751, 33.270184, 46.889439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643909, 33.050957, 46.823616>,  <40.764172, 32.685577, 46.713909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643909, 33.050957, 46.823616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182721, -0.227078, 0.956582,
		0.936065, 0.337718, -0.098633,
		-0.300657, 0.913445, 0.274268,
		40.553711, 33.324989, 46.905895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198978, 32.848118, 47.092762>,  <40.764172, 32.685577, 46.713909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198978, 32.848118, 47.092762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907703, 33.095600, 47.210705>,  <40.732937, 33.244091, 47.281471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907703, 33.095600, 47.210705>,  <41.198978, 32.848118, 47.092762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907703, 33.095600, 47.210705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183521, -0.238487, 0.953648,
		0.660349, 0.748549, 0.060118,
		-0.728189, 0.618707, 0.294859,
		40.689247, 33.281212, 47.299164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539753, 33.228127, 47.553772>,  <41.198978, 32.848118, 47.092762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539753, 33.228127, 47.553772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156368, 33.299133, 47.643066>,  <40.926338, 33.341740, 47.696644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156368, 33.299133, 47.643066>,  <41.539753, 33.228127, 47.553772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156368, 33.299133, 47.643066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192328, -0.175699, 0.965474,
		0.210613, 0.968306, 0.134259,
		-0.958463, 0.177520, 0.223237,
		40.868828, 33.352390, 47.710037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544060, 33.736858, 48.086231>,  <41.539753, 33.228127, 47.553772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544060, 33.736858, 48.086231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186966, 33.557564, 48.104633>,  <40.972710, 33.449986, 48.115677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186966, 33.557564, 48.104633>,  <41.544060, 33.736858, 48.086231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186966, 33.557564, 48.104633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065212, -0.027492, 0.997493,
		-0.445847, 0.893493, 0.053774,
		-0.892731, -0.448235, 0.046009,
		40.919147, 33.423092, 48.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103905, 34.150848, 48.562237>,  <41.544060, 33.736858, 48.086231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103905, 34.150848, 48.562237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968803, 33.775349, 48.534916>,  <40.887741, 33.550049, 48.518524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968803, 33.775349, 48.534916>,  <41.103905, 34.150848, 48.562237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968803, 33.775349, 48.534916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010693, -0.076385, 0.997021,
		-0.941174, 0.336016, 0.035837,
		-0.337752, -0.938754, -0.068299,
		40.867477, 33.493721, 48.514427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583496, 34.035477, 49.095745>,  <41.103905, 34.150848, 48.562237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583496, 34.035477, 49.095745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688190, 33.659046, 49.010078>,  <40.751007, 33.433189, 48.958679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688190, 33.659046, 49.010078>,  <40.583496, 34.035477, 49.095745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688190, 33.659046, 49.010078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002145, -0.222470, 0.974937,
		-0.965136, -0.254719, -0.060247,
		0.261739, -0.941077, -0.214168,
		40.766712, 33.376724, 48.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222389, 33.674629, 49.563541>,  <40.583496, 34.035477, 49.095745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222389, 33.674629, 49.563541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501717, 33.406658, 49.462700>,  <40.669312, 33.245876, 49.402195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501717, 33.406658, 49.462700>,  <40.222389, 33.674629, 49.563541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501717, 33.406658, 49.462700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022114, -0.372230, 0.927877,
		-0.715450, -0.642375, -0.274748,
		0.698314, -0.669925, -0.252106,
		40.711212, 33.205681, 49.387070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907799, 33.025913, 49.750824>,  <40.222389, 33.674629, 49.563541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907799, 33.025913, 49.750824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303326, 32.970531, 49.728630>,  <40.540642, 32.937302, 49.715313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303326, 32.970531, 49.728630>,  <39.907799, 33.025913, 49.750824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303326, 32.970531, 49.728630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046871, -0.641581, 0.765622,
		-0.141598, -0.754457, -0.640893,
		0.988814, -0.138449, -0.055484,
		40.599968, 32.928997, 49.711983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016399, 32.367367, 49.789772>,  <39.907799, 33.025913, 49.750824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016399, 32.367367, 49.789772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380016, 32.505501, 49.883053>,  <40.598186, 32.588383, 49.939022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380016, 32.505501, 49.883053>,  <40.016399, 32.367367, 49.789772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380016, 32.505501, 49.883053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080287, -0.694304, 0.715189,
		0.408897, -0.631414, -0.658878,
		0.909042, 0.345338, 0.233204,
		40.652729, 32.609100, 49.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395885, 31.833759, 49.898605>,  <40.016399, 32.367367, 49.789772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395885, 31.833759, 49.898605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656567, 32.071411, 50.087196>,  <40.812977, 32.214001, 50.200352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656567, 32.071411, 50.087196>,  <40.395885, 31.833759, 49.898605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656567, 32.071411, 50.087196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148219, -0.709390, 0.689055,
		0.743851, -0.379177, -0.550373,
		0.651703, 0.594130, 0.471480,
		40.852077, 32.249649, 50.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925243, 31.378744, 50.075603>,  <40.395885, 31.833759, 49.898605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925243, 31.378744, 50.075603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940224, 31.710453, 50.298637>,  <40.949211, 31.909479, 50.432457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940224, 31.710453, 50.298637>,  <40.925243, 31.378744, 50.075603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940224, 31.710453, 50.298637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223939, -0.550751, 0.804068,
		0.973884, 0.094755, -0.206331,
		0.037447, 0.829274, 0.557587,
		40.951458, 31.959234, 50.465912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442024, 31.304560, 50.484840>,  <40.925243, 31.378744, 50.075603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442024, 31.304560, 50.484840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226074, 31.585445, 50.670498>,  <41.096504, 31.753977, 50.781895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226074, 31.585445, 50.670498>,  <41.442024, 31.304560, 50.484840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226074, 31.585445, 50.670498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186875, -0.437658, 0.879507,
		0.820742, 0.561558, 0.105052,
		-0.539871, 0.702216, 0.464146,
		41.064114, 31.796110, 50.809742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915295, 31.524101, 51.007256>,  <41.442024, 31.304560, 50.484840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915295, 31.524101, 51.007256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536091, 31.609499, 51.101654>,  <41.308567, 31.660738, 51.158291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536091, 31.609499, 51.101654>,  <41.915295, 31.524101, 51.007256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536091, 31.609499, 51.101654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154438, -0.339746, 0.927751,
		0.278245, 0.915966, 0.289112,
		-0.948013, 0.213492, 0.235992,
		41.251686, 31.673546, 51.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859425, 31.384073, 51.736122>,  <41.915295, 31.524101, 51.007256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859425, 31.384073, 51.736122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468475, 31.444235, 51.676640>,  <41.233906, 31.480331, 51.640949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468475, 31.444235, 51.676640>,  <41.859425, 31.384073, 51.736122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468475, 31.444235, 51.676640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197116, -0.392794, 0.898253,
		0.076688, 0.907244, 0.413554,
		-0.977376, 0.150403, -0.148710,
		41.175262, 31.489355, 51.632027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664108, 31.596861, 52.376118>,  <41.859425, 31.384073, 51.736122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664108, 31.596861, 52.376118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354549, 31.452839, 52.167717>,  <41.168816, 31.366426, 52.042675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354549, 31.452839, 52.167717>,  <41.664108, 31.596861, 52.376118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354549, 31.452839, 52.167717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247417, -0.585403, 0.772068,
		-0.582983, 0.726406, 0.363958,
		-0.773896, -0.360053, -0.521005,
		41.122379, 31.344822, 52.011414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033890, 31.687632, 52.822983>,  <41.664108, 31.596861, 52.376118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033890, 31.687632, 52.822983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941902, 31.386642, 52.576115>,  <40.886707, 31.206049, 52.427994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941902, 31.386642, 52.576115>,  <41.033890, 31.687632, 52.822983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941902, 31.386642, 52.576115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378626, -0.515025, 0.769020,
		-0.896524, 0.410530, -0.166463,
		-0.229974, -0.752472, -0.617169,
		40.872910, 31.160900, 52.390965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395370, 31.493563, 53.025223>,  <41.033890, 31.687632, 52.822983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395370, 31.493563, 53.025223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509796, 31.182463, 52.801342>,  <40.578453, 30.995802, 52.667011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509796, 31.182463, 52.801342>,  <40.395370, 31.493563, 53.025223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509796, 31.182463, 52.801342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248065, -0.624315, 0.740739,
		-0.925542, -0.073058, -0.371529,
		0.286068, -0.777749, -0.559707,
		40.595615, 30.949139, 52.633430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966694, 30.959436, 53.086914>,  <40.395370, 31.493563, 53.025223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966694, 30.959436, 53.086914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.282864, 30.754730, 52.952259>,  <40.472565, 30.631907, 52.871468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.282864, 30.754730, 52.952259>,  <39.966694, 30.959436, 53.086914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282864, 30.754730, 52.952259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122341, -0.670374, 0.731868,
		-0.600215, -0.537304, -0.592492,
		0.790427, -0.511764, -0.336635,
		40.519993, 30.601200, 52.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071350, 30.393791, 53.705074>,  <39.966694, 30.959436, 53.086914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071350, 30.393791, 53.705074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.730827, 30.458570, 53.904690>,  <39.526512, 30.497438, 54.024460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.730827, 30.458570, 53.904690>,  <40.071350, 30.393791, 53.705074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730827, 30.458570, 53.904690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440110, 0.297359, -0.847278,
		-0.285609, -0.940931, -0.181870,
		-0.851311, 0.161948, 0.499041,
		39.475433, 30.507154, 54.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588779, 30.025776, 53.390667>,  <40.071350, 30.393791, 53.705074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588779, 30.025776, 53.390667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423210, 30.334688, 53.583439>,  <39.323868, 30.520035, 53.699100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423210, 30.334688, 53.583439>,  <39.588779, 30.025776, 53.390667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423210, 30.334688, 53.583439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423959, 0.304945, -0.852800,
		-0.805561, -0.557310, 0.201191,
		-0.413922, 0.772278, 0.481928,
		39.299034, 30.566372, 53.728016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865658, 30.063347, 53.208988>,  <39.588779, 30.025776, 53.390667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865658, 30.063347, 53.208988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949371, 30.421093, 53.367130>,  <38.999599, 30.635740, 53.462017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949371, 30.421093, 53.367130>,  <38.865658, 30.063347, 53.208988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949371, 30.421093, 53.367130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505066, 0.445073, -0.739471,
		-0.837322, -0.044923, 0.544861,
		0.209284, 0.894367, 0.395359,
		39.012157, 30.689404, 53.485737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322792, 30.370560, 53.088860>,  <38.865658, 30.063347, 53.208988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322792, 30.370560, 53.088860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569054, 30.670767, 53.184933>,  <38.716812, 30.850891, 53.242577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569054, 30.670767, 53.184933>,  <38.322792, 30.370560, 53.088860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569054, 30.670767, 53.184933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407634, 0.564170, -0.718016,
		-0.674390, 0.344143, 0.653272,
		0.615656, 0.750518, 0.240187,
		38.753750, 30.895922, 53.256989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881615, 30.944519, 53.065536>,  <38.322792, 30.370560, 53.088860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881615, 30.944519, 53.065536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246422, 31.100491, 53.014660>,  <38.465305, 31.194073, 52.984135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246422, 31.100491, 53.014660>,  <37.881615, 30.944519, 53.065536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246422, 31.100491, 53.014660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363859, 0.626079, -0.689660,
		-0.189284, 0.675264, 0.712874,
		0.912019, 0.389928, -0.127194,
		38.520027, 31.217468, 52.976501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815048, 31.662964, 52.940849>,  <37.881615, 30.944519, 53.065536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815048, 31.662964, 52.940849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190144, 31.635817, 52.804596>,  <38.415203, 31.619528, 52.722843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190144, 31.635817, 52.804596>,  <37.815048, 31.662964, 52.940849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190144, 31.635817, 52.804596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217752, 0.649180, -0.728800,
		0.270597, 0.757601, 0.593985,
		0.937743, -0.067870, -0.340635,
		38.471466, 31.615456, 52.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080669, 32.385059, 52.844643>,  <37.815048, 31.662964, 52.940849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080669, 32.385059, 52.844643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313023, 32.141319, 52.628765>,  <38.452435, 31.995075, 52.499241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313023, 32.141319, 52.628765>,  <38.080669, 32.385059, 52.844643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313023, 32.141319, 52.628765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110981, 0.716118, -0.689100,
		0.806384, 0.340392, 0.483609,
		0.580885, -0.609351, -0.539689,
		38.487289, 31.958513, 52.466858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550499, 32.826340, 52.600643>,  <38.080669, 32.385059, 52.844643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550499, 32.826340, 52.600643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556458, 32.507263, 52.359493>,  <38.560032, 32.315815, 52.214802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556458, 32.507263, 52.359493>,  <38.550499, 32.826340, 52.600643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556458, 32.507263, 52.359493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125867, 0.596652, -0.792567,
		0.991935, 0.087692, -0.091512,
		0.014901, -0.797694, -0.602878,
		38.560928, 32.267956, 52.178631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128975, 32.938068, 51.994137>,  <38.550499, 32.826340, 52.600643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128975, 32.938068, 51.994137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841625, 32.694687, 51.859241>,  <38.669216, 32.548660, 51.778305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841625, 32.694687, 51.859241>,  <39.128975, 32.938068, 51.994137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841625, 32.694687, 51.859241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029332, 0.510835, -0.859178,
		0.695041, -0.607318, -0.384817,
		-0.718372, -0.608451, -0.337238,
		38.626114, 32.512150, 51.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391453, 32.863827, 51.402573>,  <39.128975, 32.938068, 51.994137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391453, 32.863827, 51.402573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010216, 32.746494, 51.372707>,  <38.781475, 32.676094, 51.354790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010216, 32.746494, 51.372707>,  <39.391453, 32.863827, 51.402573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010216, 32.746494, 51.372707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056341, 0.414291, -0.908399,
		0.297390, -0.861581, -0.411384,
		-0.953092, -0.293327, -0.074664,
		38.724289, 32.658497, 51.350307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364746, 32.580898, 50.775902>,  <39.391453, 32.863827, 51.402573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364746, 32.580898, 50.775902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983559, 32.672447, 50.855366>,  <38.754845, 32.727375, 50.903046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983559, 32.672447, 50.855366>,  <39.364746, 32.580898, 50.775902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983559, 32.672447, 50.855366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072462, 0.464420, -0.882646,
		-0.294274, -0.855530, -0.425994,
		-0.952971, 0.228871, 0.198660,
		38.697666, 32.741108, 50.914963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893993, 32.267399, 50.276882>,  <39.364746, 32.580898, 50.775902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893993, 32.267399, 50.276882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676338, 32.576504, 50.407574>,  <38.545746, 32.761967, 50.485989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676338, 32.576504, 50.407574>,  <38.893993, 32.267399, 50.276882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676338, 32.576504, 50.407574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114770, 0.317207, -0.941386,
		-0.831107, -0.549744, -0.083915,
		-0.544140, 0.772762, 0.326727,
		38.513096, 32.808331, 50.505592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363708, 32.366199, 49.735176>,  <38.893993, 32.267399, 50.276882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363708, 32.366199, 49.735176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367764, 32.701069, 49.953915>,  <38.370197, 32.901989, 50.085159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367764, 32.701069, 49.953915>,  <38.363708, 32.366199, 49.735176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367764, 32.701069, 49.953915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050751, 0.546604, -0.835852,
		-0.998660, -0.019282, 0.048027,
		0.010135, 0.837169, 0.546850,
		38.370804, 32.952221, 50.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789516, 32.809731, 49.513878>,  <38.363708, 32.366199, 49.735176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789516, 32.809731, 49.513878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078487, 33.046261, 49.657223>,  <38.251869, 33.188179, 49.743229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078487, 33.046261, 49.657223>,  <37.789516, 32.809731, 49.513878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078487, 33.046261, 49.657223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092472, 0.596255, -0.797451,
		-0.685234, 0.542963, 0.485433,
		0.722429, 0.591330, 0.358366,
		38.295216, 33.223660, 49.764732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594818, 33.407082, 49.299225>,  <37.789516, 32.809731, 49.513878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594818, 33.407082, 49.299225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979706, 33.506233, 49.344288>,  <38.210640, 33.565723, 49.371326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979706, 33.506233, 49.344288>,  <37.594818, 33.407082, 49.299225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979706, 33.506233, 49.344288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142502, 0.811017, -0.567402,
		-0.232014, 0.529911, 0.815699,
		0.962218, 0.247883, 0.112654,
		38.268372, 33.580597, 49.378082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669708, 34.187180, 49.251423>,  <37.594818, 33.407082, 49.299225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669708, 34.187180, 49.251423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050186, 34.065147, 49.232876>,  <38.278473, 33.991928, 49.221748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050186, 34.065147, 49.232876>,  <37.669708, 34.187180, 49.251423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050186, 34.065147, 49.232876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226540, 0.792394, -0.566385,
		0.209531, 0.528241, 0.822836,
		0.951197, -0.305081, -0.046363,
		38.335545, 33.973621, 49.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033253, 34.765339, 49.318165>,  <37.669708, 34.187180, 49.251423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033253, 34.765339, 49.318165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286907, 34.514523, 49.137188>,  <38.439098, 34.364033, 49.028603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286907, 34.514523, 49.137188>,  <38.033253, 34.765339, 49.318165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286907, 34.514523, 49.137188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120230, 0.657976, -0.743379,
		0.763820, 0.417005, 0.492633,
		0.634133, -0.627037, -0.452438,
		38.477146, 34.326412, 49.001457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466324, 35.141827, 48.969254>,  <38.033253, 34.765339, 49.318165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466324, 35.141827, 48.969254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540260, 34.797329, 48.779900>,  <38.584621, 34.590630, 48.666286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540260, 34.797329, 48.779900>,  <38.466324, 35.141827, 48.969254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540260, 34.797329, 48.779900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241557, 0.427091, -0.871345,
		0.952618, 0.275414, -0.129093,
		0.184846, -0.861243, -0.473383,
		38.595715, 34.538956, 48.637886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989742, 35.311550, 48.513577>,  <38.466324, 35.141827, 48.969254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989742, 35.311550, 48.513577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806519, 34.977013, 48.393105>,  <38.696587, 34.776291, 48.320820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806519, 34.977013, 48.393105>,  <38.989742, 35.311550, 48.513577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806519, 34.977013, 48.393105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190203, 0.423181, -0.885856,
		0.868336, -0.348485, -0.352916,
		-0.458055, -0.836347, -0.301181,
		38.669102, 34.726109, 48.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289806, 35.086391, 47.812286>,  <38.989742, 35.311550, 48.513577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289806, 35.086391, 47.812286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950439, 34.874836, 47.820953>,  <38.746819, 34.747902, 47.826153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950439, 34.874836, 47.820953>,  <39.289806, 35.086391, 47.812286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950439, 34.874836, 47.820953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234994, 0.339658, -0.910720,
		0.474314, -0.777757, -0.412456,
		-0.848413, -0.528892, 0.021664,
		38.695915, 34.716167, 47.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210888, 34.601982, 47.255264>,  <39.289806, 35.086391, 47.812286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210888, 34.601982, 47.255264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827763, 34.663479, 47.352390>,  <38.597889, 34.700378, 47.410667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827763, 34.663479, 47.352390>,  <39.210888, 34.601982, 47.255264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827763, 34.663479, 47.352390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188199, 0.302995, -0.934224,
		-0.217205, -0.940509, -0.261277,
		-0.957812, 0.153746, 0.242815,
		38.540421, 34.709602, 47.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.098042, 40.582985, 29.888584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.799294, 40.384758, 30.065941>,  <41.620045, 40.265820, 30.172356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.799294, 40.384758, 30.065941>,  <42.098042, 40.582985, 29.888584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799294, 40.384758, 30.065941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632017, -0.321715, 0.705020,
		-0.206742, 0.806789, 0.553488,
		-0.746868, -0.495571, 0.443392,
		41.575233, 40.236088, 30.198959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594967, 40.233540, 29.617128>,  <42.098042, 40.582985, 29.888584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594967, 40.233540, 29.617128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634251, 39.951054, 29.336666>,  <42.657822, 39.781563, 29.168388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634251, 39.951054, 29.336666>,  <42.594967, 40.233540, 29.617128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634251, 39.951054, 29.336666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203100, -0.675510, 0.708828,
		-0.974220, -0.212018, 0.077091,
		0.098208, -0.706212, -0.701156,
		42.663712, 39.739189, 29.126320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081879, 39.749584, 29.713020>,  <42.594967, 40.233540, 29.617128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081879, 39.749584, 29.713020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375664, 39.564316, 29.514608>,  <42.551933, 39.453156, 29.395561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375664, 39.564316, 29.514608>,  <42.081879, 39.749584, 29.713020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375664, 39.564316, 29.514608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080993, -0.785499, 0.613540,
		-0.673802, -0.410446, -0.614431,
		0.734460, -0.463169, -0.496027,
		42.596001, 39.425365, 29.365799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758854, 39.065014, 29.660690>,  <42.081879, 39.749584, 29.713020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758854, 39.065014, 29.660690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152470, 39.040749, 29.593782>,  <42.388641, 39.026188, 29.553638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152470, 39.040749, 29.593782>,  <41.758854, 39.065014, 29.660690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152470, 39.040749, 29.593782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027450, -0.877065, 0.479587,
		-0.175799, -0.476526, -0.861404,
		0.984043, -0.060665, -0.167268,
		42.447681, 39.022549, 29.543602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856922, 38.319637, 29.593998>,  <41.758854, 39.065014, 29.660690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856922, 38.319637, 29.593998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.220352, 38.467941, 29.670959>,  <42.438412, 38.556923, 29.717136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.220352, 38.467941, 29.670959>,  <41.856922, 38.319637, 29.593998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220352, 38.467941, 29.670959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246191, -0.847415, 0.470401,
		0.337455, -0.380028, -0.861222,
		0.908578, 0.370764, 0.192406,
		42.492924, 38.579170, 29.728682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242844, 37.834888, 29.362389>,  <41.856922, 38.319637, 29.593998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242844, 37.834888, 29.362389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428696, 38.042423, 29.649424>,  <42.540207, 38.166943, 29.821646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428696, 38.042423, 29.649424>,  <42.242844, 37.834888, 29.362389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428696, 38.042423, 29.649424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130658, -0.841670, 0.523947,
		0.875813, -0.149682, -0.458853,
		0.464628, 0.518832, 0.717589,
		42.568085, 38.198074, 29.864700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750385, 37.318813, 29.655910>,  <42.242844, 37.834888, 29.362389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750385, 37.318813, 29.655910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728546, 37.614883, 29.923990>,  <42.715443, 37.792526, 30.084837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728546, 37.614883, 29.923990>,  <42.750385, 37.318813, 29.655910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728546, 37.614883, 29.923990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222466, -0.645311, 0.730810,
		0.973410, 0.188996, -0.129432,
		-0.054597, 0.740172, 0.670197,
		42.712166, 37.836937, 30.125050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290668, 37.195049, 30.041487>,  <42.750385, 37.318813, 29.655910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290668, 37.195049, 30.041487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105682, 37.446476, 30.291615>,  <42.994690, 37.597332, 30.441690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105682, 37.446476, 30.291615>,  <43.290668, 37.195049, 30.041487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105682, 37.446476, 30.291615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352694, -0.516652, 0.780178,
		0.813468, 0.581354, 0.017242,
		-0.462468, 0.628569, 0.625320,
		42.966942, 37.635048, 30.479210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807049, 37.490776, 30.548836>,  <43.290668, 37.195049, 30.041487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807049, 37.490776, 30.548836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454716, 37.551064, 30.728357>,  <43.243317, 37.587234, 30.836069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454716, 37.551064, 30.728357>,  <43.807049, 37.490776, 30.548836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454716, 37.551064, 30.728357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317827, -0.514357, 0.796506,
		0.350889, 0.844228, 0.405161,
		-0.880830, 0.150714, 0.448802,
		43.190468, 37.596279, 30.862997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050655, 37.734798, 31.185532>,  <43.807049, 37.490776, 30.548836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050655, 37.734798, 31.185532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684135, 37.582027, 31.233727>,  <43.464222, 37.490364, 31.262644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684135, 37.582027, 31.233727>,  <44.050655, 37.734798, 31.185532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684135, 37.582027, 31.233727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329026, -0.546410, 0.770180,
		-0.228322, 0.745361, 0.626343,
		-0.916303, -0.381932, 0.120486,
		43.409245, 37.467449, 31.269873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887211, 37.786850, 31.851040>,  <44.050655, 37.734798, 31.185532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887211, 37.786850, 31.851040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622879, 37.513111, 31.727768>,  <43.464279, 37.348869, 31.653805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622879, 37.513111, 31.727768>,  <43.887211, 37.786850, 31.851040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622879, 37.513111, 31.727768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292456, -0.612951, 0.734003,
		-0.691211, 0.394922, 0.605198,
		-0.660830, -0.684345, -0.308181,
		43.424629, 37.307808, 31.635313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518578, 37.438007, 32.450043>,  <43.887211, 37.786850, 31.851040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518578, 37.438007, 32.450043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452583, 37.169460, 32.161030>,  <43.412987, 37.008331, 31.987623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452583, 37.169460, 32.161030>,  <43.518578, 37.438007, 32.450043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452583, 37.169460, 32.161030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244960, -0.737505, 0.629350,
		-0.955393, -0.073159, 0.286133,
		-0.164981, -0.671368, -0.722528,
		43.403088, 36.968052, 31.944271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093933, 37.104065, 32.713177>,  <43.518578, 37.438007, 32.450043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093933, 37.104065, 32.713177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192524, 36.844139, 32.425568>,  <43.251678, 36.688183, 32.253002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192524, 36.844139, 32.425568>,  <43.093933, 37.104065, 32.713177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192524, 36.844139, 32.425568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182910, -0.697385, 0.692963,
		-0.951731, -0.302318, -0.053035,
		0.246481, -0.649814, -0.719019,
		43.266468, 36.649197, 32.209862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726170, 36.446510, 32.782635>,  <43.093933, 37.104065, 32.713177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726170, 36.446510, 32.782635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082344, 36.357632, 32.623760>,  <43.296047, 36.304306, 32.528435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082344, 36.357632, 32.623760>,  <42.726170, 36.446510, 32.782635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082344, 36.357632, 32.623760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162674, -0.659675, 0.733734,
		-0.425043, -0.717955, -0.551253,
		0.890435, -0.222194, -0.397182,
		43.349476, 36.290974, 32.504604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846130, 35.762241, 32.947590>,  <42.726170, 36.446510, 32.782635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846130, 35.762241, 32.947590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212769, 35.822399, 32.799408>,  <43.432751, 35.858494, 32.710499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212769, 35.822399, 32.799408>,  <42.846130, 35.762241, 32.947590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212769, 35.822399, 32.799408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359086, -0.717087, 0.597364,
		-0.175807, -0.680565, -0.711283,
		0.916596, 0.150390, -0.370450,
		43.487747, 35.867516, 32.688274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167912, 35.171944, 32.626499>,  <42.846130, 35.762241, 32.947590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167912, 35.171944, 32.626499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479752, 35.398098, 32.734249>,  <43.666855, 35.533791, 32.798901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479752, 35.398098, 32.734249>,  <43.167912, 35.171944, 32.626499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479752, 35.398098, 32.734249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319844, -0.729234, 0.604911,
		0.538446, -0.385431, -0.749346,
		0.779600, 0.565386, 0.269375,
		43.713631, 35.567715, 32.815063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682861, 34.703091, 32.750576>,  <43.167912, 35.171944, 32.626499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682861, 34.703091, 32.750576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781521, 35.041752, 32.939190>,  <43.840717, 35.244949, 33.052357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781521, 35.041752, 32.939190>,  <43.682861, 34.703091, 32.750576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781521, 35.041752, 32.939190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361471, -0.531822, 0.765835,
		0.899169, -0.018446, -0.437213,
		0.246646, 0.846655, 0.471530,
		43.855515, 35.295750, 33.080650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362415, 34.643154, 32.910839>,  <43.682861, 34.703091, 32.750576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362415, 34.643154, 32.910839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222305, 34.919716, 33.163589>,  <44.138241, 35.085651, 33.315239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222305, 34.919716, 33.163589>,  <44.362415, 34.643154, 32.910839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222305, 34.919716, 33.163589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380680, -0.511296, 0.770493,
		0.855797, 0.510428, -0.084109,
		-0.350276, 0.691404, 0.631876,
		44.117222, 35.127136, 33.353153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898144, 34.739555, 33.329765>,  <44.362415, 34.643154, 32.910839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898144, 34.739555, 33.329765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591427, 34.899689, 33.530472>,  <44.407398, 34.995770, 33.650894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591427, 34.899689, 33.530472>,  <44.898144, 34.739555, 33.329765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591427, 34.899689, 33.530472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309783, -0.453844, 0.835500,
		0.562199, 0.796092, 0.223988,
		-0.766790, 0.400329, 0.501766,
		44.361389, 35.019787, 33.681000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191326, 35.187893, 33.880455>,  <44.898144, 34.739555, 33.329765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191326, 35.187893, 33.880455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824745, 35.056644, 33.972069>,  <44.604797, 34.977894, 34.027039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824745, 35.056644, 33.972069>,  <45.191326, 35.187893, 33.880455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824745, 35.056644, 33.972069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371967, -0.487536, 0.789905,
		-0.147520, 0.809102, 0.568852,
		-0.916449, -0.328121, 0.229038,
		44.549812, 34.958206, 34.040779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243206, 35.207111, 34.594833>,  <45.191326, 35.187893, 33.880455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243206, 35.207111, 34.594833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918095, 34.993332, 34.502087>,  <44.723030, 34.865067, 34.446438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918095, 34.993332, 34.502087>,  <45.243206, 35.207111, 34.594833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918095, 34.993332, 34.502087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220169, -0.650276, 0.727094,
		-0.539370, 0.539915, 0.646198,
		-0.812776, -0.534445, -0.231867,
		44.674263, 34.832996, 34.432526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303776, 35.936901, 34.729282>,  <45.243206, 35.207111, 34.594833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303776, 35.936901, 34.729282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502750, 36.079090, 35.045815>,  <45.622135, 36.164402, 35.235733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502750, 36.079090, 35.045815>,  <45.303776, 35.936901, 34.729282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502750, 36.079090, 35.045815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095396, 0.884246, -0.457174,
		-0.862242, 0.302903, 0.405943,
		0.497433, 0.355469, 0.791330,
		45.651981, 36.185730, 35.283215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941940, 36.569263, 35.086552>,  <45.303776, 35.936901, 34.729282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941940, 36.569263, 35.086552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335644, 36.571308, 35.015877>,  <45.571865, 36.572536, 34.973473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335644, 36.571308, 35.015877>,  <44.941940, 36.569263, 35.086552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335644, 36.571308, 35.015877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079277, 0.906178, -0.415399,
		0.157983, 0.422865, 0.892315,
		0.984254, 0.005114, -0.176684,
		45.630920, 36.572842, 34.962872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326420, 37.184742, 35.302536>,  <44.941940, 36.569263, 35.086552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326420, 37.184742, 35.302536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516178, 37.023144, 34.989681>,  <45.630032, 36.926186, 34.801968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516178, 37.023144, 34.989681>,  <45.326420, 37.184742, 35.302536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516178, 37.023144, 34.989681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223530, 0.804074, -0.550907,
		0.851461, 0.436178, 0.291142,
		0.474394, -0.403997, -0.782136,
		45.658497, 36.901943, 34.755039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779388, 37.694477, 35.125385>,  <45.326420, 37.184742, 35.302536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779388, 37.694477, 35.125385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748611, 37.471245, 34.794899>,  <45.730145, 37.337307, 34.596607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748611, 37.471245, 34.794899>,  <45.779388, 37.694477, 35.125385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748611, 37.471245, 34.794899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001434, 0.828731, -0.559646,
		0.997035, -0.041873, -0.064561,
		-0.076938, -0.558079, -0.826213,
		45.725529, 37.303822, 34.547035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174683, 37.963249, 34.650890>,  <45.779388, 37.694477, 35.125385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174683, 37.963249, 34.650890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.933186, 37.748440, 34.415234>,  <45.788288, 37.619553, 34.273838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.933186, 37.748440, 34.415234>,  <46.174683, 37.963249, 34.650890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933186, 37.748440, 34.415234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086947, 0.778992, -0.620977,
		0.792428, -0.323682, -0.516999,
		-0.603737, -0.537031, -0.589152,
		45.752064, 37.587330, 34.238491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285053, 38.190006, 33.976517>,  <46.174683, 37.963249, 34.650890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285053, 38.190006, 33.976517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930401, 38.015442, 33.915283>,  <45.717609, 37.910702, 33.878544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930401, 38.015442, 33.915283>,  <46.285053, 38.190006, 33.976517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930401, 38.015442, 33.915283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177264, 0.626404, -0.759076,
		0.427161, -0.645882, -0.632747,
		-0.886629, -0.436411, -0.153084,
		45.664413, 37.884518, 33.869358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162212, 38.245766, 33.299408>,  <46.285053, 38.190006, 33.976517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162212, 38.245766, 33.299408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796318, 38.168968, 33.441620>,  <45.576782, 38.122890, 33.526947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796318, 38.168968, 33.441620>,  <46.162212, 38.245766, 33.299408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796318, 38.168968, 33.441620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390450, 0.646408, -0.655519,
		-0.103961, -0.738442, -0.666255,
		-0.914735, -0.191991, 0.355526,
		45.521896, 38.111370, 33.548279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669186, 38.053257, 32.690239>,  <46.162212, 38.245766, 33.299408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669186, 38.053257, 32.690239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432240, 38.166550, 32.991936>,  <45.290070, 38.234528, 33.172955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432240, 38.166550, 32.991936>,  <45.669186, 38.053257, 32.690239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432240, 38.166550, 32.991936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456982, 0.652882, -0.604081,
		-0.663525, -0.702512, -0.257315,
		-0.592370, 0.283235, 0.754239,
		45.254528, 38.251518, 33.218208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038460, 38.087933, 32.335854>,  <45.669186, 38.053257, 32.690239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038460, 38.087933, 32.335854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009270, 38.298759, 32.674526>,  <44.991756, 38.425255, 32.877731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009270, 38.298759, 32.674526>,  <45.038460, 38.087933, 32.335854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009270, 38.298759, 32.674526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500314, 0.715053, -0.488247,
		-0.862763, -0.459239, 0.211517,
		-0.072977, 0.527066, 0.846685,
		44.987377, 38.456879, 32.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383549, 38.381683, 32.288227>,  <45.038460, 38.087933, 32.335854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383549, 38.381683, 32.288227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611725, 38.598927, 32.534683>,  <44.748631, 38.729275, 32.682556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611725, 38.598927, 32.534683>,  <44.383549, 38.381683, 32.288227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611725, 38.598927, 32.534683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164657, 0.810555, -0.562040,
		-0.804665, 0.219159, 0.551801,
		0.570441, 0.543111, 0.616139,
		44.782856, 38.761860, 32.719524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066372, 39.096806, 32.305771>,  <44.383549, 38.381683, 32.288227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066372, 39.096806, 32.305771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434666, 39.154892, 32.450630>,  <44.655643, 39.189743, 32.537548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434666, 39.154892, 32.450630>,  <44.066372, 39.096806, 32.305771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434666, 39.154892, 32.450630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076373, 0.843135, -0.532251,
		-0.382633, 0.517723, 0.765216,
		0.920738, 0.145215, 0.362151,
		44.710888, 39.198456, 32.559277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995708, 39.637531, 32.783920>,  <44.066372, 39.096806, 32.305771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995708, 39.637531, 32.783920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377655, 39.616905, 32.666912>,  <44.606823, 39.604530, 32.596706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377655, 39.616905, 32.666912>,  <43.995708, 39.637531, 32.783920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377655, 39.616905, 32.666912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093952, 0.881811, -0.462149,
		0.281778, 0.468774, 0.837169,
		0.954868, -0.051570, -0.292518,
		44.664116, 39.601433, 32.579155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241558, 40.226696, 32.854504>,  <43.995708, 39.637531, 32.783920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241558, 40.226696, 32.854504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504490, 40.080936, 32.590645>,  <44.662251, 39.993481, 32.432331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504490, 40.080936, 32.590645>,  <44.241558, 40.226696, 32.854504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504490, 40.080936, 32.590645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051488, 0.851560, -0.521723,
		0.751841, 0.376909, 0.540994,
		0.657331, -0.364398, -0.659644,
		44.701691, 39.971619, 32.392750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606800, 40.805157, 32.643478>,  <44.241558, 40.226696, 32.854504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606800, 40.805157, 32.643478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725090, 40.541874, 32.366550>,  <44.796062, 40.383904, 32.200394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725090, 40.541874, 32.366550>,  <44.606800, 40.805157, 32.643478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725090, 40.541874, 32.366550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058621, 0.710867, -0.700879,
		0.953473, 0.247851, 0.171635,
		0.295724, -0.658208, -0.692322,
		44.813808, 40.344410, 32.158855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009766, 41.219814, 32.150585>,  <44.606800, 40.805157, 32.643478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009766, 41.219814, 32.150585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.913742, 40.887245, 31.950144>,  <44.856129, 40.687702, 31.829878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.913742, 40.887245, 31.950144>,  <45.009766, 41.219814, 32.150585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913742, 40.887245, 31.950144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211018, 0.548549, -0.809052,
		0.947547, -0.088475, -0.307127,
		-0.240055, -0.831424, -0.501106,
		44.841724, 40.637817, 31.799812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542343, 41.233349, 31.544167>,  <45.009766, 41.219814, 32.150585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542343, 41.233349, 31.544167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242702, 40.983086, 31.457075>,  <45.062920, 40.832928, 31.404821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242702, 40.983086, 31.457075>,  <45.542343, 41.233349, 31.544167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242702, 40.983086, 31.457075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268228, 0.586979, -0.763878,
		0.605730, -0.513817, -0.607523,
		-0.749096, -0.625658, -0.217730,
		45.017971, 40.795387, 31.391758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566303, 41.015442, 30.894196>,  <45.542343, 41.233349, 31.544167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566303, 41.015442, 30.894196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182949, 41.004063, 31.007820>,  <44.952938, 40.997234, 31.075994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182949, 41.004063, 31.007820>,  <45.566303, 41.015442, 30.894196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182949, 41.004063, 31.007820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235398, 0.641700, -0.729938,
		-0.161518, -0.766428, -0.621691,
		-0.958384, -0.028446, 0.284062,
		44.895435, 40.995529, 31.093039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169773, 40.991348, 30.204853>,  <45.566303, 41.015442, 30.894196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169773, 40.991348, 30.204853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918354, 41.105362, 30.494316>,  <44.767502, 41.173771, 30.667994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918354, 41.105362, 30.494316>,  <45.169773, 40.991348, 30.204853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918354, 41.105362, 30.494316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510555, 0.550690, -0.660359,
		-0.586737, -0.784535, -0.200610,
		-0.628549, 0.285034, 0.723658,
		44.729790, 41.190872, 30.711414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486107, 40.862564, 29.956028>,  <45.169773, 40.991348, 30.204853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486107, 40.862564, 29.956028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436462, 41.126808, 30.252188>,  <44.406677, 41.285355, 30.429884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436462, 41.126808, 30.252188>,  <44.486107, 40.862564, 29.956028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436462, 41.126808, 30.252188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493124, 0.606438, -0.623748,
		-0.861061, -0.442521, 0.250499,
		-0.124109, 0.660612, 0.740398,
		44.399231, 41.324993, 30.474308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778095, 41.073463, 29.917654>,  <44.486107, 40.862564, 29.956028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778095, 41.073463, 29.917654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978943, 41.354565, 30.119253>,  <44.099449, 41.523228, 30.240211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978943, 41.354565, 30.119253>,  <43.778095, 41.073463, 29.917654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978943, 41.354565, 30.119253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451877, 0.710107, -0.539958,
		-0.737350, 0.043377, 0.674116,
		0.502117, 0.702756, 0.503996,
		44.129578, 41.565392, 30.270452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303627, 41.531479, 30.164783>,  <43.778095, 41.073463, 29.917654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303627, 41.531479, 30.164783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644928, 41.739960, 30.171724>,  <43.849709, 41.865047, 30.175888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644928, 41.739960, 30.171724>,  <43.303627, 41.531479, 30.164783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644928, 41.739960, 30.171724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493273, 0.817434, -0.297462,
		-0.169222, 0.245252, 0.954576,
		0.853256, 0.521204, 0.017352,
		43.900906, 41.896320, 30.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.077259, 35.036987, 42.492313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787273, 34.769447, 42.426514>,  <40.613281, 34.608925, 42.387035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787273, 34.769447, 42.426514>,  <41.077259, 35.036987, 42.492313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787273, 34.769447, 42.426514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089767, 0.145042, -0.985345,
		0.682908, -0.729111, -0.045110,
		-0.724968, -0.668850, -0.164501,
		40.569782, 34.568794, 42.377163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296925, 34.551205, 41.951191>,  <41.077259, 35.036987, 42.492313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296925, 34.551205, 41.951191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898502, 34.516670, 41.959351>,  <40.659447, 34.495949, 41.964249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898502, 34.516670, 41.959351>,  <41.296925, 34.551205, 41.951191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898502, 34.516670, 41.959351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043646, 0.276694, -0.959966,
		0.077232, -0.957072, -0.279371,
		-0.996057, -0.086333, 0.020403,
		40.599686, 34.490768, 41.965473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092728, 34.144745, 41.321194>,  <41.296925, 34.551205, 41.951191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092728, 34.144745, 41.321194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765652, 34.345142, 41.434601>,  <40.569405, 34.465382, 41.502647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765652, 34.345142, 41.434601>,  <41.092728, 34.144745, 41.321194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765652, 34.345142, 41.434601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185611, 0.236758, -0.953674,
		-0.544913, -0.832435, -0.100604,
		-0.817691, 0.500997, 0.283521,
		40.520344, 34.495441, 41.519657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584362, 33.909252, 40.884579>,  <41.092728, 34.144745, 41.321194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584362, 33.909252, 40.884579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444370, 34.255070, 41.028847>,  <40.360374, 34.462559, 41.115406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444370, 34.255070, 41.028847>,  <40.584362, 33.909252, 40.884579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444370, 34.255070, 41.028847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455758, 0.179227, -0.871873,
		-0.818413, -0.469512, 0.331298,
		-0.349977, 0.864544, 0.360665,
		40.339378, 34.514435, 41.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867874, 33.800545, 40.748001>,  <40.584362, 33.909252, 40.884579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867874, 33.800545, 40.748001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975891, 34.180767, 40.809338>,  <40.040703, 34.408901, 40.846138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975891, 34.180767, 40.809338>,  <39.867874, 33.800545, 40.748001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975891, 34.180767, 40.809338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324315, 0.239749, -0.915063,
		-0.906584, 0.197379, 0.373024,
		0.270046, 0.950559, 0.153339,
		40.056904, 34.465935, 40.855339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363438, 34.122746, 40.296043>,  <39.867874, 33.800545, 40.748001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363438, 34.122746, 40.296043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620090, 34.417271, 40.381973>,  <39.774082, 34.593987, 40.433533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620090, 34.417271, 40.381973>,  <39.363438, 34.122746, 40.296043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620090, 34.417271, 40.381973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330117, 0.517918, -0.789167,
		-0.692335, 0.435438, 0.575383,
		0.641634, 0.736312, 0.214827,
		39.812580, 34.638165, 40.446423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024712, 34.813614, 40.209152>,  <39.363438, 34.122746, 40.296043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024712, 34.813614, 40.209152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413403, 34.904411, 40.183197>,  <39.646618, 34.958889, 40.167622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413403, 34.904411, 40.183197>,  <39.024712, 34.813614, 40.209152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413403, 34.904411, 40.183197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174512, 0.505510, -0.844988,
		-0.159005, 0.832426, 0.530833,
		0.971732, 0.226994, -0.064890,
		39.704922, 34.972511, 40.163731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037521, 35.469788, 40.012745>,  <39.024712, 34.813614, 40.209152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037521, 35.469788, 40.012745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415398, 35.373909, 39.923206>,  <39.642124, 35.316383, 39.869484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415398, 35.373909, 39.923206>,  <39.037521, 35.469788, 40.012745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415398, 35.373909, 39.923206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102076, 0.433757, -0.895229,
		0.311676, 0.868564, 0.385299,
		0.944690, -0.239692, -0.223851,
		39.698803, 35.302002, 39.856052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414314, 36.094753, 39.905769>,  <39.037521, 35.469788, 40.012745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414314, 36.094753, 39.905769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613155, 35.800018, 39.722481>,  <39.732460, 35.623177, 39.612507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613155, 35.800018, 39.722481>,  <39.414314, 36.094753, 39.905769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613155, 35.800018, 39.722481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166908, 0.437033, -0.883823,
		0.851490, 0.515829, 0.094265,
		0.497098, -0.736833, -0.458225,
		39.762283, 35.578968, 39.585014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908367, 36.414928, 39.401356>,  <39.414314, 36.094753, 39.905769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908367, 36.414928, 39.401356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873955, 36.033001, 39.287571>,  <39.853306, 35.803844, 39.219299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873955, 36.033001, 39.287571>,  <39.908367, 36.414928, 39.401356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873955, 36.033001, 39.287571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246003, 0.297038, -0.922632,
		0.965443, -0.009397, -0.260443,
		-0.086031, -0.954819, -0.284462,
		39.848145, 35.746555, 39.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358624, 36.256420, 38.923393>,  <39.908367, 36.414928, 39.401356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358624, 36.256420, 38.923393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088264, 35.967625, 38.864208>,  <39.926048, 35.794346, 38.828697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088264, 35.967625, 38.864208>,  <40.358624, 36.256420, 38.923393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088264, 35.967625, 38.864208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156768, 0.337019, -0.928354,
		0.720130, -0.604275, -0.340975,
		-0.675896, -0.721990, -0.147967,
		39.885494, 35.751026, 38.819817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451744, 36.120125, 38.242516>,  <40.358624, 36.256420, 38.923393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451744, 36.120125, 38.242516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097641, 35.951851, 38.321850>,  <39.885178, 35.850887, 38.369450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097641, 35.951851, 38.321850>,  <40.451744, 36.120125, 38.242516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097641, 35.951851, 38.321850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324198, 0.252376, -0.911703,
		0.333489, -0.871393, -0.359805,
		-0.885258, -0.420691, 0.198339,
		39.832062, 35.825645, 38.381351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343689, 35.775890, 37.658432>,  <40.451744, 36.120125, 38.242516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343689, 35.775890, 37.658432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013317, 35.896015, 37.849285>,  <39.815094, 35.968090, 37.963799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013317, 35.896015, 37.849285>,  <40.343689, 35.775890, 37.658432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013317, 35.896015, 37.849285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322769, 0.442009, -0.836928,
		-0.462240, -0.845245, -0.268134,
		-0.825927, 0.300316, 0.477133,
		39.765537, 35.986111, 37.992424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577095, 35.196243, 37.213684>,  <40.343689, 35.775890, 37.658432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577095, 35.196243, 37.213684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210548, 35.275463, 37.352852>,  <39.990620, 35.322994, 37.436352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210548, 35.275463, 37.352852>,  <40.577095, 35.196243, 37.213684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210548, 35.275463, 37.352852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205560, -0.512990, 0.833419,
		0.343536, 0.835236, 0.429376,
		-0.916367, 0.198047, 0.347922,
		39.935638, 35.334877, 37.457230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131889, 34.618614, 36.908066>,  <40.577095, 35.196243, 37.213684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131889, 34.618614, 36.908066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162586, 34.306229, 36.660130>,  <41.181004, 34.118797, 36.511368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162586, 34.306229, 36.660130>,  <41.131889, 34.618614, 36.908066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162586, 34.306229, 36.660130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491212, -0.570609, 0.658116,
		-0.867653, 0.253973, -0.427406,
		0.076737, -0.780963, -0.619845,
		41.185608, 34.071941, 36.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434334, 34.329426, 36.849743>,  <41.131889, 34.618614, 36.908066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434334, 34.329426, 36.849743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697998, 34.043118, 36.757496>,  <40.856197, 33.871334, 36.702148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697998, 34.043118, 36.757496>,  <40.434334, 34.329426, 36.849743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697998, 34.043118, 36.757496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435279, -0.613226, 0.659156,
		-0.613226, -0.334104, -0.715772,
		-0.659156, 0.715772, 0.230618,
		40.895744, 33.828384, 36.688309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038033, 33.689560, 36.596249>,  <40.434334, 34.329426, 36.849743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038033, 33.689560, 36.596249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397415, 33.582741, 36.735653>,  <40.613045, 33.518650, 36.819298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397415, 33.582741, 36.735653>,  <40.038033, 33.689560, 36.596249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397415, 33.582741, 36.735653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428876, -0.703796, 0.566336,
		0.094044, -0.658297, -0.746860,
		0.898455, -0.267050, 0.348516,
		40.666950, 33.502625, 36.840206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974205, 32.967609, 36.738861>,  <40.038033, 33.689560, 36.596249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974205, 32.967609, 36.738861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296951, 33.088955, 36.941620>,  <40.490597, 33.161762, 37.063274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296951, 33.088955, 36.941620>,  <39.974205, 32.967609, 36.738861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296951, 33.088955, 36.941620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234033, -0.623711, 0.745797,
		0.542405, -0.720385, -0.432251,
		0.806861, 0.303363, 0.506898,
		40.539009, 33.179962, 37.093689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064926, 32.480198, 37.110165>,  <39.974205, 32.967609, 36.738861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064926, 32.480198, 37.110165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324760, 32.710232, 37.309090>,  <40.480659, 32.848251, 37.428444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324760, 32.710232, 37.309090>,  <40.064926, 32.480198, 37.110165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324760, 32.710232, 37.309090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193725, -0.507316, 0.839703,
		0.735193, -0.641801, -0.218138,
		0.649587, 0.575085, 0.497308,
		40.519638, 32.882755, 37.458282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318478, 32.097832, 37.642467>,  <40.064926, 32.480198, 37.110165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318478, 32.097832, 37.642467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383724, 32.471123, 37.770515>,  <40.422874, 32.695099, 37.847343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383724, 32.471123, 37.770515>,  <40.318478, 32.097832, 37.642467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383724, 32.471123, 37.770515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133007, -0.300703, 0.944398,
		0.977600, -0.196627, 0.075075,
		0.163119, 0.933228, 0.320120,
		40.432659, 32.751091, 37.866550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713737, 31.969822, 38.150524>,  <40.318478, 32.097832, 37.642467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713737, 31.969822, 38.150524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606030, 32.343521, 38.244053>,  <40.541405, 32.567741, 38.300171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606030, 32.343521, 38.244053>,  <40.713737, 31.969822, 38.150524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606030, 32.343521, 38.244053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055701, -0.257492, 0.964674,
		0.961451, 0.246738, 0.121375,
		-0.269275, 0.934247, 0.233822,
		40.525246, 32.623795, 38.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127293, 32.212246, 38.762756>,  <40.713737, 31.969822, 38.150524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127293, 32.212246, 38.762756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786690, 32.421970, 38.764641>,  <40.582329, 32.547806, 38.765770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786690, 32.421970, 38.764641>,  <41.127293, 32.212246, 38.762756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786690, 32.421970, 38.764641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139671, -0.235468, 0.961793,
		0.505391, 0.818321, 0.273735,
		-0.851512, 0.524315, 0.004708,
		40.531235, 32.579266, 38.766052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110626, 32.586967, 39.357868>,  <41.127293, 32.212246, 38.762756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110626, 32.586967, 39.357868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729580, 32.572067, 39.237114>,  <40.500954, 32.563126, 39.164661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729580, 32.572067, 39.237114>,  <41.110626, 32.586967, 39.357868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729580, 32.572067, 39.237114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279796, -0.282035, 0.917699,
		-0.119331, 0.958680, 0.258248,
		-0.952615, -0.037253, -0.301890,
		40.443794, 32.560890, 39.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787830, 32.945263, 39.818317>,  <41.110626, 32.586967, 39.357868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787830, 32.945263, 39.818317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530079, 32.686058, 39.655907>,  <40.375427, 32.530537, 39.558460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530079, 32.686058, 39.655907>,  <40.787830, 32.945263, 39.818317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530079, 32.686058, 39.655907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343904, -0.228675, 0.910735,
		-0.683017, 0.726490, -0.075502,
		-0.644374, -0.648013, -0.406031,
		40.336765, 32.491653, 39.534096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198406, 33.128998, 40.106735>,  <40.787830, 32.945263, 39.818317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198406, 33.128998, 40.106735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120693, 32.757607, 39.980125>,  <40.074066, 32.534771, 39.904160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120693, 32.757607, 39.980125>,  <40.198406, 33.128998, 40.106735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120693, 32.757607, 39.980125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515520, -0.177887, 0.838210,
		-0.834563, 0.326024, -0.444087,
		-0.194279, -0.928474, -0.316529,
		40.062408, 32.479065, 39.885166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499611, 32.996464, 40.336956>,  <40.198406, 33.128998, 40.106735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499611, 32.996464, 40.336956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655651, 32.639183, 40.247505>,  <39.749275, 32.424812, 40.193836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655651, 32.639183, 40.247505>,  <39.499611, 32.996464, 40.336956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655651, 32.639183, 40.247505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292099, -0.350372, 0.889897,
		-0.873213, -0.281826, -0.397584,
		0.390099, -0.893204, -0.223629,
		39.772682, 32.371223, 40.180416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069462, 32.512211, 40.639950>,  <39.499611, 32.996464, 40.336956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069462, 32.512211, 40.639950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396252, 32.290157, 40.577499>,  <39.592327, 32.156925, 40.540028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396252, 32.290157, 40.577499>,  <39.069462, 32.512211, 40.639950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396252, 32.290157, 40.577499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084294, -0.382794, 0.919980,
		-0.570479, -0.738440, -0.359527,
		0.816975, -0.555135, -0.156130,
		39.641346, 32.123615, 40.530659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874352, 31.767994, 40.795395>,  <39.069462, 32.512211, 40.639950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874352, 31.767994, 40.795395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271862, 31.803186, 40.822720>,  <39.510368, 31.824301, 40.839115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271862, 31.803186, 40.822720>,  <38.874352, 31.767994, 40.795395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271862, 31.803186, 40.822720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050098, -0.194753, 0.979572,
		0.099487, -0.976899, -0.189133,
		0.993777, 0.087979, 0.068316,
		39.569996, 31.829580, 40.843216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413242, 31.097052, 40.968437>,  <38.874352, 31.767994, 40.795395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413242, 31.097052, 40.968437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034916, 30.996075, 41.050129>,  <37.807922, 30.935490, 41.099144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034916, 30.996075, 41.050129>,  <38.413242, 31.097052, 40.968437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034916, 30.996075, 41.050129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282525, 0.329752, -0.900801,
		0.160051, -0.909691, -0.383204,
		-0.945814, -0.252439, 0.204233,
		37.751171, 30.920341, 41.111401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090466, 30.618395, 40.376194>,  <38.413242, 31.097052, 40.968437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090466, 30.618395, 40.376194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802422, 30.797270, 40.588406>,  <37.629593, 30.904594, 40.715733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802422, 30.797270, 40.588406>,  <38.090466, 30.618395, 40.376194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802422, 30.797270, 40.588406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405909, 0.348616, -0.844810,
		-0.562740, -0.823705, -0.069525,
		-0.720112, 0.447188, 0.530530,
		37.586388, 30.931427, 40.747566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384499, 30.572451, 39.930058>,  <38.090466, 30.618395, 40.376194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384499, 30.572451, 39.930058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300842, 30.872440, 40.181072>,  <37.250648, 31.052433, 40.331680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300842, 30.872440, 40.181072>,  <37.384499, 30.572451, 39.930058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300842, 30.872440, 40.181072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458979, 0.491369, -0.740199,
		-0.863481, -0.442830, 0.241457,
		-0.209138, 0.749972, 0.627538,
		37.238102, 31.097431, 40.369335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652134, 30.534615, 40.013424>,  <37.384499, 30.572451, 39.930058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652134, 30.534615, 40.013424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777267, 30.899401, 40.119595>,  <36.852348, 31.118273, 40.183296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777267, 30.899401, 40.119595>,  <36.652134, 30.534615, 40.013424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777267, 30.899401, 40.119595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660153, 0.409688, -0.629566,
		-0.682886, 0.021727, 0.730202,
		0.312833, 0.911967, 0.265426,
		36.871117, 31.172991, 40.199223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071468, 30.915737, 40.177242>,  <36.652134, 30.534615, 40.013424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071468, 30.915737, 40.177242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316681, 31.227993, 40.128586>,  <36.463810, 31.415346, 40.099392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316681, 31.227993, 40.128586>,  <36.071468, 30.915737, 40.177242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316681, 31.227993, 40.128586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699722, 0.464968, -0.542396,
		-0.366854, 0.417624, 0.831269,
		0.613031, 0.780638, -0.121646,
		36.500591, 31.462185, 40.092091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735653, 31.493229, 40.168453>,  <36.071468, 30.915737, 40.177242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735653, 31.493229, 40.168453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 31.639032, 39.987923>,  <36.256943, 31.726515, 39.879604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 31.639032, 39.987923>,  <35.735653, 31.493229, 40.168453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061459, 31.639032, 39.987923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579333, 0.470062, -0.665894,
		-0.030571, 0.803851, 0.594045,
		0.814517, 0.364507, -0.451327,
		36.305813, 31.748384, 39.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655975, 32.241955, 39.871975>,  <35.735653, 31.493229, 40.168453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655975, 32.241955, 39.871975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955505, 32.092598, 39.652946>,  <36.135223, 32.002983, 39.521530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955505, 32.092598, 39.652946>,  <35.655975, 32.241955, 39.871975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955505, 32.092598, 39.652946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368966, 0.451464, -0.812431,
		0.550562, 0.810408, 0.200302,
		0.748830, -0.373389, -0.547572,
		36.180153, 31.980581, 39.488674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033791, 32.844631, 39.527275>,  <35.655975, 32.241955, 39.871975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033791, 32.844631, 39.527275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057655, 32.494995, 39.334442>,  <36.071972, 32.285213, 39.218742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057655, 32.494995, 39.334442>,  <36.033791, 32.844631, 39.527275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057655, 32.494995, 39.334442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396828, 0.422372, -0.814941,
		0.915952, 0.239920, -0.321668,
		0.059657, -0.874094, -0.482079,
		36.075554, 32.232765, 39.189819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109249, 33.172634, 38.926517>,  <36.033791, 32.844631, 39.527275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109249, 33.172634, 38.926517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031441, 32.788723, 38.845543>,  <35.984756, 32.558376, 38.796959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031441, 32.788723, 38.845543>,  <36.109249, 33.172634, 38.926517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031441, 32.788723, 38.845543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286517, 0.252972, -0.924074,
		0.938120, -0.121750, -0.324203,
		-0.194521, -0.959782, -0.202435,
		35.973083, 32.500790, 38.784813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256222, 33.072884, 38.188225>,  <36.109249, 33.172634, 38.926517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256222, 33.072884, 38.188225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048908, 32.737183, 38.254005>,  <35.924522, 32.535763, 38.293476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048908, 32.737183, 38.254005>,  <36.256222, 33.072884, 38.188225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048908, 32.737183, 38.254005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384177, 0.056674, -0.921518,
		0.764063, -0.540786, -0.351793,
		-0.518282, -0.839249, 0.164455,
		35.893425, 32.485409, 38.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191273, 32.690685, 37.512489>,  <36.256222, 33.072884, 38.188225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191273, 32.690685, 37.512489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878296, 32.565380, 37.727768>,  <35.690510, 32.490196, 37.856934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878296, 32.565380, 37.727768>,  <36.191273, 32.690685, 37.512489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878296, 32.565380, 37.727768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599351, 0.144243, -0.787383,
		0.169026, -0.938648, -0.300615,
		-0.782438, -0.313262, 0.538199,
		35.643566, 32.471401, 37.889229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867947, 32.163971, 37.102322>,  <36.191273, 32.690685, 37.512489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867947, 32.163971, 37.102322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597832, 32.312733, 37.357094>,  <35.435764, 32.401989, 37.509956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597832, 32.312733, 37.357094>,  <35.867947, 32.163971, 37.102322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597832, 32.312733, 37.357094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659465, 0.082271, -0.747220,
		-0.330296, -0.924617, 0.189702,
		-0.675285, 0.371906, 0.636926,
		35.395245, 32.424305, 37.548172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.427197, 28.181377, 43.899326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209713, 28.479570, 44.053543>,  <38.079224, 28.658485, 44.146072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209713, 28.479570, 44.053543>,  <38.427197, 28.181377, 43.899326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209713, 28.479570, 44.053543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077734, 0.412670, -0.907557,
		-0.835668, -0.523414, -0.166422,
		-0.543706, 0.745480, 0.385543,
		38.046600, 28.703215, 44.169205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898457, 28.185061, 43.435383>,  <38.427197, 28.181377, 43.899326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898457, 28.185061, 43.435383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871887, 28.540482, 43.616959>,  <37.855946, 28.753735, 43.725906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871887, 28.540482, 43.616959>,  <37.898457, 28.185061, 43.435383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871887, 28.540482, 43.616959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200583, 0.433768, -0.878414,
		-0.977422, -0.149399, 0.149417,
		-0.066422, 0.888552, 0.453942,
		37.851959, 28.807047, 43.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260757, 28.489700, 43.166512>,  <37.898457, 28.185061, 43.435383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260757, 28.489700, 43.166512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510197, 28.770657, 43.303780>,  <37.659859, 28.939232, 43.386143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510197, 28.770657, 43.303780>,  <37.260757, 28.489700, 43.166512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510197, 28.770657, 43.303780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264318, 0.602576, -0.753019,
		-0.735704, 0.378874, 0.561421,
		0.623599, 0.702393, 0.343175,
		37.697277, 28.981375, 43.406731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915131, 29.116337, 43.164482>,  <37.260757, 28.489700, 43.166512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915131, 29.116337, 43.164482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294891, 29.241289, 43.177505>,  <37.522747, 29.316261, 43.185318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294891, 29.241289, 43.177505>,  <36.915131, 29.116337, 43.164482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294891, 29.241289, 43.177505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237589, 0.782124, -0.576050,
		-0.205410, 0.539166, 0.816766,
		0.949399, 0.312381, 0.032556,
		37.579712, 29.335003, 43.187271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837193, 29.812933, 43.125969>,  <36.915131, 29.116337, 43.164482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837193, 29.812933, 43.125969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227833, 29.793480, 43.042179>,  <37.462219, 29.781807, 42.991905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227833, 29.793480, 43.042179>,  <36.837193, 29.812933, 43.125969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227833, 29.793480, 43.042179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126554, 0.657573, -0.742685,
		0.173864, 0.751819, 0.636034,
		0.976604, -0.048634, -0.209474,
		37.520813, 29.778889, 42.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086163, 30.480232, 42.989410>,  <36.837193, 29.812933, 43.125969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086163, 30.480232, 42.989410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363358, 30.257095, 42.806728>,  <37.529675, 30.123213, 42.697117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363358, 30.257095, 42.806728>,  <37.086163, 30.480232, 42.989410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363358, 30.257095, 42.806728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050638, 0.669577, -0.741015,
		0.719171, 0.490386, 0.492255,
		0.692985, -0.557843, -0.456708,
		37.571255, 30.089743, 42.669716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555607, 30.959391, 42.797714>,  <37.086163, 30.480232, 42.989410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555607, 30.959391, 42.797714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608799, 30.645815, 42.555141>,  <37.640717, 30.457670, 42.409599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608799, 30.645815, 42.555141>,  <37.555607, 30.959391, 42.797714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608799, 30.645815, 42.555141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014892, 0.613375, -0.789652,
		0.991006, 0.095979, 0.093242,
		0.132982, -0.783938, -0.606429,
		37.648693, 30.410633, 42.373211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008167, 31.234934, 42.345901>,  <37.555607, 30.959391, 42.797714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008167, 31.234934, 42.345901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845856, 30.924410, 42.152950>,  <37.748470, 30.738096, 42.037178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845856, 30.924410, 42.152950>,  <38.008167, 31.234934, 42.345901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845856, 30.924410, 42.152950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073450, 0.553774, -0.829421,
		0.911016, -0.301130, -0.281729,
		-0.405778, -0.776309, -0.482378,
		37.724121, 30.691517, 42.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392166, 31.179777, 41.696869>,  <38.008167, 31.234934, 42.345901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392166, 31.179777, 41.696869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060013, 30.976738, 41.604954>,  <37.860722, 30.854914, 41.549805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060013, 30.976738, 41.604954>,  <38.392166, 31.179777, 41.696869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060013, 30.976738, 41.604954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140274, 0.589567, -0.795445,
		0.539240, -0.628295, -0.560772,
		-0.830387, -0.507598, -0.229785,
		37.810898, 30.824457, 41.536018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045227, 31.251366, 41.399807>,  <38.392166, 31.179777, 41.696869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045227, 31.251366, 41.399807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381077, 31.462393, 41.348118>,  <39.582588, 31.589010, 41.317104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381077, 31.462393, 41.348118>,  <39.045227, 31.251366, 41.399807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381077, 31.462393, 41.348118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279169, -0.215074, 0.935846,
		0.465931, -0.821836, -0.327863,
		0.839627, 0.527569, -0.129221,
		39.632965, 31.620663, 41.309353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643772, 30.860624, 41.622242>,  <39.045227, 31.251366, 41.399807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643772, 30.860624, 41.622242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734695, 31.248615, 41.656815>,  <39.789249, 31.481411, 41.677559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734695, 31.248615, 41.656815>,  <39.643772, 30.860624, 41.622242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734695, 31.248615, 41.656815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380626, -0.170193, 0.908933,
		0.896356, -0.173710, -0.407885,
		0.227310, 0.969979, 0.086435,
		39.802887, 31.539610, 41.682747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295700, 30.867449, 41.874821>,  <39.643772, 30.860624, 41.622242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295700, 30.867449, 41.874821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162212, 31.235260, 41.957867>,  <40.082119, 31.455946, 42.007694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162212, 31.235260, 41.957867>,  <40.295700, 30.867449, 41.874821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162212, 31.235260, 41.957867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539783, 0.005841, 0.841784,
		0.772829, 0.392986, -0.498294,
		-0.333720, 0.919526, 0.207614,
		40.062096, 31.511118, 42.020149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752163, 31.125900, 42.331341>,  <40.295700, 30.867449, 41.874821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752163, 31.125900, 42.331341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.429096, 31.355873, 42.383682>,  <40.235256, 31.493856, 42.415089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.429096, 31.355873, 42.383682>,  <40.752163, 31.125900, 42.331341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429096, 31.355873, 42.383682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279242, 0.177505, 0.943672,
		0.519319, 0.798715, -0.303910,
		-0.807670, 0.574931, 0.130854,
		40.186794, 31.528353, 42.422939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992119, 31.597105, 42.795090>,  <40.752163, 31.125900, 42.331341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992119, 31.597105, 42.795090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592686, 31.597603, 42.816387>,  <40.353027, 31.597902, 42.829166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592686, 31.597603, 42.816387>,  <40.992119, 31.597105, 42.795090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592686, 31.597603, 42.816387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053145, -0.041314, 0.997732,
		0.003444, 0.999146, 0.041189,
		-0.998581, 0.001247, 0.053242,
		40.293110, 31.597977, 42.832359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854511, 32.140930, 43.280403>,  <40.992119, 31.597105, 42.795090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854511, 32.140930, 43.280403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528103, 31.910337, 43.263573>,  <40.332256, 31.771982, 43.253475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528103, 31.910337, 43.263573>,  <40.854511, 32.140930, 43.280403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528103, 31.910337, 43.263573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102736, 0.073015, 0.992025,
		-0.568814, 0.813840, -0.118808,
		-0.816025, -0.576484, -0.042079,
		40.283295, 31.737392, 43.250950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557823, 32.264828, 43.916904>,  <40.854511, 32.140930, 43.280403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557823, 32.264828, 43.916904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352352, 31.944777, 43.793015>,  <40.229069, 31.752745, 43.718681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352352, 31.944777, 43.793015>,  <40.557823, 32.264828, 43.916904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352352, 31.944777, 43.793015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195125, -0.242593, 0.950303,
		-0.835503, 0.548581, -0.031512,
		-0.513673, -0.800130, -0.309729,
		40.198250, 31.704737, 43.700096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952183, 32.182583, 44.377384>,  <40.557823, 32.264828, 43.916904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952183, 32.182583, 44.377384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.026695, 31.812500, 44.245144>,  <40.071404, 31.590450, 44.165798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.026695, 31.812500, 44.245144>,  <39.952183, 32.182583, 44.377384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026695, 31.812500, 44.245144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125238, -0.356105, 0.926015,
		-0.974482, -0.131094, -0.182206,
		0.186279, -0.925205, -0.330600,
		40.082581, 31.534939, 44.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467182, 31.910166, 44.725021>,  <39.952183, 32.182583, 44.377384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467182, 31.910166, 44.725021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710140, 31.607279, 44.628944>,  <39.855915, 31.425547, 44.571301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710140, 31.607279, 44.628944>,  <39.467182, 31.910166, 44.725021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710140, 31.607279, 44.628944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079895, -0.359047, 0.929894,
		-0.790371, -0.545624, -0.278581,
		0.607396, -0.757219, -0.240188,
		39.892361, 31.380114, 44.556889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121193, 31.228695, 44.804214>,  <39.467182, 31.910166, 44.725021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121193, 31.228695, 44.804214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.512039, 31.146992, 44.827934>,  <39.746548, 31.097971, 44.842167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.512039, 31.146992, 44.827934>,  <39.121193, 31.228695, 44.804214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512039, 31.146992, 44.827934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153206, -0.482545, 0.862368,
		-0.147529, -0.851721, -0.502798,
		0.977120, -0.204256, 0.059299,
		39.805176, 31.085714, 44.845722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094746, 30.682737, 45.232590>,  <39.121193, 31.228695, 44.804214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094746, 30.682737, 45.232590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487823, 30.755959, 45.221275>,  <39.723671, 30.799891, 45.214485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487823, 30.755959, 45.221275>,  <39.094746, 30.682737, 45.232590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487823, 30.755959, 45.221275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139960, -0.633795, 0.760733,
		0.121326, -0.751528, -0.648448,
		0.982696, 0.183053, -0.028288,
		39.782631, 30.810875, 45.212788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371384, 30.028091, 45.274685>,  <39.094746, 30.682737, 45.232590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371384, 30.028091, 45.274685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655346, 30.281769, 45.397217>,  <39.825722, 30.433975, 45.470734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655346, 30.281769, 45.397217>,  <39.371384, 30.028091, 45.274685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655346, 30.281769, 45.397217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180996, -0.584609, 0.790869,
		0.680645, -0.505996, -0.529802,
		0.709903, 0.634193, 0.306328,
		39.868317, 30.472027, 45.489117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836243, 29.603722, 45.597881>,  <39.371384, 30.028091, 45.274685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836243, 29.603722, 45.597881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.936901, 29.966816, 45.732159>,  <39.997295, 30.184673, 45.812725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.936901, 29.966816, 45.732159>,  <39.836243, 29.603722, 45.597881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936901, 29.966816, 45.732159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276997, -0.399894, 0.873704,
		0.927333, -0.126881, -0.352073,
		0.251648, 0.907737, 0.335689,
		40.012394, 30.239138, 45.832867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566715, 29.560760, 45.762901>,  <39.836243, 29.603722, 45.597881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566715, 29.560760, 45.762901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.401821, 29.867851, 45.959129>,  <40.302887, 30.052107, 46.076866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.401821, 29.867851, 45.959129>,  <40.566715, 29.560760, 45.762901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401821, 29.867851, 45.959129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349803, -0.363810, 0.863296,
		0.841251, 0.527480, -0.118580,
		-0.412231, 0.767728, 0.490570,
		40.278152, 30.098169, 46.106300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.171783, 34.537498, 49.144409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363331, 34.336773, 48.856281>,  <35.478260, 34.216335, 48.683403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363331, 34.336773, 48.856281>,  <35.171783, 34.537498, 49.144409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363331, 34.336773, 48.856281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199153, 0.737030, -0.645852,
		0.855000, 0.452732, 0.253001,
		0.478867, -0.501817, -0.720323,
		35.506992, 34.186230, 48.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309418, 35.023819, 48.694847>,  <35.171783, 34.537498, 49.144409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309418, 35.023819, 48.694847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397999, 34.736988, 48.430496>,  <35.451145, 34.564888, 48.271885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397999, 34.736988, 48.430496>,  <35.309418, 35.023819, 48.694847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397999, 34.736988, 48.430496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254046, 0.611880, -0.749041,
		0.941499, 0.333767, -0.046671,
		0.221449, -0.717078, -0.660877,
		35.464432, 34.521866, 48.232231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539097, 35.379642, 48.159523>,  <35.309418, 35.023819, 48.694847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539097, 35.379642, 48.159523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467670, 35.022217, 47.994766>,  <35.424812, 34.807762, 47.895912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467670, 35.022217, 47.994766>,  <35.539097, 35.379642, 48.159523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467670, 35.022217, 47.994766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200601, 0.442889, -0.873847,
		0.963261, -0.073416, -0.258336,
		-0.178569, -0.893566, -0.411890,
		35.414101, 34.754147, 47.871201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084805, 35.333755, 47.613632>,  <35.539097, 35.379642, 48.159523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084805, 35.333755, 47.613632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775398, 35.096565, 47.524132>,  <35.589756, 34.954250, 47.470432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775398, 35.096565, 47.524132>,  <36.084805, 35.333755, 47.613632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775398, 35.096565, 47.524132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019918, 0.375612, -0.926563,
		0.633469, -0.712250, -0.302351,
		-0.773511, -0.592972, -0.223752,
		35.543346, 34.918674, 47.457005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165539, 35.068977, 46.948315>,  <36.084805, 35.333755, 47.613632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165539, 35.068977, 46.948315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774788, 35.003139, 47.002884>,  <35.540337, 34.963634, 47.035625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774788, 35.003139, 47.002884>,  <36.165539, 35.068977, 46.948315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774788, 35.003139, 47.002884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169110, 0.204589, -0.964129,
		0.130783, -0.964910, -0.227694,
		-0.976882, -0.164597, 0.136419,
		35.481724, 34.953762, 47.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965141, 34.517193, 46.506866>,  <36.165539, 35.068977, 46.948315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965141, 34.517193, 46.506866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639309, 34.738319, 46.577126>,  <35.443810, 34.870995, 46.619282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639309, 34.738319, 46.577126>,  <35.965141, 34.517193, 46.506866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639309, 34.738319, 46.577126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131588, 0.118804, -0.984160,
		-0.564929, -0.824790, -0.024031,
		-0.814580, 0.552818, 0.175648,
		35.394936, 34.904163, 46.629822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474136, 34.290604, 45.931210>,  <35.965141, 34.517193, 46.506866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474136, 34.290604, 45.931210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350761, 34.641079, 46.079350>,  <35.276737, 34.851364, 46.168236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350761, 34.641079, 46.079350>,  <35.474136, 34.290604, 45.931210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350761, 34.641079, 46.079350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231821, 0.308360, -0.922590,
		-0.922565, -0.370417, 0.108010,
		-0.308437, 0.876188, 0.370352,
		35.258232, 34.903934, 46.190456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813526, 34.381336, 45.679123>,  <35.474136, 34.290604, 45.931210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813526, 34.381336, 45.679123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957165, 34.742573, 45.773342>,  <35.043346, 34.959312, 45.829876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957165, 34.742573, 45.773342>,  <34.813526, 34.381336, 45.679123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957165, 34.742573, 45.773342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190384, 0.317959, -0.928793,
		-0.913677, 0.288678, 0.286111,
		0.359094, 0.903087, 0.235552,
		35.064892, 35.013500, 45.844009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554974, 34.777504, 45.156841>,  <34.813526, 34.381336, 45.679123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554974, 34.777504, 45.156841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799343, 35.053162, 45.312714>,  <34.945965, 35.218555, 45.406239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799343, 35.053162, 45.312714>,  <34.554974, 34.777504, 45.156841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799343, 35.053162, 45.312714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022041, 0.506836, -0.861761,
		-0.791380, 0.517884, 0.324830,
		0.610928, 0.689140, 0.389685,
		34.982620, 35.259903, 45.429619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211483, 35.341694, 45.038986>,  <34.554974, 34.777504, 45.156841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211483, 35.341694, 45.038986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600708, 35.427849, 45.071850>,  <34.834244, 35.479542, 45.091568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600708, 35.427849, 45.071850>,  <34.211483, 35.341694, 45.038986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600708, 35.427849, 45.071850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012872, 0.305067, -0.952244,
		-0.230164, 0.927654, 0.294078,
		0.973067, 0.215387, 0.082156,
		34.892628, 35.492466, 45.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295349, 35.979412, 44.758125>,  <34.211483, 35.341694, 45.038986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295349, 35.979412, 44.758125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663433, 35.824722, 44.733929>,  <34.884285, 35.731907, 44.719410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663433, 35.824722, 44.733929>,  <34.295349, 35.979412, 44.758125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663433, 35.824722, 44.733929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020015, 0.200831, -0.979421,
		0.390914, 0.900062, 0.192547,
		0.920209, -0.386724, -0.060493,
		34.939495, 35.708706, 44.715782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685486, 36.503647, 44.379616>,  <34.295349, 35.979412, 44.758125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685486, 36.503647, 44.379616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898384, 36.166687, 44.345974>,  <35.026123, 35.964512, 44.325790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898384, 36.166687, 44.345974>,  <34.685486, 36.503647, 44.379616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898384, 36.166687, 44.345974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071028, 0.143430, -0.987108,
		0.843604, 0.519412, 0.136174,
		0.532247, -0.842401, -0.084105,
		35.058060, 35.913967, 44.320744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260799, 36.683167, 43.966473>,  <34.685486, 36.503647, 44.379616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260799, 36.683167, 43.966473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256496, 36.283905, 43.942532>,  <35.253914, 36.044350, 43.928165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256496, 36.283905, 43.942532>,  <35.260799, 36.683167, 43.966473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256496, 36.283905, 43.942532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138962, 0.057783, -0.988611,
		0.990239, -0.018955, 0.138083,
		-0.010760, -0.998149, -0.059854,
		35.253269, 35.984459, 43.924576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862972, 36.414780, 43.687862>,  <35.260799, 36.683167, 43.966473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862972, 36.414780, 43.687862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582333, 36.137566, 43.621578>,  <35.413948, 35.971237, 43.581806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582333, 36.137566, 43.621578>,  <35.862972, 36.414780, 43.687862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582333, 36.137566, 43.621578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103004, 0.131475, -0.985953,
		0.705084, -0.708816, -0.020858,
		-0.701603, -0.693032, -0.165712,
		35.371853, 35.929657, 43.571865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557755, 35.961617, 43.866951>,  <35.862972, 36.414780, 43.687862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557755, 35.961617, 43.866951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949017, 36.044750, 43.868629>,  <37.183773, 36.094631, 43.869637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949017, 36.044750, 43.868629>,  <36.557755, 35.961617, 43.866951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949017, 36.044750, 43.868629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066154, -0.330375, 0.941529,
		0.197071, -0.920683, -0.336907,
		0.978154, 0.207836, 0.004201,
		37.242462, 36.107101, 43.869888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836655, 35.416893, 44.267681>,  <36.557755, 35.961617, 43.866951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836655, 35.416893, 44.267681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132156, 35.686344, 44.259075>,  <37.309460, 35.848015, 44.253914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132156, 35.686344, 44.259075>,  <36.836655, 35.416893, 44.267681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132156, 35.686344, 44.259075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254764, -0.249561, 0.934245,
		0.623964, -0.695662, -0.355982,
		0.738758, 0.673627, -0.021513,
		37.353783, 35.888432, 44.252621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482864, 35.056129, 44.387363>,  <36.836655, 35.416893, 44.267681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482864, 35.056129, 44.387363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570274, 35.434177, 44.484516>,  <37.622723, 35.661007, 44.542809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570274, 35.434177, 44.484516>,  <37.482864, 35.056129, 44.387363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570274, 35.434177, 44.484516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334396, -0.306354, 0.891250,
		0.916747, -0.113545, -0.382991,
		0.218528, 0.945122, 0.242880,
		37.635834, 35.717712, 44.557381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231617, 35.188484, 44.536461>,  <37.482864, 35.056129, 44.387363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231617, 35.188484, 44.536461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037079, 35.471344, 44.741753>,  <37.920357, 35.641060, 44.864925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037079, 35.471344, 44.741753>,  <38.231617, 35.188484, 44.536461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037079, 35.471344, 44.741753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504984, -0.251859, 0.825565,
		0.713060, 0.660685, -0.234609,
		-0.486350, 0.707151, 0.513226,
		37.891174, 35.683491, 44.895721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701241, 35.518776, 45.025368>,  <38.231617, 35.188484, 44.536461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701241, 35.518776, 45.025368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342731, 35.607117, 45.179207>,  <38.127625, 35.660122, 45.271511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342731, 35.607117, 45.179207>,  <38.701241, 35.518776, 45.025368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342731, 35.607117, 45.179207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311720, -0.303145, 0.900519,
		0.315468, 0.927000, 0.202858,
		-0.896276, 0.220850, 0.384597,
		38.073849, 35.673370, 45.294586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845207, 35.842903, 45.578224>,  <38.701241, 35.518776, 45.025368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845207, 35.842903, 45.578224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464985, 35.732952, 45.636044>,  <38.236851, 35.666981, 45.670734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464985, 35.732952, 45.636044>,  <38.845207, 35.842903, 45.578224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464985, 35.732952, 45.636044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234921, -0.331960, 0.913572,
		-0.203132, 0.902356, 0.380119,
		-0.950552, -0.274874, 0.144551,
		38.179821, 35.650490, 45.679409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884792, 35.849941, 46.290928>,  <38.845207, 35.842903, 45.578224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884792, 35.849941, 46.290928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525429, 35.696903, 46.204697>,  <38.309811, 35.605080, 46.152958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525429, 35.696903, 46.204697>,  <38.884792, 35.849941, 46.290928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525429, 35.696903, 46.204697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046271, -0.405685, 0.912841,
		-0.436707, 0.830083, 0.346770,
		-0.898413, -0.382599, -0.215574,
		38.255905, 35.582123, 46.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414833, 36.086769, 46.850967>,  <38.884792, 35.849941, 46.290928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414833, 36.086769, 46.850967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272812, 35.751869, 46.684620>,  <38.187599, 35.550930, 46.584812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272812, 35.751869, 46.684620>,  <38.414833, 36.086769, 46.850967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272812, 35.751869, 46.684620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003133, -0.445913, 0.895071,
		-0.934840, 0.316497, 0.160947,
		-0.355056, -0.837252, -0.415866,
		38.166294, 35.500694, 46.559860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840290, 35.840000, 47.269238>,  <38.414833, 36.086769, 46.850967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840290, 35.840000, 47.269238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940689, 35.508751, 47.068748>,  <38.000927, 35.310001, 46.948456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940689, 35.508751, 47.068748>,  <37.840290, 35.840000, 47.269238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940689, 35.508751, 47.068748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102951, -0.537694, 0.836831,
		-0.962498, -0.158441, -0.220215,
		0.250997, -0.828119, -0.501218,
		38.015987, 35.260315, 46.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438038, 35.420132, 47.555332>,  <37.840290, 35.840000, 47.269238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438038, 35.420132, 47.555332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737450, 35.218739, 47.382725>,  <37.917095, 35.097900, 47.279160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737450, 35.218739, 47.382725>,  <37.438038, 35.420132, 47.555332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737450, 35.218739, 47.382725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031205, -0.676781, 0.735523,
		-0.662359, -0.537101, -0.522306,
		0.748537, -0.503479, -0.431512,
		37.962009, 35.067692, 47.253269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340652, 34.792038, 47.741451>,  <37.438038, 35.420132, 47.555332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340652, 34.792038, 47.741451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728104, 34.810143, 47.643715>,  <37.960575, 34.821003, 47.585072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728104, 34.810143, 47.643715>,  <37.340652, 34.792038, 47.741451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728104, 34.810143, 47.643715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218058, -0.626350, 0.748423,
		-0.119172, -0.778227, -0.616571,
		0.968633, 0.045257, -0.244342,
		38.018692, 34.823719, 47.570412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566132, 34.095749, 47.874718>,  <37.340652, 34.792038, 47.741451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566132, 34.095749, 47.874718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916897, 34.287006, 47.855160>,  <38.127357, 34.401760, 47.843426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916897, 34.287006, 47.855160>,  <37.566132, 34.095749, 47.874718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916897, 34.287006, 47.855160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310737, -0.486372, 0.816630,
		0.366687, -0.731311, -0.575087,
		0.876917, 0.478148, -0.048899,
		38.179974, 34.430450, 47.840488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119514, 33.569817, 47.967155>,  <37.566132, 34.095749, 47.874718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119514, 33.569817, 47.967155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 33.929855, 48.055862>,  <38.359528, 34.145878, 48.109089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 33.929855, 48.055862>,  <38.119514, 33.569817, 47.967155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269524, 33.929855, 48.055862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473962, -0.391771, 0.788591,
		0.796692, -0.190629, -0.573535,
		0.375022, 0.900098, 0.221770,
		38.382030, 34.199886, 48.122395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810432, 33.441616, 47.988735>,  <38.119514, 33.569817, 47.967155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810432, 33.441616, 47.988735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712234, 33.759670, 48.210545>,  <38.653316, 33.950500, 48.343632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712234, 33.759670, 48.210545>,  <38.810432, 33.441616, 47.988735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712234, 33.759670, 48.210545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536256, -0.365143, 0.760986,
		0.807565, 0.484186, -0.336753,
		-0.245496, 0.795131, 0.554524,
		38.638584, 33.998211, 48.376904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554600, 33.414448, 47.785217>,  <38.810432, 33.441616, 47.988735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554600, 33.414448, 47.785217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.953957, 33.394173, 47.775047>,  <40.193569, 33.382008, 47.768944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.953957, 33.394173, 47.775047>,  <39.554600, 33.414448, 47.785217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953957, 33.394173, 47.775047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005276, 0.529484, -0.848303,
		0.056463, 0.846804, 0.528900,
		0.998391, -0.050688, -0.025428,
		40.253475, 33.378967, 47.767418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798798, 34.112350, 47.676022>,  <39.554600, 33.414448, 47.785217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798798, 34.112350, 47.676022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087170, 33.862846, 47.555233>,  <40.260193, 33.713142, 47.482761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087170, 33.862846, 47.555233>,  <39.798798, 34.112350, 47.676022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087170, 33.862846, 47.555233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057075, 0.380817, -0.922887,
		0.690657, 0.682569, 0.238940,
		0.720926, -0.623762, -0.301971,
		40.303448, 33.675716, 47.464642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190792, 34.525669, 47.222435>,  <39.798798, 34.112350, 47.676022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190792, 34.525669, 47.222435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295036, 34.152889, 47.121593>,  <40.357582, 33.929222, 47.061089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295036, 34.152889, 47.121593>,  <40.190792, 34.525669, 47.222435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295036, 34.152889, 47.121593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046899, 0.273039, -0.960859,
		0.964305, 0.238585, 0.114864,
		0.260609, -0.931948, -0.252104,
		40.373219, 33.873306, 47.045963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649700, 34.652657, 46.627056>,  <40.190792, 34.525669, 47.222435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649700, 34.652657, 46.627056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595570, 34.258400, 46.586678>,  <40.563091, 34.021847, 46.562450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595570, 34.258400, 46.586678>,  <40.649700, 34.652657, 46.627056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595570, 34.258400, 46.586678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092435, 0.113997, -0.989172,
		0.986480, -0.124529, -0.106535,
		-0.135325, -0.985646, -0.100945,
		40.554974, 33.962708, 46.556393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126617, 34.388805, 46.117195>,  <40.649700, 34.652657, 46.627056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126617, 34.388805, 46.117195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.831497, 34.120064, 46.143330>,  <40.654427, 33.958820, 46.159012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.831497, 34.120064, 46.143330>,  <41.126617, 34.388805, 46.117195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831497, 34.120064, 46.143330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087229, -0.001088, -0.996188,
		0.669361, -0.740685, -0.057802,
		-0.737799, -0.671851, 0.065337,
		40.610157, 33.918507, 46.162930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258053, 33.930920, 45.601032>,  <41.126617, 34.388805, 46.117195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258053, 33.930920, 45.601032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.875290, 33.867508, 45.698353>,  <40.645634, 33.829460, 45.756744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.875290, 33.867508, 45.698353>,  <41.258053, 33.930920, 45.601032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875290, 33.867508, 45.698353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254406, 0.053671, -0.965607,
		0.140022, -0.985894, -0.091690,
		-0.956908, -0.158533, 0.243302,
		40.588219, 33.819950, 45.771343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082882, 33.299282, 45.312443>,  <41.258053, 33.930920, 45.601032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082882, 33.299282, 45.312443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.734715, 33.491180, 45.356670>,  <40.525814, 33.606319, 45.383205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.734715, 33.491180, 45.356670>,  <41.082882, 33.299282, 45.312443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734715, 33.491180, 45.356670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203703, -0.146485, -0.968012,
		-0.448200, -0.865095, 0.225228,
		-0.870415, 0.479743, 0.110568,
		40.473591, 33.635105, 45.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489510, 32.827797, 44.920147>,  <41.082882, 33.299282, 45.312443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489510, 32.827797, 44.920147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367390, 33.206234, 44.963417>,  <40.294117, 33.433296, 44.989380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367390, 33.206234, 44.963417>,  <40.489510, 32.827797, 44.920147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367390, 33.206234, 44.963417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444872, -0.041264, -0.894643,
		-0.841951, -0.321258, 0.433488,
		-0.305299, 0.946092, 0.108176,
		40.275799, 33.490063, 44.995869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855545, 32.886204, 44.534630>,  <40.489510, 32.827797, 44.920147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855545, 32.886204, 44.534630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976475, 33.265278, 44.575596>,  <40.049034, 33.492722, 44.600174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976475, 33.265278, 44.575596>,  <39.855545, 32.886204, 44.534630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976475, 33.265278, 44.575596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363277, 0.213883, -0.906799,
		-0.881266, 0.236945, 0.408935,
		0.302326, 0.947687, 0.102411,
		40.067173, 33.549583, 44.606319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430180, 33.361656, 44.125713>,  <39.855545, 32.886204, 44.534630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430180, 33.361656, 44.125713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762032, 33.573616, 44.196056>,  <39.961143, 33.700790, 44.238262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762032, 33.573616, 44.196056>,  <39.430180, 33.361656, 44.125713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762032, 33.573616, 44.196056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073780, 0.416272, -0.906242,
		-0.553423, 0.738866, 0.384447,
		0.829626, 0.529900, 0.175861,
		40.010918, 33.732586, 44.248814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331120, 33.792522, 43.703457>,  <39.430180, 33.361656, 44.125713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331120, 33.792522, 43.703457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715252, 33.878639, 43.774353>,  <39.945732, 33.930309, 43.816891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715252, 33.878639, 43.774353>,  <39.331120, 33.792522, 43.703457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715252, 33.878639, 43.774353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088443, 0.367631, -0.925757,
		-0.264466, 0.904709, 0.334006,
		0.960331, 0.215291, 0.177241,
		40.003349, 33.943226, 43.827526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423340, 34.493286, 43.514851>,  <39.331120, 33.792522, 43.703457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423340, 34.493286, 43.514851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.775818, 34.307796, 43.478081>,  <39.987305, 34.196503, 43.456020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.775818, 34.307796, 43.478081>,  <39.423340, 34.493286, 43.514851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775818, 34.307796, 43.478081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054718, 0.293180, -0.954490,
		0.469572, 0.836064, 0.283724,
		0.881197, -0.463727, -0.091921,
		40.040176, 34.168678, 43.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897102, 34.945431, 43.382523>,  <39.423340, 34.493286, 43.514851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897102, 34.945431, 43.382523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036736, 34.597157, 43.243927>,  <40.120514, 34.388191, 43.160770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036736, 34.597157, 43.243927>,  <39.897102, 34.945431, 43.382523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036736, 34.597157, 43.243927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184590, 0.426396, -0.885501,
		0.918732, 0.245153, 0.309566,
		0.349081, -0.870682, -0.346491,
		40.141460, 34.335953, 43.139980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491585, 35.196808, 42.901249>,  <39.897102, 34.945431, 43.382523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491585, 35.196808, 42.901249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428661, 34.811398, 42.814655>,  <40.390907, 34.580151, 42.762699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428661, 34.811398, 42.814655>,  <40.491585, 35.196808, 42.901249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428661, 34.811398, 42.814655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298628, 0.162535, -0.940428,
		0.941315, -0.212587, 0.262168,
		-0.157311, -0.963530, -0.216481,
		40.381470, 34.522339, 42.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.182791, 34.893906, 28.854801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099874, 34.509590, 28.781141>,  <29.050125, 34.278999, 28.736946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099874, 34.509590, 28.781141>,  <29.182791, 34.893906, 28.854801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099874, 34.509590, 28.781141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614319, -0.018653, 0.788837,
		-0.761343, 0.276645, -0.586366,
		-0.207290, -0.960791, -0.184150,
		29.037687, 34.221352, 28.725897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508770, 34.785938, 28.826752>,  <29.182791, 34.893906, 28.854801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508770, 34.785938, 28.826752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675528, 34.437630, 28.931028>,  <28.775581, 34.228645, 28.993595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675528, 34.437630, 28.931028>,  <28.508770, 34.785938, 28.826752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675528, 34.437630, 28.931028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596134, -0.045425, 0.801599,
		-0.686166, -0.489589, -0.538033,
		0.416894, -0.870769, 0.260692,
		28.800596, 34.176399, 29.009235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937183, 34.463867, 29.143414>,  <28.508770, 34.785938, 28.826752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937183, 34.463867, 29.143414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247307, 34.243095, 29.266224>,  <28.433382, 34.110630, 29.339911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247307, 34.243095, 29.266224>,  <27.937183, 34.463867, 29.143414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247307, 34.243095, 29.266224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404485, -0.060568, 0.912537,
		-0.485064, -0.831686, -0.270208,
		0.775310, -0.551933, 0.307025,
		28.479900, 34.077515, 29.358332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631638, 33.996696, 29.603899>,  <27.937183, 34.463867, 29.143414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631638, 33.996696, 29.603899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018703, 33.985718, 29.704195>,  <28.250942, 33.979130, 29.764374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018703, 33.985718, 29.704195>,  <27.631638, 33.996696, 29.603899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018703, 33.985718, 29.704195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251679, -0.038813, 0.967032,
		-0.016795, -0.998870, -0.044462,
		0.967665, -0.027431, 0.250743,
		28.309004, 33.977482, 29.779417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644295, 33.563599, 30.148075>,  <27.631638, 33.996696, 29.603899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644295, 33.563599, 30.148075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997849, 33.747288, 30.183550>,  <28.209980, 33.857502, 30.204836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997849, 33.747288, 30.183550>,  <27.644295, 33.563599, 30.148075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997849, 33.747288, 30.183550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180268, 0.159521, 0.970596,
		0.431569, -0.873882, 0.223781,
		0.883884, 0.459220, 0.088689,
		28.263014, 33.885052, 30.210157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048363, 33.216312, 30.681955>,  <27.644295, 33.563599, 30.148075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048363, 33.216312, 30.681955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214754, 33.577980, 30.643076>,  <28.314589, 33.794979, 30.619749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214754, 33.577980, 30.643076>,  <28.048363, 33.216312, 30.681955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214754, 33.577980, 30.643076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043766, 0.126664, 0.990980,
		0.908322, -0.407970, 0.092261,
		0.415976, 0.904166, -0.097197,
		28.339546, 33.849232, 30.613916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773176, 33.281952, 31.156509>,  <28.048363, 33.216312, 30.681955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773176, 33.281952, 31.156509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611168, 33.643459, 31.101145>,  <28.513962, 33.860363, 31.067926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611168, 33.643459, 31.101145>,  <28.773176, 33.281952, 31.156509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611168, 33.643459, 31.101145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133945, 0.208403, 0.968828,
		0.904442, 0.373858, -0.205463,
		-0.405023, 0.903769, -0.138412,
		28.489660, 33.914589, 31.059622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238514, 33.609322, 31.480921>,  <28.773176, 33.281952, 31.156509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238514, 33.609322, 31.480921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921700, 33.853287, 31.470465>,  <28.731611, 33.999664, 31.464191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921700, 33.853287, 31.470465>,  <29.238514, 33.609322, 31.480921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921700, 33.853287, 31.470465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192036, 0.289566, 0.937696,
		0.579483, 0.737669, -0.346473,
		-0.792036, 0.609914, -0.026139,
		28.684088, 34.036263, 31.462624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334257, 34.089375, 32.082726>,  <29.238514, 33.609322, 31.480921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334257, 34.089375, 32.082726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959776, 34.170380, 31.967821>,  <28.735088, 34.218983, 31.898880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959776, 34.170380, 31.967821>,  <29.334257, 34.089375, 32.082726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959776, 34.170380, 31.967821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218997, 0.303140, 0.927441,
		0.274897, 0.931180, -0.239451,
		-0.936201, 0.202512, -0.287258,
		28.678915, 34.231133, 31.881643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108702, 34.728527, 32.404964>,  <29.334257, 34.089375, 32.082726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108702, 34.728527, 32.404964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776283, 34.526669, 32.311417>,  <28.576832, 34.405552, 32.255287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776283, 34.526669, 32.311417>,  <29.108702, 34.728527, 32.404964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776283, 34.526669, 32.311417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352986, 0.153572, 0.922939,
		-0.429841, 0.849558, -0.305759,
		-0.831046, -0.504645, -0.233871,
		28.526970, 34.375275, 32.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705544, 34.897343, 32.940907>,  <29.108702, 34.728527, 32.404964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705544, 34.897343, 32.940907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475166, 34.604370, 32.795670>,  <28.336941, 34.428585, 32.708527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475166, 34.604370, 32.795670>,  <28.705544, 34.897343, 32.940907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475166, 34.604370, 32.795670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431042, -0.105310, 0.896165,
		-0.694617, 0.672647, -0.255056,
		-0.575943, -0.732432, -0.363089,
		28.302383, 34.384640, 32.686745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020777, 35.098854, 33.093231>,  <28.705544, 34.897343, 32.940907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020777, 35.098854, 33.093231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009663, 34.703339, 33.034534>,  <28.002995, 34.466030, 32.999317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009663, 34.703339, 33.034534>,  <28.020777, 35.098854, 33.093231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009663, 34.703339, 33.034534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573290, -0.104494, 0.812662,
		-0.818882, 0.106704, -0.563957,
		-0.027784, -0.988785, -0.146741,
		28.001328, 34.406704, 32.990513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310385, 34.875435, 33.201363>,  <28.020777, 35.098854, 33.093231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310385, 34.875435, 33.201363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543253, 34.551208, 33.226860>,  <27.682974, 34.356674, 33.242161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543253, 34.551208, 33.226860>,  <27.310385, 34.875435, 33.201363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543253, 34.551208, 33.226860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408014, -0.223429, 0.885214,
		-0.703279, -0.541355, -0.460796,
		0.582171, -0.810564, 0.063748,
		27.717905, 34.308041, 33.245983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816013, 34.303295, 33.373882>,  <27.310385, 34.875435, 33.201363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816013, 34.303295, 33.373882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.180641, 34.201080, 33.502720>,  <27.399418, 34.139751, 33.580021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.180641, 34.201080, 33.502720>,  <26.816013, 34.303295, 33.373882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180641, 34.201080, 33.502720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373628, -0.187922, 0.908343,
		-0.171590, -0.948359, -0.266781,
		0.911570, -0.255540, 0.322088,
		27.454113, 34.124420, 33.599346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717524, 33.667702, 33.845295>,  <26.816013, 34.303295, 33.373882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717524, 33.667702, 33.845295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083029, 33.808804, 33.925896>,  <27.302332, 33.893463, 33.974255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083029, 33.808804, 33.925896>,  <26.717524, 33.667702, 33.845295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083029, 33.808804, 33.925896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191442, -0.063569, 0.979443,
		0.358314, -0.933553, 0.009445,
		0.913762, 0.352757, 0.201499,
		27.357157, 33.914631, 33.986343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896095, 33.272171, 34.410164>,  <26.717524, 33.667702, 33.845295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896095, 33.272171, 34.410164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170404, 33.563160, 34.401157>,  <27.334990, 33.737751, 34.395756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170404, 33.563160, 34.401157>,  <26.896095, 33.272171, 34.410164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170404, 33.563160, 34.401157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104256, -0.067573, 0.992252,
		0.720311, -0.682806, -0.122182,
		0.685772, 0.727468, -0.022513,
		27.376137, 33.781399, 34.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500013, 33.014526, 34.728790>,  <26.896095, 33.272171, 34.410164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500013, 33.014526, 34.728790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539995, 33.411602, 34.755859>,  <27.563984, 33.649849, 34.772099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539995, 33.411602, 34.755859>,  <27.500013, 33.014526, 34.728790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539995, 33.411602, 34.755859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292027, -0.094284, 0.951752,
		0.951173, -0.075370, -0.299315,
		0.099954, 0.992688, 0.067670,
		27.569981, 33.709408, 34.776161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084814, 33.143192, 35.089432>,  <27.500013, 33.014526, 34.728790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084814, 33.143192, 35.089432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938015, 33.513573, 35.125031>,  <27.849936, 33.735802, 35.146389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938015, 33.513573, 35.125031>,  <28.084814, 33.143192, 35.089432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938015, 33.513573, 35.125031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271390, 0.015073, 0.962351,
		0.889753, 0.377333, -0.256827,
		-0.366998, 0.925955, 0.088993,
		27.827915, 33.791359, 35.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534149, 33.524929, 35.519012>,  <28.084814, 33.143192, 35.089432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534149, 33.524929, 35.519012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205132, 33.751781, 35.535896>,  <28.007721, 33.887894, 35.546028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205132, 33.751781, 35.535896>,  <28.534149, 33.524929, 35.519012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205132, 33.751781, 35.535896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083794, 0.047447, 0.995353,
		0.562496, 0.822258, -0.086550,
		-0.822543, 0.567134, 0.042211,
		27.958368, 33.921921, 35.548561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694479, 34.038277, 36.005138>,  <28.534149, 33.524929, 35.519012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694479, 34.038277, 36.005138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295980, 34.063625, 35.981541>,  <28.056881, 34.078835, 35.967384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295980, 34.063625, 35.981541>,  <28.694479, 34.038277, 36.005138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295980, 34.063625, 35.981541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057370, 0.027123, 0.997984,
		0.064842, 0.997621, -0.023385,
		-0.996245, 0.063370, -0.058993,
		27.997107, 34.082638, 35.963844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019751, 34.200897, 36.609573>,  <28.694479, 34.038277, 36.005138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019751, 34.200897, 36.609573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313301, 34.464401, 36.675858>,  <29.489431, 34.622505, 36.715630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313301, 34.464401, 36.675858>,  <29.019751, 34.200897, 36.609573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313301, 34.464401, 36.675858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526863, -0.398031, -0.750991,
		-0.428765, 0.638441, -0.639182,
		0.733878, 0.658759, 0.165709,
		29.533464, 34.662029, 36.725571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328119, 34.429882, 35.954365>,  <29.019751, 34.200897, 36.609573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328119, 34.429882, 35.954365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.644253, 34.532379, 36.176971>,  <29.833933, 34.593876, 36.310535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.644253, 34.532379, 36.176971>,  <29.328119, 34.429882, 35.954365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644253, 34.532379, 36.176971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610836, -0.259211, -0.748123,
		-0.047446, 0.931208, -0.361386,
		0.790334, 0.256243, 0.556517,
		29.881353, 34.609253, 36.343925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595707, 35.054520, 35.546780>,  <29.328119, 34.429882, 35.954365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595707, 35.054520, 35.546780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884115, 34.904030, 35.779533>,  <30.057159, 34.813736, 35.919186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884115, 34.904030, 35.779533>,  <29.595707, 35.054520, 35.546780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884115, 34.904030, 35.779533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564795, -0.167389, -0.808076,
		0.401415, 0.911284, 0.091797,
		0.721022, -0.376221, 0.581881,
		30.100422, 34.791164, 35.954098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131163, 35.431252, 35.457767>,  <29.595707, 35.054520, 35.546780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131163, 35.431252, 35.457767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293396, 35.098412, 35.609085>,  <30.390736, 34.898708, 35.699875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293396, 35.098412, 35.609085>,  <30.131163, 35.431252, 35.457767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293396, 35.098412, 35.609085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717578, 0.033489, -0.695673,
		0.566201, 0.553611, 0.610681,
		0.405583, -0.832102, 0.378298,
		30.415071, 34.848782, 35.722576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870205, 35.595898, 35.543289>,  <30.131163, 35.431252, 35.457767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870205, 35.595898, 35.543289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829695, 35.198879, 35.516167>,  <30.805389, 34.960667, 35.499893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829695, 35.198879, 35.516167>,  <30.870205, 35.595898, 35.543289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829695, 35.198879, 35.516167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487100, 0.009961, -0.873289,
		0.867454, -0.121473, 0.482460,
		-0.101275, -0.992545, -0.067810,
		30.799313, 34.901115, 35.495823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474579, 35.298027, 35.381046>,  <30.870205, 35.595898, 35.543289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474579, 35.298027, 35.381046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236309, 34.993580, 35.278385>,  <31.093348, 34.810909, 35.216789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236309, 34.993580, 35.278385>,  <31.474579, 35.298027, 35.381046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236309, 34.993580, 35.278385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515048, -0.116749, -0.849173,
		0.616359, -0.638017, 0.461558,
		-0.595674, -0.761120, -0.256650,
		31.057608, 34.765244, 35.201389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939478, 34.808205, 35.089294>,  <31.474579, 35.298027, 35.381046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939478, 34.808205, 35.089294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569267, 34.707409, 34.976231>,  <31.347141, 34.646931, 34.908390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569267, 34.707409, 34.976231>,  <31.939478, 34.808205, 35.089294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569267, 34.707409, 34.976231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325537, -0.148129, -0.933854,
		0.193453, -0.956325, 0.219130,
		-0.925527, -0.251992, -0.282663,
		31.291609, 34.631813, 34.891430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084396, 34.199642, 34.840359>,  <31.939478, 34.808205, 35.089294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084396, 34.199642, 34.840359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.754164, 34.340412, 34.663921>,  <31.556025, 34.424873, 34.558060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.754164, 34.340412, 34.663921>,  <32.084396, 34.199642, 34.840359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754164, 34.340412, 34.663921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389418, -0.210383, -0.896712,
		-0.408376, -0.912078, 0.036642,
		-0.825580, 0.351927, -0.441095,
		31.506489, 34.445992, 34.531593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889242, 33.729572, 34.244549>,  <32.084396, 34.199642, 34.840359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889242, 33.729572, 34.244549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677065, 34.059742, 34.167294>,  <31.549759, 34.257843, 34.120941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677065, 34.059742, 34.167294>,  <31.889242, 33.729572, 34.244549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677065, 34.059742, 34.167294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270963, -0.050790, -0.961249,
		-0.803251, -0.562219, -0.196719,
		-0.530441, 0.825428, -0.193137,
		31.517933, 34.307369, 34.109352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417408, 33.533653, 33.811825>,  <31.889242, 33.729572, 34.244549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417408, 33.533653, 33.811825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449820, 33.927547, 33.750202>,  <31.469267, 34.163883, 33.713226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449820, 33.927547, 33.750202>,  <31.417408, 33.533653, 33.811825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449820, 33.927547, 33.750202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112045, -0.162586, -0.980312,
		-0.990394, 0.062171, -0.123508,
		0.081027, 0.984734, -0.154059,
		31.474127, 34.222969, 33.703983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122366, 33.544231, 33.149181>,  <31.417408, 33.533653, 33.811825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122366, 33.544231, 33.149181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237516, 33.926598, 33.172344>,  <31.306606, 34.156017, 33.186241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237516, 33.926598, 33.172344>,  <31.122366, 33.544231, 33.149181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237516, 33.926598, 33.172344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093662, 0.032073, -0.995087,
		-0.953076, 0.291887, -0.080300,
		0.287877, 0.955915, 0.057906,
		31.323879, 34.213371, 33.189716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746038, 33.866886, 32.659977>,  <31.122366, 33.544231, 33.149181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746038, 33.866886, 32.659977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077663, 34.081169, 32.724072>,  <31.276638, 34.209740, 32.762527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077663, 34.081169, 32.724072>,  <30.746038, 33.866886, 32.659977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077663, 34.081169, 32.724072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051286, 0.212510, -0.975812,
		-0.556797, 0.817228, 0.148710,
		0.829064, 0.535703, 0.160237,
		31.326382, 34.241879, 32.772144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696772, 34.705208, 32.520584>,  <30.746038, 33.866886, 32.659977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696772, 34.705208, 32.520584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.048649, 34.537609, 32.430622>,  <31.259775, 34.437050, 32.376644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.048649, 34.537609, 32.430622>,  <30.696772, 34.705208, 32.520584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048649, 34.537609, 32.430622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143471, 0.217070, -0.965555,
		0.453386, 0.881659, 0.130841,
		0.879692, -0.418997, -0.224909,
		31.312557, 34.411911, 32.363148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001076, 35.181831, 31.916340>,  <30.696772, 34.705208, 32.520584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001076, 35.181831, 31.916340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.250751, 34.869366, 31.911026>,  <31.400557, 34.681889, 31.907839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.250751, 34.869366, 31.911026>,  <31.001076, 35.181831, 31.916340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250751, 34.869366, 31.911026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261649, 0.225031, -0.938563,
		0.736159, 0.582364, 0.344852,
		0.624187, -0.781162, -0.013283,
		31.438007, 34.635017, 31.907042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559145, 35.394932, 31.501909>,  <31.001076, 35.181831, 31.916340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559145, 35.394932, 31.501909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550465, 34.995037, 31.498835>,  <31.545256, 34.755100, 31.496990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550465, 34.995037, 31.498835>,  <31.559145, 35.394932, 31.501909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550465, 34.995037, 31.498835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064707, 0.006268, -0.997885,
		0.997668, -0.022152, 0.064554,
		-0.021700, -0.999735, -0.007686,
		31.543955, 34.695118, 31.496529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983835, 35.307682, 30.924946>,  <31.559145, 35.394932, 31.501909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983835, 35.307682, 30.924946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838245, 34.942574, 30.999102>,  <31.750891, 34.723507, 31.043596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838245, 34.942574, 30.999102>,  <31.983835, 35.307682, 30.924946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838245, 34.942574, 30.999102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183549, -0.265432, -0.946496,
		0.913144, -0.310473, 0.264149,
		-0.363975, -0.912772, 0.185391,
		31.729053, 34.668743, 31.054718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483475, 34.889069, 30.559721>,  <31.983835, 35.307682, 30.924946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483475, 34.889069, 30.559721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154308, 34.677120, 30.641741>,  <31.956808, 34.549953, 30.690952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154308, 34.677120, 30.641741>,  <32.483475, 34.889069, 30.559721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154308, 34.677120, 30.641741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056666, -0.435644, -0.898334,
		0.565328, -0.727636, 0.388524,
		-0.822918, -0.529869, 0.205049,
		31.907433, 34.518158, 30.703255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623169, 34.225704, 30.305840>,  <32.483475, 34.889069, 30.559721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623169, 34.225704, 30.305840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.227108, 34.228130, 30.361776>,  <31.989471, 34.229588, 30.395338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.227108, 34.228130, 30.361776>,  <32.623169, 34.225704, 30.305840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227108, 34.228130, 30.361776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126407, -0.467854, -0.874719,
		0.060122, -0.883785, 0.464015,
		-0.990155, 0.006065, 0.139845,
		31.930061, 34.229950, 30.403730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438042, 33.483116, 30.078159>,  <32.623169, 34.225704, 30.305840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438042, 33.483116, 30.078159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136715, 33.744358, 30.047253>,  <31.955919, 33.901104, 30.028709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136715, 33.744358, 30.047253>,  <32.438042, 33.483116, 30.078159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136715, 33.744358, 30.047253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161364, -0.297450, -0.941002,
		-0.637556, -0.696403, 0.329462,
		-0.753315, 0.653105, -0.077267,
		31.910721, 33.940289, 30.024073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880615, 33.060932, 29.628035>,  <32.438042, 33.483116, 30.078159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880615, 33.060932, 29.628035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.767485, 33.444290, 29.612652>,  <31.699606, 33.674305, 29.603422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.767485, 33.444290, 29.612652>,  <31.880615, 33.060932, 29.628035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767485, 33.444290, 29.612652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186005, -0.094133, -0.978029,
		-0.940963, -0.269461, 0.204891,
		-0.282827, 0.958400, -0.038455,
		31.682636, 33.731812, 29.601116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336031, 33.079124, 29.189074>,  <31.880615, 33.060932, 29.628035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336031, 33.079124, 29.189074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.489065, 33.448681, 29.192041>,  <31.580885, 33.670414, 29.193823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.489065, 33.448681, 29.192041>,  <31.336031, 33.079124, 29.189074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489065, 33.448681, 29.192041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202446, 0.091665, -0.974994,
		-0.901468, 0.371515, 0.222108,
		0.382585, 0.923891, 0.007421,
		31.603840, 33.725849, 29.194267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938004, 33.358170, 28.704456>,  <31.336031, 33.079124, 29.189074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938004, 33.358170, 28.704456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223450, 33.638290, 28.697229>,  <31.394718, 33.806362, 28.692894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223450, 33.638290, 28.697229>,  <30.938004, 33.358170, 28.704456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223450, 33.638290, 28.697229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095697, 0.071901, -0.992810,
		-0.693970, 0.710214, 0.118327,
		0.713615, 0.700305, -0.018068,
		31.437534, 33.848381, 28.691809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.098480, 29.896471, 46.401489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.736198, 30.014736, 46.523003>,  <40.518829, 30.085695, 46.595913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.736198, 30.014736, 46.523003>,  <41.098480, 29.896471, 46.401489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736198, 30.014736, 46.523003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291724, -0.085239, 0.952697,
		0.307569, 0.951483, -0.009050,
		-0.905703, 0.295660, 0.303787,
		40.464489, 30.103434, 46.614140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220798, 30.279160, 46.938076>,  <41.098480, 29.896471, 46.401489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220798, 30.279160, 46.938076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.831692, 30.246910, 47.024994>,  <40.598228, 30.227560, 47.077145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.831692, 30.246910, 47.024994>,  <41.220798, 30.279160, 46.938076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831692, 30.246910, 47.024994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227968, -0.163768, 0.959797,
		-0.041796, 0.983199, 0.177688,
		-0.972771, -0.080623, 0.217293,
		40.539860, 30.222723, 47.090183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050903, 30.691118, 47.571220>,  <41.220798, 30.279160, 46.938076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050903, 30.691118, 47.571220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784416, 30.396502, 47.524475>,  <40.624523, 30.219732, 47.496429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784416, 30.396502, 47.524475>,  <41.050903, 30.691118, 47.571220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784416, 30.396502, 47.524475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126223, -0.265815, 0.955725,
		-0.734994, 0.621974, 0.270060,
		-0.666222, -0.736540, -0.116865,
		40.584549, 30.175539, 47.489414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593456, 30.694365, 48.184597>,  <41.050903, 30.691118, 47.571220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593456, 30.694365, 48.184597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.558716, 30.323803, 48.038044>,  <40.537872, 30.101467, 47.950111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.558716, 30.323803, 48.038044>,  <40.593456, 30.694365, 48.184597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558716, 30.323803, 48.038044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066471, -0.372341, 0.925713,
		-0.994001, 0.056046, 0.093917,
		-0.086851, -0.926402, -0.366382,
		40.532661, 30.045883, 47.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150890, 30.420624, 48.637791>,  <40.593456, 30.694365, 48.184597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150890, 30.420624, 48.637791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286133, 30.104546, 48.433331>,  <40.367279, 29.914898, 48.310654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286133, 30.104546, 48.433331>,  <40.150890, 30.420624, 48.637791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286133, 30.104546, 48.433331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029563, -0.551783, 0.833463,
		-0.940642, -0.266691, -0.209924,
		0.338110, -0.790197, -0.511147,
		40.387566, 29.867487, 48.279987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669868, 29.860464, 48.765575>,  <40.150890, 30.420624, 48.637791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669868, 29.860464, 48.765575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035992, 29.726925, 48.675453>,  <40.255665, 29.646801, 48.621380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035992, 29.726925, 48.675453>,  <39.669868, 29.860464, 48.765575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035992, 29.726925, 48.675453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003775, -0.552275, 0.833653,
		-0.402745, -0.763897, -0.504240,
		0.915304, -0.333846, -0.225310,
		40.310581, 29.626770, 48.607861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662075, 29.219746, 48.892010>,  <39.669868, 29.860464, 48.765575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662075, 29.219746, 48.892010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060028, 29.259571, 48.885170>,  <40.298801, 29.283466, 48.881065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060028, 29.259571, 48.885170>,  <39.662075, 29.219746, 48.892010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060028, 29.259571, 48.885170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074301, -0.606526, 0.791584,
		0.068441, -0.788805, -0.610821,
		0.994884, 0.099561, -0.017098,
		40.358494, 29.289440, 48.880039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817436, 28.579794, 49.129948>,  <39.662075, 29.219746, 48.892010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817436, 28.579794, 49.129948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150234, 28.794260, 49.186958>,  <40.349915, 28.922939, 49.221165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150234, 28.794260, 49.186958>,  <39.817436, 28.579794, 49.129948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150234, 28.794260, 49.186958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170954, -0.492169, 0.853548,
		0.527788, -0.685782, -0.501141,
		0.831994, 0.536165, 0.142524,
		40.399834, 28.955109, 49.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248936, 28.153103, 49.405807>,  <39.817436, 28.579794, 49.129948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248936, 28.153103, 49.405807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.414455, 28.506346, 49.494259>,  <40.513767, 28.718292, 49.547329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.414455, 28.506346, 49.494259>,  <40.248936, 28.153103, 49.405807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414455, 28.506346, 49.494259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202463, -0.326083, 0.923406,
		0.887571, -0.337332, -0.313728,
		0.413796, 0.883107, 0.221124,
		40.538593, 28.771278, 49.560596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918900, 28.105263, 49.737404>,  <40.248936, 28.153103, 49.405807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918900, 28.105263, 49.737404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.785206, 28.461248, 49.861504>,  <40.704990, 28.674839, 49.935963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.785206, 28.461248, 49.861504>,  <40.918900, 28.105263, 49.737404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785206, 28.461248, 49.861504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045556, -0.313538, 0.948482,
		0.941390, 0.331145, 0.064251,
		-0.334231, 0.889964, 0.310247,
		40.684937, 28.728237, 49.954578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223125, 28.242912, 50.349743>,  <40.918900, 28.105263, 49.737404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223125, 28.242912, 50.349743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.922855, 28.502485, 50.399345>,  <40.742695, 28.658228, 50.429108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.922855, 28.502485, 50.399345>,  <41.223125, 28.242912, 50.349743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922855, 28.502485, 50.399345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033460, -0.224802, 0.973830,
		0.659826, 0.726878, 0.190466,
		-0.750673, 0.648932, 0.124009,
		40.697655, 28.697165, 50.436546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341328, 28.531452, 50.995083>,  <41.223125, 28.242912, 50.349743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341328, 28.531452, 50.995083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.961521, 28.642132, 50.935936>,  <40.733639, 28.708540, 50.900448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.961521, 28.642132, 50.935936>,  <41.341328, 28.531452, 50.995083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961521, 28.642132, 50.935936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211377, -0.215929, 0.953255,
		0.231835, 0.936383, 0.263515,
		-0.949512, 0.276699, -0.147870,
		40.676666, 28.725142, 50.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172760, 29.151121, 51.497074>,  <41.341328, 28.531452, 50.995083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172760, 29.151121, 51.497074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852158, 28.942387, 51.380260>,  <40.659798, 28.817146, 51.310173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852158, 28.942387, 51.380260>,  <41.172760, 29.151121, 51.497074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852158, 28.942387, 51.380260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175264, -0.261917, 0.949043,
		-0.571732, 0.811842, 0.118468,
		-0.801502, -0.521835, -0.292033,
		40.611706, 28.785835, 51.292652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569733, 29.449190, 51.930988>,  <41.172760, 29.151121, 51.497074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569733, 29.449190, 51.930988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549889, 29.059330, 51.843719>,  <40.537983, 28.825415, 51.791359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549889, 29.059330, 51.843719>,  <40.569733, 29.449190, 51.930988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549889, 29.059330, 51.843719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057385, -0.220862, 0.973616,
		-0.997119, 0.035780, 0.066887,
		-0.049609, -0.974649, -0.218172,
		40.535007, 28.766935, 51.778267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076996, 30.001526, 51.933765>,  <40.569733, 29.449190, 51.930988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076996, 30.001526, 51.933765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.870529, 30.290821, 52.117283>,  <40.746647, 30.464397, 52.227394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.870529, 30.290821, 52.117283>,  <41.076996, 30.001526, 51.933765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870529, 30.290821, 52.117283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063593, 0.566557, -0.821565,
		-0.854122, -0.394890, -0.338433,
		-0.516170, 0.723239, 0.458797,
		40.715679, 30.507793, 52.254921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613804, 30.292929, 51.481205>,  <41.076996, 30.001526, 51.933765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613804, 30.292929, 51.481205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.637512, 30.576998, 51.761818>,  <40.651737, 30.747438, 51.930183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.637512, 30.576998, 51.761818>,  <40.613804, 30.292929, 51.481205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637512, 30.576998, 51.761818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069843, 0.698092, -0.712593,
		-0.995796, 0.091231, -0.008227,
		0.059267, 0.710172, 0.701529,
		40.655293, 30.790049, 51.972275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111889, 30.775097, 51.345795>,  <40.613804, 30.292929, 51.481205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111889, 30.775097, 51.345795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.407604, 30.957739, 51.543774>,  <40.585033, 31.067324, 51.662560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.407604, 30.957739, 51.543774>,  <40.111889, 30.775097, 51.345795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407604, 30.957739, 51.543774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130753, 0.623676, -0.770670,
		-0.660577, 0.634460, 0.401372,
		0.739285, 0.456606, 0.494943,
		40.629391, 31.094721, 51.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932625, 31.504320, 51.342251>,  <40.111889, 30.775097, 51.345795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932625, 31.504320, 51.342251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325142, 31.487173, 51.417324>,  <40.560654, 31.476885, 51.462368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325142, 31.487173, 51.417324>,  <39.932625, 31.504320, 51.342251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325142, 31.487173, 51.417324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154613, 0.756341, -0.635644,
		-0.114701, 0.652772, 0.748821,
		0.981294, -0.042868, 0.187680,
		40.619530, 31.474312, 51.473629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081383, 32.140110, 51.613190>,  <39.932625, 31.504320, 51.342251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081383, 32.140110, 51.613190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440296, 32.012733, 51.490894>,  <40.655643, 31.936308, 51.417519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440296, 32.012733, 51.490894>,  <40.081383, 32.140110, 51.613190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440296, 32.012733, 51.490894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008924, 0.705513, -0.708641,
		0.441363, 0.633124, 0.635888,
		0.897284, -0.318442, -0.305737,
		40.709480, 31.917200, 51.399174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442261, 32.750561, 51.379864>,  <40.081383, 32.140110, 51.613190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442261, 32.750561, 51.379864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657539, 32.448284, 51.230587>,  <40.786705, 32.266918, 51.141022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657539, 32.448284, 51.230587>,  <40.442261, 32.750561, 51.379864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657539, 32.448284, 51.230587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062009, 0.477093, -0.876663,
		0.840536, 0.448674, 0.303628,
		0.538195, -0.755694, -0.373192,
		40.818996, 32.221577, 51.118629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098503, 33.076523, 51.086525>,  <40.442261, 32.750561, 51.379864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098503, 33.076523, 51.086525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053200, 32.718761, 50.913456>,  <41.026016, 32.504105, 50.809612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053200, 32.718761, 50.913456>,  <41.098503, 33.076523, 51.086525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053200, 32.718761, 50.913456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114957, 0.420755, -0.899861,
		0.986893, -0.151655, 0.055165,
		-0.113258, -0.894408, -0.432674,
		41.019222, 32.450439, 50.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592960, 33.192360, 50.692440>,  <41.098503, 33.076523, 51.086525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592960, 33.192360, 50.692440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369755, 32.892719, 50.549629>,  <41.235832, 32.712936, 50.463943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369755, 32.892719, 50.549629>,  <41.592960, 33.192360, 50.692440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369755, 32.892719, 50.549629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009516, 0.435991, -0.899900,
		0.829780, -0.498755, -0.250416,
		-0.558009, -0.749103, -0.357031,
		41.202351, 32.667988, 50.442520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884308, 32.960247, 50.097633>,  <41.592960, 33.192360, 50.692440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884308, 32.960247, 50.097633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501923, 32.849171, 50.059635>,  <41.272491, 32.782524, 50.036839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501923, 32.849171, 50.059635>,  <41.884308, 32.960247, 50.097633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501923, 32.849171, 50.059635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032643, 0.221050, -0.974716,
		0.291675, -0.934891, -0.202250,
		-0.955960, -0.277698, -0.094992,
		41.215134, 32.765862, 50.031139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866779, 32.521679, 49.513252>,  <41.884308, 32.960247, 50.097633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866779, 32.521679, 49.513252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.493824, 32.650169, 49.579552>,  <41.270050, 32.727264, 49.619331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.493824, 32.650169, 49.579552>,  <41.866779, 32.521679, 49.513252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493824, 32.650169, 49.579552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084911, 0.251068, -0.964238,
		-0.351349, -0.913116, -0.206816,
		-0.932386, 0.321223, 0.165746,
		41.214108, 32.746536, 49.629276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630104, 32.387451, 48.914291>,  <41.866779, 32.521679, 49.513252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630104, 32.387451, 48.914291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.337070, 32.621582, 49.053268>,  <41.161251, 32.762062, 49.136654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.337070, 32.621582, 49.053268>,  <41.630104, 32.387451, 48.914291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337070, 32.621582, 49.053268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190614, 0.313601, -0.930226,
		-0.653445, -0.747694, -0.118167,
		-0.732581, 0.585328, 0.347442,
		41.117294, 32.797180, 49.157501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020451, 32.113358, 48.756271>,  <41.630104, 32.387451, 48.914291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020451, 32.113358, 48.756271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.965328, 32.507381, 48.797581>,  <40.932255, 32.743797, 48.822365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.965328, 32.507381, 48.797581>,  <41.020451, 32.113358, 48.756271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965328, 32.507381, 48.797581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273489, 0.062369, -0.959851,
		-0.951952, -0.160520, 0.260808,
		-0.137809, 0.985060, 0.103273,
		40.923985, 32.802898, 48.828564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294239, 32.299564, 48.429241>,  <41.020451, 32.113358, 48.756271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294239, 32.299564, 48.429241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.460522, 32.661987, 48.460854>,  <40.560291, 32.879440, 48.479820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.460522, 32.661987, 48.460854>,  <40.294239, 32.299564, 48.429241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460522, 32.661987, 48.460854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262611, 0.202774, -0.943354,
		-0.870761, 0.371402, 0.322236,
		0.415704, 0.906059, 0.079034,
		40.585232, 32.933804, 48.484562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781597, 32.830833, 48.185684>,  <40.294239, 32.299564, 48.429241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781597, 32.830833, 48.185684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146282, 32.993870, 48.165085>,  <40.365093, 33.091694, 48.152725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146282, 32.993870, 48.165085>,  <39.781597, 32.830833, 48.185684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146282, 32.993870, 48.165085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247761, 0.445504, -0.860314,
		-0.327718, 0.797115, 0.507157,
		0.911710, 0.407594, -0.051494,
		40.419796, 33.116150, 48.149635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418941, 33.580341, 48.470963>,  <39.781597, 32.830833, 48.185684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418941, 33.580341, 48.470963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113468, 33.778702, 48.636307>,  <38.930183, 33.897717, 48.735516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113468, 33.778702, 48.636307>,  <39.418941, 33.580341, 48.470963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113468, 33.778702, 48.636307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106777, -0.534447, 0.838430,
		0.636700, 0.684432, 0.355198,
		-0.763683, 0.495902, 0.413364,
		38.884365, 33.927471, 48.760315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594177, 33.751762, 49.186916>,  <39.418941, 33.580341, 48.470963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594177, 33.751762, 49.186916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195984, 33.788937, 49.194599>,  <38.957066, 33.811241, 49.199211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195984, 33.788937, 49.194599>,  <39.594177, 33.751762, 49.186916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195984, 33.788937, 49.194599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038721, -0.582556, 0.811868,
		0.086643, 0.807460, 0.583525,
		-0.995487, 0.092938, 0.019209,
		38.897339, 33.816818, 49.200363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515202, 33.821716, 49.915981>,  <39.594177, 33.751762, 49.186916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515202, 33.821716, 49.915981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159744, 33.731441, 49.756290>,  <38.946472, 33.677277, 49.660477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159744, 33.731441, 49.756290>,  <39.515202, 33.821716, 49.915981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159744, 33.731441, 49.756290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278271, -0.426605, 0.860566,
		-0.364530, 0.875828, 0.316297,
		-0.888641, -0.225686, -0.399228,
		38.893150, 33.663734, 49.636520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044266, 34.218266, 50.267487>,  <39.515202, 33.821716, 49.915981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044266, 34.218266, 50.267487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828644, 33.913338, 50.124214>,  <38.699272, 33.730381, 50.038250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828644, 33.913338, 50.124214>,  <39.044266, 34.218266, 50.267487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828644, 33.913338, 50.124214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197316, -0.299129, 0.933589,
		-0.818835, 0.573927, 0.010828,
		-0.539051, -0.762318, -0.358182,
		38.666927, 33.684643, 50.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519844, 34.071327, 50.714378>,  <39.044266, 34.218266, 50.267487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519844, 34.071327, 50.714378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452820, 33.727051, 50.522072>,  <38.412605, 33.520485, 50.406689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452820, 33.727051, 50.522072>,  <38.519844, 34.071327, 50.714378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452820, 33.727051, 50.522072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301537, -0.419542, 0.856189,
		-0.938615, 0.288433, -0.189231,
		-0.167563, -0.860692, -0.480762,
		38.402550, 33.468842, 50.377842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799236, 33.701523, 51.082066>,  <38.519844, 34.071327, 50.714378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799236, 33.701523, 51.082066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015903, 33.423264, 50.893314>,  <38.145905, 33.256310, 50.780064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015903, 33.423264, 50.893314>,  <37.799236, 33.701523, 51.082066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015903, 33.423264, 50.893314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048210, -0.586146, 0.808770,
		-0.839207, -0.415339, -0.351036,
		0.541672, -0.695648, -0.471874,
		38.178406, 33.214569, 50.751751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441753, 32.998146, 51.087318>,  <37.799236, 33.701523, 51.082066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441753, 32.998146, 51.087318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833721, 32.926804, 51.051643>,  <38.068901, 32.883999, 51.030239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833721, 32.926804, 51.051643>,  <37.441753, 32.998146, 51.087318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833721, 32.926804, 51.051643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013781, -0.506739, 0.861989,
		-0.198933, -0.843448, -0.499020,
		0.979917, -0.178355, -0.089184,
		38.127697, 32.873299, 51.024887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295368, 32.420418, 50.538536>,  <37.441753, 32.998146, 51.087318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295368, 32.420418, 50.538536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907356, 32.327709, 50.509323>,  <36.674549, 32.272083, 50.491795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907356, 32.327709, 50.509323>,  <37.295368, 32.420418, 50.538536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907356, 32.327709, 50.509323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115164, 0.703110, -0.701693,
		0.213979, -0.672249, -0.708727,
		-0.970025, -0.231767, -0.073032,
		36.616348, 32.258179, 50.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104591, 32.363335, 49.826157>,  <37.295368, 32.420418, 50.538536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104591, 32.363335, 49.826157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739075, 32.400833, 49.984245>,  <36.519764, 32.423332, 50.079098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739075, 32.400833, 49.984245>,  <37.104591, 32.363335, 49.826157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739075, 32.400833, 49.984245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272909, 0.578971, -0.768318,
		-0.300852, -0.809941, -0.503472,
		-0.913788, 0.093748, 0.395225,
		36.464939, 32.428959, 50.102814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640751, 32.200752, 49.381657>,  <37.104591, 32.363335, 49.826157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640751, 32.200752, 49.381657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401146, 32.412308, 49.622147>,  <36.257385, 32.539242, 49.766441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401146, 32.412308, 49.622147>,  <36.640751, 32.200752, 49.381657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401146, 32.412308, 49.622147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216805, 0.615664, -0.757597,
		-0.770832, -0.584156, -0.254124,
		-0.599010, 0.528885, 0.601222,
		36.221443, 32.570972, 49.802513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978703, 32.298851, 49.043564>,  <36.640751, 32.200752, 49.381657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978703, 32.298851, 49.043564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042282, 32.596310, 49.303326>,  <36.080429, 32.774784, 49.459183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042282, 32.596310, 49.303326>,  <35.978703, 32.298851, 49.043564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042282, 32.596310, 49.303326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279989, 0.664717, -0.692645,
		-0.946753, -0.071732, 0.313868,
		0.158949, 0.743644, 0.649407,
		36.089966, 32.819405, 49.498146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395020, 32.696987, 48.907204>,  <35.978703, 32.298851, 49.043564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395020, 32.696987, 48.907204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596268, 32.952885, 49.139614>,  <35.717018, 33.106422, 49.279060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596268, 32.952885, 49.139614>,  <35.395020, 32.696987, 48.907204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596268, 32.952885, 49.139614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303356, 0.760271, -0.574425,
		-0.809223, 0.112749, 0.576581,
		0.503123, 0.639747, 0.581026,
		35.747204, 33.144810, 49.313923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875164, 33.260689, 49.001125>,  <35.395020, 32.696987, 48.907204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875164, 33.260689, 49.001125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254078, 33.371166, 49.066078>,  <35.481426, 33.437454, 49.105049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254078, 33.371166, 49.066078>,  <34.875164, 33.260689, 49.001125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254078, 33.371166, 49.066078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171148, 0.864671, -0.472284,
		-0.270850, 0.419596, 0.866360,
		0.947285, 0.276194, 0.162382,
		35.538265, 33.454025, 49.114792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891102, 33.868206, 49.118725>,  <34.875164, 33.260689, 49.001125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891102, 33.868206, 49.118725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262726, 33.828430, 48.976204>,  <35.485703, 33.804565, 48.890690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262726, 33.828430, 48.976204>,  <34.891102, 33.868206, 49.118725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262726, 33.828430, 48.976204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122971, 0.825397, -0.550998,
		0.348882, 0.555727, 0.754618,
		0.929064, -0.099437, -0.356304,
		35.541447, 33.798599, 48.869312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.806068, 27.292219, 51.099155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.088825, 27.574228, 51.121937>,  <38.258480, 27.743435, 51.135605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.088825, 27.574228, 51.121937>,  <37.806068, 27.292219, 51.099155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088825, 27.574228, 51.121937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054793, 0.134865, -0.989348,
		-0.705195, 0.696242, 0.133965,
		0.706893, 0.705024, 0.056956,
		38.300892, 27.785736, 51.139023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610565, 27.866158, 50.745270>,  <37.806068, 27.292219, 51.099155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610565, 27.866158, 50.745270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008224, 27.896597, 50.714626>,  <38.246822, 27.914862, 50.696239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008224, 27.896597, 50.714626>,  <37.610565, 27.866158, 50.745270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008224, 27.896597, 50.714626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086075, 0.130051, -0.987764,
		-0.065206, 0.988583, 0.135841,
		0.994153, 0.076101, -0.076612,
		38.306469, 27.919428, 50.691643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861881, 28.544481, 50.438847>,  <37.610565, 27.866158, 50.745270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861881, 28.544481, 50.438847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.123821, 28.249823, 50.371284>,  <38.280983, 28.073029, 50.330746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.123821, 28.249823, 50.371284>,  <37.861881, 28.544481, 50.438847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123821, 28.249823, 50.371284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042849, 0.186948, -0.981435,
		0.754546, 0.649927, 0.090857,
		0.654847, -0.736645, -0.168910,
		38.320274, 28.028830, 50.320610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356991, 28.803612, 49.960155>,  <37.861881, 28.544481, 50.438847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356991, 28.803612, 49.960155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424095, 28.409550, 49.945576>,  <38.464359, 28.173113, 49.936829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424095, 28.409550, 49.945576>,  <38.356991, 28.803612, 49.960155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424095, 28.409550, 49.945576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063063, 0.026177, -0.997666,
		0.983809, 0.169668, -0.057735,
		0.167760, -0.985154, -0.036453,
		38.474422, 28.114004, 49.934639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026878, 28.642130, 49.532734>,  <38.356991, 28.803612, 49.960155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026878, 28.642130, 49.532734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.765717, 28.339159, 49.530682>,  <38.609020, 28.157377, 49.529449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.765717, 28.339159, 49.530682>,  <39.026878, 28.642130, 49.532734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765717, 28.339159, 49.530682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023171, 0.026739, -0.999374,
		0.757089, -0.652373, -0.035008,
		-0.652901, -0.757427, -0.005127,
		38.569847, 28.111931, 49.529144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238293, 28.181219, 48.988235>,  <39.026878, 28.642130, 49.532734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238293, 28.181219, 48.988235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.856026, 28.071756, 49.031700>,  <38.626667, 28.006079, 49.057781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.856026, 28.071756, 49.031700>,  <39.238293, 28.181219, 48.988235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856026, 28.071756, 49.031700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101742, -0.039402, -0.994030,
		0.276308, -0.961019, 0.009812,
		-0.955669, -0.273660, 0.108663,
		38.569324, 27.989658, 49.064301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248787, 27.609638, 48.485947>,  <39.238293, 28.181219, 48.988235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248787, 27.609638, 48.485947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.868393, 27.712248, 48.555023>,  <38.640156, 27.773813, 48.596470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.868393, 27.712248, 48.555023>,  <39.248787, 27.609638, 48.485947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868393, 27.712248, 48.555023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188524, -0.038270, -0.981323,
		-0.245126, -0.965779, 0.084755,
		-0.950985, 0.256526, 0.172691,
		38.583096, 27.789206, 48.606831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810158, 27.267521, 48.066334>,  <39.248787, 27.609638, 48.485947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810158, 27.267521, 48.066334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581612, 27.591057, 48.121933>,  <38.444485, 27.785177, 48.155293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581612, 27.591057, 48.121933>,  <38.810158, 27.267521, 48.066334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581612, 27.591057, 48.121933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294589, -0.044046, -0.954608,
		-0.766000, -0.586380, 0.263442,
		-0.571367, 0.808837, 0.139002,
		38.410202, 27.833708, 48.163635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140755, 27.156210, 47.760113>,  <38.810158, 27.267521, 48.066334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140755, 27.156210, 47.760113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.135155, 27.554186, 47.799900>,  <38.131794, 27.792973, 47.823772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.135155, 27.554186, 47.799900>,  <38.140755, 27.156210, 47.760113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135155, 27.554186, 47.799900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461630, 0.081815, -0.883292,
		-0.886962, -0.058283, 0.458149,
		-0.013997, 0.994942, 0.099472,
		38.130955, 27.852669, 47.829742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483433, 27.386997, 47.413448>,  <38.140755, 27.156210, 47.760113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483433, 27.386997, 47.413448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.722187, 27.706375, 47.444962>,  <37.865440, 27.898003, 47.463871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.722187, 27.706375, 47.444962>,  <37.483433, 27.386997, 47.413448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722187, 27.706375, 47.444962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217377, 0.255461, -0.942065,
		-0.772314, 0.545183, 0.326046,
		0.596890, 0.798445, 0.078786,
		37.901253, 27.945910, 47.468597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079060, 27.895880, 47.289757>,  <37.483433, 27.386997, 47.413448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079060, 27.895880, 47.289757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.439682, 28.038374, 47.191532>,  <37.656055, 28.123871, 47.132599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.439682, 28.038374, 47.191532>,  <37.079060, 27.895880, 47.289757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439682, 28.038374, 47.191532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317112, 0.157926, -0.935147,
		-0.294351, 0.920954, 0.255345,
		0.901553, 0.356235, -0.245559,
		37.710148, 28.145245, 47.117863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966705, 28.593422, 47.073627>,  <37.079060, 27.895880, 47.289757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966705, 28.593422, 47.073627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322575, 28.493074, 46.921024>,  <37.536095, 28.432865, 46.829464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322575, 28.493074, 46.921024>,  <36.966705, 28.593422, 47.073627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322575, 28.493074, 46.921024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294073, 0.324356, -0.899063,
		0.349293, 0.912062, 0.214796,
		0.889672, -0.250870, -0.381508,
		37.589478, 28.417812, 46.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967949, 29.375698, 47.205940>,  <36.966705, 28.593422, 47.073627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967949, 29.375698, 47.205940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672737, 29.612425, 47.335598>,  <36.495609, 29.754461, 47.413395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672737, 29.612425, 47.335598>,  <36.967949, 29.375698, 47.205940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672737, 29.612425, 47.335598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013159, -0.492911, 0.869980,
		0.674645, 0.637801, 0.371568,
		-0.738025, 0.591817, 0.324148,
		36.451328, 29.789970, 47.432842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104916, 29.626717, 47.950565>,  <36.967949, 29.375698, 47.205940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104916, 29.626717, 47.950565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.716583, 29.682390, 47.872475>,  <36.483585, 29.715794, 47.825619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.716583, 29.682390, 47.872475>,  <37.104916, 29.626717, 47.950565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716583, 29.682390, 47.872475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234874, -0.388461, 0.891029,
		0.048177, 0.910893, 0.409820,
		-0.970831, 0.139184, -0.195230,
		36.425335, 29.724146, 47.813908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793159, 30.059786, 48.544609>,  <37.104916, 29.626717, 47.950565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793159, 30.059786, 48.544609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.498135, 29.838139, 48.390228>,  <36.321121, 29.705151, 48.297600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.498135, 29.838139, 48.390228>,  <36.793159, 30.059786, 48.544609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498135, 29.838139, 48.390228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287666, -0.259263, 0.921971,
		-0.610943, 0.791035, 0.031821,
		-0.737561, -0.554118, -0.385949,
		36.276867, 29.671904, 48.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198124, 30.210670, 48.870617>,  <36.793159, 30.059786, 48.544609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198124, 30.210670, 48.870617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099529, 29.860054, 48.705250>,  <36.040371, 29.649683, 48.606030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099529, 29.860054, 48.705250>,  <36.198124, 30.210670, 48.870617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099529, 29.860054, 48.705250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368865, -0.309621, 0.876398,
		-0.896204, 0.368519, -0.247007,
		-0.246491, -0.876544, -0.413417,
		36.025581, 29.597092, 48.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513157, 30.174702, 49.014996>,  <36.198124, 30.210670, 48.870617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513157, 30.174702, 49.014996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640629, 29.802130, 48.944702>,  <35.717113, 29.578587, 48.902527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640629, 29.802130, 48.944702>,  <35.513157, 30.174702, 49.014996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640629, 29.802130, 48.944702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466122, -0.315431, 0.826580,
		-0.825331, -0.181506, -0.534682,
		0.318684, -0.931428, -0.175732,
		35.736233, 29.522701, 48.891983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935356, 29.850538, 49.096310>,  <35.513157, 30.174702, 49.014996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935356, 29.850538, 49.096310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.235737, 29.589613, 49.137405>,  <35.415966, 29.433058, 49.162064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.235737, 29.589613, 49.137405>,  <34.935356, 29.850538, 49.096310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235737, 29.589613, 49.137405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406509, -0.334045, 0.850391,
		-0.520405, -0.680366, -0.516024,
		0.750952, -0.652316, 0.102737,
		35.461021, 29.393919, 49.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654022, 29.360201, 49.464115>,  <34.935356, 29.850538, 49.096310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654022, 29.360201, 49.464115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021782, 29.209364, 49.508854>,  <35.242435, 29.118862, 49.535698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021782, 29.209364, 49.508854>,  <34.654022, 29.360201, 49.464115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021782, 29.209364, 49.508854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317594, -0.543961, 0.776686,
		-0.232042, -0.749605, -0.619878,
		0.919397, -0.377093, 0.111849,
		35.297600, 29.096235, 49.542408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532627, 28.647167, 49.673740>,  <34.654022, 29.360201, 49.464115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532627, 28.647167, 49.673740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.900661, 28.745911, 49.795395>,  <35.121483, 28.805157, 49.868389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.900661, 28.745911, 49.795395>,  <34.532627, 28.647167, 49.673740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900661, 28.745911, 49.795395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175651, -0.433988, 0.883630,
		0.350125, -0.866438, -0.355946,
		0.920087, 0.246859, 0.304140,
		35.176689, 28.819967, 49.886639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846912, 28.087963, 50.026779>,  <34.532627, 28.647167, 49.673740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846912, 28.087963, 50.026779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032391, 28.415968, 50.160984>,  <35.143677, 28.612770, 50.241508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032391, 28.415968, 50.160984>,  <34.846912, 28.087963, 50.026779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032391, 28.415968, 50.160984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062555, -0.347443, 0.935612,
		0.883784, -0.454826, -0.109811,
		0.463694, 0.820010, 0.335516,
		35.171497, 28.661970, 50.261639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038666, 27.783310, 50.531879>,  <34.846912, 28.087963, 50.026779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038666, 27.783310, 50.531879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158955, 28.158670, 50.599964>,  <35.231129, 28.383886, 50.640816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158955, 28.158670, 50.599964>,  <35.038666, 27.783310, 50.531879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158955, 28.158670, 50.599964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147154, -0.221990, 0.963880,
		0.942290, -0.264815, -0.204847,
		0.300725, 0.938399, 0.170210,
		35.249172, 28.440189, 50.651028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603127, 27.790419, 50.984226>,  <35.038666, 27.783310, 50.531879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603127, 27.790419, 50.984226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433495, 28.150059, 51.027634>,  <35.331715, 28.365843, 51.053680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433495, 28.150059, 51.027634>,  <35.603127, 27.790419, 50.984226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433495, 28.150059, 51.027634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116580, -0.064637, 0.991076,
		0.898091, 0.432943, -0.077406,
		-0.424077, 0.899101, 0.108522,
		35.306271, 28.419788, 51.060192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056854, 28.208433, 51.310860>,  <35.603127, 27.790419, 50.984226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056854, 28.208433, 51.310860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711327, 28.393833, 51.389832>,  <35.504009, 28.505074, 51.437214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711327, 28.393833, 51.389832>,  <36.056854, 28.208433, 51.310860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711327, 28.393833, 51.389832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316510, 0.194403, 0.928455,
		0.391960, 0.864508, -0.314632,
		-0.863822, 0.463501, 0.197427,
		35.452179, 28.532883, 51.449059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168583, 28.846067, 51.689213>,  <36.056854, 28.208433, 51.310860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168583, 28.846067, 51.689213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806465, 28.733566, 51.816547>,  <35.589195, 28.666065, 51.892948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806465, 28.733566, 51.816547>,  <36.168583, 28.846067, 51.689213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806465, 28.733566, 51.816547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313560, 0.063112, 0.947469,
		-0.286571, 0.957556, 0.031055,
		-0.905294, -0.281255, 0.318337,
		35.534878, 28.649189, 51.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092327, 29.147379, 52.400398>,  <36.168583, 28.846067, 51.689213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092327, 29.147379, 52.400398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809040, 28.866331, 52.372826>,  <35.639069, 28.697702, 52.356281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809040, 28.866331, 52.372826>,  <36.092327, 29.147379, 52.400398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809040, 28.866331, 52.372826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038234, -0.135665, 0.990017,
		-0.704957, 0.698513, 0.122945,
		-0.708219, -0.702620, -0.068931,
		35.596573, 28.655544, 52.352146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136818, 29.631310, 51.859646>,  <36.092327, 29.147379, 52.400398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136818, 29.631310, 51.859646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.044880, 29.913544, 52.127769>,  <35.989716, 30.082884, 52.288643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.044880, 29.913544, 52.127769>,  <36.136818, 29.631310, 51.859646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044880, 29.913544, 52.127769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060607, 0.697792, -0.713732,
		-0.971338, -0.123424, -0.203149,
		-0.229847, 0.705587, 0.670312,
		35.975925, 30.125219, 52.328861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564022, 30.122906, 51.510201>,  <36.136818, 29.631310, 51.859646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564022, 30.122906, 51.510201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742428, 30.317738, 51.810551>,  <35.849472, 30.434637, 51.990761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742428, 30.317738, 51.810551>,  <35.564022, 30.122906, 51.510201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742428, 30.317738, 51.810551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005144, 0.837540, -0.546352,
		-0.895010, 0.247545, 0.371052,
		0.446018, 0.487082, 0.750880,
		35.876232, 30.463861, 52.035816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232986, 30.808716, 51.572449>,  <35.564022, 30.122906, 51.510201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232986, 30.808716, 51.572449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.589794, 30.843079, 51.749954>,  <35.803879, 30.863695, 51.856457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.589794, 30.843079, 51.749954>,  <35.232986, 30.808716, 51.572449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589794, 30.843079, 51.749954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137718, 0.883441, -0.447846,
		-0.430513, 0.460601, 0.776213,
		0.892016, 0.085905, 0.443765,
		35.857399, 30.868851, 51.883083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162075, 31.430389, 51.949364>,  <35.232986, 30.808716, 51.572449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162075, 31.430389, 51.949364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.540150, 31.330219, 51.865540>,  <35.766994, 31.270117, 51.815247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.540150, 31.330219, 51.865540>,  <35.162075, 31.430389, 51.949364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540150, 31.330219, 51.865540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144233, 0.895936, -0.420113,
		0.292957, 0.366859, 0.882944,
		0.945184, -0.250425, -0.209557,
		35.823704, 31.255093, 51.802673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471809, 32.140656, 51.895821>,  <35.162075, 31.430389, 51.949364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471809, 32.140656, 51.895821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762054, 31.900557, 51.761246>,  <35.936203, 31.756496, 51.680500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762054, 31.900557, 51.761246>,  <35.471809, 32.140656, 51.895821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762054, 31.900557, 51.761246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320015, 0.727210, -0.607253,
		0.609161, 0.332966, 0.719761,
		0.725612, -0.600249, -0.336434,
		35.979736, 31.720482, 51.660316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187431, 32.406334, 51.997437>,  <35.471809, 32.140656, 51.895821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187431, 32.406334, 51.997437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.168018, 32.156372, 51.685760>,  <36.156372, 32.006393, 51.498756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.168018, 32.156372, 51.685760>,  <36.187431, 32.406334, 51.997437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168018, 32.156372, 51.685760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435025, 0.689007, -0.579675,
		0.899110, -0.367099, 0.238411,
		-0.048531, -0.624906, -0.779190,
		36.153458, 31.968901, 51.452003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827236, 32.390728, 51.640606>,  <36.187431, 32.406334, 51.997437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827236, 32.390728, 51.640606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565540, 32.263824, 51.365997>,  <36.408524, 32.187683, 51.201233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565540, 32.263824, 51.365997>,  <36.827236, 32.390728, 51.640606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565540, 32.263824, 51.365997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407769, 0.616534, -0.673506,
		0.636943, -0.720578, -0.273992,
		-0.654238, -0.317259, -0.686526,
		36.369267, 32.168648, 51.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501221, 32.160538, 51.249817>,  <36.827236, 32.390728, 51.640606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501221, 32.160538, 51.249817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874020, 32.305004, 51.262047>,  <38.097698, 32.391682, 51.269382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874020, 32.305004, 51.262047>,  <37.501221, 32.160538, 51.249817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874020, 32.305004, 51.262047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174029, -0.519887, 0.836320,
		0.317942, -0.774131, -0.547388,
		0.932001, 0.361162, 0.030573,
		38.153622, 32.413353, 51.271217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815838, 31.633862, 51.202183>,  <37.501221, 32.160538, 51.249817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815838, 31.633862, 51.202183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050320, 31.902008, 51.384159>,  <38.191010, 32.062897, 51.493343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050320, 31.902008, 51.384159>,  <37.815838, 31.633862, 51.202183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050320, 31.902008, 51.384159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122357, -0.628356, 0.768243,
		0.800868, -0.394686, -0.450371,
		0.586208, 0.670367, 0.454938,
		38.226181, 32.103119, 51.520641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423016, 31.234964, 51.381649>,  <37.815838, 31.633862, 51.202183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423016, 31.234964, 51.381649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452274, 31.551617, 51.624290>,  <38.469830, 31.741608, 51.769875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452274, 31.551617, 51.624290>,  <38.423016, 31.234964, 51.381649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452274, 31.551617, 51.624290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343250, -0.591059, 0.729951,
		0.936392, 0.154825, -0.314960,
		0.073145, 0.791630, 0.606606,
		38.474216, 31.789106, 51.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052456, 31.098928, 51.732609>,  <38.423016, 31.234964, 51.381649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052456, 31.098928, 51.732609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.896648, 31.390261, 51.958107>,  <38.803162, 31.565060, 52.093407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.896648, 31.390261, 51.958107>,  <39.052456, 31.098928, 51.732609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896648, 31.390261, 51.958107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380542, -0.430126, 0.818645,
		0.838725, 0.533408, -0.109617,
		-0.389522, 0.728332, 0.563741,
		38.779793, 31.608761, 52.127228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580227, 31.309069, 52.188274>,  <39.052456, 31.098928, 51.732609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580227, 31.309069, 52.188274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.238575, 31.427980, 52.358963>,  <39.033585, 31.499329, 52.461376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.238575, 31.427980, 52.358963>,  <39.580227, 31.309069, 52.188274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238575, 31.427980, 52.358963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311939, -0.363672, 0.877745,
		0.416122, 0.882817, 0.217890,
		-0.854129, 0.297280, 0.426717,
		38.982338, 31.517164, 52.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714016, 31.675385, 52.823338>,  <39.580227, 31.309069, 52.188274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714016, 31.675385, 52.823338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.345280, 31.526209, 52.865513>,  <39.124039, 31.436703, 52.890816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.345280, 31.526209, 52.865513>,  <39.714016, 31.675385, 52.823338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345280, 31.526209, 52.865513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225755, -0.295594, 0.928256,
		-0.315017, 0.879511, 0.356685,
		-0.921845, -0.372940, 0.105437,
		39.068726, 31.414328, 52.897144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610897, 31.853943, 53.534882>,  <39.714016, 31.675385, 52.823338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610897, 31.853943, 53.534882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348064, 31.562544, 53.457382>,  <39.190365, 31.387705, 53.410881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348064, 31.562544, 53.457382>,  <39.610897, 31.853943, 53.534882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348064, 31.562544, 53.457382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072222, -0.316681, 0.945778,
		-0.750354, 0.607458, 0.260698,
		-0.657079, -0.728497, -0.193751,
		39.150940, 31.343994, 53.399258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163307, 31.915678, 54.083565>,  <39.610897, 31.853943, 53.534882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163307, 31.915678, 54.083565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116032, 31.557508, 53.911869>,  <39.087666, 31.342606, 53.808853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116032, 31.557508, 53.911869>,  <39.163307, 31.915678, 54.083565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116032, 31.557508, 53.911869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103097, -0.440997, 0.891568,
		-0.987625, 0.061118, 0.144436,
		-0.118187, -0.895425, -0.429238,
		39.080574, 31.288881, 53.783096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846577, 31.476519, 54.543163>,  <39.163307, 31.915678, 54.083565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846577, 31.476519, 54.543163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.983131, 31.210846, 54.277138>,  <39.065063, 31.051441, 54.117523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.983131, 31.210846, 54.277138>,  <38.846577, 31.476519, 54.543163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983131, 31.210846, 54.277138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226496, -0.628593, 0.744023,
		-0.912224, -0.404637, -0.064161,
		0.341390, -0.664183, -0.665066,
		39.085548, 31.011591, 54.077618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.452869, 36.735680, 38.762989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805080, 36.730267, 38.573463>,  <37.016407, 36.727016, 38.459747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805080, 36.730267, 38.573463>,  <36.452869, 36.735680, 38.762989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805080, 36.730267, 38.573463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257742, 0.825228, -0.502562,
		0.397804, 0.564638, 0.723143,
		0.880523, -0.013537, -0.473809,
		37.069237, 36.726204, 38.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721134, 36.771679, 39.450657>,  <36.452869, 36.735680, 38.762989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721134, 36.771679, 39.450657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 36.629292, 39.526302>,  <37.306839, 36.543858, 39.571690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 36.629292, 39.526302>,  <36.721134, 36.771679, 39.450657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087200, 36.629292, 39.526302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221705, -0.052688, 0.973689,
		-0.336640, -0.933011, -0.127138,
		0.915161, -0.355970, 0.189116,
		37.361748, 36.522499, 39.583038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704224, 36.037685, 39.794445>,  <36.721134, 36.771679, 39.450657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704224, 36.037685, 39.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058762, 36.200386, 39.882942>,  <37.271484, 36.298004, 39.936039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058762, 36.200386, 39.882942>,  <36.704224, 36.037685, 39.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058762, 36.200386, 39.882942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171403, -0.155642, 0.972829,
		0.430132, -0.900184, -0.068234,
		0.886345, 0.406749, 0.221241,
		37.324665, 36.322411, 39.949314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981842, 35.591679, 40.293503>,  <36.704224, 36.037685, 39.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981842, 35.591679, 40.293503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184025, 35.933495, 40.341297>,  <37.305336, 36.138584, 40.369976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184025, 35.933495, 40.341297>,  <36.981842, 35.591679, 40.293503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184025, 35.933495, 40.341297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088188, -0.086595, 0.992333,
		0.858333, -0.512120, 0.031590,
		0.505458, 0.854537, 0.119491,
		37.335663, 36.189857, 40.377144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337704, 35.483974, 40.843430>,  <36.981842, 35.591679, 40.293503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337704, 35.483974, 40.843430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373695, 35.880665, 40.806797>,  <37.395290, 36.118679, 40.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373695, 35.880665, 40.806797>,  <37.337704, 35.483974, 40.843430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373695, 35.880665, 40.806797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200578, 0.108112, 0.973694,
		0.975537, -0.069243, 0.208645,
		0.089979, 0.991724, -0.091579,
		37.400688, 36.178181, 40.779324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787323, 35.615730, 41.333920>,  <37.337704, 35.483974, 40.843430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787323, 35.615730, 41.333920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605602, 35.956989, 41.231350>,  <37.496571, 36.161743, 41.169807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605602, 35.956989, 41.231350>,  <37.787323, 35.615730, 41.333920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605602, 35.956989, 41.231350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205610, 0.179659, 0.962002,
		0.866797, 0.489760, 0.093797,
		-0.454299, 0.853146, -0.256428,
		37.469311, 36.212933, 41.154423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252823, 36.220333, 41.559326>,  <37.787323, 35.615730, 41.333920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252823, 36.220333, 41.559326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894325, 36.397438, 41.548744>,  <37.679226, 36.503700, 41.542393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894325, 36.397438, 41.548744>,  <38.252823, 36.220333, 41.559326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894325, 36.397438, 41.548744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093026, 0.245956, 0.964807,
		0.433690, 0.862244, -0.261626,
		-0.896247, 0.442765, -0.026457,
		37.625450, 36.530266, 41.540806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295303, 36.897633, 41.777775>,  <38.252823, 36.220333, 41.559326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295303, 36.897633, 41.777775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912178, 36.804703, 41.845432>,  <37.682301, 36.748943, 41.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912178, 36.804703, 41.845432>,  <38.295303, 36.897633, 41.777775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912178, 36.804703, 41.845432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161954, 0.049819, 0.985540,
		-0.237396, 0.971360, -0.010091,
		-0.957817, -0.232329, 0.169142,
		37.624832, 36.735004, 41.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022858, 37.298061, 42.424576>,  <38.295303, 36.897633, 41.777775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022858, 37.298061, 42.424576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766891, 36.996174, 42.366737>,  <37.613312, 36.815041, 42.332035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766891, 36.996174, 42.366737>,  <38.022858, 37.298061, 42.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766891, 36.996174, 42.366737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079238, -0.122355, 0.989318,
		-0.764347, 0.644540, 0.018495,
		-0.639918, -0.754717, -0.144594,
		37.574917, 36.769760, 42.323360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567795, 37.430649, 42.819736>,  <38.022858, 37.298061, 42.424576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567795, 37.430649, 42.819736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511269, 37.040119, 42.754230>,  <37.477352, 36.805801, 42.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511269, 37.040119, 42.754230>,  <37.567795, 37.430649, 42.819736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511269, 37.040119, 42.754230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145717, -0.143114, 0.978920,
		-0.979182, 0.162199, -0.122043,
		-0.141313, -0.976325, -0.163770,
		37.468876, 36.747223, 42.705101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006447, 37.210308, 43.119686>,  <37.567795, 37.430649, 42.819736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006447, 37.210308, 43.119686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200352, 36.863510, 43.073490>,  <37.316692, 36.655434, 43.045773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200352, 36.863510, 43.073490>,  <37.006447, 37.210308, 43.119686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200352, 36.863510, 43.073490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145378, -0.210067, 0.966818,
		-0.862482, -0.451884, -0.227873,
		0.484758, -0.866991, -0.115485,
		37.345779, 36.603413, 43.038845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591213, 36.596310, 43.461712>,  <37.006447, 37.210308, 43.119686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591213, 36.596310, 43.461712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962009, 36.447433, 43.443123>,  <37.184486, 36.358109, 43.431969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962009, 36.447433, 43.443123>,  <36.591213, 36.596310, 43.461712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962009, 36.447433, 43.443123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078308, -0.313209, 0.946450,
		-0.366816, -0.873712, -0.319488,
		0.926992, -0.372192, -0.046471,
		37.240108, 36.335777, 43.429180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981701, 36.262363, 42.994724>,  <36.591213, 36.596310, 43.461712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981701, 36.262363, 42.994724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621254, 36.113106, 43.083038>,  <35.404984, 36.023552, 43.136028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621254, 36.113106, 43.083038>,  <35.981701, 36.262363, 42.994724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621254, 36.113106, 43.083038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304137, 0.181095, -0.935257,
		0.309001, -0.909928, -0.276675,
		-0.901121, -0.373142, 0.220784,
		35.350918, 36.001163, 43.149273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897102, 35.856144, 42.469135>,  <35.981701, 36.262363, 42.994724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897102, 35.856144, 42.469135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525696, 35.928535, 42.598816>,  <35.302853, 35.971970, 42.676624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525696, 35.928535, 42.598816>,  <35.897102, 35.856144, 42.469135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525696, 35.928535, 42.598816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325199, 0.024984, -0.945316,
		-0.179187, -0.983169, 0.035657,
		-0.928514, 0.180984, 0.324202,
		35.247143, 35.982830, 42.696075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418934, 35.486546, 42.028240>,  <35.897102, 35.856144, 42.469135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418934, 35.486546, 42.028240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225182, 35.797085, 42.189568>,  <35.108932, 35.983406, 42.286366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225182, 35.797085, 42.189568>,  <35.418934, 35.486546, 42.028240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225182, 35.797085, 42.189568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415755, 0.201360, -0.886905,
		-0.769757, -0.597280, 0.225235,
		-0.484377, 0.776344, 0.403321,
		35.079868, 36.029987, 42.310562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895782, 35.462551, 41.653641>,  <35.418934, 35.486546, 42.028240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895782, 35.462551, 41.653641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823559, 35.792664, 41.867672>,  <34.780224, 35.990730, 41.996090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823559, 35.792664, 41.867672>,  <34.895782, 35.462551, 41.653641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823559, 35.792664, 41.867672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547422, 0.367648, -0.751774,
		-0.817147, -0.428648, 0.385399,
		-0.180555, 0.825286, 0.535074,
		34.769394, 36.040249, 42.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195110, 35.586216, 41.571499>,  <34.895782, 35.462551, 41.653641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195110, 35.586216, 41.571499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402878, 35.924065, 41.623371>,  <34.527538, 36.126774, 41.654495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402878, 35.924065, 41.623371>,  <34.195110, 35.586216, 41.571499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402878, 35.924065, 41.623371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396313, 0.372561, -0.839127,
		-0.757061, 0.384461, 0.528249,
		0.519417, 0.844623, 0.129684,
		34.558704, 36.177452, 41.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653282, 36.147663, 41.424107>,  <34.195110, 35.586216, 41.571499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653282, 36.147663, 41.424107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004257, 36.338890, 41.408340>,  <34.214844, 36.453625, 41.398880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004257, 36.338890, 41.408340>,  <33.653282, 36.147663, 41.424107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004257, 36.338890, 41.408340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285050, 0.453564, -0.844409,
		-0.385809, 0.752151, 0.534248,
		0.877438, 0.478068, -0.039412,
		34.267490, 36.482311, 41.396519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464428, 36.778343, 41.491047>,  <33.653282, 36.147663, 41.424107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464428, 36.778343, 41.491047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814888, 36.767544, 41.298538>,  <34.025166, 36.761063, 41.183033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814888, 36.767544, 41.298538>,  <33.464428, 36.778343, 41.491047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814888, 36.767544, 41.298538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387759, 0.553641, -0.736970,
		0.286350, 0.832318, 0.474606,
		0.876155, -0.026999, -0.481273,
		34.077736, 36.759445, 41.154156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591728, 37.396065, 41.191029>,  <33.464428, 36.778343, 41.491047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591728, 37.396065, 41.191029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808262, 37.138626, 40.974606>,  <33.938183, 36.984161, 40.844753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808262, 37.138626, 40.974606>,  <33.591728, 37.396065, 41.191029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808262, 37.138626, 40.974606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519432, 0.250031, -0.817114,
		0.661173, 0.723372, -0.198955,
		0.541332, -0.643597, -0.541056,
		33.970661, 36.945545, 40.812290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697193, 37.760418, 40.529785>,  <33.591728, 37.396065, 41.191029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697193, 37.760418, 40.529785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789021, 37.383507, 40.432285>,  <33.844116, 37.157360, 40.373783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789021, 37.383507, 40.432285>,  <33.697193, 37.760418, 40.529785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789021, 37.383507, 40.432285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532126, 0.088186, -0.842060,
		0.814949, 0.323016, -0.481165,
		0.229567, -0.942276, -0.243752,
		33.857891, 37.100822, 40.359161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039490, 37.739662, 39.844662>,  <33.697193, 37.760418, 40.529785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039490, 37.739662, 39.844662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895081, 37.369656, 39.891998>,  <33.808434, 37.147652, 39.920399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895081, 37.369656, 39.891998>,  <34.039490, 37.739662, 39.844662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895081, 37.369656, 39.891998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423490, 0.049566, -0.904544,
		0.830853, -0.376680, -0.409630,
		-0.361027, -0.925017, 0.118338,
		33.786774, 37.092152, 39.927498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097645, 37.443771, 39.148235>,  <34.039490, 37.739662, 39.844662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097645, 37.443771, 39.148235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853542, 37.198925, 39.349392>,  <33.707081, 37.052017, 39.470085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853542, 37.198925, 39.349392>,  <34.097645, 37.443771, 39.148235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853542, 37.198925, 39.349392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579285, -0.088218, -0.810337,
		0.540388, -0.785828, -0.300757,
		-0.610254, -0.612120, 0.502890,
		33.670467, 37.015289, 39.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039841, 36.915623, 38.694393>,  <34.097645, 37.443771, 39.148235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039841, 36.915623, 38.694393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725346, 36.933723, 38.940899>,  <33.536648, 36.944584, 39.088802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725346, 36.933723, 38.940899>,  <34.039841, 36.915623, 38.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725346, 36.933723, 38.940899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613058, 0.067791, -0.787124,
		-0.077396, -0.996673, -0.025558,
		-0.786238, 0.045252, 0.616265,
		33.489475, 36.947300, 39.125778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721149, 36.440029, 38.412724>,  <34.039841, 36.915623, 38.694393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721149, 36.440029, 38.412724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448864, 36.637848, 38.628891>,  <33.285492, 36.756538, 38.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448864, 36.637848, 38.628891>,  <33.721149, 36.440029, 38.412724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448864, 36.637848, 38.628891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703848, -0.237066, -0.669625,
		-0.203042, -0.836199, 0.509457,
		-0.680714, 0.494542, 0.540422,
		33.244648, 36.786213, 38.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104019, 36.016399, 38.501217>,  <33.721149, 36.440029, 38.412724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104019, 36.016399, 38.501217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010067, 36.401909, 38.551762>,  <32.953697, 36.633217, 38.582088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010067, 36.401909, 38.551762>,  <33.104019, 36.016399, 38.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010067, 36.401909, 38.551762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896895, -0.164770, -0.410403,
		-0.374717, -0.209725, 0.903107,
		-0.234877, 0.963777, 0.126359,
		32.939606, 36.691044, 38.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154545, 35.311340, 38.198807>,  <33.104019, 36.016399, 38.501217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154545, 35.311340, 38.198807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333939, 35.641602, 38.061897>,  <33.441574, 35.839760, 37.979752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333939, 35.641602, 38.061897>,  <33.154545, 35.311340, 38.198807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333939, 35.641602, 38.061897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431934, -0.535476, -0.725739,
		-0.782491, 0.177644, -0.596783,
		0.448486, 0.825656, -0.342275,
		33.468483, 35.889297, 37.959213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026966, 34.819530, 38.881035>,  <33.154545, 35.311340, 38.198807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026966, 34.819530, 38.881035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983822, 34.464558, 38.701778>,  <32.957935, 34.251575, 38.594227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983822, 34.464558, 38.701778>,  <33.026966, 34.819530, 38.881035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983822, 34.464558, 38.701778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378780, -0.453454, 0.806787,
		-0.919180, -0.082723, 0.385053,
		-0.107863, -0.887433, -0.448139,
		32.951462, 34.198326, 38.567337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702503, 34.274117, 39.332146>,  <33.026966, 34.819530, 38.881035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702503, 34.274117, 39.332146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961636, 34.115055, 39.072243>,  <33.117115, 34.019619, 38.916302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961636, 34.115055, 39.072243>,  <32.702503, 34.274117, 39.332146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961636, 34.115055, 39.072243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421678, -0.523154, 0.740606,
		-0.634430, -0.753776, -0.171232,
		0.647832, -0.397658, -0.649755,
		33.155987, 33.995758, 38.877316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695194, 33.609108, 39.543274>,  <32.702503, 34.274117, 39.332146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695194, 33.609108, 39.543274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020302, 33.716209, 39.336308>,  <33.215366, 33.780472, 39.212128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020302, 33.716209, 39.336308>,  <32.695194, 33.609108, 39.543274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020302, 33.716209, 39.336308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571522, -0.538732, 0.618976,
		-0.113015, -0.798797, -0.590890,
		0.812767, 0.267753, -0.517414,
		33.264133, 33.796535, 39.181084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018772, 33.062763, 39.748436>,  <32.695194, 33.609108, 39.543274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018772, 33.062763, 39.748436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310188, 33.250225, 39.548599>,  <33.485039, 33.362701, 39.428696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310188, 33.250225, 39.548599>,  <33.018772, 33.062763, 39.748436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310188, 33.250225, 39.548599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681615, -0.423477, 0.596714,
		0.068089, -0.775258, -0.627964,
		0.728536, 0.468659, -0.499594,
		33.528748, 33.390823, 39.398720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523003, 32.556023, 39.601433>,  <33.018772, 33.062763, 39.748436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523003, 32.556023, 39.601433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702808, 32.913330, 39.602200>,  <33.810692, 33.127716, 39.602657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702808, 32.913330, 39.602200>,  <33.523003, 32.556023, 39.601433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702808, 32.913330, 39.602200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691857, -0.349509, 0.631805,
		0.565043, -0.282679, -0.775125,
		0.449511, 0.893273, 0.001914,
		33.837662, 33.181313, 39.602776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315674, 32.350338, 39.687481>,  <33.523003, 32.556023, 39.601433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315674, 32.350338, 39.687481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285107, 32.741711, 39.764248>,  <34.266766, 32.976536, 39.810310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285107, 32.741711, 39.764248>,  <34.315674, 32.350338, 39.687481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285107, 32.741711, 39.764248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772755, -0.063522, 0.631517,
		0.630087, 0.196566, -0.751234,
		-0.076415, 0.978431, 0.191922,
		34.262184, 33.035240, 39.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936859, 32.652348, 39.689499>,  <34.315674, 32.350338, 39.687481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936859, 32.652348, 39.689499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724720, 32.908581, 39.911629>,  <34.597435, 33.062321, 40.044907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724720, 32.908581, 39.911629>,  <34.936859, 32.652348, 39.689499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724720, 32.908581, 39.911629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747499, 0.044299, 0.662784,
		0.399966, 0.766613, -0.502326,
		-0.530351, 0.640579, 0.555325,
		34.565613, 33.100754, 40.078228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447460, 32.925404, 40.214287>,  <34.936859, 32.652348, 39.689499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447460, 32.925404, 40.214287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101650, 33.041489, 40.378422>,  <34.894165, 33.111137, 40.476902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101650, 33.041489, 40.378422>,  <35.447460, 32.925404, 40.214287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101650, 33.041489, 40.378422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474541, 0.202408, 0.856645,
		0.165551, 0.935312, -0.312703,
		-0.864525, 0.290209, 0.410335,
		34.842293, 33.128551, 40.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473480, 33.593014, 40.554214>,  <35.447460, 32.925404, 40.214287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473480, 33.593014, 40.554214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173672, 33.415131, 40.750359>,  <34.993786, 33.308399, 40.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173672, 33.415131, 40.750359>,  <35.473480, 33.593014, 40.554214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173672, 33.415131, 40.750359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427912, 0.239708, 0.871454,
		-0.505088, 0.863002, 0.010631,
		-0.749518, -0.444710, 0.490362,
		34.948814, 33.281719, 40.897469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523228, 33.898098, 41.168381>,  <35.473480, 33.593014, 40.554214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523228, 33.898098, 41.168381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311951, 33.567719, 41.247189>,  <35.185184, 33.369492, 41.294472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311951, 33.567719, 41.247189>,  <35.523228, 33.898098, 41.168381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311951, 33.567719, 41.247189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270770, 0.056073, 0.961010,
		-0.804794, 0.560947, 0.194025,
		-0.528196, -0.825951, 0.197015,
		35.153492, 33.319935, 41.306293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059322, 34.036526, 41.780624>,  <35.523228, 33.898098, 41.168381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059322, 34.036526, 41.780624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099911, 33.638935, 41.764034>,  <35.124264, 33.400383, 41.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099911, 33.638935, 41.764034>,  <35.059322, 34.036526, 41.780624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099911, 33.638935, 41.764034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270314, -0.012574, 0.962690,
		-0.957410, -0.108901, 0.267409,
		0.101475, -0.993973, -0.041476,
		35.130352, 33.340744, 41.751591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501713, 33.596855, 42.228863>,  <35.059322, 34.036526, 41.780624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501713, 33.596855, 42.228863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827782, 33.366100, 42.208096>,  <35.023422, 33.227646, 42.195637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827782, 33.366100, 42.208096>,  <34.501713, 33.596855, 42.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827782, 33.366100, 42.208096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061286, -0.175033, 0.982653,
		-0.575969, -0.797849, -0.178037,
		0.815171, -0.576890, -0.051917,
		35.072334, 33.193035, 42.192520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465099, 33.405350, 42.861717>,  <34.501713, 33.596855, 42.228863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465099, 33.405350, 42.861717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794254, 33.219521, 42.730862>,  <34.991749, 33.108025, 42.652348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794254, 33.219521, 42.730862>,  <34.465099, 33.405350, 42.861717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794254, 33.219521, 42.730862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050604, -0.513544, 0.856570,
		-0.565945, -0.721416, -0.399080,
		0.822889, -0.464577, -0.327144,
		35.041122, 33.080147, 42.632717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316055, 32.747246, 42.890476>,  <34.465099, 33.405350, 42.861717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316055, 32.747246, 42.890476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712601, 32.795834, 42.910244>,  <34.950527, 32.824986, 42.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712601, 32.795834, 42.910244>,  <34.316055, 32.747246, 42.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712601, 32.795834, 42.910244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017285, -0.494578, 0.868961,
		0.129994, -0.860603, -0.492407,
		0.991364, 0.121471, 0.049417,
		35.010010, 32.832275, 42.925068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601845, 32.106396, 42.927246>,  <34.316055, 32.747246, 42.890476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601845, 32.106396, 42.927246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895546, 32.337856, 43.069244>,  <35.071766, 32.476734, 43.154446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895546, 32.337856, 43.069244>,  <34.601845, 32.106396, 42.927246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895546, 32.337856, 43.069244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201827, -0.685350, 0.699687,
		0.648177, -0.442101, -0.620011,
		0.734257, 0.578655, 0.355000,
		35.115822, 32.511452, 43.175743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195496, 31.681267, 43.037495>,  <34.601845, 32.106396, 42.927246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195496, 31.681267, 43.037495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279896, 32.001110, 43.262386>,  <35.330536, 32.193016, 43.397320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279896, 32.001110, 43.262386>,  <35.195496, 31.681267, 43.037495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279896, 32.001110, 43.262386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450647, -0.589983, 0.669953,
		0.867407, 0.112005, -0.484830,
		0.211004, 0.799609, 0.562230,
		35.343197, 32.240993, 43.431057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923229, 31.628662, 43.250927>,  <35.195496, 31.681267, 43.037495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923229, 31.628662, 43.250927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723385, 31.857746, 43.510895>,  <35.603477, 31.995195, 43.666878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723385, 31.857746, 43.510895>,  <35.923229, 31.628662, 43.250927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723385, 31.857746, 43.510895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501620, -0.420407, 0.756066,
		0.706237, 0.703749, -0.077244,
		-0.499606, 0.572709, 0.649922,
		35.573502, 32.029560, 43.705872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302013, 31.612413, 43.801521>,  <35.923229, 31.628662, 43.250927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302013, 31.612413, 43.801521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982216, 31.790098, 43.963253>,  <35.790337, 31.896709, 44.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982216, 31.790098, 43.963253>,  <36.302013, 31.612413, 43.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982216, 31.790098, 43.963253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288953, -0.305698, 0.907223,
		0.526602, 0.842154, 0.116048,
		-0.799497, 0.444213, 0.404325,
		35.742367, 31.923363, 44.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576359, 31.905684, 44.376488>,  <36.302013, 31.612413, 43.801521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576359, 31.905684, 44.376488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180618, 31.861471, 44.414345>,  <35.943172, 31.834944, 44.437057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180618, 31.861471, 44.414345>,  <36.576359, 31.905684, 44.376488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180618, 31.861471, 44.414345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136261, -0.475466, 0.869117,
		-0.051066, 0.872763, 0.485466,
		-0.989356, -0.110533, 0.094644,
		35.883812, 31.828312, 44.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470688, 32.102032, 45.112881>,  <36.576359, 31.905684, 44.376488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470688, 32.102032, 45.112881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173908, 31.868244, 44.981483>,  <35.995842, 31.727972, 44.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173908, 31.868244, 44.981483>,  <36.470688, 32.102032, 45.112881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173908, 31.868244, 44.981483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033744, -0.521892, 0.852344,
		-0.669608, 0.621310, 0.406939,
		-0.741948, -0.584468, -0.328498,
		35.951324, 31.692904, 44.882935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107666, 31.999250, 45.719833>,  <36.470688, 32.102032, 45.112881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107666, 31.999250, 45.719833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966911, 31.719162, 45.471363>,  <35.882458, 31.551109, 45.322281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966911, 31.719162, 45.471363>,  <36.107666, 31.999250, 45.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966911, 31.719162, 45.471363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027369, -0.671036, 0.740920,
		-0.935642, 0.243718, 0.255293,
		-0.351886, -0.700223, -0.621179,
		35.861347, 31.509094, 45.285007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477177, 31.771679, 45.915272>,  <36.107666, 31.999250, 45.719833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477177, 31.771679, 45.915272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650036, 31.469252, 45.718658>,  <35.753754, 31.287796, 45.600689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650036, 31.469252, 45.718658>,  <35.477177, 31.771679, 45.915272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650036, 31.469252, 45.718658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009371, -0.541266, 0.840799,
		-0.901753, -0.367957, -0.226823,
		0.432149, -0.756068, -0.491536,
		35.779682, 31.242432, 45.571198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106152, 31.235620, 46.154720>,  <35.477177, 31.771679, 45.915272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106152, 31.235620, 46.154720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443279, 31.083794, 46.002098>,  <35.645557, 30.992699, 45.910526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443279, 31.083794, 46.002098>,  <35.106152, 31.235620, 46.154720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443279, 31.083794, 46.002098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084964, -0.606227, 0.790740,
		-0.531447, -0.698870, -0.478691,
		0.842820, -0.379565, -0.381556,
		35.696125, 30.969923, 45.887630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968277, 30.495749, 46.287968>,  <35.106152, 31.235620, 46.154720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968277, 30.495749, 46.287968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359638, 30.551893, 46.227283>,  <35.594456, 30.585581, 46.190872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359638, 30.551893, 46.227283>,  <34.968277, 30.495749, 46.287968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359638, 30.551893, 46.227283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206192, -0.713605, 0.669517,
		-0.014287, -0.686342, -0.727138,
		0.978407, 0.140364, -0.151713,
		35.653160, 30.594002, 46.181770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191902, 29.838360, 46.456795>,  <34.968277, 30.495749, 46.287968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191902, 29.838360, 46.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504093, 30.088051, 46.470642>,  <35.691406, 30.237865, 46.478951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504093, 30.088051, 46.470642>,  <35.191902, 29.838360, 46.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504093, 30.088051, 46.470642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364861, -0.499752, 0.785573,
		0.507675, -0.600490, -0.617801,
		0.780476, 0.624227, 0.034616,
		35.738235, 30.275318, 46.481026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775024, 29.382048, 46.458187>,  <35.191902, 29.838360, 46.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775024, 29.382048, 46.458187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853573, 29.736517, 46.626060>,  <35.900703, 29.949198, 46.726784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853573, 29.736517, 46.626060>,  <35.775024, 29.382048, 46.458187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853573, 29.736517, 46.626060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256167, -0.459520, 0.850423,
		0.946475, -0.059493, -0.317247,
		0.196375, 0.886172, 0.419684,
		35.912487, 30.002369, 46.751965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450928, 29.450052, 46.658951>,  <35.775024, 29.382048, 46.458187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450928, 29.450052, 46.658951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272633, 29.714680, 46.900162>,  <36.165653, 29.873457, 47.044888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272633, 29.714680, 46.900162>,  <36.450928, 29.450052, 46.658951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272633, 29.714680, 46.900162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341960, -0.496719, 0.797705,
		0.827272, 0.561780, -0.004822,
		-0.445740, 0.661568, 0.603029,
		36.138912, 29.913151, 47.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142178, 29.138321, 46.442608>,  <36.450928, 29.450052, 46.658951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142178, 29.138321, 46.442608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453331, 28.887417, 46.427395>,  <37.640022, 28.736874, 46.418266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453331, 28.887417, 46.427395>,  <37.142178, 29.138321, 46.442608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453331, 28.887417, 46.427395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220397, 0.328990, -0.918254,
		0.588496, 0.705910, 0.394162,
		0.777880, -0.627261, -0.038029,
		37.686695, 28.699238, 46.415985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663120, 29.583336, 46.281780>,  <37.142178, 29.138321, 46.442608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663120, 29.583336, 46.281780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727951, 29.216080, 46.137142>,  <37.766850, 28.995726, 46.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727951, 29.216080, 46.137142>,  <37.663120, 29.583336, 46.281780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727951, 29.216080, 46.137142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094451, 0.379191, -0.920485,
		0.982248, 0.115035, 0.148177,
		0.162075, -0.918140, -0.361594,
		37.776573, 28.940638, 46.028664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326363, 29.530308, 45.847843>,  <37.663120, 29.583336, 46.281780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326363, 29.530308, 45.847843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109875, 29.214445, 45.732239>,  <37.979984, 29.024927, 45.662876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109875, 29.214445, 45.732239>,  <38.326363, 29.530308, 45.847843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109875, 29.214445, 45.732239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037761, 0.320527, -0.946487,
		0.840035, -0.523168, -0.143657,
		-0.541217, -0.789657, -0.289008,
		37.947510, 28.977549, 45.645535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603317, 29.394901, 45.271248>,  <38.326363, 29.530308, 45.847843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603317, 29.394901, 45.271248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294556, 29.145420, 45.222000>,  <38.109299, 28.995731, 45.192451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294556, 29.145420, 45.222000>,  <38.603317, 29.394901, 45.271248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294556, 29.145420, 45.222000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050859, 0.132467, -0.989882,
		0.633703, -0.770355, -0.070531,
		-0.771903, -0.623704, -0.123124,
		38.062984, 28.958309, 45.185062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863808, 28.805904, 44.924076>,  <38.603317, 29.394901, 45.271248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863808, 28.805904, 44.924076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473175, 28.865944, 44.862431>,  <38.238796, 28.901968, 44.825443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473175, 28.865944, 44.862431>,  <38.863808, 28.805904, 44.924076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473175, 28.865944, 44.862431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179921, 0.177164, -0.967596,
		-0.117933, -0.972668, -0.200022,
		-0.976586, 0.150100, -0.154110,
		38.180199, 28.910975, 44.816196>
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
