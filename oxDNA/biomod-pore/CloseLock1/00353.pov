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
	<24.400522, 34.474922, 35.018948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214699, 34.829071, 35.011986>,  <24.103205, 35.041561, 35.007809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214699, 34.829071, 35.011986>,  <24.400522, 34.474922, 35.018948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214699, 34.829071, 35.011986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882901, 0.461567, -0.086270,
		-0.068350, -0.055441, -0.996120,
		-0.464559, 0.885371, -0.017401,
		24.075331, 35.094681, 35.006767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505402, 34.684002, 35.733948>,  <24.400522, 34.474922, 35.018948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505402, 34.684002, 35.733948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755941, 34.475334, 35.502239>,  <24.906265, 34.350136, 35.363216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755941, 34.475334, 35.502239>,  <24.505402, 34.684002, 35.733948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755941, 34.475334, 35.502239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354761, 0.852428, -0.384072,
		0.694142, 0.035062, 0.718984,
		0.626348, -0.521668, -0.579267,
		24.943846, 34.318832, 35.328461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212326, 34.923496, 35.871239>,  <24.505402, 34.684002, 35.733948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212326, 34.923496, 35.871239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163166, 34.767170, 35.506348>,  <25.133671, 34.673374, 35.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163166, 34.767170, 35.506348>,  <25.212326, 34.923496, 35.871239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163166, 34.767170, 35.506348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468465, 0.787493, -0.400495,
		0.874893, -0.476565, 0.086304,
		-0.122898, -0.390820, -0.912225,
		25.126297, 34.649925, 35.232681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711367, 35.216000, 35.292919>,  <25.212326, 34.923496, 35.871239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711367, 35.216000, 35.292919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960003, 35.505245, 35.172436>,  <26.109184, 35.678795, 35.100143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960003, 35.505245, 35.172436>,  <25.711367, 35.216000, 35.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960003, 35.505245, 35.172436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084031, -0.443853, -0.892151,
		-0.778823, 0.529240, -0.336659,
		0.621589, 0.723118, -0.301211,
		26.146481, 35.722179, 35.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426174, 35.716209, 34.701752>,  <25.711367, 35.216000, 35.292919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426174, 35.716209, 34.701752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825214, 35.688797, 34.697872>,  <26.064638, 35.672348, 34.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825214, 35.688797, 34.697872>,  <25.426174, 35.716209, 34.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825214, 35.688797, 34.697872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044485, -0.527420, -0.848439,
		0.053029, 0.846836, -0.529204,
		0.997602, -0.068534, -0.009703,
		26.124495, 35.668236, 34.694962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630859, 35.838924, 34.045433>,  <25.426174, 35.716209, 34.701752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630859, 35.838924, 34.045433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981083, 35.685581, 34.163029>,  <26.191217, 35.593575, 34.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981083, 35.685581, 34.163029>,  <25.630859, 35.838924, 34.045433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981083, 35.685581, 34.163029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137566, -0.385505, -0.912393,
		0.463110, 0.839298, -0.284795,
		0.875560, -0.383361, 0.293990,
		26.243752, 35.570572, 34.251225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273623, 36.149944, 33.624863>,  <25.630859, 35.838924, 34.045433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273623, 36.149944, 33.624863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428041, 35.805431, 33.757019>,  <26.520693, 35.598724, 33.836311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428041, 35.805431, 33.757019>,  <26.273623, 36.149944, 33.624863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428041, 35.805431, 33.757019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204098, -0.269528, -0.941115,
		0.899618, 0.430744, 0.071737,
		0.386045, -0.861286, 0.330387,
		26.543856, 35.547047, 33.856136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886604, 36.097069, 33.264645>,  <26.273623, 36.149944, 33.624863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886604, 36.097069, 33.264645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810829, 35.720177, 33.375149>,  <26.765364, 35.494041, 33.441452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810829, 35.720177, 33.375149>,  <26.886604, 36.097069, 33.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810829, 35.720177, 33.375149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257878, -0.319217, -0.911921,
		0.947424, -0.101513, 0.303452,
		-0.189438, -0.942229, 0.276256,
		26.753998, 35.437508, 33.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437134, 35.656281, 32.927929>,  <26.886604, 36.097069, 33.264645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437134, 35.656281, 32.927929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163982, 35.381386, 33.027031>,  <27.000092, 35.216450, 33.086491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163982, 35.381386, 33.027031>,  <27.437134, 35.656281, 32.927929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163982, 35.381386, 33.027031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144288, -0.459346, -0.876460,
		0.716140, -0.562769, 0.412838,
		-0.682880, -0.687235, 0.247756,
		26.959118, 35.175217, 33.101357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771572, 34.931740, 32.874687>,  <27.437134, 35.656281, 32.927929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771572, 34.931740, 32.874687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376451, 34.870174, 32.865234>,  <27.139380, 34.833237, 32.859562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376451, 34.870174, 32.865234>,  <27.771572, 34.931740, 32.874687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376451, 34.870174, 32.865234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101361, -0.520353, -0.847915,
		0.118208, -0.839967, 0.529606,
		-0.987802, -0.153912, -0.023630,
		27.080111, 34.824001, 32.858147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699192, 34.193180, 32.469444>,  <27.771572, 34.931740, 32.874687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699192, 34.193180, 32.469444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349987, 34.386436, 32.442837>,  <27.140463, 34.502388, 32.426872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349987, 34.386436, 32.442837>,  <27.699192, 34.193180, 32.469444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349987, 34.386436, 32.442837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164234, -0.419667, -0.892696,
		-0.459215, -0.768409, 0.445723,
		-0.873011, 0.483142, -0.066519,
		27.088083, 34.531376, 32.422882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329792, 33.734039, 32.195805>,  <27.699192, 34.193180, 32.469444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329792, 33.734039, 32.195805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126406, 34.069412, 32.117321>,  <27.004374, 34.270638, 32.070232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126406, 34.069412, 32.117321>,  <27.329792, 33.734039, 32.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126406, 34.069412, 32.117321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224476, -0.349046, -0.909823,
		-0.831309, -0.418569, 0.365685,
		-0.508465, 0.838431, -0.196207,
		26.973866, 34.320942, 32.058460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619495, 33.559483, 32.126820>,  <27.329792, 33.734039, 32.195805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619495, 33.559483, 32.126820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705757, 33.899906, 31.935324>,  <26.757513, 34.104160, 31.820427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705757, 33.899906, 31.935324>,  <26.619495, 33.559483, 32.126820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705757, 33.899906, 31.935324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305237, -0.406953, -0.860941,
		-0.927536, 0.331794, 0.172014,
		0.215653, 0.851059, -0.478740,
		26.770452, 34.155224, 31.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077906, 33.602402, 31.624659>,  <26.619495, 33.559483, 32.126820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077906, 33.602402, 31.624659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323593, 33.874397, 31.464479>,  <26.471004, 34.037594, 31.368372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323593, 33.874397, 31.464479>,  <26.077906, 33.602402, 31.624659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323593, 33.874397, 31.464479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183531, -0.370443, -0.910543,
		-0.767498, 0.632766, -0.102734,
		0.614218, 0.679985, -0.400446,
		26.507858, 34.078392, 31.344345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763794, 33.787910, 30.986628>,  <26.077906, 33.602402, 31.624659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763794, 33.787910, 30.986628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149693, 33.889812, 30.960194>,  <26.381231, 33.950954, 30.944334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149693, 33.889812, 30.960194>,  <25.763794, 33.787910, 30.986628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149693, 33.889812, 30.960194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022122, -0.328694, -0.944178,
		-0.262255, 0.909429, -0.322741,
		0.964745, 0.254755, -0.066084,
		26.439116, 33.966240, 30.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885141, 34.037289, 30.237934>,  <25.763794, 33.787910, 30.986628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885141, 34.037289, 30.237934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228514, 33.928402, 30.411829>,  <26.434536, 33.863071, 30.516167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228514, 33.928402, 30.411829>,  <25.885141, 34.037289, 30.237934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228514, 33.928402, 30.411829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266581, -0.487323, -0.831536,
		0.438216, 0.829707, -0.345764,
		0.858430, -0.272218, 0.434736,
		26.486042, 33.846737, 30.542250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303953, 33.889610, 29.697720>,  <25.885141, 34.037289, 30.237934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303953, 33.889610, 29.697720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538805, 33.713291, 29.969299>,  <26.679716, 33.607502, 30.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538805, 33.713291, 29.969299>,  <26.303953, 33.889610, 29.697720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538805, 33.713291, 29.969299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317946, -0.645759, -0.694194,
		0.744437, 0.623453, -0.238996,
		0.587132, -0.440796, 0.678951,
		26.714945, 33.581051, 30.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895164, 33.589375, 29.298100>,  <26.303953, 33.889610, 29.697720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895164, 33.589375, 29.298100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919998, 33.389259, 29.643551>,  <26.934898, 33.269192, 29.850822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919998, 33.389259, 29.643551>,  <26.895164, 33.589375, 29.298100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919998, 33.389259, 29.643551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225963, -0.835785, -0.500403,
		0.972155, 0.226216, 0.061158,
		0.062084, -0.500289, 0.863630,
		26.938623, 33.239174, 29.902639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533356, 33.251789, 29.260841>,  <26.895164, 33.589375, 29.298100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533356, 33.251789, 29.260841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323193, 33.039406, 29.526783>,  <27.197094, 32.911976, 29.686348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323193, 33.039406, 29.526783>,  <27.533356, 33.251789, 29.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323193, 33.039406, 29.526783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312647, -0.847211, -0.429517,
		0.791326, -0.017808, 0.611134,
		-0.525409, -0.530957, 0.664853,
		27.165569, 32.880119, 29.726238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917639, 32.685986, 29.530340>,  <27.533356, 33.251789, 29.260841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917639, 32.685986, 29.530340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539949, 32.580341, 29.609020>,  <27.313335, 32.516956, 29.656229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539949, 32.580341, 29.609020>,  <27.917639, 32.685986, 29.530340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539949, 32.580341, 29.609020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156762, -0.885784, -0.436821,
		0.289602, -0.381620, 0.877779,
		-0.944222, -0.264107, 0.196702,
		27.256683, 32.501110, 29.668030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952965, 32.047081, 29.894245>,  <27.917639, 32.685986, 29.530340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952965, 32.047081, 29.894245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587942, 32.069138, 29.732159>,  <27.368929, 32.082371, 29.634907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587942, 32.069138, 29.732159>,  <27.952965, 32.047081, 29.894245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587942, 32.069138, 29.732159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067084, -0.957258, -0.281347,
		-0.403412, -0.283928, 0.869852,
		-0.912556, 0.055146, -0.405217,
		27.314175, 32.085682, 29.610594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657600, 31.410650, 30.034281>,  <27.952965, 32.047081, 29.894245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657600, 31.410650, 30.034281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453400, 31.587725, 29.739414>,  <27.330879, 31.693970, 29.562494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453400, 31.587725, 29.739414>,  <27.657600, 31.410650, 30.034281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453400, 31.587725, 29.739414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011698, -0.853640, -0.520732,
		-0.859805, -0.274451, 0.430595,
		-0.510488, 0.442691, -0.737175,
		27.300249, 31.720530, 29.518265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277496, 30.912615, 29.636551>,  <27.657600, 31.410650, 30.034281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277496, 30.912615, 29.636551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233850, 31.211910, 29.374794>,  <27.207663, 31.391487, 29.217739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233850, 31.211910, 29.374794>,  <27.277496, 30.912615, 29.636551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233850, 31.211910, 29.374794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124244, -0.642895, -0.755811,
		-0.986234, -0.163775, -0.022814,
		-0.109116, 0.748240, -0.654393,
		27.201117, 31.436382, 29.178476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771084, 30.637327, 29.128887>,  <27.277496, 30.912615, 29.636551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771084, 30.637327, 29.128887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030619, 30.917341, 29.009579>,  <27.186338, 31.085350, 28.937994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030619, 30.917341, 29.009579>,  <26.771084, 30.637327, 29.128887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030619, 30.917341, 29.009579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351346, -0.623311, -0.698599,
		-0.674959, 0.348479, -0.650379,
		0.648835, 0.700034, -0.298273,
		27.225269, 31.127352, 28.920097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629141, 30.654100, 28.458603>,  <26.771084, 30.637327, 29.128887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629141, 30.654100, 28.458603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992788, 30.815823, 28.498690>,  <27.210976, 30.912855, 28.522741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992788, 30.815823, 28.498690>,  <26.629141, 30.654100, 28.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992788, 30.815823, 28.498690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309353, -0.494235, -0.812424,
		-0.278937, 0.769590, -0.574390,
		0.909118, 0.404305, 0.100215,
		27.265524, 30.937115, 28.528753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858660, 30.935211, 27.785656>,  <26.629141, 30.654100, 28.458603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858660, 30.935211, 27.785656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154209, 30.828304, 28.033087>,  <27.331539, 30.764160, 28.181545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154209, 30.828304, 28.033087>,  <26.858660, 30.935211, 27.785656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154209, 30.828304, 28.033087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353591, -0.627664, -0.693550,
		0.573622, 0.731167, -0.369260,
		0.738872, -0.267269, 0.618576,
		27.375870, 30.748123, 28.218660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662512, 31.015232, 27.447308>,  <26.858660, 30.935211, 27.785656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662512, 31.015232, 27.447308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638357, 30.740997, 27.737499>,  <27.623865, 30.576456, 27.911615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638357, 30.740997, 27.737499>,  <27.662512, 31.015232, 27.447308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638357, 30.740997, 27.737499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358009, -0.693327, -0.625402,
		0.931764, 0.221962, 0.287314,
		-0.060387, -0.685588, 0.725481,
		27.620241, 30.535320, 27.955143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414085, 30.570980, 27.576256>,  <27.662512, 31.015232, 27.447308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414085, 30.570980, 27.576256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038525, 30.443983, 27.629414>,  <27.813189, 30.367785, 27.661308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038525, 30.443983, 27.629414>,  <28.414085, 30.570980, 27.576256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038525, 30.443983, 27.629414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095334, -0.610908, -0.785941,
		0.330716, -0.725252, 0.603851,
		-0.938903, -0.317491, 0.132896,
		27.756853, 30.348736, 27.669283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289061, 29.806757, 27.613152>,  <28.414085, 30.570980, 27.576256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289061, 29.806757, 27.613152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988623, 30.000416, 27.433615>,  <27.808359, 30.116611, 27.325893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988623, 30.000416, 27.433615>,  <28.289061, 29.806757, 27.613152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988623, 30.000416, 27.433615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053705, -0.722416, -0.689370,
		-0.658004, -0.493678, 0.568605,
		-0.751097, 0.484145, -0.448840,
		27.763294, 30.145660, 27.298962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980719, 29.727604, 27.975475>,  <28.289061, 29.806757, 27.613152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980719, 29.727604, 27.975475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160906, 29.428535, 28.170645>,  <29.269018, 29.249094, 28.287746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160906, 29.428535, 28.170645>,  <28.980719, 29.727604, 27.975475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160906, 29.428535, 28.170645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491638, 0.663925, 0.563468,
		-0.745231, -0.013944, 0.666661,
		0.450469, -0.747669, 0.487922,
		29.296047, 29.204235, 28.317020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826120, 29.732224, 28.743816>,  <28.980719, 29.727604, 27.975475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826120, 29.732224, 28.743816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172422, 29.541477, 28.683062>,  <29.380203, 29.427029, 28.646608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172422, 29.541477, 28.683062>,  <28.826120, 29.732224, 28.743816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172422, 29.541477, 28.683062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446620, 0.599210, 0.664438,
		-0.225838, -0.643074, 0.731746,
		0.865753, -0.476867, -0.151885,
		29.432148, 29.398417, 28.637495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173000, 29.468519, 29.329700>,  <28.826120, 29.732224, 28.743816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173000, 29.468519, 29.329700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448214, 29.560938, 29.054535>,  <29.613342, 29.616388, 28.889435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448214, 29.560938, 29.054535>,  <29.173000, 29.468519, 29.329700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448214, 29.560938, 29.054535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480631, 0.565145, 0.670526,
		0.543694, -0.791978, 0.277792,
		0.688034, 0.231045, -0.687915,
		29.654623, 29.630251, 28.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883162, 29.389641, 29.679291>,  <29.173000, 29.468519, 29.329700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883162, 29.389641, 29.679291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868473, 29.684296, 29.409174>,  <29.859659, 29.861088, 29.247105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868473, 29.684296, 29.409174>,  <29.883162, 29.389641, 29.679291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868473, 29.684296, 29.409174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386732, 0.633571, 0.670095,
		0.921461, -0.236550, -0.308146,
		-0.036722, 0.736636, -0.675292,
		29.857456, 29.905287, 29.206587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570259, 29.694313, 29.675255>,  <29.883162, 29.389641, 29.679291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570259, 29.694313, 29.675255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295666, 29.971666, 29.587656>,  <30.130909, 30.138079, 29.535097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295666, 29.971666, 29.587656>,  <30.570259, 29.694313, 29.675255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295666, 29.971666, 29.587656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267125, 0.520594, 0.810942,
		0.676302, 0.498199, -0.542599,
		-0.686484, 0.693383, -0.218997,
		30.089720, 30.179682, 29.521957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856340, 30.325567, 30.086422>,  <30.570259, 29.694313, 29.675255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856340, 30.325567, 30.086422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488554, 30.417658, 29.958937>,  <30.267881, 30.472912, 29.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488554, 30.417658, 29.958937>,  <30.856340, 30.325567, 30.086422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488554, 30.417658, 29.958937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099235, 0.648487, 0.754729,
		0.380439, 0.725576, -0.573416,
		-0.919466, 0.230226, -0.318712,
		30.212713, 30.486725, 29.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880823, 31.037987, 30.039499>,  <30.856340, 30.325567, 30.086422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880823, 31.037987, 30.039499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501123, 30.913469, 30.057501>,  <30.273304, 30.838758, 30.068302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501123, 30.913469, 30.057501>,  <30.880823, 31.037987, 30.039499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501123, 30.913469, 30.057501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172455, 0.634777, 0.753205,
		-0.263036, 0.707216, -0.656245,
		-0.949248, -0.311293, 0.045006,
		30.216349, 30.820082, 30.071003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478834, 31.653875, 30.029400>,  <30.880823, 31.037987, 30.039499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478834, 31.653875, 30.029400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250105, 31.369753, 30.193586>,  <30.112867, 31.199280, 30.292099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250105, 31.369753, 30.193586>,  <30.478834, 31.653875, 30.029400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250105, 31.369753, 30.193586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286484, 0.641735, 0.711409,
		-0.768730, 0.289207, -0.570450,
		-0.571822, -0.710307, 0.410468,
		30.078558, 31.156660, 30.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669695, 31.758745, 30.094585>,  <30.478834, 31.653875, 30.029400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669695, 31.758745, 30.094585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820396, 31.516443, 30.374905>,  <29.910816, 31.371061, 30.543097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820396, 31.516443, 30.374905>,  <29.669695, 31.758745, 30.094585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820396, 31.516443, 30.374905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285539, 0.643759, 0.709959,
		-0.881207, -0.467583, 0.069570,
		0.376751, -0.605756, 0.700798,
		29.933422, 31.334717, 30.585144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124996, 31.897219, 30.580297>,  <29.669695, 31.758745, 30.094585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124996, 31.897219, 30.580297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442959, 31.736254, 30.761929>,  <29.633736, 31.639675, 30.870907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442959, 31.736254, 30.761929>,  <29.124996, 31.897219, 30.580297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442959, 31.736254, 30.761929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110091, 0.640315, 0.760182,
		-0.596660, -0.654264, 0.464689,
		0.794907, -0.402413, 0.454079,
		29.681431, 31.615530, 30.898151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945587, 31.735126, 31.244959>,  <29.124996, 31.897219, 30.580297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945587, 31.735126, 31.244959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344671, 31.724731, 31.269951>,  <29.584122, 31.718494, 31.284946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344671, 31.724731, 31.269951>,  <28.945587, 31.735126, 31.244959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344671, 31.724731, 31.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041536, 0.493749, 0.868612,
		-0.053421, -0.869216, 0.491538,
		0.997708, -0.025986, 0.062480,
		29.643984, 31.716936, 31.288694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051195, 31.579498, 31.933338>,  <28.945587, 31.735126, 31.244959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051195, 31.579498, 31.933338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412165, 31.704157, 31.814339>,  <29.628746, 31.778952, 31.742939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412165, 31.704157, 31.814339>,  <29.051195, 31.579498, 31.933338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412165, 31.704157, 31.814339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168060, 0.381180, 0.909097,
		0.396734, -0.870384, 0.291606,
		0.902418, 0.311662, -0.297504,
		29.682892, 31.797651, 31.725088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389902, 31.598522, 32.557114>,  <29.051195, 31.579498, 31.933338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389902, 31.598522, 32.557114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619577, 31.806812, 32.304398>,  <29.757383, 31.931786, 32.152767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619577, 31.806812, 32.304398>,  <29.389902, 31.598522, 32.557114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619577, 31.806812, 32.304398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301610, 0.582868, 0.754517,
		0.761143, -0.623788, 0.177620,
		0.574188, 0.520724, -0.631787,
		29.791834, 31.963030, 32.114861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004564, 31.646830, 32.873333>,  <29.389902, 31.598522, 32.557114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004564, 31.646830, 32.873333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994236, 31.954714, 32.618187>,  <29.988039, 32.139446, 32.465099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994236, 31.954714, 32.618187>,  <30.004564, 31.646830, 32.873333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994236, 31.954714, 32.618187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123885, 0.635627, 0.761991,
		0.991961, -0.059349, -0.111767,
		-0.025819, 0.769712, -0.637869,
		29.986490, 32.185627, 32.426826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639317, 32.164150, 33.185184>,  <30.004564, 31.646830, 32.873333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639317, 32.164150, 33.185184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390165, 32.359634, 32.940830>,  <30.240675, 32.476925, 32.794216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390165, 32.359634, 32.940830>,  <30.639317, 32.164150, 33.185184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390165, 32.359634, 32.940830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072053, 0.813388, 0.577241,
		0.778994, 0.315534, -0.541855,
		-0.622877, 0.488710, -0.610890,
		30.203302, 32.506248, 32.757565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724129, 32.906464, 33.230137>,  <30.639317, 32.164150, 33.185184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724129, 32.906464, 33.230137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359909, 32.931870, 33.066738>,  <30.141378, 32.947113, 32.968700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359909, 32.931870, 33.066738>,  <30.724129, 32.906464, 33.230137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359909, 32.931870, 33.066738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105835, 0.919381, 0.378863,
		0.399626, 0.388206, -0.830419,
		-0.910548, 0.063516, -0.408494,
		30.086744, 32.950924, 32.944191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790161, 33.564056, 33.155697>,  <30.724129, 32.906464, 33.230137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790161, 33.564056, 33.155697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398464, 33.484039, 33.142609>,  <30.163446, 33.436031, 33.134754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398464, 33.484039, 33.142609>,  <30.790161, 33.564056, 33.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398464, 33.484039, 33.142609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194381, 0.880992, 0.431357,
		-0.057461, 0.428763, -0.901588,
		-0.979242, -0.200038, -0.032720,
		30.104692, 33.424026, 33.132793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476582, 34.184952, 32.956558>,  <30.790161, 33.564056, 33.155697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476582, 34.184952, 32.956558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183752, 33.972904, 33.127693>,  <30.008055, 33.845676, 33.230373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183752, 33.972904, 33.127693>,  <30.476582, 34.184952, 32.956558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183752, 33.972904, 33.127693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358669, 0.833885, 0.419516,
		-0.579159, 0.153665, -0.800601,
		-0.732074, -0.530117, 0.427837,
		29.964130, 33.813869, 33.256042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825804, 34.522469, 32.719349>,  <30.476582, 34.184952, 32.956558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825804, 34.522469, 32.719349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719019, 34.316559, 33.045227>,  <29.654947, 34.193012, 33.240753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719019, 34.316559, 33.045227>,  <29.825804, 34.522469, 32.719349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719019, 34.316559, 33.045227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395796, 0.829361, 0.394343,
		-0.878679, -0.217179, -0.425156,
		-0.266964, -0.514776, 0.814700,
		29.638929, 34.162125, 33.289639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076591, 34.640221, 32.822441>,  <29.825804, 34.522469, 32.719349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076591, 34.640221, 32.822441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201347, 34.492798, 33.172729>,  <29.276201, 34.404343, 33.382904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201347, 34.492798, 33.172729>,  <29.076591, 34.640221, 32.822441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201347, 34.492798, 33.172729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464853, 0.744656, 0.478956,
		-0.828634, -0.556465, 0.060927,
		0.311891, -0.368557, 0.875722,
		29.294914, 34.382229, 33.435448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462326, 34.695431, 33.265785>,  <29.076591, 34.640221, 32.822441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462326, 34.695431, 33.265785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774921, 34.667332, 33.513763>,  <28.962479, 34.650475, 33.662552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774921, 34.667332, 33.513763>,  <28.462326, 34.695431, 33.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774921, 34.667332, 33.513763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395053, 0.713370, 0.578823,
		-0.482913, -0.697258, 0.529742,
		0.781490, -0.070245, 0.619950,
		29.009369, 34.646259, 33.699749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185850, 34.556446, 33.787186>,  <28.462326, 34.695431, 33.265785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185850, 34.556446, 33.787186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529453, 34.733028, 33.890896>,  <28.735615, 34.838978, 33.953121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529453, 34.733028, 33.890896>,  <28.185850, 34.556446, 33.787186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529453, 34.733028, 33.890896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508004, 0.672112, 0.538699,
		0.063546, -0.594461, 0.801609,
		0.859007, 0.441453, 0.259278,
		28.787155, 34.865463, 33.968678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070059, 34.698536, 34.479919>,  <28.185850, 34.556446, 33.787186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070059, 34.698536, 34.479919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373625, 34.921452, 34.345173>,  <28.555765, 35.055199, 34.264324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373625, 34.921452, 34.345173>,  <28.070059, 34.698536, 34.479919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373625, 34.921452, 34.345173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338702, 0.779644, 0.526722,
		0.556172, -0.285639, 0.780437,
		0.758915, 0.557284, -0.336870,
		28.601299, 35.088638, 34.244110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303461, 34.954510, 35.047138>,  <28.070059, 34.698536, 34.479919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303461, 34.954510, 35.047138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410114, 35.189137, 34.741238>,  <28.474106, 35.329914, 34.557697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410114, 35.189137, 34.741238>,  <28.303461, 34.954510, 35.047138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410114, 35.189137, 34.741238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371705, 0.794675, 0.479924,
		0.889238, 0.156299, 0.429915,
		0.266631, 0.586568, -0.764752,
		28.490105, 35.365108, 34.511814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548227, 35.597057, 35.457596>,  <28.303461, 34.954510, 35.047138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548227, 35.597057, 35.457596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479132, 35.722275, 35.084038>,  <28.437675, 35.797405, 34.859901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479132, 35.722275, 35.084038>,  <28.548227, 35.597057, 35.457596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479132, 35.722275, 35.084038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180667, 0.921993, 0.342472,
		0.968257, 0.227883, -0.102706,
		-0.172738, 0.313046, -0.933897,
		28.427311, 35.816189, 34.803867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108574, 36.109604, 35.431137>,  <28.548227, 35.597057, 35.457596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108574, 36.109604, 35.431137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817619, 36.175686, 35.164719>,  <28.643047, 36.215336, 35.004868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817619, 36.175686, 35.164719>,  <29.108574, 36.109604, 35.431137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817619, 36.175686, 35.164719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182552, 0.889029, 0.419884,
		0.661502, 0.427006, -0.616508,
		-0.727386, 0.165209, -0.666045,
		28.599403, 36.225250, 34.964905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306942, 36.713032, 34.997669>,  <29.108574, 36.109604, 35.431137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306942, 36.713032, 34.997669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913090, 36.670517, 35.053101>,  <28.676779, 36.645008, 35.086361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913090, 36.670517, 35.053101>,  <29.306942, 36.713032, 34.997669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913090, 36.670517, 35.053101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041946, 0.914193, 0.403103,
		-0.169535, 0.391095, -0.904601,
		-0.984631, -0.106284, 0.138583,
		28.617701, 36.638630, 35.094677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868654, 36.450603, 34.574520>,  <29.306942, 36.713032, 34.997669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868654, 36.450603, 34.574520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847118, 36.837021, 34.675606>,  <29.834196, 37.068871, 34.736256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847118, 36.837021, 34.675606>,  <29.868654, 36.450603, 34.574520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847118, 36.837021, 34.675606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641310, -0.160535, 0.750300,
		0.765390, 0.202463, -0.610890,
		-0.053839, 0.966042, 0.252714,
		29.830967, 37.126835, 34.751419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547218, 36.718361, 34.531757>,  <29.868654, 36.450603, 34.574520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547218, 36.718361, 34.531757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299280, 36.904728, 34.784332>,  <30.150517, 37.016548, 34.935879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299280, 36.904728, 34.784332>,  <30.547218, 36.718361, 34.531757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299280, 36.904728, 34.784332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644363, -0.157055, 0.748418,
		0.447870, 0.870780, -0.202868,
		-0.619846, 0.465915, 0.631439,
		30.113327, 37.044502, 34.973763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551346, 35.981304, 34.674458>,  <30.547218, 36.718361, 34.531757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551346, 35.981304, 34.674458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702234, 36.316200, 34.832817>,  <30.792767, 36.517139, 34.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702234, 36.316200, 34.832817>,  <30.551346, 35.981304, 34.674458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702234, 36.316200, 34.832817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357251, -0.262846, 0.896261,
		0.854445, -0.479524, 0.199953,
		0.377222, 0.837239, 0.395898,
		30.815401, 36.567371, 34.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653889, 35.830456, 35.392883>,  <30.551346, 35.981304, 34.674458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653889, 35.830456, 35.392883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723642, 36.223347, 35.365086>,  <30.765493, 36.459080, 35.348408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723642, 36.223347, 35.365086>,  <30.653889, 35.830456, 35.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723642, 36.223347, 35.365086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061558, 0.081312, 0.994786,
		0.982752, -0.169195, 0.074643,
		0.174382, 0.982223, -0.069494,
		30.775957, 36.518013, 35.344238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431612, 36.103310, 35.704197>,  <30.653889, 35.830456, 35.392883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431612, 36.103310, 35.704197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096893, 36.320827, 35.729698>,  <30.896063, 36.451336, 35.744999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096893, 36.320827, 35.729698>,  <31.431612, 36.103310, 35.704197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096893, 36.320827, 35.729698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119554, -0.295105, 0.947956,
		0.534303, 0.785623, 0.311955,
		-0.836795, 0.543792, 0.063751,
		30.845854, 36.483967, 35.748825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414978, 36.658798, 36.274979>,  <31.431612, 36.103310, 35.704197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414978, 36.658798, 36.274979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047365, 36.515305, 36.209625>,  <30.826797, 36.429207, 36.170414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047365, 36.515305, 36.209625>,  <31.414978, 36.658798, 36.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047365, 36.515305, 36.209625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107739, -0.170106, 0.979518,
		-0.379178, 0.917810, 0.117682,
		-0.919030, -0.358733, -0.163385,
		30.771656, 36.407684, 36.160610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125088, 37.017712, 36.802284>,  <31.414978, 36.658798, 36.274979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125088, 37.017712, 36.802284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919260, 36.703754, 36.664204>,  <30.795763, 36.515381, 36.581356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919260, 36.703754, 36.664204>,  <31.125088, 37.017712, 36.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919260, 36.703754, 36.664204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168432, -0.302228, 0.938237,
		-0.840743, 0.540932, 0.023317,
		-0.514569, -0.784889, -0.345206,
		30.764889, 36.468288, 36.560642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569635, 37.037090, 37.148193>,  <31.125088, 37.017712, 36.802284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569635, 37.037090, 37.148193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643970, 36.656948, 37.048363>,  <30.688572, 36.428864, 36.988464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643970, 36.656948, 37.048363>,  <30.569635, 37.037090, 37.148193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643970, 36.656948, 37.048363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237481, -0.289918, 0.927119,
		-0.953450, -0.113023, -0.279569,
		0.185838, -0.950354, -0.249581,
		30.699722, 36.371841, 36.973488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946848, 36.668800, 37.291801>,  <30.569635, 37.037090, 37.148193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946848, 36.668800, 37.291801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277710, 36.444206, 37.301208>,  <30.476227, 36.309452, 37.306850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277710, 36.444206, 37.301208>,  <29.946848, 36.668800, 37.291801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277710, 36.444206, 37.301208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119732, -0.135197, 0.983558,
		-0.549071, -0.816370, -0.179056,
		0.827155, -0.561482, 0.023513,
		30.525856, 36.275761, 37.308262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842834, 36.190868, 37.779324>,  <29.946848, 36.668800, 37.291801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842834, 36.190868, 37.779324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241131, 36.162872, 37.755329>,  <30.480108, 36.146072, 37.740932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241131, 36.162872, 37.755329>,  <29.842834, 36.190868, 37.779324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241131, 36.162872, 37.755329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049370, -0.144606, 0.988257,
		-0.077846, -0.987011, -0.140534,
		0.995742, -0.069994, -0.059986,
		30.539854, 36.141872, 37.737335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981581, 35.599850, 38.209946>,  <29.842834, 36.190868, 37.779324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981581, 35.599850, 38.209946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335615, 35.782486, 38.173843>,  <30.548037, 35.892067, 38.152180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335615, 35.782486, 38.173843>,  <29.981581, 35.599850, 38.209946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335615, 35.782486, 38.173843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151632, -0.099528, 0.983413,
		0.440034, -0.884092, -0.157325,
		0.885086, 0.456591, -0.090260,
		30.601141, 35.919464, 38.146767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612549, 35.070999, 38.410069>,  <29.981581, 35.599850, 38.209946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612549, 35.070999, 38.410069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719675, 35.453957, 38.453270>,  <30.783951, 35.683731, 38.479191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719675, 35.453957, 38.453270>,  <30.612549, 35.070999, 38.410069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719675, 35.453957, 38.453270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377751, -0.207465, 0.902365,
		0.886329, -0.200868, -0.417220,
		0.267815, 0.957398, 0.108004,
		30.800020, 35.741177, 38.485672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238840, 34.975796, 38.813263>,  <30.612549, 35.070999, 38.410069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238840, 34.975796, 38.813263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097651, 35.347229, 38.859116>,  <31.012936, 35.570087, 38.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097651, 35.347229, 38.859116>,  <31.238840, 34.975796, 38.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097651, 35.347229, 38.859116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220989, -0.036312, 0.974600,
		0.909160, 0.369342, -0.192389,
		-0.352975, 0.928584, 0.114634,
		30.991758, 35.625805, 38.893505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697557, 35.296638, 39.255795>,  <31.238840, 34.975796, 38.813263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697557, 35.296638, 39.255795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407507, 35.567581, 39.305408>,  <31.233477, 35.730145, 39.335178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407507, 35.567581, 39.305408>,  <31.697557, 35.296638, 39.255795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407507, 35.567581, 39.305408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064875, -0.112127, 0.991574,
		0.685553, 0.727063, 0.037363,
		-0.725126, 0.677353, 0.124037,
		31.189968, 35.770786, 39.342621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959667, 35.758091, 39.786797>,  <31.697557, 35.296638, 39.255795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959667, 35.758091, 39.786797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566629, 35.828857, 39.764153>,  <31.330807, 35.871319, 39.750565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566629, 35.828857, 39.764153>,  <31.959667, 35.758091, 39.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566629, 35.828857, 39.764153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046505, 0.060779, 0.997067,
		0.179841, 0.982347, -0.051494,
		-0.982596, 0.176919, -0.056614,
		31.271851, 35.881931, 39.747169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770685, 36.397255, 40.279747>,  <31.959667, 35.758091, 39.786797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770685, 36.397255, 40.279747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431240, 36.192722, 40.225498>,  <31.227573, 36.070004, 40.192947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431240, 36.192722, 40.225498>,  <31.770685, 36.397255, 40.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431240, 36.192722, 40.225498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196511, 0.066670, 0.978232,
		-0.491162, 0.856791, -0.157060,
		-0.848612, -0.511335, -0.135623,
		31.176657, 36.039322, 40.184811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314995, 36.731331, 40.673439>,  <31.770685, 36.397255, 40.279747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314995, 36.731331, 40.673439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154041, 36.369732, 40.615658>,  <31.057468, 36.152771, 40.580990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154041, 36.369732, 40.615658>,  <31.314995, 36.731331, 40.673439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154041, 36.369732, 40.615658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140636, -0.094882, 0.985505,
		-0.904604, 0.416867, -0.088956,
		-0.402384, -0.904002, -0.144458,
		31.033325, 36.098530, 40.572319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829748, 36.672344, 41.277161>,  <31.314995, 36.731331, 40.673439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829748, 36.672344, 41.277161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877300, 36.299026, 41.141613>,  <30.905830, 36.075035, 41.060284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877300, 36.299026, 41.141613>,  <30.829748, 36.672344, 41.277161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877300, 36.299026, 41.141613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113968, -0.351863, 0.929088,
		-0.986346, -0.071829, -0.148194,
		0.118879, -0.933292, -0.338872,
		30.912964, 36.019039, 41.039951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269266, 36.272339, 41.522858>,  <30.829748, 36.672344, 41.277161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269266, 36.272339, 41.522858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573202, 36.023426, 41.447586>,  <30.755564, 35.874077, 41.402424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573202, 36.023426, 41.447586>,  <30.269266, 36.272339, 41.522858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573202, 36.023426, 41.447586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129725, -0.428767, 0.894053,
		-0.637037, -0.654925, -0.406519,
		0.759839, -0.622281, -0.188180,
		30.801153, 35.836742, 41.391132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987858, 35.604507, 41.794071>,  <30.269266, 36.272339, 41.522858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987858, 35.604507, 41.794071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371271, 35.514591, 41.724003>,  <30.601318, 35.460644, 41.681961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371271, 35.514591, 41.724003>,  <29.987858, 35.604507, 41.794071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371271, 35.514591, 41.724003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010832, -0.642978, 0.765808,
		-0.284778, -0.732154, -0.618750,
		0.958532, -0.224788, -0.175175,
		30.658831, 35.447155, 41.671452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999989, 34.922768, 41.816273>,  <29.987858, 35.604507, 41.794071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999989, 34.922768, 41.816273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376644, 35.041351, 41.880062>,  <30.602636, 35.112503, 41.918335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376644, 35.041351, 41.880062>,  <29.999989, 34.922768, 41.816273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376644, 35.041351, 41.880062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055528, -0.604031, 0.795024,
		0.332019, -0.739769, -0.585240,
		0.941637, 0.296461, 0.159472,
		30.659136, 35.130291, 41.927902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355196, 34.344852, 41.827015>,  <29.999989, 34.922768, 41.816273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355196, 34.344852, 41.827015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615685, 34.590397, 42.005493>,  <30.771976, 34.737724, 42.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615685, 34.590397, 42.005493>,  <30.355196, 34.344852, 41.827015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615685, 34.590397, 42.005493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191576, -0.701895, 0.686034,
		0.734311, -0.361278, -0.574687,
		0.651219, 0.613858, 0.446197,
		30.811050, 34.774555, 42.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745737, 33.776409, 42.148212>,  <30.355196, 34.344852, 41.827015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745737, 33.776409, 42.148212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800692, 34.113514, 42.356400>,  <30.833664, 34.315777, 42.481312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800692, 34.113514, 42.356400>,  <30.745737, 33.776409, 42.148212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800692, 34.113514, 42.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032628, -0.529013, 0.847986,
		0.989980, -0.099520, -0.100177,
		0.137386, 0.842758, 0.520465,
		30.841908, 34.366341, 42.512539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307714, 33.721626, 42.479691>,  <30.745737, 33.776409, 42.148212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307714, 33.721626, 42.479691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087963, 33.994778, 42.672298>,  <30.956112, 34.158669, 42.787865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087963, 33.994778, 42.672298>,  <31.307714, 33.721626, 42.479691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087963, 33.994778, 42.672298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086331, -0.526807, 0.845589,
		0.831102, 0.506119, 0.230464,
		-0.549379, 0.682875, 0.481524,
		30.923149, 34.199638, 42.816757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732777, 33.843418, 42.991013>,  <31.307714, 33.721626, 42.479691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732777, 33.843418, 42.991013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364073, 33.958996, 43.094452>,  <31.142851, 34.028343, 43.156517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364073, 33.958996, 43.094452>,  <31.732777, 33.843418, 42.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364073, 33.958996, 43.094452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197704, -0.223516, 0.954439,
		0.333580, 0.930888, 0.148902,
		-0.921758, 0.288944, 0.258601,
		31.087545, 34.045677, 43.172031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826357, 34.277683, 43.601490>,  <31.732777, 33.843418, 42.991013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826357, 34.277683, 43.601490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446579, 34.152107, 43.601494>,  <31.218712, 34.076763, 43.601494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446579, 34.152107, 43.601494>,  <31.826357, 34.277683, 43.601490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446579, 34.152107, 43.601494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110612, -0.334505, 0.935880,
		-0.293805, 0.888566, 0.352319,
		-0.949444, -0.313937, 0.000006,
		31.161745, 34.057926, 43.601498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552265, 34.411503, 44.320320>,  <31.826357, 34.277683, 43.601490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552265, 34.411503, 44.320320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297796, 34.145512, 44.163815>,  <31.145115, 33.985916, 44.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297796, 34.145512, 44.163815>,  <31.552265, 34.411503, 44.320320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297796, 34.145512, 44.163815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011996, -0.498532, 0.866788,
		-0.771454, 0.556119, 0.309175,
		-0.636171, -0.664979, -0.391266,
		31.106945, 33.946018, 44.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013359, 34.385227, 44.794964>,  <31.552265, 34.411503, 44.320320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013359, 34.385227, 44.794964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962481, 34.044876, 44.591072>,  <30.931953, 33.840664, 44.468739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962481, 34.044876, 44.591072>,  <31.013359, 34.385227, 44.794964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962481, 34.044876, 44.591072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045910, -0.518400, 0.853905,
		-0.990815, 0.085213, 0.105002,
		-0.127197, -0.850882, -0.509726,
		30.924322, 33.789612, 44.438152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391487, 33.949451, 45.127392>,  <31.013359, 34.385227, 44.794964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391487, 33.949451, 45.127392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610165, 33.696365, 44.908012>,  <30.741371, 33.544514, 44.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610165, 33.696365, 44.908012>,  <30.391487, 33.949451, 45.127392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610165, 33.696365, 44.908012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064340, -0.621318, 0.780913,
		-0.834858, -0.462207, -0.298961,
		0.546693, -0.632716, -0.548451,
		30.774172, 33.506550, 44.743477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213945, 33.328777, 45.388847>,  <30.391487, 33.949451, 45.127392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213945, 33.328777, 45.388847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564096, 33.238548, 45.217815>,  <30.774187, 33.184410, 45.115196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564096, 33.238548, 45.217815>,  <30.213945, 33.328777, 45.388847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564096, 33.238548, 45.217815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186784, -0.657969, 0.729513,
		-0.445896, -0.718466, -0.533839,
		0.875379, -0.225574, -0.427583,
		30.826710, 33.170876, 45.089539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297737, 32.580963, 45.135857>,  <30.213945, 33.328777, 45.388847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297737, 32.580963, 45.135857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665855, 32.720535, 45.206619>,  <30.886726, 32.804279, 45.249077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665855, 32.720535, 45.206619>,  <30.297737, 32.580963, 45.135857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665855, 32.720535, 45.206619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156417, -0.742667, 0.651137,
		0.358588, -0.571569, -0.738054,
		0.920298, 0.348934, 0.176908,
		30.941944, 32.825214, 45.259693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778696, 31.971878, 45.022034>,  <30.297737, 32.580963, 45.135857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778696, 31.971878, 45.022034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969421, 32.243382, 45.245441>,  <31.083857, 32.406284, 45.379486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969421, 32.243382, 45.245441>,  <30.778696, 31.971878, 45.022034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969421, 32.243382, 45.245441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152728, -0.689703, 0.707802,
		0.865636, -0.252187, -0.432523,
		0.476811, 0.678758, 0.558515,
		31.112465, 32.447010, 45.412994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177931, 31.670321, 45.508202>,  <30.778696, 31.971878, 45.022034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177931, 31.670321, 45.508202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198572, 32.019928, 45.701458>,  <31.210957, 32.229694, 45.817413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198572, 32.019928, 45.701458>,  <31.177931, 31.670321, 45.508202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198572, 32.019928, 45.701458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121153, -0.485694, 0.865692,
		0.991292, 0.013862, -0.130953,
		0.051603, 0.874019, 0.483144,
		31.214052, 32.282135, 45.846401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705809, 31.646729, 45.975090>,  <31.177931, 31.670321, 45.508202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705809, 31.646729, 45.975090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507044, 31.964197, 46.115471>,  <31.387785, 32.154678, 46.199699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507044, 31.964197, 46.115471>,  <31.705809, 31.646729, 45.975090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507044, 31.964197, 46.115471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010567, -0.409918, 0.912061,
		0.867737, 0.449504, 0.212079,
		-0.496910, 0.793671, 0.350952,
		31.357971, 32.202297, 46.220757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118362, 31.742033, 46.575340>,  <31.705809, 31.646729, 45.975090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118362, 31.742033, 46.575340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764595, 31.924673, 46.613968>,  <31.552336, 32.034256, 46.637146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764595, 31.924673, 46.613968>,  <32.118362, 31.742033, 46.575340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764595, 31.924673, 46.613968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028520, -0.259414, 0.965345,
		0.465826, 0.851013, 0.242452,
		-0.884416, 0.456598, 0.096571,
		31.499269, 32.061653, 46.642941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244804, 32.155704, 47.147854>,  <32.118362, 31.742033, 46.575340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244804, 32.155704, 47.147854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848429, 32.111622, 47.117130>,  <31.610603, 32.085171, 47.098698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848429, 32.111622, 47.117130>,  <32.244804, 32.155704, 47.147854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848429, 32.111622, 47.117130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083584, 0.058265, 0.994796,
		-0.105160, 0.992199, -0.066949,
		-0.990936, -0.110209, -0.076805,
		31.551147, 32.078560, 47.094090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886744, 32.677898, 47.510250>,  <32.244804, 32.155704, 47.147854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886744, 32.677898, 47.510250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648596, 32.356899, 47.494640>,  <31.505707, 32.164299, 47.485275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648596, 32.356899, 47.494640>,  <31.886744, 32.677898, 47.510250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648596, 32.356899, 47.494640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014701, -0.037681, 0.999182,
		-0.803316, 0.595458, 0.010637,
		-0.595371, -0.802502, -0.039023,
		31.469984, 32.116150, 47.482933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642977, 32.692356, 48.185272>,  <31.886744, 32.677898, 47.510250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642977, 32.692356, 48.185272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530184, 32.334599, 48.046394>,  <31.462509, 32.119946, 47.963066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530184, 32.334599, 48.046394>,  <31.642977, 32.692356, 48.185272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530184, 32.334599, 48.046394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029108, -0.353742, 0.934890,
		-0.958978, 0.273728, 0.073715,
		-0.281981, -0.894394, -0.347198,
		31.445589, 32.066280, 47.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068419, 32.451305, 48.545860>,  <31.642977, 32.692356, 48.185272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068419, 32.451305, 48.545860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239698, 32.128883, 48.382435>,  <31.342466, 31.935431, 48.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239698, 32.128883, 48.382435>,  <31.068419, 32.451305, 48.545860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239698, 32.128883, 48.382435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117046, -0.497765, 0.859378,
		-0.896072, -0.320165, -0.307488,
		0.428199, -0.806055, -0.408559,
		31.368158, 31.887068, 48.259869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675125, 31.900209, 48.812828>,  <31.068419, 32.451305, 48.545860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675125, 31.900209, 48.812828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023289, 31.734266, 48.706783>,  <31.232187, 31.634701, 48.643154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023289, 31.734266, 48.706783>,  <30.675125, 31.900209, 48.812828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023289, 31.734266, 48.706783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026116, -0.576632, 0.816586,
		-0.491639, -0.703839, -0.512739,
		0.870407, -0.414857, -0.265113,
		31.284410, 31.609810, 48.627251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650862, 31.180531, 49.062164>,  <30.675125, 31.900209, 48.812828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650862, 31.180531, 49.062164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036453, 31.257288, 48.988491>,  <31.267807, 31.303343, 48.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036453, 31.257288, 48.988491>,  <30.650862, 31.180531, 49.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036453, 31.257288, 48.988491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251354, -0.430714, 0.866779,
		0.087000, -0.881851, -0.463432,
		0.963977, 0.191895, -0.184185,
		31.325647, 31.314856, 48.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136772, 30.543686, 49.018887>,  <30.650862, 31.180531, 49.062164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136772, 30.543686, 49.018887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369442, 30.852644, 49.120914>,  <31.509045, 31.038019, 49.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369442, 30.852644, 49.120914>,  <31.136772, 30.543686, 49.018887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369442, 30.852644, 49.120914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424759, -0.555850, 0.714570,
		0.693710, -0.307305, -0.651406,
		0.581676, 0.772395, 0.255068,
		31.543945, 31.084362, 49.197433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768925, 30.221769, 49.119476>,  <31.136772, 30.543686, 49.018887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768925, 30.221769, 49.119476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793375, 30.570921, 49.313114>,  <31.808046, 30.780413, 49.429295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793375, 30.570921, 49.313114>,  <31.768925, 30.221769, 49.119476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793375, 30.570921, 49.313114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321555, -0.476362, 0.818341,
		0.944916, 0.105639, -0.309798,
		0.061127, 0.872880, 0.484091,
		31.811712, 30.832785, 49.458340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372490, 30.082169, 49.494186>,  <31.768925, 30.221769, 49.119476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372490, 30.082169, 49.494186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 30.412319, 49.657005>,  <32.122101, 30.610411, 49.754696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 30.412319, 49.657005>,  <32.372490, 30.082169, 49.494186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215996, 30.412319, 49.657005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362148, -0.268537, 0.892601,
		0.846040, 0.496628, -0.193847,
		-0.391236, 0.825378, 0.407046,
		32.098625, 30.659933, 49.779118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764275, 30.324362, 50.001453>,  <32.372490, 30.082169, 49.494186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764275, 30.324362, 50.001453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431980, 30.515257, 50.116081>,  <32.232605, 30.629793, 50.184860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431980, 30.515257, 50.116081>,  <32.764275, 30.324362, 50.001453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431980, 30.515257, 50.116081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122332, -0.345703, 0.930335,
		0.543058, 0.807920, 0.228807,
		-0.830736, 0.477236, 0.286572,
		32.182758, 30.658428, 50.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929462, 30.685562, 50.621975>,  <32.764275, 30.324362, 50.001453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929462, 30.685562, 50.621975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538414, 30.603081, 50.605343>,  <32.303783, 30.553593, 50.595364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538414, 30.603081, 50.605343>,  <32.929462, 30.685562, 50.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538414, 30.603081, 50.605343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044007, -0.393783, 0.918149,
		-0.205698, 0.895777, 0.394046,
		-0.977626, -0.206202, -0.041580,
		32.245125, 30.541220, 50.592869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723564, 30.792114, 51.321785>,  <32.929462, 30.685562, 50.621975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723564, 30.792114, 51.321785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425159, 30.593679, 51.144081>,  <32.246117, 30.474619, 51.037460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425159, 30.593679, 51.144081>,  <32.723564, 30.792114, 51.321785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425159, 30.593679, 51.144081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177088, -0.495316, 0.850471,
		-0.641958, 0.713133, 0.281659,
		-0.746009, -0.496089, -0.444260,
		32.201355, 30.444853, 51.010803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104275, 30.769592, 51.829910>,  <32.723564, 30.792114, 51.321785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104275, 30.769592, 51.829910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061825, 30.473330, 51.564529>,  <32.036354, 30.295572, 51.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061825, 30.473330, 51.564529>,  <32.104275, 30.769592, 51.829910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061825, 30.473330, 51.564529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068242, -0.660221, 0.747965,
		-0.992008, 0.124653, 0.019522,
		-0.106125, -0.740655, -0.663451,
		32.029987, 30.251133, 51.365494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435625, 30.370560, 51.970425>,  <32.104275, 30.769592, 51.829910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435625, 30.370560, 51.970425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675072, 30.133472, 51.754890>,  <31.818741, 29.991220, 51.625568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675072, 30.133472, 51.754890>,  <31.435625, 30.370560, 51.970425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675072, 30.133472, 51.754890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086933, -0.716771, 0.691868,
		-0.796305, -0.367321, -0.480597,
		0.598615, -0.592718, -0.538837,
		31.854658, 29.955658, 51.593239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212929, 29.676821, 52.007984>,  <31.435625, 30.370560, 51.970425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212929, 29.676821, 52.007984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609882, 29.695208, 51.962273>,  <31.848055, 29.706240, 51.934845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609882, 29.695208, 51.962273>,  <31.212929, 29.676821, 52.007984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609882, 29.695208, 51.962273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120838, -0.543410, 0.830725,
		-0.023914, -0.838208, -0.544826,
		0.992384, 0.045969, -0.114283,
		31.907598, 29.708998, 51.927986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508135, 28.985828, 52.065907>,  <31.212929, 29.676821, 52.007984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508135, 28.985828, 52.065907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755533, 29.271542, 52.196911>,  <31.903973, 29.442968, 52.275513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755533, 29.271542, 52.196911>,  <31.508135, 28.985828, 52.065907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755533, 29.271542, 52.196911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050688, -0.452189, 0.890481,
		0.784150, -0.534159, -0.315883,
		0.618497, 0.714282, 0.327509,
		31.941082, 29.485826, 52.295162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173611, 28.686750, 52.329235>,  <31.508135, 28.985828, 52.065907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173611, 28.686750, 52.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057602, 29.027142, 52.504379>,  <31.987997, 29.231377, 52.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057602, 29.027142, 52.504379>,  <32.173611, 28.686750, 52.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057602, 29.027142, 52.504379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095944, -0.429365, 0.898020,
		0.952199, 0.302455, 0.042879,
		-0.290022, 0.850980, 0.437859,
		31.970596, 29.282436, 52.635738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641937, 28.992832, 52.872776>,  <32.173611, 28.686750, 52.329235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641937, 28.992832, 52.872776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272972, 29.112759, 52.970158>,  <32.051594, 29.184713, 53.028587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272972, 29.112759, 52.970158>,  <32.641937, 28.992832, 52.872776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272972, 29.112759, 52.970158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149185, -0.304825, 0.940652,
		0.356231, 0.903987, 0.236446,
		-0.922412, 0.299815, 0.243450,
		31.996248, 29.202703, 53.043194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610222, 29.363949, 53.564926>,  <32.641937, 28.992832, 52.872776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610222, 29.363949, 53.564926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241684, 29.222406, 53.500538>,  <32.020561, 29.137482, 53.461906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241684, 29.222406, 53.500538>,  <32.610222, 29.363949, 53.564926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241684, 29.222406, 53.500538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095181, -0.196134, 0.975947,
		-0.376917, 0.914504, 0.147027,
		-0.921344, -0.353857, -0.160969,
		31.965281, 29.116249, 53.452248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159416, 28.907255, 53.664745>,  <32.610222, 29.363949, 53.564926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159416, 28.907255, 53.664745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368511, 28.956341, 53.327301>,  <33.493969, 28.985792, 53.124832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368511, 28.956341, 53.327301>,  <33.159416, 28.907255, 53.664745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368511, 28.956341, 53.327301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771883, -0.351917, -0.529481,
		-0.361857, 0.927952, -0.089241,
		0.522739, 0.122713, -0.843615,
		33.525333, 28.993155, 53.074215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413063, 28.465113, 53.131279>,  <33.159416, 28.907255, 53.664745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413063, 28.465113, 53.131279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551666, 28.118513, 52.987549>,  <33.634830, 27.910553, 52.901310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551666, 28.118513, 52.987549>,  <33.413063, 28.465113, 53.131279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551666, 28.118513, 52.987549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690416, 0.023728, -0.723023,
		0.635023, 0.498618, -0.590021,
		0.346513, -0.866497, -0.359322,
		33.655621, 27.858564, 52.879753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446255, 28.467861, 52.461796>,  <33.413063, 28.465113, 53.131279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446255, 28.467861, 52.461796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447517, 28.071756, 52.517464>,  <33.448277, 27.834093, 52.550865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447517, 28.071756, 52.517464>,  <33.446255, 28.467861, 52.461796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447517, 28.071756, 52.517464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393290, -0.129186, -0.910294,
		0.919409, -0.051858, -0.389869,
		0.003159, -0.990264, 0.139170,
		33.448463, 27.774677, 52.559216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841503, 28.096666, 51.826015>,  <33.446255, 28.467861, 52.461796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841503, 28.096666, 51.826015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574932, 27.857830, 52.004616>,  <33.414989, 27.714529, 52.111774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574932, 27.857830, 52.004616>,  <33.841503, 28.096666, 51.826015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574932, 27.857830, 52.004616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406943, -0.210493, -0.888870,
		0.624720, -0.774065, -0.102704,
		-0.666425, -0.597090, 0.446499,
		33.375004, 27.678703, 52.138565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903645, 27.434982, 51.532322>,  <33.841503, 28.096666, 51.826015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903645, 27.434982, 51.532322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552853, 27.575132, 51.663864>,  <33.342377, 27.659222, 51.742790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552853, 27.575132, 51.663864>,  <33.903645, 27.434982, 51.532322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552853, 27.575132, 51.663864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293532, 0.151228, -0.943912,
		-0.380453, -0.924321, -0.029778,
		-0.876980, 0.350374, 0.328853,
		33.289757, 27.680244, 51.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288284, 26.979229, 51.301548>,  <33.903645, 27.434982, 51.532322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288284, 26.979229, 51.301548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221844, 27.371466, 51.343212>,  <33.181980, 27.606808, 51.368210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221844, 27.371466, 51.343212>,  <33.288284, 26.979229, 51.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221844, 27.371466, 51.343212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313551, 0.047629, -0.948376,
		-0.934932, -0.190184, 0.299554,
		-0.166099, 0.980592, 0.104162,
		33.172012, 27.665644, 51.374462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681915, 27.127098, 50.931641>,  <33.288284, 26.979229, 51.301548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681915, 27.127098, 50.931641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862770, 27.483162, 50.954216>,  <32.971283, 27.696800, 50.967762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862770, 27.483162, 50.954216>,  <32.681915, 27.127098, 50.931641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862770, 27.483162, 50.954216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244130, 0.184366, -0.952055,
		-0.857888, 0.416682, 0.300674,
		0.452138, 0.890160, 0.056441,
		32.998413, 27.750210, 50.971149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257851, 27.514793, 50.558544>,  <32.681915, 27.127098, 50.931641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257851, 27.514793, 50.558544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591572, 27.734251, 50.580189>,  <32.791805, 27.865925, 50.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591572, 27.734251, 50.580189>,  <32.257851, 27.514793, 50.558544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591572, 27.734251, 50.580189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075633, 0.211133, -0.974527,
		-0.546094, 0.808957, 0.217645,
		0.834303, 0.548644, 0.054115,
		32.841862, 27.898844, 50.596424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115162, 28.172844, 50.161034>,  <32.257851, 27.514793, 50.558544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115162, 28.172844, 50.161034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512554, 28.217966, 50.167641>,  <32.750988, 28.245039, 50.171604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512554, 28.217966, 50.167641>,  <32.115162, 28.172844, 50.161034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512554, 28.217966, 50.167641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030705, 0.404252, -0.914132,
		-0.109794, 0.907665, 0.405080,
		0.993480, 0.112804, 0.016515,
		32.810596, 28.251808, 50.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328190, 28.795620, 49.861671>,  <32.115162, 28.172844, 50.161034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328190, 28.795620, 49.861671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672249, 28.591867, 49.851246>,  <32.878685, 28.469616, 49.844990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672249, 28.591867, 49.851246>,  <32.328190, 28.795620, 49.861671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672249, 28.591867, 49.851246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072027, 0.171894, -0.982479,
		0.504936, 0.843198, 0.184544,
		0.860146, -0.509381, -0.026063,
		32.930294, 28.439053, 49.843426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765705, 29.148357, 49.385326>,  <32.328190, 28.795620, 49.861671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765705, 29.148357, 49.385326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942459, 28.790545, 49.412289>,  <33.048512, 28.575857, 49.428467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942459, 28.790545, 49.412289>,  <32.765705, 29.148357, 49.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942459, 28.790545, 49.412289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164675, 0.007021, -0.986323,
		0.881826, 0.446945, 0.150409,
		0.441888, -0.894534, 0.067409,
		33.075024, 28.522184, 49.432510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460030, 29.179642, 49.194252>,  <32.765705, 29.148357, 49.385326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460030, 29.179642, 49.194252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328838, 28.812696, 49.104034>,  <33.250122, 28.592529, 49.049904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328838, 28.812696, 49.104034>,  <33.460030, 29.179642, 49.194252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328838, 28.812696, 49.104034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260159, 0.141809, -0.955096,
		0.908155, -0.371932, 0.192150,
		-0.327982, -0.917364, -0.225546,
		33.230442, 28.537487, 49.036369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985474, 29.008244, 48.749027>,  <33.460030, 29.179642, 49.194252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985474, 29.008244, 48.749027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712677, 28.726561, 48.670063>,  <33.549000, 28.557550, 48.622684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712677, 28.726561, 48.670063>,  <33.985474, 29.008244, 48.749027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712677, 28.726561, 48.670063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208065, 0.071951, -0.975465,
		0.701136, -0.706337, 0.097451,
		-0.681995, -0.704210, -0.197412,
		33.508080, 28.515297, 48.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257885, 28.826876, 48.186180>,  <33.985474, 29.008244, 48.749027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257885, 28.826876, 48.186180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910965, 28.630833, 48.151348>,  <33.702812, 28.513206, 48.130447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910965, 28.630833, 48.151348>,  <34.257885, 28.826876, 48.186180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910965, 28.630833, 48.151348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027654, 0.127225, -0.991488,
		0.497014, -0.862328, -0.096789,
		-0.867302, -0.490107, -0.087079,
		33.650776, 28.483801, 48.125225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281967, 28.374777, 47.621765>,  <34.257885, 28.826876, 48.186180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281967, 28.374777, 47.621765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895878, 28.444637, 47.699577>,  <33.664223, 28.486553, 47.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895878, 28.444637, 47.699577>,  <34.281967, 28.374777, 47.621765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895878, 28.444637, 47.699577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147487, 0.250609, -0.956788,
		-0.215857, -0.952204, -0.216134,
		-0.965222, 0.174652, 0.194533,
		33.606312, 28.497032, 47.757938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878403, 28.039381, 47.045143>,  <34.281967, 28.374777, 47.621765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878403, 28.039381, 47.045143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637215, 28.313835, 47.207943>,  <33.492500, 28.478508, 47.305622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637215, 28.313835, 47.207943>,  <33.878403, 28.039381, 47.045143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637215, 28.313835, 47.207943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247142, 0.324416, -0.913058,
		-0.758517, -0.651132, -0.026041,
		-0.602970, 0.686135, 0.406997,
		33.456322, 28.519676, 47.330044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308598, 28.137735, 46.549843>,  <33.878403, 28.039381, 47.045143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308598, 28.137735, 46.549843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247307, 28.450148, 46.792004>,  <33.210533, 28.637594, 46.937302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247307, 28.450148, 46.792004>,  <33.308598, 28.137735, 46.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247307, 28.450148, 46.792004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418367, 0.503753, -0.755779,
		-0.895260, -0.369088, 0.249568,
		-0.153228, 0.781029, 0.605404,
		33.201340, 28.684456, 46.973625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593670, 28.463093, 46.346085>,  <33.308598, 28.137735, 46.549843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593670, 28.463093, 46.346085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823101, 28.734190, 46.530117>,  <32.960758, 28.896849, 46.640537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823101, 28.734190, 46.530117>,  <32.593670, 28.463093, 46.346085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823101, 28.734190, 46.530117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282753, 0.690943, -0.665318,
		-0.768803, 0.251524, 0.587944,
		0.573579, 0.677741, 0.460080,
		32.995174, 28.937511, 46.668140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259621, 29.153095, 46.388329>,  <32.593670, 28.463093, 46.346085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259621, 29.153095, 46.388329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647198, 29.244240, 46.426746>,  <32.879745, 29.298927, 46.449799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647198, 29.244240, 46.426746>,  <32.259621, 29.153095, 46.388329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647198, 29.244240, 46.426746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115068, 0.759288, -0.640500,
		-0.218873, 0.609558, 0.761928,
		0.968945, 0.227861, 0.096047,
		32.937881, 29.312597, 46.455559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280678, 29.851830, 46.332088>,  <32.259621, 29.153095, 46.388329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280678, 29.851830, 46.332088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655510, 29.740908, 46.247253>,  <32.880409, 29.674355, 46.196354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655510, 29.740908, 46.247253>,  <32.280678, 29.851830, 46.332088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655510, 29.740908, 46.247253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040463, 0.517134, -0.854947,
		0.346757, 0.809737, 0.473377,
		0.937082, -0.277305, -0.212084,
		32.936634, 29.657717, 46.183628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587486, 30.468596, 46.245304>,  <32.280678, 29.851830, 46.332088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587486, 30.468596, 46.245304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802528, 30.189524, 46.055897>,  <32.931553, 30.022081, 45.942253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802528, 30.189524, 46.055897>,  <32.587486, 30.468596, 46.245304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802528, 30.189524, 46.055897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024675, 0.548321, -0.835904,
		0.842834, 0.461072, 0.277566,
		0.537607, -0.697679, -0.473521,
		32.963810, 29.980221, 45.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151142, 30.847239, 45.899830>,  <32.587486, 30.468596, 46.245304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151142, 30.847239, 45.899830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134655, 30.489594, 45.721451>,  <33.124763, 30.275007, 45.614426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134655, 30.489594, 45.721451>,  <33.151142, 30.847239, 45.899830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134655, 30.489594, 45.721451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003795, 0.446459, -0.894796,
		0.999143, -0.035188, -0.021795,
		-0.041216, -0.894112, -0.445943,
		33.122292, 30.221359, 45.587669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702824, 30.819813, 45.393944>,  <33.151142, 30.847239, 45.899830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702824, 30.819813, 45.393944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433838, 30.552088, 45.267574>,  <33.272446, 30.391453, 45.191753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433838, 30.552088, 45.267574>,  <33.702824, 30.819813, 45.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433838, 30.552088, 45.267574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053835, 0.381482, -0.922807,
		0.738166, -0.637566, -0.220502,
		-0.672468, -0.669314, -0.315921,
		33.232098, 30.351294, 45.172798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881458, 30.695566, 44.699162>,  <33.702824, 30.819813, 45.393944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881458, 30.695566, 44.699162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507156, 30.554874, 44.709332>,  <33.282574, 30.470459, 44.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507156, 30.554874, 44.709332>,  <33.881458, 30.695566, 44.699162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507156, 30.554874, 44.709332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109924, 0.222428, -0.968732,
		0.335080, -0.909291, -0.246802,
		-0.935756, -0.351732, 0.025422,
		33.226429, 30.449356, 44.716957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810085, 30.241817, 44.161488>,  <33.881458, 30.695566, 44.699162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810085, 30.241817, 44.161488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435188, 30.358540, 44.237839>,  <33.210251, 30.428572, 44.283649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435188, 30.358540, 44.237839>,  <33.810085, 30.241817, 44.161488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435188, 30.358540, 44.237839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162860, 0.117699, -0.979604,
		-0.308319, -0.949209, -0.062789,
		-0.937239, 0.291805, 0.190877,
		33.154018, 30.446081, 44.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368736, 29.954620, 43.608284>,  <33.810085, 30.241817, 44.161488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368736, 29.954620, 43.608284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162598, 30.266920, 43.749615>,  <33.038914, 30.454300, 43.834415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162598, 30.266920, 43.749615>,  <33.368736, 29.954620, 43.608284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162598, 30.266920, 43.749615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339897, 0.192264, -0.920600,
		-0.786692, -0.594527, 0.166291,
		-0.515350, 0.780751, 0.353331,
		33.007992, 30.501146, 43.855614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740692, 29.955702, 43.133297>,  <33.368736, 29.954620, 43.608284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740692, 29.955702, 43.133297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784504, 30.310570, 43.312599>,  <32.810791, 30.523491, 43.420181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784504, 30.310570, 43.312599>,  <32.740692, 29.955702, 43.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784504, 30.310570, 43.312599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299623, 0.459460, -0.836135,
		-0.947750, -0.042727, 0.316141,
		0.109529, 0.887170, 0.448255,
		32.817364, 30.576721, 43.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162167, 30.354525, 42.948517>,  <32.740692, 29.955702, 43.133297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162167, 30.354525, 42.948517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398460, 30.639025, 43.100914>,  <32.540237, 30.809725, 43.192352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398460, 30.639025, 43.100914>,  <32.162167, 30.354525, 42.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398460, 30.639025, 43.100914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410579, 0.671459, -0.616901,
		-0.694591, 0.207999, 0.688680,
		0.590735, 0.711252, 0.380989,
		32.575680, 30.852400, 43.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772377, 30.975866, 43.099819>,  <32.162167, 30.354525, 42.948517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772377, 30.975866, 43.099819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138050, 31.126583, 43.040092>,  <32.357456, 31.217012, 43.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138050, 31.126583, 43.040092>,  <31.772377, 30.975866, 43.099819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138050, 31.126583, 43.040092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366638, 0.611781, -0.700929,
		-0.172752, 0.695524, 0.697426,
		0.914185, 0.376790, -0.149319,
		32.412304, 31.239620, 42.995296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645386, 31.720703, 43.009949>,  <31.772377, 30.975866, 43.099819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645386, 31.720703, 43.009949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994102, 31.650660, 42.826942>,  <32.203331, 31.608633, 42.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994102, 31.650660, 42.826942>,  <31.645386, 31.720703, 43.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994102, 31.650660, 42.826942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255016, 0.635183, -0.729046,
		0.418267, 0.752249, 0.509092,
		0.871791, -0.175109, -0.457512,
		32.255638, 31.598127, 42.689690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735043, 32.291847, 42.638409>,  <31.645386, 31.720703, 43.009949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735043, 32.291847, 42.638409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992531, 32.043320, 42.459705>,  <32.147022, 31.894203, 42.352486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992531, 32.043320, 42.459705>,  <31.735043, 32.291847, 42.638409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992531, 32.043320, 42.459705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080180, 0.525824, -0.846806,
		0.761049, 0.580927, 0.288667,
		0.643720, -0.621316, -0.446756,
		32.185646, 31.856924, 42.325680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169109, 32.800884, 42.353813>,  <31.735043, 32.291847, 42.638409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169109, 32.800884, 42.353813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236523, 32.469414, 42.140312>,  <32.276970, 32.270531, 42.012211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236523, 32.469414, 42.140312>,  <32.169109, 32.800884, 42.353813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236523, 32.469414, 42.140312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021523, 0.544459, -0.838511,
		0.985460, 0.129832, 0.109597,
		0.168537, -0.828679, -0.533748,
		32.287083, 32.220810, 41.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588615, 32.906704, 41.779522>,  <32.169109, 32.800884, 42.353813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588615, 32.906704, 41.779522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441860, 32.551662, 41.668133>,  <32.353806, 32.338638, 41.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441860, 32.551662, 41.668133>,  <32.588615, 32.906704, 41.779522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441860, 32.551662, 41.668133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022137, 0.307590, -0.951261,
		0.930001, -0.342844, -0.132501,
		-0.366890, -0.887607, -0.278470,
		32.331795, 32.285381, 41.584591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966770, 32.710625, 41.227116>,  <32.588615, 32.906704, 41.779522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966770, 32.710625, 41.227116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628212, 32.500175, 41.194096>,  <32.425076, 32.373905, 41.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628212, 32.500175, 41.194096>,  <32.966770, 32.710625, 41.227116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628212, 32.500175, 41.194096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016935, 0.181523, -0.983241,
		0.532286, -0.830812, -0.162550,
		-0.846395, -0.526118, -0.082552,
		32.374294, 32.342339, 41.169331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940052, 32.282558, 40.723427>,  <32.966770, 32.710625, 41.227116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940052, 32.282558, 40.723427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541325, 32.312668, 40.733959>,  <32.302090, 32.330734, 40.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541325, 32.312668, 40.733959>,  <32.940052, 32.282558, 40.723427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541325, 32.312668, 40.733959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000689, 0.322024, -0.946731,
		-0.079744, -0.943734, -0.320946,
		-0.996815, 0.075275, 0.026330,
		32.242279, 32.335251, 40.741859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639614, 31.945282, 40.072105>,  <32.940052, 32.282558, 40.723427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639614, 31.945282, 40.072105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345871, 32.181870, 40.205307>,  <32.169624, 32.323822, 40.285229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345871, 32.181870, 40.205307>,  <32.639614, 31.945282, 40.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345871, 32.181870, 40.205307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195357, 0.285668, -0.938205,
		-0.650047, -0.754028, -0.094234,
		-0.734353, 0.591469, 0.333002,
		32.125565, 32.359310, 40.305206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929033, 31.803026, 39.833332>,  <32.639614, 31.945282, 40.072105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929033, 31.803026, 39.833332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917879, 32.190983, 39.930103>,  <31.911186, 32.423756, 39.988167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917879, 32.190983, 39.930103>,  <31.929033, 31.803026, 39.833332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917879, 32.190983, 39.930103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481375, 0.199083, -0.853606,
		-0.876071, -0.140263, 0.461331,
		-0.027886, 0.969893, 0.241930,
		31.909513, 32.481949, 40.002682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365387, 32.077679, 39.497093>,  <31.929033, 31.803026, 39.833332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365387, 32.077679, 39.497093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525597, 32.418858, 39.630997>,  <31.621723, 32.623566, 39.711338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525597, 32.418858, 39.630997>,  <31.365387, 32.077679, 39.497093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525597, 32.418858, 39.630997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340729, 0.477787, -0.809706,
		-0.850579, 0.210245, 0.481989,
		0.400524, 0.852946, 0.334759,
		31.645754, 32.674740, 39.731422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911217, 32.637188, 39.288704>,  <31.365387, 32.077679, 39.497093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911217, 32.637188, 39.288704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261061, 32.827068, 39.328129>,  <31.470966, 32.940998, 39.351784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261061, 32.827068, 39.328129>,  <30.911217, 32.637188, 39.288704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261061, 32.827068, 39.328129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118678, 0.406722, -0.905811,
		-0.470078, 0.780535, 0.412059,
		0.874610, 0.474704, 0.098559,
		31.523443, 32.969479, 39.357697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791645, 33.365932, 39.114799>,  <30.911217, 32.637188, 39.288704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791645, 33.365932, 39.114799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177473, 33.276299, 39.059105>,  <31.408970, 33.222519, 39.025688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177473, 33.276299, 39.059105>,  <30.791645, 33.365932, 39.114799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177473, 33.276299, 39.059105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076606, 0.267138, -0.960608,
		0.252452, 0.937243, 0.240508,
		0.964572, -0.224083, -0.139238,
		31.466845, 33.209072, 39.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013866, 33.856232, 38.681126>,  <30.791645, 33.365932, 39.114799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013866, 33.856232, 38.681126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330835, 33.613773, 38.653847>,  <31.521017, 33.468300, 38.637478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330835, 33.613773, 38.653847>,  <31.013866, 33.856232, 38.681126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330835, 33.613773, 38.653847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206748, 0.372097, -0.904875,
		0.573862, 0.702945, 0.420178,
		0.792425, -0.606145, -0.068199,
		31.568563, 33.431931, 38.633389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569725, 34.287224, 38.295982>,  <31.013866, 33.856232, 38.681126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569725, 34.287224, 38.295982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666063, 33.902802, 38.241764>,  <31.723866, 33.672150, 38.209232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666063, 33.902802, 38.241764>,  <31.569725, 34.287224, 38.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666063, 33.902802, 38.241764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356287, 0.217449, -0.908722,
		0.902803, 0.170569, 0.394782,
		0.240845, -0.961053, -0.135542,
		31.738317, 33.614487, 38.201103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260921, 34.266003, 37.994614>,  <31.569725, 34.287224, 38.295982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260921, 34.266003, 37.994614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099266, 33.908512, 37.916721>,  <32.002274, 33.694016, 37.869987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099266, 33.908512, 37.916721>,  <32.260921, 34.266003, 37.994614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099266, 33.908512, 37.916721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410329, 0.013130, -0.911843,
		0.817499, -0.448412, 0.361417,
		-0.404136, -0.893730, -0.194730,
		31.978025, 33.640392, 37.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803997, 33.796921, 37.844341>,  <32.260921, 34.266003, 37.994614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803997, 33.796921, 37.844341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442081, 33.773865, 37.675564>,  <32.224934, 33.760033, 37.574299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442081, 33.773865, 37.675564>,  <32.803997, 33.796921, 37.844341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442081, 33.773865, 37.675564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423767, -0.023779, -0.905459,
		0.042159, -0.998054, 0.045942,
		-0.904789, -0.057642, -0.421940,
		32.170643, 33.756573, 37.548981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831638, 33.452579, 37.244015>,  <32.803997, 33.796921, 37.844341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831638, 33.452579, 37.244015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514870, 33.689159, 37.183289>,  <32.324806, 33.831108, 37.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514870, 33.689159, 37.183289>,  <32.831638, 33.452579, 37.244015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514870, 33.689159, 37.183289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349901, 0.235787, -0.906628,
		-0.500426, -0.771100, -0.393673,
		-0.791924, 0.591447, -0.151815,
		32.277294, 33.866592, 37.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406769, 33.669338, 36.946938>,  <32.831638, 33.452579, 37.244015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406769, 33.669338, 36.946938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758968, 33.826492, 36.840832>,  <33.970287, 33.920784, 36.777168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758968, 33.826492, 36.840832>,  <33.406769, 33.669338, 36.946938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758968, 33.826492, 36.840832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367853, -0.213314, 0.905086,
		0.299011, -0.894504, -0.332347,
		0.880498, 0.392886, -0.265263,
		34.023117, 33.944359, 36.761253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037071, 33.239689, 36.888313>,  <33.406769, 33.669338, 36.946938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037071, 33.239689, 36.888313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147617, 33.588978, 37.048862>,  <34.213943, 33.798553, 37.145191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147617, 33.588978, 37.048862>,  <34.037071, 33.239689, 36.888313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147617, 33.588978, 37.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470738, -0.487105, 0.735618,
		0.837871, -0.014358, -0.545680,
		0.276365, 0.873225, 0.401372,
		34.230526, 33.850945, 37.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764034, 33.114422, 37.190189>,  <34.037071, 33.239689, 36.888313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764034, 33.114422, 37.190189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614265, 33.431034, 37.383389>,  <34.524403, 33.621002, 37.499310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614265, 33.431034, 37.383389>,  <34.764034, 33.114422, 37.190189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614265, 33.431034, 37.383389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569870, -0.214478, 0.793251,
		0.731473, 0.572261, -0.370762,
		-0.374426, 0.791528, 0.483000,
		34.501938, 33.668491, 37.528290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362579, 33.478306, 37.476334>,  <34.764034, 33.114422, 37.190189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362579, 33.478306, 37.476334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039330, 33.558212, 37.697975>,  <34.845379, 33.606155, 37.830959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039330, 33.558212, 37.697975>,  <35.362579, 33.478306, 37.476334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039330, 33.558212, 37.697975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461261, -0.370393, 0.806255,
		0.366301, 0.907139, 0.207177,
		-0.808122, 0.199769, 0.554103,
		34.796894, 33.618141, 37.864204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621624, 33.779945, 38.092491>,  <35.362579, 33.478306, 37.476334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621624, 33.779945, 38.092491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264370, 33.616329, 38.167316>,  <35.050018, 33.518158, 38.212212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264370, 33.616329, 38.167316>,  <35.621624, 33.779945, 38.092491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264370, 33.616329, 38.167316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, -0.551584, 0.729028,
		-0.195021, 0.726939, 0.658427,
		-0.893136, -0.409041, 0.187064,
		34.996429, 33.493618, 38.223434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546368, 33.888046, 38.864094>,  <35.621624, 33.779945, 38.092491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546368, 33.888046, 38.864094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259819, 33.620209, 38.785652>,  <35.087891, 33.459507, 38.738586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259819, 33.620209, 38.785652>,  <35.546368, 33.888046, 38.864094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259819, 33.620209, 38.785652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063277, -0.342254, 0.937475,
		-0.694841, 0.659174, 0.287552,
		-0.716375, -0.669591, -0.196101,
		35.044907, 33.419331, 38.726822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021004, 33.922146, 39.406052>,  <35.546368, 33.888046, 38.864094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021004, 33.922146, 39.406052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957405, 33.560017, 39.248520>,  <34.919247, 33.342739, 39.153999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957405, 33.560017, 39.248520>,  <35.021004, 33.922146, 39.406052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957405, 33.560017, 39.248520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087277, -0.410234, 0.907794,
		-0.983414, 0.109963, 0.144240,
		-0.158996, -0.905326, -0.393832,
		34.909706, 33.288418, 39.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480434, 33.646019, 39.731308>,  <35.021004, 33.922146, 39.406052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480434, 33.646019, 39.731308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664776, 33.319298, 39.592491>,  <34.775379, 33.123264, 39.509201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664776, 33.319298, 39.592491>,  <34.480434, 33.646019, 39.731308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664776, 33.319298, 39.592491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024968, -0.378960, 0.925076,
		-0.887126, -0.434988, -0.154250,
		0.460852, -0.816808, -0.347046,
		34.803032, 33.074257, 39.488377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078438, 33.097363, 39.834599>,  <34.480434, 33.646019, 39.731308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078438, 33.097363, 39.834599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446529, 32.943977, 39.803291>,  <34.667385, 32.851944, 39.784508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446529, 32.943977, 39.803291>,  <34.078438, 33.097363, 39.834599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446529, 32.943977, 39.803291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092002, -0.406330, 0.909083,
		-0.380397, -0.829370, -0.409198,
		0.920235, -0.383460, -0.078263,
		34.722599, 32.828938, 39.779812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145721, 32.691498, 40.466198>,  <34.078438, 33.097363, 39.834599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145721, 32.691498, 40.466198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523720, 32.649090, 40.342430>,  <34.750519, 32.623646, 40.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523720, 32.649090, 40.342430>,  <34.145721, 32.691498, 40.466198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523720, 32.649090, 40.342430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203472, -0.550106, 0.809927,
		-0.256083, -0.828337, -0.498276,
		0.944997, -0.106023, -0.309416,
		34.807220, 32.617283, 40.249607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358234, 31.966944, 40.617874>,  <34.145721, 32.691498, 40.466198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358234, 31.966944, 40.617874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681484, 32.198368, 40.573677>,  <34.875435, 32.337223, 40.547161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681484, 32.198368, 40.573677>,  <34.358234, 31.966944, 40.617874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681484, 32.198368, 40.573677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402784, -0.405937, 0.820354,
		0.429772, -0.707449, -0.561081,
		0.808122, 0.578559, -0.110489,
		34.923920, 32.371937, 40.540531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911972, 31.490225, 40.682701>,  <34.358234, 31.966944, 40.617874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911972, 31.490225, 40.682701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047935, 31.857834, 40.762566>,  <35.129513, 32.078400, 40.810482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047935, 31.857834, 40.762566>,  <34.911972, 31.490225, 40.682701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047935, 31.857834, 40.762566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432066, -0.341168, 0.834820,
		0.835333, -0.197498, -0.513043,
		0.339909, 0.919021, 0.199657,
		35.149910, 32.133541, 40.822464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708862, 31.486469, 40.709831>,  <34.911972, 31.490225, 40.682701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708862, 31.486469, 40.709831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550137, 31.781359, 40.928570>,  <35.454903, 31.958292, 41.059814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550137, 31.781359, 40.928570>,  <35.708862, 31.486469, 40.709831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550137, 31.781359, 40.928570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394907, -0.400687, 0.826740,
		0.828605, 0.544017, -0.132135,
		-0.396816, 0.737221, 0.546847,
		35.431091, 32.002525, 41.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244156, 31.581915, 41.204369>,  <35.708862, 31.486469, 40.709831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244156, 31.581915, 41.204369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914490, 31.756014, 41.349316>,  <35.716690, 31.860474, 41.436283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914490, 31.756014, 41.349316>,  <36.244156, 31.581915, 41.204369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914490, 31.756014, 41.349316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226767, -0.332698, 0.915363,
		0.518970, 0.836583, 0.175498,
		-0.824164, 0.435249, 0.362370,
		35.667240, 31.886589, 41.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421535, 31.951956, 41.770634>,  <36.244156, 31.581915, 41.204369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421535, 31.951956, 41.770634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024918, 31.937517, 41.820496>,  <35.786945, 31.928854, 41.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024918, 31.937517, 41.820496>,  <36.421535, 31.951956, 41.770634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024918, 31.937517, 41.820496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129031, -0.171403, 0.976715,
		-0.013892, 0.984539, 0.174612,
		-0.991543, -0.036098, 0.124655,
		35.727455, 31.926687, 41.857891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279701, 32.260574, 42.436741>,  <36.421535, 31.951956, 41.770634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279701, 32.260574, 42.436741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943462, 32.047077, 42.399830>,  <35.741718, 31.918980, 42.377682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943462, 32.047077, 42.399830>,  <36.279701, 32.260574, 42.436741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943462, 32.047077, 42.399830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026171, -0.210187, 0.977311,
		-0.541029, 0.819109, 0.190651,
		-0.840597, -0.533743, -0.092280,
		35.691284, 31.886953, 42.372147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889095, 32.455723, 43.001957>,  <36.279701, 32.260574, 42.436741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889095, 32.455723, 43.001957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700211, 32.121670, 42.889118>,  <35.586880, 31.921238, 42.821415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700211, 32.121670, 42.889118>,  <35.889095, 32.455723, 43.001957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700211, 32.121670, 42.889118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024072, -0.307687, 0.951183,
		-0.881158, 0.455947, 0.125189,
		-0.472208, -0.835129, -0.282097,
		35.558548, 31.871132, 42.804489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230427, 32.395992, 43.384411>,  <35.889095, 32.455723, 43.001957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230427, 32.395992, 43.384411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336193, 32.030266, 43.261696>,  <35.399651, 31.810831, 43.188068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336193, 32.030266, 43.261696>,  <35.230427, 32.395992, 43.384411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336193, 32.030266, 43.261696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187036, -0.360686, 0.913741,
		-0.946099, -0.184223, -0.266379,
		0.264412, -0.914313, -0.306788,
		35.415516, 31.755972, 43.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647163, 31.953588, 43.668728>,  <35.230427, 32.395992, 43.384411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647163, 31.953588, 43.668728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947254, 31.697176, 43.603943>,  <35.127308, 31.543329, 43.565071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947254, 31.697176, 43.603943>,  <34.647163, 31.953588, 43.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947254, 31.697176, 43.603943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296894, -0.545498, 0.783764,
		-0.590773, -0.539914, -0.599567,
		0.750227, -0.641034, -0.161969,
		35.172325, 31.504866, 43.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444927, 31.263323, 43.829647>,  <34.647163, 31.953588, 43.668728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444927, 31.263323, 43.829647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840778, 31.206238, 43.823185>,  <35.078289, 31.171986, 43.819309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840778, 31.206238, 43.823185>,  <34.444927, 31.263323, 43.829647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840778, 31.206238, 43.823185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086325, -0.680934, 0.727239,
		-0.114788, -0.718305, -0.686194,
		0.989632, -0.142714, -0.016155,
		35.137669, 31.163424, 43.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618412, 30.489199, 43.940414>,  <34.444927, 31.263323, 43.829647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618412, 30.489199, 43.940414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954098, 30.684580, 44.036018>,  <35.155510, 30.801809, 44.093380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954098, 30.684580, 44.036018>,  <34.618412, 30.489199, 43.940414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954098, 30.684580, 44.036018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101650, -0.572688, 0.813447,
		0.534211, -0.658363, -0.530261,
		0.839218, 0.488453, 0.239014,
		35.205864, 30.831116, 44.107723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073704, 29.978479, 44.100170>,  <34.618412, 30.489199, 43.940414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073704, 29.978479, 44.100170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222008, 30.299564, 44.287014>,  <35.310989, 30.492216, 44.399120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222008, 30.299564, 44.287014>,  <35.073704, 29.978479, 44.100170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222008, 30.299564, 44.287014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173495, -0.553962, 0.814264,
		0.912380, -0.220854, -0.344653,
		0.370758, 0.802714, 0.467108,
		35.333237, 30.540379, 44.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627628, 29.745520, 44.478500>,  <35.073704, 29.978479, 44.100170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627628, 29.745520, 44.478500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518578, 30.096312, 44.636780>,  <35.453148, 30.306787, 44.731747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518578, 30.096312, 44.636780>,  <35.627628, 29.745520, 44.478500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518578, 30.096312, 44.636780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130281, -0.373845, 0.918296,
		0.953258, 0.301906, -0.012334,
		-0.272628, 0.876979, 0.395703,
		35.436790, 30.359406, 44.755489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061779, 29.922012, 45.049904>,  <35.627628, 29.745520, 44.478500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061779, 29.922012, 45.049904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763603, 30.172569, 45.141079>,  <35.584698, 30.322903, 45.195786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763603, 30.172569, 45.141079>,  <36.061779, 29.922012, 45.049904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763603, 30.172569, 45.141079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197395, -0.119174, 0.973053,
		0.636676, 0.770345, -0.034810,
		-0.745438, 0.626391, 0.227937,
		35.539970, 30.360487, 45.209461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304291, 30.392332, 45.580246>,  <36.061779, 29.922012, 45.049904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304291, 30.392332, 45.580246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911396, 30.453461, 45.623783>,  <35.675659, 30.490139, 45.649906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911396, 30.453461, 45.623783>,  <36.304291, 30.392332, 45.580246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911396, 30.453461, 45.623783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155125, 0.335148, 0.929307,
		0.105540, 0.929688, -0.352903,
		-0.982241, 0.152823, 0.108846,
		35.616722, 30.499308, 45.656437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131920, 30.989569, 46.028069>,  <36.304291, 30.392332, 45.580246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131920, 30.989569, 46.028069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772202, 30.817137, 46.057575>,  <35.556370, 30.713678, 46.075279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772202, 30.817137, 46.057575>,  <36.131920, 30.989569, 46.028069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772202, 30.817137, 46.057575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054459, 0.056975, 0.996889,
		-0.433942, 0.900513, -0.027761,
		-0.899293, -0.431080, 0.073765,
		35.502415, 30.687813, 46.079704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693829, 31.416521, 46.395657>,  <36.131920, 30.989569, 46.028069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693829, 31.416521, 46.395657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519566, 31.058302, 46.431870>,  <35.415009, 30.843370, 46.453598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519566, 31.058302, 46.431870>,  <35.693829, 31.416521, 46.395657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519566, 31.058302, 46.431870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081917, 0.060718, 0.994788,
		-0.896377, 0.440804, 0.046908,
		-0.435658, -0.895547, 0.090536,
		35.388866, 30.789639, 46.459030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360641, 31.488413, 47.062271>,  <35.693829, 31.416521, 46.395657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360641, 31.488413, 47.062271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355740, 31.092899, 47.002728>,  <35.352798, 30.855591, 46.967003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355740, 31.092899, 47.002728>,  <35.360641, 31.488413, 47.062271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355740, 31.092899, 47.002728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191275, -0.148438, 0.970247,
		-0.981460, -0.016579, 0.190949,
		-0.012258, -0.988783, -0.148857,
		35.352062, 30.796265, 46.958069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864304, 31.230272, 47.499035>,  <35.360641, 31.488413, 47.062271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864304, 31.230272, 47.499035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140511, 30.952097, 47.419479>,  <35.306232, 30.785192, 47.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140511, 30.952097, 47.419479>,  <34.864304, 31.230272, 47.499035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140511, 30.952097, 47.419479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187780, -0.093181, 0.977781,
		-0.698519, -0.712519, 0.066247,
		0.690514, -0.695438, -0.198886,
		35.347664, 30.743465, 47.359814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713573, 30.794199, 47.979900>,  <34.864304, 31.230272, 47.499035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713573, 30.794199, 47.979900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074104, 30.685820, 47.844730>,  <35.290424, 30.620792, 47.763630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074104, 30.685820, 47.844730>,  <34.713573, 30.794199, 47.979900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074104, 30.685820, 47.844730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346370, -0.017559, 0.937934,
		-0.260068, -0.962433, 0.078023,
		0.901328, -0.270951, -0.337925,
		35.344501, 30.604534, 47.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841148, 30.212624, 48.418793>,  <34.713573, 30.794199, 47.979900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841148, 30.212624, 48.418793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174812, 30.370562, 48.264767>,  <35.375011, 30.465324, 48.172352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174812, 30.370562, 48.264767>,  <34.841148, 30.212624, 48.418793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174812, 30.370562, 48.264767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366511, 0.124861, 0.921998,
		0.412126, -0.910224, -0.040562,
		0.834159, 0.394845, -0.385065,
		35.425060, 30.489016, 48.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425144, 29.852695, 48.798710>,  <34.841148, 30.212624, 48.418793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425144, 29.852695, 48.798710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597321, 30.179777, 48.645832>,  <35.700626, 30.376026, 48.554104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597321, 30.179777, 48.645832>,  <35.425144, 29.852695, 48.798710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597321, 30.179777, 48.645832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649731, 0.013228, 0.760049,
		0.626552, -0.575485, -0.525594,
		0.430445, 0.817705, -0.382199,
		35.726456, 30.425089, 48.531174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104050, 29.737213, 48.842453>,  <35.425144, 29.852695, 48.798710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104050, 29.737213, 48.842453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055767, 30.132286, 48.802628>,  <36.026798, 30.369329, 48.778732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055767, 30.132286, 48.802628>,  <36.104050, 29.737213, 48.842453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055767, 30.132286, 48.802628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552932, 0.150194, 0.819578,
		0.824437, 0.043873, -0.564251,
		-0.120704, 0.987683, -0.099567,
		36.019554, 30.428591, 48.772758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718861, 29.950909, 48.959927>,  <36.104050, 29.737213, 48.842453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718861, 29.950909, 48.959927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491322, 30.274765, 49.017750>,  <36.354797, 30.469078, 49.052444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491322, 30.274765, 49.017750>,  <36.718861, 29.950909, 48.959927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491322, 30.274765, 49.017750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394861, 0.114677, 0.911556,
		0.721455, 0.575615, -0.384929,
		-0.568848, 0.809640, 0.144553,
		36.320667, 30.517656, 49.061115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174908, 30.389082, 49.231483>,  <36.718861, 29.950909, 48.959927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174908, 30.389082, 49.231483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806366, 30.503855, 49.336388>,  <36.585243, 30.572720, 49.399330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806366, 30.503855, 49.336388>,  <37.174908, 30.389082, 49.231483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806366, 30.503855, 49.336388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279300, 0.019395, 0.960008,
		0.270372, 0.957754, -0.098010,
		-0.921353, 0.286934, 0.262257,
		36.529961, 30.589935, 49.415066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192272, 30.955269, 49.661854>,  <37.174908, 30.389082, 49.231483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192272, 30.955269, 49.661854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832397, 30.800409, 49.742535>,  <36.616474, 30.707495, 49.790943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832397, 30.800409, 49.742535>,  <37.192272, 30.955269, 49.661854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832397, 30.800409, 49.742535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123888, 0.216613, 0.968365,
		-0.418591, 0.896212, -0.146921,
		-0.899685, -0.387147, 0.201702,
		36.562492, 30.684265, 49.803047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843716, 31.446234, 50.055435>,  <37.192272, 30.955269, 49.661854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843716, 31.446234, 50.055435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695862, 31.083881, 50.138142>,  <36.607151, 30.866470, 50.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695862, 31.083881, 50.138142>,  <36.843716, 31.446234, 50.055435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695862, 31.083881, 50.138142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246423, 0.118985, 0.961830,
		-0.895905, 0.406476, 0.179249,
		-0.369633, -0.905880, 0.206765,
		36.584972, 30.812117, 50.200172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447895, 31.399200, 50.586941>,  <36.843716, 31.446234, 50.055435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447895, 31.399200, 50.586941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770588, 31.176758, 50.666870>,  <36.964203, 31.043293, 50.714828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770588, 31.176758, 50.666870>,  <36.447895, 31.399200, 50.586941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770588, 31.176758, 50.666870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189825, 0.564120, 0.803577,
		-0.559598, -0.610340, 0.560657,
		0.806732, -0.556106, 0.199823,
		37.012608, 31.009926, 50.726818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951405, 31.452921, 51.109741>,  <36.447895, 31.399200, 50.586941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951405, 31.452921, 51.109741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018681, 31.719257, 51.400497>,  <36.059044, 31.879059, 51.574951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018681, 31.719257, 51.400497>,  <35.951405, 31.452921, 51.109741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018681, 31.719257, 51.400497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271961, 0.740118, -0.615031,
		-0.947497, -0.094245, 0.305561,
		0.168188, 0.665840, 0.726890,
		36.069138, 31.919010, 51.618565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470093, 31.755909, 50.918255>,  <35.951405, 31.452921, 51.109741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470093, 31.755909, 50.918255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631340, 32.036423, 51.153439>,  <35.728088, 32.204731, 51.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631340, 32.036423, 51.153439>,  <35.470093, 31.755909, 50.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631340, 32.036423, 51.153439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191809, 0.692948, -0.695006,
		-0.894821, 0.167395, 0.413853,
		0.403119, 0.701286, 0.587956,
		35.752277, 32.246807, 51.329826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952145, 32.371319, 50.913059>,  <35.470093, 31.755909, 50.918255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952145, 32.371319, 50.913059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337181, 32.459595, 50.975941>,  <35.568203, 32.512562, 51.013668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337181, 32.459595, 50.975941>,  <34.952145, 32.371319, 50.913059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337181, 32.459595, 50.975941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023037, 0.644732, -0.764061,
		-0.269975, 0.731857, 0.625698,
		0.962592, 0.220692, 0.157202,
		35.625957, 32.525803, 51.023102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987907, 33.104492, 50.768932>,  <34.952145, 32.371319, 50.913059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987907, 33.104492, 50.768932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366558, 32.976292, 50.755238>,  <35.593750, 32.899372, 50.747021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366558, 32.976292, 50.755238>,  <34.987907, 33.104492, 50.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366558, 32.976292, 50.755238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182909, 0.621590, -0.761689,
		0.265402, 0.714775, 0.647038,
		0.946629, -0.320503, -0.034232,
		35.650547, 32.880142, 50.744968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327496, 33.640461, 50.491962>,  <34.987907, 33.104492, 50.768932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327496, 33.640461, 50.491962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594601, 33.344837, 50.456440>,  <35.754864, 33.167465, 50.435127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594601, 33.344837, 50.456440>,  <35.327496, 33.640461, 50.491962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594601, 33.344837, 50.456440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202809, 0.295425, -0.933591,
		0.716213, 0.605407, 0.347162,
		0.667763, -0.739057, -0.088805,
		35.794930, 33.123119, 50.429798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943760, 34.038677, 50.246555>,  <35.327496, 33.640461, 50.491962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943760, 34.038677, 50.246555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982250, 33.653389, 50.146202>,  <36.005344, 33.422215, 50.085991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982250, 33.653389, 50.146202>,  <35.943760, 34.038677, 50.246555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982250, 33.653389, 50.146202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146000, 0.262990, -0.953687,
		0.984593, 0.055143, 0.165938,
		0.096230, -0.963221, -0.250888,
		36.011120, 33.364422, 50.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577641, 33.923897, 49.770973>,  <35.943760, 34.038677, 50.246555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577641, 33.923897, 49.770973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301960, 33.637505, 49.726498>,  <36.136551, 33.465668, 49.699814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301960, 33.637505, 49.726498>,  <36.577641, 33.923897, 49.770973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301960, 33.637505, 49.726498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118547, 0.039962, -0.992144,
		0.714804, -0.696970, 0.057336,
		-0.689204, -0.715986, -0.111189,
		36.095200, 33.422710, 49.693142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816921, 33.402172, 49.294933>,  <36.577641, 33.923897, 49.770973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816921, 33.402172, 49.294933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418163, 33.372192, 49.285225>,  <36.178909, 33.354206, 49.279400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418163, 33.372192, 49.285225>,  <36.816921, 33.402172, 49.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418163, 33.372192, 49.285225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031314, -0.094304, -0.995051,
		0.072291, -0.992718, 0.096358,
		-0.996892, -0.074950, -0.024269,
		36.119095, 33.349709, 49.277943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769222, 33.113953, 48.646114>,  <36.816921, 33.402172, 49.294933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769222, 33.113953, 48.646114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383411, 33.161320, 48.740498>,  <36.151924, 33.189739, 48.797127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383411, 33.161320, 48.740498>,  <36.769222, 33.113953, 48.646114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383411, 33.161320, 48.740498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241729, -0.036832, -0.969644,
		-0.106133, -0.992280, 0.064150,
		-0.964522, 0.118418, 0.235954,
		36.094055, 33.196842, 48.811283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316841, 32.523838, 48.389244>,  <36.769222, 33.113953, 48.646114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316841, 32.523838, 48.389244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082878, 32.847702, 48.408558>,  <35.942501, 33.042023, 48.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082878, 32.847702, 48.408558>,  <36.316841, 32.523838, 48.389244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082878, 32.847702, 48.408558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320766, -0.176221, -0.930621,
		-0.744980, -0.559814, 0.362785,
		-0.584905, 0.809663, 0.048289,
		35.907406, 33.090603, 48.423046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763584, 32.421677, 47.933319>,  <36.316841, 32.523838, 48.389244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763584, 32.421677, 47.933319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773697, 32.815865, 48.000511>,  <35.779762, 33.052376, 48.040829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773697, 32.815865, 48.000511>,  <35.763584, 32.421677, 47.933319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773697, 32.815865, 48.000511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350962, 0.166089, -0.921542,
		-0.936048, -0.035661, 0.350060,
		0.025278, 0.985466, 0.167983,
		35.781281, 33.111504, 48.050907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217979, 32.736687, 47.705029>,  <35.763584, 32.421677, 47.933319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217979, 32.736687, 47.705029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476883, 33.041256, 47.690712>,  <35.632225, 33.223999, 47.682121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476883, 33.041256, 47.690712>,  <35.217979, 32.736687, 47.705029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476883, 33.041256, 47.690712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189605, 0.115342, -0.975062,
		-0.738311, 0.637906, 0.219027,
		0.647261, 0.761428, -0.035792,
		35.671062, 33.269684, 47.679974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939407, 33.308857, 47.395515>,  <35.217979, 32.736687, 47.705029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939407, 33.308857, 47.395515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333530, 33.276417, 47.335400>,  <35.570004, 33.256954, 47.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333530, 33.276417, 47.335400>,  <34.939407, 33.308857, 47.395515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333530, 33.276417, 47.335400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142548, 0.094043, -0.985310,
		0.094043, 0.992260, 0.081101,
		0.985310, -0.081101, -0.150289,
		35.629124, 33.252087, 47.290314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038292, 33.817089, 47.011547>,  <34.939407, 33.308857, 47.395515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038292, 33.817089, 47.011547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365082, 33.595505, 46.947449>,  <35.561157, 33.462555, 46.908989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365082, 33.595505, 46.947449>,  <35.038292, 33.817089, 47.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365082, 33.595505, 46.947449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081477, 0.164215, -0.983054,
		0.570885, 0.816189, 0.089025,
		0.816977, -0.553957, -0.160249,
		35.610176, 33.429317, 46.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464600, 34.168243, 46.497223>,  <35.038292, 33.817089, 47.011547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464600, 34.168243, 46.497223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610527, 33.797203, 46.465050>,  <35.698086, 33.574581, 46.445744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610527, 33.797203, 46.465050>,  <35.464600, 34.168243, 46.497223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610527, 33.797203, 46.465050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081895, 0.118023, -0.989628,
		0.927469, 0.354449, 0.119023,
		0.364820, -0.927597, -0.080435,
		35.719975, 33.518925, 46.440918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099224, 34.210762, 46.074924>,  <35.464600, 34.168243, 46.497223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099224, 34.210762, 46.074924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984528, 33.827564, 46.076569>,  <35.915710, 33.597645, 46.077553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984528, 33.827564, 46.076569>,  <36.099224, 34.210762, 46.074924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984528, 33.827564, 46.076569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103728, -0.035310, -0.993979,
		0.952376, -0.284590, 0.109496,
		-0.286742, -0.957999, 0.004108,
		35.898506, 33.540165, 46.077801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665321, 33.735794, 45.768211>,  <36.099224, 34.210762, 46.074924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665321, 33.735794, 45.768211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311848, 33.550533, 45.741085>,  <36.099766, 33.439377, 45.724812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311848, 33.550533, 45.741085>,  <36.665321, 33.735794, 45.768211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311848, 33.550533, 45.741085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, -0.154367, -0.975656,
		0.441412, -0.872731, 0.208559,
		-0.883680, -0.463154, -0.067811,
		36.046745, 33.411587, 45.720741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779243, 33.204994, 45.302837>,  <36.665321, 33.735794, 45.768211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779243, 33.204994, 45.302837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381725, 33.244209, 45.323883>,  <36.143215, 33.267738, 45.336510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381725, 33.244209, 45.323883>,  <36.779243, 33.204994, 45.302837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381725, 33.244209, 45.323883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043777, 0.090195, -0.994962,
		-0.102289, -0.991087, -0.085343,
		-0.993791, 0.098038, 0.052612,
		36.083588, 33.273621, 45.339668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577213, 32.777554, 44.857246>,  <36.779243, 33.204994, 45.302837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577213, 32.777554, 44.857246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290878, 33.052631, 44.905655>,  <36.119076, 33.217678, 44.934700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290878, 33.052631, 44.905655>,  <36.577213, 32.777554, 44.857246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290878, 33.052631, 44.905655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011277, 0.184684, -0.982733,
		-0.698172, -0.702116, -0.139960,
		-0.715841, 0.687695, 0.121024,
		36.076126, 33.258942, 44.941963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171253, 32.602047, 44.324783>,  <36.577213, 32.777554, 44.857246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171253, 32.602047, 44.324783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090996, 32.978558, 44.433399>,  <36.042843, 33.204464, 44.498569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090996, 32.978558, 44.433399>,  <36.171253, 32.602047, 44.324783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090996, 32.978558, 44.433399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117590, 0.252031, -0.960548,
		-0.972582, -0.224656, 0.060117,
		-0.200642, 0.941281, 0.271538,
		36.030804, 33.260941, 44.514862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592594, 32.812874, 43.827236>,  <36.171253, 32.602047, 44.324783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592594, 32.812874, 43.827236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743965, 33.153511, 43.972336>,  <35.834785, 33.357891, 44.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743965, 33.153511, 43.972336>,  <35.592594, 32.812874, 43.827236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743965, 33.153511, 43.972336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268983, 0.476156, -0.837212,
		-0.885688, 0.219248, 0.409252,
		0.378425, 0.851590, 0.362751,
		35.857494, 33.408989, 44.081161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126961, 33.311703, 43.680161>,  <35.592594, 32.812874, 43.827236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126961, 33.311703, 43.680161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 33.525223, 43.726250>,  <35.663105, 33.653336, 43.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 33.525223, 43.726250>,  <35.126961, 33.311703, 43.680161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462051, 33.525223, 43.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139243, 0.412808, -0.900111,
		-0.528044, 0.738001, 0.420147,
		0.837723, 0.533801, 0.115220,
		35.713367, 33.685364, 43.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921883, 33.957008, 43.480019>,  <35.126961, 33.311703, 43.680161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921883, 33.957008, 43.480019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321316, 33.940933, 43.466057>,  <35.560974, 33.931290, 43.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321316, 33.940933, 43.466057>,  <34.921883, 33.957008, 43.480019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321316, 33.940933, 43.466057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012805, 0.455082, -0.890358,
		0.051664, 0.889542, 0.453922,
		0.998582, -0.040188, -0.034902,
		35.620892, 33.928879, 43.455585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098869, 34.596725, 43.263931>,  <34.921883, 33.957008, 43.480019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098869, 34.596725, 43.263931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452152, 34.431973, 43.174217>,  <35.664124, 34.333122, 43.120388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452152, 34.431973, 43.174217>,  <35.098869, 34.596725, 43.263931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452152, 34.431973, 43.174217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065863, 0.582426, -0.810211,
		0.464338, 0.700811, 0.541529,
		0.883206, -0.411878, -0.224284,
		35.717113, 34.308411, 43.106934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563473, 35.029358, 43.025085>,  <35.098869, 34.596725, 43.263931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563473, 35.029358, 43.025085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741337, 34.698986, 42.886452>,  <35.848053, 34.500763, 42.803272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741337, 34.698986, 42.886452>,  <35.563473, 35.029358, 43.025085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741337, 34.698986, 42.886452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174171, 0.459287, -0.871045,
		0.878604, 0.326951, 0.348078,
		0.444657, -0.825929, -0.346586,
		35.874733, 34.451206, 42.782475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266689, 35.186287, 42.754608>,  <35.563473, 35.029358, 43.025085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266689, 35.186287, 42.754608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129887, 34.858177, 42.571228>,  <36.047806, 34.661312, 42.461201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129887, 34.858177, 42.571228>,  <36.266689, 35.186287, 42.754608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129887, 34.858177, 42.571228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206427, 0.410375, -0.888246,
		0.916745, -0.398421, 0.028977,
		-0.342004, -0.820276, -0.458454,
		36.027287, 34.612095, 42.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782715, 34.909958, 42.265148>,  <36.266689, 35.186287, 42.754608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782715, 34.909958, 42.265148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440857, 34.748074, 42.135048>,  <36.235741, 34.650944, 42.056988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440857, 34.748074, 42.135048>,  <36.782715, 34.909958, 42.265148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440857, 34.748074, 42.135048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264930, 0.198817, -0.943549,
		0.446531, -0.892569, -0.062697,
		-0.854648, -0.404713, -0.325246,
		36.184464, 34.626659, 42.037476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947567, 34.685356, 41.626019>,  <36.782715, 34.909958, 42.265148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947567, 34.685356, 41.626019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548195, 34.698383, 41.607819>,  <36.308571, 34.706200, 41.596897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548195, 34.698383, 41.607819>,  <36.947567, 34.685356, 41.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548195, 34.698383, 41.607819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054326, 0.369491, -0.927645,
		-0.013399, -0.928663, -0.370682,
		-0.998434, 0.032567, -0.045500,
		36.248665, 34.708153, 41.594170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854233, 34.476921, 41.001129>,  <36.947567, 34.685356, 41.626019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854233, 34.476921, 41.001129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494301, 34.621918, 41.098209>,  <36.278339, 34.708916, 41.156456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494301, 34.621918, 41.098209>,  <36.854233, 34.476921, 41.001129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494301, 34.621918, 41.098209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088492, 0.393104, -0.915226,
		-0.427165, -0.845027, -0.321650,
		-0.899833, 0.362489, 0.242699,
		36.224350, 34.730663, 41.171021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444542, 34.227627, 40.497684>,  <36.854233, 34.476921, 41.001129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444542, 34.227627, 40.497684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285595, 34.561878, 40.649380>,  <36.190228, 34.762428, 40.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285595, 34.561878, 40.649380>,  <36.444542, 34.227627, 40.497684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285595, 34.561878, 40.649380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094049, 0.448173, -0.888986,
		-0.912829, -0.317584, -0.256678,
		-0.397364, 0.835632, 0.379237,
		36.166386, 34.812569, 40.763149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114155, 34.547577, 39.914787>,  <36.444542, 34.227627, 40.497684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114155, 34.547577, 39.914787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123611, 34.858223, 40.166599>,  <36.129284, 35.044613, 40.317684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123611, 34.858223, 40.166599>,  <36.114155, 34.547577, 39.914787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123611, 34.858223, 40.166599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377090, 0.576262, -0.725069,
		-0.925875, 0.254530, -0.279232,
		0.023641, 0.776618, 0.629527,
		36.130703, 35.091209, 40.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775848, 35.283138, 39.585907>,  <36.114155, 34.547577, 39.914787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775848, 35.283138, 39.585907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034313, 35.380016, 39.875408>,  <36.189392, 35.438145, 40.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034313, 35.380016, 39.875408>,  <35.775848, 35.283138, 39.585907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034313, 35.380016, 39.875408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429586, 0.668404, -0.607200,
		-0.630821, 0.703262, 0.327852,
		0.646159, 0.242194, 0.723755,
		36.228161, 35.452675, 40.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707119, 35.981205, 39.695580>,  <35.775848, 35.283138, 39.585907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707119, 35.981205, 39.695580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070087, 35.893562, 39.839016>,  <36.287868, 35.840977, 39.925079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070087, 35.893562, 39.839016>,  <35.707119, 35.981205, 39.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070087, 35.893562, 39.839016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366752, 0.829488, -0.421239,
		-0.205150, 0.513753, 0.833049,
		0.907417, -0.219106, 0.358589,
		36.342312, 35.827831, 39.946594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890831, 36.596382, 39.967739>,  <35.707119, 35.981205, 39.695580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890831, 36.596382, 39.967739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245911, 36.412319, 39.961449>,  <36.458958, 36.301884, 39.957676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245911, 36.412319, 39.961449>,  <35.890831, 36.596382, 39.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245911, 36.412319, 39.961449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424080, 0.830450, -0.361261,
		0.179293, 0.314024, 0.932332,
		0.887699, -0.460155, -0.015723,
		36.512222, 36.274273, 39.956734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315372, 36.934387, 40.298767>,  <35.890831, 36.596382, 39.967739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315372, 36.934387, 40.298767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591499, 36.747955, 40.077415>,  <36.757175, 36.636097, 39.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591499, 36.747955, 40.077415>,  <36.315372, 36.934387, 40.298767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591499, 36.747955, 40.077415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404660, 0.882763, -0.238703,
		0.599758, -0.059150, 0.797992,
		0.690319, -0.466079, -0.553380,
		36.798595, 36.608131, 39.911400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986168, 37.328461, 40.422623>,  <36.315372, 36.934387, 40.298767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986168, 37.328461, 40.422623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030926, 37.131691, 40.077255>,  <37.057781, 37.013630, 39.870033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030926, 37.131691, 40.077255>,  <36.986168, 37.328461, 40.422623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030926, 37.131691, 40.077255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401061, 0.817320, -0.413688,
		0.909192, -0.299995, 0.288743,
		0.111890, -0.491926, -0.863417,
		37.064491, 36.984112, 39.818230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505215, 37.665043, 40.084034>,  <36.986168, 37.328461, 40.422623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505215, 37.665043, 40.084034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362434, 37.459579, 39.771946>,  <37.276768, 37.336300, 39.584694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362434, 37.459579, 39.771946>,  <37.505215, 37.665043, 40.084034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362434, 37.459579, 39.771946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265363, 0.745071, -0.611924,
		0.895640, -0.425465, -0.129644,
		-0.356947, -0.513661, -0.780219,
		37.255352, 37.305481, 39.537880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016842, 37.720673, 39.597828>,  <37.505215, 37.665043, 40.084034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016842, 37.720673, 39.597828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694145, 37.602306, 39.393238>,  <37.500526, 37.531288, 39.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694145, 37.602306, 39.393238>,  <38.016842, 37.720673, 39.597828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694145, 37.602306, 39.393238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260066, 0.599431, -0.757000,
		0.530599, -0.743720, -0.406628,
		-0.806741, -0.295913, -0.511473,
		37.452122, 37.513531, 39.239796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218964, 37.560894, 38.848438>,  <38.016842, 37.720673, 39.597828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218964, 37.560894, 38.848438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824078, 37.622375, 38.831604>,  <37.587143, 37.659264, 38.821503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824078, 37.622375, 38.831604>,  <38.218964, 37.560894, 38.848438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824078, 37.622375, 38.831604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122402, 0.562201, -0.817892,
		-0.102053, -0.812591, -0.573830,
		-0.987220, 0.153706, -0.042089,
		37.527912, 37.668488, 38.818977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042648, 37.349640, 38.053085>,  <38.218964, 37.560894, 38.848438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042648, 37.349640, 38.053085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729301, 37.560375, 38.185005>,  <37.541294, 37.686817, 38.264156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729301, 37.560375, 38.185005>,  <38.042648, 37.349640, 38.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729301, 37.560375, 38.185005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051667, 0.473568, -0.879241,
		-0.619402, -0.705812, -0.343760,
		-0.783372, 0.526843, 0.329796,
		37.494289, 37.718430, 38.283943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669800, 37.195728, 37.754055>,  <38.042648, 37.349640, 38.053085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669800, 37.195728, 37.754055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804115, 37.271645, 37.385006>,  <38.884705, 37.317192, 37.163578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804115, 37.271645, 37.385006>,  <38.669800, 37.195728, 37.754055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804115, 37.271645, 37.385006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814725, -0.550094, 0.183359,
		-0.472728, -0.813251, -0.339338,
		0.335785, 0.189789, -0.922621,
		38.904850, 37.328583, 37.108219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979759, 36.473316, 37.501141>,  <38.669800, 37.195728, 37.754055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979759, 36.473316, 37.501141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135281, 36.788708, 37.310505>,  <39.228596, 36.977943, 37.196125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135281, 36.788708, 37.310505>,  <38.979759, 36.473316, 37.501141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135281, 36.788708, 37.310505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910655, -0.407373, 0.068957,
		-0.139778, -0.460817, -0.876419,
		0.388806, 0.788476, -0.476587,
		39.251923, 37.025249, 37.167530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442738, 36.378620, 36.983955>,  <38.979759, 36.473316, 37.501141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442738, 36.378620, 36.983955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595451, 36.736423, 37.076992>,  <39.687080, 36.951103, 37.132812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595451, 36.736423, 37.076992>,  <39.442738, 36.378620, 36.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595451, 36.736423, 37.076992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916795, -0.398419, 0.027380,
		0.117159, 0.202783, -0.972190,
		0.381787, 0.894506, 0.232588,
		39.709988, 37.004776, 37.146770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019051, 36.561142, 36.531498>,  <39.442738, 36.378620, 36.983955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019051, 36.561142, 36.531498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043678, 36.737919, 36.889469>,  <40.058456, 36.843987, 37.104252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043678, 36.737919, 36.889469>,  <40.019051, 36.561142, 36.531498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043678, 36.737919, 36.889469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952869, -0.292892, 0.079085,
		0.297069, 0.847879, -0.439148,
		0.061568, 0.441944, 0.894927,
		40.062149, 36.870502, 37.157948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641624, 36.751766, 36.496845>,  <40.019051, 36.561142, 36.531498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641624, 36.751766, 36.496845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582783, 36.736755, 36.892208>,  <40.547478, 36.727749, 37.129425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582783, 36.736755, 36.892208>,  <40.641624, 36.751766, 36.496845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582783, 36.736755, 36.892208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973897, -0.180143, 0.138105,
		0.172872, 0.982924, 0.063048,
		-0.147105, -0.037528, 0.988409,
		40.538651, 36.725498, 37.188732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147621, 37.192871, 36.915207>,  <40.641624, 36.751766, 36.496845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147621, 37.192871, 36.915207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008213, 36.880775, 37.122959>,  <40.924568, 36.693520, 37.247612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008213, 36.880775, 37.122959>,  <41.147621, 37.192871, 36.915207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008213, 36.880775, 37.122959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934101, -0.243386, 0.261186,
		-0.077376, 0.576187, 0.813647,
		-0.348523, -0.780238, 0.519385,
		40.903656, 36.646706, 37.278774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529984, 37.059437, 36.176964>,  <41.147621, 37.192871, 36.915207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529984, 37.059437, 36.176964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920673, 37.039501, 36.093506>,  <42.155087, 37.027538, 36.043430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920673, 37.039501, 36.093506>,  <41.529984, 37.059437, 36.176964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920673, 37.039501, 36.093506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139293, -0.592318, 0.793572,
		-0.163134, -0.804161, -0.571587,
		0.976722, -0.049841, -0.208641,
		42.213688, 37.024548, 36.030914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658112, 36.236572, 36.191505>,  <41.529984, 37.059437, 36.176964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658112, 36.236572, 36.191505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922977, 36.497028, 36.339859>,  <42.081898, 36.653301, 36.428871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922977, 36.497028, 36.339859>,  <41.658112, 36.236572, 36.191505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922977, 36.497028, 36.339859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000780, -0.495538, 0.868586,
		0.749358, -0.574858, -0.328636,
		0.662165, 0.651138, 0.370886,
		42.121628, 36.692371, 36.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889507, 35.955276, 36.718956>,  <41.658112, 36.236572, 36.191505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889507, 35.955276, 36.718956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042690, 36.316460, 36.796936>,  <42.134602, 36.533169, 36.843723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042690, 36.316460, 36.796936>,  <41.889507, 35.955276, 36.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042690, 36.316460, 36.796936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169250, -0.276046, 0.946125,
		0.908128, -0.329334, -0.258540,
		0.382960, 0.902961, 0.194945,
		42.157578, 36.587349, 36.855419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635696, 35.948898, 36.903419>,  <41.889507, 35.955276, 36.718956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635696, 35.948898, 36.903419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494061, 36.285416, 37.066803>,  <42.409077, 36.487328, 37.164833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494061, 36.285416, 37.066803>,  <42.635696, 35.948898, 36.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494061, 36.285416, 37.066803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278531, -0.322066, 0.904817,
		0.892771, 0.434156, -0.120287,
		-0.354092, 0.841298, 0.408457,
		42.387833, 36.537804, 37.189339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147423, 36.172424, 37.303001>,  <42.635696, 35.948898, 36.903419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147423, 36.172424, 37.303001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806862, 36.320137, 37.452000>,  <42.602528, 36.408764, 37.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806862, 36.320137, 37.452000>,  <43.147423, 36.172424, 37.303001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806862, 36.320137, 37.452000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207699, -0.414759, 0.885910,
		0.481645, 0.831629, 0.276426,
		-0.851398, 0.369281, 0.372495,
		42.551441, 36.430920, 37.563747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245167, 36.277264, 38.059708>,  <43.147423, 36.172424, 37.303001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245167, 36.277264, 38.059708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846764, 36.307899, 38.041378>,  <42.607723, 36.326283, 38.030380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846764, 36.307899, 38.041378>,  <43.245167, 36.277264, 38.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846764, 36.307899, 38.041378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071175, -0.371816, 0.925574,
		0.053854, 0.925141, 0.375784,
		-0.996009, 0.076592, -0.045823,
		42.547962, 36.330875, 38.027630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093090, 36.533436, 38.648899>,  <43.245167, 36.277264, 38.059708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093090, 36.533436, 38.648899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736782, 36.398136, 38.527493>,  <42.522999, 36.316956, 38.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736782, 36.398136, 38.527493>,  <43.093090, 36.533436, 38.648899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736782, 36.398136, 38.527493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133686, -0.443294, 0.886351,
		-0.434355, 0.830108, 0.349652,
		-0.890766, -0.338247, -0.303521,
		42.469551, 36.296661, 38.436436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474457, 36.747578, 39.158272>,  <43.093090, 36.533436, 38.648899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474457, 36.747578, 39.158272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357964, 36.424168, 38.953735>,  <42.288067, 36.230122, 38.831013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357964, 36.424168, 38.953735>,  <42.474457, 36.747578, 39.158272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357964, 36.424168, 38.953735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086701, -0.510001, 0.855793,
		-0.952716, 0.293567, 0.078428,
		-0.291231, -0.808528, -0.511338,
		42.270596, 36.181610, 38.800335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844894, 36.565384, 39.449520>,  <42.474457, 36.747578, 39.158272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844894, 36.565384, 39.449520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980312, 36.237274, 39.265118>,  <42.061565, 36.040409, 39.154476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980312, 36.237274, 39.265118>,  <41.844894, 36.565384, 39.449520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980312, 36.237274, 39.265118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269568, -0.553954, 0.787698,
		-0.901509, -0.142399, -0.408661,
		0.338547, -0.820279, -0.461008,
		42.081875, 35.991192, 39.126816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339386, 36.143837, 39.582340>,  <41.844894, 36.565384, 39.449520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339386, 36.143837, 39.582340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651173, 35.909103, 39.494659>,  <41.838245, 35.768261, 39.442051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651173, 35.909103, 39.494659>,  <41.339386, 36.143837, 39.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651173, 35.909103, 39.494659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226670, -0.590421, 0.774612,
		-0.583966, -0.554120, -0.593241,
		0.779490, -0.586817, -0.219183,
		41.885014, 35.733051, 39.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211979, 35.542469, 39.950001>,  <41.339386, 36.143837, 39.582340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211979, 35.542469, 39.950001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594158, 35.485638, 39.846516>,  <41.823467, 35.451538, 39.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594158, 35.485638, 39.846516>,  <41.211979, 35.542469, 39.950001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594158, 35.485638, 39.846516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175570, -0.431001, 0.885107,
		-0.237261, -0.891095, -0.386854,
		0.955449, -0.142081, -0.258709,
		41.880795, 35.443012, 39.768902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362366, 34.808475, 40.093689>,  <41.211979, 35.542469, 39.950001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362366, 34.808475, 40.093689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711571, 35.003517, 40.089863>,  <41.921093, 35.120541, 40.087566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711571, 35.003517, 40.089863>,  <41.362366, 34.808475, 40.093689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711571, 35.003517, 40.089863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271096, -0.468874, 0.840633,
		0.405410, -0.736477, -0.541521,
		0.873012, 0.487605, -0.009570,
		41.973473, 35.149799, 40.086990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978020, 34.304260, 40.260563>,  <41.362366, 34.808475, 40.093689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978020, 34.304260, 40.260563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108845, 34.664745, 40.374302>,  <42.187340, 34.881035, 40.442543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108845, 34.664745, 40.374302>,  <41.978020, 34.304260, 40.260563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108845, 34.664745, 40.374302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237648, -0.369661, 0.898262,
		0.914633, -0.226215, -0.335073,
		0.327063, 0.901209, 0.284344,
		42.206963, 34.935108, 40.459606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531517, 34.029057, 40.829002>,  <41.978020, 34.304260, 40.260563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531517, 34.029057, 40.829002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505936, 34.424202, 40.885632>,  <42.490585, 34.661289, 40.919609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505936, 34.424202, 40.885632>,  <42.531517, 34.029057, 40.829002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505936, 34.424202, 40.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215161, -0.124882, 0.968561,
		0.974482, 0.092405, -0.204563,
		-0.063953, 0.987859, 0.141577,
		42.486752, 34.720558, 40.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213028, 34.291542, 41.134933>,  <42.531517, 34.029057, 40.829002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213028, 34.291542, 41.134933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912617, 34.530231, 41.247993>,  <42.732372, 34.673443, 41.315830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912617, 34.530231, 41.247993>,  <43.213028, 34.291542, 41.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912617, 34.530231, 41.247993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348993, -0.004639, 0.937114,
		0.560505, 0.802437, -0.204766,
		-0.751025, 0.596719, 0.282645,
		42.687309, 34.709248, 41.332787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489277, 34.814537, 41.529701>,  <43.213028, 34.291542, 41.134933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489277, 34.814537, 41.529701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102642, 34.836205, 41.629913>,  <42.870659, 34.849205, 41.690041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102642, 34.836205, 41.629913>,  <43.489277, 34.814537, 41.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102642, 34.836205, 41.629913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233384, -0.218163, 0.947595,
		0.105989, 0.974408, 0.198232,
		-0.966591, 0.054170, 0.250534,
		42.812664, 34.852455, 41.705074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492420, 35.244122, 42.085022>,  <43.489277, 34.814537, 41.529701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492420, 35.244122, 42.085022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128784, 35.080727, 42.117767>,  <42.910603, 34.982689, 42.137413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128784, 35.080727, 42.117767>,  <43.492420, 35.244122, 42.085022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128784, 35.080727, 42.117767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170694, -0.185974, 0.967614,
		-0.380035, 0.893617, 0.238793,
		-0.909086, -0.408488, 0.081859,
		42.856060, 34.958179, 42.142326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206760, 35.510994, 42.792034>,  <43.492420, 35.244122, 42.085022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206760, 35.510994, 42.792034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009953, 35.173756, 42.705215>,  <42.891869, 34.971413, 42.653126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009953, 35.173756, 42.705215>,  <43.206760, 35.510994, 42.792034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009953, 35.173756, 42.705215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178142, -0.341535, 0.922832,
		-0.852163, 0.415388, 0.318233,
		-0.492021, -0.843094, -0.217046,
		42.862347, 34.920826, 42.640102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838413, 35.248795, 43.488350>,  <43.206760, 35.510994, 42.792034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838413, 35.248795, 43.488350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840496, 34.942486, 43.231113>,  <42.841743, 34.758701, 43.076771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840496, 34.942486, 43.231113>,  <42.838413, 35.248795, 43.488350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840496, 34.942486, 43.231113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309974, -0.610184, 0.729103,
		-0.950731, -0.203135, 0.234194,
		0.005204, -0.765775, -0.643087,
		42.842056, 34.712753, 43.038189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719814, 34.749813, 43.916348>,  <42.838413, 35.248795, 43.488350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719814, 34.749813, 43.916348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885292, 34.563419, 43.603500>,  <42.984577, 34.451584, 43.415791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885292, 34.563419, 43.603500>,  <42.719814, 34.749813, 43.916348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885292, 34.563419, 43.603500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476501, -0.621193, 0.622146,
		-0.775760, -0.630061, -0.034942,
		0.413696, -0.465986, -0.782121,
		43.009399, 34.423622, 43.368866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671291, 34.037178, 44.073673>,  <42.719814, 34.749813, 43.916348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671291, 34.037178, 44.073673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956551, 34.045338, 43.793388>,  <43.127708, 34.050232, 43.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956551, 34.045338, 43.793388>,  <42.671291, 34.037178, 44.073673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956551, 34.045338, 43.793388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542923, -0.648396, 0.533683,
		-0.443455, -0.761030, -0.473477,
		0.713150, 0.020397, -0.700715,
		43.170494, 34.051456, 43.583176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814659, 33.378975, 43.829388>,  <42.671291, 34.037178, 44.073673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814659, 33.378975, 43.829388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150265, 33.554619, 43.700867>,  <43.351627, 33.660004, 43.623756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150265, 33.554619, 43.700867>,  <42.814659, 33.378975, 43.829388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150265, 33.554619, 43.700867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543283, -0.643638, 0.539049,
		0.029902, -0.626827, -0.778584,
		0.839017, 0.439110, -0.321299,
		43.401970, 33.686352, 43.604477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343285, 32.876389, 43.578621>,  <42.814659, 33.378975, 43.829388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343285, 32.876389, 43.578621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537281, 33.207424, 43.691681>,  <43.653679, 33.406044, 43.759518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537281, 33.207424, 43.691681>,  <43.343285, 32.876389, 43.578621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537281, 33.207424, 43.691681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672337, -0.559533, 0.484650,
		0.559241, -0.045013, -0.827782,
		0.484987, 0.827585, 0.282650,
		43.682777, 33.455700, 43.776478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027531, 33.010880, 43.389023>,  <43.343285, 32.876389, 43.578621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027531, 33.010880, 43.389023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997242, 33.186398, 43.747177>,  <43.979069, 33.291710, 43.962070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997242, 33.186398, 43.747177>,  <44.027531, 33.010880, 43.389023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997242, 33.186398, 43.747177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870563, -0.408752, 0.273938,
		0.486196, 0.800235, -0.351051,
		-0.075722, 0.438799, 0.895389,
		43.974525, 33.318039, 44.015793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610714, 33.379738, 43.519199>,  <44.027531, 33.010880, 43.389023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610714, 33.379738, 43.519199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446163, 33.260662, 43.863792>,  <44.347431, 33.189217, 44.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446163, 33.260662, 43.863792>,  <44.610714, 33.379738, 43.519199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446163, 33.260662, 43.863792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882973, -0.364632, 0.295638,
		0.226115, 0.882283, 0.412855,
		-0.411376, -0.297692, 0.861481,
		44.322750, 33.171356, 44.122238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086678, 32.764179, 43.523518>,  <44.610714, 33.379738, 43.519199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086678, 32.764179, 43.523518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329193, 32.787006, 43.840794>,  <45.474701, 32.800701, 44.031158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329193, 32.787006, 43.840794>,  <45.086678, 32.764179, 43.523518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329193, 32.787006, 43.840794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462708, -0.836518, -0.293494,
		0.646772, 0.544960, -0.533578,
		0.606290, 0.057067, 0.793193,
		45.511082, 32.804127, 44.078751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926727, 32.700996, 43.366329>,  <45.086678, 32.764179, 43.523518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926727, 32.700996, 43.366329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801136, 32.571106, 43.723198>,  <45.725780, 32.493172, 43.937321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801136, 32.571106, 43.723198>,  <45.926727, 32.700996, 43.366329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801136, 32.571106, 43.723198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394533, -0.899342, -0.188486,
		0.863575, 0.292812, 0.410487,
		-0.313977, -0.324723, 0.892173,
		45.706944, 32.473690, 43.990849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524994, 32.341267, 43.608471>,  <45.926727, 32.700996, 43.366329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524994, 32.341267, 43.608471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205704, 32.200954, 43.804344>,  <46.014130, 32.116768, 43.921867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205704, 32.200954, 43.804344>,  <46.524994, 32.341267, 43.608471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205704, 32.200954, 43.804344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398607, -0.917094, -0.007185,
		0.451609, 0.189457, 0.871869,
		-0.798224, -0.350778, 0.489687,
		45.966236, 32.095722, 43.951252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831974, 31.882204, 44.024105>,  <46.524994, 32.341267, 43.608471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831974, 31.882204, 44.024105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445251, 31.780006, 44.022598>,  <46.213219, 31.718687, 44.021694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445251, 31.780006, 44.022598>,  <46.831974, 31.882204, 44.024105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445251, 31.780006, 44.022598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255520, -0.966766, -0.008591,
		-0.001444, -0.009267, 0.999956,
		-0.966803, -0.255496, -0.003763,
		46.155212, 31.703358, 44.021469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662560, 31.255768, 43.529144>,  <46.831974, 31.882204, 44.024105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662560, 31.255768, 43.529144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468010, 30.925486, 43.643444>,  <46.351280, 30.727316, 43.712025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468010, 30.925486, 43.643444>,  <46.662560, 31.255768, 43.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468010, 30.925486, 43.643444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848044, 0.524852, 0.073158,
		-0.210384, -0.206747, -0.955507,
		-0.486375, -0.825703, 0.285751,
		46.322098, 30.677774, 43.729168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141205, 31.416094, 43.109039>,  <46.662560, 31.255768, 43.529144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141205, 31.416094, 43.109039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807636, 31.557192, 42.939266>,  <45.607494, 31.641851, 42.837402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807636, 31.557192, 42.939266>,  <46.141205, 31.416094, 43.109039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807636, 31.557192, 42.939266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551809, 0.545306, -0.630990,
		0.008867, -0.760403, -0.649391,
		-0.833923, 0.352745, -0.424433,
		45.557461, 31.663015, 42.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134251, 31.253119, 42.400009>,  <46.141205, 31.416094, 43.109039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134251, 31.253119, 42.400009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894901, 31.569891, 42.448658>,  <45.751289, 31.759954, 42.477848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894901, 31.569891, 42.448658>,  <46.134251, 31.253119, 42.400009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894901, 31.569891, 42.448658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302981, 0.364179, -0.880668,
		-0.741720, -0.490121, -0.457856,
		-0.598376, 0.791931, 0.121621,
		45.715389, 31.807470, 42.485146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893280, 31.384224, 41.790028>,  <46.134251, 31.253119, 42.400009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893280, 31.384224, 41.790028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835148, 31.731806, 41.979256>,  <45.800270, 31.940355, 42.092793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835148, 31.731806, 41.979256>,  <45.893280, 31.384224, 41.790028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835148, 31.731806, 41.979256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183137, 0.493510, -0.850240,
		-0.972286, -0.036927, -0.230859,
		-0.145328, 0.868956, 0.473070,
		45.791550, 31.992493, 42.121178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450863, 31.759584, 41.351765>,  <45.893280, 31.384224, 41.790028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450863, 31.759584, 41.351765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588127, 32.062424, 41.574131>,  <45.670486, 32.244125, 41.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588127, 32.062424, 41.574131>,  <45.450863, 31.759584, 41.351765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588127, 32.062424, 41.574131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034763, 0.601691, -0.797972,
		-0.938633, 0.254506, 0.232795,
		0.343160, 0.757096, 0.555920,
		45.691074, 32.289551, 41.740906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951988, 32.304482, 41.362328>,  <45.450863, 31.759584, 41.351765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951988, 32.304482, 41.362328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302208, 32.474323, 41.454525>,  <45.512341, 32.576229, 41.509842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302208, 32.474323, 41.454525>,  <44.951988, 32.304482, 41.362328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302208, 32.474323, 41.454525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106369, 0.634791, -0.765327,
		-0.471272, 0.645565, 0.600956,
		0.875550, 0.424600, 0.230491,
		45.564873, 32.601704, 41.523674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848824, 33.022491, 41.390907>,  <44.951988, 32.304482, 41.362328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848824, 33.022491, 41.390907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233543, 32.950882, 41.308075>,  <45.464375, 32.907917, 41.258373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233543, 32.950882, 41.308075>,  <44.848824, 33.022491, 41.390907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233543, 32.950882, 41.308075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026412, 0.692278, -0.721148,
		0.272463, 0.699072, 0.661107,
		0.961804, -0.179025, -0.207084,
		45.522083, 32.897175, 41.245949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112492, 33.738724, 41.205334>,  <44.848824, 33.022491, 41.390907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112492, 33.738724, 41.205334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381763, 33.480915, 41.060326>,  <45.543327, 33.326229, 40.973320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381763, 33.480915, 41.060326>,  <45.112492, 33.738724, 41.205334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381763, 33.480915, 41.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105062, 0.568626, -0.815859,
		0.731981, 0.511130, 0.450500,
		0.673176, -0.644524, -0.362523,
		45.583717, 33.287560, 40.951569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723400, 34.150673, 40.995350>,  <45.112492, 33.738724, 41.205334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723400, 34.150673, 40.995350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765488, 33.807487, 40.794220>,  <45.790741, 33.601578, 40.673542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765488, 33.807487, 40.794220>,  <45.723400, 34.150673, 40.995350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765488, 33.807487, 40.794220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145147, 0.513467, -0.845744,
		0.983799, 0.016006, 0.178557,
		0.105220, -0.857960, -0.502826,
		45.797054, 33.550098, 40.643372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289749, 34.299332, 40.560314>,  <45.723400, 34.150673, 40.995350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289749, 34.299332, 40.560314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109127, 33.976456, 40.408237>,  <46.000755, 33.782730, 40.316990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109127, 33.976456, 40.408237>,  <46.289749, 34.299332, 40.560314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109127, 33.976456, 40.408237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058264, 0.398522, -0.915307,
		0.890340, -0.435461, -0.132923,
		-0.451553, -0.807189, -0.380192,
		45.973660, 33.734299, 40.294182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685959, 34.101376, 40.031364>,  <46.289749, 34.299332, 40.560314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685959, 34.101376, 40.031364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347904, 33.907265, 39.941692>,  <46.145073, 33.790798, 39.887890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347904, 33.907265, 39.941692>,  <46.685959, 34.101376, 40.031364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347904, 33.907265, 39.941692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008435, 0.407221, -0.913291,
		0.534490, -0.773743, -0.340062,
		-0.845133, -0.485277, -0.224182,
		46.094364, 33.761681, 39.874439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756382, 34.013851, 39.369198>,  <46.685959, 34.101376, 40.031364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756382, 34.013851, 39.369198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362202, 33.954121, 39.401653>,  <46.125694, 33.918282, 39.421127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362202, 33.954121, 39.401653>,  <46.756382, 34.013851, 39.369198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362202, 33.954121, 39.401653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153810, 0.580596, -0.799531,
		0.072287, -0.800380, -0.595119,
		-0.985453, -0.149331, 0.081137,
		46.066566, 33.909321, 39.425995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.563622, 33.816227, 38.708237>,  <46.756382, 34.013851, 39.369198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.563622, 33.816227, 38.708237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235275, 33.959816, 38.885918>,  <46.038269, 34.045967, 38.992527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235275, 33.959816, 38.885918>,  <46.563622, 33.816227, 38.708237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235275, 33.959816, 38.885918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198860, 0.549459, -0.811510,
		-0.535381, -0.754476, -0.379648,
		-0.820866, 0.358971, 0.444206,
		45.989014, 34.067509, 39.019180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092113, 33.863491, 38.165932>,  <46.563622, 33.816227, 38.708237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092113, 33.863491, 38.165932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921974, 34.089149, 38.449005>,  <45.819889, 34.224545, 38.618847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921974, 34.089149, 38.449005>,  <46.092113, 33.863491, 38.165932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921974, 34.089149, 38.449005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351764, 0.617408, -0.703611,
		-0.833870, -0.548218, -0.064167,
		-0.425350, 0.564149, 0.707682,
		45.794369, 34.258392, 38.661308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441063, 33.917858, 37.909374>,  <46.092113, 33.863491, 38.165932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441063, 33.917858, 37.909374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495071, 34.217064, 38.169292>,  <45.527477, 34.396587, 38.325245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495071, 34.217064, 38.169292>,  <45.441063, 33.917858, 37.909374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495071, 34.217064, 38.169292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278670, 0.658001, -0.699556,
		-0.950848, -0.086623, 0.297296,
		0.135023, 0.748019, 0.649798,
		45.535580, 34.441471, 38.364231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821522, 34.324688, 38.021347>,  <45.441063, 33.917858, 37.909374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821522, 34.324688, 38.021347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137344, 34.548565, 38.122017>,  <45.326839, 34.682892, 38.182419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137344, 34.548565, 38.122017>,  <44.821522, 34.324688, 38.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137344, 34.548565, 38.122017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168124, 0.591699, -0.788433,
		-0.590194, 0.580203, 0.561280,
		0.789560, 0.559693, 0.251671,
		45.374214, 34.716473, 38.197517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503258, 34.924870, 38.218178>,  <44.821522, 34.324688, 38.021347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503258, 34.924870, 38.218178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886776, 35.013432, 38.146961>,  <45.116886, 35.066566, 38.104229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886776, 35.013432, 38.146961>,  <44.503258, 34.924870, 38.218178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886776, 35.013432, 38.146961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283679, 0.711593, -0.642777,
		-0.015616, 0.666797, 0.745076,
		0.958792, 0.221400, -0.178044,
		45.174412, 35.079853, 38.093548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400894, 35.595493, 38.032928>,  <44.503258, 34.924870, 38.218178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400894, 35.595493, 38.032928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775341, 35.526550, 37.910305>,  <45.000008, 35.485184, 37.836731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775341, 35.526550, 37.910305>,  <44.400894, 35.595493, 38.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775341, 35.526550, 37.910305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134557, 0.629821, -0.764996,
		0.324933, 0.757375, 0.566394,
		0.936116, -0.172360, -0.306559,
		45.056175, 35.474842, 37.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665894, 36.229259, 37.973412>,  <44.400894, 35.595493, 38.032928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665894, 36.229259, 37.973412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889050, 36.009678, 37.724445>,  <45.022945, 35.877930, 37.575066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889050, 36.009678, 37.724445>,  <44.665894, 36.229259, 37.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889050, 36.009678, 37.724445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137646, 0.678387, -0.721696,
		0.818418, 0.488303, 0.302906,
		0.557894, -0.548955, -0.622417,
		45.056419, 35.844990, 37.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122032, 36.710182, 37.683701>,  <44.665894, 36.229259, 37.973412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122032, 36.710182, 37.683701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108322, 36.381374, 37.456329>,  <45.100098, 36.184090, 37.319908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108322, 36.381374, 37.456329>,  <45.122032, 36.710182, 37.683701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108322, 36.381374, 37.456329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159749, 0.565952, -0.808813,
		0.986563, 0.063086, -0.150713,
		-0.034271, -0.822021, -0.568425,
		45.098042, 36.134769, 37.285801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628952, 36.777908, 37.143497>,  <45.122032, 36.710182, 37.683701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628952, 36.777908, 37.143497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360561, 36.509377, 37.017567>,  <45.199528, 36.348259, 36.942009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360561, 36.509377, 37.017567>,  <45.628952, 36.777908, 37.143497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360561, 36.509377, 37.017567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073805, 0.482952, -0.872531,
		0.737800, -0.562209, -0.373595,
		-0.670973, -0.671326, -0.314828,
		45.159271, 36.307980, 36.923119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829048, 36.662178, 36.469582>,  <45.628952, 36.777908, 37.143497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829048, 36.662178, 36.469582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449368, 36.541553, 36.505535>,  <45.221561, 36.469177, 36.527107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449368, 36.541553, 36.505535>,  <45.829048, 36.662178, 36.469582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449368, 36.541553, 36.505535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230616, 0.472307, -0.850730,
		0.214093, -0.828243, -0.517859,
		-0.949200, -0.301562, 0.089888,
		45.164608, 36.451084, 36.532501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719746, 36.415150, 35.867962>,  <45.829048, 36.662178, 36.469582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719746, 36.415150, 35.867962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352379, 36.487232, 36.008835>,  <45.131958, 36.530483, 36.093361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352379, 36.487232, 36.008835>,  <45.719746, 36.415150, 35.867962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352379, 36.487232, 36.008835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288598, 0.303723, -0.908000,
		-0.270594, -0.935563, -0.226938,
		-0.918417, 0.180205, 0.352187,
		45.076855, 36.541294, 36.114491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401398, 36.050030, 35.394871>,  <45.719746, 36.415150, 35.867962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401398, 36.050030, 35.394871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173790, 36.344948, 35.540535>,  <45.037224, 36.521896, 35.627934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173790, 36.344948, 35.540535>,  <45.401398, 36.050030, 35.394871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173790, 36.344948, 35.540535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312916, 0.215395, -0.925034,
		-0.760461, -0.640315, 0.108147,
		-0.569019, 0.737293, 0.364165,
		45.003086, 36.566135, 35.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863987, 35.681549, 35.711613>,  <45.401398, 36.050030, 35.394871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863987, 35.681549, 35.711613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902485, 35.528435, 35.344090>,  <45.925583, 35.436565, 35.123573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902485, 35.528435, 35.344090>,  <45.863987, 35.681549, 35.711613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902485, 35.528435, 35.344090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417292, 0.853576, -0.311892,
		0.903661, -0.353393, 0.241887,
		0.096249, -0.382782, -0.918811,
		45.931358, 35.413601, 35.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610069, 35.681316, 35.475090>,  <45.863987, 35.681549, 35.711613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610069, 35.681316, 35.475090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329044, 35.707066, 35.191608>,  <46.160431, 35.722515, 35.021519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329044, 35.707066, 35.191608>,  <46.610069, 35.681316, 35.475090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329044, 35.707066, 35.191608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413952, 0.847036, -0.333427,
		0.578838, -0.527623, -0.621740,
		-0.702560, 0.064370, -0.708707,
		46.118275, 35.726376, 34.978996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144142, 35.231693, 35.672543>,  <46.610069, 35.681316, 35.475090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144142, 35.231693, 35.672543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445580, 34.988583, 35.572376>,  <47.626442, 34.842716, 35.512276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445580, 34.988583, 35.572376>,  <47.144142, 35.231693, 35.672543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445580, 34.988583, 35.572376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653228, 0.734954, 0.182031,
		0.073411, -0.300757, 0.950871,
		0.753594, -0.607773, -0.250417,
		47.671658, 34.806252, 35.497250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500046, 35.102318, 35.025993>,  <47.144142, 35.231693, 35.672543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500046, 35.102318, 35.025993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759338, 34.850533, 34.854610>,  <47.914913, 34.699463, 34.751781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759338, 34.850533, 34.854610>,  <47.500046, 35.102318, 35.025993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759338, 34.850533, 34.854610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246081, -0.359308, 0.900190,
		-0.720582, -0.688966, -0.078016,
		0.648232, -0.629462, -0.428453,
		47.953808, 34.661694, 34.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.968861, 36.555389, 46.441788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725967, 36.237808, 46.429718>,  <32.580231, 36.047260, 46.422478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725967, 36.237808, 46.429718>,  <32.968861, 36.555389, 46.441788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725967, 36.237808, 46.429718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359681, 0.308561, -0.880579,
		0.708446, -0.523864, -0.472937,
		-0.607234, -0.793950, -0.030175,
		32.543797, 35.999622, 46.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097866, 36.290375, 45.774540>,  <32.968861, 36.555389, 46.441788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097866, 36.290375, 45.774540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743305, 36.129478, 45.866192>,  <32.530571, 36.032940, 45.921181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743305, 36.129478, 45.866192>,  <33.097866, 36.290375, 45.774540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743305, 36.129478, 45.866192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374379, 0.331759, -0.865896,
		0.272280, -0.853312, -0.444660,
		-0.886399, -0.402238, 0.229130,
		32.477386, 36.008804, 45.934929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973255, 35.807777, 45.299213>,  <33.097866, 36.290375, 45.774540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973255, 35.807777, 45.299213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613518, 35.908562, 45.442150>,  <32.397675, 35.969032, 45.527912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613518, 35.908562, 45.442150>,  <32.973255, 35.807777, 45.299213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613518, 35.908562, 45.442150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295992, 0.250688, -0.921707,
		-0.321817, -0.934703, -0.150876,
		-0.899346, 0.251963, 0.357340,
		32.343716, 35.984150, 45.549351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488976, 35.411743, 44.872093>,  <32.973255, 35.807777, 45.299213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488976, 35.411743, 44.872093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303986, 35.723000, 45.042091>,  <32.192993, 35.909752, 45.144089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303986, 35.723000, 45.042091>,  <32.488976, 35.411743, 44.872093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303986, 35.723000, 45.042091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442848, 0.212535, -0.871042,
		-0.768119, -0.591038, 0.246307,
		-0.462470, 0.778141, 0.424992,
		32.165245, 35.956440, 45.169590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719439, 35.339798, 44.586361>,  <32.488976, 35.411743, 44.872093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719439, 35.339798, 44.586361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.819561, 35.708046, 44.706230>,  <31.879635, 35.928993, 44.778152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.819561, 35.708046, 44.706230>,  <31.719439, 35.339798, 44.586361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819561, 35.708046, 44.706230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397038, 0.379909, -0.835482,
		-0.883010, 0.090146, 0.460615,
		0.250307, 0.920621, 0.299672,
		31.894653, 35.984234, 44.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216854, 35.753769, 44.221317>,  <31.719439, 35.339798, 44.586361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216854, 35.753769, 44.221317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490929, 36.020966, 44.337460>,  <31.655375, 36.181282, 44.407146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490929, 36.020966, 44.337460>,  <31.216854, 35.753769, 44.221317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490929, 36.020966, 44.337460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124276, 0.500011, -0.857056,
		-0.717686, 0.551160, 0.425616,
		0.685187, 0.667991, 0.290355,
		31.696486, 36.221363, 44.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137657, 36.274818, 43.731930>,  <31.216854, 35.753769, 44.221317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137657, 36.274818, 43.731930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.462061, 36.419453, 43.915897>,  <31.656702, 36.506233, 44.026276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.462061, 36.419453, 43.915897>,  <31.137657, 36.274818, 43.731930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462061, 36.419453, 43.915897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247976, 0.499556, -0.830031,
		-0.529882, 0.787210, 0.315479,
		0.811008, 0.361587, 0.459914,
		31.705362, 36.527927, 44.053871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109604, 37.087345, 43.785351>,  <31.137657, 36.274818, 43.731930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109604, 37.087345, 43.785351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481079, 36.939022, 43.787762>,  <31.703964, 36.850029, 43.789207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481079, 36.939022, 43.787762>,  <31.109604, 37.087345, 43.785351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481079, 36.939022, 43.787762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210350, 0.513289, -0.832038,
		0.305430, 0.773975, 0.554685,
		0.928690, -0.370807, 0.006032,
		31.759686, 36.827782, 43.789570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527370, 37.622829, 43.518177>,  <31.109604, 37.087345, 43.785351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527370, 37.622829, 43.518177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.785673, 37.318863, 43.488453>,  <31.940655, 37.136482, 43.470619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.785673, 37.318863, 43.488453>,  <31.527370, 37.622829, 43.518177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785673, 37.318863, 43.488453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284245, 0.329580, -0.900323,
		0.708662, 0.560269, 0.428832,
		0.645758, -0.759918, -0.074307,
		31.979401, 37.090889, 43.466160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269615, 37.937733, 43.290081>,  <31.527370, 37.622829, 43.518177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269615, 37.937733, 43.290081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246723, 37.549789, 43.195335>,  <32.232986, 37.317024, 43.138489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246723, 37.549789, 43.195335>,  <32.269615, 37.937733, 43.290081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246723, 37.549789, 43.195335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516285, 0.174315, -0.838489,
		0.854503, -0.170278, 0.490745,
		-0.057232, -0.969855, -0.236865,
		32.229553, 37.258831, 43.124275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890160, 37.738518, 43.085651>,  <32.269615, 37.937733, 43.290081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890160, 37.738518, 43.085651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.658031, 37.459976, 42.916737>,  <32.518757, 37.292850, 42.815388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.658031, 37.459976, 42.916737>,  <32.890160, 37.738518, 43.085651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658031, 37.459976, 42.916737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518083, 0.084404, -0.851155,
		0.628348, -0.712718, 0.311788,
		-0.580318, -0.696354, -0.422282,
		32.483936, 37.251072, 42.790051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373302, 37.325233, 42.670856>,  <32.890160, 37.738518, 43.085651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373302, 37.325233, 42.670856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005463, 37.236507, 42.541161>,  <32.784760, 37.183270, 42.463345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005463, 37.236507, 42.541161>,  <33.373302, 37.325233, 42.670856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005463, 37.236507, 42.541161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297383, 0.146244, -0.943491,
		0.256702, -0.964059, -0.068521,
		-0.919602, -0.221819, -0.324235,
		32.729584, 37.169964, 42.443890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467197, 36.799873, 42.284859>,  <33.373302, 37.325233, 42.670856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467197, 36.799873, 42.284859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122540, 36.960098, 42.160206>,  <32.915745, 37.056232, 42.085415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122540, 36.960098, 42.160206>,  <33.467197, 36.799873, 42.284859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122540, 36.960098, 42.160206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341890, 0.004343, -0.939730,
		-0.375071, -0.916257, -0.140692,
		-0.861646, 0.400567, -0.311630,
		32.864044, 37.080269, 42.066715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294746, 36.468060, 41.610153>,  <33.467197, 36.799873, 42.284859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294746, 36.468060, 41.610153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060177, 36.791733, 41.595581>,  <32.919437, 36.985939, 41.586838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060177, 36.791733, 41.595581>,  <33.294746, 36.468060, 41.610153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060177, 36.791733, 41.595581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209681, 0.108212, -0.971763,
		-0.782397, -0.577500, -0.233129,
		-0.586421, 0.809187, -0.036426,
		32.884251, 37.034489, 41.584652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791523, 36.381603, 41.089329>,  <33.294746, 36.468060, 41.610153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791523, 36.381603, 41.089329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846096, 36.775166, 41.135487>,  <32.878841, 37.011303, 41.163181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846096, 36.775166, 41.135487>,  <32.791523, 36.381603, 41.089329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846096, 36.775166, 41.135487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029375, 0.112416, -0.993227,
		-0.990214, 0.138897, -0.013565,
		0.136432, 0.983905, 0.115395,
		32.887024, 37.070335, 41.170105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492039, 36.641891, 40.545139>,  <32.791523, 36.381603, 41.089329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492039, 36.641891, 40.545139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.683159, 36.973087, 40.662540>,  <32.797832, 37.171803, 40.732983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.683159, 36.973087, 40.662540>,  <32.492039, 36.641891, 40.545139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683159, 36.973087, 40.662540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087584, 0.287542, -0.953755,
		-0.874089, 0.481415, 0.064871,
		0.477805, 0.827985, 0.293502,
		32.826500, 37.221481, 40.750591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190060, 37.305298, 40.185318>,  <32.492039, 36.641891, 40.545139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190060, 37.305298, 40.185318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571060, 37.397190, 40.265278>,  <32.799660, 37.452324, 40.313251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571060, 37.397190, 40.265278>,  <32.190060, 37.305298, 40.185318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571060, 37.397190, 40.265278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108535, 0.357210, -0.927697,
		-0.284525, 0.905331, 0.315311,
		0.952505, 0.229731, 0.199895,
		32.856812, 37.466110, 40.325245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325508, 38.029156, 39.937359>,  <32.190060, 37.305298, 40.185318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325508, 38.029156, 39.937359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689217, 37.868992, 39.982796>,  <32.907440, 37.772892, 40.010059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689217, 37.868992, 39.982796>,  <32.325508, 38.029156, 39.937359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689217, 37.868992, 39.982796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240304, 0.282212, -0.928768,
		0.339832, 0.871796, 0.352827,
		0.909268, -0.400411, 0.113591,
		32.961998, 37.748867, 40.016872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667049, 38.500595, 39.644875>,  <32.325508, 38.029156, 39.937359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667049, 38.500595, 39.644875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897957, 38.174114, 39.654404>,  <33.036503, 37.978226, 39.660122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897957, 38.174114, 39.654404>,  <32.667049, 38.500595, 39.644875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897957, 38.174114, 39.654404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359617, 0.227936, -0.904832,
		0.733097, 0.530902, 0.425102,
		0.577273, -0.816204, 0.023822,
		33.071140, 37.929253, 39.661549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304955, 38.638847, 39.250500>,  <32.667049, 38.500595, 39.644875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304955, 38.638847, 39.250500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297573, 38.238983, 39.257763>,  <33.293144, 37.999065, 39.262119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297573, 38.238983, 39.257763>,  <33.304955, 38.638847, 39.250500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297573, 38.238983, 39.257763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293183, -0.022775, -0.955785,
		0.955878, -0.012316, 0.293505,
		-0.018456, -0.999665, 0.018159,
		33.292038, 37.939083, 39.263210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899609, 38.496326, 38.802078>,  <33.304955, 38.638847, 39.250500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899609, 38.496326, 38.802078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699860, 38.151031, 38.831619>,  <33.580009, 37.943855, 38.849342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699860, 38.151031, 38.831619>,  <33.899609, 38.496326, 38.802078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699860, 38.151031, 38.831619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301077, -0.252832, -0.919472,
		0.812391, -0.436925, 0.386157,
		-0.499373, -0.863234, 0.073850,
		33.550049, 37.892063, 38.853775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572601, 38.548744, 38.424194>,  <33.899609, 38.496326, 38.802078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572601, 38.548744, 38.424194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950150, 38.680222, 38.411152>,  <35.176678, 38.759109, 38.403324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950150, 38.680222, 38.411152>,  <34.572601, 38.548744, 38.424194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950150, 38.680222, 38.411152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051987, -0.050335, 0.997378,
		0.326194, -0.943093, -0.064598,
		0.943872, 0.328698, -0.032610,
		35.233311, 38.778831, 38.401367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949295, 37.982964, 38.792416>,  <34.572601, 38.548744, 38.424194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949295, 37.982964, 38.792416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138058, 38.335388, 38.805328>,  <35.251316, 38.546841, 38.813076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138058, 38.335388, 38.805328>,  <34.949295, 37.982964, 38.792416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138058, 38.335388, 38.805328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368994, -0.230629, 0.900363,
		0.800719, -0.412971, -0.433940,
		0.471903, 0.881059, 0.032285,
		35.279629, 38.599705, 38.815014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509773, 37.783455, 39.006435>,  <34.949295, 37.982964, 38.792416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509773, 37.783455, 39.006435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495487, 38.174156, 39.090977>,  <35.486916, 38.408577, 39.141701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495487, 38.174156, 39.090977>,  <35.509773, 37.783455, 39.006435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495487, 38.174156, 39.090977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434788, -0.175238, 0.883318,
		0.899824, 0.123445, -0.418422,
		-0.035718, 0.976756, 0.211356,
		35.484772, 38.467182, 39.154385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103863, 37.868103, 39.417461>,  <35.509773, 37.783455, 39.006435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103863, 37.868103, 39.417461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921047, 38.209476, 39.517670>,  <35.811359, 38.414303, 39.577793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921047, 38.209476, 39.517670>,  <36.103863, 37.868103, 39.417461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921047, 38.209476, 39.517670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412037, -0.046464, 0.909982,
		0.788253, 0.519120, -0.330412,
		-0.457037, 0.853438, 0.250522,
		35.783936, 38.465508, 39.592827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544094, 38.295750, 39.795856>,  <36.103863, 37.868103, 39.417461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544094, 38.295750, 39.795856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176376, 38.420471, 39.891918>,  <35.955746, 38.495304, 39.949554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176376, 38.420471, 39.891918>,  <36.544094, 38.295750, 39.795856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176376, 38.420471, 39.891918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221136, -0.095559, 0.970550,
		0.325571, 0.945329, 0.018896,
		-0.919295, 0.311804, 0.240158,
		35.900589, 38.514011, 39.963966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579136, 38.835106, 40.256649>,  <36.544094, 38.295750, 39.795856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579136, 38.835106, 40.256649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222935, 38.661228, 40.310368>,  <36.009212, 38.556900, 40.342598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222935, 38.661228, 40.310368>,  <36.579136, 38.835106, 40.256649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222935, 38.661228, 40.310368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259926, -0.243812, 0.934342,
		-0.373412, 0.866945, 0.330105,
		-0.890506, -0.434698, 0.134299,
		35.955784, 38.530819, 40.350658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451477, 38.918617, 40.961849>,  <36.579136, 38.835106, 40.256649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451477, 38.918617, 40.961849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192917, 38.636803, 40.844681>,  <36.037781, 38.467712, 40.774380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192917, 38.636803, 40.844681>,  <36.451477, 38.918617, 40.961849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192917, 38.636803, 40.844681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042723, -0.416719, 0.908031,
		-0.761805, 0.574433, 0.299466,
		-0.646396, -0.704537, -0.292917,
		35.998997, 38.425442, 40.756805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971256, 38.829048, 41.590137>,  <36.451477, 38.918617, 40.961849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971256, 38.829048, 41.590137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940563, 38.505013, 41.357632>,  <35.922146, 38.310593, 41.218128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940563, 38.505013, 41.357632>,  <35.971256, 38.829048, 41.590137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940563, 38.505013, 41.357632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121102, -0.571094, 0.811902,
		-0.989670, 0.132691, -0.054282,
		-0.076732, -0.810089, -0.581264,
		35.917545, 38.261986, 41.183254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231785, 38.653347, 41.783245>,  <35.971256, 38.829048, 41.590137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231785, 38.653347, 41.783245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457047, 38.350975, 41.649723>,  <35.592205, 38.169552, 41.569611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457047, 38.350975, 41.649723>,  <35.231785, 38.653347, 41.783245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457047, 38.350975, 41.649723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008516, -0.398617, 0.917078,
		-0.826307, -0.519300, -0.218045,
		0.563156, -0.755932, -0.333802,
		35.625992, 38.124195, 41.549583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894768, 38.045647, 42.025455>,  <35.231785, 38.653347, 41.783245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894768, 38.045647, 42.025455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239803, 37.870831, 41.923515>,  <35.446823, 37.765942, 41.862350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239803, 37.870831, 41.923515>,  <34.894768, 38.045647, 42.025455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239803, 37.870831, 41.923515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087154, -0.367840, 0.925796,
		-0.498350, -0.820788, -0.279203,
		0.862584, -0.437037, -0.254848,
		35.498577, 37.739719, 41.847061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824924, 37.251598, 42.141239>,  <34.894768, 38.045647, 42.025455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824924, 37.251598, 42.141239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200245, 37.389084, 42.156521>,  <35.425438, 37.471573, 42.165691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200245, 37.389084, 42.156521>,  <34.824924, 37.251598, 42.141239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200245, 37.389084, 42.156521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076023, -0.312779, 0.946778,
		0.337370, -0.885455, -0.319610,
		0.938298, 0.343713, 0.038208,
		35.481735, 37.492199, 42.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210629, 36.860592, 42.565586>,  <34.824924, 37.251598, 42.141239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210629, 36.860592, 42.565586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470257, 37.164478, 42.549911>,  <35.626034, 37.346809, 42.540508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470257, 37.164478, 42.549911>,  <35.210629, 36.860592, 42.565586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470257, 37.164478, 42.549911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327068, -0.232187, 0.916033,
		0.686830, -0.607384, -0.399186,
		0.649069, 0.759719, -0.039183,
		35.664978, 37.392395, 42.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827633, 36.575306, 42.809177>,  <35.210629, 36.860592, 42.565586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827633, 36.575306, 42.809177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853535, 36.970406, 42.865982>,  <35.869076, 37.207466, 42.900066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853535, 36.970406, 42.865982>,  <35.827633, 36.575306, 42.809177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853535, 36.970406, 42.865982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235357, -0.153414, 0.959725,
		0.969749, -0.028725, -0.242407,
		0.064756, 0.987744, 0.142012,
		35.872963, 37.266727, 42.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457634, 36.680649, 43.225597>,  <35.827633, 36.575306, 42.809177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457634, 36.680649, 43.225597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257599, 37.021839, 43.285393>,  <36.137577, 37.226551, 43.321270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257599, 37.021839, 43.285393>,  <36.457634, 36.680649, 43.225597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257599, 37.021839, 43.285393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289346, 0.001881, 0.957223,
		0.816204, 0.521952, -0.247745,
		-0.500090, 0.852973, 0.149489,
		36.107571, 37.277733, 43.330238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730503, 36.985764, 43.815083>,  <36.457634, 36.680649, 43.225597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730503, 36.985764, 43.815083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372429, 37.163887, 43.807560>,  <36.157585, 37.270760, 43.803047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372429, 37.163887, 43.807560>,  <36.730503, 36.985764, 43.815083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372429, 37.163887, 43.807560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017802, 0.006445, 0.999821,
		0.445346, 0.895356, 0.002158,
		-0.895181, 0.445305, -0.018809,
		36.103874, 37.297478, 43.801918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762394, 37.445862, 44.330715>,  <36.730503, 36.985764, 43.815083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762394, 37.445862, 44.330715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372036, 37.391186, 44.262665>,  <36.137821, 37.358379, 44.221836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372036, 37.391186, 44.262665>,  <36.762394, 37.445862, 44.330715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372036, 37.391186, 44.262665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192629, 0.173103, 0.965883,
		-0.102581, 0.975372, -0.195262,
		-0.975895, -0.136695, -0.170127,
		36.079266, 37.350178, 44.211628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542660, 37.708271, 44.948139>,  <36.762394, 37.445862, 44.330715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542660, 37.708271, 44.948139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199684, 37.556877, 44.808685>,  <35.993900, 37.466042, 44.725014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199684, 37.556877, 44.808685>,  <36.542660, 37.708271, 44.948139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199684, 37.556877, 44.808685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474732, 0.320382, 0.819747,
		-0.198561, 0.868394, -0.454385,
		-0.857440, -0.378481, -0.348639,
		35.942451, 37.443333, 44.704094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990334, 38.221611, 45.192181>,  <36.542660, 37.708271, 44.948139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990334, 38.221611, 45.192181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803928, 37.876080, 45.115631>,  <35.692085, 37.668758, 45.069702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803928, 37.876080, 45.115631>,  <35.990334, 38.221611, 45.192181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803928, 37.876080, 45.115631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522169, 0.093909, 0.847656,
		-0.714261, 0.494950, -0.494829,
		-0.466017, -0.863832, -0.191372,
		35.664124, 37.616928, 45.058220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287624, 38.353329, 45.289474>,  <35.990334, 38.221611, 45.192181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287624, 38.353329, 45.289474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385021, 37.967400, 45.329128>,  <35.443459, 37.735844, 45.352921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385021, 37.967400, 45.329128>,  <35.287624, 38.353329, 45.289474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385021, 37.967400, 45.329128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529807, -0.046698, 0.846832,
		-0.812413, -0.258722, -0.522540,
		0.243496, -0.964822, 0.099135,
		35.458069, 37.677952, 45.358868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.507542, 38.037880, 45.532963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788013, 37.760529, 45.599377>,  <34.956295, 37.594116, 45.639225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788013, 37.760529, 45.599377>,  <34.507542, 38.037880, 45.532963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788013, 37.760529, 45.599377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502331, -0.315171, 0.805189,
		-0.505974, -0.647987, -0.569300,
		0.701180, -0.693383, 0.166036,
		34.998367, 37.552513, 45.649189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153141, 37.436043, 45.761700>,  <34.507542, 38.037880, 45.532963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153141, 37.436043, 45.761700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529926, 37.378777, 45.883163>,  <34.755997, 37.344418, 45.956043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529926, 37.378777, 45.883163>,  <34.153141, 37.436043, 45.761700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529926, 37.378777, 45.883163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334986, -0.460594, 0.821972,
		0.022187, -0.875989, -0.481821,
		0.941962, -0.143166, 0.303663,
		34.812515, 37.335827, 45.974262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101643, 36.885117, 46.176186>,  <34.153141, 37.436043, 45.761700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101643, 36.885117, 46.176186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459232, 37.023293, 46.290371>,  <34.673786, 37.106197, 46.358883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459232, 37.023293, 46.290371>,  <34.101643, 36.885117, 46.176186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459232, 37.023293, 46.290371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075341, -0.512089, 0.855622,
		0.441747, -0.786408, -0.431767,
		0.893971, 0.345438, 0.285462,
		34.727425, 37.126923, 46.376011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532726, 36.357464, 46.422447>,  <34.101643, 36.885117, 46.176186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532726, 36.357464, 46.422447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675243, 36.686085, 46.600483>,  <34.760754, 36.883259, 46.707306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675243, 36.686085, 46.600483>,  <34.532726, 36.357464, 46.422447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675243, 36.686085, 46.600483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075842, -0.500208, 0.862577,
		0.931291, -0.273574, -0.240530,
		0.356294, 0.821553, 0.445091,
		34.782131, 36.932552, 46.734009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063854, 35.976509, 46.834930>,  <34.532726, 36.357464, 46.422447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063854, 35.976509, 46.834930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984699, 36.343269, 46.973568>,  <34.937206, 36.563328, 47.056751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984699, 36.343269, 46.973568>,  <35.063854, 35.976509, 46.834930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984699, 36.343269, 46.973568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059661, -0.364198, 0.929409,
		0.978408, 0.163239, 0.126773,
		-0.197887, 0.916904, 0.346595,
		34.925335, 36.618340, 47.077545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491879, 36.062569, 47.293613>,  <35.063854, 35.976509, 46.834930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491879, 36.062569, 47.293613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199940, 36.316883, 47.394093>,  <35.024776, 36.469471, 47.454380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199940, 36.316883, 47.394093>,  <35.491879, 36.062569, 47.293613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199940, 36.316883, 47.394093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126817, -0.486998, 0.864147,
		0.671748, 0.598837, 0.436062,
		-0.729844, 0.635789, 0.251197,
		34.980988, 36.507618, 47.469452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537296, 36.091301, 47.955421>,  <35.491879, 36.062569, 47.293613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537296, 36.091301, 47.955421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183121, 36.276058, 47.934803>,  <34.970615, 36.386913, 47.922432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183121, 36.276058, 47.934803>,  <35.537296, 36.091301, 47.955421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183121, 36.276058, 47.934803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153626, -0.186197, 0.970428,
		0.438631, 0.867174, 0.235824,
		-0.885439, 0.461888, -0.051549,
		34.917488, 36.414623, 47.919338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546272, 36.548035, 48.505249>,  <35.537296, 36.091301, 47.955421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546272, 36.548035, 48.505249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160824, 36.485840, 48.418297>,  <34.929554, 36.448524, 48.366127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160824, 36.485840, 48.418297>,  <35.546272, 36.548035, 48.505249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160824, 36.485840, 48.418297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186488, -0.191445, 0.963624,
		-0.191445, 0.969109, 0.155485,
		-0.963624, -0.155485, -0.217379,
		34.871738, 36.439194, 48.353085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162540, 37.039425, 48.959961>,  <35.546272, 36.548035, 48.505249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162540, 37.039425, 48.959961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909111, 36.755440, 48.836975>,  <34.757053, 36.585049, 48.763184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909111, 36.755440, 48.836975>,  <35.162540, 37.039425, 48.959961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909111, 36.755440, 48.836975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275603, -0.164230, 0.947139,
		-0.722930, 0.684820, -0.091617,
		-0.633573, -0.709965, -0.307465,
		34.719040, 36.542450, 48.744736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528301, 37.014526, 49.365715>,  <35.162540, 37.039425, 48.959961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528301, 37.014526, 49.365715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492290, 36.641632, 49.225525>,  <34.470684, 36.417896, 49.141411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492290, 36.641632, 49.225525>,  <34.528301, 37.014526, 49.365715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492290, 36.641632, 49.225525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077220, -0.344314, 0.935674,
		-0.992941, 0.111302, -0.040988,
		-0.090029, -0.932234, -0.350478,
		34.465282, 36.361961, 49.120380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813396, 36.705021, 49.535881>,  <34.528301, 37.014526, 49.365715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813396, 36.705021, 49.535881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090801, 36.420177, 49.492168>,  <34.257244, 36.249271, 49.465942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090801, 36.420177, 49.492168>,  <33.813396, 36.705021, 49.535881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090801, 36.420177, 49.492168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099003, -0.244447, 0.964595,
		-0.713606, -0.658144, -0.240028,
		0.693516, -0.712105, -0.109281,
		34.298855, 36.206547, 49.459385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622307, 36.267918, 49.955193>,  <33.813396, 36.705021, 49.535881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622307, 36.267918, 49.955193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968906, 36.084702, 49.875824>,  <34.176868, 35.974770, 49.828201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968906, 36.084702, 49.875824>,  <33.622307, 36.267918, 49.955193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968906, 36.084702, 49.875824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028751, -0.351045, 0.935917,
		-0.498346, -0.816678, -0.291012,
		0.866501, -0.458044, -0.198422,
		34.228859, 35.947289, 49.816296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551888, 35.572338, 50.233135>,  <33.622307, 36.267918, 49.955193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551888, 35.572338, 50.233135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949001, 35.612831, 50.207424>,  <34.187271, 35.637127, 50.191998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949001, 35.612831, 50.207424>,  <33.551888, 35.572338, 50.233135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949001, 35.612831, 50.207424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107229, -0.509454, 0.853791,
		0.053684, -0.854522, -0.516633,
		0.992784, 0.101233, -0.064280,
		34.246838, 35.643200, 50.188141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822212, 34.833591, 50.323063>,  <33.551888, 35.572338, 50.233135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822212, 34.833591, 50.323063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103798, 35.099899, 50.422005>,  <34.272747, 35.259686, 50.481369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103798, 35.099899, 50.422005>,  <33.822212, 34.833591, 50.323063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103798, 35.099899, 50.422005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063358, -0.405750, 0.911785,
		0.707407, -0.626190, -0.327814,
		0.703961, 0.665773, 0.247356,
		34.314987, 35.299629, 50.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381241, 34.445152, 50.429657>,  <33.822212, 34.833591, 50.323063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381241, 34.445152, 50.429657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431664, 34.792175, 50.622093>,  <34.461918, 35.000389, 50.737556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431664, 34.792175, 50.622093>,  <34.381241, 34.445152, 50.429657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431664, 34.792175, 50.622093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008831, -0.483958, 0.875047,
		0.991984, -0.114552, -0.053343,
		0.126054, 0.867561, 0.481090,
		34.469479, 35.052444, 50.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613068, 34.310833, 51.035725>,  <34.381241, 34.445152, 50.429657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613068, 34.310833, 51.035725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596588, 34.696072, 51.142117>,  <34.586700, 34.927216, 51.205952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596588, 34.696072, 51.142117>,  <34.613068, 34.310833, 51.035725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596588, 34.696072, 51.142117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065965, -0.268247, 0.961089,
		0.996971, 0.022050, 0.074582,
		-0.041198, 0.963098, 0.265980,
		34.584229, 34.985001, 51.221912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172844, 34.411026, 51.573109>,  <34.613068, 34.310833, 51.035725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172844, 34.411026, 51.573109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861629, 34.661446, 51.593964>,  <34.674900, 34.811699, 51.606476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861629, 34.661446, 51.593964>,  <35.172844, 34.411026, 51.573109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861629, 34.661446, 51.593964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124015, -0.234426, 0.964191,
		0.615853, 0.743713, 0.260032,
		-0.778040, 0.626048, 0.052140,
		34.628216, 34.849258, 51.609604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227730, 34.688263, 52.240318>,  <35.172844, 34.411026, 51.573109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227730, 34.688263, 52.240318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844227, 34.757244, 52.149948>,  <34.614124, 34.798634, 52.095726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844227, 34.757244, 52.149948>,  <35.227730, 34.688263, 52.240318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844227, 34.757244, 52.149948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260108, -0.211984, 0.942023,
		0.114567, 0.961936, 0.248099,
		-0.958759, 0.172458, -0.225921,
		34.556599, 34.808983, 52.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070961, 35.240730, 52.770683>,  <35.227730, 34.688263, 52.240318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070961, 35.240730, 52.770683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733868, 35.054943, 52.661823>,  <34.531612, 34.943470, 52.596508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733868, 35.054943, 52.661823>,  <35.070961, 35.240730, 52.770683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733868, 35.054943, 52.661823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206222, -0.188446, 0.960188,
		-0.497261, 0.865308, 0.063027,
		-0.842736, -0.464467, -0.272152,
		34.481049, 34.915604, 52.580177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583618, 35.384933, 53.316242>,  <35.070961, 35.240730, 52.770683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583618, 35.384933, 53.316242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406231, 35.077774, 53.131344>,  <34.299797, 34.893478, 53.020405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406231, 35.077774, 53.131344>,  <34.583618, 35.384933, 53.316242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406231, 35.077774, 53.131344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213727, -0.410251, 0.886575,
		-0.870434, 0.491963, 0.017813,
		-0.443470, -0.767898, -0.462242,
		34.273190, 34.847404, 52.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923000, 35.253384, 53.697990>,  <34.583618, 35.384933, 53.316242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923000, 35.253384, 53.697990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004581, 34.903221, 53.522690>,  <34.053532, 34.693123, 53.417511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004581, 34.903221, 53.522690>,  <33.923000, 35.253384, 53.697990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004581, 34.903221, 53.522690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197300, -0.475228, 0.857456,
		-0.958893, -0.088414, -0.269641,
		0.203952, -0.875409, -0.438248,
		34.065765, 34.640598, 53.391216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 34.798595, 54.021255>,  <33.923000, 35.253384, 53.697990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373112, 34.798595, 54.021255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623322, 34.544582, 53.839947>,  <33.773445, 34.392174, 53.731163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623322, 34.544582, 53.839947>,  <33.373112, 34.798595, 54.021255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623322, 34.544582, 53.839947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224399, -0.702849, 0.675018,
		-0.747242, -0.320523, -0.582147,
		0.625519, -0.635035, -0.453273,
		33.810978, 34.354073, 53.703964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997463, 34.195530, 53.885506>,  <33.373112, 34.798595, 54.021255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997463, 34.195530, 53.885506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388138, 34.119583, 53.925560>,  <33.622543, 34.074013, 53.949593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388138, 34.119583, 53.925560>,  <32.997463, 34.195530, 53.885506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388138, 34.119583, 53.925560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211249, -0.767371, 0.605405,
		-0.038107, -0.612446, -0.789593,
		0.976689, -0.189871, 0.100136,
		33.681145, 34.062622, 53.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990475, 33.418816, 53.863602>,  <32.997463, 34.195530, 53.885506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990475, 33.418816, 53.863602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.563820, 54.063473>,  <33.493965, 33.650822, 54.183395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.563820, 54.063473>,  <32.990475, 33.418816, 53.863602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305157, 33.563820, 54.063473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, -0.766369, 0.640171,
		0.615012, -0.530342, -0.583523,
		0.786703, 0.362513, 0.499682,
		33.541168, 33.672573, 54.213379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876148, 32.597279, 53.762417>,  <32.990475, 33.418816, 53.863602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876148, 32.597279, 53.762417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495396, 32.485439, 53.712234>,  <32.266945, 32.418335, 53.682125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495396, 32.485439, 53.712234>,  <32.876148, 32.597279, 53.762417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495396, 32.485439, 53.712234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185180, -0.198612, -0.962425,
		0.244177, -0.939349, 0.240832,
		-0.951885, -0.279599, -0.125452,
		32.209831, 32.401558, 53.674599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881035, 32.042713, 53.327324>,  <32.876148, 32.597279, 53.762417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881035, 32.042713, 53.327324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514477, 32.199203, 53.293468>,  <32.294544, 32.293098, 53.273155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514477, 32.199203, 53.293468>,  <32.881035, 32.042713, 53.327324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514477, 32.199203, 53.293468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089058, -0.006877, -0.996003,
		-0.390247, -0.920268, -0.028540,
		-0.916393, 0.391228, -0.084641,
		32.239559, 32.316570, 53.268078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631817, 31.741404, 52.772640>,  <32.881035, 32.042713, 53.327324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631817, 31.741404, 52.772640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389973, 32.056435, 52.820251>,  <32.244865, 32.245453, 52.848820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389973, 32.056435, 52.820251>,  <32.631817, 31.741404, 52.772640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389973, 32.056435, 52.820251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043060, 0.181540, -0.982440,
		-0.795356, -0.588868, -0.143674,
		-0.604611, 0.787577, 0.119033,
		32.208588, 32.292709, 52.855961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976303, 31.619820, 52.204929>,  <32.631817, 31.741404, 52.772640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976303, 31.619820, 52.204929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952015, 32.006550, 52.304173>,  <31.937443, 32.238586, 52.363720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952015, 32.006550, 52.304173>,  <31.976303, 31.619820, 52.204929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952015, 32.006550, 52.304173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073241, 0.252215, -0.964896,
		-0.995464, -0.040416, -0.086125,
		-0.060719, 0.966827, 0.248111,
		31.933800, 32.296597, 52.378605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391556, 31.933548, 51.821617>,  <31.976303, 31.619820, 52.204929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391556, 31.933548, 51.821617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667444, 32.207039, 51.916954>,  <31.832977, 32.371132, 51.974155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667444, 32.207039, 51.916954>,  <31.391556, 31.933548, 51.821617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667444, 32.207039, 51.916954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054299, 0.279399, -0.958638,
		-0.722038, 0.674134, 0.155581,
		0.689720, 0.683725, 0.238342,
		31.874361, 32.412155, 51.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186111, 32.449341, 51.481213>,  <31.391556, 31.933548, 51.821617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186111, 32.449341, 51.481213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574228, 32.527328, 51.538517>,  <31.807098, 32.574120, 51.572899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574228, 32.527328, 51.538517>,  <31.186111, 32.449341, 51.481213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574228, 32.527328, 51.538517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060778, 0.376737, -0.924324,
		-0.234185, 0.905570, 0.353695,
		0.970290, 0.194966, 0.143265,
		31.865314, 32.585819, 51.581497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231941, 32.977283, 51.021019>,  <31.186111, 32.449341, 51.481213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231941, 32.977283, 51.021019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612984, 32.907623, 51.120789>,  <31.841610, 32.865826, 51.180653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612984, 32.907623, 51.120789>,  <31.231941, 32.977283, 51.021019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612984, 32.907623, 51.120789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304095, 0.567488, -0.765169,
		-0.008292, 0.804754, 0.593550,
		0.952605, -0.174151, 0.249428,
		31.898766, 32.855377, 51.195618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572206, 33.637138, 51.257584>,  <31.231941, 32.977283, 51.021019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572206, 33.637138, 51.257584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846655, 33.388653, 51.106144>,  <32.011322, 33.239563, 51.015282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846655, 33.388653, 51.106144>,  <31.572206, 33.637138, 51.257584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846655, 33.388653, 51.106144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193341, 0.657409, -0.728308,
		0.701326, 0.426508, 0.571167,
		0.686120, -0.621212, -0.378597,
		32.052490, 33.202290, 50.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020676, 34.014362, 50.917843>,  <31.572206, 33.637138, 51.257584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020676, 34.014362, 50.917843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153301, 33.663601, 50.778637>,  <32.232876, 33.453144, 50.695114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153301, 33.663601, 50.778637>,  <32.020676, 34.014362, 50.917843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153301, 33.663601, 50.778637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237870, 0.434664, -0.868611,
		0.912954, 0.205216, 0.352706,
		0.331561, -0.876900, -0.348014,
		32.252769, 33.400532, 50.674232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705463, 34.056057, 50.679913>,  <32.020676, 34.014362, 50.917843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705463, 34.056057, 50.679913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575443, 33.742008, 50.469040>,  <32.497433, 33.553577, 50.342514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575443, 33.742008, 50.469040>,  <32.705463, 34.056057, 50.679913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575443, 33.742008, 50.469040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300891, 0.442628, -0.844716,
		0.896552, -0.433202, 0.092360,
		-0.325052, -0.785122, -0.527185,
		32.477928, 33.506470, 50.310883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139240, 34.076092, 50.153328>,  <32.705463, 34.056057, 50.679913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139240, 34.076092, 50.153328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866379, 33.821892, 50.008656>,  <32.702663, 33.669373, 49.921852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866379, 33.821892, 50.008656>,  <33.139240, 34.076092, 50.153328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866379, 33.821892, 50.008656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116373, 0.393968, -0.911727,
		0.721891, -0.664025, -0.194790,
		-0.682151, -0.635500, -0.361677,
		32.661732, 33.631241, 49.900154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458542, 33.656647, 49.579411>,  <33.139240, 34.076092, 50.153328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458542, 33.656647, 49.579411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064129, 33.665527, 49.513386>,  <32.827480, 33.670856, 49.473770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064129, 33.665527, 49.513386>,  <33.458542, 33.656647, 49.579411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064129, 33.665527, 49.513386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158215, 0.434381, -0.886725,
		0.052009, -0.900456, -0.431827,
		-0.986034, 0.022204, -0.165057,
		32.768318, 33.672188, 49.463867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386837, 33.436954, 48.944027>,  <33.458542, 33.656647, 49.579411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386837, 33.436954, 48.944027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024815, 33.600056, 48.992371>,  <32.807602, 33.697918, 49.021378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024815, 33.600056, 48.992371>,  <33.386837, 33.436954, 48.944027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024815, 33.600056, 48.992371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082889, 0.447852, -0.890258,
		-0.417134, -0.795716, -0.439130,
		-0.905057, 0.407756, 0.120858,
		32.753296, 33.722382, 49.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079739, 33.390789, 48.382236>,  <33.386837, 33.436954, 48.944027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079739, 33.390789, 48.382236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882404, 33.700714, 48.540363>,  <32.764004, 33.886669, 48.635239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882404, 33.700714, 48.540363>,  <33.079739, 33.390789, 48.382236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882404, 33.700714, 48.540363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103037, 0.503333, -0.857928,
		-0.863713, -0.382516, -0.328148,
		-0.493338, 0.774815, 0.395322,
		32.734402, 33.933159, 48.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801800, 33.705242, 47.828346>,  <33.079739, 33.390789, 48.382236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801800, 33.705242, 47.828346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715591, 34.002068, 48.082245>,  <32.663868, 34.180161, 48.234585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715591, 34.002068, 48.082245>,  <32.801800, 33.705242, 47.828346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715591, 34.002068, 48.082245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340276, 0.552207, -0.761104,
		-0.915294, -0.380021, 0.133493,
		-0.215520, 0.742059, 0.634744,
		32.650936, 34.224686, 48.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144291, 33.960583, 47.832615>,  <32.801800, 33.705242, 47.828346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144291, 33.960583, 47.832615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308834, 34.280659, 48.007195>,  <32.407558, 34.472702, 48.111942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308834, 34.280659, 48.007195>,  <32.144291, 33.960583, 47.832615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308834, 34.280659, 48.007195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440863, 0.593774, -0.673107,
		-0.797764, 0.084470, 0.597024,
		0.411355, 0.800186, 0.436452,
		32.432240, 34.520714, 48.138130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646561, 34.456596, 47.758308>,  <32.144291, 33.960583, 47.832615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646561, 34.456596, 47.758308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984348, 34.668167, 47.792034>,  <32.187019, 34.795109, 47.812271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984348, 34.668167, 47.792034>,  <31.646561, 34.456596, 47.758308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984348, 34.668167, 47.792034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349702, 0.663724, -0.661195,
		-0.405683, 0.528875, 0.745461,
		0.844470, 0.528924, 0.084313,
		32.237690, 34.826843, 47.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434263, 35.169201, 47.681969>,  <31.646561, 34.456596, 47.758308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434263, 35.169201, 47.681969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830212, 35.184574, 47.627296>,  <32.067780, 35.193798, 47.594494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830212, 35.184574, 47.627296>,  <31.434263, 35.169201, 47.681969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830212, 35.184574, 47.627296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121295, 0.729265, -0.673395,
		0.073799, 0.683151, 0.726538,
		0.989869, 0.038429, -0.136681,
		32.127174, 35.196102, 47.586292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567074, 35.844048, 47.647034>,  <31.434263, 35.169201, 47.681969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567074, 35.844048, 47.647034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875456, 35.672180, 47.458984>,  <32.060486, 35.569061, 47.346153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875456, 35.672180, 47.458984>,  <31.567074, 35.844048, 47.647034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875456, 35.672180, 47.458984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138871, 0.606984, -0.782486,
		0.621565, 0.668548, 0.408290,
		0.770955, -0.429667, -0.470122,
		32.106743, 35.543282, 47.317947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127651, 36.434647, 47.434212>,  <31.567074, 35.844048, 47.647034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127651, 36.434647, 47.434212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186153, 36.105320, 47.214844>,  <32.221256, 35.907722, 47.083225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186153, 36.105320, 47.214844>,  <32.127651, 36.434647, 47.434212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186153, 36.105320, 47.214844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133132, 0.532953, -0.835606,
		0.980247, 0.195226, -0.031660,
		0.146259, -0.823315, -0.548417,
		32.230030, 35.858326, 47.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.460339, 34.317078, 43.211769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138130, 34.115082, 43.335777>,  <43.944805, 33.993885, 43.410183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138130, 34.115082, 43.335777>,  <44.460339, 34.317078, 43.211769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138130, 34.115082, 43.335777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588309, 0.618975, -0.520349,
		0.070875, -0.601543, -0.795690,
		-0.805525, -0.504991, 0.310023,
		43.896473, 33.963585, 43.428783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089828, 34.107037, 42.663670>,  <44.460339, 34.317078, 43.211769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089828, 34.107037, 42.663670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817997, 34.116573, 42.956955>,  <43.654900, 34.122295, 43.132927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817997, 34.116573, 42.956955>,  <44.089828, 34.107037, 42.663670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817997, 34.116573, 42.956955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622819, 0.509388, -0.593819,
		-0.387652, -0.860207, -0.331316,
		-0.679576, 0.023845, 0.733218,
		43.614124, 34.123726, 43.176922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487476, 33.746338, 42.328957>,  <44.089828, 34.107037, 42.663670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487476, 33.746338, 42.328957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355850, 33.955421, 42.643536>,  <43.276875, 34.080872, 42.832283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355850, 33.955421, 42.643536>,  <43.487476, 33.746338, 42.328957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355850, 33.955421, 42.643536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681725, 0.444788, -0.580874,
		-0.653428, -0.727282, 0.209981,
		-0.329063, 0.522709, 0.786443,
		43.257130, 34.112232, 42.879467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882301, 33.669842, 42.245613>,  <43.487476, 33.746338, 42.328957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882301, 33.669842, 42.245613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.876453, 33.984875, 42.492027>,  <42.872944, 34.173897, 42.639874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.876453, 33.984875, 42.492027>,  <42.882301, 33.669842, 42.245613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876453, 33.984875, 42.492027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592758, 0.489337, -0.639677,
		-0.805248, -0.374509, 0.459695,
		-0.014619, 0.787586, 0.616030,
		42.872066, 34.221149, 42.676838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254799, 33.844433, 42.217636>,  <42.882301, 33.669842, 42.245613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254799, 33.844433, 42.217636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452641, 34.175358, 42.324165>,  <42.571346, 34.373913, 42.388084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452641, 34.175358, 42.324165>,  <42.254799, 33.844433, 42.217636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452641, 34.175358, 42.324165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566954, 0.539375, -0.622605,
		-0.658736, 0.156948, 0.735822,
		0.494600, 0.827310, 0.266323,
		42.601021, 34.423550, 42.404064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717480, 34.393528, 42.340206>,  <42.254799, 33.844433, 42.217636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717480, 34.393528, 42.340206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.076988, 34.534592, 42.236015>,  <42.292694, 34.619228, 42.173500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.076988, 34.534592, 42.236015>,  <41.717480, 34.393528, 42.340206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076988, 34.534592, 42.236015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408091, 0.455780, -0.791028,
		-0.160243, 0.817249, 0.553557,
		0.898768, 0.352658, -0.260477,
		42.346619, 34.640388, 42.157871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562393, 34.957458, 42.009285>,  <41.717480, 34.393528, 42.340206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562393, 34.957458, 42.009285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948040, 34.901943, 41.918758>,  <42.179428, 34.868633, 41.864445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948040, 34.901943, 41.918758>,  <41.562393, 34.957458, 42.009285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948040, 34.901943, 41.918758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160538, 0.374161, -0.913363,
		0.211437, 0.916920, 0.338455,
		0.964117, -0.138783, -0.226312,
		42.237274, 34.860310, 41.850864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755455, 35.527725, 41.637039>,  <41.562393, 34.957458, 42.009285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755455, 35.527725, 41.637039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041348, 35.263500, 41.545120>,  <42.212883, 35.104965, 41.489967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041348, 35.263500, 41.545120>,  <41.755455, 35.527725, 41.637039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041348, 35.263500, 41.545120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087737, 0.241294, -0.966478,
		0.693871, 0.710937, 0.114505,
		0.714734, -0.660565, -0.229802,
		42.255768, 35.065331, 41.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175163, 35.988350, 41.145725>,  <41.755455, 35.527725, 41.637039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175163, 35.988350, 41.145725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265884, 35.604828, 41.077301>,  <42.320316, 35.374714, 41.036247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265884, 35.604828, 41.077301>,  <42.175163, 35.988350, 41.145725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265884, 35.604828, 41.077301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040727, 0.184818, -0.981929,
		0.973089, 0.215737, 0.080966,
		0.226802, -0.958801, -0.171058,
		42.333923, 35.317188, 41.025982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800026, 35.999050, 40.746235>,  <42.175163, 35.988350, 41.145725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800026, 35.999050, 40.746235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600288, 35.667477, 40.645424>,  <42.480446, 35.468533, 40.584938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600288, 35.667477, 40.645424>,  <42.800026, 35.999050, 40.746235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600288, 35.667477, 40.645424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038987, 0.269092, -0.962325,
		0.865526, -0.490358, -0.102052,
		-0.499345, -0.828938, -0.252024,
		42.450485, 35.418797, 40.569817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075619, 35.815212, 40.162956>,  <42.800026, 35.999050, 40.746235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075619, 35.815212, 40.162956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.739040, 35.601357, 40.131626>,  <42.537094, 35.473042, 40.112827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.739040, 35.601357, 40.131626>,  <43.075619, 35.815212, 40.162956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739040, 35.601357, 40.131626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042705, 0.210303, -0.976703,
		0.538657, -0.818494, -0.199790,
		-0.841442, -0.534639, -0.078328,
		42.486607, 35.440964, 40.108128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125908, 35.404034, 39.469818>,  <43.075619, 35.815212, 40.162956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125908, 35.404034, 39.469818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737865, 35.438900, 39.560421>,  <42.505039, 35.459820, 39.614780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737865, 35.438900, 39.560421>,  <43.125908, 35.404034, 39.469818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737865, 35.438900, 39.560421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203542, 0.216112, -0.954917,
		-0.132186, -0.972470, -0.191909,
		-0.970102, 0.087165, 0.226505,
		42.446835, 35.465050, 39.628372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870090, 34.963665, 38.975639>,  <43.125908, 35.404034, 39.469818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870090, 34.963665, 38.975639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593254, 35.225071, 39.098232>,  <42.427151, 35.381916, 39.171787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593254, 35.225071, 39.098232>,  <42.870090, 34.963665, 38.975639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593254, 35.225071, 39.098232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174868, 0.260144, -0.949603,
		-0.700307, -0.710806, -0.065765,
		-0.692092, 0.653514, 0.306478,
		42.385628, 35.421124, 39.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503075, 34.922623, 38.494995>,  <42.870090, 34.963665, 38.975639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503075, 34.922623, 38.494995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370480, 35.251282, 38.680470>,  <42.290920, 35.448479, 38.791756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370480, 35.251282, 38.680470>,  <42.503075, 34.922623, 38.494995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370480, 35.251282, 38.680470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271869, 0.387435, -0.880898,
		-0.903438, -0.418072, 0.094949,
		-0.331492, 0.821651, 0.463684,
		42.271030, 35.497776, 38.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849148, 35.155769, 38.231514>,  <42.503075, 34.922623, 38.494995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849148, 35.155769, 38.231514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986179, 35.483601, 38.415226>,  <42.068398, 35.680298, 38.525452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986179, 35.483601, 38.415226>,  <41.849148, 35.155769, 38.231514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986179, 35.483601, 38.415226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134665, 0.526650, -0.839348,
		-0.929786, 0.225697, 0.290788,
		0.342582, 0.819574, 0.459278,
		42.088955, 35.729473, 38.553009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418293, 35.727852, 37.946461>,  <41.849148, 35.155769, 38.231514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418293, 35.727852, 37.946461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741123, 35.904690, 38.103016>,  <41.934822, 36.010792, 38.196949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741123, 35.904690, 38.103016>,  <41.418293, 35.727852, 37.946461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741123, 35.904690, 38.103016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011540, 0.650929, -0.759051,
		-0.590334, 0.617129, 0.520248,
		0.807077, 0.442090, 0.391387,
		41.983246, 36.037315, 38.220432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267052, 36.436722, 37.864002>,  <41.418293, 35.727852, 37.946461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267052, 36.436722, 37.864002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662640, 36.423317, 37.921700>,  <41.899994, 36.415276, 37.956318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662640, 36.423317, 37.921700>,  <41.267052, 36.436722, 37.864002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662640, 36.423317, 37.921700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125217, 0.709269, -0.693727,
		-0.079063, 0.704141, 0.705645,
		0.988974, -0.033510, 0.144248,
		41.959332, 36.413265, 37.964973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489304, 37.135265, 37.947891>,  <41.267052, 36.436722, 37.864002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489304, 37.135265, 37.947891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797974, 36.906704, 37.836163>,  <41.983173, 36.769566, 37.769127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797974, 36.906704, 37.836163>,  <41.489304, 37.135265, 37.947891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797974, 36.906704, 37.836163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203046, 0.637509, -0.743206,
		0.602738, 0.516797, 0.607970,
		0.771673, -0.571404, -0.279318,
		42.029476, 36.735283, 37.752369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023586, 37.688412, 37.671017>,  <41.489304, 37.135265, 37.947891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023586, 37.688412, 37.671017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159721, 37.335499, 37.540939>,  <42.241402, 37.123753, 37.462894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159721, 37.335499, 37.540939>,  <42.023586, 37.688412, 37.671017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159721, 37.335499, 37.540939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037980, 0.358454, -0.932775,
		0.939536, 0.305107, 0.155504,
		0.340337, -0.882282, -0.325193,
		42.261822, 37.070816, 37.443382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556278, 37.804478, 37.187870>,  <42.023586, 37.688412, 37.671017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556278, 37.804478, 37.187870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439274, 37.436440, 37.083672>,  <42.369072, 37.215614, 37.021152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439274, 37.436440, 37.083672>,  <42.556278, 37.804478, 37.187870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439274, 37.436440, 37.083672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124903, 0.233314, -0.964346,
		0.948070, -0.314620, 0.046675,
		-0.292513, -0.920097, -0.260494,
		42.351521, 37.160412, 37.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063236, 37.607784, 36.777687>,  <42.556278, 37.804478, 37.187870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063236, 37.607784, 36.777687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778057, 37.341270, 36.690258>,  <42.606949, 37.181362, 36.637798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778057, 37.341270, 36.690258>,  <43.063236, 37.607784, 36.777687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778057, 37.341270, 36.690258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117246, 0.194051, -0.973960,
		0.691349, -0.720006, -0.060228,
		-0.712945, -0.666284, -0.218575,
		42.564175, 37.141384, 36.624687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476852, 37.042950, 36.433182>,  <43.063236, 37.607784, 36.777687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476852, 37.042950, 36.433182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095394, 37.115543, 36.337170>,  <42.866520, 37.159100, 36.279564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095394, 37.115543, 36.337170>,  <43.476852, 37.042950, 36.433182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095394, 37.115543, 36.337170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225484, -0.097246, -0.969381,
		-0.199274, -0.978573, 0.051816,
		-0.953649, 0.181489, -0.240031,
		42.809299, 37.169991, 36.265160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037392, 36.618755, 36.803009>,  <43.476852, 37.042950, 36.433182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037392, 36.618755, 36.803009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332382, 36.572857, 36.536789>,  <44.509377, 36.545319, 36.377056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332382, 36.572857, 36.536789>,  <44.037392, 36.618755, 36.803009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332382, 36.572857, 36.536789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249747, -0.869271, 0.426607,
		-0.627501, -0.480832, -0.612408,
		0.737475, -0.114750, -0.665554,
		44.553623, 36.538433, 36.337124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982437, 35.946003, 36.409996>,  <44.037392, 36.618755, 36.803009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982437, 35.946003, 36.409996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348679, 36.104290, 36.438496>,  <44.568424, 36.199265, 36.455597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348679, 36.104290, 36.438496>,  <43.982437, 35.946003, 36.409996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348679, 36.104290, 36.438496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300594, -0.791356, 0.532353,
		0.267049, -0.466006, -0.843518,
		0.915602, 0.395721, 0.071253,
		44.623360, 36.223007, 36.459873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445118, 35.358322, 36.440857>,  <43.982437, 35.946003, 36.409996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445118, 35.358322, 36.440857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655079, 35.661938, 36.594913>,  <44.781055, 35.844109, 36.687347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655079, 35.661938, 36.594913>,  <44.445118, 35.358322, 36.440857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655079, 35.661938, 36.594913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455369, -0.632720, 0.626343,
		0.719107, -0.153387, -0.677760,
		0.524905, 0.759038, 0.385145,
		44.812550, 35.889648, 36.710457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144543, 35.105717, 36.426060>,  <44.445118, 35.358322, 36.440857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144543, 35.105717, 36.426060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.130314, 35.403992, 36.692196>,  <45.121777, 35.582958, 36.851879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.130314, 35.403992, 36.692196>,  <45.144543, 35.105717, 36.426060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130314, 35.403992, 36.692196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457172, -0.579875, 0.674343,
		0.888667, 0.328164, -0.320282,
		-0.035571, 0.745690, 0.665343,
		45.119644, 35.627697, 36.891800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711639, 35.142780, 36.690102>,  <45.144543, 35.105717, 36.426060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711639, 35.142780, 36.690102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497662, 35.338123, 36.965881>,  <45.369274, 35.455330, 37.131348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497662, 35.338123, 36.965881>,  <45.711639, 35.142780, 36.690102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497662, 35.338123, 36.965881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371616, -0.596853, 0.711103,
		0.758772, 0.636612, 0.137803,
		-0.534945, 0.488355, 0.689451,
		45.337177, 35.484631, 37.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188023, 35.133663, 37.266747>,  <45.711639, 35.142780, 36.690102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188023, 35.133663, 37.266747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841232, 35.235466, 37.438126>,  <45.633156, 35.296547, 37.540955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841232, 35.235466, 37.438126>,  <46.188023, 35.133663, 37.266747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841232, 35.235466, 37.438126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316623, -0.382600, 0.867967,
		0.384831, 0.888168, 0.251124,
		-0.866980, 0.254509, 0.428451,
		45.581139, 35.311817, 37.566662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399429, 35.449745, 37.832294>,  <46.188023, 35.133663, 37.266747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399429, 35.449745, 37.832294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027813, 35.326290, 37.913910>,  <45.804844, 35.252216, 37.962879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027813, 35.326290, 37.913910>,  <46.399429, 35.449745, 37.832294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027813, 35.326290, 37.913910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293678, -0.279740, 0.914056,
		-0.225035, 0.909114, 0.350529,
		-0.929039, -0.308637, 0.204035,
		45.749100, 35.233700, 37.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354866, 35.512394, 38.535713>,  <46.399429, 35.449745, 37.832294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354866, 35.512394, 38.535713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054279, 35.274311, 38.421852>,  <45.873928, 35.131462, 38.353535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054279, 35.274311, 38.421852>,  <46.354866, 35.512394, 38.535713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054279, 35.274311, 38.421852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000132, -0.431308, 0.902205,
		-0.659771, 0.678014, 0.324035,
		-0.751467, -0.595206, -0.284654,
		45.828838, 35.095749, 38.336456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776917, 35.508335, 39.054382>,  <46.354866, 35.512394, 38.535713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776917, 35.508335, 39.054382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728756, 35.169968, 38.846565>,  <45.699860, 34.966946, 38.721874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728756, 35.169968, 38.846565>,  <45.776917, 35.508335, 39.054382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728756, 35.169968, 38.846565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055581, -0.516787, 0.854308,
		-0.991168, 0.131740, 0.015206,
		-0.120405, -0.845917, -0.519545,
		45.692635, 34.916191, 38.690701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370018, 35.143505, 39.463257>,  <45.776917, 35.508335, 39.054382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370018, 35.143505, 39.463257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511475, 34.860504, 39.218510>,  <45.596348, 34.690704, 39.071663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511475, 34.860504, 39.218510>,  <45.370018, 35.143505, 39.463257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511475, 34.860504, 39.218510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018485, -0.648724, 0.760799,
		-0.935198, -0.280362, -0.216339,
		0.353643, -0.707499, -0.611867,
		45.617569, 34.648254, 39.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987671, 34.548031, 39.643005>,  <45.370018, 35.143505, 39.463257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987671, 34.548031, 39.643005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280132, 34.385513, 39.423790>,  <45.455608, 34.288002, 39.292263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280132, 34.385513, 39.423790>,  <44.987671, 34.548031, 39.643005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280132, 34.385513, 39.423790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037266, -0.825902, 0.562581,
		-0.681196, -0.390909, -0.619000,
		0.731152, -0.406296, -0.548033,
		45.499477, 34.263626, 39.259380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804192, 33.937790, 39.567848>,  <44.987671, 34.548031, 39.643005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804192, 33.937790, 39.567848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199825, 33.916466, 39.512897>,  <45.437206, 33.903671, 39.479927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199825, 33.916466, 39.512897>,  <44.804192, 33.937790, 39.567848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199825, 33.916466, 39.512897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044458, -0.780855, 0.623128,
		-0.140494, -0.622433, -0.769960,
		0.989083, -0.053315, -0.137378,
		45.496552, 33.900471, 39.471684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949547, 33.283928, 39.453094>,  <44.804192, 33.937790, 39.567848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949547, 33.283928, 39.453094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293163, 33.425766, 39.600773>,  <45.499332, 33.510868, 39.689381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293163, 33.425766, 39.600773>,  <44.949547, 33.283928, 39.453094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293163, 33.425766, 39.600773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041462, -0.767056, 0.640239,
		0.510222, -0.534685, -0.673636,
		0.859043, 0.354595, 0.369199,
		45.550877, 33.532143, 39.711533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347248, 32.727894, 39.751888>,  <44.949547, 33.283928, 39.453094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347248, 32.727894, 39.751888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531452, 33.051205, 39.898647>,  <45.641975, 33.245193, 39.986702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531452, 33.051205, 39.898647>,  <45.347248, 32.727894, 39.751888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531452, 33.051205, 39.898647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082872, -0.450680, 0.888830,
		0.883779, -0.378907, -0.274525,
		0.460507, 0.808280, 0.366901,
		45.669605, 33.293690, 40.008717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037754, 32.426987, 40.079945>,  <45.347248, 32.727894, 39.751888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037754, 32.426987, 40.079945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954597, 32.776794, 40.255215>,  <45.904705, 32.986679, 40.360378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954597, 32.776794, 40.255215>,  <46.037754, 32.426987, 40.079945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954597, 32.776794, 40.255215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077914, -0.431733, 0.898630,
		0.975045, 0.220954, 0.021615,
		-0.207887, 0.874520, 0.438175,
		45.892231, 33.039150, 40.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556564, 32.535309, 40.544983>,  <46.037754, 32.426987, 40.079945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556564, 32.535309, 40.544983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244961, 32.757881, 40.660587>,  <46.057999, 32.891422, 40.729950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244961, 32.757881, 40.660587>,  <46.556564, 32.535309, 40.544983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244961, 32.757881, 40.660587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104990, -0.338677, 0.935027,
		0.618158, 0.758740, 0.205414,
		-0.779011, 0.556428, 0.289015,
		46.011257, 32.924809, 40.747292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800587, 32.860397, 41.157063>,  <46.556564, 32.535309, 40.544983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800587, 32.860397, 41.157063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.401901, 32.869854, 41.188049>,  <46.162689, 32.875526, 41.206642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.401901, 32.869854, 41.188049>,  <46.800587, 32.860397, 41.157063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401901, 32.869854, 41.188049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071683, -0.187800, 0.979588,
		0.037705, 0.981923, 0.185489,
		-0.996714, 0.023638, 0.077468,
		46.102886, 32.876945, 41.211288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707329, 33.194447, 41.841377>,  <46.800587, 32.860397, 41.157063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707329, 33.194447, 41.841377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344994, 33.046051, 41.759571>,  <46.127594, 32.957016, 41.710487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344994, 33.046051, 41.759571>,  <46.707329, 33.194447, 41.841377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344994, 33.046051, 41.759571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037489, -0.551086, 0.833606,
		-0.421960, 0.747445, 0.513103,
		-0.905839, -0.370984, -0.204516,
		46.073242, 32.934757, 41.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281376, 33.262157, 42.431332>,  <46.707329, 33.194447, 41.841377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281376, 33.262157, 42.431332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.099411, 32.970539, 42.226765>,  <45.990234, 32.795567, 42.104027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.099411, 32.970539, 42.226765>,  <46.281376, 33.262157, 42.431332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099411, 32.970539, 42.226765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203072, -0.474221, 0.856665,
		-0.867074, 0.493560, 0.067680,
		-0.454911, -0.729049, -0.511413,
		45.962936, 32.751823, 42.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649181, 33.145531, 42.668812>,  <46.281376, 33.262157, 42.431332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649181, 33.145531, 42.668812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692562, 32.784035, 42.503166>,  <45.718590, 32.567139, 42.403778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692562, 32.784035, 42.503166>,  <45.649181, 33.145531, 42.668812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692562, 32.784035, 42.503166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241161, -0.428045, 0.870987,
		-0.964406, 0.005405, -0.264370,
		0.108454, -0.903741, -0.414113,
		45.725098, 32.512913, 42.378933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.073566, 38.525578, 43.105621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984989, 38.141933, 43.035107>,  <35.931843, 37.911747, 42.992798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984989, 38.141933, 43.035107>,  <36.073566, 38.525578, 43.105621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984989, 38.141933, 43.035107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132493, 0.149506, -0.979844,
		0.966132, -0.240333, 0.093969,
		-0.221439, -0.959108, -0.176285,
		35.918556, 37.854202, 42.982220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521469, 38.402416, 42.524410>,  <36.073566, 38.525578, 43.105621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521469, 38.402416, 42.524410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260109, 38.099823, 42.535778>,  <36.103294, 37.918266, 42.542599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260109, 38.099823, 42.535778>,  <36.521469, 38.402416, 42.524410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260109, 38.099823, 42.535778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058233, -0.087658, -0.994447,
		0.754774, -0.648112, 0.101327,
		-0.653395, -0.756483, 0.028420,
		36.064091, 37.872879, 42.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732723, 37.930676, 42.078342>,  <36.521469, 38.402416, 42.524410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732723, 37.930676, 42.078342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364456, 37.776943, 42.105675>,  <36.143497, 37.684704, 42.122074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364456, 37.776943, 42.105675>,  <36.732723, 37.930676, 42.078342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364456, 37.776943, 42.105675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107548, 0.081465, -0.990857,
		0.375248, -0.919595, -0.116335,
		-0.920664, -0.384329, 0.068331,
		36.088257, 37.661644, 42.126175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710102, 37.410896, 41.558170>,  <36.732723, 37.930676, 42.078342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710102, 37.410896, 41.558170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327473, 37.493668, 41.640297>,  <36.097897, 37.543331, 41.689571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327473, 37.493668, 41.640297>,  <36.710102, 37.410896, 41.558170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327473, 37.493668, 41.640297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168600, 0.181837, -0.968767,
		-0.237803, -0.961309, -0.139051,
		-0.956569, 0.206932, 0.205318,
		36.040501, 37.555748, 41.701893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280159, 37.029610, 41.102726>,  <36.710102, 37.410896, 41.558170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280159, 37.029610, 41.102726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095787, 37.365807, 41.216652>,  <35.985165, 37.567524, 41.285007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095787, 37.365807, 41.216652>,  <36.280159, 37.029610, 41.102726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095787, 37.365807, 41.216652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248637, 0.185780, -0.950613,
		-0.851896, -0.508978, 0.123347,
		-0.460925, 0.840492, 0.284816,
		35.957508, 37.617954, 41.302097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688812, 37.124466, 40.681236>,  <36.280159, 37.029610, 41.102726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688812, 37.124466, 40.681236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726902, 37.492081, 40.834236>,  <35.749756, 37.712650, 40.926037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726902, 37.492081, 40.834236>,  <35.688812, 37.124466, 40.681236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726902, 37.492081, 40.834236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325810, 0.391853, -0.860406,
		-0.940628, -0.042692, 0.336744,
		0.095221, 0.919037, 0.382497,
		35.755466, 37.767792, 40.948986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144012, 37.506691, 40.401932>,  <35.688812, 37.124466, 40.681236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144012, 37.506691, 40.401932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396355, 37.799252, 40.505527>,  <35.547760, 37.974789, 40.567684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396355, 37.799252, 40.505527>,  <35.144012, 37.506691, 40.401932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396355, 37.799252, 40.505527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245008, 0.504495, -0.827922,
		-0.736205, 0.458841, 0.497461,
		0.630851, 0.731403, 0.258992,
		35.585609, 38.018673, 40.583225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708363, 38.151386, 40.455437>,  <35.144012, 37.506691, 40.401932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708363, 38.151386, 40.455437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085262, 38.281490, 40.423496>,  <35.311401, 38.359554, 40.404331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085262, 38.281490, 40.423496>,  <34.708363, 38.151386, 40.455437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085262, 38.281490, 40.423496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239436, 0.487487, -0.839659,
		-0.234184, 0.810284, 0.537212,
		0.942247, 0.325262, -0.079850,
		35.367935, 38.379070, 40.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685871, 38.856377, 40.201187>,  <34.708363, 38.151386, 40.455437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685871, 38.856377, 40.201187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070927, 38.768761, 40.137497>,  <35.301960, 38.716190, 40.099281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070927, 38.768761, 40.137497>,  <34.685871, 38.856377, 40.201187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070927, 38.768761, 40.137497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102165, 0.250784, -0.962637,
		0.250784, 0.942937, 0.219036,
		0.962637, -0.219036, -0.159228,
		35.359718, 38.703049, 40.089729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982742, 39.460968, 39.989483>,  <34.685871, 38.856377, 40.201187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982742, 39.460968, 39.989483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191833, 39.146091, 39.858585>,  <35.317287, 38.957165, 39.780048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191833, 39.146091, 39.858585>,  <34.982742, 39.460968, 39.989483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191833, 39.146091, 39.858585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072820, 0.341226, -0.937157,
		0.849385, 0.513705, 0.121044,
		0.522725, -0.787193, -0.327240,
		35.348652, 38.909935, 39.760414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473866, 39.711143, 39.507328>,  <34.982742, 39.460968, 39.989483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473866, 39.711143, 39.507328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453648, 39.322086, 39.416634>,  <35.441517, 39.088654, 39.362217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453648, 39.322086, 39.416634>,  <35.473866, 39.711143, 39.507328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453648, 39.322086, 39.416634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152719, 0.231887, -0.960680,
		0.986976, -0.013930, -0.160262,
		-0.050545, -0.972643, -0.226740,
		35.438484, 39.030293, 39.348610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812473, 39.773716, 38.872658>,  <35.473866, 39.711143, 39.507328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812473, 39.773716, 38.872658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643188, 39.411316, 38.869907>,  <35.541618, 39.193874, 38.868256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643188, 39.411316, 38.869907>,  <35.812473, 39.773716, 38.872658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643188, 39.411316, 38.869907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298971, 0.146814, -0.942901,
		0.855282, -0.396993, -0.333002,
		-0.423214, -0.906004, -0.006878,
		35.516224, 39.139515, 38.867844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005165, 39.423607, 38.325104>,  <35.812473, 39.773716, 38.872658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005165, 39.423607, 38.325104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643124, 39.275223, 38.408226>,  <35.425900, 39.186192, 38.458099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643124, 39.275223, 38.408226>,  <36.005165, 39.423607, 38.325104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643124, 39.275223, 38.408226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290974, 0.184014, -0.938868,
		0.310040, -0.910237, -0.274490,
		-0.905102, -0.370956, 0.207803,
		35.371593, 39.163937, 38.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294838, 38.792294, 38.411697>,  <36.005165, 39.423607, 38.325104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294838, 38.792294, 38.411697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531216, 38.559502, 38.188244>,  <36.673042, 38.419827, 38.054173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531216, 38.559502, 38.188244>,  <36.294838, 38.792294, 38.411697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531216, 38.559502, 38.188244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254005, 0.791501, -0.555884,
		0.765677, 0.186603, 0.615563,
		0.590949, -0.581984, -0.558636,
		36.708500, 38.384907, 38.020653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572227, 38.417576, 38.907272>,  <36.294838, 38.792294, 38.411697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572227, 38.417576, 38.907272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819874, 38.183342, 38.697971>,  <36.968460, 38.042801, 38.572392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819874, 38.183342, 38.697971>,  <36.572227, 38.417576, 38.907272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819874, 38.183342, 38.697971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203489, -0.763175, 0.613315,
		-0.758444, -0.273269, -0.591682,
		0.619157, -0.585566, -0.523218,
		37.005608, 38.007668, 38.540997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238316, 37.794758, 38.717983>,  <36.572227, 38.417576, 38.907272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238316, 37.794758, 38.717983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635342, 37.749500, 38.735916>,  <36.873558, 37.722343, 38.746677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635342, 37.749500, 38.735916>,  <36.238316, 37.794758, 38.717983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635342, 37.749500, 38.735916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119029, -0.825638, 0.551502,
		-0.025387, -0.552738, -0.832968,
		0.992566, -0.113148, 0.044832,
		36.933113, 37.715557, 38.749367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403534, 37.176060, 38.548946>,  <36.238316, 37.794758, 38.717983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403534, 37.176060, 38.548946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719170, 37.294163, 38.764416>,  <36.908550, 37.365025, 38.893696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719170, 37.294163, 38.764416>,  <36.403534, 37.176060, 38.548946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719170, 37.294163, 38.764416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066161, -0.830957, 0.552388,
		0.610710, -0.471521, -0.636162,
		0.789086, 0.295259, 0.538670,
		36.955894, 37.382740, 38.926018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807152, 36.668423, 38.515320>,  <36.403534, 37.176060, 38.548946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807152, 36.668423, 38.515320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912231, 36.872623, 38.842827>,  <36.975277, 36.995144, 39.039330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912231, 36.872623, 38.842827>,  <36.807152, 36.668423, 38.515320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912231, 36.872623, 38.842827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032495, -0.852769, 0.521276,
		0.964331, -0.110332, -0.240608,
		0.262696, 0.510501, 0.818767,
		36.991039, 37.025772, 39.088455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158440, 36.185020, 38.732349>,  <36.807152, 36.668423, 38.515320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158440, 36.185020, 38.732349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127148, 36.421944, 39.053112>,  <37.108372, 36.564098, 39.245567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127148, 36.421944, 39.053112>,  <37.158440, 36.185020, 38.732349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127148, 36.421944, 39.053112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068360, -0.805662, 0.588417,
		0.994589, -0.008786, 0.103518,
		-0.078231, 0.592310, 0.801904,
		37.103680, 36.599636, 39.293682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472778, 35.841061, 39.170532>,  <37.158440, 36.185020, 38.732349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472778, 35.841061, 39.170532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252052, 36.081001, 39.402283>,  <37.119617, 36.224968, 39.541332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252052, 36.081001, 39.402283>,  <37.472778, 35.841061, 39.170532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252052, 36.081001, 39.402283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210819, -0.772493, 0.599008,
		0.806882, 0.208396, 0.552732,
		-0.551812, 0.599855, 0.579377,
		37.086510, 36.260956, 39.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687466, 35.847054, 39.934776>,  <37.472778, 35.841061, 39.170532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687466, 35.847054, 39.934776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294800, 35.917736, 39.906189>,  <37.059200, 35.960148, 39.889038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294800, 35.917736, 39.906189>,  <37.687466, 35.847054, 39.934776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294800, 35.917736, 39.906189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174467, -0.681942, 0.710293,
		0.076781, 0.709738, 0.700269,
		-0.981665, 0.176711, -0.071466,
		37.000301, 35.970749, 39.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470566, 35.405586, 40.422348>,  <37.687466, 35.847054, 39.934776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470566, 35.405586, 40.422348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134182, 35.571030, 40.282799>,  <36.932350, 35.670296, 40.199070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134182, 35.571030, 40.282799>,  <37.470566, 35.405586, 40.422348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134182, 35.571030, 40.282799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536431, -0.552807, 0.637688,
		0.070892, 0.723418, 0.686761,
		-0.840961, 0.413607, -0.348874,
		36.881893, 35.695110, 40.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093571, 35.677158, 41.003567>,  <37.470566, 35.405586, 40.422348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093571, 35.677158, 41.003567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821140, 35.623672, 40.715607>,  <36.657684, 35.591579, 40.542831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821140, 35.623672, 40.715607>,  <37.093571, 35.677158, 41.003567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821140, 35.623672, 40.715607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556987, -0.543591, 0.627913,
		-0.475296, 0.828631, 0.295745,
		-0.681072, -0.133718, -0.719903,
		36.616817, 35.583557, 40.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383190, 35.946323, 41.305843>,  <37.093571, 35.677158, 41.003567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383190, 35.946323, 41.305843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325806, 35.681915, 41.011234>,  <36.291374, 35.523270, 40.834469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325806, 35.681915, 41.011234>,  <36.383190, 35.946323, 41.305843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325806, 35.681915, 41.011234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630445, -0.512629, 0.582881,
		-0.762861, 0.547961, -0.343194,
		-0.143465, -0.661022, -0.736524,
		36.282764, 35.483608, 40.790276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657738, 35.891499, 41.249779>,  <36.383190, 35.946323, 41.305843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657738, 35.891499, 41.249779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797573, 35.549667, 41.096161>,  <35.881474, 35.344570, 41.003990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797573, 35.549667, 41.096161>,  <35.657738, 35.891499, 41.249779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797573, 35.549667, 41.096161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419655, -0.509317, 0.751322,
		-0.837661, -0.101488, -0.536679,
		0.349590, -0.854574, -0.384045,
		35.902451, 35.293297, 40.980946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160286, 35.343914, 41.593727>,  <35.657738, 35.891499, 41.249779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160286, 35.343914, 41.593727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490005, 35.163944, 41.456268>,  <35.687840, 35.055962, 41.373795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490005, 35.163944, 41.456268>,  <35.160286, 35.343914, 41.593727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490005, 35.163944, 41.456268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007253, -0.615333, 0.788234,
		-0.566099, -0.647253, -0.510485,
		0.824305, -0.449921, -0.343645,
		35.737297, 35.028969, 41.353176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971100, 34.594826, 41.577854>,  <35.160286, 35.343914, 41.593727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971100, 34.594826, 41.577854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369732, 34.627861, 41.577560>,  <35.608913, 34.647682, 41.577385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369732, 34.627861, 41.577560>,  <34.971100, 34.594826, 41.577854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369732, 34.627861, 41.577560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054809, -0.654652, 0.753941,
		0.061791, -0.751405, -0.656942,
		0.996583, 0.082593, -0.000732,
		35.668705, 34.652637, 41.577339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297131, 33.898708, 41.569416>,  <34.971100, 34.594826, 41.577854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297131, 33.898708, 41.569416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552105, 34.156746, 41.737953>,  <35.705090, 34.311569, 41.839073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552105, 34.156746, 41.737953>,  <35.297131, 33.898708, 41.569416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552105, 34.156746, 41.737953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044414, -0.576689, 0.815755,
		0.769223, -0.501278, -0.396253,
		0.637435, 0.645097, 0.421339,
		35.743336, 34.350273, 41.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648346, 33.257149, 41.268555>,  <35.297131, 33.898708, 41.569416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648346, 33.257149, 41.268555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465912, 32.931107, 41.125679>,  <35.356449, 32.735481, 41.039955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465912, 32.931107, 41.125679>,  <35.648346, 33.257149, 41.268555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465912, 32.931107, 41.125679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103621, 0.349995, -0.931003,
		0.883881, -0.461633, -0.075167,
		-0.456090, -0.815106, -0.357189,
		35.329086, 32.686573, 41.018524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914467, 33.249706, 40.560688>,  <35.648346, 33.257149, 41.268555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914467, 33.249706, 40.560688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634979, 32.963963, 40.545280>,  <35.467285, 32.792519, 40.536037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634979, 32.963963, 40.545280>,  <35.914467, 33.249706, 40.560688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634979, 32.963963, 40.545280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022456, 0.075717, -0.996876,
		0.715040, -0.695675, -0.068946,
		-0.698722, -0.714355, -0.038519,
		35.425362, 32.749657, 40.533726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109085, 32.653084, 40.100384>,  <35.914467, 33.249706, 40.560688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109085, 32.653084, 40.100384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711014, 32.619995, 40.121479>,  <35.472172, 32.600143, 40.134136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711014, 32.619995, 40.121479>,  <36.109085, 32.653084, 40.100384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711014, 32.619995, 40.121479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067132, 0.182204, -0.980966,
		0.071534, -0.979775, -0.186878,
		-0.995176, -0.082718, 0.052740,
		35.412460, 32.595181, 40.137302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844715, 32.255424, 39.544331>,  <36.109085, 32.653084, 40.100384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844715, 32.255424, 39.544331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499722, 32.436104, 39.635628>,  <35.292725, 32.544510, 39.690407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499722, 32.436104, 39.635628>,  <35.844715, 32.255424, 39.544331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499722, 32.436104, 39.635628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216010, 0.079291, -0.973166,
		-0.457673, -0.888641, 0.029184,
		-0.862482, 0.451696, 0.228244,
		35.240978, 32.571613, 39.704102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406116, 32.044498, 38.962490>,  <35.844715, 32.255424, 39.544331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406116, 32.044498, 38.962490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231117, 32.363998, 39.127697>,  <35.126118, 32.555698, 39.226822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231117, 32.363998, 39.127697>,  <35.406116, 32.044498, 38.962490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231117, 32.363998, 39.127697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318314, 0.292003, -0.901892,
		-0.840993, -0.526050, 0.126502,
		-0.437501, 0.798752, 0.413022,
		35.099865, 32.603622, 39.251602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683002, 32.063358, 38.754765>,  <35.406116, 32.044498, 38.962490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683002, 32.063358, 38.754765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794693, 32.438297, 38.838100>,  <34.861710, 32.663261, 38.888103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794693, 32.438297, 38.838100>,  <34.683002, 32.063358, 38.754765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794693, 32.438297, 38.838100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470162, 0.322649, -0.821489,
		-0.837245, 0.131428, 0.530800,
		0.279229, 0.937350, 0.208344,
		34.878460, 32.719501, 38.900604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164986, 32.543308, 38.408600>,  <34.683002, 32.063358, 38.754765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164986, 32.543308, 38.408600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424908, 32.832184, 38.503422>,  <34.580860, 33.005508, 38.560314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424908, 32.832184, 38.503422>,  <34.164986, 32.543308, 38.408600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424908, 32.832184, 38.503422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445620, 0.614610, -0.650905,
		-0.615775, 0.317324, 0.721198,
		0.649803, 0.722191, 0.237055,
		34.619850, 33.048840, 38.574539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734779, 33.225788, 38.610748>,  <34.164986, 32.543308, 38.408600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734779, 33.225788, 38.610748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112324, 33.300381, 38.501678>,  <34.338852, 33.345135, 38.436237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112324, 33.300381, 38.501678>,  <33.734779, 33.225788, 38.610748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112324, 33.300381, 38.501678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326310, 0.654928, -0.681610,
		0.051474, 0.732321, 0.679011,
		0.943860, 0.186483, -0.272675,
		34.395481, 33.356327, 38.419876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760803, 33.990349, 38.560627>,  <33.734779, 33.225788, 38.610748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760803, 33.990349, 38.560627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068611, 33.853901, 38.344673>,  <34.253296, 33.772034, 38.215099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068611, 33.853901, 38.344673>,  <33.760803, 33.990349, 38.560627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068611, 33.853901, 38.344673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201503, 0.672516, -0.712123,
		0.605999, 0.656782, 0.448779,
		0.769520, -0.341116, -0.539887,
		34.299469, 33.751568, 38.182709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085960, 34.652287, 38.334286>,  <33.760803, 33.990349, 38.560627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085960, 34.652287, 38.334286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216698, 34.369389, 38.083534>,  <34.295139, 34.199650, 37.933083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216698, 34.369389, 38.083534>,  <34.085960, 34.652287, 38.334286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216698, 34.369389, 38.083534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241074, 0.578975, -0.778891,
		0.913814, 0.405700, 0.018735,
		0.326843, -0.707245, -0.626879,
		34.314751, 34.157215, 37.895470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404175, 34.973083, 37.665531>,  <34.085960, 34.652287, 38.334286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404175, 34.973083, 37.665531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308537, 34.602852, 37.548138>,  <34.251152, 34.380714, 37.477703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308537, 34.602852, 37.548138>,  <34.404175, 34.973083, 37.665531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308537, 34.602852, 37.548138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249536, 0.350672, -0.902641,
		0.938383, -0.142586, -0.314812,
		-0.239100, -0.925580, -0.293484,
		34.236805, 34.325176, 37.460091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857094, 34.697193, 37.099949>,  <34.404175, 34.973083, 37.665531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857094, 34.697193, 37.099949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492107, 34.533943, 37.111565>,  <34.273117, 34.435993, 37.118534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492107, 34.533943, 37.111565>,  <34.857094, 34.697193, 37.099949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492107, 34.533943, 37.111565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250406, 0.500893, -0.828494,
		0.323584, -0.763243, -0.559244,
		-0.912464, -0.408125, 0.029040,
		34.218369, 34.411507, 37.120277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.265701, 31.507637, 44.400021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938988, 31.297806, 44.303951>,  <35.742958, 31.171907, 44.246311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938988, 31.297806, 44.303951>,  <36.265701, 31.507637, 44.400021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938988, 31.297806, 44.303951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087610, 0.298680, -0.950324,
		0.570255, -0.797249, -0.197998,
		-0.816782, -0.524580, -0.240171,
		35.693954, 31.140432, 44.231899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452309, 31.104568, 43.864815>,  <36.265701, 31.507637, 44.400021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452309, 31.104568, 43.864815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052959, 31.117544, 43.846073>,  <35.813351, 31.125330, 43.834827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052959, 31.117544, 43.846073>,  <36.452309, 31.104568, 43.864815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052959, 31.117544, 43.846073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053620, 0.256161, -0.965146,
		-0.019307, -0.966090, -0.257484,
		-0.998375, 0.032440, -0.046856,
		35.753448, 31.127275, 43.832016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230099, 30.733795, 43.295322>,  <36.452309, 31.104568, 43.864815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230099, 30.733795, 43.295322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923897, 30.985508, 43.348995>,  <35.740177, 31.136536, 43.381199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923897, 30.985508, 43.348995>,  <36.230099, 30.733795, 43.295322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923897, 30.985508, 43.348995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039288, 0.253861, -0.966442,
		-0.642229, -0.734545, -0.219055,
		-0.765505, 0.629284, 0.134178,
		35.694244, 31.174294, 43.389248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704437, 30.563913, 42.718956>,  <36.230099, 30.733795, 43.295322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704437, 30.563913, 42.718956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614941, 30.919661, 42.878437>,  <35.561241, 31.133110, 42.974125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614941, 30.919661, 42.878437>,  <35.704437, 30.563913, 42.718956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614941, 30.919661, 42.878437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169823, 0.367238, -0.914492,
		-0.959740, -0.272317, 0.068870,
		-0.223740, 0.889370, 0.398699,
		35.547817, 31.186472, 42.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066849, 30.760624, 42.436668>,  <35.704437, 30.563913, 42.718956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066849, 30.760624, 42.436668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221958, 31.102001, 42.575958>,  <35.315025, 31.306828, 42.659534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221958, 31.102001, 42.575958>,  <35.066849, 30.760624, 42.436668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221958, 31.102001, 42.575958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187281, 0.442857, -0.876814,
		-0.902528, 0.274789, 0.331563,
		0.387774, 0.853445, 0.348228,
		35.338291, 31.358034, 42.680428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591396, 31.232285, 42.074696>,  <35.066849, 30.760624, 42.436668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591396, 31.232285, 42.074696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.911846, 31.439861, 42.193962>,  <35.104115, 31.564407, 42.265522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.911846, 31.439861, 42.193962>,  <34.591396, 31.232285, 42.074696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911846, 31.439861, 42.193962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007772, 0.507169, -0.861812,
		-0.598451, 0.688099, 0.410337,
		0.801121, 0.518941, 0.298168,
		35.152184, 31.595543, 42.283413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457764, 31.989767, 42.011639>,  <34.591396, 31.232285, 42.074696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457764, 31.989767, 42.011639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855453, 31.953680, 41.988411>,  <35.094067, 31.932028, 41.974472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855453, 31.953680, 41.988411>,  <34.457764, 31.989767, 42.011639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855453, 31.953680, 41.988411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003037, 0.517363, -0.855761,
		0.107250, 0.850997, 0.514102,
		0.994227, -0.090219, -0.058071,
		35.153721, 31.926615, 41.970989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643566, 32.620438, 41.860027>,  <34.457764, 31.989767, 42.011639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643566, 32.620438, 41.860027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949100, 32.392681, 41.738468>,  <35.132420, 32.256027, 41.665535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949100, 32.392681, 41.738468>,  <34.643566, 32.620438, 41.860027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949100, 32.392681, 41.738468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087744, 0.374872, -0.922915,
		0.639420, 0.731619, 0.236380,
		0.763834, -0.569389, -0.303896,
		35.178249, 32.221863, 41.647301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167675, 33.071926, 41.761528>,  <34.643566, 32.620438, 41.860027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167675, 33.071926, 41.761528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.242935, 32.742947, 41.546803>,  <35.288094, 32.545559, 41.417969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.242935, 32.742947, 41.546803>,  <35.167675, 33.071926, 41.761528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242935, 32.742947, 41.546803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049643, 0.537914, -0.841537,
		0.980884, 0.184988, 0.060382,
		0.188155, -0.822452, -0.536814,
		35.299381, 32.496212, 41.385757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852112, 33.442039, 41.953957>,  <35.167675, 33.071926, 41.761528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852112, 33.442039, 41.953957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887375, 33.817318, 42.087837>,  <35.908531, 34.042484, 42.168163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887375, 33.817318, 42.087837>,  <35.852112, 33.442039, 41.953957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887375, 33.817318, 42.087837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288256, -0.345657, 0.892989,
		0.953487, 0.017754, -0.300912,
		0.088158, 0.938193, 0.334697,
		35.913822, 34.098774, 42.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443405, 33.386734, 42.296066>,  <35.852112, 33.442039, 41.953957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443405, 33.386734, 42.296066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254711, 33.705692, 42.446598>,  <36.141495, 33.897068, 42.536919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254711, 33.705692, 42.446598>,  <36.443405, 33.386734, 42.296066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254711, 33.705692, 42.446598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231547, -0.299795, 0.925478,
		0.850795, 0.523718, -0.043212,
		-0.471734, 0.797398, 0.376329,
		36.113190, 33.944912, 42.559498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759941, 33.451008, 42.874878>,  <36.443405, 33.386734, 42.296066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759941, 33.451008, 42.874878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459400, 33.708027, 42.935005>,  <36.279076, 33.862240, 42.971081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459400, 33.708027, 42.935005>,  <36.759941, 33.451008, 42.874878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459400, 33.708027, 42.935005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181707, -0.017533, 0.983196,
		0.634390, 0.766041, -0.103583,
		-0.751353, 0.642552, 0.150318,
		36.233994, 33.900791, 42.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982174, 33.971607, 43.426128>,  <36.759941, 33.451008, 42.874878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982174, 33.971607, 43.426128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582981, 33.963818, 43.450272>,  <36.343464, 33.959145, 43.464760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582981, 33.963818, 43.450272>,  <36.982174, 33.971607, 43.426128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582981, 33.963818, 43.450272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062552, -0.144819, 0.987479,
		-0.010486, 0.989266, 0.145745,
		-0.997987, -0.019471, 0.060362,
		36.283585, 33.957977, 43.468380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853687, 34.326462, 44.023773>,  <36.982174, 33.971607, 43.426128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853687, 34.326462, 44.023773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506805, 34.148708, 43.933907>,  <36.298676, 34.042057, 43.879986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506805, 34.148708, 43.933907>,  <36.853687, 34.326462, 44.023773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506805, 34.148708, 43.933907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110507, -0.268175, 0.957011,
		-0.485530, 0.854754, 0.183455,
		-0.867207, -0.444385, -0.224663,
		36.246643, 34.015392, 43.866508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299286, 34.525379, 44.523125>,  <36.853687, 34.326462, 44.023773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299286, 34.525379, 44.523125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164146, 34.173115, 44.390282>,  <36.083061, 33.961758, 44.310577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164146, 34.173115, 44.390282>,  <36.299286, 34.525379, 44.523125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164146, 34.173115, 44.390282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238786, -0.261112, 0.935309,
		-0.910406, 0.395297, -0.122072,
		-0.337850, -0.880659, -0.332109,
		36.062790, 33.908916, 44.290649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548397, 34.377670, 44.727127>,  <36.299286, 34.525379, 44.523125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548397, 34.377670, 44.727127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745144, 34.032520, 44.680637>,  <35.863194, 33.825428, 44.652744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745144, 34.032520, 44.680637>,  <35.548397, 34.377670, 44.727127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745144, 34.032520, 44.680637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301930, -0.294248, 0.906784,
		-0.816641, -0.410928, -0.405260,
		0.491869, -0.862877, -0.116223,
		35.892704, 33.773659, 44.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107983, 34.090939, 45.088856>,  <35.548397, 34.377670, 44.727127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107983, 34.090939, 45.088856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414711, 33.840576, 45.031963>,  <35.598747, 33.690357, 44.997826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414711, 33.840576, 45.031963>,  <35.107983, 34.090939, 45.088856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414711, 33.840576, 45.031963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109955, -0.346413, 0.931616,
		-0.632379, -0.698739, -0.334457,
		0.766816, -0.625909, -0.142234,
		35.644756, 33.652802, 44.989292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789909, 33.374977, 45.321293>,  <35.107983, 34.090939, 45.088856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789909, 33.374977, 45.321293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.186218, 33.324657, 45.341507>,  <35.424004, 33.294464, 45.353634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.186218, 33.324657, 45.341507>,  <34.789909, 33.374977, 45.321293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186218, 33.324657, 45.341507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072090, -0.173225, 0.982240,
		-0.114811, -0.976815, -0.180695,
		0.990768, -0.125798, 0.050531,
		35.483448, 33.286919, 45.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873993, 32.827038, 45.734306>,  <34.789909, 33.374977, 45.321293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873993, 32.827038, 45.734306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224838, 33.019062, 45.728500>,  <35.435345, 33.134277, 45.725018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224838, 33.019062, 45.728500>,  <34.873993, 32.827038, 45.734306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224838, 33.019062, 45.728500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079056, -0.114496, 0.990273,
		0.473731, -0.869730, -0.138377,
		0.877115, 0.480063, -0.014517,
		35.487972, 33.163082, 45.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354271, 32.340611, 46.015827>,  <34.873993, 32.827038, 45.734306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354271, 32.340611, 46.015827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530544, 32.697388, 46.056286>,  <35.636307, 32.911453, 46.080563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530544, 32.697388, 46.056286>,  <35.354271, 32.340611, 46.015827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530544, 32.697388, 46.056286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326186, -0.264090, 0.907667,
		0.836303, -0.367000, -0.407320,
		0.440683, 0.891946, 0.101149,
		35.662750, 32.964970, 46.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051929, 32.276306, 46.368652>,  <35.354271, 32.340611, 46.015827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051929, 32.276306, 46.368652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930367, 32.653942, 46.419773>,  <35.857430, 32.880524, 46.450443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930367, 32.653942, 46.419773>,  <36.051929, 32.276306, 46.368652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930367, 32.653942, 46.419773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295066, -0.034273, 0.954862,
		0.905857, 0.327897, -0.268154,
		-0.303905, 0.944092, 0.127798,
		35.839195, 32.937168, 46.458111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647274, 32.699150, 46.669544>,  <36.051929, 32.276306, 46.368652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647274, 32.699150, 46.669544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314365, 32.913292, 46.727131>,  <36.114620, 33.041775, 46.761684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314365, 32.913292, 46.727131>,  <36.647274, 32.699150, 46.669544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314365, 32.913292, 46.727131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291479, 0.201677, 0.935076,
		0.471558, 0.820199, -0.323893,
		-0.832270, 0.535351, 0.143968,
		36.064686, 33.073898, 46.770321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933231, 33.140438, 47.046776>,  <36.647274, 32.699150, 46.669544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933231, 33.140438, 47.046776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544300, 33.184856, 47.128986>,  <36.310940, 33.211506, 47.178314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544300, 33.184856, 47.128986>,  <36.933231, 33.140438, 47.046776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544300, 33.184856, 47.128986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231167, 0.330526, 0.915049,
		0.033675, 0.937242, -0.347050,
		-0.972331, 0.111041, 0.205529,
		36.252602, 33.218170, 47.190643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.369465, 32.761684, 46.835114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700426, 32.540604, 46.795258>,  <30.899004, 32.407955, 46.771343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700426, 32.540604, 46.795258>,  <30.369465, 32.761684, 46.835114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700426, 32.540604, 46.795258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117744, 0.344191, -0.931487,
		0.549125, 0.758985, 0.349862,
		0.827404, -0.552697, -0.099638,
		30.948647, 32.374794, 46.765366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837145, 33.207645, 46.794365>,  <30.369465, 32.761684, 46.835114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837145, 33.207645, 46.794365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991278, 32.887207, 46.611164>,  <31.083757, 32.694946, 46.501244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991278, 32.887207, 46.611164>,  <30.837145, 33.207645, 46.794365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991278, 32.887207, 46.611164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030200, 0.507016, -0.861408,
		0.922283, 0.318098, 0.219563,
		0.385334, -0.801092, -0.458005,
		31.106878, 32.646881, 46.473763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313179, 33.427307, 46.417240>,  <30.837145, 33.207645, 46.794365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313179, 33.427307, 46.417240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251459, 33.071148, 46.245949>,  <31.214428, 32.857452, 46.143173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251459, 33.071148, 46.245949>,  <31.313179, 33.427307, 46.417240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251459, 33.071148, 46.245949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283710, 0.375240, -0.882442,
		0.946414, -0.257655, 0.194715,
		-0.154300, -0.890399, -0.428231,
		31.205170, 32.804028, 46.117481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890545, 33.348785, 45.958611>,  <31.313179, 33.427307, 46.417240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890545, 33.348785, 45.958611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600807, 33.101952, 45.835625>,  <31.426964, 32.953850, 45.761833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600807, 33.101952, 45.835625>,  <31.890545, 33.348785, 45.958611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600807, 33.101952, 45.835625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071416, 0.376405, -0.923698,
		0.685730, -0.691033, -0.228577,
		-0.724343, -0.617084, -0.307463,
		31.383505, 32.916828, 45.743385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175556, 33.233730, 45.278778>,  <31.890545, 33.348785, 45.958611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175556, 33.233730, 45.278778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796066, 33.107346, 45.282623>,  <31.568373, 33.031513, 45.284931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796066, 33.107346, 45.282623>,  <32.175556, 33.233730, 45.278778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796066, 33.107346, 45.282623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132282, 0.369215, -0.919882,
		0.287099, -0.873984, -0.392079,
		-0.948723, -0.315962, 0.009611,
		31.511450, 33.012554, 45.285507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062828, 32.886520, 44.608894>,  <32.175556, 33.233730, 45.278778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062828, 32.886520, 44.608894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699099, 32.979340, 44.747047>,  <31.480862, 33.035030, 44.829941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699099, 32.979340, 44.747047>,  <32.062828, 32.886520, 44.608894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699099, 32.979340, 44.747047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294902, 0.226186, -0.928371,
		-0.293548, -0.946041, -0.137244,
		-0.909320, 0.232047, 0.345386,
		31.426302, 33.048954, 44.850662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464390, 32.659908, 44.107941>,  <32.062828, 32.886520, 44.608894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464390, 32.659908, 44.107941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272665, 32.947849, 44.308769>,  <31.157631, 33.120613, 44.429268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272665, 32.947849, 44.308769>,  <31.464390, 32.659908, 44.107941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272665, 32.947849, 44.308769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303857, 0.400577, -0.864412,
		-0.823366, -0.566881, 0.026731,
		-0.479311, 0.719850, 0.502072,
		31.128872, 33.163803, 44.459393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837313, 32.689262, 43.731873>,  <31.464390, 32.659908, 44.107941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837313, 32.689262, 43.731873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857260, 33.022469, 43.952271>,  <30.869228, 33.222393, 44.084507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857260, 33.022469, 43.952271>,  <30.837313, 32.689262, 43.731873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857260, 33.022469, 43.952271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394430, 0.523261, -0.755396,
		-0.917572, -0.179658, 0.354662,
		0.049868, 0.833019, 0.550992,
		30.872221, 33.272373, 44.117569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239475, 33.094761, 43.595257>,  <30.837313, 32.689262, 43.731873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239475, 33.094761, 43.595257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521807, 33.350723, 43.716797>,  <30.691206, 33.504303, 43.789719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521807, 33.350723, 43.716797>,  <30.239475, 33.094761, 43.595257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521807, 33.350723, 43.716797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378992, 0.703503, -0.601207,
		-0.598473, 0.309194, 0.739073,
		0.705829, 0.639909, 0.303846,
		30.733555, 33.542694, 43.807949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957695, 33.666145, 43.458309>,  <30.239475, 33.094761, 43.595257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957695, 33.666145, 43.458309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332109, 33.789993, 43.525208>,  <30.556759, 33.864300, 43.565346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332109, 33.789993, 43.525208>,  <29.957695, 33.666145, 43.458309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332109, 33.789993, 43.525208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179024, 0.828144, -0.531157,
		-0.302960, 0.467241, 0.830603,
		0.936037, 0.309617, 0.167247,
		30.612921, 33.882877, 43.575382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941446, 34.445282, 43.602299>,  <29.957695, 33.666145, 43.458309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941446, 34.445282, 43.602299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.305834, 34.335514, 43.479118>,  <30.524466, 34.269653, 43.405212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.305834, 34.335514, 43.479118>,  <29.941446, 34.445282, 43.602299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305834, 34.335514, 43.479118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012073, 0.763997, -0.645107,
		0.412303, 0.583953, 0.699289,
		0.910967, -0.274422, -0.307948,
		30.579124, 34.253189, 43.386734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368687, 35.068283, 43.633568>,  <29.941446, 34.445282, 43.602299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368687, 35.068283, 43.633568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540939, 34.809364, 43.381992>,  <30.644291, 34.654015, 43.231049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540939, 34.809364, 43.381992>,  <30.368687, 35.068283, 43.633568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540939, 34.809364, 43.381992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242512, 0.754224, -0.610192,
		0.869336, 0.110241, 0.481769,
		0.430629, -0.647297, -0.628940,
		30.670128, 34.615177, 43.193310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929422, 35.418076, 43.316936>,  <30.368687, 35.068283, 43.633568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929422, 35.418076, 43.316936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923744, 35.103474, 43.069969>,  <30.920338, 34.914711, 42.921787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923744, 35.103474, 43.069969>,  <30.929422, 35.418076, 43.316936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923744, 35.103474, 43.069969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320337, 0.581361, -0.747932,
		0.947197, -0.208402, 0.243693,
		-0.014197, -0.786503, -0.617423,
		30.919485, 34.867523, 42.884743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587540, 35.573452, 42.818069>,  <30.929422, 35.418076, 43.316936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587540, 35.573452, 42.818069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361507, 35.330700, 42.594505>,  <31.225889, 35.185047, 42.460369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361507, 35.330700, 42.594505>,  <31.587540, 35.573452, 42.818069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361507, 35.330700, 42.594505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218689, 0.543023, -0.810741,
		0.795525, -0.580359, -0.174132,
		-0.565079, -0.606884, -0.558907,
		31.191984, 35.148636, 42.426834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213432, 36.017838, 42.899307>,  <31.587540, 35.573452, 42.818069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213432, 36.017838, 42.899307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205254, 36.413681, 42.956242>,  <32.200348, 36.651188, 42.990402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205254, 36.413681, 42.956242>,  <32.213432, 36.017838, 42.899307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205254, 36.413681, 42.956242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239383, -0.143067, 0.960327,
		0.970710, -0.014438, 0.239820,
		-0.020445, 0.989608, 0.142332,
		32.199120, 36.710564, 42.998940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817398, 36.137501, 43.265923>,  <32.213432, 36.017838, 42.899307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817398, 36.137501, 43.265923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550808, 36.426582, 43.339149>,  <32.390854, 36.600033, 43.383083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550808, 36.426582, 43.339149>,  <32.817398, 36.137501, 43.265923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550808, 36.426582, 43.339149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077096, -0.311044, 0.947263,
		0.741532, 0.617213, 0.263020,
		-0.666474, 0.722704, 0.183065,
		32.350864, 36.643394, 43.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974957, 36.321629, 43.936661>,  <32.817398, 36.137501, 43.265923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974957, 36.321629, 43.936661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614819, 36.488148, 43.885944>,  <32.398735, 36.588058, 43.855515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614819, 36.488148, 43.885944>,  <32.974957, 36.321629, 43.936661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614819, 36.488148, 43.885944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245938, -0.246384, 0.937448,
		0.359015, 0.875210, 0.324214,
		-0.900346, 0.416295, -0.126792,
		32.344715, 36.613037, 43.847908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901695, 36.814232, 44.353714>,  <32.974957, 36.321629, 43.936661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901695, 36.814232, 44.353714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520435, 36.722126, 44.275246>,  <32.291679, 36.666862, 44.228165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520435, 36.722126, 44.275246>,  <32.901695, 36.814232, 44.353714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520435, 36.722126, 44.275246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209720, 0.035680, 0.977110,
		-0.217997, 0.972473, -0.082300,
		-0.953150, -0.230267, -0.196169,
		32.234489, 36.653046, 44.216396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458954, 37.279903, 44.747730>,  <32.901695, 36.814232, 44.353714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458954, 37.279903, 44.747730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238522, 36.956734, 44.664230>,  <32.106262, 36.762833, 44.614132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238522, 36.956734, 44.664230>,  <32.458954, 37.279903, 44.747730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238522, 36.956734, 44.664230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097721, -0.185960, 0.977686,
		-0.828712, 0.559181, 0.023528,
		-0.551079, -0.807920, -0.208751,
		32.073196, 36.714359, 44.601604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070053, 37.249889, 45.321400>,  <32.458954, 37.279903, 44.747730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070053, 37.249889, 45.321400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031345, 36.884579, 45.163124>,  <32.008121, 36.665394, 45.068161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031345, 36.884579, 45.163124>,  <32.070053, 37.249889, 45.321400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031345, 36.884579, 45.163124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038063, -0.400656, 0.915438,
		-0.994579, 0.073526, 0.073533,
		-0.096770, -0.913274, -0.395685,
		32.002316, 36.610596, 45.044418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522850, 36.926605, 45.716110>,  <32.070053, 37.249889, 45.321400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522850, 36.926605, 45.716110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.710968, 36.619896, 45.541351>,  <31.823839, 36.435871, 45.436497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.710968, 36.619896, 45.541351>,  <31.522850, 36.926605, 45.716110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710968, 36.619896, 45.541351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038714, -0.476662, 0.878234,
		-0.881659, -0.429944, -0.194487,
		0.470296, -0.766774, -0.436898,
		31.852057, 36.389862, 45.410282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148540, 36.345612, 45.978546>,  <31.522850, 36.926605, 45.716110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148540, 36.345612, 45.978546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512163, 36.243614, 45.846733>,  <31.730337, 36.182415, 45.767643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512163, 36.243614, 45.846733>,  <31.148540, 36.345612, 45.978546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512163, 36.243614, 45.846733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211451, -0.399151, 0.892170,
		-0.359027, -0.880715, -0.308935,
		0.909059, -0.254988, -0.329534,
		31.784880, 36.167118, 45.747871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222885, 35.632381, 46.274914>,  <31.148540, 36.345612, 45.978546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222885, 35.632381, 46.274914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598232, 35.726753, 46.173878>,  <31.823441, 35.783379, 46.113255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598232, 35.726753, 46.173878>,  <31.222885, 35.632381, 46.274914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598232, 35.726753, 46.173878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343111, -0.547592, 0.763163,
		0.041739, -0.802794, -0.594794,
		0.938367, 0.235934, -0.252591,
		31.879742, 35.797535, 46.098099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624084, 35.020073, 46.336296>,  <31.222885, 35.632381, 46.274914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624084, 35.020073, 46.336296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889027, 35.315948, 46.383877>,  <32.047993, 35.493473, 46.412426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889027, 35.315948, 46.383877>,  <31.624084, 35.020073, 46.336296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889027, 35.315948, 46.383877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492258, -0.549375, 0.675180,
		0.564772, -0.388653, -0.727998,
		0.662355, 0.739686, 0.118955,
		32.087734, 35.537853, 46.419563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431973, 34.850716, 46.302338>,  <31.624084, 35.020073, 46.336296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431973, 34.850716, 46.302338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365582, 35.158340, 46.549240>,  <32.325748, 35.342915, 46.697380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365582, 35.158340, 46.549240>,  <32.431973, 34.850716, 46.302338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365582, 35.158340, 46.549240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535624, -0.455248, 0.711236,
		0.827985, 0.448664, -0.336365,
		-0.165976, 0.769058, 0.617254,
		32.315788, 35.389057, 46.734417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024521, 34.905613, 46.709240>,  <32.431973, 34.850716, 46.302338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024521, 34.905613, 46.709240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740231, 35.098808, 46.913822>,  <32.569656, 35.214725, 47.036572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740231, 35.098808, 46.913822>,  <33.024521, 34.905613, 46.709240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740231, 35.098808, 46.913822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396828, -0.325054, 0.858410,
		0.580853, 0.813056, 0.039361,
		-0.710730, 0.482991, 0.511452,
		32.527012, 35.243706, 47.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354626, 35.130627, 47.263851>,  <33.024521, 34.905613, 46.709240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354626, 35.130627, 47.263851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969322, 35.158104, 47.367710>,  <32.738140, 35.174591, 47.430027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969322, 35.158104, 47.367710>,  <33.354626, 35.130627, 47.263851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969322, 35.158104, 47.367710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217180, -0.369567, 0.903467,
		0.158017, 0.926662, 0.341070,
		-0.963257, 0.068689, 0.259650,
		32.680344, 35.178711, 47.445606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310390, 35.578861, 47.902416>,  <33.354626, 35.130627, 47.263851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310390, 35.578861, 47.902416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984478, 35.347546, 47.885906>,  <32.788929, 35.208755, 47.875999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984478, 35.347546, 47.885906>,  <33.310390, 35.578861, 47.902416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984478, 35.347546, 47.885906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151555, -0.281170, 0.947615,
		-0.559603, 0.765848, 0.316736,
		-0.814786, -0.578291, -0.041275,
		32.740044, 35.174057, 47.873524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604107, 36.214703, 48.046295>,  <33.310390, 35.578861, 47.902416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604107, 36.214703, 48.046295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981525, 36.300827, 48.146988>,  <34.207977, 36.352501, 48.207405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981525, 36.300827, 48.146988>,  <33.604107, 36.214703, 48.046295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981525, 36.300827, 48.146988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114421, 0.501324, -0.857661,
		-0.310860, 0.838043, 0.448385,
		0.943543, 0.215308, 0.251731,
		34.264587, 36.365421, 48.222507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760712, 36.973862, 47.824841>,  <33.604107, 36.214703, 48.046295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760712, 36.973862, 47.824841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131065, 36.827549, 47.862667>,  <34.353279, 36.739761, 47.885365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131065, 36.827549, 47.862667>,  <33.760712, 36.973862, 47.824841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131065, 36.827549, 47.862667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278543, 0.491777, -0.824966,
		0.255249, 0.790165, 0.557214,
		0.925884, -0.365780, 0.094569,
		34.408829, 36.717815, 47.891037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216908, 37.442772, 47.920502>,  <33.760712, 36.973862, 47.824841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216908, 37.442772, 47.920502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424236, 37.145771, 47.750774>,  <34.548634, 36.967571, 47.648937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424236, 37.145771, 47.750774>,  <34.216908, 37.442772, 47.920502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424236, 37.145771, 47.750774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278825, 0.615777, -0.736936,
		0.808457, 0.263658, 0.526195,
		0.518318, -0.742497, -0.424315,
		34.579731, 36.923023, 47.623478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688770, 37.781418, 47.696716>,  <34.216908, 37.442772, 47.920502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688770, 37.781418, 47.696716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760345, 37.446346, 47.490311>,  <34.803291, 37.245304, 47.366467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760345, 37.446346, 47.490311>,  <34.688770, 37.781418, 47.696716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760345, 37.446346, 47.490311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439866, 0.537257, -0.719634,
		0.880057, -0.098211, 0.464601,
		0.178934, -0.837681, -0.516016,
		34.814026, 37.195042, 47.335506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223774, 38.012527, 47.314861>,  <34.688770, 37.781418, 47.696716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223774, 38.012527, 47.314861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112175, 37.674400, 47.132614>,  <35.045216, 37.471523, 47.023266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112175, 37.674400, 47.132614>,  <35.223774, 38.012527, 47.314861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112175, 37.674400, 47.132614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355073, 0.350025, -0.866837,
		0.892235, -0.403624, 0.202495,
		-0.278998, -0.845323, -0.455620,
		35.028477, 37.420803, 46.995930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755585, 37.731911, 46.888935>,  <35.223774, 38.012527, 47.314861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755585, 37.731911, 46.888935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.455338, 37.528625, 46.720036>,  <35.275188, 37.406654, 46.618694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.455338, 37.528625, 46.720036>,  <35.755585, 37.731911, 46.888935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455338, 37.528625, 46.720036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428288, 0.112398, -0.896625,
		0.503136, -0.853866, 0.133293,
		-0.750616, -0.508212, -0.422252,
		35.230152, 37.376163, 46.593361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035515, 37.197205, 46.438625>,  <35.755585, 37.731911, 46.888935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035515, 37.197205, 46.438625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659992, 37.220936, 46.302902>,  <35.434681, 37.235176, 46.221470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659992, 37.220936, 46.302902>,  <36.035515, 37.197205, 46.438625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659992, 37.220936, 46.302902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330693, -0.120406, -0.936026,
		-0.096387, -0.990950, 0.093418,
		-0.938803, 0.059328, -0.339306,
		35.378353, 37.238735, 46.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929394, 36.762630, 46.031700>,  <36.035515, 37.197205, 46.438625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929394, 36.762630, 46.031700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.620960, 36.980843, 45.900349>,  <35.435902, 37.111771, 45.821537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.620960, 36.980843, 45.900349>,  <35.929394, 36.762630, 46.031700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620960, 36.980843, 45.900349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280797, -0.171533, -0.944314,
		-0.571478, -0.820350, -0.020917,
		-0.771080, 0.545529, -0.328380,
		35.389637, 37.144501, 45.801834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671951, 36.344208, 45.434456>,  <35.929394, 36.762630, 46.031700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671951, 36.344208, 45.434456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589298, 36.735538, 45.429096>,  <35.539707, 36.970337, 45.425880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589298, 36.735538, 45.429096>,  <35.671951, 36.344208, 45.434456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589298, 36.735538, 45.429096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122911, 0.012365, -0.992341,
		-0.970668, -0.206697, -0.122802,
		-0.206633, 0.978327, -0.013403,
		35.527309, 37.029037, 45.425076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196926, 36.399254, 44.930309>,  <35.671951, 36.344208, 45.434456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196926, 36.399254, 44.930309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.362335, 36.760845, 44.973785>,  <35.461582, 36.977802, 44.999870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.362335, 36.760845, 44.973785>,  <35.196926, 36.399254, 44.930309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362335, 36.760845, 44.973785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088882, 0.078731, -0.992926,
		-0.906145, 0.420259, -0.047791,
		0.413524, 0.903982, 0.108695,
		35.486393, 37.032040, 45.006393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987823, 36.664150, 44.402836>,  <35.196926, 36.399254, 44.930309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987823, 36.664150, 44.402836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291294, 36.903004, 44.507023>,  <35.473377, 37.046314, 44.569534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291294, 36.903004, 44.507023>,  <34.987823, 36.664150, 44.402836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291294, 36.903004, 44.507023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279347, 0.063011, -0.958121,
		-0.588539, 0.799662, -0.119003,
		0.758674, 0.597135, 0.260467,
		35.518898, 37.082146, 44.585163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793274, 37.300312, 44.068825>,  <34.987823, 36.664150, 44.402836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793274, 37.300312, 44.068825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191818, 37.329166, 44.086945>,  <35.430946, 37.346478, 44.097816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191818, 37.329166, 44.086945>,  <34.793274, 37.300312, 44.068825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191818, 37.329166, 44.086945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040129, 0.071602, -0.996626,
		-0.075136, 0.994821, 0.068447,
		0.996365, 0.072136, 0.045301,
		35.490726, 37.350807, 44.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949368, 37.882282, 43.709614>,  <34.793274, 37.300312, 44.068825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949368, 37.882282, 43.709614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313797, 37.721283, 43.745270>,  <35.532455, 37.624683, 43.766663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313797, 37.721283, 43.745270>,  <34.949368, 37.882282, 43.709614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313797, 37.721283, 43.745270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143595, 0.107158, -0.983818,
		0.386432, 0.909128, 0.155425,
		0.911071, -0.402497, 0.089137,
		35.587120, 37.600533, 43.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439648, 38.373878, 43.423183>,  <34.949368, 37.882282, 43.709614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439648, 38.373878, 43.423183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619968, 38.017365, 43.403595>,  <35.728161, 37.803455, 43.391842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619968, 38.017365, 43.403595>,  <35.439648, 38.373878, 43.423183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619968, 38.017365, 43.403595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283768, 0.195106, -0.938834,
		0.846318, 0.409332, 0.340871,
		0.450800, -0.891281, -0.048966,
		35.755207, 37.749981, 43.388905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.390881, 31.467707, 28.797188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038692, 31.320665, 28.677427>,  <27.827379, 31.232441, 28.605570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038692, 31.320665, 28.677427>,  <28.390881, 31.467707, 28.797188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038692, 31.320665, 28.677427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473115, 0.722056, 0.504775,
		0.030628, 0.586090, -0.809667,
		-0.880468, -0.367606, -0.299403,
		27.774551, 31.210384, 28.587606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027460, 32.007820, 28.395252>,  <28.390881, 31.467707, 28.797188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027460, 32.007820, 28.395252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764776, 31.754154, 28.558500>,  <27.607166, 31.601954, 28.656448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764776, 31.754154, 28.558500>,  <28.027460, 32.007820, 28.395252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764776, 31.754154, 28.558500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403175, 0.752576, 0.520652,
		-0.637322, 0.177374, -0.749906,
		-0.656712, -0.634167, 0.408121,
		27.567762, 31.563904, 28.680937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340738, 32.354477, 28.393600>,  <28.027460, 32.007820, 28.395252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340738, 32.354477, 28.393600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256863, 32.076496, 28.668722>,  <27.206537, 31.909708, 28.833796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256863, 32.076496, 28.668722>,  <27.340738, 32.354477, 28.393600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256863, 32.076496, 28.668722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455142, 0.691960, 0.560391,
		-0.865377, -0.195541, -0.461397,
		-0.209689, -0.694950, 0.687805,
		27.193956, 31.868011, 28.875063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500130, 32.374855, 28.620163>,  <27.340738, 32.354477, 28.393600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500130, 32.374855, 28.620163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743332, 32.197201, 28.883394>,  <26.889254, 32.090607, 29.041334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743332, 32.197201, 28.883394>,  <26.500130, 32.374855, 28.620163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743332, 32.197201, 28.883394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354531, 0.589770, 0.725589,
		-0.710377, -0.674473, 0.201124,
		0.608007, -0.444137, 0.658081,
		26.925734, 32.063961, 29.080818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100407, 32.284081, 29.207544>,  <26.500130, 32.374855, 28.620163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100407, 32.284081, 29.207544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473219, 32.212551, 29.333618>,  <26.696907, 32.169632, 29.409262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473219, 32.212551, 29.333618>,  <26.100407, 32.284081, 29.207544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473219, 32.212551, 29.333618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126887, 0.653657, 0.746078,
		-0.339440, -0.735360, 0.586537,
		0.932030, -0.178824, 0.315185,
		26.752829, 32.158905, 29.428173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056456, 32.214626, 29.998903>,  <26.100407, 32.284081, 29.207544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056456, 32.214626, 29.998903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.433950, 32.280506, 29.884197>,  <26.660448, 32.320034, 29.815374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.433950, 32.280506, 29.884197>,  <26.056456, 32.214626, 29.998903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433950, 32.280506, 29.884197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106599, 0.669365, 0.735247,
		0.313042, -0.724449, 0.614149,
		0.943738, 0.164695, -0.286764,
		26.717072, 32.329914, 29.798168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360832, 32.284531, 30.562689>,  <26.056456, 32.214626, 29.998903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360832, 32.284531, 30.562689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615561, 32.466301, 30.313545>,  <26.768398, 32.575363, 30.164059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615561, 32.466301, 30.313545>,  <26.360832, 32.284531, 30.562689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615561, 32.466301, 30.313545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081624, 0.763575, 0.640540,
		0.766675, -0.458752, 0.449172,
		0.636825, 0.454423, -0.622859,
		26.806606, 32.602627, 30.126686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930218, 32.479210, 30.948021>,  <26.360832, 32.284531, 30.562689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930218, 32.479210, 30.948021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932251, 32.722481, 30.630508>,  <26.933472, 32.868443, 30.440001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932251, 32.722481, 30.630508>,  <26.930218, 32.479210, 30.948021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932251, 32.722481, 30.630508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092893, 0.790647, 0.605184,
		0.995663, 0.070660, 0.060516,
		0.005084, 0.608181, -0.793782,
		26.933777, 32.904934, 30.392374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413021, 33.019024, 31.140985>,  <26.930218, 32.479210, 30.948021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413021, 33.019024, 31.140985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158056, 33.156643, 30.865206>,  <27.005077, 33.239212, 30.699738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158056, 33.156643, 30.865206>,  <27.413021, 33.019024, 31.140985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158056, 33.156643, 30.865206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148858, 0.822940, 0.548280,
		0.756007, 0.452110, -0.473338,
		-0.637412, 0.344043, -0.689449,
		26.966833, 33.259857, 30.658371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716412, 33.641106, 30.935539>,  <27.413021, 33.019024, 31.140985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716412, 33.641106, 30.935539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337860, 33.690273, 30.816036>,  <27.110729, 33.719772, 30.744335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337860, 33.690273, 30.816036>,  <27.716412, 33.641106, 30.935539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337860, 33.690273, 30.816036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079399, 0.807919, 0.583921,
		0.313146, 0.576332, -0.754838,
		-0.946380, 0.122919, -0.298757,
		27.053946, 33.727150, 30.726410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683384, 34.337532, 30.848534>,  <27.716412, 33.641106, 30.935539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683384, 34.337532, 30.848534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304075, 34.212345, 30.869841>,  <27.076490, 34.137234, 30.882626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304075, 34.212345, 30.869841>,  <27.683384, 34.337532, 30.848534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304075, 34.212345, 30.869841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167446, 0.635626, 0.753618,
		-0.269715, 0.705714, -0.655150,
		-0.948270, -0.312965, 0.053269,
		27.019594, 34.118454, 30.885820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353588, 34.983006, 30.845085>,  <27.683384, 34.337532, 30.848534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353588, 34.983006, 30.845085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113680, 34.711613, 31.014763>,  <26.969736, 34.548779, 31.116570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113680, 34.711613, 31.014763>,  <27.353588, 34.983006, 30.845085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113680, 34.711613, 31.014763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070108, 0.572645, 0.816800,
		-0.797096, 0.460152, -0.391022,
		-0.599769, -0.678482, 0.424193,
		26.933750, 34.508068, 31.142021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909376, 35.313213, 31.250593>,  <27.353588, 34.983006, 30.845085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909376, 35.313213, 31.250593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852289, 34.952057, 31.412790>,  <26.818037, 34.735363, 31.510109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852289, 34.952057, 31.412790>,  <26.909376, 35.313213, 31.250593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852289, 34.952057, 31.412790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136947, 0.423759, 0.895362,
		-0.980244, 0.072252, -0.184125,
		-0.142717, -0.902889, 0.405492,
		26.809475, 34.681190, 31.534437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321421, 35.380104, 31.738619>,  <26.909376, 35.313213, 31.250593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321421, 35.380104, 31.738619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538885, 35.068020, 31.862368>,  <26.669363, 34.880772, 31.936617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538885, 35.068020, 31.862368>,  <26.321421, 35.380104, 31.738619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538885, 35.068020, 31.862368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116692, 0.294759, 0.948420,
		-0.831154, -0.551718, 0.069205,
		0.543660, -0.780208, 0.309371,
		26.701982, 34.833958, 31.955179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987503, 35.115170, 32.329514>,  <26.321421, 35.380104, 31.738619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987503, 35.115170, 32.329514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.348448, 34.943615, 32.346466>,  <26.565014, 34.840683, 32.356636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.348448, 34.943615, 32.346466>,  <25.987503, 35.115170, 32.329514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348448, 34.943615, 32.346466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032658, 0.030005, 0.999016,
		-0.429739, -0.902858, 0.013069,
		0.902362, -0.428890, 0.042380,
		26.619156, 34.814949, 32.359180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848804, 34.525829, 32.749413>,  <25.987503, 35.115170, 32.329514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848804, 34.525829, 32.749413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228271, 34.650921, 32.768295>,  <26.455952, 34.725975, 32.779625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228271, 34.650921, 32.768295>,  <25.848804, 34.525829, 32.749413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228271, 34.650921, 32.768295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139190, 0.278807, 0.950207,
		0.284034, -0.907989, 0.308026,
		0.948657, 0.312766, 0.047192,
		26.512873, 34.744740, 32.782455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969831, 34.373531, 33.380222>,  <25.848804, 34.525829, 32.749413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969831, 34.373531, 33.380222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.292048, 34.598896, 33.306831>,  <26.485378, 34.734116, 33.262794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.292048, 34.598896, 33.306831>,  <25.969831, 34.373531, 33.380222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292048, 34.598896, 33.306831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013917, 0.291577, 0.956446,
		0.592377, -0.773010, 0.227037,
		0.805541, 0.563417, -0.183481,
		26.533710, 34.767921, 33.251785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543976, 34.214108, 33.774368>,  <25.969831, 34.373531, 33.380222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543976, 34.214108, 33.774368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611263, 34.600101, 33.693871>,  <26.651636, 34.831699, 33.645573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611263, 34.600101, 33.693871>,  <26.543976, 34.214108, 33.774368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611263, 34.600101, 33.693871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077202, 0.190634, 0.978621,
		0.982722, -0.180157, -0.042431,
		0.168216, 0.964988, -0.201249,
		26.661728, 34.889599, 33.633495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013323, 34.460518, 34.341045>,  <26.543976, 34.214108, 33.774368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013323, 34.460518, 34.341045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855577, 34.793167, 34.184643>,  <26.760931, 34.992756, 34.090801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855577, 34.793167, 34.184643>,  <27.013323, 34.460518, 34.341045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855577, 34.793167, 34.184643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109422, 0.379971, 0.918503,
		0.912416, 0.405010, -0.058850,
		-0.394364, 0.831618, -0.391009,
		26.737268, 35.042652, 34.067341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320099, 35.013523, 34.736626>,  <27.013323, 34.460518, 34.341045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320099, 35.013523, 34.736626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.989664, 35.173111, 34.577423>,  <26.791403, 35.268864, 34.481903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.989664, 35.173111, 34.577423>,  <27.320099, 35.013523, 34.736626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989664, 35.173111, 34.577423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086782, 0.607767, 0.789359,
		0.556821, 0.686619, -0.467445,
		-0.826086, 0.398966, -0.398004,
		26.741838, 35.292801, 34.458023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414846, 35.692928, 34.720837>,  <27.320099, 35.013523, 34.736626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414846, 35.692928, 34.720837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015631, 35.677570, 34.701057>,  <26.776102, 35.668354, 34.689190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015631, 35.677570, 34.701057>,  <27.414846, 35.692928, 34.720837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015631, 35.677570, 34.701057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062605, 0.606354, 0.792727,
		-0.000454, 0.794268, -0.607568,
		-0.998038, -0.038396, -0.049450,
		26.716219, 35.666050, 34.686222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192013, 36.467754, 34.707497>,  <27.414846, 35.692928, 34.720837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192013, 36.467754, 34.707497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879406, 36.253311, 34.835136>,  <26.691841, 36.124645, 34.911720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879406, 36.253311, 34.835136>,  <27.192013, 36.467754, 34.707497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879406, 36.253311, 34.835136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090214, 0.603202, 0.792470,
		-0.617328, 0.590541, -0.519776,
		-0.781516, -0.536105, 0.319098,
		26.644951, 36.092480, 34.930866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699791, 36.534554, 34.096809>,  <27.192013, 36.467754, 34.707497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699791, 36.534554, 34.096809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993322, 36.464443, 34.359344>,  <28.169441, 36.422379, 34.516865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993322, 36.464443, 34.359344>,  <27.699791, 36.534554, 34.096809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993322, 36.464443, 34.359344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325800, -0.756982, -0.566421,
		0.596112, 0.629490, -0.498390,
		0.733829, -0.175275, 0.656334,
		28.213470, 36.411861, 34.556244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295147, 36.378902, 33.668175>,  <27.699791, 36.534554, 34.096809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295147, 36.378902, 33.668175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381763, 36.201702, 34.016167>,  <28.433733, 36.095383, 34.224960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381763, 36.201702, 34.016167>,  <28.295147, 36.378902, 33.668175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381763, 36.201702, 34.016167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368034, -0.788332, -0.493035,
		0.904246, 0.426944, -0.007668,
		0.216544, -0.443003, 0.869976,
		28.446726, 36.068802, 34.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996275, 36.044632, 33.590763>,  <28.295147, 36.378902, 33.668175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996275, 36.044632, 33.590763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825544, 35.850159, 33.895771>,  <28.723106, 35.733475, 34.078777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825544, 35.850159, 33.895771>,  <28.996275, 36.044632, 33.590763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825544, 35.850159, 33.895771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502164, -0.828667, -0.247270,
		0.752098, 0.277370, 0.597842,
		-0.426827, -0.486185, 0.762524,
		28.697496, 35.704304, 34.124527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607330, 35.879787, 34.005249>,  <28.996275, 36.044632, 33.590763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607330, 35.879787, 34.005249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306192, 35.625214, 34.072388>,  <29.125509, 35.472469, 34.112671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306192, 35.625214, 34.072388>,  <29.607330, 35.879787, 34.005249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306192, 35.625214, 34.072388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480890, -0.705976, -0.519945,
		0.449408, -0.310722, 0.837546,
		-0.752846, -0.636435, 0.167848,
		29.080339, 35.434284, 34.122742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914576, 35.333630, 34.394745>,  <29.607330, 35.879787, 34.005249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914576, 35.333630, 34.394745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573000, 35.181747, 34.252415>,  <29.368055, 35.090618, 34.167015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573000, 35.181747, 34.252415>,  <29.914576, 35.333630, 34.394745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573000, 35.181747, 34.252415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479181, -0.840417, -0.253151,
		-0.202920, -0.386680, 0.899612,
		-0.853937, -0.379707, -0.355827,
		29.316818, 35.067837, 34.145668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979040, 34.627911, 34.565891>,  <29.914576, 35.333630, 34.394745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979040, 34.627911, 34.565891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.677490, 34.625938, 34.303093>,  <29.496561, 34.624756, 34.145412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.677490, 34.625938, 34.303093>,  <29.979040, 34.627911, 34.565891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677490, 34.625938, 34.303093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362674, -0.836942, -0.409874,
		-0.547851, -0.547270, 0.632736,
		-0.753875, -0.004927, -0.657000,
		29.451328, 34.624462, 34.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700687, 33.971699, 34.575512>,  <29.979040, 34.627911, 34.565891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700687, 33.971699, 34.575512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.593113, 34.110481, 34.216114>,  <29.528568, 34.193752, 34.000473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.593113, 34.110481, 34.216114>,  <29.700687, 33.971699, 34.575512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593113, 34.110481, 34.216114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091334, -0.919474, -0.382394,
		-0.958818, -0.184902, 0.215591,
		-0.268936, 0.346955, -0.898496,
		29.512432, 34.214569, 33.946564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425749, 33.388493, 34.321526>,  <29.700687, 33.971699, 34.575512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425749, 33.388493, 34.321526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470438, 33.627705, 34.004066>,  <29.497252, 33.771233, 33.813591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470438, 33.627705, 34.004066>,  <29.425749, 33.388493, 34.321526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470438, 33.627705, 34.004066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027537, -0.800204, -0.599096,
		-0.993358, 0.045079, -0.105871,
		0.111725, 0.598031, -0.793647,
		29.503956, 33.807114, 33.765972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873631, 33.303539, 33.818825>,  <29.425749, 33.388493, 34.321526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873631, 33.303539, 33.818825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214121, 33.419277, 33.643692>,  <29.418415, 33.488720, 33.538612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214121, 33.419277, 33.643692>,  <28.873631, 33.303539, 33.818825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214121, 33.419277, 33.643692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125896, -0.697338, -0.705599,
		-0.509478, 0.655745, -0.557163,
		0.851224, 0.289342, -0.437834,
		29.469488, 33.506081, 33.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868563, 33.061573, 33.146431>,  <28.873631, 33.303539, 33.818825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868563, 33.061573, 33.146431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255112, 33.164391, 33.149315>,  <29.487041, 33.226082, 33.151047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255112, 33.164391, 33.149315>,  <28.868563, 33.061573, 33.146431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255112, 33.164391, 33.149315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166563, -0.604342, -0.779120,
		-0.195911, 0.754121, -0.626833,
		0.966373, 0.257045, 0.007211,
		29.545023, 33.241505, 33.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974817, 33.232704, 32.416389>,  <28.868563, 33.061573, 33.146431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974817, 33.232704, 32.416389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324732, 33.140385, 32.586792>,  <29.534681, 33.084995, 32.689034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324732, 33.140385, 32.586792>,  <28.974817, 33.232704, 32.416389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324732, 33.140385, 32.586792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266957, -0.504150, -0.821320,
		0.404328, 0.832206, -0.379412,
		0.874788, -0.230796, 0.426005,
		29.587168, 33.071144, 32.714592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438828, 33.216061, 31.883095>,  <28.974817, 33.232704, 32.416389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438828, 33.216061, 31.883095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662910, 33.022705, 32.152168>,  <29.797359, 32.906693, 32.313614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662910, 33.022705, 32.152168>,  <29.438828, 33.216061, 31.883095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662910, 33.022705, 32.152168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326929, -0.617126, -0.715732,
		0.761108, 0.620878, -0.187685,
		0.560207, -0.483390, 0.672683,
		29.830973, 32.877689, 32.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154688, 33.211460, 31.604359>,  <29.438828, 33.216061, 31.883095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154688, 33.211460, 31.604359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097908, 32.899452, 31.848137>,  <30.063839, 32.712250, 31.994404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097908, 32.899452, 31.848137>,  <30.154688, 33.211460, 31.604359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097908, 32.899452, 31.848137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247036, -0.624116, -0.741250,
		0.958553, 0.045334, 0.281286,
		-0.141951, -0.780015, 0.609447,
		30.055323, 32.665447, 32.030972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563505, 32.681744, 31.389620>,  <30.154688, 33.211460, 31.604359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563505, 32.681744, 31.389620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296507, 32.469505, 31.598587>,  <30.136309, 32.342163, 31.723967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296507, 32.469505, 31.598587>,  <30.563505, 32.681744, 31.389620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296507, 32.469505, 31.598587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073123, -0.744911, -0.663144,
		0.741016, -0.404444, 0.536023,
		-0.667494, -0.530596, 0.522417,
		30.096258, 32.310326, 31.755312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890167, 32.064812, 31.451738>,  <30.563505, 32.681744, 31.389620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890167, 32.064812, 31.451738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494944, 32.020874, 31.494949>,  <30.257809, 31.994513, 31.520876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494944, 32.020874, 31.494949>,  <30.890167, 32.064812, 31.451738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494944, 32.020874, 31.494949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000082, -0.701570, -0.712600,
		0.154061, -0.704084, 0.693203,
		-0.988061, -0.109841, 0.108027,
		30.198524, 31.987923, 31.527357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861286, 31.401958, 31.549274>,  <30.890167, 32.064812, 31.451738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861286, 31.401958, 31.549274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494848, 31.524879, 31.446255>,  <30.274984, 31.598633, 31.384443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494848, 31.524879, 31.446255>,  <30.861286, 31.401958, 31.549274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494848, 31.524879, 31.446255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094392, -0.789575, -0.606352,
		-0.389689, -0.531166, 0.752333,
		-0.916096, 0.307303, -0.257551,
		30.220020, 31.617071, 31.368990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532984, 30.815042, 31.451046>,  <30.861286, 31.401958, 31.549274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532984, 30.815042, 31.451046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277483, 31.068592, 31.276600>,  <30.124182, 31.220722, 31.171932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277483, 31.068592, 31.276600>,  <30.532984, 30.815042, 31.451046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277483, 31.068592, 31.276600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220404, -0.693807, -0.685605,
		-0.737169, -0.341810, 0.582879,
		-0.638752, 0.633875, -0.436117,
		30.085857, 31.258755, 31.145765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869667, 30.396616, 31.401249>,  <30.532984, 30.815042, 31.451046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869667, 30.396616, 31.401249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819391, 30.707087, 31.154104>,  <29.789227, 30.893370, 31.005817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819391, 30.707087, 31.154104>,  <29.869667, 30.396616, 31.401249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819391, 30.707087, 31.154104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171973, -0.630417, -0.756967,
		-0.977050, 0.011112, 0.212718,
		-0.125690, 0.776177, -0.617861,
		29.781685, 30.939939, 30.968746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319782, 30.296799, 30.879374>,  <29.869667, 30.396616, 31.401249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319782, 30.296799, 30.879374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565977, 30.557175, 30.701630>,  <29.713694, 30.713400, 30.594984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565977, 30.557175, 30.701630>,  <29.319782, 30.296799, 30.879374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565977, 30.557175, 30.701630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022150, -0.549291, -0.835337,
		-0.787836, 0.523981, -0.323663,
		0.615486, 0.650940, -0.444358,
		29.750624, 30.752457, 30.568323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948624, 30.472586, 30.346704>,  <29.319782, 30.296799, 30.879374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948624, 30.472586, 30.346704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330252, 30.561626, 30.266508>,  <29.559229, 30.615051, 30.218390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330252, 30.561626, 30.266508>,  <28.948624, 30.472586, 30.346704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330252, 30.561626, 30.266508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073065, -0.476133, -0.876333,
		-0.290532, 0.850733, -0.438000,
		0.954071, 0.222601, -0.200491,
		29.616472, 30.628407, 30.206362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.359913, 34.320843, 47.765079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133545, 33.993176, 47.727776>,  <35.997723, 33.796574, 47.705395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133545, 33.993176, 47.727776>,  <36.359913, 34.320843, 47.765079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133545, 33.993176, 47.727776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055838, -0.150940, 0.986965,
		-0.822566, 0.553337, 0.131160,
		-0.565921, -0.819168, -0.093261,
		35.963768, 33.747425, 47.699799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825062, 34.372116, 48.163849>,  <36.359913, 34.320843, 47.765079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825062, 34.372116, 48.163849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782310, 33.975582, 48.133289>,  <35.756660, 33.737663, 48.114952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782310, 33.975582, 48.133289>,  <35.825062, 34.372116, 48.163849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782310, 33.975582, 48.133289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203600, -0.053389, 0.977598,
		-0.973203, 0.120042, -0.196128,
		-0.106882, -0.991332, -0.076399,
		35.750244, 33.678181, 48.110371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240791, 34.212132, 48.619709>,  <35.825062, 34.372116, 48.163849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240791, 34.212132, 48.619709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431419, 33.867550, 48.549534>,  <35.545795, 33.660801, 48.507431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431419, 33.867550, 48.549534>,  <35.240791, 34.212132, 48.619709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431419, 33.867550, 48.549534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047913, -0.224708, 0.973247,
		-0.877830, -0.455415, -0.148365,
		0.476570, -0.861454, -0.175435,
		35.574390, 33.609116, 48.496902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944324, 33.810532, 49.082806>,  <35.240791, 34.212132, 48.619709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944324, 33.810532, 49.082806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271317, 33.595982, 48.998882>,  <35.467514, 33.467251, 48.948528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271317, 33.595982, 48.998882>,  <34.944324, 33.810532, 49.082806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271317, 33.595982, 48.998882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051908, -0.431418, 0.900658,
		-0.573611, -0.725380, -0.380518,
		0.817482, -0.536379, -0.209813,
		35.516560, 33.435070, 48.935940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880489, 33.066265, 49.250759>,  <34.944324, 33.810532, 49.082806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880489, 33.066265, 49.250759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265720, 33.170494, 49.277836>,  <35.496861, 33.233032, 49.294083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265720, 33.170494, 49.277836>,  <34.880489, 33.066265, 49.250759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265720, 33.170494, 49.277836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033644, -0.365942, 0.930029,
		0.267112, -0.893413, -0.361197,
		0.963078, 0.260574, 0.067690,
		35.554646, 33.248665, 49.298141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231491, 32.450596, 49.481407>,  <34.880489, 33.066265, 49.250759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231491, 32.450596, 49.481407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480648, 32.754707, 49.555141>,  <35.630142, 32.937176, 49.599384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480648, 32.754707, 49.555141>,  <35.231491, 32.450596, 49.481407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480648, 32.754707, 49.555141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209545, -0.389170, 0.897016,
		0.753723, -0.520115, -0.401723,
		0.622890, 0.760281, 0.184339,
		35.667515, 32.982792, 49.610443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863659, 32.190655, 49.559631>,  <35.231491, 32.450596, 49.481407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863659, 32.190655, 49.559631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877113, 32.543224, 49.748081>,  <35.885185, 32.754768, 49.861149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877113, 32.543224, 49.748081>,  <35.863659, 32.190655, 49.559631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877113, 32.543224, 49.748081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172821, -0.469419, 0.865898,
		0.984379, 0.052291, -0.168120,
		0.033640, 0.881426, 0.471122,
		35.887207, 32.807652, 49.889420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518353, 32.223053, 49.894764>,  <35.863659, 32.190655, 49.559631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518353, 32.223053, 49.894764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270679, 32.490719, 50.059124>,  <36.122078, 32.651318, 50.157742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270679, 32.490719, 50.059124>,  <36.518353, 32.223053, 49.894764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270679, 32.490719, 50.059124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125892, -0.431917, 0.893084,
		0.775092, 0.604708, 0.183192,
		-0.619179, 0.669160, 0.410904,
		36.084927, 32.691467, 50.182396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799973, 32.452682, 50.572533>,  <36.518353, 32.223053, 49.894764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799973, 32.452682, 50.572533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.440571, 32.616146, 50.636635>,  <36.224930, 32.714226, 50.675098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.440571, 32.616146, 50.636635>,  <36.799973, 32.452682, 50.572533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440571, 32.616146, 50.636635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007843, -0.350082, 0.936686,
		0.438887, 0.842877, 0.311346,
		-0.898508, 0.408657, 0.160257,
		36.171017, 32.738743, 50.684711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867737, 32.817432, 51.197281>,  <36.799973, 32.452682, 50.572533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867737, 32.817432, 51.197281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481579, 32.721611, 51.156033>,  <36.249886, 32.664120, 51.131283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481579, 32.721611, 51.156033>,  <36.867737, 32.817432, 51.197281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481579, 32.721611, 51.156033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000624, -0.393279, 0.919419,
		-0.260802, 0.887664, 0.379519,
		-0.965392, -0.239549, -0.103122,
		36.191959, 32.649746, 51.125095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505219, 33.129639, 51.814754>,  <36.867737, 32.817432, 51.197281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505219, 33.129639, 51.814754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304432, 32.824173, 51.652351>,  <36.183960, 32.640896, 51.554909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304432, 32.824173, 51.652351>,  <36.505219, 33.129639, 51.814754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304432, 32.824173, 51.652351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031424, -0.485235, 0.873819,
		-0.864313, 0.425873, 0.267571,
		-0.501971, -0.763662, -0.406012,
		36.153839, 32.595074, 51.530548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016518, 32.959064, 52.326115>,  <36.505219, 33.129639, 51.814754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016518, 32.959064, 52.326115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032978, 32.626514, 52.104439>,  <36.042854, 32.426983, 51.971436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032978, 32.626514, 52.104439>,  <36.016518, 32.959064, 52.326115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032978, 32.626514, 52.104439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094280, -0.548952, 0.830520,
		-0.994695, -0.086430, 0.055789,
		0.041156, -0.831374, -0.554188,
		36.045326, 32.377102, 51.938183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489296, 32.487896, 52.572758>,  <36.016518, 32.959064, 52.326115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489296, 32.487896, 52.572758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765907, 32.268131, 52.385166>,  <35.931873, 32.136272, 52.272610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765907, 32.268131, 52.385166>,  <35.489296, 32.487896, 52.572758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765907, 32.268131, 52.385166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040151, -0.618999, 0.784365,
		-0.721234, -0.561239, -0.405995,
		0.691527, -0.549410, -0.468977,
		35.973366, 32.103310, 52.244473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071999, 33.002556, 52.929993>,  <35.489296, 32.487896, 52.572758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071999, 33.002556, 52.929993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219051, 33.133736, 53.278084>,  <35.307285, 33.212444, 53.486938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219051, 33.133736, 53.278084>,  <35.071999, 33.002556, 52.929993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219051, 33.133736, 53.278084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367156, 0.910925, -0.188181,
		-0.854424, -0.250327, 0.455297,
		0.367635, 0.327952, 0.870225,
		35.329342, 33.232121, 53.539150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795658, 33.578224, 53.267567>,  <35.071999, 33.002556, 52.929993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795658, 33.578224, 53.267567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481125, 33.797031, 53.382427>,  <34.292404, 33.928314, 53.451344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481125, 33.797031, 53.382427>,  <34.795658, 33.578224, 53.267567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481125, 33.797031, 53.382427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030849, 0.429444, -0.902566,
		-0.617031, -0.718577, -0.320811,
		-0.786334, 0.547015, 0.287148,
		34.245224, 33.961136, 53.468571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323952, 33.501617, 52.784924>,  <34.795658, 33.578224, 53.267567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323952, 33.501617, 52.784924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239594, 33.842472, 52.976501>,  <34.188980, 34.046986, 53.091450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239594, 33.842472, 52.976501>,  <34.323952, 33.501617, 52.784924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239594, 33.842472, 52.976501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030171, 0.484056, -0.874517,
		-0.977043, -0.198881, -0.076375,
		-0.210894, 0.852137, 0.478944,
		34.176327, 34.098114, 53.120186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789635, 33.795517, 52.355789>,  <34.323952, 33.501617, 52.784924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789635, 33.795517, 52.355789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947483, 34.111473, 52.543552>,  <34.042194, 34.301044, 52.656212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947483, 34.111473, 52.543552>,  <33.789635, 33.795517, 52.355789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947483, 34.111473, 52.543552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034381, 0.523210, -0.851510,
		-0.918199, 0.319887, 0.233629,
		0.394624, 0.789889, 0.469413,
		34.065868, 34.348438, 52.684376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406326, 34.329948, 52.148048>,  <33.789635, 33.795517, 52.355789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406326, 34.329948, 52.148048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732143, 34.518646, 52.283092>,  <33.927635, 34.631863, 52.364120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732143, 34.518646, 52.283092>,  <33.406326, 34.329948, 52.148048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732143, 34.518646, 52.283092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017251, 0.601424, -0.798743,
		-0.579848, 0.644786, 0.498023,
		0.814542, 0.471741, 0.337612,
		33.976505, 34.660168, 52.384377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328056, 35.074322, 51.945389>,  <33.406326, 34.329948, 52.148048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328056, 35.074322, 51.945389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721519, 35.026943, 51.999619>,  <33.957600, 34.998516, 52.032158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721519, 35.026943, 51.999619>,  <33.328056, 35.074322, 51.945389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721519, 35.026943, 51.999619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177649, 0.516684, -0.837543,
		0.029153, 0.847944, 0.529284,
		0.983662, -0.118444, 0.135574,
		34.016617, 34.991409, 52.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636116, 35.724972, 51.890045>,  <33.328056, 35.074322, 51.945389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636116, 35.724972, 51.890045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937386, 35.475246, 51.807148>,  <34.118149, 35.325409, 51.757408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937386, 35.475246, 51.807148>,  <33.636116, 35.724972, 51.890045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937386, 35.475246, 51.807148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167616, 0.486795, -0.857284,
		0.636104, 0.610949, 0.471289,
		0.753178, -0.624317, -0.207248,
		34.163338, 35.287952, 51.744972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156471, 36.140781, 51.456429>,  <33.636116, 35.724972, 51.890045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156471, 36.140781, 51.456429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293674, 35.768963, 51.402325>,  <34.375996, 35.545872, 51.369862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293674, 35.768963, 51.402325>,  <34.156471, 36.140781, 51.456429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293674, 35.768963, 51.402325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441517, 0.286640, -0.850235,
		0.829100, 0.231921, 0.508730,
		0.343009, -0.929543, -0.135256,
		34.396576, 35.490101, 51.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853294, 36.137516, 51.327015>,  <34.156471, 36.140781, 51.456429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853294, 36.137516, 51.327015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736034, 35.800858, 51.145599>,  <34.665680, 35.598862, 51.036751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736034, 35.800858, 51.145599>,  <34.853294, 36.137516, 51.327015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736034, 35.800858, 51.145599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405183, 0.320304, -0.856290,
		0.865962, -0.434788, 0.247122,
		-0.293150, -0.841644, -0.453540,
		34.648090, 35.548363, 51.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300869, 36.122269, 50.722546>,  <34.853294, 36.137516, 51.327015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300869, 36.122269, 50.722546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020489, 35.847248, 50.646717>,  <34.852261, 35.682236, 50.601219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020489, 35.847248, 50.646717>,  <35.300869, 36.122269, 50.722546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020489, 35.847248, 50.646717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008170, 0.258048, -0.966097,
		0.713160, -0.678739, -0.175262,
		-0.700954, -0.687550, -0.189575,
		34.810204, 35.640984, 50.589844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522766, 35.866936, 50.139046>,  <35.300869, 36.122269, 50.722546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522766, 35.866936, 50.139046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135181, 35.768322, 50.131622>,  <34.902630, 35.709156, 50.127171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135181, 35.768322, 50.131622>,  <35.522766, 35.866936, 50.139046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135181, 35.768322, 50.131622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021968, 0.160614, -0.986773,
		0.246249, -0.955733, -0.161044,
		-0.968957, -0.246530, -0.018555,
		34.844494, 35.694363, 50.126057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317123, 35.248436, 49.689308>,  <35.522766, 35.866936, 50.139046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317123, 35.248436, 49.689308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007366, 35.501076, 49.704308>,  <34.821514, 35.652660, 49.713306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007366, 35.501076, 49.704308>,  <35.317123, 35.248436, 49.689308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007366, 35.501076, 49.704308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062417, 0.135239, -0.988845,
		-0.629624, -0.763410, -0.144150,
		-0.774389, 0.631598, 0.037500,
		34.775051, 35.690556, 49.715557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083519, 35.254707, 49.072136>,  <35.317123, 35.248436, 49.689308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083519, 35.254707, 49.072136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834835, 35.541157, 49.199036>,  <34.685627, 35.713028, 49.275173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834835, 35.541157, 49.199036>,  <35.083519, 35.254707, 49.072136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834835, 35.541157, 49.199036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197266, 0.248818, -0.948249,
		-0.758003, -0.652113, -0.013424,
		-0.621706, 0.716127, 0.317245,
		34.648323, 35.755997, 49.294209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481060, 35.156040, 48.697056>,  <35.083519, 35.254707, 49.072136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481060, 35.156040, 48.697056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499409, 35.540234, 48.806870>,  <34.510418, 35.770748, 48.872757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499409, 35.540234, 48.806870>,  <34.481060, 35.156040, 48.697056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499409, 35.540234, 48.806870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085852, 0.277596, -0.956854,
		-0.995251, 0.020327, 0.095194,
		0.045875, 0.960483, 0.274532,
		34.513172, 35.828377, 48.889229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927017, 35.619068, 48.279045>,  <34.481060, 35.156040, 48.697056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927017, 35.619068, 48.279045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183750, 35.893997, 48.415066>,  <34.337788, 36.058956, 48.496677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183750, 35.893997, 48.415066>,  <33.927017, 35.619068, 48.279045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183750, 35.893997, 48.415066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060620, 0.487534, -0.870997,
		-0.764449, 0.538417, 0.354579,
		0.641828, 0.687327, 0.340056,
		34.376297, 36.100197, 48.517082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289623, 35.309383, 48.559689>,  <33.927017, 35.619068, 48.279045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289623, 35.309383, 48.559689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011482, 35.082123, 48.383648>,  <32.844597, 34.945766, 48.278023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011482, 35.082123, 48.383648>,  <33.289623, 35.309383, 48.559689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011482, 35.082123, 48.383648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084501, -0.543496, 0.835148,
		-0.713686, 0.617909, 0.329911,
		-0.695350, -0.568156, -0.440099,
		32.802876, 34.911674, 48.251617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679035, 35.251160, 49.148647>,  <33.289623, 35.309383, 48.559689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679035, 35.251160, 49.148647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668671, 34.957420, 48.877338>,  <32.662453, 34.781178, 48.714554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668671, 34.957420, 48.877338>,  <32.679035, 35.251160, 49.148647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668671, 34.957420, 48.877338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217882, -0.658043, 0.720768,
		-0.975631, 0.166461, -0.142950,
		-0.025913, -0.734350, -0.678276,
		32.660896, 34.737114, 48.673855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122551, 34.898632, 49.260563>,  <32.679035, 35.251160, 49.148647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122551, 34.898632, 49.260563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320381, 34.602573, 49.078316>,  <32.439079, 34.424938, 48.968967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320381, 34.602573, 49.078316>,  <32.122551, 34.898632, 49.260563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320381, 34.602573, 49.078316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322202, -0.642997, 0.694795,
		-0.807208, -0.196826, -0.556484,
		0.494571, -0.740145, -0.455615,
		32.468754, 34.380531, 48.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626310, 34.325386, 49.073463>,  <32.122551, 34.898632, 49.260563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626310, 34.325386, 49.073463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979542, 34.138966, 49.095261>,  <32.191479, 34.027115, 49.108337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979542, 34.138966, 49.095261>,  <31.626310, 34.325386, 49.073463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979542, 34.138966, 49.095261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320825, -0.514955, 0.794917,
		-0.342409, -0.719457, -0.604266,
		0.883078, -0.466050, 0.054494,
		32.244465, 33.999149, 49.111610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460535, 33.720608, 49.521641>,  <31.626310, 34.325386, 49.073463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460535, 33.720608, 49.521641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856195, 33.684967, 49.474930>,  <32.093594, 33.663582, 49.446903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856195, 33.684967, 49.474930>,  <31.460535, 33.720608, 49.521641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856195, 33.684967, 49.474930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064293, -0.452199, 0.889597,
		-0.132069, -0.887456, -0.441566,
		0.989153, -0.089099, -0.116779,
		32.152943, 33.658237, 49.439896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537090, 32.995701, 49.651165>,  <31.460535, 33.720608, 49.521641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537090, 32.995701, 49.651165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895956, 33.166752, 49.695400>,  <32.111275, 33.269382, 49.721943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895956, 33.166752, 49.695400>,  <31.537090, 32.995701, 49.651165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895956, 33.166752, 49.695400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213058, -0.638288, 0.739726,
		0.386916, -0.640094, -0.663759,
		0.897164, 0.427631, 0.110587,
		32.165104, 33.295040, 49.728577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049843, 32.474670, 49.655304>,  <31.537090, 32.995701, 49.651165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049843, 32.474670, 49.655304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197880, 32.786217, 49.857845>,  <32.286701, 32.973145, 49.979370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197880, 32.786217, 49.857845>,  <32.049843, 32.474670, 49.655304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197880, 32.786217, 49.857845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048008, -0.560360, 0.826856,
		0.927752, -0.281707, -0.244779,
		0.370095, 0.778870, 0.506351,
		32.308910, 33.019878, 50.009750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568562, 31.882942, 49.394821>,  <32.049843, 32.474670, 49.655304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568562, 31.882942, 49.394821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260983, 31.635542, 49.330101>,  <32.076435, 31.487101, 49.291267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260983, 31.635542, 49.330101>,  <32.568562, 31.882942, 49.394821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260983, 31.635542, 49.330101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026120, 0.283272, -0.958684,
		0.638783, -0.732948, -0.233976,
		-0.768944, -0.618502, -0.161804,
		32.030300, 31.449991, 49.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584949, 31.619564, 48.712864>,  <32.568562, 31.882942, 49.394821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584949, 31.619564, 48.712864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207821, 31.503860, 48.779102>,  <31.981544, 31.434439, 48.818848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207821, 31.503860, 48.779102>,  <32.584949, 31.619564, 48.712864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207821, 31.503860, 48.779102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184198, 0.038104, -0.982150,
		0.277787, -0.956492, -0.089207,
		-0.942818, -0.289261, 0.165599,
		31.924976, 31.417082, 48.828781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444618, 31.086861, 48.245537>,  <32.584949, 31.619564, 48.712864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444618, 31.086861, 48.245537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093811, 31.255156, 48.338333>,  <31.883327, 31.356133, 48.394012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093811, 31.255156, 48.338333>,  <32.444618, 31.086861, 48.245537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093811, 31.255156, 48.338333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214733, 0.088706, -0.972636,
		-0.429803, -0.902835, 0.012549,
		-0.877017, 0.420737, 0.231995,
		31.830706, 31.381376, 48.407932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830946, 30.738419, 47.812531>,  <32.444618, 31.086861, 48.245537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830946, 30.738419, 47.812531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684072, 31.081987, 47.955322>,  <31.595949, 31.288128, 48.040997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684072, 31.081987, 47.955322>,  <31.830946, 30.738419, 47.812531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684072, 31.081987, 47.955322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440457, 0.177469, -0.880058,
		-0.819252, -0.480375, 0.313154,
		-0.367183, 0.858920, 0.356977,
		31.573917, 31.339664, 48.062416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127007, 30.831760, 47.536736>,  <31.830946, 30.738419, 47.812531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127007, 30.831760, 47.536736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214792, 31.209923, 47.633102>,  <31.267464, 31.436821, 47.690922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214792, 31.209923, 47.633102>,  <31.127007, 30.831760, 47.536736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214792, 31.209923, 47.633102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405696, 0.313007, -0.858742,
		-0.887269, 0.090725, 0.452242,
		0.219464, 0.945408, 0.240914,
		31.280632, 31.493546, 47.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600218, 31.153917, 47.361969>,  <31.127007, 30.831760, 47.536736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600218, 31.153917, 47.361969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862873, 31.451336, 47.412506>,  <31.020466, 31.629787, 47.442829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862873, 31.451336, 47.412506>,  <30.600218, 31.153917, 47.361969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862873, 31.451336, 47.412506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396731, 0.482999, -0.780587,
		-0.641430, 0.462436, 0.612144,
		0.656637, 0.743549, 0.126347,
		31.059864, 31.674400, 47.450409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292107, 31.830141, 47.130821>,  <30.600218, 31.153917, 47.361969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292107, 31.830141, 47.130821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680687, 31.924471, 47.120468>,  <30.913836, 31.981070, 47.114258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680687, 31.924471, 47.120468>,  <30.292107, 31.830141, 47.130821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680687, 31.924471, 47.120468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139700, 0.480458, -0.865820,
		-0.191747, 0.844717, 0.499686,
		0.971451, 0.235824, -0.025880,
		30.972122, 31.995218, 47.112705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.589596, 29.016317, 50.585640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599403, 29.269686, 50.895008>,  <36.605286, 29.421707, 51.080627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599403, 29.269686, 50.895008>,  <36.589596, 29.016317, 50.585640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599403, 29.269686, 50.895008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580179, -0.639049, 0.504984,
		0.814120, 0.436342, -0.383163,
		0.024515, 0.633421, 0.773419,
		36.606758, 29.459711, 51.127033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095654, 29.656279, 50.321983>,  <36.589596, 29.016317, 50.585640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095654, 29.656279, 50.321983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205818, 30.040617, 50.309826>,  <36.271919, 30.271219, 50.302532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205818, 30.040617, 50.309826>,  <36.095654, 29.656279, 50.321983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205818, 30.040617, 50.309826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386704, 0.081789, -0.918570,
		-0.880117, 0.264740, 0.394089,
		0.275415, 0.960845, -0.030392,
		36.288445, 30.328871, 50.300709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448738, 30.139830, 50.006443>,  <36.095654, 29.656279, 50.321983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448738, 30.139830, 50.006443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.807842, 30.308292, 49.954823>,  <36.023304, 30.409370, 49.923851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.807842, 30.308292, 49.954823>,  <35.448738, 30.139830, 50.006443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807842, 30.308292, 49.954823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339376, 0.474561, -0.812167,
		-0.280803, 0.772930, 0.568972,
		0.897760, 0.421155, -0.129056,
		36.077171, 30.434639, 49.916107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325069, 30.912695, 49.900242>,  <35.448738, 30.139830, 50.006443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325069, 30.912695, 49.900242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.667694, 30.792730, 49.732262>,  <35.873268, 30.720751, 49.631474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.667694, 30.792730, 49.732262>,  <35.325069, 30.912695, 49.900242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667694, 30.792730, 49.732262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276643, 0.420107, -0.864279,
		0.435631, 0.856483, 0.276878,
		0.856559, -0.299911, -0.419952,
		35.924664, 30.702757, 49.606277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561474, 31.472609, 49.417019>,  <35.325069, 30.912695, 49.900242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561474, 31.472609, 49.417019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.791595, 31.171419, 49.289238>,  <35.929668, 30.990705, 49.212570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.791595, 31.171419, 49.289238>,  <35.561474, 31.472609, 49.417019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791595, 31.171419, 49.289238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374374, 0.104842, -0.921332,
		0.727231, 0.649645, -0.221578,
		0.575308, -0.752974, -0.319455,
		35.964188, 30.945526, 49.193401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902554, 31.709620, 48.705761>,  <35.561474, 31.472609, 49.417019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902554, 31.709620, 48.705761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912178, 31.310127, 48.723457>,  <35.917953, 31.070433, 48.734074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912178, 31.310127, 48.723457>,  <35.902554, 31.709620, 48.705761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912178, 31.310127, 48.723457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005509, -0.044384, -0.998999,
		0.999695, 0.023790, -0.006570,
		0.024058, -0.998731, 0.044239,
		35.919395, 31.010508, 48.736729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222450, 31.518301, 48.060856>,  <35.902554, 31.709620, 48.705761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222450, 31.518301, 48.060856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072292, 31.177629, 48.207130>,  <35.982197, 30.973227, 48.294895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072292, 31.177629, 48.207130>,  <36.222450, 31.518301, 48.060856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072292, 31.177629, 48.207130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179420, -0.320302, -0.930169,
		0.909334, -0.414791, -0.032569,
		-0.375394, -0.851678, 0.365683,
		35.959675, 30.922127, 48.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594090, 30.969425, 47.702007>,  <36.222450, 31.518301, 48.060856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594090, 30.969425, 47.702007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235928, 30.838634, 47.822895>,  <36.021030, 30.760160, 47.895428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235928, 30.838634, 47.822895>,  <36.594090, 30.969425, 47.702007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235928, 30.838634, 47.822895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196719, -0.318404, -0.927319,
		0.399440, -0.889778, 0.220778,
		-0.895405, -0.326977, 0.302219,
		35.967304, 30.740541, 47.913559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523663, 30.265577, 47.408566>,  <36.594090, 30.969425, 47.702007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523663, 30.265577, 47.408566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149384, 30.373510, 47.499485>,  <35.924816, 30.438271, 47.554035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149384, 30.373510, 47.499485>,  <36.523663, 30.265577, 47.408566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149384, 30.373510, 47.499485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306070, -0.300393, -0.903374,
		-0.175482, -0.914852, 0.363664,
		-0.935696, 0.269833, 0.227295,
		35.868675, 30.454460, 47.567673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112938, 29.689743, 47.042690>,  <36.523663, 30.265577, 47.408566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112938, 29.689743, 47.042690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888065, 30.010136, 47.125042>,  <35.753143, 30.202372, 47.174454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888065, 30.010136, 47.125042>,  <36.112938, 29.689743, 47.042690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888065, 30.010136, 47.125042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405977, -0.050397, -0.912493,
		-0.720513, -0.596565, 0.353511,
		-0.562177, 0.800981, 0.205880,
		35.719414, 30.250429, 47.186806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546017, 29.523764, 46.724422>,  <36.112938, 29.689743, 47.042690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546017, 29.523764, 46.724422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469646, 29.910223, 46.793827>,  <35.423824, 30.142099, 46.835468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469646, 29.910223, 46.793827>,  <35.546017, 29.523764, 46.724422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469646, 29.910223, 46.793827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336466, 0.101641, -0.936194,
		-0.922138, -0.237123, 0.305670,
		-0.190925, 0.966148, 0.173511,
		35.412369, 30.200068, 46.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923298, 29.611500, 46.520123>,  <35.546017, 29.523764, 46.724422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923298, 29.611500, 46.520123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.110245, 29.965086, 46.514786>,  <35.222412, 30.177237, 46.511585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.110245, 29.965086, 46.514786>,  <34.923298, 29.611500, 46.520123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110245, 29.965086, 46.514786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066456, 0.020079, -0.997587,
		-0.881563, 0.467124, 0.068129,
		0.467365, 0.883964, -0.013342,
		35.250454, 30.230276, 46.510784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213554, 29.538359, 46.582775>,  <34.923298, 29.611500, 46.520123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213554, 29.538359, 46.582775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818771, 29.479101, 46.557549>,  <33.581902, 29.443546, 46.542412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818771, 29.479101, 46.557549>,  <34.213554, 29.538359, 46.582775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818771, 29.479101, 46.557549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035287, -0.581182, 0.813008,
		-0.157094, 0.800175, 0.578827,
		-0.986953, -0.148144, -0.063064,
		33.522686, 29.434658, 46.538628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825100, 29.826445, 47.160389>,  <34.213554, 29.538359, 46.582775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825100, 29.826445, 47.160389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.576912, 29.548981, 47.014046>,  <33.427998, 29.382502, 46.926239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.576912, 29.548981, 47.014046>,  <33.825100, 29.826445, 47.160389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576912, 29.548981, 47.014046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089656, -0.400713, 0.911806,
		-0.779087, 0.598551, 0.186440,
		-0.620472, -0.693661, -0.365854,
		33.390770, 29.340883, 46.904289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250645, 29.841852, 47.554352>,  <33.825100, 29.826445, 47.160389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250645, 29.841852, 47.554352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254520, 29.478371, 47.387421>,  <33.256847, 29.260281, 47.287262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254520, 29.478371, 47.387421>,  <33.250645, 29.841852, 47.554352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254520, 29.478371, 47.387421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113284, -0.415656, 0.902439,
		-0.993515, 0.038531, -0.106969,
		0.009691, -0.908705, -0.417326,
		33.257427, 29.205759, 47.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737877, 29.507587, 47.831772>,  <33.250645, 29.841852, 47.554352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737877, 29.507587, 47.831772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.949665, 29.200853, 47.686649>,  <33.076736, 29.016813, 47.599575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.949665, 29.200853, 47.686649>,  <32.737877, 29.507587, 47.831772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949665, 29.200853, 47.686649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099063, -0.480637, 0.871306,
		-0.842528, -0.425386, -0.330446,
		0.529465, -0.766834, -0.362810,
		33.108505, 28.970802, 47.577805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368217, 28.855127, 47.959648>,  <32.737877, 29.507587, 47.831772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368217, 28.855127, 47.959648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748425, 28.741386, 47.909580>,  <32.976547, 28.673141, 47.879539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748425, 28.741386, 47.909580>,  <32.368217, 28.855127, 47.959648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748425, 28.741386, 47.909580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006465, -0.384704, 0.923017,
		-0.310612, -0.878151, -0.363829,
		0.950515, -0.284348, -0.125171,
		33.033577, 28.656080, 47.872028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380058, 28.165415, 48.209408>,  <32.368217, 28.855127, 47.959648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380058, 28.165415, 48.209408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768623, 28.252821, 48.172306>,  <33.001762, 28.305264, 48.150043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768623, 28.252821, 48.172306>,  <32.380058, 28.165415, 48.209408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768623, 28.252821, 48.172306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168637, -0.360222, 0.917498,
		0.167073, -0.906914, -0.386775,
		0.971416, 0.218514, -0.092755,
		33.060047, 28.318375, 48.144478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714039, 27.538811, 48.398579>,  <32.380058, 28.165415, 48.209408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714039, 27.538811, 48.398579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959541, 27.842445, 48.485382>,  <33.106842, 28.024626, 48.537464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959541, 27.842445, 48.485382>,  <32.714039, 27.538811, 48.398579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959541, 27.842445, 48.485382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125436, -0.365137, 0.922465,
		0.779467, -0.538948, -0.319322,
		0.613756, 0.759085, 0.217008,
		33.143669, 28.070171, 48.550484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099903, 27.262058, 48.841381>,  <32.714039, 27.538811, 48.398579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099903, 27.262058, 48.841381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121742, 27.654469, 48.915794>,  <33.134846, 27.889915, 48.960442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121742, 27.654469, 48.915794>,  <33.099903, 27.262058, 48.841381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121742, 27.654469, 48.915794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220502, -0.193557, 0.955989,
		0.973857, -0.011171, -0.226886,
		0.054595, 0.981025, 0.186034,
		33.138123, 27.948776, 48.971603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510075, 27.314165, 49.375580>,  <33.099903, 27.262058, 48.841381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510075, 27.314165, 49.375580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376472, 27.690979, 49.388287>,  <33.296310, 27.917068, 49.395908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376472, 27.690979, 49.388287>,  <33.510075, 27.314165, 49.375580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376472, 27.690979, 49.388287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200637, 0.038130, 0.978923,
		0.920971, 0.333336, -0.201742,
		-0.334002, 0.942037, 0.031763,
		33.276272, 27.973591, 49.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012646, 27.651943, 49.724895>,  <33.510075, 27.314165, 49.375580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012646, 27.651943, 49.724895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.687477, 27.881123, 49.766644>,  <33.492378, 28.018631, 49.791691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.687477, 27.881123, 49.766644>,  <34.012646, 27.651943, 49.724895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687477, 27.881123, 49.766644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142532, 0.021969, 0.989546,
		0.564667, 0.819296, -0.099523,
		-0.812918, 0.572949, 0.104371,
		33.443604, 28.053007, 49.797955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072136, 28.148458, 50.235313>,  <34.012646, 27.651943, 49.724895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072136, 28.148458, 50.235313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672340, 28.144518, 50.247524>,  <33.432465, 28.142155, 50.254848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672340, 28.144518, 50.247524>,  <34.072136, 28.148458, 50.235313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672340, 28.144518, 50.247524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028993, 0.129609, 0.991141,
		-0.013718, 0.991516, -0.129257,
		-0.999485, -0.009849, 0.030525,
		33.372494, 28.141563, 50.256683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927895, 28.648436, 50.658730>,  <34.072136, 28.148458, 50.235313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927895, 28.648436, 50.658730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605556, 28.411617, 50.654823>,  <33.412155, 28.269526, 50.652481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605556, 28.411617, 50.654823>,  <33.927895, 28.648436, 50.658730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605556, 28.411617, 50.654823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033472, 0.029079, 0.999017,
		-0.591179, 0.805380, -0.043251,
		-0.805845, -0.592046, -0.009767,
		33.363804, 28.234003, 50.651894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340649, 29.007509, 51.070904>,  <33.927895, 28.648436, 50.658730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340649, 29.007509, 51.070904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262348, 28.617172, 51.032093>,  <33.215366, 28.382971, 51.008804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262348, 28.617172, 51.032093>,  <33.340649, 29.007509, 51.070904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262348, 28.617172, 51.032093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145179, -0.069016, 0.986995,
		-0.969847, 0.207296, -0.128161,
		-0.195755, -0.975841, -0.097030,
		33.203621, 28.324421, 51.002983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724014, 28.866274, 51.406490>,  <33.340649, 29.007509, 51.070904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724014, 28.866274, 51.406490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922913, 28.519754, 51.387394>,  <33.042252, 28.311844, 51.375935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922913, 28.519754, 51.387394>,  <32.724014, 28.866274, 51.406490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922913, 28.519754, 51.387394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206709, -0.171728, 0.963214,
		-0.842628, -0.469082, -0.264462,
		0.497242, -0.866297, -0.047740,
		33.072086, 28.259865, 51.373074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325562, 29.054832, 50.874676>,  <32.724014, 28.866274, 51.406490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325562, 29.054832, 50.874676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.165310, 29.341713, 51.102753>,  <32.069157, 29.513842, 51.239597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.165310, 29.341713, 51.102753>,  <32.325562, 29.054832, 50.874676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165310, 29.341713, 51.102753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317849, 0.474881, -0.820646,
		-0.859341, -0.510011, 0.037709,
		-0.400631, 0.717200, 0.570192,
		32.045120, 29.556873, 51.273811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824802, 29.265579, 50.482616>,  <32.325562, 29.054832, 50.874676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824802, 29.265579, 50.482616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.895864, 29.556747, 50.747517>,  <31.938501, 29.731447, 50.906456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.895864, 29.556747, 50.747517>,  <31.824802, 29.265579, 50.482616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895864, 29.556747, 50.747517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197828, 0.685631, -0.700552,
		-0.964004, -0.006556, 0.265808,
		0.177654, 0.727919, 0.662248,
		31.949162, 29.775124, 50.946190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298634, 29.724335, 50.400650>,  <31.824802, 29.265579, 50.482616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298634, 29.724335, 50.400650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587723, 29.932974, 50.582024>,  <31.761177, 30.058159, 50.690849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587723, 29.932974, 50.582024>,  <31.298634, 29.724335, 50.400650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587723, 29.932974, 50.582024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104905, 0.731260, -0.673984,
		-0.683129, 0.439537, 0.583217,
		0.722724, 0.521600, 0.453435,
		31.804541, 30.089455, 50.718056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987211, 30.349756, 50.440960>,  <31.298634, 29.724335, 50.400650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987211, 30.349756, 50.440960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.383541, 30.389084, 50.478054>,  <31.621340, 30.412682, 50.500309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.383541, 30.389084, 50.478054>,  <30.987211, 30.349756, 50.440960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383541, 30.389084, 50.478054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021779, 0.793330, -0.608403,
		-0.133389, 0.600800, 0.788192,
		0.990824, 0.098320, 0.092736,
		31.680788, 30.418579, 50.505875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980049, 31.044180, 50.523155>,  <30.987211, 30.349756, 50.440960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980049, 31.044180, 50.523155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347963, 30.933292, 50.412052>,  <31.568712, 30.866760, 50.345390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347963, 30.933292, 50.412052>,  <30.980049, 31.044180, 50.523155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347963, 30.933292, 50.412052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008648, 0.693298, -0.720599,
		0.392331, 0.665197, 0.635287,
		0.919783, -0.277219, -0.277755,
		31.623898, 30.850126, 50.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333076, 31.565475, 50.339188>,  <30.980049, 31.044180, 50.523155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333076, 31.565475, 50.339188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.575674, 31.291569, 50.177563>,  <31.721231, 31.127226, 50.080589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.575674, 31.291569, 50.177563>,  <31.333076, 31.565475, 50.339188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575674, 31.291569, 50.177563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247214, 0.645413, -0.722722,
		0.755680, 0.338436, 0.560722,
		0.606492, -0.684765, -0.404060,
		31.757622, 31.086140, 50.056343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851229, 31.983191, 50.137829>,  <31.333076, 31.565475, 50.339188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851229, 31.983191, 50.137829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844330, 31.643524, 49.926693>,  <31.840191, 31.439724, 49.800011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844330, 31.643524, 49.926693>,  <31.851229, 31.983191, 50.137829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844330, 31.643524, 49.926693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181282, 0.516515, -0.836868,
		0.983280, -0.110123, 0.145029,
		-0.017249, -0.849167, -0.527843,
		31.839155, 31.388775, 49.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545891, 32.179089, 50.072002>,  <31.851229, 31.983191, 50.137829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545891, 32.179089, 50.072002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.478096, 32.532001, 50.247665>,  <32.437420, 32.743748, 50.353062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.478096, 32.532001, 50.247665>,  <32.545891, 32.179089, 50.072002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478096, 32.532001, 50.247665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192442, -0.407396, 0.892745,
		0.966560, 0.235824, -0.100738,
		-0.169491, 0.882278, 0.439156,
		32.427250, 32.796684, 50.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954380, 32.241062, 50.679710>,  <32.545891, 32.179089, 50.072002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954380, 32.241062, 50.679710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687054, 32.527584, 50.759968>,  <32.526657, 32.699497, 50.808121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687054, 32.527584, 50.759968>,  <32.954380, 32.241062, 50.679710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687054, 32.527584, 50.759968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017592, -0.254427, 0.966932,
		0.743668, 0.649748, 0.157437,
		-0.668318, 0.716306, 0.200640,
		32.486557, 32.742477, 50.820160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142902, 32.573391, 51.316307>,  <32.954380, 32.241062, 50.679710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142902, 32.573391, 51.316307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753136, 32.645786, 51.263000>,  <32.519276, 32.689224, 51.231014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753136, 32.645786, 51.263000>,  <33.142902, 32.573391, 51.316307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753136, 32.645786, 51.263000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144196, -0.048567, 0.988357,
		0.172409, 0.982285, 0.073422,
		-0.974414, 0.180989, -0.133268,
		32.460812, 32.700085, 51.223019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992466, 33.060703, 51.874432>,  <33.142902, 32.573391, 51.316307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992466, 33.060703, 51.874432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633160, 32.914268, 51.777184>,  <32.417576, 32.826408, 51.718834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633160, 32.914268, 51.777184>,  <32.992466, 33.060703, 51.874432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633160, 32.914268, 51.777184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210722, -0.126670, 0.969304,
		-0.385646, 0.921919, 0.036640,
		-0.898261, -0.366087, -0.243119,
		32.363682, 32.804443, 51.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605854, 33.418880, 52.320843>,  <32.992466, 33.060703, 51.874432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605854, 33.418880, 52.320843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405380, 33.092228, 52.206348>,  <32.285095, 32.896236, 52.137650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405380, 33.092228, 52.206348>,  <32.605854, 33.418880, 52.320843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405380, 33.092228, 52.206348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420266, -0.059446, 0.905452,
		-0.756433, 0.574095, -0.313408,
		-0.501185, -0.816628, -0.286240,
		32.255024, 32.847240, 52.120476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965992, 33.556843, 52.692463>,  <32.605854, 33.418880, 52.320843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965992, 33.556843, 52.692463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.953753, 33.165104, 52.612514>,  <31.946409, 32.930061, 52.564545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.953753, 33.165104, 52.612514>,  <31.965992, 33.556843, 52.692463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953753, 33.165104, 52.612514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437641, -0.166649, 0.883572,
		-0.898629, 0.114507, -0.423502,
		-0.030599, -0.979345, -0.199869,
		31.944572, 32.871300, 52.552555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412331, 33.290600, 52.939896>,  <31.965992, 33.556843, 52.692463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412331, 33.290600, 52.939896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.654377, 32.973381, 52.911858>,  <31.799604, 32.783051, 52.895035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.654377, 32.973381, 52.911858>,  <31.412331, 33.290600, 52.939896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654377, 32.973381, 52.911858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246960, -0.270679, 0.930454,
		-0.756868, -0.545718, -0.359642,
		0.605113, -0.793048, -0.070098,
		31.835911, 32.735466, 52.890827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997324, 32.686409, 53.172600>,  <31.412331, 33.290600, 52.939896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997324, 32.686409, 53.172600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385214, 32.593452, 53.202610>,  <31.617947, 32.537678, 53.220615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385214, 32.593452, 53.202610>,  <30.997324, 32.686409, 53.172600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385214, 32.593452, 53.202610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166994, -0.406870, 0.898092,
		-0.178185, -0.883430, -0.433360,
		0.969723, -0.232395, 0.075029,
		31.676130, 32.523735, 53.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902912, 32.151806, 53.495781>,  <30.997324, 32.686409, 53.172600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902912, 32.151806, 53.495781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284836, 32.258717, 53.547779>,  <31.513990, 32.322865, 53.578979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284836, 32.258717, 53.547779>,  <30.902912, 32.151806, 53.495781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284836, 32.258717, 53.547779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008403, -0.412937, 0.910721,
		0.297099, -0.870657, -0.392030,
		0.954810, 0.267280, 0.129999,
		31.571280, 32.338902, 53.586781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.607311, 37.274940, 38.398918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999149, 37.341213, 38.444420>,  <33.234253, 37.380978, 38.471722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999149, 37.341213, 38.444420>,  <32.607311, 37.274940, 38.398918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999149, 37.341213, 38.444420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092162, -0.132637, 0.986871,
		0.178595, -0.977219, -0.114661,
		0.979597, 0.165682, 0.113751,
		33.293030, 37.390919, 38.478546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929127, 36.789536, 38.907063>,  <32.607311, 37.274940, 38.398918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929127, 36.789536, 38.907063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156677, 37.118465, 38.901821>,  <33.293205, 37.315823, 38.898674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156677, 37.118465, 38.901821>,  <32.929127, 36.789536, 38.907063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156677, 37.118465, 38.901821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154015, 0.122172, 0.980486,
		0.807877, -0.555752, 0.196150,
		0.568872, 0.822322, -0.013106,
		33.327339, 37.365162, 38.897888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421036, 36.633503, 39.350830>,  <32.929127, 36.789536, 38.907063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421036, 36.633503, 39.350830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402367, 37.032436, 39.328365>,  <33.391167, 37.271797, 39.314884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402367, 37.032436, 39.328365>,  <33.421036, 36.633503, 39.350830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402367, 37.032436, 39.328365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030166, 0.054794, 0.998042,
		0.998455, 0.048274, 0.027528,
		-0.046671, 0.997330, -0.056165,
		33.388367, 37.331635, 39.311516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015617, 37.023369, 39.666504>,  <33.421036, 36.633503, 39.350830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015617, 37.023369, 39.666504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700447, 37.269299, 39.680222>,  <33.511345, 37.416855, 39.688454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700447, 37.269299, 39.680222>,  <34.015617, 37.023369, 39.666504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700447, 37.269299, 39.680222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108934, 0.084353, 0.990464,
		0.606064, 0.784143, -0.133439,
		-0.787921, 0.614820, 0.034297,
		33.464069, 37.453743, 39.690510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191101, 37.381615, 40.174725>,  <34.015617, 37.023369, 39.666504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191101, 37.381615, 40.174725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804577, 37.476929, 40.135811>,  <33.572662, 37.534119, 40.112461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804577, 37.476929, 40.135811>,  <34.191101, 37.381615, 40.174725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804577, 37.476929, 40.135811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047937, 0.204757, 0.977638,
		0.252877, 0.949365, -0.186436,
		-0.966310, 0.238285, -0.097288,
		33.514683, 37.548416, 40.106625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035435, 37.848900, 40.692478>,  <34.191101, 37.381615, 40.174725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035435, 37.848900, 40.692478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674519, 37.720371, 40.577496>,  <33.457970, 37.643253, 40.508507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674519, 37.720371, 40.577496>,  <34.035435, 37.848900, 40.692478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674519, 37.720371, 40.577496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303986, 0.001336, 0.952675,
		-0.305729, 0.946970, -0.098882,
		-0.902287, -0.321319, -0.287458,
		33.403831, 37.623974, 40.491257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517109, 38.306252, 41.077129>,  <34.035435, 37.848900, 40.692478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517109, 38.306252, 41.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324322, 37.964603, 40.998970>,  <33.208649, 37.759613, 40.952076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324322, 37.964603, 40.998970>,  <33.517109, 38.306252, 41.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324322, 37.964603, 40.998970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411426, 0.023724, 0.911134,
		-0.773586, 0.519528, -0.362843,
		-0.481968, -0.854124, -0.195395,
		33.179729, 37.708366, 40.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854828, 38.399563, 41.344635>,  <33.517109, 38.306252, 41.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854828, 38.399563, 41.344635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882584, 38.001236, 41.320847>,  <32.899239, 37.762241, 41.306572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882584, 38.001236, 41.320847>,  <32.854828, 38.399563, 41.344635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882584, 38.001236, 41.320847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475200, -0.085412, 0.875722,
		-0.877137, -0.032506, -0.479139,
		0.069391, -0.995815, -0.059471,
		32.903400, 37.702492, 41.303005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209679, 38.158123, 41.665462>,  <32.854828, 38.399563, 41.344635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209679, 38.158123, 41.665462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400982, 37.807991, 41.636986>,  <32.515766, 37.597912, 41.619900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400982, 37.807991, 41.636986>,  <32.209679, 38.158123, 41.665462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400982, 37.807991, 41.636986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357529, -0.268106, 0.894591,
		-0.802146, -0.402396, -0.441180,
		0.478262, -0.875327, -0.071191,
		32.544460, 37.545395, 41.615627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686398, 37.633801, 41.862926>,  <32.209679, 38.158123, 41.665462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686398, 37.633801, 41.862926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056320, 37.489197, 41.910336>,  <32.278275, 37.402435, 41.938782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056320, 37.489197, 41.910336>,  <31.686398, 37.633801, 41.862926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056320, 37.489197, 41.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294321, -0.482439, 0.825001,
		-0.241064, -0.797850, -0.552562,
		0.924805, -0.361509, 0.118525,
		32.333763, 37.380745, 41.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524174, 36.958340, 41.863602>,  <31.686398, 37.633801, 41.862926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524174, 36.958340, 41.863602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880274, 37.003712, 42.040051>,  <32.093933, 37.030937, 42.145920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880274, 37.003712, 42.040051>,  <31.524174, 36.958340, 41.863602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880274, 37.003712, 42.040051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350494, -0.447902, 0.822519,
		0.290883, -0.886858, -0.358986,
		0.890248, 0.113435, 0.441125,
		32.147346, 37.037743, 42.172386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753817, 36.343292, 42.221390>,  <31.524174, 36.958340, 41.863602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753817, 36.343292, 42.221390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975571, 36.622112, 42.403282>,  <32.108624, 36.789402, 42.512417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975571, 36.622112, 42.403282>,  <31.753817, 36.343292, 42.221390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975571, 36.622112, 42.403282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381096, -0.273122, 0.883272,
		0.739880, -0.662971, 0.114227,
		0.554386, 0.697047, 0.454733,
		32.141888, 36.831226, 42.539703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973879, 35.606537, 42.047340>,  <31.753817, 36.343292, 42.221390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973879, 35.606537, 42.047340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614817, 35.436859, 41.999557>,  <31.399380, 35.335052, 41.970890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614817, 35.436859, 41.999557>,  <31.973879, 35.606537, 42.047340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614817, 35.436859, 41.999557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066181, 0.397741, -0.915108,
		0.435700, -0.813546, -0.385108,
		-0.897656, -0.424199, -0.119454,
		31.345520, 35.309601, 41.963722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008068, 35.314728, 41.528587>,  <31.973879, 35.606537, 42.047340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008068, 35.314728, 41.528587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610577, 35.330574, 41.570404>,  <31.372082, 35.340080, 41.595493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610577, 35.330574, 41.570404>,  <32.008068, 35.314728, 41.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610577, 35.330574, 41.570404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083292, 0.361348, -0.928704,
		-0.074564, -0.931589, -0.355783,
		-0.993732, 0.039614, 0.104537,
		31.312458, 35.342457, 41.601765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579550, 34.846348, 41.127636>,  <32.008068, 35.314728, 41.528587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579550, 34.846348, 41.127636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366838, 35.174763, 41.210690>,  <31.239212, 35.371811, 41.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366838, 35.174763, 41.210690>,  <31.579550, 34.846348, 41.127636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366838, 35.174763, 41.210690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135720, 0.159383, -0.977843,
		-0.835938, -0.548175, 0.026674,
		-0.531778, 0.821037, 0.207632,
		31.207306, 35.421074, 41.272980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090664, 34.802078, 40.681793>,  <31.579550, 34.846348, 41.127636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090664, 34.802078, 40.681793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027395, 35.183060, 40.785961>,  <30.989433, 35.411648, 40.848461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027395, 35.183060, 40.785961>,  <31.090664, 34.802078, 40.681793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027395, 35.183060, 40.785961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305293, 0.203645, -0.930228,
		-0.939030, -0.226641, 0.258566,
		-0.158172, 0.952451, 0.260421,
		30.979944, 35.468796, 40.864086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454744, 34.935814, 40.476959>,  <31.090664, 34.802078, 40.681793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454744, 34.935814, 40.476959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650787, 35.282791, 40.511238>,  <30.768414, 35.490978, 40.531803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650787, 35.282791, 40.511238>,  <30.454744, 34.935814, 40.476959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650787, 35.282791, 40.511238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182848, 0.198435, -0.962907,
		-0.852268, 0.456259, 0.255864,
		0.490108, 0.867439, 0.085694,
		30.797819, 35.543022, 40.536945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155336, 35.314781, 39.988995>,  <30.454744, 34.935814, 40.476959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155336, 35.314781, 39.988995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478174, 35.542068, 40.053158>,  <30.671877, 35.678440, 40.091656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478174, 35.542068, 40.053158>,  <30.155336, 35.314781, 39.988995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478174, 35.542068, 40.053158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029997, 0.310800, -0.950002,
		-0.589660, 0.761929, 0.267889,
		0.807094, 0.568214, 0.160410,
		30.720303, 35.712532, 40.101280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976274, 36.006958, 39.770931>,  <30.155336, 35.314781, 39.988995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976274, 36.006958, 39.770931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371838, 35.947884, 39.764595>,  <30.609175, 35.912437, 39.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371838, 35.947884, 39.764595>,  <29.976274, 36.006958, 39.770931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371838, 35.947884, 39.764595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029207, 0.297883, -0.954156,
		0.145633, 0.943109, 0.298892,
		0.988907, -0.147687, -0.015836,
		30.668510, 35.903576, 39.759846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122581, 36.486027, 39.398827>,  <29.976274, 36.006958, 39.770931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122581, 36.486027, 39.398827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440241, 36.243999, 39.376095>,  <30.630836, 36.098785, 39.362457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440241, 36.243999, 39.376095>,  <30.122581, 36.486027, 39.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440241, 36.243999, 39.376095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161831, 0.300677, -0.939896,
		0.585783, 0.737219, 0.336699,
		0.794147, -0.605063, -0.056826,
		30.678484, 36.062481, 39.359047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557182, 36.879822, 38.973255>,  <30.122581, 36.486027, 39.398827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557182, 36.879822, 38.973255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690516, 36.502716, 38.969578>,  <30.770515, 36.276451, 38.967373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690516, 36.502716, 38.969578>,  <30.557182, 36.879822, 38.973255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690516, 36.502716, 38.969578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003476, 0.010980, -0.999934,
		0.942804, 0.333277, 0.006937,
		0.333331, -0.942765, -0.009194,
		30.790514, 36.219887, 38.966820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152269, 36.984371, 38.481609>,  <30.557182, 36.879822, 38.973255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152269, 36.984371, 38.481609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058121, 36.597359, 38.518436>,  <31.001631, 36.365150, 38.540531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058121, 36.597359, 38.518436>,  <31.152269, 36.984371, 38.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058121, 36.597359, 38.518436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134707, -0.126289, -0.982805,
		0.962525, -0.218923, 0.160059,
		-0.235372, -0.967535, 0.092066,
		30.987509, 36.307098, 38.546055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689777, 36.658443, 38.003357>,  <31.152269, 36.984371, 38.481609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689777, 36.658443, 38.003357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379593, 36.410511, 38.051479>,  <31.193481, 36.261753, 38.080353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379593, 36.410511, 38.051479>,  <31.689777, 36.658443, 38.003357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379593, 36.410511, 38.051479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035845, -0.233447, -0.971709,
		0.630376, -0.749211, 0.203247,
		-0.775462, -0.619827, 0.120303,
		31.146954, 36.224564, 38.087570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824581, 36.154728, 37.523453>,  <31.689777, 36.658443, 38.003357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824581, 36.154728, 37.523453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434072, 36.101768, 37.591999>,  <31.199768, 36.069992, 37.633125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434072, 36.101768, 37.591999>,  <31.824581, 36.154728, 37.523453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434072, 36.101768, 37.591999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139604, -0.220138, -0.965427,
		0.165546, -0.966442, 0.196431,
		-0.976271, -0.132401, 0.171362,
		31.141191, 36.062050, 37.643406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537552, 35.442596, 37.273907>,  <31.824581, 36.154728, 37.523453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537552, 35.442596, 37.273907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248362, 35.718857, 37.266895>,  <31.074848, 35.884613, 37.262688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248362, 35.718857, 37.266895>,  <31.537552, 35.442596, 37.273907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248362, 35.718857, 37.266895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139952, -0.171248, -0.975237,
		-0.676550, -0.702620, 0.220466,
		-0.722976, 0.690651, -0.017525,
		31.031469, 35.926052, 37.261639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123817, 35.214031, 36.781876>,  <31.537552, 35.442596, 37.273907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123817, 35.214031, 36.781876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993725, 35.588161, 36.837574>,  <30.915670, 35.812641, 36.870991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993725, 35.588161, 36.837574>,  <31.123817, 35.214031, 36.781876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993725, 35.588161, 36.837574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121447, 0.187341, -0.974758,
		-0.937804, -0.300110, -0.174521,
		-0.325229, 0.935328, 0.139242,
		30.896156, 35.868759, 36.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484900, 34.678375, 36.409565>,  <31.123817, 35.214031, 36.781876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484900, 34.678375, 36.409565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269894, 34.341076, 36.410671>,  <31.140890, 34.138695, 36.411335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269894, 34.341076, 36.410671>,  <31.484900, 34.678375, 36.409565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269894, 34.341076, 36.410671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456964, -0.288524, 0.841391,
		-0.708706, 0.453522, 0.540420,
		-0.537513, -0.843251, 0.002765,
		31.108639, 34.088100, 36.411499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233782, 34.357876, 37.058247>,  <31.484900, 34.678375, 36.409565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233782, 34.357876, 37.058247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256842, 34.030014, 36.830269>,  <31.270678, 33.833298, 36.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256842, 34.030014, 36.830269>,  <31.233782, 34.357876, 37.058247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256842, 34.030014, 36.830269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235573, -0.543608, 0.805603,
		-0.970145, -0.180707, 0.161751,
		0.057649, -0.819656, -0.569948,
		31.274136, 33.784119, 36.659283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183262, 33.805107, 37.549881>,  <31.233782, 34.357876, 37.058247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183262, 33.805107, 37.549881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381622, 33.598278, 37.270821>,  <31.500639, 33.474178, 37.103386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381622, 33.598278, 37.270821>,  <31.183262, 33.805107, 37.549881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381622, 33.598278, 37.270821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451352, -0.532867, 0.715775,
		-0.741864, -0.669839, -0.030866,
		0.495902, -0.517077, -0.697648,
		31.530394, 33.443153, 37.061527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003571, 32.973026, 37.464546>,  <31.183262, 33.805107, 37.549881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003571, 32.973026, 37.464546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367172, 33.131924, 37.414093>,  <31.585333, 33.227264, 37.383820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367172, 33.131924, 37.414093>,  <31.003571, 32.973026, 37.464546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367172, 33.131924, 37.414093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285296, -0.372421, 0.883124,
		0.303844, -0.838748, -0.451864,
		0.909002, 0.397247, -0.126134,
		31.639874, 33.251099, 37.376251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540749, 32.420971, 37.561737>,  <31.003571, 32.973026, 37.464546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540749, 32.420971, 37.561737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655142, 32.793640, 37.651356>,  <31.723778, 33.017242, 37.705128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655142, 32.793640, 37.651356>,  <31.540749, 32.420971, 37.561737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655142, 32.793640, 37.651356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371273, -0.323285, 0.870427,
		0.883386, -0.165744, -0.438359,
		0.285982, 0.931674, 0.224049,
		31.740936, 33.073143, 37.718571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072304, 32.373032, 38.062767>,  <31.540749, 32.420971, 37.561737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072304, 32.373032, 38.062767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961233, 32.754135, 38.111992>,  <31.894590, 32.982796, 38.141525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961233, 32.754135, 38.111992>,  <32.072304, 32.373032, 38.062767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961233, 32.754135, 38.111992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004092, -0.126926, 0.991904,
		0.960666, 0.275933, 0.031346,
		-0.277678, 0.952760, 0.123062,
		31.877930, 33.039963, 38.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533123, 32.620537, 38.477859>,  <32.072304, 32.373032, 38.062767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533123, 32.620537, 38.477859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239777, 32.888344, 38.525047>,  <32.063766, 33.049026, 38.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239777, 32.888344, 38.525047>,  <32.533123, 32.620537, 38.477859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239777, 32.888344, 38.525047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150557, -0.009271, 0.988558,
		0.662950, 0.742739, -0.094002,
		-0.733369, 0.669517, 0.117971,
		32.019768, 33.089199, 38.560440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804100, 33.134228, 38.889462>,  <32.533123, 32.620537, 38.477859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804100, 33.134228, 38.889462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406071, 33.126892, 38.928452>,  <32.167255, 33.122490, 38.951847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406071, 33.126892, 38.928452>,  <32.804100, 33.134228, 38.889462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406071, 33.126892, 38.928452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097581, -0.004699, 0.995217,
		-0.017792, 0.999821, 0.006466,
		-0.995069, -0.018338, 0.097480,
		32.107552, 33.121391, 38.957695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630016, 33.540363, 39.444065>,  <32.804100, 33.134228, 38.889462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630016, 33.540363, 39.444065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 33.308117, 39.403252>,  <32.113049, 33.168770, 39.378765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 33.308117, 39.403252>,  <32.630016, 33.540363, 39.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306911, 33.308117, 39.403252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060355, -0.090720, 0.994046,
		-0.586414, 0.809108, 0.038237,
		-0.807759, -0.580615, -0.102034,
		32.064583, 33.133934, 39.372643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312000, 33.724358, 40.022263>,  <32.630016, 33.540363, 39.444065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312000, 33.724358, 40.022263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120670, 33.390347, 39.913502>,  <32.005871, 33.189938, 39.848244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120670, 33.390347, 39.913502>,  <32.312000, 33.724358, 40.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120670, 33.390347, 39.913502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024775, -0.322328, 0.946304,
		-0.877834, 0.445903, 0.174865,
		-0.478324, -0.835030, -0.271903,
		31.977173, 33.139839, 39.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663267, 33.665363, 40.464756>,  <32.312000, 33.724358, 40.022263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663267, 33.665363, 40.464756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741125, 33.301430, 40.318165>,  <31.787840, 33.083069, 40.230209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741125, 33.301430, 40.318165>,  <31.663267, 33.665363, 40.464756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741125, 33.301430, 40.318165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080675, -0.357511, 0.930418,
		-0.977551, -0.210667, 0.003813,
		0.194645, -0.909838, -0.366480,
		31.799519, 33.028477, 40.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219973, 33.126122, 40.809513>,  <31.663267, 33.665363, 40.464756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219973, 33.126122, 40.809513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465864, 32.865440, 40.631798>,  <31.613400, 32.709030, 40.525169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465864, 32.865440, 40.631798>,  <31.219973, 33.126122, 40.809513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465864, 32.865440, 40.631798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087187, -0.503688, 0.859475,
		-0.783906, -0.567078, -0.252811,
		0.614727, -0.651706, -0.444286,
		31.650282, 32.669930, 40.498512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981005, 32.417755, 40.876694>,  <31.219973, 33.126122, 40.809513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981005, 32.417755, 40.876694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373873, 32.361351, 40.826958>,  <31.609592, 32.327507, 40.797115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373873, 32.361351, 40.826958>,  <30.981005, 32.417755, 40.876694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373873, 32.361351, 40.826958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037531, -0.501012, 0.864626,
		-0.184217, -0.853876, -0.486786,
		0.982169, -0.141009, -0.124342,
		31.668524, 32.319050, 40.789654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241343, 31.708933, 41.140533>,  <30.981005, 32.417755, 40.876694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241343, 31.708933, 41.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594961, 31.895666, 41.131344>,  <31.807133, 32.007706, 41.125828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594961, 31.895666, 41.131344>,  <31.241343, 31.708933, 41.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594961, 31.895666, 41.131344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299305, -0.527665, 0.794976,
		0.358997, -0.709673, -0.606206,
		0.884046, 0.466834, -0.022978,
		31.860174, 32.035717, 41.124451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760715, 31.204592, 41.260712>,  <31.241343, 31.708933, 41.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760715, 31.204592, 41.260712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934629, 31.547907, 41.369747>,  <32.038979, 31.753897, 41.435169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934629, 31.547907, 41.369747>,  <31.760715, 31.204592, 41.260712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934629, 31.547907, 41.369747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344290, -0.438127, 0.830367,
		0.832122, -0.267181, -0.485991,
		0.434784, 0.858288, 0.272587,
		32.065063, 31.805393, 41.451523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419514, 30.986731, 41.401848>,  <31.760715, 31.204592, 41.260712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419514, 30.986731, 41.401848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397491, 31.349394, 41.569149>,  <32.384277, 31.566992, 41.669529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397491, 31.349394, 41.569149>,  <32.419514, 30.986731, 41.401848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397491, 31.349394, 41.569149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346510, -0.375509, 0.859607,
		0.936429, 0.192259, -0.293491,
		-0.055059, 0.906658, 0.418257,
		32.380974, 31.621391, 41.694626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999596, 31.010487, 41.817947>,  <32.419514, 30.986731, 41.401848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999596, 31.010487, 41.817947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757942, 31.294691, 41.962280>,  <32.612949, 31.465214, 42.048878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757942, 31.294691, 41.962280>,  <32.999596, 31.010487, 41.817947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757942, 31.294691, 41.962280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283644, -0.231415, 0.930588,
		0.744692, 0.664548, -0.061726,
		-0.604136, 0.710509, 0.360828,
		32.576702, 31.507843, 42.070530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409359, 31.209106, 42.280651>,  <32.999596, 31.010487, 41.817947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409359, 31.209106, 42.280651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050964, 31.353849, 42.383621>,  <32.835926, 31.440695, 42.445404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050964, 31.353849, 42.383621>,  <33.409359, 31.209106, 42.280651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050964, 31.353849, 42.383621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190810, -0.209742, 0.958958,
		0.400999, 0.908332, 0.118880,
		-0.895986, 0.361857, 0.257426,
		32.782169, 31.462406, 42.460850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652985, 31.616154, 42.811535>,  <33.409359, 31.209106, 42.280651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652985, 31.616154, 42.811535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268673, 31.509417, 42.841709>,  <33.038086, 31.445374, 42.859814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268673, 31.509417, 42.841709>,  <33.652985, 31.616154, 42.811535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268673, 31.509417, 42.841709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211339, -0.528508, 0.822201,
		-0.179531, 0.805900, 0.564176,
		-0.960783, -0.266843, 0.075435,
		32.980438, 31.429363, 42.864338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401161, 31.840874, 43.529182>,  <33.652985, 31.616154, 42.811535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401161, 31.840874, 43.529182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172215, 31.534632, 43.411713>,  <33.034847, 31.350887, 43.341228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172215, 31.534632, 43.411713>,  <33.401161, 31.840874, 43.529182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172215, 31.534632, 43.411713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182196, -0.467930, 0.864781,
		-0.799501, 0.441465, 0.407318,
		-0.572366, -0.765605, -0.293677,
		33.000504, 31.304951, 43.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937847, 31.726240, 44.050701>,  <33.401161, 31.840874, 43.529182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937847, 31.726240, 44.050701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883015, 31.376631, 43.864246>,  <32.850113, 31.166864, 43.752373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883015, 31.376631, 43.864246>,  <32.937847, 31.726240, 44.050701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883015, 31.376631, 43.864246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135373, -0.449638, 0.882893,
		-0.981266, 0.184134, -0.056681,
		-0.137085, -0.874026, -0.466141,
		32.841888, 31.114424, 43.724403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269787, 31.477285, 44.280331>,  <32.937847, 31.726240, 44.050701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269787, 31.477285, 44.280331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490059, 31.163813, 44.165371>,  <32.622223, 30.975729, 44.096397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490059, 31.163813, 44.165371>,  <32.269787, 31.477285, 44.280331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490059, 31.163813, 44.165371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193992, -0.455030, 0.869089,
		-0.811863, -0.422835, -0.402602,
		0.550677, -0.783683, -0.287395,
		32.655262, 30.928707, 44.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937439, 30.854471, 44.595573>,  <32.269787, 31.477285, 44.280331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937439, 30.854471, 44.595573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 30.731400, 44.504230>,  <32.528595, 30.657557, 44.449425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 30.731400, 44.504230>,  <31.937439, 30.854471, 44.595573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306911, 30.731400, 44.504230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074974, -0.439330, 0.895192,
		-0.375754, -0.843993, -0.382733,
		0.923682, -0.307676, -0.228358,
		32.584015, 30.639095, 44.435722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027225, 30.128580, 44.823185>,  <31.937439, 30.854471, 44.595573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027225, 30.128580, 44.823185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411495, 30.232035, 44.782761>,  <32.642056, 30.294107, 44.758507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411495, 30.232035, 44.782761>,  <32.027225, 30.128580, 44.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411495, 30.232035, 44.782761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239929, -0.589940, 0.770977,
		0.139786, -0.764904, -0.628794,
		0.960674, 0.258637, -0.101057,
		32.699696, 30.309626, 44.752445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323135, 29.480324, 45.011688>,  <32.027225, 30.128580, 44.823185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323135, 29.480324, 45.011688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624474, 29.743193, 45.021492>,  <32.805275, 29.900913, 45.027374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624474, 29.743193, 45.021492>,  <32.323135, 29.480324, 45.011688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624474, 29.743193, 45.021492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340510, -0.421683, 0.840379,
		0.562608, -0.624748, -0.541445,
		0.753343, 0.657171, 0.024509,
		32.850475, 29.940344, 45.028843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886044, 29.031239, 45.117657>,  <32.323135, 29.480324, 45.011688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886044, 29.031239, 45.117657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973297, 29.397474, 45.252777>,  <33.025650, 29.617216, 45.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973297, 29.397474, 45.252777>,  <32.886044, 29.031239, 45.117657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973297, 29.397474, 45.252777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448178, -0.401464, 0.798726,
		0.866922, -0.022831, -0.497920,
		0.218133, 0.915590, 0.337805,
		33.038738, 29.672152, 45.354118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611969, 29.080118, 45.234879>,  <32.886044, 29.031239, 45.117657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611969, 29.080118, 45.234879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435760, 29.356396, 45.464272>,  <33.330036, 29.522161, 45.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435760, 29.356396, 45.464272>,  <33.611969, 29.080118, 45.234879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435760, 29.356396, 45.464272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443999, -0.387592, 0.807860,
		0.780261, 0.610506, -0.135925,
		-0.440520, 0.690692, 0.573487,
		33.303604, 29.563602, 45.636318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147526, 29.366344, 45.786015>,  <33.611969, 29.080118, 45.234879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147526, 29.366344, 45.786015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771900, 29.419773, 45.912708>,  <33.546524, 29.451830, 45.988724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771900, 29.419773, 45.912708>,  <34.147526, 29.366344, 45.786015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771900, 29.419773, 45.912708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255477, -0.345292, 0.903053,
		0.229989, 0.928941, 0.290125,
		-0.939061, 0.133572, 0.316737,
		33.490181, 29.459845, 46.007729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479572, 29.910824, 46.028229>,  <34.147526, 29.366344, 45.786015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479572, 29.910824, 46.028229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797626, 30.150145, 46.067829>,  <34.988457, 30.293737, 46.091591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797626, 30.150145, 46.067829>,  <34.479572, 29.910824, 46.028229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797626, 30.150145, 46.067829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150353, 0.352649, -0.923598,
		-0.587503, 0.719496, 0.370359,
		0.795131, 0.598301, 0.099004,
		35.036167, 30.329636, 46.097530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297878, 30.512941, 45.765495>,  <34.479572, 29.910824, 46.028229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297878, 30.512941, 45.765495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697472, 30.521067, 45.749374>,  <34.937225, 30.525942, 45.739700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697472, 30.521067, 45.749374>,  <34.297878, 30.512941, 45.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697472, 30.521067, 45.749374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043632, 0.206491, -0.977475,
		-0.011532, 0.978238, 0.207167,
		0.998981, 0.020311, -0.040301,
		34.997166, 30.527161, 45.737286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538261, 31.086563, 45.470623>,  <34.297878, 30.512941, 45.765495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538261, 31.086563, 45.470623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867882, 30.871098, 45.400440>,  <35.065655, 30.741817, 45.358330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867882, 30.871098, 45.400440>,  <34.538261, 31.086563, 45.470623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867882, 30.871098, 45.400440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066277, 0.399247, -0.914445,
		0.562628, 0.741918, 0.364700,
		0.824049, -0.538664, -0.175455,
		35.115097, 30.709499, 45.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093674, 31.532162, 45.277805>,  <34.538261, 31.086563, 45.470623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093674, 31.532162, 45.277805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210781, 31.183701, 45.120136>,  <35.281048, 30.974623, 45.025536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210781, 31.183701, 45.120136>,  <35.093674, 31.532162, 45.277805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210781, 31.183701, 45.120136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264354, 0.469916, -0.842197,
		0.918913, 0.142370, 0.367872,
		0.292773, -0.871154, -0.394176,
		35.298615, 30.922354, 45.001884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776276, 31.641108, 44.944942>,  <35.093674, 31.532162, 45.277805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776276, 31.641108, 44.944942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656193, 31.298304, 44.777412>,  <35.584145, 31.092621, 44.676895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656193, 31.298304, 44.777412>,  <35.776276, 31.641108, 44.944942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656193, 31.298304, 44.777412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220353, 0.364895, -0.904597,
		0.928074, -0.363853, 0.079301,
		-0.300204, -0.857007, -0.418826,
		35.566132, 31.041201, 44.651764>
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
