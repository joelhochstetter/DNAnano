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
	<24.126921, 34.844440, 35.047321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360468, 35.167938, 35.018959>,  <24.500595, 35.362038, 35.001942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360468, 35.167938, 35.018959>,  <24.126921, 34.844440, 35.047321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360468, 35.167938, 35.018959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444443, 0.245325, -0.861561,
		-0.679390, 0.534550, 0.502679,
		0.583867, 0.808747, -0.070905,
		24.535627, 35.410561, 34.997688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.695395, 35.276836, 34.613201>,  <24.126921, 34.844440, 35.047321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.695395, 35.276836, 34.613201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.027781, 35.487362, 34.541092>,  <24.227211, 35.613678, 34.497826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.027781, 35.487362, 34.541092>,  <23.695395, 35.276836, 34.613201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.027781, 35.487362, 34.541092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244394, -0.636443, -0.731582,
		-0.499771, 0.563861, -0.657487,
		0.830964, 0.526310, -0.180272,
		24.277069, 35.645256, 34.487011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.779081, 35.458984, 33.912086>,  <23.695395, 35.276836, 34.613201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.779081, 35.458984, 33.912086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157866, 35.465454, 34.040462>,  <24.385136, 35.469337, 34.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157866, 35.465454, 34.040462>,  <23.779081, 35.458984, 33.912086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.157866, 35.465454, 34.040462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277784, -0.543299, -0.792251,
		0.161552, 0.839383, -0.518977,
		0.946962, 0.016174, 0.320938,
		24.441954, 35.470306, 34.136745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.181705, 35.608517, 33.410149>,  <23.779081, 35.458984, 33.912086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.181705, 35.608517, 33.410149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463953, 35.440567, 33.638466>,  <24.633301, 35.339798, 33.775455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463953, 35.440567, 33.638466>,  <24.181705, 35.608517, 33.410149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463953, 35.440567, 33.638466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220372, -0.635559, -0.739933,
		0.673452, 0.647899, -0.355934,
		0.705619, -0.419872, 0.570797,
		24.675638, 35.314606, 33.809704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824306, 35.464901, 32.992443>,  <24.181705, 35.608517, 33.410149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824306, 35.464901, 32.992443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834517, 35.217453, 33.306553>,  <24.840643, 35.068985, 33.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834517, 35.217453, 33.306553>,  <24.824306, 35.464901, 32.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834517, 35.217453, 33.306553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277408, -0.750299, -0.600080,
		0.960413, 0.233158, 0.152459,
		0.025524, -0.618618, 0.785277,
		24.842173, 35.031868, 33.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435400, 35.170143, 33.039047>,  <24.824306, 35.464901, 32.992443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435400, 35.170143, 33.039047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183186, 34.911156, 33.210262>,  <25.031857, 34.755764, 33.312992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183186, 34.911156, 33.210262>,  <25.435400, 35.170143, 33.039047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183186, 34.911156, 33.210262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307272, -0.714654, -0.628375,
		0.712749, -0.264687, 0.649561,
		-0.630534, -0.647465, 0.428038,
		24.994026, 34.716915, 33.338673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708181, 34.518448, 33.309025>,  <25.435400, 35.170143, 33.039047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708181, 34.518448, 33.309025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330322, 34.446754, 33.199108>,  <25.103607, 34.403740, 33.133156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330322, 34.446754, 33.199108>,  <25.708181, 34.518448, 33.309025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330322, 34.446754, 33.199108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316171, -0.720956, -0.616651,
		-0.087591, -0.669401, 0.737720,
		-0.944650, -0.179233, -0.274794,
		25.046926, 34.392986, 33.116669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476133, 33.721252, 33.398735>,  <25.708181, 34.518448, 33.309025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476133, 33.721252, 33.398735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306984, 33.933174, 33.104664>,  <25.205494, 34.060329, 32.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306984, 33.933174, 33.104664>,  <25.476133, 33.721252, 33.398735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306984, 33.933174, 33.104664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386168, -0.628571, -0.675110,
		-0.819787, -0.569388, 0.061212,
		-0.422875, 0.529808, -0.735173,
		25.180120, 34.092117, 32.884113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379009, 33.154190, 32.958031>,  <25.476133, 33.721252, 33.398735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379009, 33.154190, 32.958031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337494, 33.500542, 32.762280>,  <25.312584, 33.708351, 32.644829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337494, 33.500542, 32.762280>,  <25.379009, 33.154190, 32.958031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337494, 33.500542, 32.762280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385697, -0.418489, -0.822256,
		-0.916769, -0.274092, -0.290530,
		-0.103790, 0.865876, -0.489374,
		25.306356, 33.760303, 32.615467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010447, 33.050335, 32.410107>,  <25.379009, 33.154190, 32.958031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010447, 33.050335, 32.410107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243948, 33.367607, 32.340714>,  <25.384048, 33.557972, 32.299076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243948, 33.367607, 32.340714>,  <25.010447, 33.050335, 32.410107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243948, 33.367607, 32.340714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471219, -0.504966, -0.723161,
		-0.661200, 0.340400, -0.668537,
		0.583753, 0.793182, -0.173481,
		25.419073, 33.605560, 32.288670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029375, 33.100361, 31.688595>,  <25.010447, 33.050335, 32.410107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029375, 33.100361, 31.688595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353001, 33.310104, 31.794777>,  <25.547176, 33.435951, 31.858486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353001, 33.310104, 31.794777>,  <25.029375, 33.100361, 31.688595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353001, 33.310104, 31.794777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533562, -0.465935, -0.705844,
		-0.246431, 0.712709, -0.656748,
		0.809063, 0.524358, 0.265454,
		25.595720, 33.467411, 31.874413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483028, 33.273746, 31.105116>,  <25.029375, 33.100361, 31.688595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483028, 33.273746, 31.105116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720720, 33.265175, 31.426720>,  <25.863337, 33.260033, 31.619682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720720, 33.265175, 31.426720>,  <25.483028, 33.273746, 31.105116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720720, 33.265175, 31.426720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631042, -0.607372, -0.482581,
		0.498672, 0.794129, -0.347399,
		0.594232, -0.021426, 0.804008,
		25.898991, 33.258747, 31.667923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158915, 33.546787, 30.864025>,  <25.483028, 33.273746, 31.105116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158915, 33.546787, 30.864025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177851, 33.279308, 31.160835>,  <26.189213, 33.118820, 31.338921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177851, 33.279308, 31.160835>,  <26.158915, 33.546787, 30.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177851, 33.279308, 31.160835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579055, -0.586928, -0.565871,
		0.813913, 0.456461, 0.359429,
		0.047339, -0.668699, 0.742025,
		26.192053, 33.078697, 31.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885296, 33.251984, 31.114704>,  <26.158915, 33.546787, 30.864025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885296, 33.251984, 31.114704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603601, 32.968571, 31.132757>,  <26.434584, 32.798523, 31.143589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603601, 32.968571, 31.132757>,  <26.885296, 33.251984, 31.114704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603601, 32.968571, 31.132757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585252, -0.615346, -0.528044,
		0.401907, -0.345453, 0.848017,
		-0.704238, -0.708528, 0.045135,
		26.392330, 32.756012, 31.146297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058195, 33.038143, 31.821774>,  <26.885296, 33.251984, 31.114704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058195, 33.038143, 31.821774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794003, 33.277313, 31.640116>,  <26.635487, 33.420815, 31.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794003, 33.277313, 31.640116>,  <27.058195, 33.038143, 31.821774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794003, 33.277313, 31.640116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440586, 0.181138, 0.879246,
		0.607986, 0.780817, 0.143798,
		-0.660483, 0.597924, -0.454146,
		26.595858, 33.456692, 31.503872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644201, 33.480618, 32.265911>,  <27.058195, 33.038143, 31.821774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644201, 33.480618, 32.265911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404335, 33.553528, 31.954224>,  <26.260416, 33.597275, 31.767212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404335, 33.553528, 31.954224>,  <26.644201, 33.480618, 32.265911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404335, 33.553528, 31.954224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601442, 0.539667, 0.589090,
		0.527893, 0.821910, -0.213993,
		-0.599664, 0.182272, -0.779217,
		26.224436, 33.608208, 31.720459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562859, 34.242706, 32.197083>,  <26.644201, 33.480618, 32.265911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562859, 34.242706, 32.197083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256979, 34.012924, 32.080303>,  <26.073452, 33.875053, 32.010235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256979, 34.012924, 32.080303>,  <26.562859, 34.242706, 32.197083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256979, 34.012924, 32.080303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596371, 0.459303, 0.658318,
		-0.244084, 0.677524, -0.693819,
		-0.764699, -0.574458, -0.291947,
		26.027569, 33.840588, 31.992720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084454, 34.685841, 31.959141>,  <26.562859, 34.242706, 32.197083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084454, 34.685841, 31.959141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878174, 34.354916, 32.048225>,  <25.754406, 34.156361, 32.101677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878174, 34.354916, 32.048225>,  <26.084454, 34.685841, 31.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878174, 34.354916, 32.048225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494300, 0.499618, 0.711372,
		-0.699801, 0.256767, -0.666595,
		-0.515700, -0.827316, 0.222714,
		25.723463, 34.106720, 32.115040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406057, 34.867676, 31.870361>,  <26.084454, 34.685841, 31.959141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406057, 34.867676, 31.870361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352623, 34.538124, 32.090683>,  <25.320562, 34.340393, 32.222878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352623, 34.538124, 32.090683>,  <25.406057, 34.867676, 31.870361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352623, 34.538124, 32.090683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701229, 0.471320, 0.534916,
		-0.700309, -0.314781, -0.640687,
		-0.133587, -0.823875, 0.550803,
		25.312548, 34.290962, 32.255924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672871, 34.762527, 31.882156>,  <25.406057, 34.867676, 31.870361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672871, 34.762527, 31.882156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838631, 34.570980, 32.191727>,  <24.938087, 34.456051, 32.377468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838631, 34.570980, 32.191727>,  <24.672871, 34.762527, 31.882156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838631, 34.570980, 32.191727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725573, 0.339491, 0.598573,
		-0.549377, -0.809588, -0.206767,
		0.414401, -0.478867, 0.773924,
		24.962952, 34.427319, 32.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278349, 34.281574, 32.299694>,  <24.672871, 34.762527, 31.882156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278349, 34.281574, 32.299694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562487, 34.447876, 32.526871>,  <24.732969, 34.547657, 32.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562487, 34.447876, 32.526871>,  <24.278349, 34.281574, 32.299694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562487, 34.447876, 32.526871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700577, 0.339880, 0.627434,
		0.067830, -0.843579, 0.532703,
		0.710345, 0.415758, 0.567938,
		24.775591, 34.572605, 32.697250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179646, 34.206898, 32.995567>,  <24.278349, 34.281574, 32.299694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179646, 34.206898, 32.995567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521637, 34.044914, 33.125195>,  <24.726831, 33.947723, 33.202972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521637, 34.044914, 33.125195>,  <24.179646, 34.206898, 32.995567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521637, 34.044914, 33.125195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246006, 0.866678, 0.433994,
		-0.456613, -0.291333, 0.840613,
		0.854977, -0.404963, 0.324067,
		24.778130, 33.923424, 33.222416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185993, 34.171749, 33.675610>,  <24.179646, 34.206898, 32.995567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185993, 34.171749, 33.675610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580656, 34.162144, 33.611195>,  <24.817453, 34.156380, 33.572544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580656, 34.162144, 33.611195>,  <24.185993, 34.171749, 33.675610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.580656, 34.162144, 33.611195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113591, 0.810134, 0.575134,
		0.116655, -0.585752, 0.802051,
		0.986655, -0.024013, -0.161042,
		24.876652, 34.154942, 33.562881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473377, 34.015568, 34.394295>,  <24.185993, 34.171749, 33.675610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473377, 34.015568, 34.394295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622841, 34.233589, 34.094082>,  <24.712519, 34.364403, 33.913956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622841, 34.233589, 34.094082>,  <24.473377, 34.015568, 34.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622841, 34.233589, 34.094082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163517, 0.757764, 0.631709,
		0.913039, -0.358769, 0.194021,
		0.373660, 0.545049, -0.750533,
		24.734940, 34.397102, 33.868923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012587, 34.335346, 34.613159>,  <24.473377, 34.015568, 34.394295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012587, 34.335346, 34.613159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983727, 34.528458, 34.264053>,  <24.966410, 34.644325, 34.054588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983727, 34.528458, 34.264053>,  <25.012587, 34.335346, 34.613159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983727, 34.528458, 34.264053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251061, 0.855662, 0.452560,
		0.965278, -0.186464, -0.182944,
		-0.072152, 0.482776, -0.872766,
		24.962080, 34.673290, 34.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466209, 34.797829, 34.636681>,  <25.012587, 34.335346, 34.613159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466209, 34.797829, 34.636681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237980, 34.991753, 34.371529>,  <25.101042, 35.108109, 34.212437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237980, 34.991753, 34.371529>,  <25.466209, 34.797829, 34.636681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237980, 34.991753, 34.371529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032386, 0.793246, 0.608039,
		0.820609, 0.368398, -0.436903,
		-0.570572, 0.484813, -0.662876,
		25.066809, 35.137196, 34.172665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675249, 35.476006, 34.561199>,  <25.466209, 34.797829, 34.636681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675249, 35.476006, 34.561199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291079, 35.466782, 34.450165>,  <25.060577, 35.461246, 34.383545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291079, 35.466782, 34.450165>,  <25.675249, 35.476006, 34.561199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291079, 35.466782, 34.450165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225708, 0.648402, 0.727070,
		0.163221, 0.760949, -0.627946,
		-0.960424, -0.023059, -0.277584,
		25.002951, 35.459866, 34.366890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426359, 35.411919, 34.578785>,  <25.675249, 35.476006, 34.561199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426359, 35.411919, 34.578785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190977, 35.733959, 34.549034>,  <26.049747, 35.927185, 34.531185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190977, 35.733959, 34.549034>,  <26.426359, 35.411919, 34.578785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190977, 35.733959, 34.549034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430793, -0.390051, -0.813804,
		-0.684206, -0.446846, 0.576360,
		-0.588455, 0.805101, -0.074377,
		26.014441, 35.975491, 34.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181728, 35.430470, 34.342461>,  <26.426359, 35.411919, 34.578785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181728, 35.430470, 34.342461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276400, 35.431023, 33.953827>,  <27.333202, 35.431355, 33.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276400, 35.431023, 33.953827>,  <27.181728, 35.430470, 34.342461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276400, 35.431023, 33.953827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672347, -0.721656, -0.164812,
		-0.701380, 0.692251, -0.169868,
		0.236678, 0.001386, -0.971587,
		27.347403, 35.431438, 33.662350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686993, 34.829758, 34.246456>,  <27.181728, 35.430470, 34.342461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686993, 34.829758, 34.246456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971224, 34.549587, 34.219685>,  <28.141762, 34.381485, 34.203621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971224, 34.549587, 34.219685>,  <27.686993, 34.829758, 34.246456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971224, 34.549587, 34.219685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217308, 0.127989, 0.967676,
		-0.669220, -0.702154, 0.243155,
		0.710578, -0.700427, -0.066931,
		28.184397, 34.339458, 34.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577284, 34.330250, 34.817928>,  <27.686993, 34.829758, 34.246456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577284, 34.330250, 34.817928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958271, 34.300961, 34.699646>,  <28.186863, 34.283386, 34.628677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958271, 34.300961, 34.699646>,  <27.577284, 34.330250, 34.817928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958271, 34.300961, 34.699646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294941, -0.021269, 0.955279,
		-0.076234, -0.997089, 0.001337,
		0.952470, -0.073219, -0.295704,
		28.244011, 34.278996, 34.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925409, 33.760487, 35.194477>,  <27.577284, 34.330250, 34.817928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925409, 33.760487, 35.194477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167114, 34.060574, 35.087116>,  <28.312138, 34.240627, 35.022697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167114, 34.060574, 35.087116>,  <27.925409, 33.760487, 35.194477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167114, 34.060574, 35.087116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191529, 0.190220, 0.962877,
		0.773424, -0.633237, -0.028746,
		0.604262, 0.750218, -0.268404,
		28.348392, 34.285641, 35.006596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545561, 33.759048, 35.681133>,  <27.925409, 33.760487, 35.194477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545561, 33.759048, 35.681133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492369, 34.133373, 35.550552>,  <28.460453, 34.357967, 35.472202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492369, 34.133373, 35.550552>,  <28.545561, 33.759048, 35.681133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492369, 34.133373, 35.550552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340478, 0.352469, 0.871688,
		0.930801, 0.004766, -0.365495,
		-0.132980, 0.935811, -0.326456,
		28.452475, 34.414116, 35.452614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055143, 34.020645, 36.062508>,  <28.545561, 33.759048, 35.681133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055143, 34.020645, 36.062508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838381, 34.323196, 35.915962>,  <28.708323, 34.504726, 35.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838381, 34.323196, 35.915962>,  <29.055143, 34.020645, 36.062508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838381, 34.323196, 35.915962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237770, 0.556094, 0.796383,
		0.806103, 0.344455, -0.481195,
		-0.541907, 0.756380, -0.366368,
		28.675808, 34.550110, 35.806053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389135, 34.531391, 36.493450>,  <29.055143, 34.020645, 36.062508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389135, 34.531391, 36.493450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088209, 34.686150, 36.280159>,  <28.907654, 34.779003, 36.152184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088209, 34.686150, 36.280159>,  <29.389135, 34.531391, 36.493450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088209, 34.686150, 36.280159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044111, 0.837161, 0.545175,
		0.657325, 0.386622, -0.646875,
		-0.752315, 0.386892, -0.533233,
		28.862514, 34.802216, 36.120190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559467, 35.254433, 36.432087>,  <29.389135, 34.531391, 36.493450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559467, 35.254433, 36.432087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164026, 35.227062, 36.378452>,  <28.926762, 35.210640, 36.346272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164026, 35.227062, 36.378452>,  <29.559467, 35.254433, 36.432087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164026, 35.227062, 36.378452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128191, 0.849652, 0.511526,
		0.078924, 0.522885, -0.848741,
		-0.988604, -0.068430, -0.134087,
		28.867445, 35.206532, 36.338226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266422, 35.982765, 36.489296>,  <29.559467, 35.254433, 36.432087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266422, 35.982765, 36.489296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939779, 35.751923, 36.485401>,  <28.743793, 35.613415, 36.483063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939779, 35.751923, 36.485401>,  <29.266422, 35.982765, 36.489296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939779, 35.751923, 36.485401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499750, 0.698503, 0.512195,
		-0.288792, 0.423128, -0.858814,
		-0.816608, -0.577110, -0.009736,
		28.694798, 35.578789, 36.482479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781342, 36.367580, 36.423630>,  <29.266422, 35.982765, 36.489296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781342, 36.367580, 36.423630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564413, 36.066055, 36.572041>,  <28.434256, 35.885139, 36.661087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564413, 36.066055, 36.572041>,  <28.781342, 36.367580, 36.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564413, 36.066055, 36.572041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561953, 0.653734, 0.506794,
		-0.624578, 0.066346, -0.778139,
		-0.542320, -0.753810, 0.371025,
		28.401718, 35.839912, 36.683350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055323, 36.480511, 36.303028>,  <28.781342, 36.367580, 36.423630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055323, 36.480511, 36.303028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096704, 36.245323, 36.623924>,  <28.121534, 36.104210, 36.816463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096704, 36.245323, 36.623924>,  <28.055323, 36.480511, 36.303028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096704, 36.245323, 36.623924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527041, 0.651623, 0.545541,
		-0.843520, -0.479253, -0.242469,
		0.103454, -0.587966, 0.802243,
		28.127741, 36.068932, 36.864597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406563, 36.646244, 37.007854>,  <28.055323, 36.480511, 36.303028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406563, 36.646244, 37.007854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222013, 36.353886, 37.209019>,  <28.111284, 36.178471, 37.329720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222013, 36.353886, 37.209019>,  <28.406563, 36.646244, 37.007854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222013, 36.353886, 37.209019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143100, -0.498122, -0.855218,
		0.875589, -0.466542, 0.125229,
		-0.461374, -0.730899, 0.502912,
		28.083601, 36.134617, 37.359894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258976, 36.490841, 37.612469>,  <28.406563, 36.646244, 37.007854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258976, 36.490841, 37.612469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038229, 36.229111, 37.819271>,  <27.905781, 36.072071, 37.943352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038229, 36.229111, 37.819271>,  <28.258976, 36.490841, 37.612469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038229, 36.229111, 37.819271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184827, -0.700514, -0.689289,
		0.813193, -0.284838, 0.507527,
		-0.551866, -0.654329, 0.517008,
		27.872669, 36.032810, 37.974373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583897, 35.823940, 37.952274>,  <28.258976, 36.490841, 37.612469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583897, 35.823940, 37.952274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214075, 35.793007, 37.803028>,  <27.992182, 35.774448, 37.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214075, 35.793007, 37.803028>,  <28.583897, 35.823940, 37.952274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214075, 35.793007, 37.803028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333166, -0.639272, -0.693059,
		-0.184926, -0.765082, 0.616808,
		-0.924555, -0.077335, -0.373118,
		27.936708, 35.769806, 37.691093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373106, 35.123543, 37.830307>,  <28.583897, 35.823940, 37.952274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373106, 35.123543, 37.830307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207169, 35.369923, 37.562424>,  <28.107605, 35.517750, 37.401695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207169, 35.369923, 37.562424>,  <28.373106, 35.123543, 37.830307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207169, 35.369923, 37.562424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448910, -0.501663, -0.739469,
		-0.791444, -0.607403, -0.068394,
		-0.414845, 0.615951, -0.669708,
		28.082716, 35.554707, 37.361511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846378, 34.825195, 37.210423>,  <28.373106, 35.123543, 37.830307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846378, 34.825195, 37.210423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047600, 35.144741, 37.078518>,  <28.168333, 35.336468, 36.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047600, 35.144741, 37.078518>,  <27.846378, 34.825195, 37.210423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047600, 35.144741, 37.078518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285637, -0.513799, -0.808964,
		-0.815688, 0.312761, -0.486655,
		0.503055, 0.798869, -0.329763,
		28.198517, 35.384403, 36.979588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864237, 34.581841, 36.598961>,  <27.846378, 34.825195, 37.210423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864237, 34.581841, 36.598961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103016, 34.900528, 36.561222>,  <28.246283, 35.091740, 36.538578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103016, 34.900528, 36.561222>,  <27.864237, 34.581841, 36.598961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103016, 34.900528, 36.561222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322881, -0.346231, -0.880836,
		-0.734441, 0.495348, -0.463925,
		0.596945, 0.796715, -0.094348,
		28.282099, 35.139542, 36.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686245, 34.941940, 36.008865>,  <27.864237, 34.581841, 36.598961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686245, 34.941940, 36.008865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071825, 35.026215, 36.073875>,  <28.303173, 35.076778, 36.112881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071825, 35.026215, 36.073875>,  <27.686245, 34.941940, 36.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071825, 35.026215, 36.073875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221142, -0.294638, -0.929669,
		-0.147980, 0.932095, -0.330607,
		0.963949, 0.210683, 0.162525,
		28.361010, 35.089420, 36.122631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894602, 35.533478, 35.624699>,  <27.686245, 34.941940, 36.008865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894602, 35.533478, 35.624699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149874, 35.231583, 35.685497>,  <28.303036, 35.050446, 35.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149874, 35.231583, 35.685497>,  <27.894602, 35.533478, 35.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149874, 35.231583, 35.685497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076311, -0.134438, -0.987979,
		0.766097, 0.642106, -0.028201,
		0.638179, -0.754736, 0.151993,
		28.341328, 35.005161, 35.731094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198755, 35.609478, 35.041462>,  <27.894602, 35.533478, 35.624699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198755, 35.609478, 35.041462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275055, 35.236164, 35.163185>,  <28.320835, 35.012177, 35.236217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275055, 35.236164, 35.163185>,  <28.198755, 35.609478, 35.041462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275055, 35.236164, 35.163185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105689, -0.288670, -0.951577,
		0.975933, 0.213674, 0.043574,
		0.190748, -0.933281, 0.304305,
		28.332279, 34.956181, 35.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884438, 35.427444, 34.790596>,  <28.198755, 35.609478, 35.041462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884438, 35.427444, 34.790596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736410, 35.060760, 34.850849>,  <28.647594, 34.840752, 34.887001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736410, 35.060760, 34.850849>,  <28.884438, 35.427444, 34.790596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736410, 35.060760, 34.850849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122924, -0.209042, -0.970150,
		0.920837, -0.340503, 0.190046,
		-0.370066, -0.916711, 0.150638,
		28.625391, 34.785748, 34.896042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483959, 34.996712, 34.834755>,  <28.884438, 35.427444, 34.790596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483959, 34.996712, 34.834755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142302, 34.843372, 34.694199>,  <28.937307, 34.751369, 34.609863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142302, 34.843372, 34.694199>,  <29.483959, 34.996712, 34.834755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142302, 34.843372, 34.694199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418487, -0.105563, -0.902067,
		0.308715, -0.917550, 0.250593,
		-0.854145, -0.383352, -0.351394,
		28.886059, 34.728367, 34.588779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582745, 34.259476, 34.544586>,  <29.483959, 34.996712, 34.834755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582745, 34.259476, 34.544586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330551, 34.509171, 34.360058>,  <29.179235, 34.658989, 34.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330551, 34.509171, 34.360058>,  <29.582745, 34.259476, 34.544586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330551, 34.509171, 34.360058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513392, -0.110391, -0.851024,
		-0.582168, -0.773395, -0.250880,
		-0.630483, 0.624239, -0.461321,
		29.141407, 34.696442, 34.221661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833622, 34.101421, 33.951584>,  <29.582745, 34.259476, 34.544586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833622, 34.101421, 33.951584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627775, 34.442707, 33.917645>,  <29.504267, 34.647480, 33.897282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627775, 34.442707, 33.917645>,  <29.833622, 34.101421, 33.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627775, 34.442707, 33.917645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387708, 0.143293, -0.910577,
		-0.764758, -0.501493, -0.404538,
		-0.514615, 0.853213, -0.084848,
		29.473391, 34.698669, 33.892189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336651, 34.065620, 33.375969>,  <29.833622, 34.101421, 33.951584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336651, 34.065620, 33.375969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479481, 34.434063, 33.438023>,  <29.565180, 34.655128, 33.475254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479481, 34.434063, 33.438023>,  <29.336651, 34.065620, 33.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479481, 34.434063, 33.438023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259516, 0.061711, -0.963765,
		-0.897301, 0.384396, -0.217005,
		0.357076, 0.921103, 0.155130,
		29.586603, 34.710396, 33.484562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058287, 34.438732, 32.910374>,  <29.336651, 34.065620, 33.375969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058287, 34.438732, 32.910374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401024, 34.620144, 33.008465>,  <29.606667, 34.728992, 33.067318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401024, 34.620144, 33.008465>,  <29.058287, 34.438732, 32.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401024, 34.620144, 33.008465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174571, 0.192331, -0.965678,
		-0.485126, 0.870242, 0.085624,
		0.856841, 0.453528, 0.245224,
		29.658077, 34.756203, 33.082031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991322, 35.175766, 32.773792>,  <29.058287, 34.438732, 32.910374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991322, 35.175766, 32.773792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360828, 35.026436, 32.739658>,  <29.582533, 34.936836, 32.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360828, 35.026436, 32.739658>,  <28.991322, 35.175766, 32.773792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360828, 35.026436, 32.739658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061568, 0.075143, -0.995270,
		0.377972, 0.924652, 0.046430,
		0.923768, -0.373326, -0.085331,
		29.637959, 34.914436, 32.714058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432934, 35.644566, 32.365364>,  <28.991322, 35.175766, 32.773792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432934, 35.644566, 32.365364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596870, 35.280735, 32.337925>,  <29.695232, 35.062439, 32.321461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596870, 35.280735, 32.337925>,  <29.432934, 35.644566, 32.365364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596870, 35.280735, 32.337925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036709, 0.058694, -0.997601,
		0.911418, 0.411375, -0.009334,
		0.409840, -0.909574, -0.068596,
		29.719822, 35.007862, 32.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014639, 35.727673, 31.972910>,  <29.432934, 35.644566, 32.365364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014639, 35.727673, 31.972910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904968, 35.343536, 31.952604>,  <29.839167, 35.113056, 31.940420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904968, 35.343536, 31.952604>,  <30.014639, 35.727673, 31.972910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904968, 35.343536, 31.952604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037964, 0.063555, -0.997256,
		0.960930, -0.271497, -0.053884,
		-0.274177, -0.960339, -0.050765,
		29.822716, 35.055435, 31.937374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333168, 35.360504, 31.322248>,  <30.014639, 35.727673, 31.972910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333168, 35.360504, 31.322248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993507, 35.183968, 31.438292>,  <29.789711, 35.078045, 31.507917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993507, 35.183968, 31.438292>,  <30.333168, 35.360504, 31.322248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993507, 35.183968, 31.438292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331845, 0.018520, -0.943152,
		0.410875, -0.897151, -0.162182,
		-0.849153, -0.441337, 0.290106,
		29.738762, 35.051567, 31.525324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123535, 34.837612, 30.855560>,  <30.333168, 35.360504, 31.322248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123535, 34.837612, 30.855560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797848, 34.983734, 31.036049>,  <29.602436, 35.071407, 31.144342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797848, 34.983734, 31.036049>,  <30.123535, 34.837612, 30.855560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797848, 34.983734, 31.036049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442647, 0.112266, -0.889640,
		-0.375651, -0.924092, 0.070294,
		-0.814218, 0.365310, 0.451220,
		29.553583, 35.093327, 31.171415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033421, 35.320675, 30.180614>,  <30.123535, 34.837612, 30.855560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033421, 35.320675, 30.180614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821196, 34.987228, 30.242048>,  <29.693861, 34.787159, 30.278910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821196, 34.987228, 30.242048>,  <30.033421, 35.320675, 30.180614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821196, 34.987228, 30.242048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161855, 0.078226, 0.983709,
		-0.832049, 0.546778, 0.093421,
		-0.530563, -0.833615, 0.153586,
		29.662027, 34.737144, 30.288124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424177, 35.352673, 30.603901>,  <30.033421, 35.320675, 30.180614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424177, 35.352673, 30.603901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531910, 34.973557, 30.672195>,  <29.596550, 34.746086, 30.713171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531910, 34.973557, 30.672195>,  <29.424177, 35.352673, 30.603901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531910, 34.973557, 30.672195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030704, 0.168745, 0.985181,
		-0.962558, -0.270582, 0.016348,
		0.269331, -0.947793, 0.170734,
		29.612709, 34.689220, 30.723415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920040, 35.008839, 31.159775>,  <29.424177, 35.352673, 30.603901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920040, 35.008839, 31.159775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279240, 34.833817, 31.141251>,  <29.494759, 34.728806, 31.130136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279240, 34.833817, 31.141251>,  <28.920040, 35.008839, 31.159775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279240, 34.833817, 31.141251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007031, -0.090965, 0.995829,
		-0.439941, -0.894579, -0.078611,
		0.897999, -0.437554, -0.046309,
		29.548639, 34.702549, 31.127357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018288, 34.318939, 31.545816>,  <28.920040, 35.008839, 31.159775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018288, 34.318939, 31.545816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388653, 34.468418, 31.523787>,  <29.610872, 34.558105, 31.510569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388653, 34.468418, 31.523787>,  <29.018288, 34.318939, 31.545816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388653, 34.468418, 31.523787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184033, -0.318959, 0.929730,
		0.329871, -0.870986, -0.364101,
		0.925914, 0.373697, -0.055075,
		29.666428, 34.580528, 31.507263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640057, 33.818367, 31.756519>,  <29.018288, 34.318939, 31.545816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640057, 33.818367, 31.756519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705677, 34.205830, 31.831125>,  <29.745049, 34.438309, 31.875889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705677, 34.205830, 31.831125>,  <29.640057, 33.818367, 31.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705677, 34.205830, 31.831125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262966, -0.225176, 0.938160,
		0.950756, -0.104859, -0.291665,
		0.164050, 0.968659, 0.186513,
		29.754892, 34.496426, 31.887079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291504, 33.853493, 32.183029>,  <29.640057, 33.818367, 31.756519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291504, 33.853493, 32.183029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128265, 34.215332, 32.232277>,  <30.030321, 34.432434, 32.261826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128265, 34.215332, 32.232277>,  <30.291504, 33.853493, 32.183029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128265, 34.215332, 32.232277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338591, 0.024735, 0.940609,
		0.847828, 0.425546, -0.316383,
		-0.408098, 0.904599, 0.123115,
		30.005836, 34.486713, 32.269211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753372, 34.251141, 32.679008>,  <30.291504, 33.853493, 32.183029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753372, 34.251141, 32.679008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395031, 34.428864, 32.681400>,  <30.180027, 34.535500, 32.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395031, 34.428864, 32.681400>,  <30.753372, 34.251141, 32.679008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395031, 34.428864, 32.681400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011017, 0.008760, 0.999901,
		0.444215, 0.895830, -0.012742,
		-0.895853, 0.444311, 0.005978,
		30.126276, 34.562157, 32.683193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763651, 34.898464, 32.993511>,  <30.753372, 34.251141, 32.679008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763651, 34.898464, 32.993511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406647, 34.723259, 33.036537>,  <30.192444, 34.618137, 33.062355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406647, 34.723259, 33.036537>,  <30.763651, 34.898464, 32.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406647, 34.723259, 33.036537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092894, 0.054862, 0.994163,
		-0.441358, 0.897293, -0.008276,
		-0.892510, -0.438013, 0.107567,
		30.138893, 34.591854, 33.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756834, 35.657272, 33.253506>,  <30.763651, 34.898464, 32.993511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756834, 35.657272, 33.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080553, 35.616592, 33.484917>,  <31.274784, 35.592186, 33.623764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080553, 35.616592, 33.484917>,  <30.756834, 35.657272, 33.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080553, 35.616592, 33.484917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180959, 0.893830, 0.410271,
		-0.558828, -0.436722, 0.704972,
		0.809299, -0.101700, 0.578526,
		31.323343, 35.586082, 33.658474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617935, 36.397552, 33.377399>,  <30.756834, 35.657272, 33.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617935, 36.397552, 33.377399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987827, 36.522087, 33.464985>,  <31.209763, 36.596809, 33.517536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987827, 36.522087, 33.464985>,  <30.617935, 36.397552, 33.377399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987827, 36.522087, 33.464985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358545, -0.905601, -0.226566,
		0.127755, 0.288021, -0.949064,
		0.924729, 0.311337, 0.218964,
		31.265245, 36.615490, 33.530674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008303, 36.157578, 32.780537>,  <30.617935, 36.397552, 33.377399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008303, 36.157578, 32.780537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273781, 36.235298, 33.069469>,  <31.433067, 36.281929, 33.242828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273781, 36.235298, 33.069469>,  <31.008303, 36.157578, 32.780537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273781, 36.235298, 33.069469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537011, -0.795996, -0.279302,
		0.520701, 0.573269, -0.632639,
		0.663693, 0.194302, 0.722328,
		31.472889, 36.293591, 33.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628710, 36.077477, 32.478863>,  <31.008303, 36.157578, 32.780537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628710, 36.077477, 32.478863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719038, 36.060165, 32.868145>,  <31.773235, 36.049778, 33.101715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719038, 36.060165, 32.868145>,  <31.628710, 36.077477, 32.478863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719038, 36.060165, 32.868145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634946, -0.751119, -0.180728,
		0.738816, 0.658747, -0.142141,
		0.225819, -0.043273, 0.973208,
		31.786783, 36.047184, 33.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364948, 36.128712, 32.589661>,  <31.628710, 36.077477, 32.478863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364948, 36.128712, 32.589661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239811, 35.953251, 32.926640>,  <32.164726, 35.847977, 33.128826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239811, 35.953251, 32.926640>,  <32.364948, 36.128712, 32.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239811, 35.953251, 32.926640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738635, -0.669971, -0.074548,
		0.597114, 0.598937, 0.533600,
		-0.312847, -0.438649, 0.842445,
		32.145958, 35.821655, 33.179375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925079, 35.944153, 32.962669>,  <32.364948, 36.128712, 32.589661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925079, 35.944153, 32.962669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644993, 35.732533, 33.154419>,  <32.476940, 35.605560, 33.269466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644993, 35.732533, 33.154419>,  <32.925079, 35.944153, 32.962669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644993, 35.732533, 33.154419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591916, -0.805627, -0.024505,
		0.399158, 0.266589, 0.877270,
		-0.700220, -0.529052, 0.479371,
		32.434925, 35.573818, 33.298229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214954, 35.562855, 33.556320>,  <32.925079, 35.944153, 32.962669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214954, 35.562855, 33.556320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893085, 35.345596, 33.460411>,  <32.699963, 35.215240, 33.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893085, 35.345596, 33.460411>,  <33.214954, 35.562855, 33.556320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893085, 35.345596, 33.460411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585875, -0.791830, -0.172497,
		-0.096166, -0.279279, 0.955382,
		-0.804676, -0.543146, -0.239769,
		32.651684, 35.182652, 33.388481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355335, 34.920574, 33.911434>,  <33.214954, 35.562855, 33.556320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355335, 34.920574, 33.911434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076218, 34.825832, 33.641029>,  <32.908749, 34.768986, 33.478786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076218, 34.825832, 33.641029>,  <33.355335, 34.920574, 33.911434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076218, 34.825832, 33.641029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362255, -0.930853, -0.047777,
		-0.617948, -0.278226, 0.735344,
		-0.697790, -0.236859, -0.676008,
		32.866882, 34.754776, 33.438229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381214, 34.259869, 33.989174>,  <33.355335, 34.920574, 33.911434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381214, 34.259869, 33.989174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104904, 34.288036, 33.701321>,  <32.939117, 34.304935, 33.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104904, 34.288036, 33.701321>,  <33.381214, 34.259869, 33.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104904, 34.288036, 33.701321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160912, -0.955318, -0.247942,
		-0.704935, -0.287070, 0.648581,
		-0.690778, 0.070419, -0.719630,
		32.897671, 34.309162, 33.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828423, 33.785534, 34.094757>,  <33.381214, 34.259869, 33.989174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828423, 33.785534, 34.094757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863453, 33.878098, 33.707195>,  <32.884472, 33.933636, 33.474659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863453, 33.878098, 33.707195>,  <32.828423, 33.785534, 34.094757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863453, 33.878098, 33.707195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267564, -0.942365, -0.200891,
		-0.959552, -0.241652, -0.144445,
		0.087575, 0.231413, -0.968906,
		32.889725, 33.947521, 33.416523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483032, 33.258747, 33.747490>,  <32.828423, 33.785534, 34.094757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483032, 33.258747, 33.747490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727955, 33.433479, 33.483894>,  <32.874908, 33.538319, 33.325737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727955, 33.433479, 33.483894>,  <32.483032, 33.258747, 33.747490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727955, 33.433479, 33.483894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368471, -0.895118, -0.250985,
		-0.699508, -0.089138, -0.709044,
		0.612305, 0.436828, -0.658987,
		32.911648, 33.564529, 33.286198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382828, 32.927692, 33.026024>,  <32.483032, 33.258747, 33.747490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382828, 32.927692, 33.026024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738132, 33.111271, 33.033661>,  <32.951313, 33.221416, 33.038242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738132, 33.111271, 33.033661>,  <32.382828, 32.927692, 33.026024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738132, 33.111271, 33.033661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424196, -0.803639, -0.417399,
		-0.176216, 0.378859, -0.908523,
		0.888260, 0.458944, 0.019097,
		33.004612, 33.248955, 33.039391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709911, 32.903152, 32.330093>,  <32.382828, 32.927692, 33.026024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709911, 32.903152, 32.330093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000298, 32.943291, 32.602242>,  <33.174530, 32.967373, 32.765530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000298, 32.943291, 32.602242>,  <32.709911, 32.903152, 32.330093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000298, 32.943291, 32.602242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459542, -0.806801, -0.371341,
		0.511660, 0.582239, -0.631824,
		0.725965, 0.100349, 0.680371,
		33.218086, 32.973396, 32.806355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290874, 32.913624, 31.931648>,  <32.709911, 32.903152, 32.330093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290874, 32.913624, 31.931648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406891, 32.803715, 32.298336>,  <33.476501, 32.737770, 32.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406891, 32.803715, 32.298336>,  <33.290874, 32.913624, 31.931648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406891, 32.803715, 32.298336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547081, -0.738345, -0.394396,
		0.785226, 0.615911, -0.063824,
		0.290037, -0.274773, 0.916721,
		33.493900, 32.721283, 32.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927494, 32.881054, 31.865671>,  <33.290874, 32.913624, 31.931648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927494, 32.881054, 31.865671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872662, 32.641468, 32.181252>,  <33.839764, 32.497715, 32.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872662, 32.641468, 32.181252>,  <33.927494, 32.881054, 31.865671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872662, 32.641468, 32.181252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531259, -0.716688, -0.451798,
		0.836046, 0.357205, 0.416451,
		-0.137081, -0.598968, 0.788953,
		33.831535, 32.461777, 32.417938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500587, 32.399822, 31.822578>,  <33.927494, 32.881054, 31.865671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500587, 32.399822, 31.822578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237427, 32.218220, 32.062927>,  <34.079529, 32.109261, 32.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237427, 32.218220, 32.062927>,  <34.500587, 32.399822, 31.822578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237427, 32.218220, 32.062927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266998, -0.886646, -0.377587,
		0.704187, -0.087983, 0.704542,
		-0.657901, -0.454003, 0.600873,
		34.040058, 32.082020, 32.243191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904202, 31.878281, 32.115208>,  <34.500587, 32.399822, 31.822578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904202, 31.878281, 32.115208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517124, 31.783733, 32.150311>,  <34.284878, 31.727005, 32.171371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517124, 31.783733, 32.150311>,  <34.904202, 31.878281, 32.115208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517124, 31.783733, 32.150311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181082, -0.893732, -0.410429,
		0.175446, -0.381277, 0.907660,
		-0.967692, -0.236369, 0.087760,
		34.226818, 31.712822, 32.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881069, 31.217710, 32.568317>,  <34.904202, 31.878281, 32.115208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881069, 31.217710, 32.568317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565765, 31.253057, 32.324734>,  <34.376583, 31.274265, 32.178581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565765, 31.253057, 32.324734>,  <34.881069, 31.217710, 32.568317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565765, 31.253057, 32.324734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017695, -0.985970, -0.165984,
		-0.615087, -0.141615, 0.775638,
		-0.788261, 0.088369, -0.608963,
		34.329288, 31.279568, 32.142044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563923, 30.620075, 32.636021>,  <34.881069, 31.217710, 32.568317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563923, 30.620075, 32.636021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 30.736250, 32.306484>,  <34.252399, 30.805954, 32.108761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 30.736250, 32.306484>,  <34.563923, 30.620075, 32.636021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369221, 30.736250, 32.306484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047085, -0.950462, -0.307255,
		-0.872271, -0.110766, 0.476313,
		-0.486751, 0.290437, -0.823844,
		34.223194, 30.823381, 32.059330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160637, 30.052042, 32.552345>,  <34.563923, 30.620075, 32.636021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160637, 30.052042, 32.552345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137585, 30.271240, 32.218548>,  <34.123753, 30.402760, 32.018269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137585, 30.271240, 32.218548>,  <34.160637, 30.052042, 32.552345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137585, 30.271240, 32.218548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057427, -0.836318, -0.545229,
		-0.996685, 0.016500, 0.079668,
		-0.057631, 0.547997, -0.834493,
		34.120296, 30.435638, 31.968201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528217, 29.806656, 32.191448>,  <34.160637, 30.052042, 32.552345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528217, 29.806656, 32.191448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807625, 29.953991, 31.946039>,  <33.975269, 30.042393, 31.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807625, 29.953991, 31.946039>,  <33.528217, 29.806656, 32.191448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807625, 29.953991, 31.946039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004581, -0.855034, -0.518551,
		-0.715581, 0.365026, -0.595567,
		0.698515, 0.368337, -0.613519,
		34.017178, 30.064491, 31.761984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237366, 29.509155, 31.562506>,  <33.528217, 29.806656, 32.191448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237366, 29.509155, 31.562506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613518, 29.629423, 31.498905>,  <33.839211, 29.701584, 31.460745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613518, 29.629423, 31.498905>,  <33.237366, 29.509155, 31.562506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613518, 29.629423, 31.498905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234340, -0.911570, -0.337823,
		-0.246513, 0.280423, -0.927683,
		0.940381, 0.300671, -0.159000,
		33.895634, 29.719624, 31.451206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377354, 29.236790, 30.793976>,  <33.237366, 29.509155, 31.562506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377354, 29.236790, 30.793976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727203, 29.312244, 30.972618>,  <33.937111, 29.357517, 31.079803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727203, 29.312244, 30.972618>,  <33.377354, 29.236790, 30.793976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727203, 29.312244, 30.972618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421821, -0.750170, -0.509228,
		0.238971, 0.633768, -0.735684,
		0.874620, 0.188636, 0.446606,
		33.989590, 29.368835, 31.106600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882076, 29.242512, 30.293257>,  <33.377354, 29.236790, 30.793976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882076, 29.242512, 30.293257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115513, 29.175545, 30.611099>,  <34.255573, 29.135365, 30.801804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115513, 29.175545, 30.611099>,  <33.882076, 29.242512, 30.293257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115513, 29.175545, 30.611099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443067, -0.754386, -0.484348,
		0.680526, 0.634723, -0.366074,
		0.583588, -0.167416, 0.794605,
		34.290588, 29.125320, 30.849482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560516, 29.294210, 30.042595>,  <33.882076, 29.242512, 30.293257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560516, 29.294210, 30.042595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548977, 29.053696, 30.362000>,  <34.542053, 28.909388, 30.553642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548977, 29.053696, 30.362000>,  <34.560516, 29.294210, 30.042595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548977, 29.053696, 30.362000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521164, -0.690723, -0.501289,
		0.852969, 0.401694, 0.333296,
		-0.028850, -0.601286, 0.798513,
		34.540321, 28.873310, 30.601553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180820, 29.044983, 30.110521>,  <34.560516, 29.294210, 30.042595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180820, 29.044983, 30.110521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971333, 28.779638, 30.324314>,  <34.845638, 28.620432, 30.452589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971333, 28.779638, 30.324314>,  <35.180820, 29.044983, 30.110521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971333, 28.779638, 30.324314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567361, -0.739620, -0.362029,
		0.635468, 0.113641, 0.763719,
		-0.523720, -0.663362, 0.534480,
		34.814217, 28.580629, 30.484657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658779, 28.751453, 30.411383>,  <35.180820, 29.044983, 30.110521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658779, 28.751453, 30.411383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351040, 28.496265, 30.398115>,  <35.166397, 28.343153, 30.390154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351040, 28.496265, 30.398115>,  <35.658779, 28.751453, 30.411383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351040, 28.496265, 30.398115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614891, -0.725433, -0.309282,
		0.173249, -0.258341, 0.950392,
		-0.769346, -0.637970, -0.033171,
		35.120235, 28.304874, 30.388165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914543, 28.133148, 30.593204>,  <35.658779, 28.751453, 30.411383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914543, 28.133148, 30.593204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580193, 28.035637, 30.396477>,  <35.379581, 27.977129, 30.278440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580193, 28.035637, 30.396477>,  <35.914543, 28.133148, 30.593204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580193, 28.035637, 30.396477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531156, -0.585301, -0.612614,
		-0.138519, -0.773301, 0.618723,
		-0.835875, -0.243780, -0.491819,
		35.329430, 27.962503, 30.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952888, 27.416300, 30.494200>,  <35.914543, 28.133148, 30.593204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952888, 27.416300, 30.494200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707787, 27.570425, 30.218210>,  <35.560726, 27.662901, 30.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707787, 27.570425, 30.218210>,  <35.952888, 27.416300, 30.494200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707787, 27.570425, 30.218210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450910, -0.546551, -0.705664,
		-0.649009, -0.743515, 0.161160,
		-0.612754, 0.385313, -0.689976,
		35.523960, 27.686018, 30.011217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021358, 26.881395, 29.921221>,  <35.952888, 27.416300, 30.494200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021358, 26.881395, 29.921221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831429, 27.193388, 29.758163>,  <35.717472, 27.380583, 29.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831429, 27.193388, 29.758163>,  <36.021358, 26.881395, 29.921221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831429, 27.193388, 29.758163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337154, -0.266640, -0.902901,
		-0.812940, -0.566157, -0.136366,
		-0.474823, 0.779981, -0.407645,
		35.688980, 27.427382, 29.635870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565327, 26.568604, 29.328257>,  <36.021358, 26.881395, 29.921221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565327, 26.568604, 29.328257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654099, 26.957968, 29.305571>,  <35.707363, 27.191586, 29.291960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654099, 26.957968, 29.305571>,  <35.565327, 26.568604, 29.328257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654099, 26.957968, 29.305571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512515, -0.165936, -0.842492,
		-0.829502, 0.157910, -0.535715,
		0.221933, 0.973411, -0.056713,
		35.720676, 27.249990, 29.288557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578182, 26.715488, 28.592138>,  <35.565327, 26.568604, 29.328257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578182, 26.715488, 28.592138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764027, 27.010714, 28.787851>,  <35.875534, 27.187849, 28.905279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764027, 27.010714, 28.787851>,  <35.578182, 26.715488, 28.592138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764027, 27.010714, 28.787851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693952, 0.039747, -0.718923,
		-0.550058, 0.673560, -0.493713,
		0.464614, 0.738063, 0.489282,
		35.903412, 27.232132, 28.934635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640846, 27.253059, 28.119890>,  <35.578182, 26.715488, 28.592138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640846, 27.253059, 28.119890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902973, 27.357319, 28.403475>,  <36.060249, 27.419874, 28.573626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902973, 27.357319, 28.403475>,  <35.640846, 27.253059, 28.119890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902973, 27.357319, 28.403475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717825, 0.077280, -0.691921,
		-0.235138, 0.962335, -0.136459,
		0.655315, 0.260651, 0.708960,
		36.099567, 27.435514, 28.616163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090454, 27.657431, 27.784925>,  <35.640846, 27.253059, 28.119890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090454, 27.657431, 27.784925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318069, 27.609713, 28.110371>,  <36.454639, 27.581081, 28.305637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318069, 27.609713, 28.110371>,  <36.090454, 27.657431, 27.784925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318069, 27.609713, 28.110371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822177, 0.064499, -0.565566,
		0.014992, 0.990762, 0.134785,
		0.569035, -0.119296, 0.813614,
		36.488781, 27.573923, 28.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455875, 28.338812, 27.970303>,  <36.090454, 27.657431, 27.784925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455875, 28.338812, 27.970303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656479, 28.018860, 28.102171>,  <36.776840, 27.826889, 28.181292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656479, 28.018860, 28.102171>,  <36.455875, 28.338812, 27.970303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656479, 28.018860, 28.102171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773781, 0.244252, -0.584469,
		0.386982, 0.548209, 0.741425,
		0.501506, -0.799880, 0.329672,
		36.806931, 27.778896, 28.201073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005676, 28.653833, 28.000095>,  <36.455875, 28.338812, 27.970303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005676, 28.653833, 28.000095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103668, 28.266029, 28.002571>,  <37.162464, 28.033348, 28.004057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103668, 28.266029, 28.002571>,  <37.005676, 28.653833, 28.000095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103668, 28.266029, 28.002571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744414, 0.184002, -0.641866,
		0.621156, 0.161850, 0.766792,
		0.244977, -0.969509, 0.006190,
		37.177162, 27.975176, 28.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708328, 28.642754, 28.092518>,  <37.005676, 28.653833, 28.000095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708328, 28.642754, 28.092518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600941, 28.301102, 27.914356>,  <37.536507, 28.096109, 27.807459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600941, 28.301102, 27.914356>,  <37.708328, 28.642754, 28.092518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600941, 28.301102, 27.914356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795191, 0.064466, -0.602923,
		0.543688, -0.516047, 0.661890,
		-0.268467, -0.854131, -0.445405,
		37.520401, 28.044863, 27.780735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261452, 28.238033, 28.012573>,  <37.708328, 28.642754, 28.092518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261452, 28.238033, 28.012573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024895, 28.029848, 27.766201>,  <37.882961, 27.904938, 27.618378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024895, 28.029848, 27.766201>,  <38.261452, 28.238033, 28.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024895, 28.029848, 27.766201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697752, 0.052608, -0.714405,
		0.404225, -0.852262, 0.332042,
		-0.591392, -0.520463, -0.615933,
		37.847477, 27.873709, 27.581421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696495, 27.753780, 27.797157>,  <38.261452, 28.238033, 28.012573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696495, 27.753780, 27.797157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406723, 27.781902, 27.522856>,  <38.232861, 27.798775, 27.358274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406723, 27.781902, 27.522856>,  <38.696495, 27.753780, 27.797157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406723, 27.781902, 27.522856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687988, 0.011248, -0.725635,
		-0.043302, -0.997462, -0.056516,
		-0.724429, 0.070304, -0.685755,
		38.189396, 27.802994, 27.317129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846912, 27.222784, 27.237320>,  <38.696495, 27.753780, 27.797157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846912, 27.222784, 27.237320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599846, 27.491833, 27.074314>,  <38.451607, 27.653261, 26.976511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599846, 27.491833, 27.074314>,  <38.846912, 27.222784, 27.237320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599846, 27.491833, 27.074314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577426, 0.036081, -0.815646,
		-0.533918, -0.739106, -0.410676,
		-0.617666, 0.672622, -0.407514,
		38.414547, 27.693619, 26.952061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806679, 26.946676, 26.622110>,  <38.846912, 27.222784, 27.237320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806679, 26.946676, 26.622110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682220, 27.325281, 26.587923>,  <38.607544, 27.552444, 26.567411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682220, 27.325281, 26.587923>,  <38.806679, 26.946676, 26.622110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682220, 27.325281, 26.587923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505125, 0.088531, -0.858493,
		-0.805007, -0.310288, -0.505653,
		-0.311146, 0.946511, -0.085466,
		38.588875, 27.609234, 26.562283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641659, 26.957163, 25.907059>,  <38.806679, 26.946676, 26.622110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641659, 26.957163, 25.907059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676617, 27.333979, 26.036629>,  <38.697590, 27.560068, 26.114370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676617, 27.333979, 26.036629>,  <38.641659, 26.957163, 25.907059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676617, 27.333979, 26.036629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342306, 0.276969, -0.897839,
		-0.935515, 0.189349, -0.298260,
		0.087396, 0.942038, 0.323924,
		38.702835, 27.616590, 26.133806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343513, 27.345015, 25.389755>,  <38.641659, 26.957163, 25.907059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343513, 27.345015, 25.389755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585796, 27.583630, 25.600378>,  <38.731167, 27.726799, 25.726751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585796, 27.583630, 25.600378>,  <38.343513, 27.345015, 25.389755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585796, 27.583630, 25.600378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271164, 0.467392, -0.841436,
		-0.748057, 0.652446, 0.121343,
		0.605706, 0.596539, 0.526556,
		38.767509, 27.762590, 25.758345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890842, 27.690273, 25.051281>,  <38.343513, 27.345015, 25.389755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890842, 27.690273, 25.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163250, 27.655832, 24.760406>,  <39.326694, 27.635168, 24.585882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163250, 27.655832, 24.760406>,  <38.890842, 27.690273, 25.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163250, 27.655832, 24.760406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029019, -0.989109, 0.144295,
		-0.731693, -0.119370, -0.671101,
		0.681016, -0.086105, -0.727188,
		39.367554, 27.630001, 24.542250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624584, 27.160975, 24.456036>,  <38.890842, 27.690273, 25.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624584, 27.160975, 24.456036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022717, 27.199572, 24.456758>,  <39.261597, 27.222729, 24.457193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022717, 27.199572, 24.456758>,  <38.624584, 27.160975, 24.456036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022717, 27.199572, 24.456758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096052, -0.992265, 0.078639,
		0.009383, -0.078098, -0.996902,
		0.995332, 0.096492, 0.001809,
		39.321316, 27.228519, 24.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986042, 26.890841, 23.849054>,  <38.624584, 27.160975, 24.456036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986042, 26.890841, 23.849054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235973, 26.897856, 24.161280>,  <39.385933, 26.902065, 24.348614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235973, 26.897856, 24.161280>,  <38.986042, 26.890841, 23.849054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235973, 26.897856, 24.161280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093970, -0.990791, 0.097484,
		0.775083, -0.134261, -0.617431,
		0.624833, 0.017538, 0.780561,
		39.423424, 26.903118, 24.395449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812637, 26.278572, 23.407717>,  <38.986042, 26.890841, 23.849054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812637, 26.278572, 23.407717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422165, 26.352516, 23.362307>,  <38.187881, 26.396883, 23.335060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422165, 26.352516, 23.362307>,  <38.812637, 26.278572, 23.407717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422165, 26.352516, 23.362307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081155, 0.174131, 0.981373,
		0.201187, 0.967215, -0.154982,
		-0.976185, 0.184862, -0.113527,
		38.129311, 26.407974, 23.328249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345421, 26.234838, 24.037077>,  <38.812637, 26.278572, 23.407717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345421, 26.234838, 24.037077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619244, 26.288023, 24.323769>,  <39.783539, 26.319933, 24.495783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619244, 26.288023, 24.323769>,  <39.345421, 26.234838, 24.037077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619244, 26.288023, 24.323769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624437, -0.614255, -0.482461,
		0.376106, 0.777825, -0.503520,
		0.684560, 0.132961, 0.716728,
		39.824612, 26.327911, 24.538788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989441, 26.455309, 23.777411>,  <39.345421, 26.234838, 24.037077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989441, 26.455309, 23.777411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042313, 26.259861, 24.122381>,  <40.074036, 26.142591, 24.329363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042313, 26.259861, 24.122381>,  <39.989441, 26.455309, 23.777411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042313, 26.259861, 24.122381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569990, -0.674354, -0.469423,
		0.810950, 0.553622, 0.189374,
		0.132177, -0.488620, 0.862427,
		40.081966, 26.113276, 24.381109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404819, 25.884575, 23.800837>,  <39.989441, 26.455309, 23.777411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404819, 25.884575, 23.800837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421597, 25.823589, 24.195805>,  <40.431664, 25.786999, 24.432785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421597, 25.823589, 24.195805>,  <40.404819, 25.884575, 23.800837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421597, 25.823589, 24.195805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929540, 0.368312, 0.017385,
		-0.366328, 0.917116, 0.157167,
		0.041942, -0.152462, 0.987419,
		40.434177, 25.777851, 24.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651196, 26.526661, 24.193783>,  <40.404819, 25.884575, 23.800837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651196, 26.526661, 24.193783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743351, 26.185780, 24.381685>,  <40.798645, 25.981251, 24.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743351, 26.185780, 24.381685>,  <40.651196, 26.526661, 24.193783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743351, 26.185780, 24.381685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969512, 0.242432, -0.035683,
		-0.083475, 0.463655, 0.882075,
		0.230388, -0.852203, 0.469756,
		40.812466, 25.930119, 24.522612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015285, 26.688053, 24.783327>,  <40.651196, 26.526661, 24.193783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015285, 26.688053, 24.783327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127808, 26.326204, 24.655249>,  <41.195320, 26.109095, 24.578402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127808, 26.326204, 24.655249>,  <41.015285, 26.688053, 24.783327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127808, 26.326204, 24.655249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959476, 0.270893, 0.077613,
		0.016529, -0.329055, 0.944166,
		0.281307, -0.904621, -0.320198,
		41.212200, 26.054817, 24.559189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630295, 27.231262, 24.445803>,  <41.015285, 26.688053, 24.783327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630295, 27.231262, 24.445803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230877, 27.240597, 24.426342>,  <39.991226, 27.246197, 24.414665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230877, 27.240597, 24.426342>,  <40.630295, 27.231262, 24.445803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230877, 27.240597, 24.426342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028532, 0.993633, -0.108991,
		0.045797, -0.110220, -0.992852,
		-0.998543, 0.023337, -0.048651,
		39.931313, 27.247599, 24.411747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478798, 27.720152, 23.914860>,  <40.630295, 27.231262, 24.445803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478798, 27.720152, 23.914860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123116, 27.690840, 24.095503>,  <39.909706, 27.673252, 24.203890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123116, 27.690840, 24.095503>,  <40.478798, 27.720152, 23.914860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123116, 27.690840, 24.095503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061576, 0.997277, 0.040584,
		-0.453354, 0.008279, -0.891292,
		-0.889201, -0.073281, 0.451609,
		39.856354, 27.668856, 24.230986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760159, 28.145618, 23.589556>,  <40.478798, 27.720152, 23.914860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760159, 28.145618, 23.589556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772621, 28.117983, 23.988405>,  <39.780098, 28.101402, 24.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772621, 28.117983, 23.988405>,  <39.760159, 28.145618, 23.589556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772621, 28.117983, 23.988405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328613, 0.941442, 0.075500,
		-0.943951, -0.330020, 0.006629,
		0.031157, -0.069090, 0.997124,
		39.781967, 28.097256, 24.287542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016479, 28.202261, 23.834208>,  <39.760159, 28.145618, 23.589556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016479, 28.202261, 23.834208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269581, 28.307323, 24.125587>,  <39.421440, 28.370361, 24.300415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269581, 28.307323, 24.125587>,  <39.016479, 28.202261, 23.834208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269581, 28.307323, 24.125587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350846, 0.935862, -0.032689,
		-0.690315, -0.234890, 0.684319,
		0.632750, 0.262656, 0.728450,
		39.459404, 28.386120, 24.344122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628387, 28.513121, 24.330679>,  <39.016479, 28.202261, 23.834208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628387, 28.513121, 24.330679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994568, 28.645426, 24.422367>,  <39.214275, 28.724810, 24.477381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994568, 28.645426, 24.422367>,  <38.628387, 28.513121, 24.330679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994568, 28.645426, 24.422367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373828, 0.909849, 0.180076,
		-0.148994, -0.250540, 0.956572,
		0.915452, 0.330763, 0.229221,
		39.269203, 28.744656, 24.491133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519455, 28.943064, 24.883860>,  <38.628387, 28.513121, 24.330679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519455, 28.943064, 24.883860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892822, 29.035366, 24.773962>,  <39.116844, 29.090748, 24.708023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892822, 29.035366, 24.773962>,  <38.519455, 28.943064, 24.883860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892822, 29.035366, 24.773962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203026, 0.971055, 0.125829,
		0.295826, -0.061672, 0.953249,
		0.933418, 0.230757, -0.274742,
		39.172848, 29.104593, 24.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867638, 29.291563, 25.458130>,  <38.519455, 28.943064, 24.883860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867638, 29.291563, 25.458130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058426, 29.399036, 25.123394>,  <39.172901, 29.463520, 24.922552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058426, 29.399036, 25.123394>,  <38.867638, 29.291563, 25.458130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058426, 29.399036, 25.123394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031472, 0.956738, 0.289243,
		0.878354, -0.111624, 0.464795,
		0.476974, 0.268685, -0.836842,
		39.201519, 29.479643, 24.872341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493477, 29.779007, 25.660618>,  <38.867638, 29.291563, 25.458130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493477, 29.779007, 25.660618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452290, 29.845148, 25.268280>,  <39.427578, 29.884832, 25.032877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452290, 29.845148, 25.268280>,  <39.493477, 29.779007, 25.660618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452290, 29.845148, 25.268280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145470, 0.972980, 0.179301,
		0.983989, 0.161147, -0.076136,
		-0.102972, 0.165355, -0.980844,
		39.421398, 29.894754, 24.974028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904308, 30.408947, 25.512718>,  <39.493477, 29.779007, 25.660618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904308, 30.408947, 25.512718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620251, 30.369869, 25.233820>,  <39.449818, 30.346422, 25.066481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620251, 30.369869, 25.233820>,  <39.904308, 30.408947, 25.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620251, 30.369869, 25.233820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286661, 0.944643, 0.159608,
		0.643055, 0.313218, -0.698838,
		-0.710145, -0.097693, -0.697245,
		39.407207, 30.340561, 25.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017746, 31.054152, 25.146578>,  <39.904308, 30.408947, 25.512718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017746, 31.054152, 25.146578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656704, 30.897224, 25.075699>,  <39.440079, 30.803068, 25.033173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656704, 30.897224, 25.075699>,  <40.017746, 31.054152, 25.146578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656704, 30.897224, 25.075699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420085, 0.892634, 0.163503,
		0.094025, 0.222015, -0.970499,
		-0.902600, -0.392319, -0.177196,
		39.385925, 30.779530, 25.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672726, 31.585360, 24.886570>,  <40.017746, 31.054152, 25.146578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672726, 31.585360, 24.886570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397755, 31.315628, 24.994442>,  <39.232773, 31.153790, 25.059166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397755, 31.315628, 24.994442>,  <39.672726, 31.585360, 24.886570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397755, 31.315628, 24.994442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604972, 0.737130, 0.301079,
		-0.401816, 0.043821, -0.914671,
		-0.687425, -0.674329, 0.269680,
		39.191528, 31.113329, 25.075346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053562, 31.863731, 24.617849>,  <39.672726, 31.585360, 24.886570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053562, 31.863731, 24.617849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960865, 31.598970, 24.902998>,  <38.905247, 31.440113, 25.074087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960865, 31.598970, 24.902998>,  <39.053562, 31.863731, 24.617849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960865, 31.598970, 24.902998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674893, 0.637162, 0.372214,
		-0.700583, -0.394854, -0.594368,
		-0.231739, -0.661902, 0.712870,
		38.891342, 31.400400, 25.116859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444580, 32.126778, 24.883635>,  <39.053562, 31.863731, 24.617849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444580, 32.126778, 24.883635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514286, 31.845852, 25.159719>,  <38.556110, 31.677298, 25.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514286, 31.845852, 25.159719>,  <38.444580, 32.126778, 24.883635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514286, 31.845852, 25.159719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430527, 0.576051, 0.694847,
		-0.885595, -0.418241, -0.201979,
		0.174264, -0.702310, 0.690212,
		38.566566, 31.635159, 25.366783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834732, 32.013882, 25.190489>,  <38.444580, 32.126778, 24.883635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834732, 32.013882, 25.190489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119205, 31.900143, 25.447664>,  <38.289890, 31.831900, 25.601969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119205, 31.900143, 25.447664>,  <37.834732, 32.013882, 25.190489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119205, 31.900143, 25.447664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359258, 0.639120, 0.680044,
		-0.604281, -0.714615, 0.352378,
		0.711181, -0.284343, 0.642938,
		38.332561, 31.814840, 25.640545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555420, 31.794497, 25.798231>,  <37.834732, 32.013882, 25.190489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555420, 31.794497, 25.798231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926727, 31.898592, 25.904514>,  <38.149509, 31.961048, 25.968285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926727, 31.898592, 25.904514>,  <37.555420, 31.794497, 25.798231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926727, 31.898592, 25.904514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368265, 0.543250, 0.754494,
		0.052001, -0.798221, 0.600116,
		0.928266, 0.260236, 0.265707,
		38.205208, 31.976664, 25.984226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552498, 31.801212, 26.544804>,  <37.555420, 31.794497, 25.798231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552498, 31.801212, 26.544804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869263, 32.026203, 26.449736>,  <38.059322, 32.161198, 26.392694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869263, 32.026203, 26.449736>,  <37.552498, 31.801212, 26.544804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869263, 32.026203, 26.449736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225632, 0.631220, 0.742058,
		0.567414, -0.534022, 0.626787,
		0.791916, 0.562478, -0.237671,
		38.106838, 32.194946, 26.378433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774895, 31.858028, 27.214800>,  <37.552498, 31.801212, 26.544804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774895, 31.858028, 27.214800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940128, 32.157719, 27.007719>,  <38.039268, 32.337532, 26.883471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940128, 32.157719, 27.007719>,  <37.774895, 31.858028, 27.214800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940128, 32.157719, 27.007719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272469, 0.644113, 0.714758,
		0.868975, -0.154200, 0.470217,
		0.413089, 0.749227, -0.517703,
		38.064056, 32.382488, 26.852407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310539, 32.223289, 27.630669>,  <37.774895, 31.858028, 27.214800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310539, 32.223289, 27.630669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187859, 32.476337, 27.346210>,  <38.114250, 32.628166, 27.175535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187859, 32.476337, 27.346210>,  <38.310539, 32.223289, 27.630669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187859, 32.476337, 27.346210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258342, 0.663777, 0.701897,
		0.916076, 0.398989, -0.040146,
		-0.306698, 0.632620, -0.711146,
		38.095848, 32.666122, 27.132866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228844, 32.792019, 28.022526>,  <38.310539, 32.223289, 27.630669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228844, 32.792019, 28.022526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068039, 32.899666, 27.672449>,  <37.971558, 32.964256, 27.462402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068039, 32.899666, 27.672449>,  <38.228844, 32.792019, 28.022526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068039, 32.899666, 27.672449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452274, 0.772724, 0.445360,
		0.796137, 0.574867, -0.188928,
		-0.402012, 0.269120, -0.875192,
		37.947433, 32.980400, 27.409891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397823, 33.476116, 27.930889>,  <38.228844, 32.792019, 28.022526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397823, 33.476116, 27.930889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073540, 33.438965, 27.699673>,  <37.878971, 33.416672, 27.560944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073540, 33.438965, 27.699673>,  <38.397823, 33.476116, 27.930889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073540, 33.438965, 27.699673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383328, 0.830483, 0.404176,
		0.442513, 0.549246, -0.708879,
		-0.810704, -0.092880, -0.578041,
		37.830330, 33.411102, 27.526260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225189, 34.180920, 27.715128>,  <38.397823, 33.476116, 27.930889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225189, 34.180920, 27.715128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891624, 33.962540, 27.682835>,  <37.691483, 33.831512, 27.663460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891624, 33.962540, 27.682835>,  <38.225189, 34.180920, 27.715128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891624, 33.962540, 27.682835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519310, 0.726728, 0.449648,
		-0.186817, 0.416894, -0.889550,
		-0.833917, -0.545954, -0.080732,
		37.641449, 33.798752, 27.658615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822269, 34.518864, 27.307680>,  <38.225189, 34.180920, 27.715128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822269, 34.518864, 27.307680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573952, 34.273094, 27.502455>,  <37.424961, 34.125633, 27.619320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573952, 34.273094, 27.502455>,  <37.822269, 34.518864, 27.307680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573952, 34.273094, 27.502455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543790, 0.784876, 0.297090,
		-0.564723, -0.080361, -0.821358,
		-0.620790, -0.614420, 0.486937,
		37.387714, 34.088768, 27.648537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154659, 34.627480, 26.996717>,  <37.822269, 34.518864, 27.307680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154659, 34.627480, 26.996717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088772, 34.500473, 27.370253>,  <37.049240, 34.424267, 27.594374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088772, 34.500473, 27.370253>,  <37.154659, 34.627480, 26.996717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088772, 34.500473, 27.370253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512597, 0.836429, 0.193986,
		-0.842682, -0.446729, -0.300533,
		-0.164715, -0.317520, 0.933836,
		37.039356, 34.405216, 27.650404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463058, 34.812138, 27.252903>,  <37.154659, 34.627480, 26.996717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463058, 34.812138, 27.252903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614613, 34.688858, 27.601950>,  <36.705544, 34.614891, 27.811377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614613, 34.688858, 27.601950>,  <36.463058, 34.812138, 27.252903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614613, 34.688858, 27.601950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652669, 0.579500, 0.488060,
		-0.656100, -0.754449, 0.018412,
		0.378887, -0.308199, 0.872616,
		36.728279, 34.596397, 27.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805679, 34.843533, 27.649647>,  <36.463058, 34.812138, 27.252903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805679, 34.843533, 27.649647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122375, 34.805260, 27.890972>,  <36.312393, 34.782295, 28.035767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122375, 34.805260, 27.890972>,  <35.805679, 34.843533, 27.649647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122375, 34.805260, 27.890972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419312, 0.633085, 0.650677,
		-0.444205, -0.768146, 0.461122,
		0.791745, -0.095679, 0.603313,
		36.359898, 34.776554, 28.071966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526558, 34.648689, 28.268858>,  <35.805679, 34.843533, 27.649647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526558, 34.648689, 28.268858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896420, 34.778309, 28.348860>,  <36.118336, 34.856079, 28.396860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896420, 34.778309, 28.348860>,  <35.526558, 34.648689, 28.268858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896420, 34.778309, 28.348860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357633, 0.558563, 0.748402,
		0.130804, -0.763544, 0.632370,
		0.924657, 0.324050, 0.200006,
		36.173817, 34.875523, 28.408861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688393, 34.531372, 28.964041>,  <35.526558, 34.648689, 28.268858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688393, 34.531372, 28.964041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907249, 34.834923, 28.822771>,  <36.038563, 35.017056, 28.738008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907249, 34.834923, 28.822771>,  <35.688393, 34.531372, 28.964041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907249, 34.834923, 28.822771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453675, 0.623448, 0.636782,
		0.703428, -0.188185, 0.685402,
		0.547146, 0.758880, -0.353176,
		36.071392, 35.062588, 28.716818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030605, 34.986950, 29.615242>,  <35.688393, 34.531372, 28.964041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030605, 34.986950, 29.615242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006630, 35.207886, 29.282658>,  <35.992245, 35.340446, 29.083107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006630, 35.207886, 29.282658>,  <36.030605, 34.986950, 29.615242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006630, 35.207886, 29.282658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366707, 0.762531, 0.532983,
		0.928404, 0.336848, 0.156844,
		-0.059936, 0.552339, -0.831462,
		35.988647, 35.373589, 29.033218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347363, 35.732265, 29.783562>,  <36.030605, 34.986950, 29.615242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347363, 35.732265, 29.783562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103096, 35.749790, 29.467293>,  <35.956535, 35.760307, 29.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103096, 35.749790, 29.467293>,  <36.347363, 35.732265, 29.783562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103096, 35.749790, 29.467293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507974, 0.744296, 0.433574,
		0.607491, 0.666411, -0.432262,
		-0.610669, 0.043815, -0.790673,
		35.919895, 35.762936, 29.230091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341690, 36.534721, 29.566664>,  <36.347363, 35.732265, 29.783562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341690, 36.534721, 29.566664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015915, 36.343403, 29.435255>,  <35.820450, 36.228611, 29.356409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015915, 36.343403, 29.435255>,  <36.341690, 36.534721, 29.566664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015915, 36.343403, 29.435255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579866, 0.691522, 0.430758,
		0.021151, 0.541324, -0.840548,
		-0.814437, -0.478294, -0.328522,
		35.771584, 36.199913, 29.336699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911217, 37.100117, 29.252043>,  <36.341690, 36.534721, 29.566664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911217, 37.100117, 29.252043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645741, 36.803696, 29.292759>,  <35.486454, 36.625843, 29.317188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645741, 36.803696, 29.292759>,  <35.911217, 37.100117, 29.252043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645741, 36.803696, 29.292759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666311, 0.647540, 0.369757,
		-0.339923, 0.177579, -0.923536,
		-0.663688, -0.741051, 0.101790,
		35.446632, 36.581379, 29.323296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239166, 37.372810, 29.038843>,  <35.911217, 37.100117, 29.252043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239166, 37.372810, 29.038843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163624, 37.057186, 29.272671>,  <35.118298, 36.867813, 29.412968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163624, 37.057186, 29.272671>,  <35.239166, 37.372810, 29.038843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163624, 37.057186, 29.272671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734476, 0.508629, 0.449268,
		-0.651827, -0.344504, -0.675603,
		-0.188856, -0.789059, 0.584568,
		35.106968, 36.820469, 29.448042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536228, 37.282097, 28.990950>,  <35.239166, 37.372810, 29.038843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536228, 37.282097, 28.990950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644592, 37.087818, 29.323383>,  <34.709610, 36.971249, 29.522844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644592, 37.087818, 29.323383>,  <34.536228, 37.282097, 28.990950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644592, 37.087818, 29.323383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689208, 0.504867, 0.519713,
		-0.672013, -0.713585, -0.197977,
		0.270907, -0.485701, 0.831086,
		34.725864, 36.942108, 29.572708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875217, 37.046448, 29.334509>,  <34.536228, 37.282097, 28.990950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875217, 37.046448, 29.334509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157825, 37.053112, 29.617510>,  <34.327389, 37.057110, 29.787310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157825, 37.053112, 29.617510>,  <33.875217, 37.046448, 29.334509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157825, 37.053112, 29.617510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665912, 0.354081, 0.656649,
		-0.239575, -0.935066, 0.261256,
		0.706517, 0.016656, 0.707501,
		34.369781, 37.058109, 29.829760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691212, 36.693703, 29.872339>,  <33.875217, 37.046448, 29.334509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691212, 36.693703, 29.872339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958763, 36.944443, 30.032167>,  <34.119293, 37.094887, 30.128065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958763, 36.944443, 30.032167>,  <33.691212, 36.693703, 29.872339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958763, 36.944443, 30.032167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686671, 0.315116, 0.655122,
		0.284748, -0.712576, 0.641213,
		0.668881, 0.626847, 0.399577,
		34.159428, 37.132500, 30.152039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539627, 36.712875, 30.559786>,  <33.691212, 36.693703, 29.872339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539627, 36.712875, 30.559786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776703, 37.034924, 30.550880>,  <33.918949, 37.228153, 30.545538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776703, 37.034924, 30.550880>,  <33.539627, 36.712875, 30.559786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776703, 37.034924, 30.550880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545156, 0.421355, 0.724751,
		0.592897, -0.417413, 0.688651,
		0.592687, 0.805125, -0.022265,
		33.954510, 37.276463, 30.544201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605927, 36.736237, 31.279821>,  <33.539627, 36.712875, 30.559786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605927, 36.736237, 31.279821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690250, 37.087883, 31.108843>,  <33.740845, 37.298870, 31.006256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690250, 37.087883, 31.108843>,  <33.605927, 36.736237, 31.279821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690250, 37.087883, 31.108843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469442, 0.474599, 0.744567,
		0.857428, 0.043697, 0.512746,
		0.210813, 0.879117, -0.427447,
		33.753494, 37.351620, 30.980608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737278, 37.129833, 31.885427>,  <33.605927, 36.736237, 31.279821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737278, 37.129833, 31.885427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698143, 37.402225, 31.595133>,  <33.674664, 37.565659, 31.420956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698143, 37.402225, 31.595133>,  <33.737278, 37.129833, 31.885427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698143, 37.402225, 31.595133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336417, 0.663678, 0.668098,
		0.936617, 0.309515, 0.164162,
		-0.097836, 0.680979, -0.725738,
		33.668793, 37.606518, 31.377411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238140, 37.642586, 32.008171>,  <33.737278, 37.129833, 31.885427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238140, 37.642586, 32.008171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948563, 37.818630, 31.795677>,  <33.774818, 37.924259, 31.668180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948563, 37.818630, 31.795677>,  <34.238140, 37.642586, 32.008171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948563, 37.818630, 31.795677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308763, 0.481909, 0.820018,
		0.616909, 0.757668, -0.212982,
		-0.723939, 0.440116, -0.531235,
		33.731380, 37.950665, 31.636307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266628, 38.422028, 32.099201>,  <34.238140, 37.642586, 32.008171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266628, 38.422028, 32.099201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891308, 38.303905, 32.027218>,  <33.666115, 38.233032, 31.984030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891308, 38.303905, 32.027218>,  <34.266628, 38.422028, 32.099201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891308, 38.303905, 32.027218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317537, 0.529618, 0.786559,
		-0.136970, 0.795171, -0.590713,
		-0.938301, -0.295308, -0.179954,
		33.609818, 38.215313, 31.973232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932659, 38.059608, 32.113365>,  <34.266628, 38.422028, 32.099201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932659, 38.059608, 32.113365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217834, 38.291786, 32.270748>,  <35.388939, 38.431091, 32.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217834, 38.291786, 32.270748>,  <34.932659, 38.059608, 32.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217834, 38.291786, 32.270748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685076, -0.456812, -0.567445,
		-0.149635, 0.674098, -0.723327,
		0.712938, 0.580444, 0.393453,
		35.431717, 38.465919, 32.388783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233910, 38.293640, 31.479542>,  <34.932659, 38.059608, 32.113365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233910, 38.293640, 31.479542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485718, 38.265865, 31.789093>,  <35.636803, 38.249199, 31.974823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485718, 38.265865, 31.789093>,  <35.233910, 38.293640, 31.479542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485718, 38.265865, 31.789093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619493, -0.556310, -0.553848,
		0.468975, 0.828068, -0.307190,
		0.629516, -0.069438, 0.773878,
		35.674572, 38.245033, 32.021255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907490, 38.510365, 31.315332>,  <35.233910, 38.293640, 31.479542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907490, 38.510365, 31.315332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971718, 38.277103, 31.633865>,  <36.010254, 38.137146, 31.824986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971718, 38.277103, 31.633865>,  <35.907490, 38.510365, 31.315332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971718, 38.277103, 31.633865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790381, -0.407280, -0.457626,
		0.591198, 0.702887, 0.395518,
		0.160573, -0.583157, 0.796332,
		36.019890, 38.102158, 31.872765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616261, 38.575294, 31.408165>,  <35.907490, 38.510365, 31.315332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616261, 38.575294, 31.408165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509377, 38.237026, 31.592960>,  <36.445248, 38.034065, 31.703838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509377, 38.237026, 31.592960>,  <36.616261, 38.575294, 31.408165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509377, 38.237026, 31.592960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809614, -0.457021, -0.368316,
		0.522615, 0.275618, 0.806789,
		-0.267205, -0.845675, 0.461990,
		36.429214, 37.983322, 31.731558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189800, 38.341488, 31.753906>,  <36.616261, 38.575294, 31.408165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189800, 38.341488, 31.753906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944782, 38.035538, 31.674143>,  <36.797771, 37.851967, 31.626284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944782, 38.035538, 31.674143>,  <37.189800, 38.341488, 31.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944782, 38.035538, 31.674143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728360, -0.448177, -0.518295,
		0.307057, -0.462720, 0.831629,
		-0.612542, -0.764871, -0.199411,
		36.761021, 37.806076, 31.614319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582859, 37.843830, 31.958578>,  <37.189800, 38.341488, 31.753906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582859, 37.843830, 31.958578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324570, 37.638233, 31.732708>,  <37.169598, 37.514877, 31.597185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324570, 37.638233, 31.732708>,  <37.582859, 37.843830, 31.958578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324570, 37.638233, 31.732708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744268, -0.588909, -0.315042,
		-0.170615, -0.623700, 0.762816,
		-0.645721, -0.513989, -0.564677,
		37.130852, 37.484035, 31.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897778, 37.212444, 32.012928>,  <37.582859, 37.843830, 31.958578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897778, 37.212444, 32.012928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648640, 37.170551, 31.702806>,  <37.499157, 37.145416, 31.516733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648640, 37.170551, 31.702806>,  <37.897778, 37.212444, 32.012928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648640, 37.170551, 31.702806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623770, -0.664620, -0.411328,
		-0.472206, -0.739805, 0.479281,
		-0.622842, -0.104729, -0.775306,
		37.461788, 37.139133, 31.470215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862518, 36.478882, 31.871878>,  <37.897778, 37.212444, 32.012928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862518, 36.478882, 31.871878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733707, 36.646233, 31.532171>,  <37.656422, 36.746643, 31.328346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733707, 36.646233, 31.532171>,  <37.862518, 36.478882, 31.871878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733707, 36.646233, 31.532171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618211, -0.586465, -0.523330,
		-0.717017, -0.693553, -0.069790,
		-0.322028, 0.418382, -0.849267,
		37.637100, 36.771748, 31.277391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540989, 35.887619, 31.488798>,  <37.862518, 36.478882, 31.871878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540989, 35.887619, 31.488798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653130, 36.186531, 31.247810>,  <37.720413, 36.365879, 31.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653130, 36.186531, 31.247810>,  <37.540989, 35.887619, 31.488798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653130, 36.186531, 31.247810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421695, -0.659715, -0.622052,
		-0.862307, -0.079664, -0.500080,
		0.280355, 0.747281, -0.602471,
		37.737236, 36.410717, 31.067068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490788, 35.495403, 30.871674>,  <37.540989, 35.887619, 31.488798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490788, 35.495403, 30.871674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691319, 35.826981, 30.772457>,  <37.811638, 36.025928, 30.712927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691319, 35.826981, 30.772457>,  <37.490788, 35.495403, 30.871674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691319, 35.826981, 30.772457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592557, -0.537810, -0.599698,
		-0.630513, 0.153668, -0.760815,
		0.501328, 0.828943, -0.248039,
		37.841717, 36.075665, 30.698046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452389, 35.702141, 30.085789>,  <37.490788, 35.495403, 30.871674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452389, 35.702141, 30.085789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784168, 35.863037, 30.240822>,  <37.983234, 35.959576, 30.333841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784168, 35.863037, 30.240822>,  <37.452389, 35.702141, 30.085789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784168, 35.863037, 30.240822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557509, -0.553065, -0.619115,
		-0.034676, 0.729603, -0.682991,
		0.829447, 0.402242, 0.387582,
		38.033001, 35.983711, 30.357096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953701, 35.595356, 29.550644>,  <37.452389, 35.702141, 30.085789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953701, 35.595356, 29.550644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196278, 35.695648, 29.852470>,  <38.341824, 35.755821, 30.033566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196278, 35.695648, 29.852470>,  <37.953701, 35.595356, 29.550644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196278, 35.695648, 29.852470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759972, -0.461839, -0.457327,
		0.233823, 0.850789, -0.470622,
		0.606440, 0.250726, 0.754564,
		38.378208, 35.770866, 30.078840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466644, 36.085400, 29.323902>,  <37.953701, 35.595356, 29.550644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466644, 36.085400, 29.323902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611858, 35.869125, 29.627443>,  <38.698986, 35.739361, 29.809568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611858, 35.869125, 29.627443>,  <38.466644, 36.085400, 29.323902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611858, 35.869125, 29.627443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791409, -0.250937, -0.557407,
		0.491808, 0.802924, 0.336806,
		0.363038, -0.540688, 0.758854,
		38.720768, 35.706921, 29.855099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187603, 36.125542, 29.173130>,  <38.466644, 36.085400, 29.323902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187603, 36.125542, 29.173130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133522, 35.812523, 29.416224>,  <39.101074, 35.624710, 29.562078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133522, 35.812523, 29.416224>,  <39.187603, 36.125542, 29.173130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133522, 35.812523, 29.416224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725267, -0.496058, -0.477404,
		0.675062, 0.376223, 0.634624,
		-0.135200, -0.782549, 0.607732,
		39.092960, 35.577759, 29.598543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797943, 35.830379, 29.145172>,  <39.187603, 36.125542, 29.173130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797943, 35.830379, 29.145172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595409, 35.529297, 29.313488>,  <39.473888, 35.348648, 29.414478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595409, 35.529297, 29.313488>,  <39.797943, 35.830379, 29.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595409, 35.529297, 29.313488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525393, -0.656212, -0.541617,
		0.683804, -0.053159, 0.727727,
		-0.506334, -0.752702, 0.420791,
		39.443508, 35.303486, 29.439726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325310, 35.335094, 29.431067>,  <39.797943, 35.830379, 29.145172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325310, 35.335094, 29.431067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979500, 35.154846, 29.342041>,  <39.772015, 35.046696, 29.288626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979500, 35.154846, 29.342041>,  <40.325310, 35.335094, 29.431067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979500, 35.154846, 29.342041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488853, -0.651133, -0.580559,
		0.116696, -0.610708, 0.783210,
		-0.864525, -0.450624, -0.222562,
		39.720142, 35.019661, 29.275272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434593, 34.645031, 29.562466>,  <40.325310, 35.335094, 29.431067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434593, 34.645031, 29.562466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111458, 34.635006, 29.326918>,  <39.917576, 34.628990, 29.185589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111458, 34.635006, 29.326918>,  <40.434593, 34.645031, 29.562466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111458, 34.635006, 29.326918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448128, -0.675091, -0.586032,
		-0.382857, -0.737308, 0.556593,
		-0.807838, -0.025058, -0.588872,
		39.869106, 34.627487, 29.150255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334629, 33.963543, 29.349741>,  <40.434593, 34.645031, 29.562466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334629, 33.963543, 29.349741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121040, 34.163872, 29.077257>,  <39.992886, 34.284069, 28.913767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121040, 34.163872, 29.077257>,  <40.334629, 33.963543, 29.349741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121040, 34.163872, 29.077257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203079, -0.706130, -0.678336,
		-0.820750, -0.500553, 0.275348,
		-0.533974, 0.500826, -0.681208,
		39.960846, 34.314121, 28.872894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789700, 33.463535, 29.024126>,  <40.334629, 33.963543, 29.349741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789700, 33.463535, 29.024126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855553, 33.760101, 28.763912>,  <39.895065, 33.938042, 28.607784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855553, 33.760101, 28.763912>,  <39.789700, 33.463535, 29.024126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855553, 33.760101, 28.763912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219796, -0.670528, -0.708578,
		-0.961554, -0.026330, -0.273352,
		0.164633, 0.741417, -0.650535,
		39.904942, 33.982525, 28.568752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466419, 33.207180, 28.336992>,  <39.789700, 33.463535, 29.024126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466419, 33.207180, 28.336992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686939, 33.525360, 28.236330>,  <39.819252, 33.716267, 28.175934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686939, 33.525360, 28.236330>,  <39.466419, 33.207180, 28.336992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686939, 33.525360, 28.236330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401081, -0.517178, -0.756083,
		-0.731574, 0.315896, -0.604160,
		0.551302, 0.795448, -0.251654,
		39.852329, 33.763996, 28.160833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214947, 33.409561, 27.659252>,  <39.466419, 33.207180, 28.336992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214947, 33.409561, 27.659252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592159, 33.526451, 27.722868>,  <39.818489, 33.596584, 27.761038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592159, 33.526451, 27.722868>,  <39.214947, 33.409561, 27.659252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592159, 33.526451, 27.722868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298510, -0.532137, -0.792289,
		-0.146895, 0.794630, -0.589054,
		0.943034, 0.292222, 0.159037,
		39.875069, 33.614117, 27.770578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516769, 33.604790, 26.966961>,  <39.214947, 33.409561, 27.659252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516769, 33.604790, 26.966961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804966, 33.488346, 27.218721>,  <39.977886, 33.418480, 27.369778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804966, 33.488346, 27.218721>,  <39.516769, 33.604790, 26.966961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804966, 33.488346, 27.218721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311873, -0.674627, -0.669039,
		0.619373, 0.678332, -0.395276,
		0.720495, -0.291108, 0.629399,
		40.021114, 33.401012, 27.407541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024830, 33.284485, 26.560171>,  <39.516769, 33.604790, 26.966961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024830, 33.284485, 26.560171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149654, 33.181553, 26.925991>,  <40.224548, 33.119793, 27.145483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149654, 33.181553, 26.925991>,  <40.024830, 33.284485, 26.560171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149654, 33.181553, 26.925991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314507, -0.880365, -0.355025,
		0.896495, 0.398421, -0.193796,
		0.312061, -0.257329, 0.914549,
		40.243271, 33.104355, 27.200356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629833, 33.048286, 26.501673>,  <40.024830, 33.284485, 26.560171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629833, 33.048286, 26.501673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576904, 32.897816, 26.868494>,  <40.545147, 32.807533, 27.088587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576904, 32.897816, 26.868494>,  <40.629833, 33.048286, 26.501673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576904, 32.897816, 26.868494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551122, -0.796913, -0.247376,
		0.823867, 0.472674, 0.312766,
		-0.132319, -0.376177, 0.917051,
		40.537209, 32.784962, 27.143610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288563, 32.771263, 26.714815>,  <40.629833, 33.048286, 26.501673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288563, 32.771263, 26.714815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993080, 32.587082, 26.911711>,  <40.815792, 32.476574, 27.029848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993080, 32.587082, 26.911711>,  <41.288563, 32.771263, 26.714815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993080, 32.587082, 26.911711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358436, -0.886824, -0.291661,
		0.570825, -0.039015, 0.820144,
		-0.738703, -0.460457, 0.492237,
		40.771469, 32.448944, 27.059381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625450, 32.294636, 27.016897>,  <41.288563, 32.771263, 26.714815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625450, 32.294636, 27.016897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257240, 32.140087, 27.040066>,  <41.036316, 32.047359, 27.053967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257240, 32.140087, 27.040066>,  <41.625450, 32.294636, 27.016897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257240, 32.140087, 27.040066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380732, -0.920406, -0.088860,
		0.087644, -0.059745, 0.994359,
		-0.920522, -0.386372, 0.057922,
		40.981083, 32.024174, 27.057442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583908, 31.741968, 27.457176>,  <41.625450, 32.294636, 27.016897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583908, 31.741968, 27.457176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291775, 31.667017, 27.194420>,  <41.116497, 31.622046, 27.036766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291775, 31.667017, 27.194420>,  <41.583908, 31.741968, 27.457176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291775, 31.667017, 27.194420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401212, -0.895958, -0.190495,
		-0.552854, -0.402677, 0.729523,
		-0.730330, -0.187377, -0.656893,
		41.072678, 31.610804, 26.997353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469727, 31.025400, 27.547882>,  <41.583908, 31.741968, 27.457176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469727, 31.025400, 27.547882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300488, 31.106939, 27.194740>,  <41.198944, 31.155863, 26.982855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300488, 31.106939, 27.194740>,  <41.469727, 31.025400, 27.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300488, 31.106939, 27.194740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178711, -0.936450, -0.301869,
		-0.888284, -0.285496, 0.359782,
		-0.423100, 0.203848, -0.882854,
		41.173557, 31.168095, 26.929884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023895, 30.374992, 27.427999>,  <41.469727, 31.025400, 27.547882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023895, 30.374992, 27.427999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077007, 30.573269, 27.084684>,  <41.108875, 30.692234, 26.878695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077007, 30.573269, 27.084684>,  <41.023895, 30.374992, 27.427999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077007, 30.573269, 27.084684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149163, -0.866089, -0.477117,
		-0.979857, -0.064672, -0.188940,
		0.132783, 0.495689, -0.858289,
		41.116844, 30.721975, 26.827198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663868, 29.916445, 26.908316>,  <41.023895, 30.374992, 27.427999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663868, 29.916445, 26.908316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943832, 30.139711, 26.730070>,  <41.111813, 30.273670, 26.623123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943832, 30.139711, 26.730070>,  <40.663868, 29.916445, 26.908316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943832, 30.139711, 26.730070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395304, -0.822373, -0.409191,
		-0.594857, 0.110246, -0.796235,
		0.699914, 0.558165, -0.445614,
		41.153805, 30.307161, 26.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674847, 29.695591, 26.194216>,  <40.663868, 29.916445, 26.908316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674847, 29.695591, 26.194216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030514, 29.873554, 26.237007>,  <41.243912, 29.980331, 26.262682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030514, 29.873554, 26.237007>,  <40.674847, 29.695591, 26.194216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030514, 29.873554, 26.237007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444149, -0.782882, -0.435693,
		-0.110092, 0.434917, -0.893715,
		0.889163, 0.444909, 0.106979,
		41.297264, 30.007027, 26.269100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044182, 29.664305, 25.530714>,  <40.674847, 29.695591, 26.194216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044182, 29.664305, 25.530714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321835, 29.685583, 25.817865>,  <41.488426, 29.698351, 25.990156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321835, 29.685583, 25.817865>,  <41.044182, 29.664305, 25.530714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321835, 29.685583, 25.817865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437556, -0.823064, -0.362092,
		0.571597, 0.565452, -0.594593,
		0.694134, 0.053197, 0.717878,
		41.530075, 29.701542, 26.033228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635448, 29.455807, 25.199226>,  <41.044182, 29.664305, 25.530714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635448, 29.455807, 25.199226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712837, 29.430399, 25.590845>,  <41.759270, 29.415154, 25.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712837, 29.430399, 25.590845>,  <41.635448, 29.455807, 25.199226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712837, 29.430399, 25.590845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515899, -0.842216, -0.156589,
		0.834517, 0.535385, -0.130171,
		0.193468, -0.063521, 0.979048,
		41.770878, 29.411343, 25.884560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332394, 29.292803, 25.063314>,  <41.635448, 29.455807, 25.199226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332394, 29.292803, 25.063314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226715, 29.207825, 25.439627>,  <42.163307, 29.156837, 25.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226715, 29.207825, 25.439627>,  <42.332394, 29.292803, 25.063314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226715, 29.207825, 25.439627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420542, -0.903201, -0.085859,
		0.867954, 0.372954, 0.327966,
		-0.264198, -0.212445, 0.940780,
		42.147457, 29.144091, 25.721861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903923, 28.974218, 25.317495>,  <42.332394, 29.292803, 25.063314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903923, 28.974218, 25.317495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604065, 28.849802, 25.551174>,  <42.424149, 28.775152, 25.691381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604065, 28.849802, 25.551174>,  <42.903923, 28.974218, 25.317495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604065, 28.849802, 25.551174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312962, -0.944358, -0.101202,
		0.583171, 0.106967, 0.805276,
		-0.749644, -0.311039, 0.584199,
		42.379173, 28.756491, 25.726435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257656, 28.505686, 25.878357>,  <42.903923, 28.974218, 25.317495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257656, 28.505686, 25.878357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868137, 28.428780, 25.829762>,  <42.634426, 28.382635, 25.800604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868137, 28.428780, 25.829762>,  <43.257656, 28.505686, 25.878357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868137, 28.428780, 25.829762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198888, -0.978996, -0.044840,
		-0.110314, -0.067827, 0.991580,
		-0.973794, -0.192267, -0.121486,
		42.576000, 28.371099, 25.793316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126766, 27.936281, 26.307945>,  <43.257656, 28.505686, 25.878357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126766, 27.936281, 26.307945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801296, 27.928997, 26.075533>,  <42.606014, 27.924627, 25.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801296, 27.928997, 26.075533>,  <43.126766, 27.936281, 26.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801296, 27.928997, 26.075533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123994, -0.981944, -0.142870,
		-0.567937, -0.188294, 0.801245,
		-0.813679, -0.018208, -0.581030,
		42.557194, 27.923534, 25.901224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621204, 27.455803, 26.660433>,  <43.126766, 27.936281, 26.307945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621204, 27.455803, 26.660433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549957, 27.457994, 26.266834>,  <42.507210, 27.459309, 26.030676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549957, 27.457994, 26.266834>,  <42.621204, 27.455803, 26.660433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549957, 27.457994, 26.266834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069092, -0.997447, -0.018059,
		-0.981581, -0.071203, 0.177281,
		-0.178114, 0.005478, -0.983995,
		42.496525, 27.459639, 25.971636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880459, 27.465212, 26.759665>,  <42.621204, 27.455803, 26.660433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880459, 27.465212, 26.759665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173153, 27.320669, 26.990831>,  <42.348770, 27.233944, 27.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173153, 27.320669, 26.990831>,  <41.880459, 27.465212, 26.759665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173153, 27.320669, 26.990831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319540, 0.567067, 0.759163,
		-0.602048, -0.740172, 0.299473,
		0.731732, -0.361359, 0.577916,
		42.392673, 27.212261, 27.164206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557343, 27.305790, 27.378304>,  <41.880459, 27.465212, 26.759665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557343, 27.305790, 27.378304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948902, 27.358629, 27.440666>,  <42.183838, 27.390333, 27.478085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948902, 27.358629, 27.440666>,  <41.557343, 27.305790, 27.378304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948902, 27.358629, 27.440666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204048, 0.590676, 0.780683,
		0.011035, -0.796022, 0.605167,
		0.978898, 0.132098, 0.155909,
		42.242573, 27.398258, 27.487438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569157, 27.456520, 28.113453>,  <41.557343, 27.305790, 27.378304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569157, 27.456520, 28.113453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938148, 27.569725, 28.008436>,  <42.159546, 27.637648, 27.945427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938148, 27.569725, 28.008436>,  <41.569157, 27.456520, 28.113453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938148, 27.569725, 28.008436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054723, 0.577361, 0.814653,
		0.382135, -0.765872, 0.517120,
		0.922485, 0.283009, -0.262541,
		42.214893, 27.654629, 27.929674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086342, 27.308249, 28.686279>,  <41.569157, 27.456520, 28.113453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086342, 27.308249, 28.686279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206375, 27.617592, 28.462898>,  <42.278397, 27.803198, 28.328871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206375, 27.617592, 28.462898>,  <42.086342, 27.308249, 28.686279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206375, 27.617592, 28.462898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053307, 0.570922, 0.819272,
		0.952422, -0.275621, 0.130099,
		0.300085, 0.773358, -0.558451,
		42.296402, 27.849600, 28.295362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594322, 27.606831, 29.134361>,  <42.086342, 27.308249, 28.686279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594322, 27.606831, 29.134361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542606, 27.880774, 28.847515>,  <42.511578, 28.045139, 28.675407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542606, 27.880774, 28.847515>,  <42.594322, 27.606831, 29.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542606, 27.880774, 28.847515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080313, 0.728041, 0.680813,
		0.988349, 0.030427, -0.149130,
		-0.129288, 0.684858, -0.717115,
		42.503819, 28.086231, 28.632380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076576, 28.135319, 29.279636>,  <42.594322, 27.606831, 29.134361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076576, 28.135319, 29.279636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807064, 28.321447, 29.050032>,  <42.645355, 28.433125, 28.912268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807064, 28.321447, 29.050032>,  <43.076576, 28.135319, 29.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807064, 28.321447, 29.050032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039753, 0.752867, 0.656971,
		0.737859, 0.465474, -0.488772,
		-0.673783, 0.465321, -0.574014,
		42.604931, 28.461044, 28.877827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272469, 28.879913, 29.313345>,  <43.076576, 28.135319, 29.279636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272469, 28.879913, 29.313345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909874, 28.915218, 29.148186>,  <42.692318, 28.936401, 29.049089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909874, 28.915218, 29.148186>,  <43.272469, 28.879913, 29.313345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909874, 28.915218, 29.148186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179431, 0.804685, 0.565939,
		0.382205, 0.587105, -0.713602,
		-0.906490, 0.088262, -0.412900,
		42.637928, 28.941696, 29.024317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230644, 29.592520, 29.077402>,  <43.272469, 28.879913, 29.313345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230644, 29.592520, 29.077402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858238, 29.452572, 29.118977>,  <42.634796, 29.368603, 29.143921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858238, 29.452572, 29.118977>,  <43.230644, 29.592520, 29.077402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858238, 29.452572, 29.118977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265694, 0.844925, 0.464230,
		-0.250237, 0.404590, -0.879596,
		-0.931015, -0.349871, 0.103934,
		42.578934, 29.347610, 29.150156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827221, 30.201702, 28.852566>,  <43.230644, 29.592520, 29.077402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827221, 30.201702, 28.852566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573200, 29.954678, 29.038177>,  <42.420788, 29.806463, 29.149544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573200, 29.954678, 29.038177>,  <42.827221, 30.201702, 28.852566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573200, 29.954678, 29.038177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513794, 0.786257, 0.343244,
		-0.576820, -0.020436, -0.816616,
		-0.635055, -0.617562, 0.464028,
		42.382683, 29.769409, 29.177385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183811, 30.546064, 28.788685>,  <42.827221, 30.201702, 28.852566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183811, 30.546064, 28.788685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164501, 30.291082, 29.096273>,  <42.152916, 30.138092, 29.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164501, 30.291082, 29.096273>,  <42.183811, 30.546064, 28.788685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164501, 30.291082, 29.096273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505441, 0.679616, 0.531649,
		-0.861509, -0.363003, -0.355008,
		-0.048279, -0.637456, 0.768973,
		42.150017, 30.099846, 29.326965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490345, 30.644981, 29.078810>,  <42.183811, 30.546064, 28.788685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490345, 30.644981, 29.078810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717606, 30.485609, 29.366825>,  <41.853962, 30.389986, 29.539635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717606, 30.485609, 29.366825>,  <41.490345, 30.644981, 29.078810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717606, 30.485609, 29.366825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390940, 0.639259, 0.662204,
		-0.724135, -0.657724, 0.207433,
		0.568151, -0.398431, 0.720040,
		41.888050, 30.366079, 29.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025719, 30.752071, 29.647619>,  <41.490345, 30.644981, 29.078810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025719, 30.752071, 29.647619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394302, 30.696392, 29.792686>,  <41.615452, 30.662985, 29.879726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394302, 30.696392, 29.792686>,  <41.025719, 30.752071, 29.647619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394302, 30.696392, 29.792686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183958, 0.665915, 0.722992,
		-0.342146, -0.732926, 0.588009,
		0.921464, -0.139200, 0.362668,
		41.670742, 30.654633, 29.901487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920216, 30.714371, 30.355013>,  <41.025719, 30.752071, 29.647619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920216, 30.714371, 30.355013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308231, 30.800098, 30.309252>,  <41.541042, 30.851536, 30.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308231, 30.800098, 30.309252>,  <40.920216, 30.714371, 30.355013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308231, 30.800098, 30.309252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071971, 0.703281, 0.707259,
		0.232035, -0.677837, 0.697637,
		0.970041, 0.214319, -0.114401,
		41.599243, 30.864393, 30.274931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175014, 30.792795, 31.044346>,  <40.920216, 30.714371, 30.355013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175014, 30.792795, 31.044346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433430, 30.975481, 30.799711>,  <41.588478, 31.085093, 30.652929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433430, 30.975481, 30.799711>,  <41.175014, 30.792795, 31.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433430, 30.975481, 30.799711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059854, 0.768461, 0.637091,
		0.760936, -0.448205, 0.469137,
		0.646061, 0.456705, -0.611577,
		41.627243, 31.112495, 30.616236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767475, 31.027405, 31.465099>,  <41.175014, 30.792795, 31.044346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767475, 31.027405, 31.465099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720814, 31.230064, 31.123409>,  <41.692818, 31.351660, 30.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720814, 31.230064, 31.123409>,  <41.767475, 31.027405, 31.465099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720814, 31.230064, 31.123409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099263, 0.861738, 0.497548,
		0.988200, -0.026754, -0.150812,
		-0.116649, 0.506647, -0.854226,
		41.685818, 31.382059, 30.867142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136868, 31.602684, 31.611181>,  <41.767475, 31.027405, 31.465099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136868, 31.602684, 31.611181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953751, 31.728289, 31.278477>,  <41.843880, 31.803652, 31.078854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953751, 31.728289, 31.278477>,  <42.136868, 31.602684, 31.611181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953751, 31.728289, 31.278477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061658, 0.922085, 0.382044,
		0.886920, 0.226181, -0.402760,
		-0.457790, 0.314009, -0.831761,
		41.816414, 31.822491, 31.028948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479088, 32.333099, 31.532839>,  <42.136868, 31.602684, 31.611181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479088, 32.333099, 31.532839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143955, 32.326244, 31.314575>,  <41.942875, 32.322132, 31.183617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143955, 32.326244, 31.314575>,  <42.479088, 32.333099, 31.532839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143955, 32.326244, 31.314575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199451, 0.940025, 0.276717,
		0.508192, 0.340675, -0.791000,
		-0.837831, -0.017140, -0.545661,
		41.892605, 32.321102, 31.150877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499168, 33.005447, 31.146849>,  <42.479088, 32.333099, 31.532839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499168, 33.005447, 31.146849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127094, 32.858673, 31.151125>,  <41.903851, 32.770607, 31.153690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127094, 32.858673, 31.151125>,  <42.499168, 33.005447, 31.146849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127094, 32.858673, 31.151125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358707, 0.914737, 0.185970,
		-0.078020, 0.169151, -0.982497,
		-0.930184, -0.366938, 0.010692,
		41.848038, 32.748592, 31.154333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116055, 33.445068, 30.721722>,  <42.499168, 33.005447, 31.146849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116055, 33.445068, 30.721722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842518, 33.261517, 30.948627>,  <41.678394, 33.151386, 31.084772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842518, 33.261517, 30.948627>,  <42.116055, 33.445068, 30.721722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842518, 33.261517, 30.948627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444168, 0.878626, 0.175303,
		-0.578857, -0.132082, -0.804661,
		-0.683841, -0.458880, 0.567266,
		41.637367, 33.123852, 31.118807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571056, 33.925877, 30.695660>,  <42.116055, 33.445068, 30.721722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571056, 33.925877, 30.695660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508389, 33.689030, 31.011850>,  <41.470787, 33.546921, 31.201565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508389, 33.689030, 31.011850>,  <41.571056, 33.925877, 30.695660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508389, 33.689030, 31.011850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477709, 0.745940, 0.464077,
		-0.864435, -0.304910, -0.399726,
		-0.156670, -0.592118, 0.790475,
		41.461388, 33.511395, 31.248993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885227, 34.006191, 30.713957>,  <41.571056, 33.925877, 30.695660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885227, 34.006191, 30.713957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991245, 33.886837, 31.080719>,  <41.054855, 33.815224, 31.300776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991245, 33.886837, 31.080719>,  <40.885227, 34.006191, 30.713957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991245, 33.886837, 31.080719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530761, 0.748743, 0.397086,
		-0.805012, -0.591903, 0.040077,
		0.265044, -0.298388, 0.916906,
		41.070759, 33.797321, 31.355791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227871, 33.976482, 31.077770>,  <40.885227, 34.006191, 30.713957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227871, 33.976482, 31.077770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530552, 33.996445, 31.338509>,  <40.712162, 34.008423, 31.494951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530552, 33.996445, 31.338509>,  <40.227871, 33.976482, 31.077770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530552, 33.996445, 31.338509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498711, 0.688767, 0.526201,
		-0.422710, -0.723263, 0.546083,
		0.756706, 0.049907, 0.651848,
		40.757565, 34.011417, 31.534063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971935, 33.961117, 31.707376>,  <40.227871, 33.976482, 31.077770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971935, 33.961117, 31.707376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327942, 34.125088, 31.787214>,  <40.541546, 34.223469, 31.835117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327942, 34.125088, 31.787214>,  <39.971935, 33.961117, 31.707376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327942, 34.125088, 31.787214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455880, 0.793336, 0.403474,
		0.007049, -0.450088, 0.892956,
		0.890013, 0.409925, 0.199594,
		40.594944, 34.248066, 31.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903072, 34.273174, 32.345951>,  <39.971935, 33.961117, 31.707376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903072, 34.273174, 32.345951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213272, 34.477123, 32.197021>,  <40.399391, 34.599495, 32.107662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213272, 34.477123, 32.197021>,  <39.903072, 34.273174, 32.345951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213272, 34.477123, 32.197021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307620, 0.820149, 0.482417,
		0.551334, -0.259581, 0.792874,
		0.775500, 0.509877, -0.372324,
		40.445923, 34.630085, 32.085323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052135, 34.747356, 32.927834>,  <39.903072, 34.273174, 32.345951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052135, 34.747356, 32.927834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219898, 34.895199, 32.596172>,  <40.320557, 34.983906, 32.397175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219898, 34.895199, 32.596172>,  <40.052135, 34.747356, 32.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219898, 34.895199, 32.596172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400851, 0.894898, 0.196152,
		0.814503, 0.250097, 0.523485,
		0.419409, 0.369606, -0.829149,
		40.345722, 35.006081, 32.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475101, 35.338799, 33.139374>,  <40.052135, 34.747356, 32.927834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475101, 35.338799, 33.139374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396778, 35.389317, 32.750385>,  <40.349785, 35.419628, 32.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396778, 35.389317, 32.750385>,  <40.475101, 35.338799, 33.139374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396778, 35.389317, 32.750385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430811, 0.879773, 0.201001,
		0.880944, 0.458310, -0.117852,
		-0.195804, 0.126299, -0.972476,
		40.338036, 35.427208, 32.458641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867237, 35.962513, 32.884220>,  <40.475101, 35.338799, 33.139374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867237, 35.962513, 32.884220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544979, 35.895123, 32.657043>,  <40.351624, 35.854687, 32.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544979, 35.895123, 32.657043>,  <40.867237, 35.962513, 32.884220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544979, 35.895123, 32.657043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374734, 0.887460, 0.268310,
		0.458818, 0.428987, -0.778111,
		-0.805643, -0.168479, -0.567939,
		40.303288, 35.844578, 32.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739254, 36.606834, 32.524330>,  <40.867237, 35.962513, 32.884220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739254, 36.606834, 32.524330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402054, 36.392693, 32.545311>,  <40.199734, 36.264210, 32.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402054, 36.392693, 32.545311>,  <40.739254, 36.606834, 32.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402054, 36.392693, 32.545311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493901, 0.808967, 0.318802,
		-0.213105, 0.242843, -0.946369,
		-0.842999, -0.535351, 0.052455,
		40.149155, 36.232086, 32.561047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315678, 37.074192, 32.354992>,  <40.739254, 36.606834, 32.524330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315678, 37.074192, 32.354992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089138, 36.780186, 32.504128>,  <39.953217, 36.603783, 32.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089138, 36.780186, 32.504128>,  <40.315678, 37.074192, 32.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089138, 36.780186, 32.504128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426516, 0.648479, 0.630523,
		-0.705220, 0.198072, -0.680758,
		-0.566347, -0.735012, 0.372840,
		39.919235, 36.559681, 32.615978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706890, 37.404510, 32.513435>,  <40.315678, 37.074192, 32.354992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706890, 37.404510, 32.513435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668789, 37.055447, 32.705013>,  <39.645927, 36.846008, 32.819958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668789, 37.055447, 32.705013>,  <39.706890, 37.404510, 32.513435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668789, 37.055447, 32.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441441, 0.468264, 0.765414,
		-0.892220, -0.138517, -0.429833,
		-0.095253, -0.872664, 0.478942,
		39.640213, 36.793648, 32.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987652, 37.252716, 32.667149>,  <39.706890, 37.404510, 32.513435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987652, 37.252716, 32.667149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193611, 37.031654, 32.929279>,  <39.317188, 36.899017, 33.086559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193611, 37.031654, 32.929279>,  <38.987652, 37.252716, 32.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193611, 37.031654, 32.929279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418644, 0.504986, 0.754802,
		-0.748072, -0.662998, 0.028655,
		0.514903, -0.552650, 0.655327,
		39.348083, 36.865860, 33.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466869, 37.092083, 33.205566>,  <38.987652, 37.252716, 32.667149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466869, 37.092083, 33.205566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808743, 36.991974, 33.387501>,  <39.013866, 36.931908, 33.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808743, 36.991974, 33.387501>,  <38.466869, 37.092083, 33.205566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808743, 36.991974, 33.387501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266806, 0.539816, 0.798382,
		-0.445341, -0.803718, 0.394599,
		0.854685, -0.250271, 0.454839,
		39.065147, 36.916893, 33.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220734, 36.843716, 33.885262>,  <38.466869, 37.092083, 33.205566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220734, 36.843716, 33.885262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610435, 36.931252, 33.906960>,  <38.844257, 36.983772, 33.919979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610435, 36.931252, 33.906960>,  <38.220734, 36.843716, 33.885262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610435, 36.931252, 33.906960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155335, 0.477123, 0.865000,
		0.163419, -0.851153, 0.498832,
		0.974251, 0.218843, 0.054243,
		38.902710, 36.996906, 33.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364056, 36.709564, 34.570389>,  <38.220734, 36.843716, 33.885262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364056, 36.709564, 34.570389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624504, 36.972595, 34.418789>,  <38.780773, 37.130413, 34.327831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624504, 36.972595, 34.418789>,  <38.364056, 36.709564, 34.570389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624504, 36.972595, 34.418789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084461, 0.559030, 0.824835,
		0.754260, -0.505057, 0.419535,
		0.651121, 0.657574, -0.378996,
		38.819839, 37.169868, 34.305092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812263, 36.706684, 35.045628>,  <38.364056, 36.709564, 34.570389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812263, 36.706684, 35.045628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876873, 37.043587, 34.839901>,  <38.915638, 37.245728, 34.716465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876873, 37.043587, 34.839901>,  <38.812263, 36.706684, 35.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876873, 37.043587, 34.839901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005290, 0.521891, 0.852996,
		0.986854, -0.135060, 0.088755,
		0.161526, 0.842252, -0.514316,
		38.925331, 37.296261, 34.685608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206219, 37.055473, 35.519375>,  <38.812263, 36.706684, 35.045628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206219, 37.055473, 35.519375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120827, 37.340637, 35.252186>,  <39.069592, 37.511734, 35.091873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120827, 37.340637, 35.252186>,  <39.206219, 37.055473, 35.519375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120827, 37.340637, 35.252186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090814, 0.695253, 0.713005,
		0.972717, 0.091551, -0.213165,
		-0.213480, 0.712911, -0.667971,
		39.056782, 37.554512, 35.051796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708961, 37.583614, 35.608074>,  <39.206219, 37.055473, 35.519375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708961, 37.583614, 35.608074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367962, 37.729572, 35.458355>,  <39.163364, 37.817146, 35.368523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367962, 37.729572, 35.458355>,  <39.708961, 37.583614, 35.608074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367962, 37.729572, 35.458355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031270, 0.750361, 0.660288,
		0.521797, 0.551189, -0.651091,
		-0.852497, 0.364896, -0.374300,
		39.112213, 37.839043, 35.346066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767189, 38.428230, 35.468712>,  <39.708961, 37.583614, 35.608074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767189, 38.428230, 35.468712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381466, 38.330254, 35.508942>,  <39.150032, 38.271469, 35.533077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381466, 38.330254, 35.508942>,  <39.767189, 38.428230, 35.468712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381466, 38.330254, 35.508942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134061, 0.779193, 0.612279,
		-0.228334, 0.576943, -0.784219,
		-0.964309, -0.244938, 0.100571,
		39.092175, 38.256771, 35.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427761, 39.096210, 35.496910>,  <39.767189, 38.428230, 35.468712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427761, 39.096210, 35.496910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145405, 38.848282, 35.634041>,  <38.975990, 38.699524, 35.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145405, 38.848282, 35.634041>,  <39.427761, 39.096210, 35.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145405, 38.848282, 35.634041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223942, 0.654469, 0.722163,
		-0.671985, 0.432997, -0.600791,
		-0.705894, -0.619825, 0.342827,
		38.933636, 38.662334, 35.736889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805668, 39.522148, 35.592030>,  <39.427761, 39.096210, 35.496910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805668, 39.522148, 35.592030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746471, 39.191010, 35.808460>,  <38.710953, 38.992325, 35.938320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746471, 39.191010, 35.808460>,  <38.805668, 39.522148, 35.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746471, 39.191010, 35.808460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301621, 0.558821, 0.772492,
		-0.941872, -0.048877, -0.332398,
		-0.147994, -0.827846, 0.541080,
		38.702072, 38.942654, 35.970783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068169, 39.587254, 35.903248>,  <38.805668, 39.522148, 35.592030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068169, 39.587254, 35.903248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264198, 39.308605, 36.112835>,  <38.381817, 39.141415, 36.238586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264198, 39.308605, 36.112835>,  <38.068169, 39.587254, 35.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264198, 39.308605, 36.112835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081334, 0.561935, 0.823173,
		-0.867878, -0.446032, 0.218730,
		0.490074, -0.696624, 0.523968,
		38.411221, 39.099617, 36.270027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601212, 39.453590, 36.427910>,  <38.068169, 39.587254, 35.903248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601212, 39.453590, 36.427910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974895, 39.373833, 36.546227>,  <38.199104, 39.325977, 36.617214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974895, 39.373833, 36.546227>,  <37.601212, 39.453590, 36.427910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974895, 39.373833, 36.546227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136105, 0.567223, 0.812240,
		-0.329736, -0.799061, 0.502767,
		0.934211, -0.199396, 0.295790,
		38.255157, 39.314014, 36.634964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557507, 39.345093, 37.229046>,  <37.601212, 39.453590, 36.427910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557507, 39.345093, 37.229046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941418, 39.412464, 37.139187>,  <38.171764, 39.452885, 37.085270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941418, 39.412464, 37.139187>,  <37.557507, 39.345093, 37.229046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941418, 39.412464, 37.139187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075589, 0.615572, 0.784447,
		0.270410, -0.769872, 0.578079,
		0.959773, 0.168426, -0.224651,
		38.229351, 39.462994, 37.071793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818565, 39.120556, 37.857086>,  <37.557507, 39.345093, 37.229046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818565, 39.120556, 37.857086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065575, 39.374287, 37.671051>,  <38.213779, 39.526524, 37.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065575, 39.374287, 37.671051>,  <37.818565, 39.120556, 37.857086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065575, 39.374287, 37.671051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109748, 0.516023, 0.849515,
		0.778862, -0.575634, 0.249038,
		0.617520, 0.634324, -0.465085,
		38.250832, 39.564583, 37.531525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307911, 39.371033, 38.365128>,  <37.818565, 39.120556, 37.857086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307911, 39.371033, 38.365128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418575, 39.629822, 38.080906>,  <38.484974, 39.785095, 37.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418575, 39.629822, 38.080906>,  <38.307911, 39.371033, 38.365128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418575, 39.629822, 38.080906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162820, 0.697164, 0.698177,
		0.947072, -0.308853, 0.087542,
		0.276665, 0.646971, -0.710553,
		38.501575, 39.823914, 37.867741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933849, 39.643250, 38.604012>,  <38.307911, 39.371033, 38.365128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933849, 39.643250, 38.604012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732029, 39.898045, 38.370884>,  <38.610939, 40.050922, 38.231007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732029, 39.898045, 38.370884>,  <38.933849, 39.643250, 38.604012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732029, 39.898045, 38.370884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133420, 0.724455, 0.676287,
		0.853012, 0.263460, -0.450509,
		-0.504548, 0.636988, -0.582818,
		38.580666, 40.089142, 38.196037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309872, 40.241493, 38.735420>,  <38.933849, 39.643250, 38.604012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309872, 40.241493, 38.735420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984055, 40.356411, 38.533836>,  <38.788563, 40.425362, 38.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984055, 40.356411, 38.533836>,  <39.309872, 40.241493, 38.735420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984055, 40.356411, 38.533836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071749, 0.812186, 0.578970,
		0.575644, 0.507757, -0.640950,
		-0.814546, 0.287293, -0.503961,
		38.739689, 40.442600, 38.382648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436756, 40.995186, 38.522667>,  <39.309872, 40.241493, 38.735420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436756, 40.995186, 38.522667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041279, 40.935402, 38.527565>,  <38.803993, 40.899532, 38.530506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041279, 40.935402, 38.527565>,  <39.436756, 40.995186, 38.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041279, 40.935402, 38.527565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120498, 0.840427, 0.528359,
		-0.089259, 0.520909, -0.848933,
		-0.988693, -0.149456, 0.012247,
		38.744671, 40.890564, 38.531239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997971, 41.535450, 38.257141>,  <39.436756, 40.995186, 38.522667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997971, 41.535450, 38.257141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771717, 41.333847, 38.518227>,  <38.635963, 41.212887, 38.674877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771717, 41.333847, 38.518227>,  <38.997971, 41.535450, 38.257141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771717, 41.333847, 38.518227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053466, 0.812245, 0.580861,
		-0.822921, 0.293657, -0.486381,
		-0.565634, -0.504008, 0.652713,
		38.602028, 41.182644, 38.714039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478424, 41.998894, 38.416061>,  <38.997971, 41.535450, 38.257141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478424, 41.998894, 38.416061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469070, 41.741074, 38.721741>,  <38.463459, 41.586380, 38.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469070, 41.741074, 38.721741>,  <38.478424, 41.998894, 38.416061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469070, 41.741074, 38.721741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277987, 0.738458, 0.614331,
		-0.960300, -0.198071, -0.196447,
		-0.023387, -0.644552, 0.764203,
		38.462055, 41.547707, 38.951000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824421, 42.099525, 38.784943>,  <38.478424, 41.998894, 38.416061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824421, 42.099525, 38.784943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991268, 41.791985, 38.978802>,  <38.091377, 41.607460, 39.095116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991268, 41.791985, 38.978802>,  <37.824421, 42.099525, 38.784943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991268, 41.791985, 38.978802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329822, 0.624953, 0.707567,
		-0.846893, -0.135294, 0.514264,
		0.417121, -0.768849, 0.484646,
		38.116405, 41.561329, 39.124195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550148, 42.185516, 39.528027>,  <37.824421, 42.099525, 38.784943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550148, 42.185516, 39.528027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871513, 41.947903, 39.544323>,  <38.064331, 41.805336, 39.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871513, 41.947903, 39.544323>,  <37.550148, 42.185516, 39.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871513, 41.947903, 39.544323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364121, 0.544289, 0.755755,
		-0.471116, -0.592347, 0.653586,
		0.803409, -0.594033, 0.040738,
		38.112537, 41.769691, 39.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554249, 42.087715, 40.109650>,  <37.550148, 42.185516, 39.528027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554249, 42.087715, 40.109650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934223, 42.037308, 39.995285>,  <38.162209, 42.007065, 39.926666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934223, 42.037308, 39.995285>,  <37.554249, 42.087715, 40.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934223, 42.037308, 39.995285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289458, 0.699454, 0.653435,
		0.117639, -0.703480, 0.700912,
		0.949935, -0.126015, -0.285911,
		38.219204, 41.999504, 39.909512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930328, 41.754974, 40.633190>,  <37.554249, 42.087715, 40.109650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930328, 41.754974, 40.633190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162701, 41.995708, 40.413986>,  <38.302124, 42.140148, 40.282463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162701, 41.995708, 40.413986>,  <37.930328, 41.754974, 40.633190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162701, 41.995708, 40.413986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067626, 0.635252, 0.769338,
		0.811138, -0.483993, 0.328339,
		0.580932, 0.601835, -0.548007,
		38.336979, 42.176258, 40.249584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472847, 41.873310, 41.057053>,  <37.930328, 41.754974, 40.633190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472847, 41.873310, 41.057053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497730, 42.174442, 40.794945>,  <38.512661, 42.355122, 40.637680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497730, 42.174442, 40.794945>,  <38.472847, 41.873310, 41.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497730, 42.174442, 40.794945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004847, 0.656759, 0.754085,
		0.998051, -0.043736, 0.044506,
		0.062211, 0.752831, -0.655267,
		38.516392, 42.400291, 40.598366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949326, 42.300751, 41.382378>,  <38.472847, 41.873310, 41.057053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949326, 42.300751, 41.382378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747231, 42.520061, 41.115807>,  <38.625973, 42.651649, 40.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747231, 42.520061, 41.115807>,  <38.949326, 42.300751, 41.382378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747231, 42.520061, 41.115807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136358, 0.711817, 0.689001,
		0.852138, 0.438983, -0.284877,
		-0.505240, 0.548279, -0.666425,
		38.595657, 42.684544, 40.915878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469139, 42.828609, 41.140144>,  <38.949326, 42.300751, 41.382378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469139, 42.828609, 41.140144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091412, 42.939808, 41.069736>,  <38.864777, 43.006527, 41.027493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091412, 42.939808, 41.069736>,  <39.469139, 42.828609, 41.140144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091412, 42.939808, 41.069736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002543, 0.541109, 0.840949,
		0.329032, 0.793674, -0.511684,
		-0.944316, 0.278000, -0.176024,
		38.808117, 43.023209, 41.016930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480888, 43.523640, 41.086723>,  <39.469139, 42.828609, 41.140144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480888, 43.523640, 41.086723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099236, 43.434776, 41.167000>,  <38.870243, 43.381458, 41.215168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099236, 43.434776, 41.167000>,  <39.480888, 43.523640, 41.086723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099236, 43.434776, 41.167000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059841, 0.515311, 0.854912,
		-0.293346, 0.827708, -0.478380,
		-0.954132, -0.222158, 0.200695,
		38.812996, 43.368130, 41.227207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154377, 44.113327, 41.446419>,  <39.480888, 43.523640, 41.086723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154377, 44.113327, 41.446419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905743, 43.812115, 41.532745>,  <38.756561, 43.631390, 41.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905743, 43.812115, 41.532745>,  <39.154377, 44.113327, 41.446419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905743, 43.812115, 41.532745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099560, 0.349216, 0.931738,
		-0.776992, 0.557670, -0.292040,
		-0.621588, -0.753029, 0.215816,
		38.719265, 43.586205, 41.597488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636662, 44.519341, 41.580536>,  <39.154377, 44.113327, 41.446419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636662, 44.519341, 41.580536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619518, 44.155010, 41.744759>,  <38.609234, 43.936413, 41.843292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619518, 44.155010, 41.744759>,  <38.636662, 44.519341, 41.580536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619518, 44.155010, 41.744759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218938, 0.409504, 0.885648,
		-0.974797, -0.051930, -0.216965,
		-0.042856, -0.910829, 0.410553,
		38.606663, 43.881760, 41.867924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490097, 45.262691, 41.429359>,  <38.636662, 44.519341, 41.580536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490097, 45.262691, 41.429359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866680, 45.298534, 41.299355>,  <39.092628, 45.320042, 41.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866680, 45.298534, 41.299355>,  <38.490097, 45.262691, 41.429359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866680, 45.298534, 41.299355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201349, 0.623776, 0.755223,
		0.270410, -0.776449, 0.569214,
		0.941455, 0.089610, -0.325013,
		39.149117, 45.325417, 41.201851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005630, 45.146866, 41.928547>,  <38.490097, 45.262691, 41.429359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005630, 45.146866, 41.928547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179241, 45.384762, 41.657871>,  <39.283405, 45.527500, 41.495464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179241, 45.384762, 41.657871>,  <39.005630, 45.146866, 41.928547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179241, 45.384762, 41.657871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139740, 0.697592, 0.702737,
		0.889997, -0.399566, 0.219664,
		0.434025, 0.594738, -0.676690,
		39.309448, 45.563183, 41.454865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487190, 44.747917, 42.309433>,  <39.005630, 45.146866, 41.928547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487190, 44.747917, 42.309433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352501, 44.553688, 42.632130>,  <38.271687, 44.437153, 42.825748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352501, 44.553688, 42.632130>,  <38.487190, 44.747917, 42.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352501, 44.553688, 42.632130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153655, -0.873631, -0.461692,
		0.928982, -0.031502, 0.368783,
		-0.336724, -0.485569, 0.806747,
		38.251484, 44.408016, 42.874153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983139, 44.207523, 42.557308>,  <38.487190, 44.747917, 42.309433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983139, 44.207523, 42.557308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592838, 44.122879, 42.579659>,  <38.358658, 44.072090, 42.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592838, 44.122879, 42.579659>,  <38.983139, 44.207523, 42.557308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592838, 44.122879, 42.579659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114547, -0.711285, -0.693508,
		0.186498, -0.670294, 0.718279,
		-0.975755, -0.211614, 0.055873,
		38.300110, 44.059395, 42.596420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883209, 43.442154, 42.703705>,  <38.983139, 44.207523, 42.557308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883209, 43.442154, 42.703705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576248, 43.603127, 42.504051>,  <38.392071, 43.699711, 42.384258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576248, 43.603127, 42.504051>,  <38.883209, 43.442154, 42.703705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576248, 43.603127, 42.504051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021987, -0.761510, -0.647780,
		-0.640788, -0.508083, 0.575536,
		-0.767403, 0.402436, -0.499137,
		38.346027, 43.723858, 42.354309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565006, 42.890163, 42.460052>,  <38.883209, 43.442154, 42.703705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565006, 42.890163, 42.460052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405174, 43.184128, 42.240875>,  <38.309277, 43.360508, 42.109367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405174, 43.184128, 42.240875>,  <38.565006, 42.890163, 42.460052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405174, 43.184128, 42.240875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120385, -0.634629, -0.763383,
		-0.908761, -0.239065, 0.342055,
		-0.399576, 0.734911, -0.547946,
		38.285301, 43.404602, 42.076492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882759, 42.784054, 42.018185>,  <38.565006, 42.890163, 42.460052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882759, 42.784054, 42.018185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124966, 43.062035, 41.863060>,  <38.270290, 43.228821, 41.769985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124966, 43.062035, 41.863060>,  <37.882759, 42.784054, 42.018185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124966, 43.062035, 41.863060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126210, -0.397282, -0.908976,
		-0.785765, 0.599342, -0.152849,
		0.605512, 0.694950, -0.387813,
		38.306618, 43.270519, 41.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544731, 43.067505, 41.449055>,  <37.882759, 42.784054, 42.018185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544731, 43.067505, 41.449055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929749, 43.151760, 41.380775>,  <38.160759, 43.202312, 41.339809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929749, 43.151760, 41.380775>,  <37.544731, 43.067505, 41.449055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929749, 43.151760, 41.380775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104417, -0.293031, -0.950384,
		-0.250205, 0.932612, -0.260062,
		0.962546, 0.210635, -0.170698,
		38.218513, 43.214951, 41.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551765, 43.276398, 40.705395>,  <37.544731, 43.067505, 41.449055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551765, 43.276398, 40.705395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929348, 43.201878, 40.814377>,  <38.155899, 43.157166, 40.879765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929348, 43.201878, 40.814377>,  <37.551765, 43.276398, 40.705395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929348, 43.201878, 40.814377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111352, -0.597325, -0.794232,
		0.310706, 0.780062, -0.543107,
		0.943961, -0.186297, 0.272454,
		38.212536, 43.145988, 40.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973633, 43.530518, 40.182640>,  <37.551765, 43.276398, 40.705395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973633, 43.530518, 40.182640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164715, 43.240768, 40.381470>,  <38.279362, 43.066917, 40.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164715, 43.240768, 40.381470>,  <37.973633, 43.530518, 40.182640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164715, 43.240768, 40.381470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157540, -0.486006, -0.859639,
		0.864281, 0.488961, -0.118048,
		0.477702, -0.724373, 0.497077,
		38.308025, 43.023457, 40.530594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586189, 43.470673, 39.840237>,  <37.973633, 43.530518, 40.182640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586189, 43.470673, 39.840237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554317, 43.141273, 40.064915>,  <38.535194, 42.943634, 40.199722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554317, 43.141273, 40.064915>,  <38.586189, 43.470673, 39.840237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554317, 43.141273, 40.064915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258341, -0.561292, -0.786265,
		0.962762, 0.082459, 0.257467,
		-0.079679, -0.823500, 0.561693,
		38.530415, 42.894222, 40.233421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013206, 43.017338, 39.500145>,  <38.586189, 43.470673, 39.840237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013206, 43.017338, 39.500145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824745, 42.760216, 39.741745>,  <38.711670, 42.605942, 39.886707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824745, 42.760216, 39.741745>,  <39.013206, 43.017338, 39.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824745, 42.760216, 39.741745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065336, -0.708321, -0.702861,
		0.879630, -0.291689, 0.375723,
		-0.471150, -0.642806, 0.604002,
		38.683399, 42.567375, 39.922947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335899, 42.351387, 39.521580>,  <39.013206, 43.017338, 39.500145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335899, 42.351387, 39.521580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972519, 42.254822, 39.658066>,  <38.754490, 42.196884, 39.739960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972519, 42.254822, 39.658066>,  <39.335899, 42.351387, 39.521580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972519, 42.254822, 39.658066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003468, -0.811961, -0.583701,
		0.417970, -0.531449, 0.736792,
		-0.908454, -0.241414, 0.341218,
		38.699982, 42.182396, 39.760429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342781, 41.673027, 39.885967>,  <39.335899, 42.351387, 39.521580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342781, 41.673027, 39.885967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964123, 41.730389, 39.770527>,  <38.736927, 41.764805, 39.701263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964123, 41.730389, 39.770527>,  <39.342781, 41.673027, 39.885967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964123, 41.730389, 39.770527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032691, -0.933648, -0.356696,
		-0.320601, -0.328232, 0.888526,
		-0.946650, 0.143404, -0.288599,
		38.680126, 41.773411, 39.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220978, 40.944717, 39.654121>,  <39.342781, 41.673027, 39.885967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220978, 40.944717, 39.654121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899036, 41.178333, 39.611958>,  <38.705872, 41.318504, 39.586658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899036, 41.178333, 39.611958>,  <39.220978, 40.944717, 39.654121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899036, 41.178333, 39.611958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335706, -0.594508, -0.730658,
		-0.489400, -0.552684, 0.674557,
		-0.804853, 0.584037, -0.105413,
		38.657581, 41.353546, 39.580334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451328, 40.626888, 39.857471>,  <39.220978, 40.944717, 39.654121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451328, 40.626888, 39.857471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435932, 40.924583, 39.590752>,  <38.426693, 41.103203, 39.430717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435932, 40.924583, 39.590752>,  <38.451328, 40.626888, 39.857471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435932, 40.924583, 39.590752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347732, -0.635565, -0.689304,
		-0.936803, 0.205335, 0.283261,
		-0.038492, 0.744241, -0.666801,
		38.424385, 41.147854, 39.390713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860043, 40.565361, 39.589001>,  <38.451328, 40.626888, 39.857471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860043, 40.565361, 39.589001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104820, 40.742317, 39.326759>,  <38.251686, 40.848492, 39.169415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104820, 40.742317, 39.326759>,  <37.860043, 40.565361, 39.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104820, 40.742317, 39.326759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418209, -0.522572, -0.742980,
		-0.671290, 0.728839, -0.134770,
		0.611940, 0.442393, -0.655605,
		38.288403, 40.875034, 39.130077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356689, 40.504299, 39.098869>,  <37.860043, 40.565361, 39.589001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356689, 40.504299, 39.098869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707695, 40.656937, 38.982693>,  <37.918297, 40.748520, 38.912987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707695, 40.656937, 38.982693>,  <37.356689, 40.504299, 39.098869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707695, 40.656937, 38.982693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119385, -0.412741, -0.902990,
		-0.464454, 0.827060, -0.316629,
		0.877513, 0.381597, -0.290438,
		37.970947, 40.771416, 38.895561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438499, 40.611267, 38.448093>,  <37.356689, 40.504299, 39.098869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438499, 40.611267, 38.448093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826790, 40.701187, 38.481934>,  <38.059765, 40.755138, 38.502239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826790, 40.701187, 38.481934>,  <37.438499, 40.611267, 38.448093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826790, 40.701187, 38.481934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192687, -0.518528, -0.833067,
		-0.143407, 0.824980, -0.546664,
		0.970724, 0.224803, 0.084603,
		38.118008, 40.768627, 38.507313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665787, 40.694542, 37.717197>,  <37.438499, 40.611267, 38.448093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665787, 40.694542, 37.717197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991764, 40.634411, 37.941082>,  <38.187351, 40.598331, 38.075413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991764, 40.634411, 37.941082>,  <37.665787, 40.694542, 37.717197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991764, 40.634411, 37.941082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355771, -0.632617, -0.687912,
		0.457494, 0.759735, -0.462062,
		0.814939, -0.150327, 0.559710,
		38.236244, 40.589314, 38.108994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134834, 40.841991, 37.322163>,  <37.665787, 40.694542, 37.717197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134834, 40.841991, 37.322163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273388, 40.581127, 37.591888>,  <38.356522, 40.424610, 37.753723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273388, 40.581127, 37.591888>,  <38.134834, 40.841991, 37.322163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273388, 40.581127, 37.591888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326514, -0.590057, -0.738391,
		0.879434, 0.475945, 0.008550,
		0.346388, -0.652158, 0.674319,
		38.377304, 40.385479, 37.794186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811050, 40.744232, 37.065655>,  <38.134834, 40.841991, 37.322163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811050, 40.744232, 37.065655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662876, 40.465954, 37.311836>,  <38.573971, 40.298988, 37.459545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662876, 40.465954, 37.311836>,  <38.811050, 40.744232, 37.065655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662876, 40.465954, 37.311836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175747, -0.703119, -0.689012,
		0.912081, -0.147069, 0.382725,
		-0.370433, -0.695697, 0.615455,
		38.551746, 40.257244, 37.496471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346603, 40.269100, 36.959373>,  <38.811050, 40.744232, 37.065655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346603, 40.269100, 36.959373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034111, 40.065681, 37.104179>,  <38.846615, 39.943630, 37.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034111, 40.065681, 37.104179>,  <39.346603, 40.269100, 36.959373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034111, 40.065681, 37.104179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158374, -0.722426, -0.673066,
		0.603814, -0.468488, 0.644924,
		-0.781233, -0.508546, 0.362015,
		38.799740, 39.913116, 37.212784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468616, 39.679268, 36.902157>,  <39.346603, 40.269100, 36.959373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468616, 39.679268, 36.902157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083176, 39.598797, 36.972576>,  <38.851910, 39.550514, 37.014828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083176, 39.598797, 36.972576>,  <39.468616, 39.679268, 36.902157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083176, 39.598797, 36.972576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095160, -0.873544, -0.477352,
		0.249821, -0.443226, 0.860895,
		-0.963605, -0.201175, 0.176052,
		38.794094, 39.538445, 37.025391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414810, 38.958160, 37.071701>,  <39.468616, 39.679268, 36.902157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414810, 38.958160, 37.071701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052025, 39.059967, 36.937454>,  <38.834354, 39.121052, 36.856907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052025, 39.059967, 36.937454>,  <39.414810, 38.958160, 37.071701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052025, 39.059967, 36.937454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025320, -0.762410, -0.646598,
		-0.420447, -0.594939, 0.685034,
		-0.906964, 0.254515, -0.335618,
		38.779934, 39.136322, 36.836769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126980, 38.295177, 37.065598>,  <39.414810, 38.958160, 37.071701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126980, 38.295177, 37.065598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910965, 38.533688, 36.828003>,  <38.781357, 38.676792, 36.685444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910965, 38.533688, 36.828003>,  <39.126980, 38.295177, 37.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910965, 38.533688, 36.828003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124378, -0.754540, -0.644360,
		-0.832403, -0.274096, 0.481639,
		-0.540032, 0.596272, -0.593990,
		38.748955, 38.712570, 36.649807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607025, 37.689419, 37.129616>,  <39.126980, 38.295177, 37.065598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607025, 37.689419, 37.129616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914520, 37.561890, 37.351387>,  <40.099018, 37.485371, 37.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914520, 37.561890, 37.351387>,  <39.607025, 37.689419, 37.129616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914520, 37.561890, 37.351387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248692, -0.649656, -0.718400,
		0.589232, 0.690144, -0.420127,
		0.768738, -0.318823, 0.554432,
		40.145142, 37.466244, 37.517715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280537, 37.775467, 36.708054>,  <39.607025, 37.689419, 37.129616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280537, 37.775467, 36.708054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263210, 37.491035, 36.988766>,  <40.252815, 37.320377, 37.157192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263210, 37.491035, 36.988766>,  <40.280537, 37.775467, 36.708054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263210, 37.491035, 36.988766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322809, -0.674719, -0.663738,
		0.945472, 0.197788, 0.258771,
		-0.043318, -0.711079, 0.701776,
		40.250214, 37.277710, 37.199299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952744, 37.450531, 36.844303>,  <40.280537, 37.775467, 36.708054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952744, 37.450531, 36.844303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660648, 37.195026, 36.941254>,  <40.485394, 37.041725, 36.999424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660648, 37.195026, 36.941254>,  <40.952744, 37.450531, 36.844303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660648, 37.195026, 36.941254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297989, -0.617032, -0.728337,
		0.614786, -0.459630, 0.640920,
		-0.730234, -0.638758, 0.242378,
		40.441578, 37.003399, 37.013966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152916, 36.675442, 37.061039>,  <40.952744, 37.450531, 36.844303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152916, 36.675442, 37.061039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798943, 36.674183, 36.874756>,  <40.586559, 36.673428, 36.762985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798943, 36.674183, 36.874756>,  <41.152916, 36.675442, 37.061039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798943, 36.674183, 36.874756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402898, -0.506729, -0.762167,
		-0.233589, -0.862099, 0.449690,
		-0.884935, -0.003145, -0.465704,
		40.533463, 36.673241, 36.735046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283478, 35.962414, 36.737835>,  <41.152916, 36.675442, 37.061039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283478, 35.962414, 36.737835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613422, 36.166164, 36.835930>,  <41.811390, 36.288414, 36.894787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613422, 36.166164, 36.835930>,  <41.283478, 35.962414, 36.737835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613422, 36.166164, 36.835930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557418, -0.660457, -0.503073,
		-0.094285, 0.551665, -0.828720,
		0.824861, 0.509375, 0.245237,
		41.860882, 36.318977, 36.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782524, 36.126362, 36.079506>,  <41.283478, 35.962414, 36.737835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782524, 36.126362, 36.079506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996288, 36.108738, 36.417137>,  <42.124546, 36.098164, 36.619717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996288, 36.108738, 36.417137>,  <41.782524, 36.126362, 36.079506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996288, 36.108738, 36.417137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673936, -0.580496, -0.456985,
		0.510118, 0.813070, -0.280527,
		0.534406, -0.044059, 0.844079,
		42.156609, 36.095520, 36.670361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540321, 36.349377, 35.885857>,  <41.782524, 36.126362, 36.079506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540321, 36.349377, 35.885857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553989, 36.122173, 36.214779>,  <42.562191, 35.985851, 36.412132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553989, 36.122173, 36.214779>,  <42.540321, 36.349377, 35.885857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553989, 36.122173, 36.214779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667925, -0.599079, -0.441567,
		0.743444, 0.564328, 0.358921,
		0.034167, -0.568012, 0.822311,
		42.564240, 35.951771, 36.461472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138699, 36.328773, 36.075703>,  <42.540321, 36.349377, 35.885857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138699, 36.328773, 36.075703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959309, 35.993080, 36.198708>,  <42.851677, 35.791664, 36.272511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959309, 35.993080, 36.198708>,  <43.138699, 36.328773, 36.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959309, 35.993080, 36.198708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633372, -0.541154, -0.553166,
		0.630646, -0.053309, 0.774238,
		-0.448471, -0.839232, 0.307512,
		42.824768, 35.741310, 36.290962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490273, 35.920551, 36.553211>,  <43.138699, 36.328773, 36.075703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490273, 35.920551, 36.553211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278362, 35.724621, 36.276253>,  <43.151215, 35.607063, 36.110077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278362, 35.724621, 36.276253>,  <43.490273, 35.920551, 36.553211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278362, 35.724621, 36.276253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847163, -0.344748, -0.404306,
		-0.040660, -0.800760, 0.597604,
		-0.529774, -0.489829, -0.692392,
		43.119431, 35.577671, 36.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614540, 35.147980, 36.347980>,  <43.490273, 35.920551, 36.553211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614540, 35.147980, 36.347980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545570, 35.347073, 36.007973>,  <43.504189, 35.466530, 35.803967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545570, 35.347073, 36.007973>,  <43.614540, 35.147980, 36.347980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545570, 35.347073, 36.007973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708369, -0.536973, -0.458119,
		-0.684458, -0.681118, -0.259991,
		-0.172425, 0.497733, -0.850019,
		43.493843, 35.496391, 35.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952171, 34.819992, 35.888710>,  <43.614540, 35.147980, 36.347980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952171, 34.819992, 35.888710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785557, 35.077499, 35.631943>,  <43.685589, 35.232002, 35.477882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785557, 35.077499, 35.631943>,  <43.952171, 34.819992, 35.888710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785557, 35.077499, 35.631943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558429, -0.376002, -0.739446,
		-0.717395, -0.666471, -0.202881,
		-0.416536, 0.643769, -0.641918,
		43.660595, 35.270630, 35.439365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524189, 34.394833, 35.468872>,  <43.952171, 34.819992, 35.888710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524189, 34.394833, 35.468872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698090, 34.701763, 35.280319>,  <43.802429, 34.885921, 35.167187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698090, 34.701763, 35.280319>,  <43.524189, 34.394833, 35.468872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698090, 34.701763, 35.280319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439076, -0.637618, -0.632974,
		-0.786259, 0.068215, -0.614120,
		0.434752, 0.767326, -0.471382,
		43.828514, 34.931961, 35.138905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346504, 34.391384, 34.717049>,  <43.524189, 34.394833, 35.468872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346504, 34.391384, 34.717049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705299, 34.524242, 34.833725>,  <43.920578, 34.603958, 34.903732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705299, 34.524242, 34.833725>,  <43.346504, 34.391384, 34.717049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705299, 34.524242, 34.833725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441948, -0.659631, -0.607921,
		-0.009509, 0.674213, -0.738475,
		0.896990, 0.332149, 0.291695,
		43.974396, 34.623886, 34.921234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958679, 34.768131, 34.192505>,  <43.346504, 34.391384, 34.717049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958679, 34.768131, 34.192505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064323, 34.515671, 34.484230>,  <44.127708, 34.364193, 34.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064323, 34.515671, 34.484230>,  <43.958679, 34.768131, 34.192505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064323, 34.515671, 34.484230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513805, -0.547860, -0.660193,
		0.816242, 0.549085, 0.179596,
		0.264108, -0.631154, 0.729309,
		44.143555, 34.326324, 34.703022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589771, 34.809513, 34.117805>,  <43.958679, 34.768131, 34.192505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589771, 34.809513, 34.117805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475563, 34.467724, 34.291405>,  <44.407040, 34.262650, 34.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475563, 34.467724, 34.291405>,  <44.589771, 34.809513, 34.117805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475563, 34.467724, 34.291405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509581, -0.518889, -0.686354,
		0.811668, 0.025191, 0.583576,
		-0.285521, -0.854470, 0.434003,
		44.389908, 34.211384, 34.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172550, 34.509056, 34.509533>,  <44.589771, 34.809513, 34.117805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172550, 34.509056, 34.509533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928585, 34.223366, 34.372196>,  <44.782204, 34.051952, 34.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928585, 34.223366, 34.372196>,  <45.172550, 34.509056, 34.509533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928585, 34.223366, 34.372196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738325, -0.354747, -0.573611,
		0.287888, -0.603353, 0.743697,
		-0.609915, -0.714226, -0.343343,
		44.745609, 34.009098, 34.269192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652336, 35.098938, 34.582264>,  <45.172550, 34.509056, 34.509533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652336, 35.098938, 34.582264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892914, 34.793320, 34.675644>,  <46.037262, 34.609947, 34.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892914, 34.793320, 34.675644>,  <45.652336, 35.098938, 34.582264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892914, 34.793320, 34.675644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795920, 0.598317, -0.092352,
		-0.069116, 0.241352, 0.967973,
		0.601444, -0.764046, 0.233450,
		46.073345, 34.564106, 34.745678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140717, 35.256863, 35.176235>,  <45.652336, 35.098938, 34.582264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140717, 35.256863, 35.176235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306313, 34.978565, 34.941441>,  <46.405670, 34.811584, 34.800564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306313, 34.978565, 34.941441>,  <46.140717, 35.256863, 35.176235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306313, 34.978565, 34.941441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882833, 0.464038, 0.072623,
		0.221855, -0.548273, 0.806336,
		0.413988, -0.695748, -0.586982,
		46.430508, 34.769840, 34.765347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801239, 35.054153, 35.471428>,  <46.140717, 35.256863, 35.176235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801239, 35.054153, 35.471428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844139, 34.912907, 35.099663>,  <46.869881, 34.828159, 34.876602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844139, 34.912907, 35.099663>,  <46.801239, 35.054153, 35.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844139, 34.912907, 35.099663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968803, 0.247184, 0.017886,
		0.223420, -0.902336, 0.368608,
		0.107254, -0.353113, -0.929413,
		46.876316, 34.806973, 34.820839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219616, 34.411652, 35.312119>,  <46.801239, 35.054153, 35.471428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219616, 34.411652, 35.312119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212227, 34.736385, 35.078682>,  <47.207794, 34.931225, 34.938622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212227, 34.736385, 35.078682>,  <47.219616, 34.411652, 35.312119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212227, 34.736385, 35.078682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980082, 0.130140, 0.150008,
		0.197731, -0.569197, -0.798071,
		-0.018477, 0.811836, -0.583593,
		47.206684, 34.979935, 34.903603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781471, 34.513626, 34.861504>,  <47.219616, 34.411652, 35.312119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781471, 34.513626, 34.861504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681915, 34.894650, 34.931580>,  <47.622181, 35.123264, 34.973625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681915, 34.894650, 34.931580>,  <47.781471, 34.513626, 34.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.681915, 34.894650, 34.931580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966922, 0.233952, 0.101630,
		0.055822, 0.194690, -0.979275,
		-0.248890, 0.952556, 0.175191,
		47.607250, 35.180416, 34.984138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.571495, 28.932369, 33.279057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238678, 28.818956, 33.088348>,  <37.038986, 28.750908, 32.973923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238678, 28.818956, 33.088348>,  <37.571495, 28.932369, 33.279057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238678, 28.818956, 33.088348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455925, 0.839131, 0.296633,
		0.315969, 0.464184, -0.827464,
		-0.832044, -0.283534, -0.476772,
		36.989063, 28.733896, 32.945316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312378, 29.534164, 32.785065>,  <37.571495, 28.932369, 33.279057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312378, 29.534164, 32.785065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999969, 29.294262, 32.854683>,  <36.812523, 29.150320, 32.896454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999969, 29.294262, 32.854683>,  <37.312378, 29.534164, 32.785065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999969, 29.294262, 32.854683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523958, 0.780966, 0.339943,
		-0.339808, 0.174310, -0.924200,
		-0.781024, -0.599757, 0.174047,
		36.765663, 29.114334, 32.906898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708946, 29.829460, 32.429382>,  <37.312378, 29.534164, 32.785065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708946, 29.829460, 32.429382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545300, 29.591526, 32.706161>,  <36.447113, 29.448765, 32.872231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545300, 29.591526, 32.706161>,  <36.708946, 29.829460, 32.429382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545300, 29.591526, 32.706161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428918, 0.794679, 0.429552,
		-0.805392, -0.121055, -0.580250,
		-0.409113, -0.594837, 0.691951,
		36.422565, 29.413074, 32.913746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997532, 30.103155, 32.484528>,  <36.708946, 29.829460, 32.429382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997532, 30.103155, 32.484528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084236, 29.895220, 32.815052>,  <36.136257, 29.770458, 33.013367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084236, 29.895220, 32.815052>,  <35.997532, 30.103155, 32.484528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084236, 29.895220, 32.815052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470273, 0.686145, 0.555021,
		-0.855488, -0.508896, -0.095737,
		0.216758, -0.519836, 0.826309,
		36.149265, 29.739269, 33.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382996, 30.056911, 32.784065>,  <35.997532, 30.103155, 32.484528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382996, 30.056911, 32.784065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644512, 29.990917, 33.079453>,  <35.801422, 29.951321, 33.256683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644512, 29.990917, 33.079453>,  <35.382996, 30.056911, 32.784065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644512, 29.990917, 33.079453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577467, 0.521863, 0.627846,
		-0.488966, -0.836922, 0.245915,
		0.653792, -0.164987, 0.738468,
		35.840649, 29.941422, 33.300991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940571, 29.760799, 33.359314>,  <35.382996, 30.056911, 32.784065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940571, 29.760799, 33.359314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286629, 29.920710, 33.480442>,  <35.494263, 30.016655, 33.553120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286629, 29.920710, 33.480442>,  <34.940571, 29.760799, 33.359314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286629, 29.920710, 33.480442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496855, 0.601082, 0.625967,
		0.068226, -0.692012, 0.718655,
		0.865147, 0.399775, 0.302820,
		35.546173, 30.040642, 33.571289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871510, 29.860357, 34.036686>,  <34.940571, 29.760799, 33.359314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871510, 29.860357, 34.036686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147552, 30.130844, 33.933552>,  <35.313179, 30.293137, 33.871670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147552, 30.130844, 33.933552>,  <34.871510, 29.860357, 34.036686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147552, 30.130844, 33.933552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409098, 0.658400, 0.631783,
		0.596981, -0.330520, 0.731007,
		0.690111, 0.676215, -0.257837,
		35.354588, 30.333710, 33.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044846, 30.238581, 34.647568>,  <34.871510, 29.860357, 34.036686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044846, 30.238581, 34.647568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181953, 30.486065, 34.364807>,  <35.264217, 30.634556, 34.195152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181953, 30.486065, 34.364807>,  <35.044846, 30.238581, 34.647568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181953, 30.486065, 34.364807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309727, 0.784841, 0.536743,
		0.886894, 0.034970, 0.460647,
		0.342765, 0.618710, -0.706903,
		35.284782, 30.671679, 34.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411591, 30.692291, 35.047356>,  <35.044846, 30.238581, 34.647568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411591, 30.692291, 35.047356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336178, 30.865349, 34.694702>,  <35.290928, 30.969183, 34.483112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336178, 30.865349, 34.694702>,  <35.411591, 30.692291, 35.047356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336178, 30.865349, 34.694702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157725, 0.872736, 0.462011,
		0.969318, 0.226161, -0.096303,
		-0.188536, 0.432646, -0.881630,
		35.279617, 30.995142, 34.430214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988621, 31.288944, 35.037392>,  <35.411591, 30.692291, 35.047356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988621, 31.288944, 35.037392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710567, 31.409336, 34.776257>,  <35.543736, 31.481571, 34.619576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710567, 31.409336, 34.776257>,  <35.988621, 31.288944, 35.037392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710567, 31.409336, 34.776257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012690, 0.913128, 0.407475,
		0.718765, 0.274966, -0.638569,
		-0.695137, 0.300982, -0.652835,
		35.502026, 31.499630, 34.580406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204876, 31.918945, 34.852306>,  <35.988621, 31.288944, 35.037392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204876, 31.918945, 34.852306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818954, 31.891565, 34.750744>,  <35.587402, 31.875137, 34.689808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818954, 31.891565, 34.750744>,  <36.204876, 31.918945, 34.852306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818954, 31.891565, 34.750744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147511, 0.940190, 0.307056,
		0.217698, 0.333703, -0.917197,
		-0.964805, -0.068451, -0.253903,
		35.529514, 31.871031, 34.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124306, 32.545513, 34.504936>,  <36.204876, 31.918945, 34.852306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124306, 32.545513, 34.504936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748356, 32.430347, 34.578403>,  <35.522785, 32.361248, 34.622482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748356, 32.430347, 34.578403>,  <36.124306, 32.545513, 34.504936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748356, 32.430347, 34.578403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250709, 0.946884, 0.201386,
		-0.231895, 0.143231, -0.962138,
		-0.939878, -0.287917, 0.183668,
		35.466393, 32.343971, 34.633503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647221, 33.057327, 34.213150>,  <36.124306, 32.545513, 34.504936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647221, 33.057327, 34.213150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439068, 32.886768, 34.509090>,  <35.314175, 32.784431, 34.686657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439068, 32.886768, 34.509090>,  <35.647221, 33.057327, 34.213150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439068, 32.886768, 34.509090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434589, 0.878057, 0.200372,
		-0.735072, -0.217262, -0.642236,
		-0.520386, -0.426396, 0.739854,
		35.282951, 32.758850, 34.731049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302551, 33.580811, 34.254765>,  <35.647221, 33.057327, 34.213150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302551, 33.580811, 34.254765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228218, 33.367695, 34.585003>,  <35.183620, 33.239826, 34.783146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228218, 33.367695, 34.585003>,  <35.302551, 33.580811, 34.254765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228218, 33.367695, 34.585003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282917, 0.833657, 0.474314,
		-0.940971, -0.145433, -0.305652,
		-0.185828, -0.532790, 0.825592,
		35.172470, 33.207859, 34.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584835, 33.723442, 34.457153>,  <35.302551, 33.580811, 34.254765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584835, 33.723442, 34.457153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766247, 33.599842, 34.791538>,  <34.875095, 33.525684, 34.992168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766247, 33.599842, 34.791538>,  <34.584835, 33.723442, 34.457153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766247, 33.599842, 34.791538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359407, 0.794912, 0.488816,
		-0.815557, -0.522144, 0.249463,
		0.453533, -0.308999, 0.835959,
		34.902306, 33.507141, 35.042324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052711, 33.734108, 35.025341>,  <34.584835, 33.723442, 34.457153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052711, 33.734108, 35.025341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411007, 33.754013, 35.202053>,  <34.625984, 33.765957, 35.308079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411007, 33.754013, 35.202053>,  <34.052711, 33.734108, 35.025341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411007, 33.754013, 35.202053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376886, 0.612069, 0.695218,
		-0.235803, -0.789237, 0.567012,
		0.895742, 0.049764, 0.441779,
		34.679729, 33.768944, 35.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888260, 33.585712, 35.681381>,  <34.052711, 33.734108, 35.025341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888260, 33.585712, 35.681381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.243587, 33.769402, 35.680370>,  <34.456783, 33.879616, 35.679764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.243587, 33.769402, 35.680370>,  <33.888260, 33.585712, 35.681381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243587, 33.769402, 35.680370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296414, 0.577576, 0.760622,
		0.350751, -0.674926, 0.649190,
		0.888320, 0.459218, -0.002528,
		34.510082, 33.907166, 35.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868340, 33.817528, 36.285919>,  <33.888260, 33.585712, 35.681381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868340, 33.817528, 36.285919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166504, 34.025002, 36.118435>,  <34.345402, 34.149487, 36.017944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166504, 34.025002, 36.118435>,  <33.868340, 33.817528, 36.285919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166504, 34.025002, 36.118435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191780, 0.768442, 0.610506,
		0.638419, -0.374778, 0.672281,
		0.745413, 0.518688, -0.418713,
		34.390129, 34.180607, 35.992821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128212, 33.957466, 36.924820>,  <33.868340, 33.817528, 36.285919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128212, 33.957466, 36.924820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286465, 34.197998, 36.647148>,  <34.381416, 34.342316, 36.480545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286465, 34.197998, 36.647148>,  <34.128212, 33.957466, 36.924820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286465, 34.197998, 36.647148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130142, 0.711513, 0.690516,
		0.909141, -0.363533, 0.203241,
		0.395634, 0.601326, -0.694176,
		34.405155, 34.378395, 36.438896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758453, 34.310547, 37.175579>,  <34.128212, 33.957466, 36.924820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758453, 34.310547, 37.175579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627041, 34.533894, 36.870869>,  <34.548195, 34.667900, 36.688042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627041, 34.533894, 36.870869>,  <34.758453, 34.310547, 37.175579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627041, 34.533894, 36.870869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198721, 0.829352, 0.522193,
		0.923352, 0.020174, -0.383424,
		-0.328528, 0.558362, -0.761775,
		34.528481, 34.701401, 36.642338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239792, 34.823864, 37.041775>,  <34.758453, 34.310547, 37.175579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239792, 34.823864, 37.041775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892136, 34.973125, 36.911945>,  <34.683540, 35.062683, 36.834045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892136, 34.973125, 36.911945>,  <35.239792, 34.823864, 37.041775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892136, 34.973125, 36.911945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220988, 0.880147, 0.420125,
		0.442448, 0.293420, -0.847434,
		-0.869140, 0.373156, -0.324577,
		34.631393, 35.085072, 36.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343399, 35.536823, 36.719433>,  <35.239792, 34.823864, 37.041775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343399, 35.536823, 36.719433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956409, 35.509346, 36.816811>,  <34.724216, 35.492859, 36.875237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956409, 35.509346, 36.816811>,  <35.343399, 35.536823, 36.719433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956409, 35.509346, 36.816811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049490, 0.892411, 0.448500,
		-0.248065, 0.445963, -0.859989,
		-0.967478, -0.068696, 0.243447,
		34.666164, 35.488739, 36.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854443, 36.078587, 36.341221>,  <35.343399, 35.536823, 36.719433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854443, 36.078587, 36.341221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177505, 36.181694, 36.553349>,  <36.371346, 36.243557, 36.680626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177505, 36.181694, 36.553349>,  <35.854443, 36.078587, 36.341221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177505, 36.181694, 36.553349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562759, -0.605476, -0.562761,
		0.176037, 0.752964, -0.634080,
		0.807659, 0.257767, 0.530323,
		36.419804, 36.259026, 36.712444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396416, 36.172401, 35.857887>,  <35.854443, 36.078587, 36.341221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396416, 36.172401, 35.857887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577839, 36.129150, 36.211746>,  <36.686695, 36.103199, 36.424061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577839, 36.129150, 36.211746>,  <36.396416, 36.172401, 35.857887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577839, 36.129150, 36.211746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614815, -0.680641, -0.398409,
		0.645202, 0.724594, -0.242235,
		0.453560, -0.108125, 0.884643,
		36.713905, 36.096714, 36.477139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079102, 36.296150, 35.761375>,  <36.396416, 36.172401, 35.857887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079102, 36.296150, 35.761375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056232, 36.060692, 36.083923>,  <37.042511, 35.919415, 36.277451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056232, 36.060692, 36.083923>,  <37.079102, 36.296150, 35.761375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056232, 36.060692, 36.083923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603274, -0.663922, -0.441892,
		0.795482, 0.461195, 0.393074,
		-0.057173, -0.588648, 0.806365,
		37.039082, 35.884098, 36.325832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674137, 36.068592, 35.859077>,  <37.079102, 36.296150, 35.761375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674137, 36.068592, 35.859077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509659, 35.810165, 36.116299>,  <37.410973, 35.655109, 36.270630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509659, 35.810165, 36.116299>,  <37.674137, 36.068592, 35.859077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509659, 35.810165, 36.116299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587498, -0.727221, -0.354959,
		0.696967, 0.231832, 0.678595,
		-0.411198, -0.646068, 0.643050,
		37.386299, 35.616344, 36.309212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128109, 35.665714, 35.965977>,  <37.674137, 36.068592, 35.859077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128109, 35.665714, 35.965977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826691, 35.440063, 36.100994>,  <37.645840, 35.304672, 36.182003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826691, 35.440063, 36.100994>,  <38.128109, 35.665714, 35.965977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826691, 35.440063, 36.100994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523719, -0.825490, -0.210439,
		0.397353, 0.018203, 0.917485,
		-0.753545, -0.564123, 0.337544,
		37.600628, 35.270828, 36.202259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478115, 35.115440, 36.353436>,  <38.128109, 35.665714, 35.965977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478115, 35.115440, 36.353436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120003, 34.967804, 36.253643>,  <37.905136, 34.879223, 36.193768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120003, 34.967804, 36.253643>,  <38.478115, 35.115440, 36.353436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120003, 34.967804, 36.253643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434485, -0.847144, -0.305891,
		-0.098447, -0.382256, 0.918797,
		-0.895282, -0.369090, -0.249484,
		37.851418, 34.857079, 36.178799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429451, 34.453796, 36.650959>,  <38.478115, 35.115440, 36.353436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429451, 34.453796, 36.650959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139923, 34.441025, 36.375259>,  <37.966206, 34.433361, 36.209839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139923, 34.441025, 36.375259>,  <38.429451, 34.453796, 36.650959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139923, 34.441025, 36.375259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295841, -0.916810, -0.268210,
		-0.623346, -0.398044, 0.673053,
		-0.723822, -0.031929, -0.689248,
		37.922775, 34.431446, 36.168484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949970, 33.786171, 36.865482>,  <38.429451, 34.453796, 36.650959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949970, 33.786171, 36.865482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851837, 33.885769, 36.490715>,  <37.792957, 33.945526, 36.265854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851837, 33.885769, 36.490715>,  <37.949970, 33.786171, 36.865482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851837, 33.885769, 36.490715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082826, -0.957537, -0.276158,
		-0.965894, -0.145352, 0.214292,
		-0.245333, 0.248991, -0.936918,
		37.778236, 33.960464, 36.209641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408619, 33.336903, 36.615589>,  <37.949970, 33.786171, 36.865482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408619, 33.336903, 36.615589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584095, 33.464252, 36.279449>,  <37.689381, 33.540661, 36.077766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584095, 33.464252, 36.279449>,  <37.408619, 33.336903, 36.615589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584095, 33.464252, 36.279449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253817, -0.940960, -0.223988,
		-0.862051, -0.115036, -0.493594,
		0.438686, 0.318371, -0.840354,
		37.715702, 33.559765, 36.027344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216831, 32.920715, 36.053997>,  <37.408619, 33.336903, 36.615589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216831, 32.920715, 36.053997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550488, 33.092628, 35.915722>,  <37.750683, 33.195774, 35.832756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550488, 33.092628, 35.915722>,  <37.216831, 32.920715, 36.053997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550488, 33.092628, 35.915722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357034, -0.898467, -0.255506,
		-0.420402, 0.089705, -0.902893,
		0.834140, 0.429778, -0.345690,
		37.800728, 33.221561, 35.812016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285641, 32.688972, 35.273617>,  <37.216831, 32.920715, 36.053997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285641, 32.688972, 35.273617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640617, 32.803116, 35.418404>,  <37.853603, 32.871601, 35.505276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640617, 32.803116, 35.418404>,  <37.285641, 32.688972, 35.273617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640617, 32.803116, 35.418404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420300, -0.823354, -0.381361,
		0.189202, 0.490570, -0.850614,
		0.887440, 0.285359, 0.361967,
		37.906849, 32.888725, 35.526993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790863, 32.759773, 34.715015>,  <37.285641, 32.688972, 35.273617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790863, 32.759773, 34.715015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004253, 32.688599, 35.045769>,  <38.132290, 32.645893, 35.244221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004253, 32.688599, 35.045769>,  <37.790863, 32.759773, 34.715015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004253, 32.688599, 35.045769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445064, -0.772279, -0.453326,
		0.719249, 0.609856, -0.332801,
		0.533478, -0.177937, 0.826885,
		38.164295, 32.635216, 35.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492725, 32.697044, 34.469273>,  <37.790863, 32.759773, 34.715015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492725, 32.697044, 34.469273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531292, 32.518002, 34.824879>,  <38.554432, 32.410576, 35.038242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531292, 32.518002, 34.824879>,  <38.492725, 32.697044, 34.469273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531292, 32.518002, 34.824879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541226, -0.726014, -0.424238,
		0.835331, 0.522064, 0.172255,
		0.096420, -0.447608, 0.889016,
		38.560219, 32.383720, 35.091583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177765, 32.425339, 34.491486>,  <38.492725, 32.697044, 34.469273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177765, 32.425339, 34.491486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981640, 32.194298, 34.752548>,  <38.863964, 32.055672, 34.909187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981640, 32.194298, 34.752548>,  <39.177765, 32.425339, 34.491486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981640, 32.194298, 34.752548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519964, -0.794850, -0.312811,
		0.699447, 0.185984, 0.690061,
		-0.490317, -0.577601, 0.652661,
		38.834545, 32.021019, 34.948345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707115, 32.027699, 34.651806>,  <39.177765, 32.425339, 34.491486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707115, 32.027699, 34.651806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356258, 31.863039, 34.750740>,  <39.145744, 31.764244, 34.810101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356258, 31.863039, 34.750740>,  <39.707115, 32.027699, 34.651806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356258, 31.863039, 34.750740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323379, -0.887044, -0.329514,
		0.355043, -0.209045, 0.911178,
		-0.877138, -0.411647, 0.247337,
		39.093117, 31.739544, 34.824940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877857, 31.362183, 34.940689>,  <39.707115, 32.027699, 34.651806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877857, 31.362183, 34.940689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485615, 31.321646, 34.873589>,  <39.250271, 31.297323, 34.833328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485615, 31.321646, 34.873589>,  <39.877857, 31.362183, 34.940689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485615, 31.321646, 34.873589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142120, -0.957077, -0.252597,
		-0.134954, -0.271539, 0.952919,
		-0.980607, -0.101340, -0.167752,
		39.191433, 31.291245, 34.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689320, 30.748894, 35.279854>,  <39.877857, 31.362183, 34.940689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689320, 30.748894, 35.279854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416988, 30.808102, 34.992920>,  <39.253590, 30.843626, 34.820759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416988, 30.808102, 34.992920>,  <39.689320, 30.748894, 35.279854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416988, 30.808102, 34.992920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193192, -0.908395, -0.370805,
		-0.706505, -0.391037, 0.589865,
		-0.680828, 0.148019, -0.717331,
		39.212738, 30.852507, 34.777721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195702, 30.125587, 35.247688>,  <39.689320, 30.748894, 35.279854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195702, 30.125587, 35.247688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193283, 30.291094, 34.883545>,  <39.191833, 30.390398, 34.665058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193283, 30.291094, 34.883545>,  <39.195702, 30.125587, 35.247688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193283, 30.291094, 34.883545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074740, -0.907646, -0.413030,
		-0.997185, -0.070537, -0.025438,
		-0.006046, 0.413768, -0.910362,
		39.191471, 30.415224, 34.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.021725, 29.448736, 34.769821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055984, 29.753889, 34.513485>,  <39.076542, 29.936981, 34.359684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055984, 29.753889, 34.513485>,  <39.021725, 29.448736, 34.769821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055984, 29.753889, 34.513485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195804, -0.643547, -0.739938,
		-0.976895, -0.062100, -0.204498,
		0.085654, 0.762883, -0.640837,
		39.081680, 29.982754, 34.321236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492767, 29.403896, 34.198254>,  <39.021725, 29.448736, 34.769821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492767, 29.403896, 34.198254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801075, 29.622915, 34.067959>,  <38.986061, 29.754326, 33.989780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801075, 29.622915, 34.067959>,  <38.492767, 29.403896, 34.198254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801075, 29.622915, 34.067959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159270, -0.660635, -0.733618,
		-0.616884, 0.513570, -0.596405,
		0.770770, 0.547547, -0.325739,
		39.032307, 29.787180, 33.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379681, 29.404924, 33.460476>,  <38.492767, 29.403896, 34.198254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379681, 29.404924, 33.460476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760330, 29.503227, 33.534241>,  <38.988720, 29.562210, 33.578499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760330, 29.503227, 33.534241>,  <38.379681, 29.404924, 33.460476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760330, 29.503227, 33.534241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300659, -0.621174, -0.723703,
		-0.063307, 0.744140, -0.665017,
		0.951628, 0.245759, 0.184408,
		39.045818, 29.576956, 33.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677296, 29.583117, 32.775230>,  <38.379681, 29.404924, 33.460476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677296, 29.583117, 32.775230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991364, 29.502480, 33.009449>,  <39.179806, 29.454098, 33.149979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991364, 29.502480, 33.009449>,  <38.677296, 29.583117, 32.775230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991364, 29.502480, 33.009449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350118, -0.635408, -0.688239,
		0.510805, 0.745397, -0.428323,
		0.785172, -0.201593, 0.585547,
		39.226913, 29.442001, 33.185112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264473, 29.542370, 32.252766>,  <38.677296, 29.583117, 32.775230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264473, 29.542370, 32.252766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380054, 29.350042, 32.583900>,  <39.449402, 29.234646, 32.782581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380054, 29.350042, 32.583900>,  <39.264473, 29.542370, 32.252766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380054, 29.350042, 32.583900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405983, -0.721577, -0.560807,
		0.866997, 0.498136, -0.013298,
		0.288954, -0.480819, 0.827840,
		39.466740, 29.205797, 32.832253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050106, 29.436268, 32.212502>,  <39.264473, 29.542370, 32.252766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050106, 29.436268, 32.212502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909157, 29.175531, 32.481110>,  <39.824589, 29.019089, 32.642273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909157, 29.175531, 32.481110>,  <40.050106, 29.436268, 32.212502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909157, 29.175531, 32.481110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379396, -0.755430, -0.534213,
		0.855508, 0.066531, 0.513497,
		-0.352369, -0.651843, 0.671518,
		39.803448, 28.979979, 32.682564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571198, 29.083286, 32.402782>,  <40.050106, 29.436268, 32.212502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571198, 29.083286, 32.402782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254150, 28.847754, 32.466080>,  <40.063923, 28.706434, 32.504059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254150, 28.847754, 32.466080>,  <40.571198, 29.083286, 32.402782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254150, 28.847754, 32.466080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417658, -0.713415, -0.562673,
		0.444212, -0.379892, 0.811393,
		-0.792614, -0.588831, 0.158242,
		40.016365, 28.671104, 32.513554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794964, 28.442654, 32.307922>,  <40.571198, 29.083286, 32.402782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794964, 28.442654, 32.307922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.407600, 28.343302, 32.316727>,  <40.175182, 28.283691, 32.322010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.407600, 28.343302, 32.316727>,  <40.794964, 28.442654, 32.307922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407600, 28.343302, 32.316727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172256, -0.730205, -0.661157,
		0.180290, -0.636482, 0.749924,
		-0.968413, -0.248379, 0.022011,
		40.117077, 28.268787, 32.323330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770512, 27.879723, 32.707157>,  <40.794964, 28.442654, 32.307922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770512, 27.879723, 32.707157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461529, 27.905663, 32.454456>,  <40.276138, 27.921227, 32.302837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461529, 27.905663, 32.454456>,  <40.770512, 27.879723, 32.707157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461529, 27.905663, 32.454456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379323, -0.750719, -0.540865,
		-0.509343, -0.657431, 0.555297,
		-0.772454, 0.064849, -0.631751,
		40.229794, 27.925117, 32.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591957, 27.244028, 32.525372>,  <40.770512, 27.879723, 32.707157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591957, 27.244028, 32.525372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379337, 27.413670, 32.232090>,  <40.251766, 27.515455, 32.056122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379337, 27.413670, 32.232090>,  <40.591957, 27.244028, 32.525372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379337, 27.413670, 32.232090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389384, -0.646388, -0.656173,
		-0.752223, -0.634285, 0.178445,
		-0.531545, 0.424105, -0.733209,
		40.219875, 27.540901, 32.012127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300285, 26.685646, 32.158627>,  <40.591957, 27.244028, 32.525372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300285, 26.685646, 32.158627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303772, 26.994617, 31.904612>,  <40.305866, 27.180000, 31.752201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303772, 26.994617, 31.904612>,  <40.300285, 26.685646, 32.158627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303772, 26.994617, 31.904612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567288, -0.526800, -0.632982,
		-0.823474, -0.354731, -0.442784,
		0.008720, 0.772430, -0.635040,
		40.306389, 27.226347, 31.714100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203846, 26.381718, 31.485703>,  <40.300285, 26.685646, 32.158627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203846, 26.381718, 31.485703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324608, 26.752838, 31.398031>,  <40.397064, 26.975512, 31.345428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324608, 26.752838, 31.398031>,  <40.203846, 26.381718, 31.485703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324608, 26.752838, 31.398031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513397, -0.351946, -0.782661,
		-0.803293, 0.123761, -0.582583,
		0.301901, 0.927802, -0.219177,
		40.415176, 27.031179, 31.332277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098839, 26.467499, 30.788843>,  <40.203846, 26.381718, 31.485703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098839, 26.467499, 30.788843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383553, 26.732080, 30.883366>,  <40.554382, 26.890829, 30.940079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383553, 26.732080, 30.883366>,  <40.098839, 26.467499, 30.788843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383553, 26.732080, 30.883366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594235, -0.387706, -0.704676,
		-0.374494, 0.641998, -0.669023,
		0.711785, 0.661454, 0.236304,
		40.597088, 26.930517, 30.954256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378265, 26.698763, 30.113779>,  <40.098839, 26.467499, 30.788843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378265, 26.698763, 30.113779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669456, 26.789923, 30.372425>,  <40.844170, 26.844618, 30.527613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669456, 26.789923, 30.372425>,  <40.378265, 26.698763, 30.113779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669456, 26.789923, 30.372425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672163, -0.423062, -0.607631,
		0.135082, 0.876973, -0.461164,
		0.727977, 0.227897, 0.646616,
		40.887848, 26.858292, 30.566410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774879, 27.033525, 29.705711>,  <40.378265, 26.698763, 30.113779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774879, 27.033525, 29.705711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990337, 26.883223, 30.007353>,  <41.119614, 26.793041, 30.188337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990337, 26.883223, 30.007353>,  <40.774879, 27.033525, 29.705711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990337, 26.883223, 30.007353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628594, -0.416746, -0.656653,
		0.561011, 0.827726, 0.011721,
		0.538643, -0.375757, 0.754102,
		41.151932, 26.770496, 30.233583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410904, 27.214544, 29.581791>,  <40.774879, 27.033525, 29.705711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410904, 27.214544, 29.581791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461262, 26.903421, 29.828096>,  <41.491478, 26.716747, 29.975880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461262, 26.903421, 29.828096>,  <41.410904, 27.214544, 29.581791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461262, 26.903421, 29.828096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826524, -0.261035, -0.498717,
		0.548642, 0.571730, 0.610014,
		0.125897, -0.777808, 0.615764,
		41.499031, 26.670078, 30.012825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053711, 27.109091, 29.854183>,  <41.410904, 27.214544, 29.581791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053711, 27.109091, 29.854183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.917866, 26.736610, 29.907141>,  <41.836361, 26.513123, 29.938915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.917866, 26.736610, 29.907141>,  <42.053711, 27.109091, 29.854183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917866, 26.736610, 29.907141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423578, -0.277097, -0.862438,
		0.839790, -0.236811, 0.488541,
		-0.339608, -0.931202, 0.132396,
		41.815983, 26.457251, 29.946859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533951, 26.809916, 29.570356>,  <42.053711, 27.109091, 29.854183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533951, 26.809916, 29.570356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283916, 26.500978, 29.615528>,  <42.133896, 26.315617, 29.642632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283916, 26.500978, 29.615528>,  <42.533951, 26.809916, 29.570356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283916, 26.500978, 29.615528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494928, -0.504056, -0.707795,
		0.603582, -0.386543, 0.697333,
		-0.625088, -0.772342, 0.112929,
		42.096390, 26.269276, 29.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827259, 26.172295, 29.398371>,  <42.533951, 26.809916, 29.570356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827259, 26.172295, 29.398371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.462006, 26.014080, 29.358879>,  <42.242855, 25.919151, 29.335184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.462006, 26.014080, 29.358879>,  <42.827259, 26.172295, 29.398371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462006, 26.014080, 29.358879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357206, -0.659566, -0.661344,
		0.196466, -0.639159, 0.743556,
		-0.913129, -0.395535, -0.098729,
		42.188068, 25.895420, 29.329260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930580, 25.487518, 29.447454>,  <42.827259, 26.172295, 29.398371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930580, 25.487518, 29.447454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591980, 25.558622, 29.246717>,  <42.388821, 25.601286, 29.126276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591980, 25.558622, 29.246717>,  <42.930580, 25.487518, 29.447454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591980, 25.558622, 29.246717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287814, -0.640202, -0.712253,
		-0.447890, -0.747357, 0.490767,
		-0.846497, 0.177762, -0.501840,
		42.338032, 25.611952, 29.096165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651436, 24.850737, 29.307348>,  <42.930580, 25.487518, 29.447454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651436, 24.850737, 29.307348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.491695, 25.091265, 29.030527>,  <42.395851, 25.235580, 28.864435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.491695, 25.091265, 29.030527>,  <42.651436, 24.850737, 29.307348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491695, 25.091265, 29.030527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325884, -0.612453, -0.720209,
		-0.856924, -0.513144, 0.048623,
		-0.399350, 0.601319, -0.692051,
		42.371891, 25.271660, 28.822912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260090, 24.385557, 28.774178>,  <42.651436, 24.850737, 29.307348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260090, 24.385557, 28.774178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300285, 24.733921, 28.581755>,  <42.324402, 24.942940, 28.466301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300285, 24.733921, 28.581755>,  <42.260090, 24.385557, 28.774178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300285, 24.733921, 28.581755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271071, -0.489180, -0.828989,
		-0.957300, -0.047098, -0.285235,
		0.100487, 0.870910, -0.481059,
		42.330433, 24.995193, 28.437437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884781, 24.288940, 28.117947>,  <42.260090, 24.385557, 28.774178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884781, 24.288940, 28.117947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170815, 24.568558, 28.117331>,  <42.342434, 24.736328, 28.116961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170815, 24.568558, 28.117331>,  <41.884781, 24.288940, 28.117947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170815, 24.568558, 28.117331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314203, -0.323377, -0.892582,
		-0.624449, 0.637784, -0.450881,
		0.715080, 0.699041, -0.001538,
		42.385338, 24.778271, 28.116869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885311, 24.591843, 27.382746>,  <41.884781, 24.288940, 28.117947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885311, 24.591843, 27.382746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146111, 24.701290, 27.099895>,  <42.302589, 24.766958, 26.930185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146111, 24.701290, 27.099895>,  <41.885311, 24.591843, 27.382746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146111, 24.701290, 27.099895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746978, -0.071819, 0.660959,
		0.130067, -0.959153, -0.251214,
		0.652002, 0.273620, -0.707124,
		42.341713, 24.783377, 26.887758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474796, 25.103905, 27.749685>,  <41.885311, 24.591843, 27.382746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474796, 25.103905, 27.749685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155678, 24.987867, 27.538263>,  <40.964207, 24.918245, 27.411409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155678, 24.987867, 27.538263>,  <41.474796, 25.103905, 27.749685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155678, 24.987867, 27.538263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579362, 0.611551, 0.538838,
		0.166927, 0.736107, -0.655959,
		-0.797794, -0.290091, -0.528556,
		40.916340, 24.900841, 27.379696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083782, 25.684799, 27.430935>,  <41.474796, 25.103905, 27.749685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083782, 25.684799, 27.430935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800629, 25.404593, 27.467119>,  <40.630737, 25.236469, 27.488831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800629, 25.404593, 27.467119>,  <41.083782, 25.684799, 27.430935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800629, 25.404593, 27.467119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526698, 0.608842, 0.593212,
		-0.470631, 0.372278, -0.799948,
		-0.707882, -0.700515, 0.090462,
		40.588264, 25.194439, 27.494257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487869, 25.967981, 27.242983>,  <41.083782, 25.684799, 27.430935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487869, 25.967981, 27.242983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394787, 25.667324, 27.489845>,  <40.338936, 25.486929, 27.637962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394787, 25.667324, 27.489845>,  <40.487869, 25.967981, 27.242983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394787, 25.667324, 27.489845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627398, 0.600897, 0.495273,
		-0.743114, -0.271948, -0.611412,
		-0.232707, -0.751643, 0.617155,
		40.324974, 25.441832, 27.674992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741978, 25.776020, 27.149315>,  <40.487869, 25.967981, 27.242983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741978, 25.776020, 27.149315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840904, 25.642143, 27.513031>,  <39.900261, 25.561817, 27.731260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840904, 25.642143, 27.513031>,  <39.741978, 25.776020, 27.149315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840904, 25.642143, 27.513031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873018, 0.330125, 0.358966,
		-0.420324, -0.882608, -0.210548,
		0.247320, -0.334694, 0.909292,
		39.915100, 25.541735, 27.785818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201248, 25.423998, 27.400354>,  <39.741978, 25.776020, 27.149315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201248, 25.423998, 27.400354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396812, 25.506651, 27.739357>,  <39.514153, 25.556242, 27.942759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396812, 25.506651, 27.739357>,  <39.201248, 25.423998, 27.400354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396812, 25.506651, 27.739357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863666, 0.251281, 0.436966,
		-0.122671, -0.945601, 0.301316,
		0.488911, 0.206633, 0.847508,
		39.543484, 25.568642, 27.993608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810043, 25.046606, 27.863365>,  <39.201248, 25.423998, 27.400354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810043, 25.046606, 27.863365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036259, 25.313528, 28.057220>,  <39.171986, 25.473680, 28.173534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036259, 25.313528, 28.057220>,  <38.810043, 25.046606, 27.863365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036259, 25.313528, 28.057220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742186, 0.155549, 0.651893,
		0.359627, -0.728359, 0.583234,
		0.565534, 0.667306, 0.484638,
		39.205917, 25.513720, 28.202612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897999, 24.882454, 28.598610>,  <38.810043, 25.046606, 27.863365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897999, 24.882454, 28.598610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954559, 25.278252, 28.586559>,  <38.988495, 25.515730, 28.579329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954559, 25.278252, 28.586559>,  <38.897999, 24.882454, 28.598610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954559, 25.278252, 28.586559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609397, 0.110987, 0.785059,
		0.780154, -0.092652, 0.618688,
		0.141404, 0.989494, -0.030125,
		38.996979, 25.575100, 28.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015278, 25.031681, 29.255806>,  <38.897999, 24.882454, 28.598610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015278, 25.031681, 29.255806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911922, 25.376631, 29.081661>,  <38.849911, 25.583601, 28.977175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911922, 25.376631, 29.081661>,  <39.015278, 25.031681, 29.255806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911922, 25.376631, 29.081661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440772, 0.295781, 0.847487,
		0.859625, 0.410878, 0.303684,
		-0.258389, 0.862377, -0.435364,
		38.834404, 25.635344, 28.951052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932899, 25.378881, 29.819313>,  <39.015278, 25.031681, 29.255806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932899, 25.378881, 29.819313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794289, 25.649988, 29.559914>,  <38.711124, 25.812653, 29.404274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794289, 25.649988, 29.559914>,  <38.932899, 25.378881, 29.819313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794289, 25.649988, 29.559914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328842, 0.559687, 0.760667,
		0.878512, 0.476844, 0.028933,
		-0.346526, 0.677769, -0.648498,
		38.690331, 25.853319, 29.365364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205322, 26.105146, 30.025393>,  <38.932899, 25.378881, 29.819313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205322, 26.105146, 30.025393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864742, 26.153181, 29.821194>,  <38.660393, 26.182003, 29.698675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864742, 26.153181, 29.821194>,  <39.205322, 26.105146, 30.025393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864742, 26.153181, 29.821194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384172, 0.519798, 0.763034,
		0.356986, 0.845807, -0.396449,
		-0.851453, 0.120088, -0.510496,
		38.609306, 26.189207, 29.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120113, 26.719643, 30.050262>,  <39.205322, 26.105146, 30.025393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120113, 26.719643, 30.050262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749783, 26.588785, 29.974548>,  <38.527584, 26.510271, 29.929119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749783, 26.588785, 29.974548>,  <39.120113, 26.719643, 30.050262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749783, 26.588785, 29.974548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359664, 0.608633, 0.707254,
		-0.116168, 0.722871, -0.681148,
		-0.925822, -0.327145, -0.189287,
		38.472034, 26.490643, 29.917763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727257, 27.301514, 29.874205>,  <39.120113, 26.719643, 30.050262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727257, 27.301514, 29.874205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499409, 27.010998, 30.028105>,  <38.362698, 26.836687, 30.120445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499409, 27.010998, 30.028105>,  <38.727257, 27.301514, 29.874205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499409, 27.010998, 30.028105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295057, 0.617614, 0.729036,
		-0.767119, 0.301752, -0.566104,
		-0.569622, -0.726291, 0.384750,
		38.328522, 26.793110, 30.143530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095295, 27.596434, 30.017454>,  <38.727257, 27.301514, 29.874205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095295, 27.596434, 30.017454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060249, 27.270355, 30.246464>,  <38.039223, 27.074709, 30.383869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060249, 27.270355, 30.246464>,  <38.095295, 27.596434, 30.017454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060249, 27.270355, 30.246464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496510, 0.533990, 0.684348,
		-0.863598, -0.224308, -0.451535,
		-0.087610, -0.815194, 0.572524,
		38.033966, 27.025797, 30.418221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463417, 27.684687, 30.271244>,  <38.095295, 27.596434, 30.017454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463417, 27.684687, 30.271244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618965, 27.403381, 30.509302>,  <37.712296, 27.234598, 30.652138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618965, 27.403381, 30.509302>,  <37.463417, 27.684687, 30.271244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618965, 27.403381, 30.509302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406936, 0.448440, 0.795804,
		-0.826547, -0.551653, -0.111797,
		0.388874, -0.703264, 0.595145,
		37.735626, 27.192402, 30.687845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110592, 27.741293, 30.838327>,  <37.463417, 27.684687, 30.271244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110592, 27.741293, 30.838327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392902, 27.500956, 30.988455>,  <37.562290, 27.356752, 31.078531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392902, 27.500956, 30.988455>,  <37.110592, 27.741293, 30.838327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392902, 27.500956, 30.988455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222762, 0.314692, 0.922684,
		-0.672499, -0.734817, 0.088257,
		0.705778, -0.600843, 0.375319,
		37.604637, 27.320704, 31.101051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766975, 27.311321, 31.403879>,  <37.110592, 27.741293, 30.838327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766975, 27.311321, 31.403879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165272, 27.303059, 31.439812>,  <37.404251, 27.298101, 31.461370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165272, 27.303059, 31.439812>,  <36.766975, 27.311321, 31.403879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165272, 27.303059, 31.439812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083122, 0.219996, 0.971953,
		-0.039840, -0.975282, 0.217343,
		0.995743, -0.020656, 0.089832,
		37.463993, 27.296862, 31.466761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935612, 26.966379, 31.941282>,  <36.766975, 27.311321, 31.403879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935612, 26.966379, 31.941282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220600, 27.242668, 31.891815>,  <37.391594, 27.408442, 31.862135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220600, 27.242668, 31.891815>,  <36.935612, 26.966379, 31.941282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220600, 27.242668, 31.891815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263162, 0.426392, 0.865411,
		0.650489, -0.584032, 0.485562,
		0.712467, 0.690722, -0.123668,
		37.434341, 27.449884, 31.854715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220516, 27.035498, 32.625019>,  <36.935612, 26.966379, 31.941282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220516, 27.035498, 32.625019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262817, 27.384153, 32.433578>,  <37.288197, 27.593348, 32.318714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262817, 27.384153, 32.433578>,  <37.220516, 27.035498, 32.625019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262817, 27.384153, 32.433578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171123, 0.490075, 0.854719,
		0.979558, -0.008490, 0.200985,
		0.105754, 0.871639, -0.478603,
		37.294544, 27.645645, 32.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463696, 27.488693, 33.097420>,  <37.220516, 27.035498, 32.625019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463696, 27.488693, 33.097420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318699, 27.718565, 32.803932>,  <37.231701, 27.856489, 32.627838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318699, 27.718565, 32.803932>,  <37.463696, 27.488693, 33.097420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318699, 27.718565, 32.803932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283639, 0.681892, 0.674219,
		0.887778, 0.452509, -0.084176,
		-0.362489, 0.574682, -0.733718,
		37.209953, 27.890970, 32.583817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552795, 28.164108, 33.358662>,  <37.463696, 27.488693, 33.097420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552795, 28.164108, 33.358662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303963, 28.207602, 33.048515>,  <37.154663, 28.233698, 32.862427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303963, 28.207602, 33.048515>,  <37.552795, 28.164108, 33.358662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303963, 28.207602, 33.048515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449592, 0.761150, 0.467458,
		0.640996, 0.639395, -0.424615,
		-0.622086, 0.108735, -0.775361,
		37.117336, 28.240223, 32.815907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.034775, 32.489616, 36.222137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759331, 32.535854, 35.935795>,  <38.594063, 32.563599, 35.763988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759331, 32.535854, 35.935795>,  <39.034775, 32.489616, 36.222137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759331, 32.535854, 35.935795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302273, 0.851588, 0.428287,
		0.659124, 0.511307, -0.551472,
		-0.688613, 0.115599, -0.715856,
		38.552746, 32.570534, 35.721039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062580, 33.266594, 35.947681>,  <39.034775, 32.489616, 36.222137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062580, 33.266594, 35.947681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706169, 33.145844, 35.812073>,  <38.492321, 33.073395, 35.730705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706169, 33.145844, 35.812073>,  <39.062580, 33.266594, 35.947681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706169, 33.145844, 35.812073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411721, 0.851967, 0.323477,
		0.191188, 0.427811, -0.883417,
		-0.891029, -0.301876, -0.339024,
		38.438862, 33.055279, 35.710365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913734, 33.697697, 35.363533>,  <39.062580, 33.266594, 35.947681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913734, 33.697697, 35.363533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568447, 33.553761, 35.505169>,  <38.361275, 33.467400, 35.590149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568447, 33.553761, 35.505169>,  <38.913734, 33.697697, 35.363533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568447, 33.553761, 35.505169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345982, 0.932444, 0.104139,
		-0.367638, -0.032612, -0.929397,
		-0.863214, -0.359840, 0.354085,
		38.309483, 33.445808, 35.611393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485859, 33.980991, 35.076435>,  <38.913734, 33.697697, 35.363533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485859, 33.980991, 35.076435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254715, 33.857075, 35.378456>,  <38.116028, 33.782722, 35.559669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254715, 33.857075, 35.378456>,  <38.485859, 33.980991, 35.076435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254715, 33.857075, 35.378456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330576, 0.934712, 0.130508,
		-0.746185, -0.174186, -0.642547,
		-0.577864, -0.309794, 0.755050,
		38.081356, 33.764137, 35.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787209, 34.232578, 34.938652>,  <38.485859, 33.980991, 35.076435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787209, 34.232578, 34.938652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790825, 34.151711, 35.330376>,  <37.792995, 34.103191, 35.565411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790825, 34.151711, 35.330376>,  <37.787209, 34.232578, 34.938652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790825, 34.151711, 35.330376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485679, 0.855187, 0.181030,
		-0.874091, -0.477266, -0.090459,
		0.009040, -0.202170, 0.979309,
		37.793537, 34.091061, 35.624168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089722, 34.320694, 35.188538>,  <37.787209, 34.232578, 34.938652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089722, 34.320694, 35.188538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344860, 34.364098, 35.493530>,  <37.497944, 34.390141, 35.676525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344860, 34.364098, 35.493530>,  <37.089722, 34.320694, 35.188538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344860, 34.364098, 35.493530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466053, 0.842563, 0.269967,
		-0.613144, -0.527554, 0.587998,
		0.637848, 0.108509, 0.762480,
		37.536213, 34.396652, 35.722275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713947, 34.347137, 35.876766>,  <37.089722, 34.320694, 35.188538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713947, 34.347137, 35.876766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055424, 34.536293, 35.964031>,  <37.260307, 34.649784, 36.016392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055424, 34.536293, 35.964031>,  <36.713947, 34.347137, 35.876766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055424, 34.536293, 35.964031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514771, 0.702735, 0.491095,
		0.078920, -0.531547, 0.843344,
		0.853688, 0.472886, 0.218165,
		37.311531, 34.678158, 36.029480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594234, 34.495586, 36.568848>,  <36.713947, 34.347137, 35.876766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594234, 34.495586, 36.568848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910194, 34.720371, 36.470654>,  <37.099770, 34.855244, 36.411736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910194, 34.720371, 36.470654>,  <36.594234, 34.495586, 36.568848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910194, 34.720371, 36.470654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406269, 0.779402, 0.476948,
		0.459360, -0.277005, 0.843953,
		0.789895, 0.561962, -0.245487,
		37.147163, 34.888962, 36.397007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750435, 34.883949, 37.122349>,  <36.594234, 34.495586, 36.568848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750435, 34.883949, 37.122349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944626, 35.113003, 36.858109>,  <37.061142, 35.250435, 36.699562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944626, 35.113003, 36.858109>,  <36.750435, 34.883949, 37.122349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944626, 35.113003, 36.858109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341010, 0.819809, 0.460029,
		0.804998, 0.001937, 0.593275,
		0.485480, 0.572635, -0.660605,
		37.090271, 35.284794, 36.659927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931423, 35.368618, 37.516346>,  <36.750435, 34.883949, 37.122349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931423, 35.368618, 37.516346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977638, 35.516201, 37.147449>,  <37.005367, 35.604752, 36.926113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977638, 35.516201, 37.147449>,  <36.931423, 35.368618, 37.516346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977638, 35.516201, 37.147449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209590, 0.916607, 0.340447,
		0.970939, 0.153958, 0.183231,
		0.115537, 0.368956, -0.922237,
		37.012299, 35.626888, 36.870777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261845, 36.020222, 37.628757>,  <36.931423, 35.368618, 37.516346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261845, 36.020222, 37.628757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121880, 36.053303, 37.255508>,  <37.037899, 36.073151, 37.031559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121880, 36.053303, 37.255508>,  <37.261845, 36.020222, 37.628757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121880, 36.053303, 37.255508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432003, 0.869607, 0.239073,
		0.831225, 0.486768, -0.268556,
		-0.349912, 0.082706, -0.933124,
		37.016907, 36.078114, 36.975571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386570, 36.730186, 37.339355>,  <37.261845, 36.020222, 37.628757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386570, 36.730186, 37.339355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.078289, 36.568886, 37.142006>,  <36.893322, 36.472107, 37.023598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.078289, 36.568886, 37.142006>,  <37.386570, 36.730186, 37.339355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078289, 36.568886, 37.142006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488749, 0.870893, 0.051671,
		0.408839, 0.280959, -0.868282,
		-0.770698, -0.403247, -0.493373,
		36.847080, 36.447910, 36.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237461, 37.278854, 36.912106>,  <37.386570, 36.730186, 37.339355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237461, 37.278854, 36.912106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937958, 37.016731, 36.951981>,  <36.758255, 36.859459, 36.975906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937958, 37.016731, 36.951981>,  <37.237461, 37.278854, 36.912106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937958, 37.016731, 36.951981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649356, 0.755365, 0.088100,
		-0.133033, 0.001233, -0.991111,
		-0.748759, -0.655304, 0.099687,
		36.713329, 36.820141, 36.981888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955231, 37.675644, 37.052536>,  <37.237461, 37.278854, 36.912106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955231, 37.675644, 37.052536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998619, 37.626823, 37.447166>,  <38.024654, 37.597530, 37.683945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998619, 37.626823, 37.447166>,  <37.955231, 37.675644, 37.052536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998619, 37.626823, 37.447166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294443, -0.943959, -0.149149,
		0.949493, 0.306670, -0.066459,
		0.108474, -0.122047, 0.986579,
		38.031162, 37.590210, 37.743141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584541, 37.885387, 36.666737>,  <37.955231, 37.675644, 37.052536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584541, 37.885387, 36.666737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585987, 38.221210, 36.449432>,  <38.586857, 38.422703, 36.319050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585987, 38.221210, 36.449432>,  <38.584541, 37.885387, 36.666737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585987, 38.221210, 36.449432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021728, -0.543200, -0.839322,
		-0.999757, -0.008769, -0.020207,
		0.003616, 0.839557, -0.543259,
		38.587070, 38.473076, 36.286453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997669, 37.844315, 36.235851>,  <38.584541, 37.885387, 36.666737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997669, 37.844315, 36.235851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275551, 38.088608, 36.083851>,  <38.442280, 38.235184, 35.992653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275551, 38.088608, 36.083851>,  <37.997669, 37.844315, 36.235851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275551, 38.088608, 36.083851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060234, -0.575829, -0.815349,
		-0.716770, 0.543536, -0.436816,
		0.694703, 0.610729, -0.379998,
		38.483963, 38.271828, 35.969852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780815, 38.001007, 35.510780>,  <37.997669, 37.844315, 36.235851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780815, 38.001007, 35.510780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172680, 38.079926, 35.525349>,  <38.407799, 38.127277, 35.534088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172680, 38.079926, 35.525349>,  <37.780815, 38.001007, 35.510780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172680, 38.079926, 35.525349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146788, -0.581087, -0.800495,
		-0.136772, 0.789564, -0.598232,
		0.979667, 0.197298, 0.036422,
		38.466579, 38.139114, 35.536274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987240, 38.274879, 34.845806>,  <37.780815, 38.001007, 35.510780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987240, 38.274879, 34.845806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342457, 38.159103, 34.988693>,  <38.555588, 38.089638, 35.074425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342457, 38.159103, 34.988693>,  <37.987240, 38.274879, 34.845806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342457, 38.159103, 34.988693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323103, -0.159865, -0.932763,
		0.327085, 0.943752, -0.048448,
		0.888043, -0.289439, 0.357219,
		38.608871, 38.072273, 35.095860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583885, 38.525562, 34.343525>,  <37.987240, 38.274879, 34.845806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583885, 38.525562, 34.343525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719494, 38.210335, 34.549053>,  <38.800858, 38.021198, 34.672371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719494, 38.210335, 34.549053>,  <38.583885, 38.525562, 34.343525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719494, 38.210335, 34.549053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400257, -0.373449, -0.836857,
		0.851386, 0.489375, 0.188822,
		0.339022, -0.788066, 0.513825,
		38.821201, 37.973915, 34.703201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234810, 38.434090, 34.005150>,  <38.583885, 38.525562, 34.343525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234810, 38.434090, 34.005150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171494, 38.099796, 34.215481>,  <39.133503, 37.899220, 34.341679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171494, 38.099796, 34.215481>,  <39.234810, 38.434090, 34.005150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171494, 38.099796, 34.215481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212353, -0.548892, -0.808470,
		0.964287, -0.016316, 0.264356,
		-0.158294, -0.835734, 0.525825,
		39.124004, 37.849075, 34.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722256, 38.022839, 33.846478>,  <39.234810, 38.434090, 34.005150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722256, 38.022839, 33.846478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468796, 37.744034, 33.980740>,  <39.316719, 37.576752, 34.061295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468796, 37.744034, 33.980740>,  <39.722256, 38.022839, 33.846478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468796, 37.744034, 33.980740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359765, -0.649591, -0.669777,
		0.684882, -0.303645, 0.662372,
		-0.633645, -0.697016, 0.335652,
		39.278702, 37.534927, 34.081436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150146, 37.497482, 33.836155>,  <39.722256, 38.022839, 33.846478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150146, 37.497482, 33.836155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.788345, 37.333466, 33.883041>,  <39.571266, 37.235054, 33.911171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.788345, 37.333466, 33.883041>,  <40.150146, 37.497482, 33.836155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788345, 37.333466, 33.883041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241334, -0.718745, -0.652046,
		0.351615, -0.561489, 0.749064,
		-0.904502, -0.410044, 0.117214,
		39.516994, 37.210453, 33.918205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279804, 36.782913, 33.986767>,  <40.150146, 37.497482, 33.836155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279804, 36.782913, 33.986767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904491, 36.830341, 33.856800>,  <39.679302, 36.858799, 33.778820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904491, 36.830341, 33.856800>,  <40.279804, 36.782913, 33.986767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904491, 36.830341, 33.856800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109590, -0.789081, -0.604435,
		-0.328051, -0.602738, 0.727386,
		-0.938282, 0.118572, -0.324913,
		39.623009, 36.865913, 33.759327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035915, 36.144905, 34.003658>,  <40.279804, 36.782913, 33.986767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035915, 36.144905, 34.003658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835285, 36.364563, 33.736271>,  <39.714905, 36.496357, 33.575836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835285, 36.364563, 33.736271>,  <40.035915, 36.144905, 34.003658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835285, 36.364563, 33.736271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177596, -0.690883, -0.700814,
		-0.846686, -0.470232, 0.249006,
		-0.501580, 0.549147, -0.668473,
		39.684811, 36.529308, 33.535728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731251, 35.679966, 33.573189>,  <40.035915, 36.144905, 34.003658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731251, 35.679966, 33.573189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724808, 36.018150, 33.359673>,  <39.720943, 36.221062, 33.231564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724808, 36.018150, 33.359673>,  <39.731251, 35.679966, 33.573189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724808, 36.018150, 33.359673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036751, -0.533999, -0.844686,
		-0.999195, 0.006015, 0.039670,
		-0.016103, 0.845464, -0.533790,
		39.719978, 36.271790, 33.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093025, 35.724686, 33.181042>,  <39.731251, 35.679966, 33.573189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093025, 35.724686, 33.181042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346260, 35.977779, 33.002674>,  <39.498203, 36.129635, 32.895653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346260, 35.977779, 33.002674>,  <39.093025, 35.724686, 33.181042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346260, 35.977779, 33.002674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038112, -0.600840, -0.798460,
		-0.773138, 0.488504, -0.404501,
		0.633091, 0.632737, -0.445915,
		39.536186, 36.167599, 32.868900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989769, 35.646606, 32.518852>,  <39.093025, 35.724686, 33.181042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989769, 35.646606, 32.518852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353394, 35.813171, 32.524662>,  <39.571568, 35.913109, 32.528149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353394, 35.813171, 32.524662>,  <38.989769, 35.646606, 32.518852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353394, 35.813171, 32.524662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329924, -0.698085, -0.635475,
		-0.254480, 0.582477, -0.771985,
		0.909060, 0.416412, 0.014524,
		39.626110, 35.938095, 32.529018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282124, 35.639378, 31.763491>,  <38.989769, 35.646606, 32.518852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282124, 35.639378, 31.763491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586300, 35.665394, 32.021946>,  <39.768806, 35.681004, 32.177021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586300, 35.665394, 32.021946>,  <39.282124, 35.639378, 31.763491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586300, 35.665394, 32.021946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463878, -0.750715, -0.470366,
		0.454472, 0.657417, -0.601048,
		0.760442, 0.065045, 0.646140,
		39.814434, 35.684906, 32.215790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208485, 35.964924, 31.045992>,  <39.282124, 35.639378, 31.763491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208485, 35.964924, 31.045992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945076, 35.922966, 30.747904>,  <38.787033, 35.897793, 30.569052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945076, 35.922966, 30.747904>,  <39.208485, 35.964924, 31.045992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945076, 35.922966, 30.747904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596634, 0.676299, 0.432027,
		0.458674, 0.729121, -0.507938,
		-0.658518, -0.104894, -0.745219,
		38.747520, 35.891499, 30.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081276, 36.584934, 30.823788>,  <39.208485, 35.964924, 31.045992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081276, 36.584934, 30.823788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756371, 36.383293, 30.706411>,  <38.561428, 36.262310, 30.635984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756371, 36.383293, 30.706411>,  <39.081276, 36.584934, 30.823788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756371, 36.383293, 30.706411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582077, 0.732969, 0.352055,
		0.037611, 0.456767, -0.888791,
		-0.812263, -0.504104, -0.293442,
		38.512691, 36.232063, 30.618380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626656, 37.093594, 30.389578>,  <39.081276, 36.584934, 30.823788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626656, 37.093594, 30.389578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.357925, 36.807121, 30.465195>,  <38.196686, 36.635239, 30.510565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.357925, 36.807121, 30.465195>,  <38.626656, 37.093594, 30.389578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357925, 36.807121, 30.465195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660360, 0.694720, 0.285110,
		-0.335520, 0.066710, -0.939668,
		-0.671826, -0.716180, 0.189040,
		38.156376, 36.592266, 30.521906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016964, 37.454441, 30.350748>,  <38.626656, 37.093594, 30.389578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016964, 37.454441, 30.350748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928020, 37.117935, 30.547863>,  <37.874657, 36.916031, 30.666132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928020, 37.117935, 30.547863>,  <38.016964, 37.454441, 30.350748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928020, 37.117935, 30.547863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753645, 0.468963, 0.460534,
		-0.618528, -0.268983, -0.738289,
		-0.222355, -0.841262, 0.492785,
		37.861313, 36.865555, 30.695698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341839, 37.452435, 30.273428>,  <38.016964, 37.454441, 30.350748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341839, 37.452435, 30.273428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413467, 37.224148, 30.593981>,  <37.456444, 37.087177, 30.786312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413467, 37.224148, 30.593981>,  <37.341839, 37.452435, 30.273428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413467, 37.224148, 30.593981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783732, 0.409642, 0.466859,
		-0.594725, -0.711670, -0.373936,
		0.179070, -0.570719, 0.801383,
		37.467190, 37.052933, 30.834396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676849, 37.065281, 30.413223>,  <37.341839, 37.452435, 30.273428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676849, 37.065281, 30.413223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894428, 37.079922, 30.748552>,  <37.024975, 37.088707, 30.949749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894428, 37.079922, 30.748552>,  <36.676849, 37.065281, 30.413223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894428, 37.079922, 30.748552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797455, 0.333450, 0.502869,
		-0.261131, -0.942057, 0.210570,
		0.543945, 0.036605, 0.838322,
		37.057613, 37.090904, 31.000050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215187, 36.853577, 30.881374>,  <36.676849, 37.065281, 30.413223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215187, 36.853577, 30.881374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495777, 37.033569, 31.102442>,  <36.664131, 37.141563, 31.235083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495777, 37.033569, 31.102442>,  <36.215187, 36.853577, 30.881374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495777, 37.033569, 31.102442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697008, 0.271376, 0.663728,
		0.148682, -0.850808, 0.504004,
		0.701480, 0.449979, 0.552671,
		36.706223, 37.168564, 31.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026199, 36.746880, 31.592676>,  <36.215187, 36.853577, 30.881374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026199, 36.746880, 31.592676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268284, 37.064957, 31.607586>,  <36.413536, 37.255802, 31.616531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268284, 37.064957, 31.607586>,  <36.026199, 36.746880, 31.592676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268284, 37.064957, 31.607586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606448, 0.430219, 0.668679,
		0.515689, -0.427301, 0.742616,
		0.605215, 0.795189, 0.037277,
		36.449848, 37.303513, 31.618769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122902, 36.828735, 32.255928>,  <36.026199, 36.746880, 31.592676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122902, 36.828735, 32.255928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185036, 37.186932, 32.089092>,  <36.222317, 37.401852, 31.988991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185036, 37.186932, 32.089092>,  <36.122902, 36.828735, 32.255928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185036, 37.186932, 32.089092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527960, 0.432111, 0.731122,
		0.834943, 0.106636, 0.539907,
		0.155336, 0.895494, -0.417087,
		36.231636, 37.455582, 31.963966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219944, 37.309128, 32.854935>,  <36.122902, 36.828735, 32.255928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219944, 37.309128, 32.854935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169785, 37.560833, 32.548134>,  <36.139690, 37.711857, 32.364052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169785, 37.560833, 32.548134>,  <36.219944, 37.309128, 32.854935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169785, 37.560833, 32.548134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496562, 0.629495, 0.597630,
		0.858896, 0.455806, 0.233535,
		-0.125395, 0.629267, -0.767007,
		36.132168, 37.749615, 32.318031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404873, 37.997997, 33.033886>,  <36.219944, 37.309128, 32.854935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404873, 37.997997, 33.033886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125397, 38.030792, 32.749599>,  <35.957710, 38.050468, 32.579029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125397, 38.030792, 32.749599>,  <36.404873, 37.997997, 33.033886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125397, 38.030792, 32.749599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460616, 0.708573, 0.534564,
		0.547420, 0.700859, -0.457306,
		-0.698688, 0.081988, -0.710713,
		35.915791, 38.055389, 32.536385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450283, 38.713371, 32.748348>,  <36.404873, 37.997997, 33.033886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450283, 38.713371, 32.748348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.086735, 38.548847, 32.720707>,  <35.868607, 38.450134, 32.704121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.086735, 38.548847, 32.720707>,  <36.450283, 38.713371, 32.748348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086735, 38.548847, 32.720707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383851, 0.760112, 0.524298,
		-0.163120, 0.503046, -0.848726,
		-0.908873, -0.411308, -0.069106,
		35.814072, 38.425453, 32.699974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.066227, 34.070339, 28.015026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701469, 33.943573, 27.910711>,  <40.482613, 33.867516, 27.848124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701469, 33.943573, 27.910711>,  <41.066227, 34.070339, 28.015026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701469, 33.943573, 27.910711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406026, 0.789298, 0.460598,
		0.059868, 0.525904, -0.848434,
		-0.911898, -0.316911, -0.260785,
		40.427898, 33.848499, 27.832476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668152, 34.749626, 27.870836>,  <41.066227, 34.070339, 28.015026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668152, 34.749626, 27.870836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422031, 34.445839, 27.955326>,  <40.274361, 34.263569, 28.006020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422031, 34.445839, 27.955326>,  <40.668152, 34.749626, 27.870836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422031, 34.445839, 27.955326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553996, 0.607231, 0.569525,
		-0.560797, 0.233412, -0.794371,
		-0.615301, -0.759467, 0.211224,
		40.237442, 34.217999, 28.018694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947151, 35.000145, 27.756870>,  <40.668152, 34.749626, 27.870836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947151, 35.000145, 27.756870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929211, 34.682529, 27.999357>,  <39.918446, 34.491962, 28.144850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929211, 34.682529, 27.999357>,  <39.947151, 35.000145, 27.756870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929211, 34.682529, 27.999357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364253, 0.578048, 0.730192,
		-0.930219, -0.188067, -0.315155,
		-0.044850, -0.794035, 0.606216,
		39.915756, 34.444321, 28.181221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298157, 34.988605, 28.063911>,  <39.947151, 35.000145, 27.756870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298157, 34.988605, 28.063911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482353, 34.741947, 28.319315>,  <39.592873, 34.593952, 28.472557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482353, 34.741947, 28.319315>,  <39.298157, 34.988605, 28.063911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482353, 34.741947, 28.319315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405545, 0.493704, 0.769278,
		-0.789606, -0.613193, -0.022729,
		0.460494, -0.616644, 0.638509,
		39.620502, 34.556953, 28.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755135, 34.688881, 28.448023>,  <39.298157, 34.988605, 28.063911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755135, 34.688881, 28.448023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091801, 34.659760, 28.662052>,  <39.293800, 34.642288, 28.790470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091801, 34.659760, 28.662052>,  <38.755135, 34.688881, 28.448023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091801, 34.659760, 28.662052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428298, 0.513483, 0.743569,
		-0.328886, -0.855006, 0.400998,
		0.841662, -0.072803, 0.535075,
		39.344299, 34.637920, 28.822575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574455, 34.376888, 29.048140>,  <38.755135, 34.688881, 28.448023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574455, 34.376888, 29.048140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909996, 34.587452, 29.103598>,  <39.111320, 34.713791, 29.136873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909996, 34.587452, 29.103598>,  <38.574455, 34.376888, 29.048140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909996, 34.587452, 29.103598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453704, 0.535351, 0.712427,
		0.300804, -0.660523, 0.687914,
		0.838850, 0.526411, 0.138647,
		39.161652, 34.745377, 29.145191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713287, 34.261497, 29.751404>,  <38.574455, 34.376888, 29.048140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713287, 34.261497, 29.751404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930233, 34.580936, 29.647036>,  <39.060398, 34.772602, 29.584415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930233, 34.580936, 29.647036>,  <38.713287, 34.261497, 29.751404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930233, 34.580936, 29.647036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259358, 0.454548, 0.852126,
		0.799110, -0.394489, 0.453653,
		0.542362, 0.798601, -0.260920,
		39.092941, 34.820518, 29.568760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068901, 34.536785, 30.359825>,  <38.713287, 34.261497, 29.751404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068901, 34.536785, 30.359825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047840, 34.860844, 30.126280>,  <39.035202, 35.055279, 29.986153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047840, 34.860844, 30.126280>,  <39.068901, 34.536785, 30.359825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047840, 34.860844, 30.126280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413316, 0.514566, 0.751260,
		0.909064, 0.280876, 0.307751,
		-0.052653, 0.810142, -0.583864,
		39.032043, 35.103886, 29.951120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310829, 35.156525, 30.844400>,  <39.068901, 34.536785, 30.359825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310829, 35.156525, 30.844400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131027, 35.343727, 30.540056>,  <39.023144, 35.456047, 30.357449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131027, 35.343727, 30.540056>,  <39.310829, 35.156525, 30.844400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131027, 35.343727, 30.540056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355346, 0.687787, 0.632992,
		0.819556, 0.554905, -0.142862,
		-0.449508, 0.468007, -0.760863,
		38.996174, 35.484131, 30.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933773, 35.475464, 31.239368>,  <39.310829, 35.156525, 30.844400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933773, 35.475464, 31.239368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070396, 35.466980, 31.615217>,  <40.152370, 35.461891, 31.840727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070396, 35.466980, 31.615217>,  <39.933773, 35.475464, 31.239368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070396, 35.466980, 31.615217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641091, -0.725804, -0.249421,
		0.687270, 0.687575, -0.234309,
		0.341558, -0.021206, 0.939621,
		40.172863, 35.460617, 31.897104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684235, 35.431953, 31.204233>,  <39.933773, 35.475464, 31.239368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684235, 35.431953, 31.204233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612625, 35.303596, 31.576250>,  <40.569660, 35.226582, 31.799459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612625, 35.303596, 31.576250>,  <40.684235, 35.431953, 31.204233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612625, 35.303596, 31.576250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613829, -0.775191, -0.149309,
		0.768873, 0.544157, 0.335749,
		-0.179023, -0.320892, 0.930043,
		40.558918, 35.207329, 31.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377674, 35.345478, 31.633064>,  <40.684235, 35.431953, 31.204233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377674, 35.345478, 31.633064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106609, 35.107628, 31.806129>,  <40.943970, 34.964916, 31.909969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106609, 35.107628, 31.806129>,  <41.377674, 35.345478, 31.633064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106609, 35.107628, 31.806129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637740, -0.768152, -0.056837,
		0.366148, 0.237411, 0.899762,
		-0.677661, -0.594625, 0.432663,
		40.903313, 34.929241, 31.935928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790039, 34.795265, 32.052170>,  <41.377674, 35.345478, 31.633064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790039, 34.795265, 32.052170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430206, 34.623219, 32.021854>,  <41.214306, 34.519989, 32.003666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430206, 34.623219, 32.021854>,  <41.790039, 34.795265, 32.052170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430206, 34.623219, 32.021854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436719, -0.887769, -0.145407,
		-0.004741, -0.163905, 0.986465,
		-0.899585, -0.430119, -0.075789,
		41.160332, 34.494183, 31.999117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762211, 34.185394, 32.368576>,  <41.790039, 34.795265, 32.052170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762211, 34.185394, 32.368576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455009, 34.122822, 32.120155>,  <41.270691, 34.085278, 31.971104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455009, 34.122822, 32.120155>,  <41.762211, 34.185394, 32.368576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455009, 34.122822, 32.120155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362959, -0.905260, -0.220827,
		-0.527669, -0.395011, 0.752018,
		-0.768001, -0.156429, -0.621051,
		41.224609, 34.075893, 31.933840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493641, 33.464268, 32.514637>,  <41.762211, 34.185394, 32.368576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493641, 33.464268, 32.514637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341797, 33.558014, 32.156651>,  <41.250690, 33.614262, 31.941858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341797, 33.558014, 32.156651>,  <41.493641, 33.464268, 32.514637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341797, 33.558014, 32.156651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224248, -0.915222, -0.334785,
		-0.897559, -0.327782, 0.294868,
		-0.379606, 0.234366, -0.894970,
		41.227913, 33.628323, 31.888159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196758, 32.874405, 32.354324>,  <41.493641, 33.464268, 32.514637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196758, 32.874405, 32.354324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277756, 33.062500, 32.010727>,  <41.326355, 33.175358, 31.804569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277756, 33.062500, 32.010727>,  <41.196758, 32.874405, 32.354324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277756, 33.062500, 32.010727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279651, -0.868405, -0.409471,
		-0.938504, -0.157302, -0.307352,
		0.202496, 0.470242, -0.858992,
		41.338505, 33.203571, 31.753029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910378, 32.458675, 31.913706>,  <41.196758, 32.874405, 32.354324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910378, 32.458675, 31.913706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139557, 32.666180, 31.659899>,  <41.277065, 32.790684, 31.507614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139557, 32.666180, 31.659899>,  <40.910378, 32.458675, 31.913706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139557, 32.666180, 31.659899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258672, -0.849078, -0.460604,
		-0.777700, 0.099771, -0.620668,
		0.572950, 0.518761, -0.634519,
		41.311443, 32.821808, 31.469543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613148, 32.244801, 31.321049>,  <40.910378, 32.458675, 31.913706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613148, 32.244801, 31.321049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977932, 32.402378, 31.275217>,  <41.196804, 32.496925, 31.247719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977932, 32.402378, 31.275217>,  <40.613148, 32.244801, 31.321049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977932, 32.402378, 31.275217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269368, -0.785590, -0.557036,
		-0.309453, 0.477134, -0.822546,
		0.911965, 0.393944, -0.114579,
		41.251522, 32.520561, 31.240843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711117, 32.306084, 30.607204>,  <40.613148, 32.244801, 31.321049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711117, 32.306084, 30.607204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080452, 32.296906, 30.760523>,  <41.302055, 32.291397, 30.852514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080452, 32.296906, 30.760523>,  <40.711117, 32.306084, 30.607204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080452, 32.296906, 30.760523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247890, -0.726708, -0.640660,
		0.293243, 0.686563, -0.665312,
		0.923341, -0.022945, 0.383294,
		41.357456, 32.290024, 30.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121403, 32.311665, 29.981915>,  <40.711117, 32.306084, 30.607204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121403, 32.311665, 29.981915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303928, 32.143143, 30.295418>,  <41.413445, 32.042030, 30.483521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303928, 32.143143, 30.295418>,  <41.121403, 32.311665, 29.981915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303928, 32.143143, 30.295418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074121, -0.859751, -0.505306,
		0.886726, 0.288672, -0.361090,
		0.456315, -0.421303, 0.783760,
		41.440823, 32.016750, 30.530546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688728, 31.992985, 29.652700>,  <41.121403, 32.311665, 29.981915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688728, 31.992985, 29.652700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678650, 31.822067, 30.014206>,  <41.672604, 31.719517, 30.231110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678650, 31.822067, 30.014206>,  <41.688728, 31.992985, 29.652700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678650, 31.822067, 30.014206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237433, -0.880738, -0.409788,
		0.971077, 0.204256, 0.123648,
		-0.025199, -0.427294, 0.903762,
		41.671089, 31.693880, 30.285334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429417, 31.723743, 29.815044>,  <41.688728, 31.992985, 29.652700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429417, 31.723743, 29.815044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177437, 31.541506, 30.066631>,  <42.026249, 31.432163, 30.217583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177437, 31.541506, 30.066631>,  <42.429417, 31.723743, 29.815044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177437, 31.541506, 30.066631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304431, -0.889902, -0.339700,
		0.714484, -0.022517, 0.699290,
		-0.629948, -0.455595, 0.628966,
		41.988453, 31.404827, 30.255322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809246, 31.185558, 30.089394>,  <42.429417, 31.723743, 29.815044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809246, 31.185558, 30.089394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421894, 31.094343, 30.129883>,  <42.189484, 31.039614, 30.154177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421894, 31.094343, 30.129883>,  <42.809246, 31.185558, 30.089394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421894, 31.094343, 30.129883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186306, -0.930783, -0.314536,
		0.165944, -0.285730, 0.943833,
		-0.968376, -0.228037, 0.101225,
		42.131382, 31.025932, 30.160250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.235825, 27.556965, 29.692629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573597, 27.664463, 29.877979>,  <34.776260, 27.728962, 29.989189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573597, 27.664463, 29.877979>,  <34.235825, 27.556965, 29.692629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573597, 27.664463, 29.877979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523309, 0.598639, 0.606449,
		-0.114414, -0.754591, 0.646144,
		0.844427, 0.268746, 0.463377,
		34.826923, 27.745087, 30.016993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109440, 27.434412, 30.340637>,  <34.235825, 27.556965, 29.692629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109440, 27.434412, 30.340637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.414207, 27.693466, 30.343571>,  <34.597069, 27.848898, 30.345331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.414207, 27.693466, 30.343571>,  <34.109440, 27.434412, 30.340637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414207, 27.693466, 30.343571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449162, 0.520196, 0.726395,
		0.466621, -0.556748, 0.687238,
		0.761918, 0.647633, 0.007335,
		34.642784, 27.887756, 30.345770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217991, 27.653391, 31.120508>,  <34.109440, 27.434412, 30.340637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217991, 27.653391, 31.120508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384594, 27.942425, 30.899822>,  <34.484554, 28.115845, 30.767410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384594, 27.942425, 30.899822>,  <34.217991, 27.653391, 31.120508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384594, 27.942425, 30.899822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402190, 0.690696, 0.600985,
		0.815331, -0.028421, 0.578297,
		0.416507, 0.722587, -0.551715,
		34.509548, 28.159201, 30.734308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395363, 28.140556, 31.668501>,  <34.217991, 27.653391, 31.120508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395363, 28.140556, 31.668501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482906, 28.375156, 31.356573>,  <34.535431, 28.515917, 31.169416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482906, 28.375156, 31.356573>,  <34.395363, 28.140556, 31.668501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482906, 28.375156, 31.356573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203933, 0.809039, 0.551241,
		0.954208, 0.038389, 0.296670,
		0.218856, 0.586500, -0.779820,
		34.548565, 28.551105, 31.122627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905346, 28.714787, 31.851503>,  <34.395363, 28.140556, 31.668501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905346, 28.714787, 31.851503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674999, 28.828341, 31.544836>,  <34.536789, 28.896473, 31.360836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674999, 28.828341, 31.544836>,  <34.905346, 28.714787, 31.851503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674999, 28.828341, 31.544836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180184, 0.870643, 0.457728,
		0.797438, 0.401733, -0.450225,
		-0.575870, 0.283886, -0.766670,
		34.502239, 28.913506, 31.314835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088665, 29.478182, 31.753683>,  <34.905346, 28.714787, 31.851503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088665, 29.478182, 31.753683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752590, 29.451382, 31.538424>,  <34.550945, 29.435303, 31.409267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752590, 29.451382, 31.538424>,  <35.088665, 29.478182, 31.753683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752590, 29.451382, 31.538424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184919, 0.968260, 0.168157,
		0.509802, 0.240796, -0.825905,
		-0.840183, -0.066999, -0.538149,
		34.500534, 29.431282, 31.376980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135254, 30.022327, 31.229757>,  <35.088665, 29.478182, 31.753683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135254, 30.022327, 31.229757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749962, 29.936617, 31.294582>,  <34.518787, 29.885191, 31.333477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749962, 29.936617, 31.294582>,  <35.135254, 30.022327, 31.229757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749962, 29.936617, 31.294582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151072, 0.930819, 0.332795,
		-0.222163, 0.296076, -0.928969,
		-0.963235, -0.214276, 0.162065,
		34.460991, 29.872334, 31.343203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784584, 30.514404, 30.841679>,  <35.135254, 30.022327, 31.229757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784584, 30.514404, 30.841679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522003, 30.378706, 31.111193>,  <34.364456, 30.297287, 31.272902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522003, 30.378706, 31.111193>,  <34.784584, 30.514404, 30.841679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522003, 30.378706, 31.111193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080301, 0.919525, 0.384740,
		-0.750085, 0.198456, -0.630862,
		-0.656448, -0.339246, 0.673786,
		34.325069, 30.276932, 31.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178890, 30.931526, 30.716047>,  <34.784584, 30.514404, 30.841679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178890, 30.931526, 30.716047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145771, 30.778248, 31.084026>,  <34.125900, 30.686281, 31.304813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145771, 30.778248, 31.084026>,  <34.178890, 30.931526, 30.716047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145771, 30.778248, 31.084026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318273, 0.884943, 0.339967,
		-0.944376, -0.264645, -0.195235,
		-0.082802, -0.383195, 0.919949,
		34.120930, 30.663290, 31.360010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578064, 31.199936, 30.990801>,  <34.178890, 30.931526, 30.716047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578064, 31.199936, 30.990801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767826, 31.073566, 31.319468>,  <33.881683, 30.997746, 31.516666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767826, 31.073566, 31.319468>,  <33.578064, 31.199936, 30.990801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767826, 31.073566, 31.319468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373180, 0.773192, 0.512748,
		-0.797295, -0.549878, 0.248907,
		0.474402, -0.315924, 0.821666,
		33.910149, 30.978790, 31.565968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169521, 31.250235, 31.500250>,  <33.578064, 31.199936, 30.990801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169521, 31.250235, 31.500250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522736, 31.265427, 31.687359>,  <33.734665, 31.274542, 31.799625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522736, 31.265427, 31.687359>,  <33.169521, 31.250235, 31.500250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522736, 31.265427, 31.687359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291586, 0.825400, 0.483417,
		-0.367740, -0.563269, 0.739929,
		0.883032, 0.037981, 0.467774,
		33.787643, 31.276821, 31.827690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087364, 31.162830, 32.288055>,  <33.169521, 31.250235, 31.500250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087364, 31.162830, 32.288055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.433796, 31.355988, 32.236328>,  <33.641655, 31.471882, 32.205292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.433796, 31.355988, 32.236328>,  <33.087364, 31.162830, 32.288055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433796, 31.355988, 32.236328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310776, 0.722708, 0.617342,
		0.391572, -0.494476, 0.775993,
		0.866077, 0.482894, -0.129320,
		33.693619, 31.500856, 32.197533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279575, 31.379927, 33.068981>,  <33.087364, 31.162830, 32.288055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279575, 31.379927, 33.068981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499557, 31.597023, 32.815060>,  <33.631546, 31.727282, 32.662704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499557, 31.597023, 32.815060>,  <33.279575, 31.379927, 33.068981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499557, 31.597023, 32.815060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057187, 0.782759, 0.619692,
		0.833235, -0.304500, 0.461519,
		0.549954, 0.542742, -0.634809,
		33.664543, 31.759846, 32.624619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773666, 31.719778, 33.487564>,  <33.279575, 31.379927, 33.068981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773666, 31.719778, 33.487564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.771191, 31.930185, 33.147385>,  <33.769707, 32.056431, 32.943275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.771191, 31.930185, 33.147385>,  <33.773666, 31.719778, 33.487564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771191, 31.930185, 33.147385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079189, 0.847537, 0.524794,
		0.996840, 0.070595, 0.036409,
		-0.006190, 0.526020, -0.850450,
		33.769333, 32.087990, 32.892250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579514, 31.825701, 33.706081>,  <33.773666, 31.719778, 33.487564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579514, 31.825701, 33.706081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850853, 31.720100, 33.980350>,  <35.013657, 31.656740, 34.144913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850853, 31.720100, 33.980350>,  <34.579514, 31.825701, 33.706081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850853, 31.720100, 33.980350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293115, -0.758506, -0.582025,
		0.673743, 0.595796, -0.437147,
		0.678347, -0.264000, 0.685675,
		35.054356, 31.640900, 34.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013809, 31.546621, 33.310658>,  <34.579514, 31.825701, 33.706081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013809, 31.546621, 33.310658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137348, 31.407406, 33.664715>,  <35.211472, 31.323877, 33.877148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137348, 31.407406, 33.664715>,  <35.013809, 31.546621, 33.310658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137348, 31.407406, 33.664715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567075, -0.679754, -0.465146,
		0.763569, 0.645603, -0.012577,
		0.308849, -0.348039, 0.885145,
		35.230003, 31.302994, 33.930260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702496, 31.306969, 33.110405>,  <35.013809, 31.546621, 33.310658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702496, 31.306969, 33.110405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606052, 31.130527, 33.456188>,  <35.548187, 31.024662, 33.663658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606052, 31.130527, 33.456188>,  <35.702496, 31.306969, 33.110405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606052, 31.130527, 33.456188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550620, -0.795673, -0.252432,
		0.799178, 0.415127, 0.434723,
		-0.241106, -0.441105, 0.864462,
		35.533722, 30.998196, 33.715527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348049, 31.039000, 33.448898>,  <35.702496, 31.306969, 33.110405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348049, 31.039000, 33.448898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027843, 30.829636, 33.565662>,  <35.835720, 30.704018, 33.635723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027843, 30.829636, 33.565662>,  <36.348049, 31.039000, 33.448898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027843, 30.829636, 33.565662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446127, -0.845679, -0.292912,
		0.400178, -0.104250, 0.910489,
		-0.800517, -0.523411, 0.291913,
		35.787689, 30.672613, 33.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685806, 30.505415, 33.926819>,  <36.348049, 31.039000, 33.448898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685806, 30.505415, 33.926819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.329639, 30.367300, 33.808201>,  <36.115940, 30.284431, 33.737030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.329639, 30.367300, 33.808201>,  <36.685806, 30.505415, 33.926819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329639, 30.367300, 33.808201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438118, -0.826774, -0.352842,
		-0.123342, -0.444097, 0.887449,
		-0.890415, -0.345287, -0.296543,
		36.062515, 30.263714, 33.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674999, 29.902462, 34.243439>,  <36.685806, 30.505415, 33.926819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674999, 29.902462, 34.243439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427475, 29.917913, 33.929604>,  <36.278961, 29.927185, 33.741302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427475, 29.917913, 33.929604>,  <36.674999, 29.902462, 34.243439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427475, 29.917913, 33.929604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354840, -0.877338, -0.323060,
		-0.700828, -0.478316, 0.529200,
		-0.618812, 0.038628, -0.784589,
		36.241833, 29.929502, 33.694225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540741, 29.242121, 34.202583>,  <36.674999, 29.902462, 34.243439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540741, 29.242121, 34.202583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384510, 29.376125, 33.859604>,  <36.290771, 29.456528, 33.653816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384510, 29.376125, 33.859604>,  <36.540741, 29.242121, 34.202583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384510, 29.376125, 33.859604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230475, -0.866181, -0.443410,
		-0.891253, -0.370806, 0.261097,
		-0.390576, 0.335014, -0.857447,
		36.267338, 29.476629, 33.602371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021355, 28.688028, 33.915054>,  <36.540741, 29.242121, 34.202583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021355, 28.688028, 33.915054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124825, 28.905136, 33.595432>,  <36.186909, 29.035400, 33.403660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124825, 28.905136, 33.595432>,  <36.021355, 28.688028, 33.915054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124825, 28.905136, 33.595432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190477, -0.839629, -0.508667,
		-0.946998, -0.020621, -0.320577,
		0.258677, 0.542769, -0.799055,
		36.202427, 29.067966, 33.355717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764183, 28.379354, 33.278728>,  <36.021355, 28.688028, 33.915054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764183, 28.379354, 33.278728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077271, 28.599783, 33.163021>,  <36.265121, 28.732040, 33.093597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077271, 28.599783, 33.163021>,  <35.764183, 28.379354, 33.278728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077271, 28.599783, 33.163021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255313, -0.708169, -0.658264,
		-0.567602, 0.441379, -0.694991,
		0.782715, 0.551072, -0.289268,
		36.312084, 28.765104, 33.076241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823555, 28.298519, 32.512787>,  <35.764183, 28.379354, 33.278728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823555, 28.298519, 32.512787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180908, 28.418350, 32.646721>,  <36.395321, 28.490250, 32.727081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180908, 28.418350, 32.646721>,  <35.823555, 28.298519, 32.512787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180908, 28.418350, 32.646721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446970, -0.517024, -0.730003,
		-0.045578, 0.801835, -0.595805,
		0.893387, 0.299579, 0.334831,
		36.448925, 28.508224, 32.747169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274452, 28.326368, 31.865456>,  <35.823555, 28.298519, 32.512787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274452, 28.326368, 31.865456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538376, 28.326761, 32.166027>,  <36.696732, 28.326998, 32.346371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538376, 28.326761, 32.166027>,  <36.274452, 28.326368, 31.865456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538376, 28.326761, 32.166027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672053, -0.448109, -0.589528,
		0.336143, 0.893978, -0.296329,
		0.659813, 0.000983, 0.751429,
		36.736320, 28.327057, 32.391457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881565, 28.745724, 31.684488>,  <36.274452, 28.326368, 31.865456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881565, 28.745724, 31.684488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.978012, 28.475506, 31.963202>,  <37.035881, 28.313375, 32.130428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.978012, 28.475506, 31.963202>,  <36.881565, 28.745724, 31.684488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978012, 28.475506, 31.963202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605098, -0.456680, -0.652150,
		0.758762, 0.578865, 0.298656,
		0.241117, -0.675543, 0.696781,
		37.050346, 28.272842, 32.172237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606163, 28.707022, 31.592236>,  <36.881565, 28.745724, 31.684488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606163, 28.707022, 31.592236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508072, 28.376505, 31.795059>,  <37.449219, 28.178196, 31.916754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508072, 28.376505, 31.795059>,  <37.606163, 28.707022, 31.592236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508072, 28.376505, 31.795059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665533, -0.523797, -0.531698,
		0.704932, 0.207076, 0.678373,
		-0.245228, -0.826291, 0.507057,
		37.434505, 28.128618, 31.947176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231606, 28.461163, 31.902262>,  <37.606163, 28.707022, 31.592236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231606, 28.461163, 31.902262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970970, 28.162136, 31.850760>,  <37.814590, 27.982719, 31.819859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970970, 28.162136, 31.850760>,  <38.231606, 28.461163, 31.902262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970970, 28.162136, 31.850760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722393, -0.559714, -0.406041,
		0.231475, -0.357585, 0.904739,
		-0.651588, -0.747566, -0.128757,
		37.775494, 27.937866, 31.812132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880680, 27.946823, 32.205421>,  <38.231606, 28.461163, 31.902262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880680, 27.946823, 32.205421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268597, 28.040136, 32.233952>,  <39.501347, 28.096125, 32.251072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268597, 28.040136, 32.233952>,  <38.880680, 27.946823, 32.205421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268597, 28.040136, 32.233952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207743, 0.636509, 0.742765,
		0.127874, -0.735143, 0.665743,
		0.969789, 0.233283, 0.071328,
		39.559532, 28.110121, 32.255348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021572, 27.884083, 32.907623>,  <38.880680, 27.946823, 32.205421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021572, 27.884083, 32.907623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312538, 28.124073, 32.774414>,  <39.487118, 28.268066, 32.694489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312538, 28.124073, 32.774414>,  <39.021572, 27.884083, 32.907623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312538, 28.124073, 32.774414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194339, 0.645565, 0.738565,
		0.658118, -0.472513, 0.586185,
		0.727402, 0.599981, -0.333030,
		39.530762, 28.304066, 32.674507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271820, 28.094837, 33.537411>,  <39.021572, 27.884083, 32.907623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271820, 28.094837, 33.537411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415112, 28.354259, 33.268768>,  <39.501087, 28.509912, 33.107582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415112, 28.354259, 33.268768>,  <39.271820, 28.094837, 33.537411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415112, 28.354259, 33.268768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055472, 0.732856, 0.678118,
		0.931985, -0.205665, 0.298506,
		0.358227, 0.648555, -0.671602,
		39.522579, 28.548826, 33.067287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762737, 28.590498, 33.884007>,  <39.271820, 28.094837, 33.537411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762737, 28.590498, 33.884007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669941, 28.786585, 33.547943>,  <39.614265, 28.904238, 33.346306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669941, 28.786585, 33.547943>,  <39.762737, 28.590498, 33.884007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669941, 28.786585, 33.547943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105666, 0.845910, 0.522752,
		0.966962, 0.210049, -0.144442,
		-0.231988, 0.490219, -0.840159,
		39.600346, 28.933651, 33.295895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234570, 29.143440, 33.940945>,  <39.762737, 28.590498, 33.884007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234570, 29.143440, 33.940945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919762, 29.238852, 33.713364>,  <39.730877, 29.296099, 33.576817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919762, 29.238852, 33.713364>,  <40.234570, 29.143440, 33.940945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919762, 29.238852, 33.713364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140666, 0.828557, 0.541947,
		0.600674, 0.506556, -0.618540,
		-0.787022, 0.238526, -0.568948,
		39.683655, 29.310410, 33.542679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324860, 29.844612, 33.809467>,  <40.234570, 29.143440, 33.940945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324860, 29.844612, 33.809467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941177, 29.759968, 33.734478>,  <39.710968, 29.709181, 33.689484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941177, 29.759968, 33.734478>,  <40.324860, 29.844612, 33.809467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941177, 29.759968, 33.734478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280856, 0.789106, 0.546289,
		0.032337, 0.576656, -0.816347,
		-0.959205, -0.211610, -0.187475,
		39.653416, 29.696486, 33.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083870, 30.433285, 33.551193>,  <40.324860, 29.844612, 33.809467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083870, 30.433285, 33.551193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790489, 30.217342, 33.716412>,  <39.614460, 30.087778, 33.815544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790489, 30.217342, 33.716412>,  <40.083870, 30.433285, 33.551193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790489, 30.217342, 33.716412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368839, 0.826495, 0.425281,
		-0.570970, 0.159576, -0.805313,
		-0.733451, -0.539854, 0.413046,
		39.570454, 30.055386, 33.840324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526848, 30.787344, 33.438087>,  <40.083870, 30.433285, 33.551193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526848, 30.787344, 33.438087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388145, 30.540600, 33.720715>,  <39.304924, 30.392553, 33.890293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388145, 30.540600, 33.720715>,  <39.526848, 30.787344, 33.438087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388145, 30.540600, 33.720715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439910, 0.772277, 0.458332,
		-0.828394, -0.151895, -0.539158,
		-0.346761, -0.616860, 0.706570,
		39.284119, 30.355541, 33.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931976, 30.958490, 33.510792>,  <39.526848, 30.787344, 33.438087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931976, 30.958490, 33.510792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026203, 30.785406, 33.858875>,  <39.082737, 30.681555, 34.067726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026203, 30.785406, 33.858875>,  <38.931976, 30.958490, 33.510792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026203, 30.785406, 33.858875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447751, 0.746399, 0.492349,
		-0.862571, -0.505619, -0.017921,
		0.235565, -0.432710, 0.870213,
		39.096874, 30.655594, 34.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226330, 30.940769, 33.906521>,  <38.931976, 30.958490, 33.510792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226330, 30.940769, 33.906521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530731, 30.915167, 34.164757>,  <38.713371, 30.899805, 34.319698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530731, 30.915167, 34.164757>,  <38.226330, 30.940769, 33.906521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530731, 30.915167, 34.164757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354506, 0.792381, 0.496445,
		-0.543327, -0.606659, 0.580311,
		0.761000, -0.064008, 0.645586,
		38.759033, 30.895964, 34.358433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967541, 31.106840, 34.487537>,  <38.226330, 30.940769, 33.906521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967541, 31.106840, 34.487537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347942, 31.179249, 34.587791>,  <38.576183, 31.222694, 34.647945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347942, 31.179249, 34.587791>,  <37.967541, 31.106840, 34.487537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347942, 31.179249, 34.587791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299841, 0.737668, 0.604931,
		-0.075381, -0.650444, 0.755804,
		0.951006, 0.181020, 0.250636,
		38.633244, 31.233555, 34.662983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157196, 30.966545, 35.296864>,  <37.967541, 31.106840, 34.487537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157196, 30.966545, 35.296864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413502, 31.229893, 35.138889>,  <38.567284, 31.387901, 35.044106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413502, 31.229893, 35.138889>,  <38.157196, 30.966545, 35.296864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413502, 31.229893, 35.138889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308984, 0.692058, 0.652368,
		0.702823, -0.295978, 0.646867,
		0.640756, 0.658371, -0.394942,
		38.605732, 31.427404, 35.020409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125481, 31.414568, 35.900692>,  <38.157196, 30.966545, 35.296864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125481, 31.414568, 35.900692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360214, 31.587608, 35.626911>,  <38.501057, 31.691433, 35.462643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360214, 31.587608, 35.626911>,  <38.125481, 31.414568, 35.900692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360214, 31.587608, 35.626911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179465, 0.893781, 0.411032,
		0.789566, -0.118372, 0.602140,
		0.586837, 0.432600, -0.684456,
		38.536266, 31.717388, 35.421574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691509, 31.777164, 36.258259>,  <38.125481, 31.414568, 35.900692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691509, 31.777164, 36.258259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633781, 31.966354, 35.910587>,  <38.599144, 32.079868, 35.701984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633781, 31.966354, 35.910587>,  <38.691509, 31.777164, 36.258259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633781, 31.966354, 35.910587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200415, 0.846196, 0.493746,
		0.969023, 0.245452, -0.027329,
		-0.144317, 0.472974, -0.869177,
		38.590485, 32.108246, 35.649834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.658936, 30.482944, 30.645874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.359303, 30.516911, 30.383068>,  <42.179523, 30.537291, 30.225384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.359303, 30.516911, 30.383068>,  <42.658936, 30.482944, 30.645874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359303, 30.516911, 30.383068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220396, -0.903319, -0.368023,
		-0.624746, -0.420482, 0.657942,
		-0.749079, 0.084913, -0.657017,
		42.134579, 30.542385, 30.185963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426151, 29.765049, 30.559464>,  <42.658936, 30.482944, 30.645874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426151, 29.765049, 30.559464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277840, 29.962774, 30.244967>,  <42.188854, 30.081409, 30.056269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277840, 29.962774, 30.244967>,  <42.426151, 29.765049, 30.559464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277840, 29.962774, 30.244967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240688, -0.766517, -0.595416,
		-0.896992, -0.410005, 0.165231,
		-0.370777, 0.494314, -0.786243,
		42.166607, 30.111069, 30.009094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079220, 29.195419, 30.367809>,  <42.426151, 29.765049, 30.559464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079220, 29.195419, 30.367809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097221, 29.459837, 30.068213>,  <42.108025, 29.618488, 29.888454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097221, 29.459837, 30.068213>,  <42.079220, 29.195419, 30.367809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097221, 29.459837, 30.068213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204904, -0.739921, -0.640727,
		-0.977747, -0.124635, -0.168752,
		0.045006, 0.661046, -0.748994,
		42.110722, 29.658152, 29.843513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728340, 28.901392, 29.883896>,  <42.079220, 29.195419, 30.367809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728340, 28.901392, 29.883896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.935833, 29.173468, 29.676722>,  <42.060329, 29.336714, 29.552418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.935833, 29.173468, 29.676722>,  <41.728340, 28.901392, 29.883896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935833, 29.173468, 29.676722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039016, -0.586354, -0.809115,
		-0.854045, 0.439923, -0.277624,
		0.518734, 0.680189, -0.517936,
		42.091454, 29.377523, 29.521341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354435, 28.917870, 29.369217>,  <41.728340, 28.901392, 29.883896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354435, 28.917870, 29.369217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724789, 29.048489, 29.293215>,  <41.947002, 29.126860, 29.247614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724789, 29.048489, 29.293215>,  <41.354435, 28.917870, 29.369217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724789, 29.048489, 29.293215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007118, -0.517906, -0.855408,
		-0.377735, 0.790658, -0.481847,
		0.925887, 0.326547, -0.190004,
		42.002556, 29.146452, 29.236214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396027, 28.969143, 28.692678>,  <41.354435, 28.917870, 29.369217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396027, 28.969143, 28.692678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783009, 28.949471, 28.791973>,  <42.015198, 28.937666, 28.851549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783009, 28.949471, 28.791973>,  <41.396027, 28.969143, 28.692678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783009, 28.949471, 28.791973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146270, -0.691794, -0.707125,
		0.206505, 0.720418, -0.662083,
		0.967451, -0.049182, 0.248235,
		42.073242, 28.934715, 28.866444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740124, 29.013309, 28.084688>,  <41.396027, 28.969143, 28.692678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740124, 29.013309, 28.084688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982281, 28.839548, 28.351461>,  <42.127575, 28.735292, 28.511524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982281, 28.839548, 28.351461>,  <41.740124, 29.013309, 28.084688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982281, 28.839548, 28.351461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236595, -0.701835, -0.671901,
		0.759951, 0.564555, -0.322107,
		0.605390, -0.434402, 0.666931,
		42.163898, 28.709227, 28.551540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261311, 28.977831, 27.693464>,  <41.740124, 29.013309, 28.084688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261311, 28.977831, 27.693464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321529, 28.712275, 27.986471>,  <42.357662, 28.552940, 28.162275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321529, 28.712275, 27.986471>,  <42.261311, 28.977831, 27.693464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321529, 28.712275, 27.986471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288905, -0.679073, -0.674829,
		0.945447, 0.313223, 0.089568,
		0.150549, -0.663891, 0.732519,
		42.366695, 28.513107, 28.206226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826172, 28.556528, 27.427395>,  <42.261311, 28.977831, 27.693464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826172, 28.556528, 27.427395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667435, 28.335848, 27.720827>,  <42.572193, 28.203440, 27.896885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667435, 28.335848, 27.720827>,  <42.826172, 28.556528, 27.427395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667435, 28.335848, 27.720827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224349, -0.833266, -0.505308,
		0.890045, -0.035952, 0.454453,
		-0.396846, -0.551703, 0.733578,
		42.548382, 28.170338, 27.940901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410347, 28.119801, 27.645483>,  <42.826172, 28.556528, 27.427395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410347, 28.119801, 27.645483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.058544, 27.957136, 27.744347>,  <42.847462, 27.859537, 27.803665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.058544, 27.957136, 27.744347>,  <43.410347, 28.119801, 27.645483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058544, 27.957136, 27.744347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257515, -0.843468, -0.471432,
		0.400186, -0.350981, 0.846560,
		-0.879510, -0.406662, 0.247161,
		42.794693, 27.835138, 27.818495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517105, 27.488649, 27.846296>,  <43.410347, 28.119801, 27.645483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517105, 27.488649, 27.846296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128410, 27.457129, 27.757290>,  <42.895191, 27.438217, 27.703886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128410, 27.457129, 27.757290>,  <43.517105, 27.488649, 27.846296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128410, 27.457129, 27.757290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194008, -0.803601, -0.562661,
		-0.134475, -0.589929, 0.796179,
		-0.971739, -0.078801, -0.222515,
		42.836887, 27.433489, 27.690535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469696, 26.789532, 27.774906>,  <43.517105, 27.488649, 27.846296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469696, 26.789532, 27.774906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142334, 26.939951, 27.601105>,  <42.945915, 27.030203, 27.496824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142334, 26.939951, 27.601105>,  <43.469696, 26.789532, 27.774906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142334, 26.939951, 27.601105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171408, -0.561959, -0.809211,
		-0.548481, -0.736741, 0.395452,
		-0.818406, 0.376053, -0.434507,
		42.896812, 27.052765, 27.470753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365646, 26.267097, 27.389713>,  <43.469696, 26.789532, 27.774906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365646, 26.267097, 27.389713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193764, 26.584848, 27.217983>,  <43.090633, 26.775499, 27.114944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193764, 26.584848, 27.217983>,  <43.365646, 26.267097, 27.389713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193764, 26.584848, 27.217983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118405, -0.421784, -0.898932,
		-0.895174, -0.437108, 0.087183,
		-0.429703, 0.794377, -0.429325,
		43.064854, 26.823162, 27.089186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131260, 25.682440, 27.747948>,  <43.365646, 26.267097, 27.389713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131260, 25.682440, 27.747948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.783375, 25.491669, 27.798773>,  <42.574646, 25.377207, 27.829268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.783375, 25.491669, 27.798773>,  <43.131260, 25.682440, 27.747948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783375, 25.491669, 27.798773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276608, 0.684193, 0.674810,
		-0.408770, 0.551743, -0.726971,
		-0.869710, -0.476928, 0.127061,
		42.522461, 25.348591, 27.836891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508614, 26.166260, 27.927711>,  <43.131260, 25.682440, 27.747948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508614, 26.166260, 27.927711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.435326, 25.804647, 28.082193>,  <42.391354, 25.587679, 28.174883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.435326, 25.804647, 28.082193>,  <42.508614, 26.166260, 27.927711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435326, 25.804647, 28.082193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426085, 0.427065, 0.797538,
		-0.885935, -0.018430, -0.463443,
		-0.183222, -0.904033, 0.386204,
		42.380360, 25.533438, 28.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755981, 26.009247, 27.993338>,  <42.508614, 26.166260, 27.927711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755981, 26.009247, 27.993338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959991, 25.795013, 28.262566>,  <42.082397, 25.666473, 28.424103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959991, 25.795013, 28.262566>,  <41.755981, 26.009247, 27.993338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959991, 25.795013, 28.262566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575921, 0.368577, 0.729703,
		-0.638894, -0.759803, -0.120469,
		0.510029, -0.535584, 0.673068,
		42.112999, 25.634338, 28.464485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212959, 25.840458, 28.441710>,  <41.755981, 26.009247, 27.993338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212959, 25.840458, 28.441710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550663, 25.768883, 28.643780>,  <41.753284, 25.725939, 28.765022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550663, 25.768883, 28.643780>,  <41.212959, 25.840458, 28.441710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550663, 25.768883, 28.643780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468299, 0.212053, 0.857747,
		-0.260607, -0.960737, 0.095233,
		0.844263, -0.178937, 0.505175,
		41.803944, 25.715202, 28.795332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968475, 25.522024, 29.067575>,  <41.212959, 25.840458, 28.441710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968475, 25.522024, 29.067575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.339645, 25.635023, 29.164865>,  <41.562347, 25.702822, 29.223240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.339645, 25.635023, 29.164865>,  <40.968475, 25.522024, 29.067575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339645, 25.635023, 29.164865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331540, 0.327124, 0.884913,
		0.170419, -0.901769, 0.397203,
		0.927922, 0.282495, 0.243224,
		41.618023, 25.719772, 29.237833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196892, 25.347692, 29.664503>,  <40.968475, 25.522024, 29.067575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196892, 25.347692, 29.664503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.498974, 25.609709, 29.674238>,  <41.680222, 25.766918, 29.680079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.498974, 25.609709, 29.674238>,  <41.196892, 25.347692, 29.664503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498974, 25.609709, 29.674238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328410, 0.345972, 0.878892,
		0.567289, -0.671733, 0.476400,
		0.755202, 0.655040, 0.024338,
		41.725533, 25.806221, 29.681540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433208, 25.293667, 30.367586>,  <41.196892, 25.347692, 29.664503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433208, 25.293667, 30.367586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536602, 25.648090, 30.213661>,  <41.598640, 25.860744, 30.121305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536602, 25.648090, 30.213661>,  <41.433208, 25.293667, 30.367586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536602, 25.648090, 30.213661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316925, 0.454088, 0.832684,
		0.912547, -0.093282, 0.398191,
		0.258488, 0.886060, -0.384813,
		41.614147, 25.913908, 30.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579498, 25.757727, 30.955294>,  <41.433208, 25.293667, 30.367586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579498, 25.757727, 30.955294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.559631, 26.011536, 30.646772>,  <41.547710, 26.163822, 30.461658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.559631, 26.011536, 30.646772>,  <41.579498, 25.757727, 30.955294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559631, 26.011536, 30.646772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365900, 0.707009, 0.605191,
		0.929328, 0.312278, 0.197057,
		-0.049667, 0.634524, -0.771306,
		41.544731, 26.201893, 30.415380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878506, 26.400360, 31.276144>,  <41.579498, 25.757727, 30.955294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878506, 26.400360, 31.276144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670876, 26.518904, 30.955463>,  <41.546295, 26.590031, 30.763054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670876, 26.518904, 30.955463>,  <41.878506, 26.400360, 31.276144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670876, 26.518904, 30.955463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374242, 0.764471, 0.524907,
		0.768441, 0.572498, -0.285909,
		-0.519077, 0.296361, -0.801704,
		41.515152, 26.607813, 30.714952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866726, 27.140862, 31.321157>,  <41.878506, 26.400360, 31.276144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866726, 27.140862, 31.321157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561928, 27.056812, 31.076141>,  <41.379047, 27.006384, 30.929132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561928, 27.056812, 31.076141>,  <41.866726, 27.140862, 31.321157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561928, 27.056812, 31.076141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606437, 0.563311, 0.561173,
		0.227135, 0.799080, -0.556668,
		-0.761999, -0.210122, -0.612540,
		41.333328, 26.993776, 30.892380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552765, 27.787390, 31.320312>,  <41.866726, 27.140862, 31.321157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552765, 27.787390, 31.320312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262478, 27.543192, 31.193420>,  <41.088306, 27.396673, 31.117285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262478, 27.543192, 31.193420>,  <41.552765, 27.787390, 31.320312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262478, 27.543192, 31.193420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672766, 0.533231, 0.512885,
		-0.143958, 0.585628, -0.797694,
		-0.725715, -0.610495, -0.317228,
		41.044762, 27.360043, 31.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955353, 28.203207, 31.179871>,  <41.552765, 27.787390, 31.320312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955353, 28.203207, 31.179871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.798435, 27.838804, 31.230730>,  <40.704285, 27.620163, 31.261246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.798435, 27.838804, 31.230730>,  <40.955353, 28.203207, 31.179871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798435, 27.838804, 31.230730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658637, 0.374693, 0.652535,
		-0.642107, 0.172243, -0.747015,
		-0.392296, -0.911009, 0.127147,
		40.680748, 27.565502, 31.268875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371857, 28.221054, 30.898720>,  <40.955353, 28.203207, 31.179871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371857, 28.221054, 30.898720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343956, 27.914488, 31.154140>,  <40.327217, 27.730549, 31.307392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343956, 27.914488, 31.154140>,  <40.371857, 28.221054, 30.898720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343956, 27.914488, 31.154140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796502, 0.428176, 0.426908,
		-0.600599, -0.478828, -0.640316,
		-0.069752, -0.766414, 0.638550,
		40.323029, 27.684565, 31.345705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557785, 28.040600, 31.045010>,  <40.371857, 28.221054, 30.898720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557785, 28.040600, 31.045010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774635, 27.890493, 31.345749>,  <39.904747, 27.800430, 31.526192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774635, 27.890493, 31.345749>,  <39.557785, 28.040600, 31.045010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774635, 27.890493, 31.345749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708984, 0.275995, 0.648975,
		-0.451045, -0.884874, -0.116434,
		0.542126, -0.375267, 0.751847,
		39.937275, 27.777914, 31.571302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135071, 27.761866, 31.512463>,  <39.557785, 28.040600, 31.045010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135071, 27.761866, 31.512463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.451435, 27.837297, 31.745325>,  <39.641254, 27.882557, 31.885042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.451435, 27.837297, 31.745325>,  <39.135071, 27.761866, 31.512463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451435, 27.837297, 31.745325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591543, 0.479161, 0.648445,
		-0.156664, -0.857230, 0.490524,
		0.790906, 0.188578, 0.582155,
		39.688705, 27.893871, 31.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676620, 27.277319, 31.814535>,  <39.135071, 27.761866, 31.512463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676620, 27.277319, 31.814535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288818, 27.296127, 31.718325>,  <38.056137, 27.307413, 31.660599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288818, 27.296127, 31.718325>,  <38.676620, 27.277319, 31.814535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288818, 27.296127, 31.718325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203445, -0.392819, -0.896830,
		-0.136654, -0.918413, 0.371272,
		-0.969503, 0.047022, -0.240527,
		37.997967, 27.310234, 31.646166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641083, 26.638557, 31.495550>,  <38.676620, 27.277319, 31.814535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641083, 26.638557, 31.495550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326542, 26.858568, 31.383038>,  <38.137817, 26.990576, 31.315529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326542, 26.858568, 31.383038>,  <38.641083, 26.638557, 31.495550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326542, 26.858568, 31.383038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042681, -0.502594, -0.863469,
		-0.616305, -0.666983, 0.418690,
		-0.786350, 0.550030, -0.281283,
		38.090637, 27.023577, 31.298653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155441, 26.203796, 31.388519>,  <38.641083, 26.638557, 31.495550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155441, 26.203796, 31.388519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046261, 26.524269, 31.175501>,  <37.980751, 26.716553, 31.047689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046261, 26.524269, 31.175501>,  <38.155441, 26.203796, 31.388519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046261, 26.524269, 31.175501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019048, -0.557959, -0.829650,
		-0.961838, -0.216312, 0.167558,
		-0.272954, 0.801180, -0.532546,
		37.964375, 26.764624, 31.015738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785870, 25.906523, 30.977962>,  <38.155441, 26.203796, 31.388519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785870, 25.906523, 30.977962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889244, 26.250740, 30.802383>,  <37.951267, 26.457270, 30.697035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889244, 26.250740, 30.802383>,  <37.785870, 25.906523, 30.977962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889244, 26.250740, 30.802383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064231, -0.468686, -0.881026,
		-0.963891, 0.199493, -0.176398,
		0.258434, 0.860544, -0.438949,
		37.966774, 26.508904, 30.670698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472595, 25.868477, 30.464861>,  <37.785870, 25.906523, 30.977962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472595, 25.868477, 30.464861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734039, 26.157623, 30.375185>,  <37.890907, 26.331110, 30.321379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734039, 26.157623, 30.375185>,  <37.472595, 25.868477, 30.464861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734039, 26.157623, 30.375185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028047, -0.319155, -0.947287,
		-0.756312, 0.612869, -0.228877,
		0.653610, 0.722864, -0.224192,
		37.930122, 26.374483, 30.307928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228455, 26.009508, 29.817999>,  <37.472595, 25.868477, 30.464861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228455, 26.009508, 29.817999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 26.147596, 29.850723>,  <37.826824, 26.230450, 29.870358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 26.147596, 29.850723>,  <37.228455, 26.009508, 29.817999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602436, 26.147596, 29.850723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174303, -0.246118, -0.953438,
		-0.309011, 0.905676, -0.290281,
		0.934949, 0.345220, 0.081809,
		37.882919, 26.251162, 29.875265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493813, 26.075132, 29.045738>,  <37.228455, 26.009508, 29.817999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493813, 26.075132, 29.045738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.840702, 26.097574, 29.243639>,  <38.048836, 26.111038, 29.362379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.840702, 26.097574, 29.243639>,  <37.493813, 26.075132, 29.045738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840702, 26.097574, 29.243639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485220, -0.318218, -0.814432,
		0.111746, 0.946356, -0.303189,
		0.867222, 0.056104, 0.494750,
		38.100868, 26.114405, 29.392065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440544, 26.785109, 28.704647>,  <37.493813, 26.075132, 29.045738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440544, 26.785109, 28.704647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256321, 27.102219, 28.544950>,  <37.145786, 27.292484, 28.449133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256321, 27.102219, 28.544950>,  <37.440544, 26.785109, 28.704647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256321, 27.102219, 28.544950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602298, 0.051280, 0.796623,
		0.652016, 0.607354, 0.453869,
		-0.460558, 0.792775, -0.399243,
		37.118153, 27.340052, 28.425179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171589, 27.078556, 29.304216>,  <37.440544, 26.785109, 28.704647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171589, 27.078556, 29.304216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970295, 27.252556, 29.005545>,  <36.849518, 27.356956, 28.826342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970295, 27.252556, 29.005545>,  <37.171589, 27.078556, 29.304216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970295, 27.252556, 29.005545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767484, 0.172120, 0.617530,
		0.397143, 0.883827, 0.247238,
		-0.503235, 0.434999, -0.746680,
		36.819324, 27.383055, 28.781540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956520, 27.669460, 29.595961>,  <37.171589, 27.078556, 29.304216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956520, 27.669460, 29.595961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707603, 27.606770, 29.289188>,  <36.558254, 27.569155, 29.105125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707603, 27.606770, 29.289188>,  <36.956520, 27.669460, 29.595961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707603, 27.606770, 29.289188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768589, 0.308058, 0.560688,
		0.148386, 0.938370, -0.312160,
		-0.622296, -0.156725, -0.766932,
		36.520916, 27.559752, 29.059109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461182, 28.287306, 29.527367>,  <36.956520, 27.669460, 29.595961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461182, 28.287306, 29.527367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303120, 27.973154, 29.336775>,  <36.208282, 27.784664, 29.222420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303120, 27.973154, 29.336775>,  <36.461182, 28.287306, 29.527367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303120, 27.973154, 29.336775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856987, 0.128392, 0.499089,
		-0.330797, 0.605555, -0.723793,
		-0.395155, -0.785378, -0.476480,
		36.184574, 27.737541, 29.193830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855156, 28.569960, 29.285534>,  <36.461182, 28.287306, 29.527367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855156, 28.569960, 29.285534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804180, 28.174141, 29.258520>,  <35.773594, 27.936649, 29.242311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804180, 28.174141, 29.258520>,  <35.855156, 28.569960, 29.285534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804180, 28.174141, 29.258520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920787, 0.092726, 0.378885,
		-0.368662, 0.110468, -0.922976,
		-0.127439, -0.989545, -0.067533,
		35.765949, 27.877277, 29.238260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216450, 28.405128, 28.951975>,  <35.855156, 28.569960, 29.285534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216450, 28.405128, 28.951975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337452, 28.092493, 29.170189>,  <35.410053, 27.904911, 29.301117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337452, 28.092493, 29.170189>,  <35.216450, 28.405128, 28.951975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337452, 28.092493, 29.170189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762883, 0.144576, 0.630164,
		-0.571402, -0.606806, -0.552527,
		0.302505, -0.781591, 0.545533,
		35.428204, 27.858015, 29.333849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611759, 28.021158, 29.153917>,  <35.216450, 28.405128, 28.951975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611759, 28.021158, 29.153917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.901470, 27.926630, 29.413017>,  <35.075294, 27.869913, 29.568478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.901470, 27.926630, 29.413017>,  <34.611759, 28.021158, 29.153917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901470, 27.926630, 29.413017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610924, 0.215616, 0.761762,
		-0.319684, -0.947451, 0.011792,
		0.724274, -0.236319, 0.647750,
		35.118752, 27.855734, 29.607342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.069271, 27.628963, 24.735115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.191372, 27.561697, 25.110037>,  <42.264633, 27.521338, 25.334990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.191372, 27.561697, 25.110037>,  <42.069271, 27.628963, 24.735115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191372, 27.561697, 25.110037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168740, 0.959155, 0.227041,
		-0.937203, -0.227465, 0.264407,
		0.305251, -0.168168, 0.937305,
		42.282948, 27.511248, 25.391228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464478, 27.830715, 25.177458>,  <42.069271, 27.628963, 24.735115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464478, 27.830715, 25.177458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794922, 27.844973, 25.402411>,  <41.993187, 27.853527, 25.537382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794922, 27.844973, 25.402411>,  <41.464478, 27.830715, 25.177458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794922, 27.844973, 25.402411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269689, 0.901289, 0.339035,
		-0.494783, -0.431748, 0.754177,
		0.826110, 0.035644, 0.562381,
		42.042755, 27.855665, 25.571125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300415, 28.186638, 25.768351>,  <41.464478, 27.830715, 25.177458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300415, 28.186638, 25.768351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.695770, 28.231596, 25.809261>,  <41.932983, 28.258570, 25.833807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.695770, 28.231596, 25.809261>,  <41.300415, 28.186638, 25.768351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695770, 28.231596, 25.809261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149087, 0.847490, 0.509444,
		-0.029419, -0.518775, 0.854404,
		0.988387, 0.112393, 0.102275,
		41.992287, 28.265314, 25.839943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411945, 28.313297, 26.463127>,  <41.300415, 28.186638, 25.768351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411945, 28.313297, 26.463127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712944, 28.458399, 26.243250>,  <41.893543, 28.545460, 26.111324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712944, 28.458399, 26.243250>,  <41.411945, 28.313297, 26.463127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712944, 28.458399, 26.243250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216435, 0.924490, 0.313807,
		0.622018, -0.117166, 0.774187,
		0.752495, 0.362754, -0.549691,
		41.938694, 28.567225, 26.078342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744564, 28.749628, 26.919199>,  <41.411945, 28.313297, 26.463127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744564, 28.749628, 26.919199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844971, 28.867064, 26.550243>,  <41.905212, 28.937525, 26.328871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844971, 28.867064, 26.550243>,  <41.744564, 28.749628, 26.919199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844971, 28.867064, 26.550243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210115, 0.946701, 0.244150,
		0.944901, 0.132518, 0.299333,
		0.251024, 0.293592, -0.922383,
		41.920273, 28.955141, 26.273527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136208, 29.332304, 27.093493>,  <41.744564, 28.749628, 26.919199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136208, 29.332304, 27.093493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.040409, 29.370644, 26.707031>,  <41.982929, 29.393648, 26.475155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.040409, 29.370644, 26.707031>,  <42.136208, 29.332304, 27.093493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040409, 29.370644, 26.707031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115678, 0.985210, 0.126414,
		0.963981, 0.142039, -0.224868,
		-0.239498, 0.095849, -0.966154,
		41.968559, 29.399399, 26.417185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302105, 29.965544, 27.050875>,  <42.136208, 29.332304, 27.093493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302105, 29.965544, 27.050875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084618, 29.882587, 26.725580>,  <41.954124, 29.832813, 26.530403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084618, 29.882587, 26.725580>,  <42.302105, 29.965544, 27.050875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084618, 29.882587, 26.725580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478726, 0.872527, 0.097559,
		0.689340, 0.442363, -0.573695,
		-0.543721, -0.207392, -0.813238,
		41.921501, 29.820370, 26.481609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412975, 30.612440, 26.654188>,  <42.302105, 29.965544, 27.050875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412975, 30.612440, 26.654188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.075047, 30.433474, 26.536825>,  <41.872288, 30.326094, 26.466408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.075047, 30.433474, 26.536825>,  <42.412975, 30.612440, 26.654188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075047, 30.433474, 26.536825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479396, 0.876507, 0.043761,
		0.237595, 0.177629, -0.954985,
		-0.844824, -0.447418, -0.293409,
		41.821598, 30.299248, 26.448803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094543, 31.028198, 26.072609>,  <42.412975, 30.612440, 26.654188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094543, 31.028198, 26.072609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799789, 30.812281, 26.235399>,  <41.622936, 30.682730, 26.333073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799789, 30.812281, 26.235399>,  <42.094543, 31.028198, 26.072609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799789, 30.812281, 26.235399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560211, 0.824544, 0.079307,
		-0.378379, -0.169552, -0.909990,
		-0.736880, -0.539795, 0.406975,
		41.578724, 30.650343, 26.357492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446651, 31.293873, 25.722281>,  <42.094543, 31.028198, 26.072609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446651, 31.293873, 25.722281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352680, 31.118254, 26.069162>,  <41.296299, 31.012882, 26.277292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352680, 31.118254, 26.069162>,  <41.446651, 31.293873, 25.722281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352680, 31.118254, 26.069162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568328, 0.785826, 0.243886,
		-0.788551, -0.435562, -0.434134,
		-0.234926, -0.439047, 0.867207,
		41.282204, 30.986540, 26.329325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715939, 31.345924, 25.727371>,  <41.446651, 31.293873, 25.722281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715939, 31.345924, 25.727371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858803, 31.308393, 26.099098>,  <40.944519, 31.285875, 26.322134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858803, 31.308393, 26.099098>,  <40.715939, 31.345924, 25.727371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858803, 31.308393, 26.099098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556945, 0.777328, 0.292529,
		-0.749833, -0.622059, 0.225372,
		0.357158, -0.093828, 0.929319,
		40.965950, 31.280245, 26.377893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103130, 31.404655, 26.184839>,  <40.715939, 31.345924, 25.727371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103130, 31.404655, 26.184839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397049, 31.456295, 26.451193>,  <40.573402, 31.487278, 26.611006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397049, 31.456295, 26.451193>,  <40.103130, 31.404655, 26.184839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397049, 31.456295, 26.451193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456602, 0.820113, 0.344861,
		-0.501580, -0.557448, 0.661566,
		0.734801, 0.129097, 0.665884,
		40.617489, 31.495024, 26.650959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378376, 31.550791, 26.322660>,  <40.103130, 31.404655, 26.184839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378376, 31.550791, 26.322660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.045582, 31.626225, 26.113956>,  <38.845905, 31.671484, 25.988733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.045582, 31.626225, 26.113956>,  <39.378376, 31.550791, 26.322660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045582, 31.626225, 26.113956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126559, -0.851148, -0.509441,
		-0.540168, -0.489882, 0.684277,
		-0.831987, 0.188583, -0.521762,
		38.795986, 31.682800, 25.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088451, 30.887403, 26.273445>,  <39.378376, 31.550791, 26.322660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088451, 30.887403, 26.273445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904865, 31.118536, 26.003494>,  <38.794712, 31.257215, 25.841524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904865, 31.118536, 26.003494>,  <39.088451, 30.887403, 26.273445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904865, 31.118536, 26.003494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108304, -0.717558, -0.688027,
		-0.881829, -0.388872, 0.266752,
		-0.458964, 0.577832, -0.674879,
		38.767178, 31.291885, 25.801031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565029, 30.559198, 26.049799>,  <39.088451, 30.887403, 26.273445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565029, 30.559198, 26.049799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657948, 30.827185, 25.767754>,  <38.713699, 30.987976, 25.598526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657948, 30.827185, 25.767754>,  <38.565029, 30.559198, 26.049799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657948, 30.827185, 25.767754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294200, -0.739384, -0.605605,
		-0.927085, -0.066766, -0.368858,
		0.232294, 0.669965, -0.705114,
		38.727634, 31.028173, 25.556219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166832, 30.388885, 25.404169>,  <38.565029, 30.559198, 26.049799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166832, 30.388885, 25.404169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502975, 30.587765, 25.317833>,  <38.704662, 30.707092, 25.266031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502975, 30.587765, 25.317833>,  <38.166832, 30.388885, 25.404169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502975, 30.587765, 25.317833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322832, -0.778999, -0.537531,
		-0.435398, 0.382040, -0.815152,
		0.840362, 0.497197, -0.215840,
		38.755085, 30.736923, 25.253080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233360, 30.337492, 24.667299>,  <38.166832, 30.388885, 25.404169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233360, 30.337492, 24.667299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601051, 30.455082, 24.772060>,  <38.821667, 30.525635, 24.834917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601051, 30.455082, 24.772060>,  <38.233360, 30.337492, 24.667299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601051, 30.455082, 24.772060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393527, -0.706765, -0.587894,
		0.012281, 0.643477, -0.765367,
		0.919231, 0.293973, 0.261905,
		38.876820, 30.543274, 24.850632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539951, 30.311819, 24.065025>,  <38.233360, 30.337492, 24.667299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539951, 30.311819, 24.065025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.814713, 30.306896, 24.355684>,  <38.979568, 30.303944, 24.530079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.814713, 30.306896, 24.355684>,  <38.539951, 30.311819, 24.065025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814713, 30.306896, 24.355684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487382, -0.733885, -0.473151,
		0.539097, 0.679163, -0.498109,
		0.686901, -0.012305, 0.726646,
		39.020782, 30.303205, 24.573679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174633, 30.140007, 23.746872>,  <38.539951, 30.311819, 24.065025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174633, 30.140007, 23.746872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234348, 30.038761, 24.129211>,  <39.270180, 29.978014, 24.358616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234348, 30.038761, 24.129211>,  <39.174633, 30.140007, 23.746872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234348, 30.038761, 24.129211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467503, -0.833741, -0.293798,
		0.871294, 0.490723, -0.006139,
		0.149292, -0.253114, 0.955848,
		39.279137, 29.962828, 24.415966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839256, 29.862776, 23.730194>,  <39.174633, 30.140007, 23.746872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839256, 29.862776, 23.730194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646374, 29.742102, 24.059185>,  <39.530643, 29.669697, 24.256580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646374, 29.742102, 24.059185>,  <39.839256, 29.862776, 23.730194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646374, 29.742102, 24.059185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371254, -0.920736, -0.120067,
		0.793506, 0.247451, 0.555982,
		-0.482202, -0.301684, 0.822477,
		39.501713, 29.651596, 24.305927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286034, 29.526327, 24.111486>,  <39.839256, 29.862776, 23.730194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286034, 29.526327, 24.111486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959034, 29.375067, 24.285246>,  <39.762836, 29.284311, 24.389502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959034, 29.375067, 24.285246>,  <40.286034, 29.526327, 24.111486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959034, 29.375067, 24.285246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454001, -0.887214, 0.082058,
		0.354374, 0.264300, 0.896975,
		-0.817497, -0.378149, 0.434398,
		39.713783, 29.261621, 24.415565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500706, 29.119499, 24.738865>,  <40.286034, 29.526327, 24.111486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500706, 29.119499, 24.738865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.125900, 29.004255, 24.659868>,  <39.901016, 28.935110, 24.612471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.125900, 29.004255, 24.659868>,  <40.500706, 29.119499, 24.738865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125900, 29.004255, 24.659868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252184, -0.949198, 0.188220,
		-0.241686, 0.126560, 0.962066,
		-0.937012, -0.288107, -0.197491,
		39.844795, 28.917824, 24.600620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367500, 28.677517, 25.199221>,  <40.500706, 29.119499, 24.738865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367500, 28.677517, 25.199221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080360, 28.592430, 24.934059>,  <39.908077, 28.541378, 24.774961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080360, 28.592430, 24.934059>,  <40.367500, 28.677517, 25.199221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080360, 28.592430, 24.934059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217665, -0.973019, 0.076521,
		-0.661297, -0.089360, 0.744783,
		-0.717850, -0.212716, -0.662905,
		39.865005, 28.528616, 24.735188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948158, 28.158800, 25.578453>,  <40.367500, 28.677517, 25.199221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948158, 28.158800, 25.578453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907578, 28.133169, 25.181343>,  <39.883228, 28.117790, 24.943077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907578, 28.133169, 25.181343>,  <39.948158, 28.158800, 25.578453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907578, 28.133169, 25.181343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320087, -0.946962, 0.028414,
		-0.941941, -0.314892, 0.116578,
		-0.101448, -0.064079, -0.992775,
		39.877144, 28.113945, 24.883511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019714, 27.955347, 26.370373>,  <39.948158, 28.158800, 25.578453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019714, 27.955347, 26.370373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750828, 28.036541, 26.085579>,  <39.589497, 28.085257, 25.914701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750828, 28.036541, 26.085579>,  <40.019714, 27.955347, 26.370373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750828, 28.036541, 26.085579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740185, -0.163572, 0.652204,
		0.015927, 0.965423, 0.260201,
		-0.672215, 0.202985, -0.711986,
		39.549164, 28.097437, 25.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597160, 28.529819, 26.535387>,  <40.019714, 27.955347, 26.370373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597160, 28.529819, 26.535387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368286, 28.307098, 26.294529>,  <39.230961, 28.173466, 26.150015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368286, 28.307098, 26.294529>,  <39.597160, 28.529819, 26.535387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368286, 28.307098, 26.294529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663771, -0.116810, 0.738758,
		-0.481679, 0.822391, -0.302752,
		-0.572183, -0.556802, -0.602144,
		39.196632, 28.140059, 26.113886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869991, 28.822279, 26.596685>,  <39.597160, 28.529819, 26.535387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869991, 28.822279, 26.596685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829647, 28.455839, 26.441465>,  <38.805439, 28.235975, 26.348333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829647, 28.455839, 26.441465>,  <38.869991, 28.822279, 26.596685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829647, 28.455839, 26.441465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855680, -0.119112, 0.503611,
		-0.507581, 0.382845, -0.771875,
		-0.100865, -0.916101, -0.388052,
		38.799389, 28.181009, 26.325050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167206, 28.805862, 26.297932>,  <38.869991, 28.822279, 26.596685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167206, 28.805862, 26.297932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308548, 28.443546, 26.391476>,  <38.393353, 28.226156, 26.447601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308548, 28.443546, 26.391476>,  <38.167206, 28.805862, 26.297932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308548, 28.443546, 26.391476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821849, -0.181151, 0.540137,
		-0.446886, -0.383056, -0.808431,
		0.353351, -0.905788, 0.233860,
		38.414555, 28.171810, 26.461634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520630, 28.519152, 26.489594>,  <38.167206, 28.805862, 26.297932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520630, 28.519152, 26.489594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.785671, 28.242479, 26.604511>,  <37.944695, 28.076475, 26.673462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.785671, 28.242479, 26.604511>,  <37.520630, 28.519152, 26.489594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785671, 28.242479, 26.604511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658945, -0.356025, 0.662599,
		-0.356025, -0.628348, -0.691683,
		-0.662599, 0.691683, -0.287293,
		37.984451, 28.034975, 26.690699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199852, 27.887409, 26.389339>,  <37.520630, 28.519152, 26.489594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199852, 27.887409, 26.389339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481636, 27.856768, 26.671577>,  <37.650707, 27.838383, 26.840919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481636, 27.856768, 26.671577>,  <37.199852, 27.887409, 26.389339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481636, 27.856768, 26.671577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670235, -0.398854, 0.625860,
		0.233485, -0.913809, -0.332322,
		0.704464, -0.076605, 0.705593,
		37.692974, 27.833786, 26.883255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039753, 27.327435, 26.806705>,  <37.199852, 27.887409, 26.389339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039753, 27.327435, 26.806705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296253, 27.527302, 27.039646>,  <37.450153, 27.647223, 27.179411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296253, 27.527302, 27.039646>,  <37.039753, 27.327435, 26.806705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296253, 27.527302, 27.039646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491619, -0.315179, 0.811772,
		0.589162, -0.806841, 0.043540,
		0.641247, 0.499670, 0.582350,
		37.488628, 27.677202, 27.214352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242092, 26.856039, 27.315733>,  <37.039753, 27.327435, 26.806705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242092, 26.856039, 27.315733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321575, 27.221922, 27.456490>,  <37.369263, 27.441452, 27.540943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321575, 27.221922, 27.456490>,  <37.242092, 26.856039, 27.315733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321575, 27.221922, 27.456490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378363, -0.259620, 0.888504,
		0.904079, -0.309692, 0.294504,
		0.198703, 0.914707, 0.351893,
		37.381187, 27.496334, 27.562057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488911, 26.660023, 27.978424>,  <37.242092, 26.856039, 27.315733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488911, 26.660023, 27.978424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374660, 27.043276, 27.986454>,  <37.306110, 27.273228, 27.991272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374660, 27.043276, 27.986454>,  <37.488911, 26.660023, 27.978424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374660, 27.043276, 27.986454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440882, -0.149968, 0.884947,
		0.850907, 0.243911, 0.465258,
		-0.285623, 0.958132, 0.020073,
		37.288975, 27.330715, 27.992476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948242, 26.285723, 28.406599>,  <37.488911, 26.660023, 27.978424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948242, 26.285723, 28.406599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.191998, 26.193811, 28.710138>,  <38.338249, 26.138664, 28.892262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.191998, 26.193811, 28.710138>,  <37.948242, 26.285723, 28.406599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191998, 26.193811, 28.710138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753402, -0.130407, -0.644499,
		0.247052, 0.964466, 0.093648,
		0.609385, -0.229780, 0.758849,
		38.374813, 26.124878, 28.937794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573254, 26.767874, 28.434641>,  <37.948242, 26.285723, 28.406599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573254, 26.767874, 28.434641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662842, 26.413752, 28.597647>,  <38.716595, 26.201279, 28.695450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662842, 26.413752, 28.597647>,  <38.573254, 26.767874, 28.434641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662842, 26.413752, 28.597647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818108, -0.056456, -0.572287,
		0.529656, 0.461569, 0.711631,
		0.223974, -0.885306, 0.407516,
		38.730034, 26.148159, 28.719902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290371, 26.792879, 28.423244>,  <38.573254, 26.767874, 28.434641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290371, 26.792879, 28.423244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208771, 26.410435, 28.507376>,  <39.159809, 26.180969, 28.557854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208771, 26.410435, 28.507376>,  <39.290371, 26.792879, 28.423244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208771, 26.410435, 28.507376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892153, -0.270021, -0.362148,
		0.403046, 0.113766, 0.908081,
		-0.204001, -0.956110, 0.210328,
		39.147572, 26.123602, 28.570475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898048, 26.470789, 28.783497>,  <39.290371, 26.792879, 28.423244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898048, 26.470789, 28.783497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692020, 26.169773, 28.619356>,  <39.568401, 25.989164, 28.520872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692020, 26.169773, 28.619356>,  <39.898048, 26.470789, 28.783497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692020, 26.169773, 28.619356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846222, -0.370259, -0.383166,
		0.136411, -0.544606, 0.827525,
		-0.515073, -0.752538, -0.410350,
		39.537498, 25.944012, 28.496252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307575, 25.802380, 29.054884>,  <39.898048, 26.470789, 28.783497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307575, 25.802380, 29.054884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.089638, 25.732729, 28.726782>,  <39.958874, 25.690939, 28.529921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.089638, 25.732729, 28.726782>,  <40.307575, 25.802380, 29.054884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089638, 25.732729, 28.726782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736064, -0.567906, -0.368365,
		-0.401687, -0.804465, 0.437590,
		-0.544846, -0.174127, -0.820257,
		39.926186, 25.680490, 28.480705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221481, 25.072340, 28.914913>,  <40.307575, 25.802380, 29.054884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221481, 25.072340, 28.914913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.133358, 25.210621, 28.550068>,  <40.080482, 25.293589, 28.331160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.133358, 25.210621, 28.550068>,  <40.221481, 25.072340, 28.914913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133358, 25.210621, 28.550068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630179, -0.663304, -0.403611,
		-0.744539, -0.663715, -0.071722,
		-0.220310, 0.345702, -0.912115,
		40.067265, 25.314331, 28.276434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089291, 24.446606, 28.479372>,  <40.221481, 25.072340, 28.914913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089291, 24.446606, 28.479372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156551, 24.754364, 28.232874>,  <40.196907, 24.939018, 28.084974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156551, 24.754364, 28.232874>,  <40.089291, 24.446606, 28.479372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156551, 24.754364, 28.232874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533406, -0.596734, -0.599489,
		-0.828978, -0.227905, -0.510739,
		0.168149, 0.769394, -0.616245,
		40.206997, 24.985182, 28.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708473, 24.244390, 27.796793>,  <40.089291, 24.446606, 28.479372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708473, 24.244390, 27.796793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000134, 24.499340, 27.697117>,  <40.175129, 24.652309, 27.637312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000134, 24.499340, 27.697117>,  <39.708473, 24.244390, 27.796793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000134, 24.499340, 27.697117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363495, -0.669212, -0.648094,
		-0.579840, 0.381978, -0.719638,
		0.729148, 0.637376, -0.249189,
		40.218880, 24.690554, 27.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966103, 23.950108, 27.165833>,  <39.708473, 24.244390, 27.796793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966103, 23.950108, 27.165833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200146, 24.274473, 27.162531>,  <40.340572, 24.469093, 27.160549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200146, 24.274473, 27.162531>,  <39.966103, 23.950108, 27.165833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200146, 24.274473, 27.162531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470144, -0.347487, -0.811306,
		-0.660768, 0.470820, -0.584564,
		0.585107, 0.810914, -0.008255,
		40.375679, 24.517748, 27.160055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.495750, 35.920372, 36.718639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780804, 35.772850, 36.957348>,  <33.951836, 35.684338, 37.100574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780804, 35.772850, 36.957348>,  <33.495750, 35.920372, 36.718639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780804, 35.772850, 36.957348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279181, 0.631317, 0.723531,
		-0.643593, -0.682220, 0.346935,
		0.712633, -0.368802, 0.596774,
		33.994595, 35.662209, 37.136379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479012, 35.509865, 36.203930>,  <33.495750, 35.920372, 36.718639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479012, 35.509865, 36.203930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812656, 35.378845, 36.381451>,  <34.012844, 35.300232, 36.487961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812656, 35.378845, 36.381451>,  <33.479012, 35.509865, 36.203930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812656, 35.378845, 36.381451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272483, -0.454865, -0.847851,
		0.479585, 0.828134, -0.290158,
		0.834117, -0.327554, 0.443799,
		34.062893, 35.280579, 36.514591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081810, 35.527912, 35.754341>,  <33.479012, 35.509865, 36.203930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081810, 35.527912, 35.754341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183777, 35.260506, 36.033798>,  <34.244957, 35.100063, 36.201473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183777, 35.260506, 36.033798>,  <34.081810, 35.527912, 35.754341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183777, 35.260506, 36.033798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545720, -0.496993, -0.674675,
		0.798253, 0.553251, 0.238131,
		0.254915, -0.668514, 0.698646,
		34.260250, 35.059952, 36.243393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757423, 35.375885, 35.528065>,  <34.081810, 35.527912, 35.754341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757423, 35.375885, 35.528065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645374, 35.084900, 35.778610>,  <34.578144, 34.910309, 35.928936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645374, 35.084900, 35.778610>,  <34.757423, 35.375885, 35.528065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645374, 35.084900, 35.778610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443497, -0.676749, -0.587641,
		0.851375, 0.113176, 0.512202,
		-0.280125, -0.727463, 0.626360,
		34.561337, 34.866661, 35.966518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203171, 34.886612, 35.371243>,  <34.757423, 35.375885, 35.528065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203171, 34.886612, 35.371243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966145, 34.674030, 35.613373>,  <34.823929, 34.546482, 35.758652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966145, 34.674030, 35.613373>,  <35.203171, 34.886612, 35.371243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966145, 34.674030, 35.613373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293468, -0.842258, -0.452193,
		0.750160, -0.090311, 0.655060,
		-0.592567, -0.531456, 0.605325,
		34.788376, 34.514595, 35.794971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693806, 34.448769, 35.570541>,  <35.203171, 34.886612, 35.371243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693806, 34.448769, 35.570541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338997, 34.278332, 35.641689>,  <35.126110, 34.176071, 35.684376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338997, 34.278332, 35.641689>,  <35.693806, 34.448769, 35.570541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338997, 34.278332, 35.641689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333394, -0.857567, -0.391699,
		0.319432, -0.288146, 0.902737,
		-0.887024, -0.426088, 0.177868,
		35.072891, 34.150505, 35.695049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843769, 33.824345, 35.950157>,  <35.693806, 34.448769, 35.570541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843769, 33.824345, 35.950157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475887, 33.785069, 35.798100>,  <35.255157, 33.761505, 35.706867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475887, 33.785069, 35.798100>,  <35.843769, 33.824345, 35.950157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475887, 33.785069, 35.798100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222790, -0.927758, -0.299381,
		-0.323283, -0.360033, 0.875136,
		-0.919702, -0.098187, -0.380141,
		35.199978, 33.755611, 35.684055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560928, 33.145805, 36.104218>,  <35.843769, 33.824345, 35.950157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560928, 33.145805, 36.104218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357124, 33.250160, 35.776234>,  <35.234840, 33.312775, 35.579441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357124, 33.250160, 35.776234>,  <35.560928, 33.145805, 36.104218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357124, 33.250160, 35.776234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099854, -0.928564, -0.357488,
		-0.854651, -0.264020, 0.447062,
		-0.509510, 0.260886, -0.819962,
		35.204273, 33.328426, 35.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013264, 32.618881, 35.962914>,  <35.560928, 33.145805, 36.104218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013264, 32.618881, 35.962914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086678, 32.783844, 35.605984>,  <35.130726, 32.882824, 35.391827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086678, 32.783844, 35.605984>,  <35.013264, 32.618881, 35.962914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086678, 32.783844, 35.605984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167971, -0.907546, -0.384898,
		-0.968557, -0.079244, -0.235835,
		0.183530, 0.412409, -0.892320,
		35.141735, 32.907566, 35.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603905, 32.153427, 35.593502>,  <35.013264, 32.618881, 35.962914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603905, 32.153427, 35.593502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808048, 32.362865, 35.320625>,  <34.930534, 32.488525, 35.156898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808048, 32.362865, 35.320625>,  <34.603905, 32.153427, 35.593502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808048, 32.362865, 35.320625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114537, -0.827601, -0.549507,
		-0.852299, 0.202310, -0.482345,
		0.510360, 0.523591, -0.682192,
		34.961155, 32.519943, 35.115967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285625, 32.030762, 35.037846>,  <34.603905, 32.153427, 35.593502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285625, 32.030762, 35.037846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643745, 32.139912, 34.897003>,  <34.858616, 32.205402, 34.812496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643745, 32.139912, 34.897003>,  <34.285625, 32.030762, 35.037846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643745, 32.139912, 34.897003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010279, -0.802871, -0.596064,
		-0.445349, 0.530036, -0.721614,
		0.895298, 0.272874, -0.352109,
		34.912334, 32.221775, 34.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273087, 32.051128, 34.315258>,  <34.285625, 32.030762, 35.037846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273087, 32.051128, 34.315258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647083, 31.973713, 34.434135>,  <34.871483, 31.927263, 34.505463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647083, 31.973713, 34.434135>,  <34.273087, 32.051128, 34.315258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647083, 31.973713, 34.434135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019345, -0.808888, -0.587645,
		0.354129, 0.555195, -0.752563,
		0.934996, -0.193543, 0.297191,
		34.927582, 31.915649, 34.523293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858376, 32.428429, 33.769398>,  <34.273087, 32.051128, 34.315258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858376, 32.428429, 33.769398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783836, 32.529331, 33.389580>,  <33.739113, 32.589874, 33.161690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783836, 32.529331, 33.389580>,  <33.858376, 32.428429, 33.769398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783836, 32.529331, 33.389580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210964, 0.933660, 0.289437,
		0.959568, 0.254255, -0.120764,
		-0.186343, 0.252257, -0.949549,
		33.727932, 32.605007, 33.104713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126160, 33.152901, 33.648762>,  <33.858376, 32.428429, 33.769398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126160, 33.152901, 33.648762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854282, 33.104946, 33.359310>,  <33.691154, 33.076176, 33.185638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854282, 33.104946, 33.359310>,  <34.126160, 33.152901, 33.648762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854282, 33.104946, 33.359310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311696, 0.940253, 0.137004,
		0.663971, 0.318674, -0.676454,
		-0.679697, -0.119882, -0.723630,
		33.650372, 33.068981, 33.142220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163078, 33.739620, 33.151676>,  <34.126160, 33.152901, 33.648762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163078, 33.739620, 33.151676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799156, 33.581791, 33.100197>,  <33.580803, 33.487095, 33.069309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799156, 33.581791, 33.100197>,  <34.163078, 33.739620, 33.151676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799156, 33.581791, 33.100197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364415, 0.907877, -0.207268,
		0.198621, -0.141676, -0.969782,
		-0.909809, -0.394571, -0.128694,
		33.526215, 33.463421, 33.061588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840290, 33.958504, 32.444649>,  <34.163078, 33.739620, 33.151676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840290, 33.958504, 32.444649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549290, 33.862167, 32.701630>,  <33.374691, 33.804367, 32.855816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549290, 33.862167, 32.701630>,  <33.840290, 33.958504, 32.444649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549290, 33.862167, 32.701630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527315, 0.795331, -0.298978,
		-0.438954, -0.556279, -0.705601,
		-0.727501, -0.240837, 0.642448,
		33.331039, 33.789917, 32.894363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251709, 34.267567, 32.187767>,  <33.840290, 33.958504, 32.444649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251709, 34.267567, 32.187767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108608, 34.174572, 32.549530>,  <33.022747, 34.118774, 32.766590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108608, 34.174572, 32.549530>,  <33.251709, 34.267567, 32.187767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108608, 34.174572, 32.549530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520547, 0.853725, 0.013550,
		-0.775270, -0.465942, -0.426445,
		-0.357754, -0.232490, 0.904412,
		33.001282, 34.104824, 32.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533810, 34.481796, 32.251675>,  <33.251709, 34.267567, 32.187767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533810, 34.481796, 32.251675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610905, 34.418716, 32.639072>,  <32.657162, 34.380867, 32.871510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610905, 34.418716, 32.639072>,  <32.533810, 34.481796, 32.251675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610905, 34.418716, 32.639072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517773, 0.822064, 0.236901,
		-0.833524, -0.547121, 0.076790,
		0.192740, -0.157703, 0.968494,
		32.668728, 34.371407, 32.929619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960279, 34.639263, 32.552364>,  <32.533810, 34.481796, 32.251675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960279, 34.639263, 32.552364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229465, 34.654476, 32.847843>,  <32.390976, 34.663605, 33.025131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229465, 34.654476, 32.847843>,  <31.960279, 34.639263, 32.552364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229465, 34.654476, 32.847843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432652, 0.830257, 0.351404,
		-0.599940, -0.556081, 0.575192,
		0.672967, 0.038037, 0.738694,
		32.431355, 34.665886, 33.069450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548248, 34.655197, 33.103729>,  <31.960279, 34.639263, 32.552364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548248, 34.655197, 33.103729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907560, 34.796612, 33.208118>,  <32.123146, 34.881458, 33.270752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907560, 34.796612, 33.208118>,  <31.548248, 34.655197, 33.103729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907560, 34.796612, 33.208118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438525, 0.759176, 0.480985,
		-0.028082, -0.546503, 0.836986,
		0.898280, 0.353533, 0.260974,
		32.177044, 34.902672, 33.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512848, 34.831017, 33.835285>,  <31.548248, 34.655197, 33.103729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512848, 34.831017, 33.835285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798382, 35.057987, 33.671108>,  <31.969702, 35.194172, 33.572601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798382, 35.057987, 33.671108>,  <31.512848, 34.831017, 33.835285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798382, 35.057987, 33.671108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506461, 0.823061, 0.257037,
		0.483671, 0.024392, 0.874910,
		0.713834, 0.567429, -0.410445,
		32.012531, 35.228214, 33.547974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649052, 35.347206, 34.272839>,  <31.512848, 34.831017, 33.835285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649052, 35.347206, 34.272839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802948, 35.477638, 33.927437>,  <31.895287, 35.555897, 33.720196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802948, 35.477638, 33.927437>,  <31.649052, 35.347206, 34.272839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802948, 35.477638, 33.927437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293623, 0.930161, 0.220422,
		0.875077, 0.168740, 0.453616,
		0.384742, 0.326078, -0.863508,
		31.918371, 35.575462, 33.668385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942629, 35.962177, 34.429104>,  <31.649052, 35.347206, 34.272839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942629, 35.962177, 34.429104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889799, 35.988789, 34.033501>,  <31.858101, 36.004753, 33.796139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889799, 35.988789, 34.033501>,  <31.942629, 35.962177, 34.429104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889799, 35.988789, 34.033501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201771, 0.975052, 0.092532,
		0.970487, 0.211774, -0.115356,
		-0.132074, 0.066525, -0.989005,
		31.850178, 36.008747, 33.736797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324261, 36.541229, 34.258194>,  <31.942629, 35.962177, 34.429104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324261, 36.541229, 34.258194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068138, 36.467915, 33.959820>,  <31.914465, 36.423927, 33.780796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068138, 36.467915, 33.959820>,  <32.324261, 36.541229, 34.258194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068138, 36.467915, 33.959820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260638, 0.965343, -0.013471,
		0.722551, 0.185793, -0.665883,
		-0.640302, -0.183288, -0.745934,
		31.876047, 36.412930, 33.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484337, 37.036045, 33.731369>,  <32.324261, 36.541229, 34.258194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484337, 37.036045, 33.731369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109627, 36.904465, 33.683617>,  <31.884802, 36.825516, 33.654964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109627, 36.904465, 33.683617>,  <32.484337, 37.036045, 33.731369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109627, 36.904465, 33.683617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318428, 0.942755, -0.099083,
		0.145136, -0.054805, -0.987893,
		-0.936770, -0.328953, -0.119376,
		31.828596, 36.805779, 33.647804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187248, 37.422447, 33.165482>,  <32.484337, 37.036045, 33.731369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187248, 37.422447, 33.165482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.884617, 37.301975, 33.397644>,  <31.703037, 37.229691, 33.536942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.884617, 37.301975, 33.397644>,  <32.187248, 37.422447, 33.165482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884617, 37.301975, 33.397644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401120, 0.914757, -0.048190,
		-0.516420, -0.269273, -0.812897,
		-0.756580, -0.301183, 0.580410,
		31.657642, 37.211620, 33.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163593, 38.024906, 32.817497>,  <32.187248, 37.422447, 33.165482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163593, 38.024906, 32.817497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469555, 38.262985, 32.718971>,  <32.653130, 38.405830, 32.659855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469555, 38.262985, 32.718971>,  <32.163593, 38.024906, 32.817497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469555, 38.262985, 32.718971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289550, -0.659275, -0.693914,
		-0.575404, 0.459455, -0.676618,
		0.764900, 0.595196, -0.246315,
		32.699024, 38.441544, 32.645077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422169, 37.743111, 32.168053>,  <32.163593, 38.024906, 32.817497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422169, 37.743111, 32.168053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706470, 38.023849, 32.186996>,  <32.877052, 38.192291, 32.198364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706470, 38.023849, 32.186996>,  <32.422169, 37.743111, 32.168053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706470, 38.023849, 32.186996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410677, -0.359341, -0.837985,
		-0.571115, 0.615053, -0.543634,
		0.710755, 0.701843, 0.047363,
		32.919697, 38.234402, 32.201206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401836, 37.960323, 31.538252>,  <32.422169, 37.743111, 32.168053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401836, 37.960323, 31.538252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765984, 38.065464, 31.666086>,  <32.984474, 38.128548, 31.742786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765984, 38.065464, 31.666086>,  <32.401836, 37.960323, 31.538252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765984, 38.065464, 31.666086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410143, -0.470786, -0.781117,
		-0.054865, 0.842180, -0.536398,
		0.910370, 0.262855, 0.319585,
		33.039093, 38.144321, 31.761961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692703, 38.466652, 31.008654>,  <32.401836, 37.960323, 31.538252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692703, 38.466652, 31.008654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005676, 38.290619, 31.184893>,  <33.193459, 38.184998, 31.290636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005676, 38.290619, 31.184893>,  <32.692703, 38.466652, 31.008654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005676, 38.290619, 31.184893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250148, -0.425816, -0.869544,
		0.570287, 0.790573, -0.223086,
		0.782431, -0.440085, 0.440597,
		33.240406, 38.158592, 31.317072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345104, 38.509289, 30.510651>,  <32.692703, 38.466652, 31.008654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345104, 38.509289, 30.510651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472683, 38.226826, 30.763510>,  <33.549229, 38.057346, 30.915226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472683, 38.226826, 30.763510>,  <33.345104, 38.509289, 30.510651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472683, 38.226826, 30.763510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733095, -0.238927, -0.636778,
		0.600705, 0.666522, 0.441477,
		0.318946, -0.706160, 0.632148,
		33.568367, 38.014977, 30.953154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092197, 38.499195, 30.395554>,  <33.345104, 38.509289, 30.510651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092197, 38.499195, 30.395554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014473, 38.165344, 30.601715>,  <33.967838, 37.965034, 30.725412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014473, 38.165344, 30.601715>,  <34.092197, 38.499195, 30.395554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014473, 38.165344, 30.601715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752560, -0.463856, -0.467430,
		0.629202, 0.297043, 0.718241,
		-0.194314, -0.834628, 0.515402,
		33.956181, 37.914955, 30.756336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712868, 38.315109, 30.709454>,  <34.092197, 38.499195, 30.395554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712868, 38.315109, 30.709454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476593, 37.997852, 30.650103>,  <34.334827, 37.807499, 30.614492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476593, 37.997852, 30.650103>,  <34.712868, 38.315109, 30.709454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476593, 37.997852, 30.650103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756508, -0.480395, -0.443753,
		0.280678, -0.374369, 0.883780,
		-0.590691, -0.793138, -0.148376,
		34.299385, 37.759911, 30.605589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131111, 37.701744, 30.819120>,  <34.712868, 38.315109, 30.709454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131111, 37.701744, 30.819120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821217, 37.555191, 30.612997>,  <34.635281, 37.467258, 30.489323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821217, 37.555191, 30.612997>,  <35.131111, 37.701744, 30.819120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821217, 37.555191, 30.612997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616289, -0.619720, -0.485937,
		-0.141310, -0.694054, 0.705918,
		-0.774739, -0.366382, -0.515310,
		34.588795, 37.445278, 30.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166557, 36.993176, 30.790579>,  <35.131111, 37.701744, 30.819120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166557, 36.993176, 30.790579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898994, 37.011147, 30.493784>,  <34.738457, 37.021931, 30.315706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898994, 37.011147, 30.493784>,  <35.166557, 36.993176, 30.790579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898994, 37.011147, 30.493784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487456, -0.727080, -0.483469,
		-0.561204, -0.685081, 0.464448,
		-0.668907, 0.044927, -0.741988,
		34.698322, 37.024624, 30.271187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978127, 36.243721, 30.630571>,  <35.166557, 36.993176, 30.790579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978127, 36.243721, 30.630571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892544, 36.452156, 30.300072>,  <34.841194, 36.577217, 30.101772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892544, 36.452156, 30.300072>,  <34.978127, 36.243721, 30.630571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892544, 36.452156, 30.300072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547795, -0.636320, -0.543155,
		-0.808792, -0.568826, -0.149307,
		-0.213954, 0.521089, -0.826251,
		34.828358, 36.608482, 30.052197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755142, 35.768147, 30.170750>,  <34.978127, 36.243721, 30.630571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755142, 35.768147, 30.170750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858810, 36.085609, 29.950588>,  <34.921013, 36.276085, 29.818491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858810, 36.085609, 29.950588>,  <34.755142, 35.768147, 30.170750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858810, 36.085609, 29.950588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478259, -0.600561, -0.640776,
		-0.839105, -0.097162, -0.535222,
		0.259174, 0.793653, -0.550403,
		34.936562, 36.323704, 29.785467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541489, 35.699768, 29.492407>,  <34.755142, 35.768147, 30.170750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541489, 35.699768, 29.492407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839912, 35.961205, 29.441475>,  <35.018967, 36.118065, 29.410915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839912, 35.961205, 29.441475>,  <34.541489, 35.699768, 29.492407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839912, 35.961205, 29.441475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366305, -0.562530, -0.741202,
		-0.556068, 0.506341, -0.659096,
		0.746062, 0.653589, -0.127329,
		35.063732, 36.157280, 29.403276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754795, 35.666203, 28.749584>,  <34.541489, 35.699768, 29.492407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754795, 35.666203, 28.749584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063950, 35.821537, 28.950319>,  <35.249443, 35.914738, 29.070761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063950, 35.821537, 28.950319>,  <34.754795, 35.666203, 28.749584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063950, 35.821537, 28.950319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634466, -0.485258, -0.601646,
		0.009880, 0.783403, -0.621436,
		0.772887, 0.388336, 0.501837,
		35.295815, 35.938038, 29.100870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229755, 36.021198, 28.186090>,  <34.754795, 35.666203, 28.749584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229755, 36.021198, 28.186090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421886, 35.896851, 28.514151>,  <35.537167, 35.822243, 28.710987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421886, 35.896851, 28.514151>,  <35.229755, 36.021198, 28.186090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421886, 35.896851, 28.514151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668327, -0.475830, -0.571773,
		0.567999, 0.822766, -0.020791,
		0.480329, -0.310872, 0.820148,
		35.565987, 35.803589, 28.760195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001991, 36.102215, 27.975615>,  <35.229755, 36.021198, 28.186090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001991, 36.102215, 27.975615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995464, 35.892838, 28.316376>,  <35.991547, 35.767212, 28.520832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995464, 35.892838, 28.316376>,  <36.001991, 36.102215, 27.975615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995464, 35.892838, 28.316376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722309, -0.595317, -0.351948,
		0.691378, 0.609594, 0.387805,
		-0.016321, -0.523444, 0.851904,
		35.990566, 35.735806, 28.571947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747185, 36.058029, 28.234713>,  <36.001991, 36.102215, 27.975615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747185, 36.058029, 28.234713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545956, 35.752411, 28.396280>,  <36.425217, 35.569038, 28.493221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545956, 35.752411, 28.396280>,  <36.747185, 36.058029, 28.234713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545956, 35.752411, 28.396280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718569, -0.629459, -0.295703,
		0.480181, 0.141483, 0.865684,
		-0.503076, -0.764045, 0.403919,
		36.395035, 35.523197, 28.517456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275623, 35.620476, 28.503790>,  <36.747185, 36.058029, 28.234713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275623, 35.620476, 28.503790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950832, 35.387218, 28.493662>,  <36.755959, 35.247265, 28.487585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950832, 35.387218, 28.493662>,  <37.275623, 35.620476, 28.503790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950832, 35.387218, 28.493662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551359, -0.752045, -0.361153,
		0.191563, -0.307208, 0.932163,
		-0.811977, -0.583139, -0.025318,
		36.707237, 35.212276, 28.486067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367050, 34.905106, 28.818029>,  <37.275623, 35.620476, 28.503790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367050, 34.905106, 28.818029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025574, 34.844666, 28.618677>,  <36.820690, 34.808403, 28.499065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025574, 34.844666, 28.618677>,  <37.367050, 34.905106, 28.818029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025574, 34.844666, 28.618677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342442, -0.883870, -0.318601,
		-0.392363, -0.442653, 0.806294,
		-0.853689, -0.151101, -0.498381,
		36.769466, 34.799335, 28.469162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175720, 34.158363, 29.006800>,  <37.367050, 34.905106, 28.818029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175720, 34.158363, 29.006800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027962, 34.277336, 28.654646>,  <36.939304, 34.348721, 28.443354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027962, 34.277336, 28.654646>,  <37.175720, 34.158363, 29.006800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027962, 34.277336, 28.654646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243530, -0.883299, -0.400594,
		-0.896794, -0.362379, 0.253854,
		-0.369396, 0.297429, -0.880388,
		36.917141, 34.366566, 28.390530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945339, 33.602459, 28.745394>,  <37.175720, 34.158363, 29.006800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945339, 33.602459, 28.745394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975887, 33.859676, 28.440590>,  <36.994217, 34.014008, 28.257708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975887, 33.859676, 28.440590>,  <36.945339, 33.602459, 28.745394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975887, 33.859676, 28.440590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247390, -0.752563, -0.610284,
		-0.965902, -0.141908, -0.216554,
		0.076367, 0.643048, -0.762009,
		36.998798, 34.052589, 28.211987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596760, 33.255287, 28.255690>,  <36.945339, 33.602459, 28.745394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596760, 33.255287, 28.255690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843719, 33.509453, 28.070189>,  <36.991894, 33.661953, 27.958887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843719, 33.509453, 28.070189>,  <36.596760, 33.255287, 28.255690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843719, 33.509453, 28.070189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383064, -0.757755, -0.528270,
		-0.687083, 0.148505, -0.711241,
		0.617397, 0.635416, -0.463754,
		37.028938, 33.700077, 27.931063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596352, 33.091969, 27.556427>,  <36.596760, 33.255287, 28.255690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596352, 33.091969, 27.556427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930897, 33.308708, 27.589621>,  <37.131626, 33.438751, 27.609537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930897, 33.308708, 27.589621>,  <36.596352, 33.091969, 27.556427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930897, 33.308708, 27.589621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445075, -0.582871, -0.679831,
		-0.319997, 0.605523, -0.728658,
		0.836367, 0.541851, 0.082986,
		37.181808, 33.471264, 27.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793793, 33.119587, 26.853212>,  <36.596352, 33.091969, 27.556427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793793, 33.119587, 26.853212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112244, 33.222809, 27.072149>,  <37.303314, 33.284744, 27.203512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112244, 33.222809, 27.072149>,  <36.793793, 33.119587, 26.853212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112244, 33.222809, 27.072149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594148, -0.504864, -0.626179,
		0.114743, 0.823722, -0.555261,
		0.796129, 0.258058, 0.547343,
		37.351082, 33.300228, 27.236353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239918, 33.389736, 26.379488>,  <36.793793, 33.119587, 26.853212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239918, 33.389736, 26.379488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.478924, 33.269333, 26.676775>,  <37.622326, 33.197090, 26.855146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.478924, 33.269333, 26.676775>,  <37.239918, 33.389736, 26.379488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478924, 33.269333, 26.676775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635154, -0.388082, -0.667811,
		0.489449, 0.871082, -0.040694,
		0.597511, -0.301013, 0.743217,
		37.658176, 33.179028, 26.899740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924767, 33.514404, 26.201599>,  <37.239918, 33.389736, 26.379488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924767, 33.514404, 26.201599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968449, 33.240341, 26.489664>,  <37.994659, 33.075905, 26.662502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968449, 33.240341, 26.489664>,  <37.924767, 33.514404, 26.201599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968449, 33.240341, 26.489664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540943, -0.566856, -0.621333,
		0.833939, 0.457422, 0.308725,
		0.109208, -0.685157, 0.720163,
		38.001209, 33.034794, 26.705713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569862, 33.379696, 26.118841>,  <37.924767, 33.514404, 26.201599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569862, 33.379696, 26.118841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434593, 33.075703, 26.340857>,  <38.353432, 32.893307, 26.474066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434593, 33.075703, 26.340857>,  <38.569862, 33.379696, 26.118841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434593, 33.075703, 26.340857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459742, -0.648031, -0.607201,
		0.821144, 0.049837, 0.568541,
		-0.338171, -0.759982, 0.555039,
		38.333141, 32.847710, 26.507368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159145, 32.958122, 26.146812>,  <38.569862, 33.379696, 26.118841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159145, 32.958122, 26.146812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842175, 32.723015, 26.212034>,  <38.651993, 32.581951, 26.251167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842175, 32.723015, 26.212034>,  <39.159145, 32.958122, 26.146812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842175, 32.723015, 26.212034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412853, -0.713613, -0.565958,
		0.449009, -0.381164, 0.808149,
		-0.792429, -0.587767, 0.163054,
		38.604446, 32.546684, 26.260950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435867, 32.324570, 26.319208>,  <39.159145, 32.958122, 26.146812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435867, 32.324570, 26.319208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.064365, 32.230286, 26.204762>,  <38.841465, 32.173717, 26.136093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.064365, 32.230286, 26.204762>,  <39.435867, 32.324570, 26.319208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064365, 32.230286, 26.204762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358310, -0.768694, -0.529833,
		-0.095050, -0.594602, 0.798382,
		-0.928752, -0.235708, -0.286116,
		38.785740, 32.159573, 26.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773388, 31.895567, 26.851194>,  <39.435867, 32.324570, 26.319208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773388, 31.895567, 26.851194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164986, 31.913309, 26.930796>,  <40.399944, 31.923954, 26.978558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164986, 31.913309, 26.930796>,  <39.773388, 31.895567, 26.851194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164986, 31.913309, 26.930796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133486, 0.877216, 0.461165,
		-0.154116, -0.478043, 0.864710,
		0.978995, 0.044354, 0.199005,
		40.458683, 31.926615, 26.990498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795235, 31.843742, 27.635122>,  <39.773388, 31.895567, 26.851194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795235, 31.843742, 27.635122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.099434, 32.030949, 27.455076>,  <40.281952, 32.143272, 27.347048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.099434, 32.030949, 27.455076>,  <39.795235, 31.843742, 27.635122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099434, 32.030949, 27.455076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298985, 0.867720, 0.397076,
		0.576413, -0.167398, 0.799829,
		0.760498, 0.468017, -0.450116,
		40.327583, 32.171352, 27.320042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050396, 32.259254, 28.213737>,  <39.795235, 31.843742, 27.635122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050396, 32.259254, 28.213737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201210, 32.429523, 27.884705>,  <40.291698, 32.531685, 27.687284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201210, 32.429523, 27.884705>,  <40.050396, 32.259254, 28.213737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201210, 32.429523, 27.884705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099700, 0.901621, 0.420880,
		0.920819, -0.076673, 0.382379,
		0.377031, 0.425677, -0.822585,
		40.314320, 32.557228, 27.637930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576710, 32.833538, 28.432716>,  <40.050396, 32.259254, 28.213737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576710, 32.833538, 28.432716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.467377, 32.898308, 28.053438>,  <40.401779, 32.937172, 27.825872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.467377, 32.898308, 28.053438>,  <40.576710, 32.833538, 28.432716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467377, 32.898308, 28.053438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136932, 0.969141, 0.204976,
		0.952125, 0.185863, -0.242722,
		-0.273329, 0.161926, -0.948194,
		40.385380, 32.946884, 27.768980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093582, 33.308159, 28.098448>,  <40.576710, 32.833538, 28.432716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093582, 33.308159, 28.098448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.741291, 33.313679, 27.909077>,  <40.529919, 33.316990, 27.795454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.741291, 33.313679, 27.909077>,  <41.093582, 33.308159, 28.098448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741291, 33.313679, 27.909077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164320, 0.928587, 0.332754,
		0.444209, 0.370859, -0.815562,
		-0.880725, 0.013799, -0.473427,
		40.477074, 33.317818, 27.767048>
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
