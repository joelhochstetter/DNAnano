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
	<24.121565, 34.570068, 35.161076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334209, 34.904568, 35.107285>,  <24.461796, 35.105267, 35.075008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334209, 34.904568, 35.107285>,  <24.121565, 34.570068, 35.161076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334209, 34.904568, 35.107285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827230, -0.478528, 0.294451,
		0.181882, -0.267778, -0.946158,
		0.531611, 0.836245, -0.134478,
		24.493692, 35.155441, 35.066940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700382, 34.417351, 34.762470>,  <24.121565, 34.570068, 35.161076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700382, 34.417351, 34.762470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788082, 34.735992, 34.987804>,  <24.840702, 34.927177, 35.123005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788082, 34.735992, 34.987804>,  <24.700382, 34.417351, 34.762470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788082, 34.735992, 34.987804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800479, -0.476977, 0.362941,
		0.557820, 0.371365, -0.742243,
		0.219249, 0.796606, 0.563337,
		24.853857, 34.974976, 35.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420609, 34.136028, 34.937733>,  <24.700382, 34.417351, 34.762470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420609, 34.136028, 34.937733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379597, 34.488979, 35.121426>,  <25.354990, 34.700752, 35.231640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379597, 34.488979, 35.121426>,  <25.420609, 34.136028, 34.937733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379597, 34.488979, 35.121426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789345, -0.208766, 0.577366,
		0.605328, 0.421687, -0.675098,
		-0.102530, 0.882381, 0.459229,
		25.348837, 34.753693, 35.259193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886789, 34.599342, 34.733044>,  <25.420609, 34.136028, 34.937733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886789, 34.599342, 34.733044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771446, 34.621635, 35.115402>,  <25.702240, 34.635010, 35.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771446, 34.621635, 35.115402>,  <25.886789, 34.599342, 34.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771446, 34.621635, 35.115402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936116, -0.193507, 0.293669,
		0.201340, 0.979515, 0.003629,
		-0.288356, 0.055731, 0.955900,
		25.684940, 34.638355, 35.402172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402132, 34.976234, 34.974457>,  <25.886789, 34.599342, 34.733044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402132, 34.976234, 34.974457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223404, 34.733444, 35.237343>,  <26.116167, 34.587769, 35.395077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223404, 34.733444, 35.237343>,  <26.402132, 34.976234, 34.974457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223404, 34.733444, 35.237343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889134, -0.220027, 0.401283,
		-0.098962, 0.763656, 0.637994,
		-0.446818, -0.606974, 0.657218,
		26.089359, 34.551353, 35.434509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427301, 35.211277, 35.667515>,  <26.402132, 34.976234, 34.974457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427301, 35.211277, 35.667515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420567, 34.812946, 35.631649>,  <26.416525, 34.573948, 35.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420567, 34.812946, 35.631649>,  <26.427301, 35.211277, 35.667515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420567, 34.812946, 35.631649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954270, -0.042777, 0.295869,
		-0.298471, -0.080586, 0.951011,
		-0.016838, -0.995829, -0.089668,
		26.415516, 34.514198, 35.604748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672808, 34.907211, 36.300468>,  <26.427301, 35.211277, 35.667515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672808, 34.907211, 36.300468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721609, 34.618439, 36.028019>,  <26.750889, 34.445175, 35.864548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721609, 34.618439, 36.028019>,  <26.672808, 34.907211, 36.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721609, 34.618439, 36.028019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859685, -0.266108, 0.436036,
		-0.496041, -0.638751, 0.588168,
		0.122002, -0.721931, -0.681125,
		26.758209, 34.401859, 35.823681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334135, 34.551895, 36.506077>,  <26.672808, 34.907211, 36.300468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334135, 34.551895, 36.506077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264317, 34.420597, 36.134747>,  <27.222425, 34.341816, 35.911949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264317, 34.420597, 36.134747>,  <27.334135, 34.551895, 36.506077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264317, 34.420597, 36.134747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875242, -0.483641, 0.006448,
		-0.451092, -0.811383, 0.371716,
		-0.174545, -0.328250, -0.928324,
		27.211952, 34.322121, 35.856251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448225, 33.827118, 36.556946>,  <27.334135, 34.551895, 36.506077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448225, 33.827118, 36.556946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473280, 33.924587, 36.169811>,  <27.488314, 33.983070, 35.937531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473280, 33.924587, 36.169811>,  <27.448225, 33.827118, 36.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473280, 33.924587, 36.169811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880761, -0.469586, -0.061228,
		-0.469400, -0.848593, -0.244035,
		0.062637, 0.243677, -0.967832,
		27.492071, 33.997692, 35.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474277, 33.194458, 36.195385>,  <27.448225, 33.827118, 36.556946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474277, 33.194458, 36.195385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640173, 33.477383, 35.966400>,  <27.739710, 33.647137, 35.829010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640173, 33.477383, 35.966400>,  <27.474277, 33.194458, 36.195385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640173, 33.477383, 35.966400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804103, -0.579360, -0.133271,
		-0.425923, -0.405041, -0.809031,
		0.414740, 0.707307, -0.572457,
		27.764595, 33.689575, 35.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593271, 32.813953, 35.608326>,  <27.474277, 33.194458, 36.195385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593271, 32.813953, 35.608326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831699, 33.135109, 35.604767>,  <27.974756, 33.327801, 35.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831699, 33.135109, 35.604767>,  <27.593271, 32.813953, 35.608326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831699, 33.135109, 35.604767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788733, -0.587565, -0.180744,
		-0.150343, 0.100719, -0.983490,
		0.596069, 0.802884, -0.008896,
		28.010519, 33.375973, 35.602097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154705, 32.592075, 35.280537>,  <27.593271, 32.813953, 35.608326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154705, 32.592075, 35.280537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280098, 32.926048, 35.461475>,  <28.355333, 33.126431, 35.570038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280098, 32.926048, 35.461475>,  <28.154705, 32.592075, 35.280537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280098, 32.926048, 35.461475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949549, -0.280242, -0.140785,
		0.009222, 0.473662, -0.880658,
		0.313482, 0.834930, 0.452350,
		28.374142, 33.176529, 35.597179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789003, 32.204609, 35.220081>,  <28.154705, 32.592075, 35.280537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789003, 32.204609, 35.220081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094616, 32.462231, 35.235348>,  <29.277983, 32.616802, 35.244507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094616, 32.462231, 35.235348>,  <28.789003, 32.204609, 35.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094616, 32.462231, 35.235348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637613, 0.744716, 0.197096,
		0.098520, -0.174920, 0.979641,
		0.764031, 0.644050, 0.038162,
		29.323826, 32.655445, 35.246796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738276, 32.711807, 35.759979>,  <28.789003, 32.204609, 35.220081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738276, 32.711807, 35.759979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969791, 32.894020, 35.489426>,  <29.108700, 33.003345, 35.327095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969791, 32.894020, 35.489426>,  <28.738276, 32.711807, 35.759979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969791, 32.894020, 35.489426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605967, 0.795306, 0.017090,
		0.545717, 0.399975, 0.736351,
		0.578789, 0.455530, -0.676384,
		29.143429, 33.030678, 35.286510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009499, 33.291805, 36.064419>,  <28.738276, 32.711807, 35.759979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009499, 33.291805, 36.064419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923687, 33.316441, 35.674507>,  <28.872200, 33.331223, 35.440559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923687, 33.316441, 35.674507>,  <29.009499, 33.291805, 36.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923687, 33.316441, 35.674507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703532, 0.682537, 0.197954,
		0.677511, 0.728251, -0.103096,
		-0.214528, 0.061585, -0.974774,
		28.859329, 33.334915, 35.382076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031843, 34.090397, 35.757217>,  <29.009499, 33.291805, 36.064419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031843, 34.090397, 35.757217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794384, 33.827522, 35.571449>,  <28.651909, 33.669796, 35.459988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794384, 33.827522, 35.571449>,  <29.031843, 34.090397, 35.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794384, 33.827522, 35.571449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802208, 0.528908, 0.276981,
		0.063605, 0.536989, -0.841188,
		-0.593647, -0.657191, -0.464418,
		28.616289, 33.630363, 35.432125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616795, 34.517349, 35.339817>,  <29.031843, 34.090397, 35.757217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616795, 34.517349, 35.339817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427372, 34.172157, 35.410248>,  <28.313719, 33.965042, 35.452507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427372, 34.172157, 35.410248>,  <28.616795, 34.517349, 35.339817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427372, 34.172157, 35.410248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862021, 0.495147, 0.108398,
		-0.180730, -0.100450, -0.978390,
		-0.473558, -0.862983, 0.176078,
		28.285305, 33.913261, 35.463070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117033, 34.395992, 34.798054>,  <28.616795, 34.517349, 35.339817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117033, 34.395992, 34.798054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011213, 34.172955, 35.112785>,  <27.947721, 34.039131, 35.301624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011213, 34.172955, 35.112785>,  <28.117033, 34.395992, 34.798054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011213, 34.172955, 35.112785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922405, 0.384375, -0.037740,
		-0.281394, -0.735760, -0.616015,
		-0.264548, -0.557596, 0.786830,
		27.931849, 34.005676, 35.348835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474653, 34.359806, 34.632702>,  <28.117033, 34.395992, 34.798054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474653, 34.359806, 34.632702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484203, 34.227005, 35.009892>,  <27.489933, 34.147324, 35.236206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484203, 34.227005, 35.009892>,  <27.474653, 34.359806, 34.632702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484203, 34.227005, 35.009892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939783, 0.314224, 0.134426,
		-0.340936, -0.889404, -0.304506,
		0.023876, -0.332001, 0.942977,
		27.491365, 34.127403, 35.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938032, 33.999840, 34.681519>,  <27.474653, 34.359806, 34.632702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938032, 33.999840, 34.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023003, 34.118172, 35.054047>,  <27.073984, 34.189171, 35.277565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023003, 34.118172, 35.054047>,  <26.938032, 33.999840, 34.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023003, 34.118172, 35.054047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910285, 0.406468, 0.078515,
		-0.355324, -0.864446, 0.355636,
		0.212427, 0.295832, 0.931320,
		27.086731, 34.206921, 35.333443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062387, 34.364929, 34.040524>,  <26.938032, 33.999840, 34.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062387, 34.364929, 34.040524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907343, 34.602215, 34.322758>,  <26.814316, 34.744587, 34.492100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907343, 34.602215, 34.322758>,  <27.062387, 34.364929, 34.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907343, 34.602215, 34.322758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191338, 0.696982, -0.691091,
		-0.901747, -0.402880, -0.156654,
		-0.387612, 0.593215, 0.705587,
		26.791059, 34.780178, 34.534435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748047, 34.076962, 33.390419>,  <27.062387, 34.364929, 34.040524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748047, 34.076962, 33.390419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873928, 34.390354, 33.176086>,  <26.949457, 34.578388, 33.047485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873928, 34.390354, 33.176086>,  <26.748047, 34.076962, 33.390419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873928, 34.390354, 33.176086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570433, 0.295094, 0.766502,
		0.758663, -0.546877, -0.354058,
		0.314702, 0.783483, -0.535833,
		26.968338, 34.625401, 33.015335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609825, 34.068790, 33.356625>,  <26.748047, 34.076962, 33.390419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609825, 34.068790, 33.356625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420559, 34.420723, 33.338665>,  <27.306999, 34.631882, 33.327888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420559, 34.420723, 33.338665>,  <27.609825, 34.068790, 33.356625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420559, 34.420723, 33.338665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631615, 0.374325, 0.678928,
		0.614149, 0.292884, -0.732830,
		-0.473164, 0.879829, -0.044901,
		27.278610, 34.684673, 33.325195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100653, 34.542534, 33.369888>,  <27.609825, 34.068790, 33.356625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100653, 34.542534, 33.369888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762270, 34.711430, 33.500164>,  <27.559240, 34.812767, 33.578331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762270, 34.711430, 33.500164>,  <28.100653, 34.542534, 33.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762270, 34.711430, 33.500164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474407, 0.317016, 0.821242,
		0.243511, 0.849244, -0.468494,
		-0.845955, 0.422238, 0.325691,
		27.508484, 34.838100, 33.597870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244125, 35.250072, 33.474026>,  <28.100653, 34.542534, 33.369888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244125, 35.250072, 33.474026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983656, 35.147217, 33.759640>,  <27.827374, 35.085503, 33.931007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983656, 35.147217, 33.759640>,  <28.244125, 35.250072, 33.474026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983656, 35.147217, 33.759640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658146, 0.277165, 0.700016,
		-0.377910, 0.925774, -0.011246,
		-0.651174, -0.257141, 0.714038,
		27.788303, 35.070076, 33.973850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373425, 35.740063, 33.904030>,  <28.244125, 35.250072, 33.474026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373425, 35.740063, 33.904030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185463, 35.441193, 34.092041>,  <28.072687, 35.261871, 34.204845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185463, 35.441193, 34.092041>,  <28.373425, 35.740063, 33.904030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185463, 35.441193, 34.092041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658685, 0.057680, 0.750205,
		-0.587644, 0.662121, 0.465048,
		-0.469903, -0.747174, 0.470024,
		28.044493, 35.217041, 34.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637684, 35.164814, 34.107769>,  <28.373425, 35.740063, 33.904030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637684, 35.164814, 34.107769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894199, 35.333206, 34.364368>,  <29.048109, 35.434242, 34.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894199, 35.333206, 34.364368>,  <28.637684, 35.164814, 34.107769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894199, 35.333206, 34.364368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399148, 0.897055, -0.189666,
		-0.655308, -0.134424, 0.743305,
		0.641290, 0.420978, 0.641502,
		29.086586, 35.459499, 34.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379028, 35.566830, 34.774509>,  <28.637684, 35.164814, 34.107769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379028, 35.566830, 34.774509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712866, 35.708138, 34.605442>,  <28.913168, 35.792923, 34.504002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712866, 35.708138, 34.605442>,  <28.379028, 35.566830, 34.774509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712866, 35.708138, 34.605442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496927, 0.813946, -0.300924,
		0.237726, 0.461188, 0.854864,
		0.834595, 0.353268, -0.422673,
		28.963245, 35.814117, 34.478642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524191, 36.134079, 35.080517>,  <28.379028, 35.566830, 34.774509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524191, 36.134079, 35.080517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679415, 36.135460, 34.711864>,  <28.772549, 36.136288, 34.490673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679415, 36.135460, 34.711864>,  <28.524191, 36.134079, 35.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679415, 36.135460, 34.711864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568409, 0.788059, -0.236377,
		0.725480, 0.615590, 0.307777,
		0.388058, 0.003456, -0.921629,
		28.795832, 36.136497, 34.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624863, 36.888348, 35.004211>,  <28.524191, 36.134079, 35.080517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624863, 36.888348, 35.004211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663570, 36.735092, 34.636768>,  <28.686796, 36.643139, 34.416302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663570, 36.735092, 34.636768>,  <28.624863, 36.888348, 35.004211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663570, 36.735092, 34.636768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320664, 0.861727, -0.393194,
		0.942237, 0.332614, -0.039468,
		0.096771, -0.383138, -0.918608,
		28.692602, 36.620152, 34.361187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045736, 37.270367, 34.557079>,  <28.624863, 36.888348, 35.004211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045736, 37.270367, 34.557079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781658, 37.069855, 34.333344>,  <28.623211, 36.949547, 34.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781658, 37.069855, 34.333344>,  <29.045736, 37.270367, 34.557079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781658, 37.069855, 34.333344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535601, 0.836284, -0.117306,
		0.526567, 0.222135, -0.820599,
		-0.660197, -0.501283, -0.559335,
		28.583599, 36.919468, 34.165543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927286, 37.676636, 34.011703>,  <29.045736, 37.270367, 34.557079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927286, 37.676636, 34.011703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619530, 37.428566, 34.072918>,  <28.434875, 37.279724, 34.109646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619530, 37.428566, 34.072918>,  <28.927286, 37.676636, 34.011703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619530, 37.428566, 34.072918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638053, 0.734711, -0.230406,
		0.030452, -0.274920, -0.960985,
		-0.769390, -0.620176, 0.153040,
		28.388712, 37.242512, 34.118832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475674, 37.836353, 33.433865>,  <28.927286, 37.676636, 34.011703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475674, 37.836353, 33.433865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286566, 37.706085, 33.761383>,  <28.173101, 37.627926, 33.957893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286566, 37.706085, 33.761383>,  <28.475674, 37.836353, 33.433865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286566, 37.706085, 33.761383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746352, 0.641968, -0.175602,
		-0.468454, -0.694130, -0.546566,
		-0.472768, -0.325670, 0.818797,
		28.144735, 37.608383, 34.007023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731031, 37.618572, 33.154842>,  <28.475674, 37.836353, 33.433865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731031, 37.618572, 33.154842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809725, 37.741058, 33.527409>,  <27.856941, 37.814548, 33.750946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809725, 37.741058, 33.527409>,  <27.731031, 37.618572, 33.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809725, 37.741058, 33.527409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616161, 0.777559, -0.125485,
		-0.762654, -0.549213, 0.341649,
		0.196734, 0.306212, 0.931413,
		27.868746, 37.832924, 33.806831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145565, 37.977295, 33.502182>,  <27.731031, 37.618572, 33.154842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145565, 37.977295, 33.502182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470633, 38.135971, 33.672924>,  <27.665672, 38.231174, 33.775372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470633, 38.135971, 33.672924>,  <27.145565, 37.977295, 33.502182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470633, 38.135971, 33.672924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400227, 0.912379, -0.085921,
		-0.423541, -0.101016, 0.900227,
		0.812669, 0.396686, 0.426860,
		27.714434, 38.254978, 33.800983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086826, 38.545662, 34.005890>,  <27.145565, 37.977295, 33.502182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086826, 38.545662, 34.005890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940569, 38.217434, 34.181606>,  <26.852816, 38.020496, 34.287037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940569, 38.217434, 34.181606>,  <27.086826, 38.545662, 34.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940569, 38.217434, 34.181606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845555, -0.490117, -0.211712,
		0.389029, 0.294035, 0.873041,
		-0.365641, -0.820566, 0.439293,
		26.830877, 37.971264, 34.313393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536337, 38.325367, 34.559349>,  <27.086826, 38.545662, 34.005890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536337, 38.325367, 34.559349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332769, 38.037640, 34.370209>,  <27.210629, 37.865002, 34.256725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332769, 38.037640, 34.370209>,  <27.536337, 38.325367, 34.559349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332769, 38.037640, 34.370209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825455, -0.563615, -0.031025,
		-0.244188, -0.406105, 0.880597,
		-0.508917, -0.719317, -0.472850,
		27.180094, 37.821846, 34.228355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569052, 37.562454, 34.830433>,  <27.536337, 38.325367, 34.559349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569052, 37.562454, 34.830433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504425, 37.542820, 34.436176>,  <27.465649, 37.531040, 34.199623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504425, 37.542820, 34.436176>,  <27.569052, 37.562454, 34.830433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504425, 37.542820, 34.436176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783845, -0.613182, -0.097954,
		-0.599569, -0.788415, 0.137546,
		-0.161569, -0.049085, -0.985640,
		27.455954, 37.528095, 34.140484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393425, 36.843285, 34.482838>,  <27.569052, 37.562454, 34.830433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393425, 36.843285, 34.482838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605146, 37.073563, 34.233543>,  <27.732180, 37.211727, 34.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605146, 37.073563, 34.233543>,  <27.393425, 36.843285, 34.482838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605146, 37.073563, 34.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591509, -0.777002, -0.215372,
		-0.608241, -0.254650, -0.751795,
		0.529302, 0.575692, -0.623232,
		27.763937, 37.246269, 34.046574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462934, 36.445633, 33.932758>,  <27.393425, 36.843285, 34.482838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462934, 36.445633, 33.932758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764925, 36.706802, 33.908405>,  <27.946119, 36.863503, 33.893795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764925, 36.706802, 33.908405>,  <27.462934, 36.445633, 33.932758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764925, 36.706802, 33.908405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626585, -0.745657, -0.226687,
		-0.193405, 0.132996, -0.972063,
		0.754974, 0.652923, -0.060881,
		27.991417, 36.902679, 33.890141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851767, 36.229946, 33.401531>,  <27.462934, 36.445633, 33.932758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851767, 36.229946, 33.401531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101545, 36.466389, 33.605751>,  <28.251413, 36.608253, 33.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101545, 36.466389, 33.605751>,  <27.851767, 36.229946, 33.401531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101545, 36.466389, 33.605751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634868, -0.764883, 0.109072,
		0.454981, 0.256019, -0.852905,
		0.624448, 0.591108, 0.510545,
		28.288879, 36.643723, 33.758915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570229, 36.093056, 33.164028>,  <27.851767, 36.229946, 33.401531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570229, 36.093056, 33.164028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624796, 36.249084, 33.528278>,  <28.657536, 36.342701, 33.746826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624796, 36.249084, 33.528278>,  <28.570229, 36.093056, 33.164028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624796, 36.249084, 33.528278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665685, -0.716848, 0.207345,
		0.733658, 0.577901, -0.357459,
		0.136419, 0.390076, 0.910621,
		28.665722, 36.366108, 33.801464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217463, 36.424999, 33.271976>,  <28.570229, 36.093056, 33.164028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217463, 36.424999, 33.271976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080679, 36.270042, 33.614437>,  <28.998610, 36.177067, 33.819912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080679, 36.270042, 33.614437>,  <29.217463, 36.424999, 33.271976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080679, 36.270042, 33.614437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697371, -0.715289, -0.045116,
		0.629872, 0.581626, 0.514754,
		-0.341957, -0.387392, 0.856150,
		28.978092, 36.153824, 33.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774529, 36.112610, 33.489185>,  <29.217463, 36.424999, 33.271976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774529, 36.112610, 33.489185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481321, 35.946663, 33.704803>,  <29.305397, 35.847095, 33.834175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481321, 35.946663, 33.704803>,  <29.774529, 36.112610, 33.489185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481321, 35.946663, 33.704803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547948, -0.829698, 0.106555,
		0.403038, 0.373476, 0.835509,
		-0.733016, -0.414870, 0.539045,
		29.261415, 35.822201, 33.866516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837677, 36.010925, 34.243053>,  <29.774529, 36.112610, 33.489185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837677, 36.010925, 34.243053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622175, 35.708874, 34.093639>,  <29.492874, 35.527645, 34.003990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622175, 35.708874, 34.093639>,  <29.837677, 36.010925, 34.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622175, 35.708874, 34.093639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743834, -0.634541, 0.209926,
		-0.395546, -0.164753, 0.903548,
		-0.538752, -0.755125, -0.373539,
		29.460550, 35.482338, 33.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994364, 35.435024, 34.661221>,  <29.837677, 36.010925, 34.243053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994364, 35.435024, 34.661221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827795, 35.270657, 34.336815>,  <29.727854, 35.172035, 34.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827795, 35.270657, 34.336815>,  <29.994364, 35.435024, 34.661221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827795, 35.270657, 34.336815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541161, -0.828830, 0.142080,
		-0.730574, -0.379723, 0.567515,
		-0.416422, -0.410916, -0.811012,
		29.702869, 35.147381, 34.093510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637449, 34.706039, 34.737255>,  <29.994364, 35.435024, 34.661221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637449, 34.706039, 34.737255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804865, 34.763222, 34.378506>,  <29.905315, 34.797531, 34.163254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804865, 34.763222, 34.378506>,  <29.637449, 34.706039, 34.737255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804865, 34.763222, 34.378506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593750, -0.790333, 0.151110,
		-0.687229, -0.595766, -0.415667,
		0.418542, 0.142955, -0.896876,
		29.930428, 34.806107, 34.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732288, 34.085987, 34.307190>,  <29.637449, 34.706039, 34.737255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732288, 34.085987, 34.307190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022335, 34.339626, 34.199772>,  <30.196363, 34.491810, 34.135319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022335, 34.339626, 34.199772>,  <29.732288, 34.085987, 34.307190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022335, 34.339626, 34.199772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633953, -0.766978, -0.099241,
		-0.268898, -0.098285, -0.958141,
		0.725119, 0.634102, -0.268547,
		30.239870, 34.529858, 34.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163094, 34.013893, 33.614346>,  <29.732288, 34.085987, 34.307190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163094, 34.013893, 33.614346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366035, 34.186283, 33.912834>,  <30.487801, 34.289719, 34.091927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366035, 34.186283, 33.912834>,  <30.163094, 34.013893, 33.614346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366035, 34.186283, 33.912834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637884, -0.770053, 0.011046,
		0.579392, 0.470399, -0.665605,
		0.507355, 0.430979, 0.746223,
		30.518242, 34.315578, 34.136700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937628, 33.964905, 33.526825>,  <30.163094, 34.013893, 33.614346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937628, 33.964905, 33.526825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808783, 33.938431, 33.904579>,  <30.731476, 33.922546, 34.131233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808783, 33.938431, 33.904579>,  <30.937628, 33.964905, 33.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808783, 33.938431, 33.904579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478701, -0.872014, 0.102159,
		0.816756, 0.484985, 0.312570,
		-0.322111, -0.066188, 0.944385,
		30.712149, 33.918575, 34.187893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562819, 33.723793, 33.715885>,  <30.937628, 33.964905, 33.526825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562819, 33.723793, 33.715885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252346, 33.634205, 33.951641>,  <31.066063, 33.580452, 34.093094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252346, 33.634205, 33.951641>,  <31.562819, 33.723793, 33.715885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252346, 33.634205, 33.951641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487900, -0.805453, 0.336451,
		0.399366, 0.548709, 0.734456,
		-0.776183, -0.223975, 0.589385,
		31.019491, 33.567013, 34.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895546, 33.392799, 34.311649>,  <31.562819, 33.723793, 33.715885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895546, 33.392799, 34.311649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515970, 33.274582, 34.267521>,  <31.288225, 33.203651, 34.241043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515970, 33.274582, 34.267521>,  <31.895546, 33.392799, 34.311649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515970, 33.274582, 34.267521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237598, -0.899627, 0.366358,
		-0.207520, 0.321440, 0.923911,
		-0.948938, -0.295546, -0.110317,
		31.231289, 33.185917, 34.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598499, 33.237560, 35.034431>,  <31.895546, 33.392799, 34.311649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598499, 33.237560, 35.034431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477980, 33.023705, 34.718613>,  <31.405668, 32.895393, 34.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477980, 33.023705, 34.718613>,  <31.598499, 33.237560, 35.034431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477980, 33.023705, 34.718613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138723, -0.843793, 0.518431,
		-0.943384, 0.046676, 0.328402,
		-0.301301, -0.534636, -0.789545,
		31.387589, 32.863316, 34.481750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021551, 32.829544, 35.265408>,  <31.598499, 33.237560, 35.034431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021551, 32.829544, 35.265408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219807, 32.669300, 34.957157>,  <31.338760, 32.573154, 34.772209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219807, 32.669300, 34.957157>,  <31.021551, 32.829544, 35.265408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219807, 32.669300, 34.957157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260431, -0.777896, 0.571886,
		-0.828564, -0.484142, -0.281225,
		0.495638, -0.400605, -0.770622,
		31.368498, 32.549118, 34.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705702, 32.199791, 34.990566>,  <31.021551, 32.829544, 35.265408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705702, 32.199791, 34.990566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102945, 32.217472, 34.947151>,  <31.341291, 32.228081, 34.921101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102945, 32.217472, 34.947151>,  <30.705702, 32.199791, 34.990566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102945, 32.217472, 34.947151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105335, -0.742632, 0.661365,
		-0.051373, -0.668240, -0.742170,
		0.993109, 0.044200, -0.108541,
		31.400879, 32.230732, 34.914589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999596, 31.467197, 34.963001>,  <30.705702, 32.199791, 34.990566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999596, 31.467197, 34.963001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332315, 31.662191, 35.069183>,  <31.531946, 31.779188, 35.132893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332315, 31.662191, 35.069183>,  <30.999596, 31.467197, 34.963001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332315, 31.662191, 35.069183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264417, -0.768476, 0.582690,
		0.488053, -0.414489, -0.768117,
		0.831798, 0.487487, 0.265460,
		31.581856, 31.808437, 35.148823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477198, 30.967045, 35.043526>,  <30.999596, 31.467197, 34.963001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477198, 30.967045, 35.043526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652964, 31.271105, 35.234978>,  <31.758423, 31.453541, 35.349850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652964, 31.271105, 35.234978>,  <31.477198, 30.967045, 35.043526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652964, 31.271105, 35.234978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241404, -0.613158, 0.752171,
		0.865240, -0.214970, -0.452932,
		0.439413, 0.760148, 0.478634,
		31.784788, 31.499149, 35.378567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216995, 30.762932, 35.291691>,  <31.477198, 30.967045, 35.043526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216995, 30.762932, 35.291691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067806, 31.053661, 35.522385>,  <31.978292, 31.228098, 35.660801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067806, 31.053661, 35.522385>,  <32.216995, 30.762932, 35.291691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067806, 31.053661, 35.522385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265568, -0.511956, 0.816930,
		0.889024, 0.457855, -0.002074,
		-0.372974, 0.726822, 0.576733,
		31.955914, 31.271708, 35.695404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649036, 30.820593, 35.919743>,  <32.216995, 30.762932, 35.291691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649036, 30.820593, 35.919743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295982, 30.981462, 36.017075>,  <32.084148, 31.077984, 36.075474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295982, 30.981462, 36.017075>,  <32.649036, 30.820593, 35.919743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295982, 30.981462, 36.017075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040878, -0.450026, 0.892079,
		0.468276, 0.797328, 0.380769,
		-0.882636, 0.402175, 0.243329,
		32.031193, 31.102116, 36.090073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620354, 31.321543, 36.535442>,  <32.649036, 30.820593, 35.919743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620354, 31.321543, 36.535442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265083, 31.147366, 36.476738>,  <32.051922, 31.042860, 36.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265083, 31.147366, 36.476738>,  <32.620354, 31.321543, 36.535442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265083, 31.147366, 36.476738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027401, -0.369003, 0.929024,
		-0.458691, 0.821113, 0.339670,
		-0.888173, -0.435442, -0.146759,
		31.998631, 31.016733, 36.432709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108765, 31.530504, 37.066071>,  <32.620354, 31.321543, 36.535442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108765, 31.530504, 37.066071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003521, 31.178978, 36.906845>,  <31.940374, 30.968061, 36.811310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003521, 31.178978, 36.906845>,  <32.108765, 31.530504, 37.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003521, 31.178978, 36.906845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146676, -0.371365, 0.916828,
		-0.953550, 0.299616, -0.031190,
		-0.263113, -0.878816, -0.398061,
		31.924587, 30.915333, 36.787426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467813, 31.761189, 36.726665>,  <32.108765, 31.530504, 37.066071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467813, 31.761189, 36.726665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758015, 31.541924, 36.560215>,  <31.932135, 31.410364, 36.460346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758015, 31.541924, 36.560215>,  <31.467813, 31.761189, 36.726665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758015, 31.541924, 36.560215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018588, 0.620029, -0.784359,
		0.687968, 0.561319, 0.460022,
		0.725503, -0.548165, -0.416126,
		31.975666, 31.377474, 36.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609777, 32.265995, 36.274529>,  <31.467813, 31.761189, 36.726665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609777, 32.265995, 36.274529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841547, 31.974340, 36.128853>,  <31.980608, 31.799349, 36.041447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841547, 31.974340, 36.128853>,  <31.609777, 32.265995, 36.274529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841547, 31.974340, 36.128853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040607, 0.472113, -0.880602,
		0.814014, 0.495453, 0.303161,
		0.579424, -0.729133, -0.364188,
		32.015373, 31.755600, 36.019596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342800, 32.505222, 36.068539>,  <31.609777, 32.265995, 36.274529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342800, 32.505222, 36.068539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162075, 32.221302, 35.852375>,  <32.053638, 32.050949, 35.722675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162075, 32.221302, 35.852375>,  <32.342800, 32.505222, 36.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162075, 32.221302, 35.852375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035410, 0.591020, -0.805880,
		0.891408, -0.383246, -0.241898,
		-0.451816, -0.709802, -0.540411,
		32.026531, 32.008362, 35.690250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552715, 32.578522, 35.433758>,  <32.342800, 32.505222, 36.068539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552715, 32.578522, 35.433758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257217, 32.324341, 35.343910>,  <32.079918, 32.171833, 35.290001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257217, 32.324341, 35.343910>,  <32.552715, 32.578522, 35.433758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257217, 32.324341, 35.343910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109058, 0.441582, -0.890568,
		0.665104, -0.633406, -0.395517,
		-0.738745, -0.635455, -0.224620,
		32.035595, 32.133705, 35.276524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710453, 32.130093, 34.821850>,  <32.552715, 32.578522, 35.433758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710453, 32.130093, 34.821850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318470, 32.199589, 34.860817>,  <32.083279, 32.241287, 34.884197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318470, 32.199589, 34.860817>,  <32.710453, 32.130093, 34.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318470, 32.199589, 34.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031993, 0.345445, -0.937893,
		-0.196601, -0.922216, -0.332964,
		-0.979961, 0.173738, 0.097419,
		32.024483, 32.251709, 34.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962696, 32.399429, 34.225227>,  <32.710453, 32.130093, 34.821850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962696, 32.399429, 34.225227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180847, 32.637829, 33.989483>,  <33.311737, 32.780869, 33.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180847, 32.637829, 33.989483>,  <32.962696, 32.399429, 34.225227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180847, 32.637829, 33.989483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238947, -0.784509, -0.572232,
		-0.803408, 0.171258, -0.570269,
		0.545380, 0.596000, -0.589359,
		33.344460, 32.816628, 33.812675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763653, 32.326370, 33.535378>,  <32.962696, 32.399429, 34.225227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763653, 32.326370, 33.535378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133953, 32.474251, 33.503620>,  <33.356133, 32.562981, 33.484566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133953, 32.474251, 33.503620>,  <32.763653, 32.326370, 33.535378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133953, 32.474251, 33.503620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297786, -0.842194, -0.449481,
		-0.233035, 0.392467, -0.889755,
		0.925753, 0.369701, -0.079390,
		33.411678, 32.585159, 33.479805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829117, 32.255913, 32.841244>,  <32.763653, 32.326370, 33.535378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829117, 32.255913, 32.841244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193401, 32.291477, 33.002586>,  <33.411972, 32.312817, 33.099392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193401, 32.291477, 33.002586>,  <32.829117, 32.255913, 32.841244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193401, 32.291477, 33.002586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341149, -0.712435, -0.613233,
		0.232842, 0.696084, -0.679155,
		0.910715, 0.088906, 0.403353,
		33.466618, 32.318150, 33.123592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287468, 32.176899, 32.213448>,  <32.829117, 32.255913, 32.841244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287468, 32.176899, 32.213448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523457, 32.104717, 32.528248>,  <33.665051, 32.061409, 32.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523457, 32.104717, 32.528248>,  <33.287468, 32.176899, 32.213448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523457, 32.104717, 32.528248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407641, -0.774795, -0.483242,
		0.696970, 0.605911, -0.383542,
		0.589968, -0.180458, 0.787003,
		33.700447, 32.050579, 32.764347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952164, 32.054901, 31.865498>,  <33.287468, 32.176899, 32.213448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952164, 32.054901, 31.865498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000568, 31.909260, 32.234882>,  <34.029610, 31.821875, 32.456512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000568, 31.909260, 32.234882>,  <33.952164, 32.054901, 31.865498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000568, 31.909260, 32.234882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479451, -0.793150, -0.375553,
		0.869186, 0.488200, 0.078592,
		0.121010, -0.364106, 0.923463,
		34.036873, 31.800028, 32.511921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696625, 32.007057, 32.010685>,  <33.952164, 32.054901, 31.865498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696625, 32.007057, 32.010685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489910, 31.760942, 32.248798>,  <34.365883, 31.613276, 32.391666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489910, 31.760942, 32.248798>,  <34.696625, 32.007057, 32.010685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489910, 31.760942, 32.248798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496841, -0.781801, -0.376744,
		0.697196, 0.101065, 0.709721,
		-0.516785, -0.615283, 0.595282,
		34.334873, 31.576357, 32.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230373, 31.629871, 32.475880>,  <34.696625, 32.007057, 32.010685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230373, 31.629871, 32.475880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885811, 31.427219, 32.490356>,  <34.679073, 31.305628, 32.499043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885811, 31.427219, 32.490356>,  <35.230373, 31.629871, 32.475880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885811, 31.427219, 32.490356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494590, -0.852881, -0.167257,
		0.115609, -0.126174, 0.985249,
		-0.861403, -0.506630, 0.036196,
		34.627388, 31.275230, 32.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460602, 31.032255, 32.703953>,  <35.230373, 31.629871, 32.475880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460602, 31.032255, 32.703953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098980, 30.950096, 32.554024>,  <34.882004, 30.900801, 32.464066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098980, 30.950096, 32.554024>,  <35.460602, 31.032255, 32.703953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098980, 30.950096, 32.554024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377116, -0.796055, -0.473370,
		-0.201147, -0.569305, 0.797140,
		-0.904059, -0.205398, -0.374818,
		34.827763, 30.888477, 32.441578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353458, 30.301413, 32.715771>,  <35.460602, 31.032255, 32.703953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353458, 30.301413, 32.715771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106590, 30.447027, 32.436752>,  <34.958469, 30.534395, 32.269341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106590, 30.447027, 32.436752>,  <35.353458, 30.301413, 32.715771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106590, 30.447027, 32.436752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290207, -0.718711, -0.631850,
		-0.731357, -0.592392, 0.337918,
		-0.617168, 0.364041, -0.697550,
		34.921436, 30.556238, 32.227489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043442, 29.737387, 32.484257>,  <35.353458, 30.301413, 32.715771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043442, 29.737387, 32.484257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028122, 30.033102, 32.215336>,  <35.018929, 30.210531, 32.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028122, 30.033102, 32.215336>,  <35.043442, 29.737387, 32.484257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028122, 30.033102, 32.215336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487241, -0.573577, -0.658488,
		-0.872427, -0.352793, -0.338243,
		-0.038301, 0.739288, -0.672299,
		35.016632, 30.254889, 32.013645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316849, 29.397528, 31.982836>,  <35.043442, 29.737387, 32.484257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316849, 29.397528, 31.982836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277542, 29.744175, 31.787155>,  <35.253956, 29.952164, 31.669746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277542, 29.744175, 31.787155>,  <35.316849, 29.397528, 31.982836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277542, 29.744175, 31.787155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633637, -0.324568, -0.702253,
		-0.767364, -0.378987, -0.517225,
		-0.098270, 0.866616, -0.489203,
		35.248062, 30.004160, 31.640394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328506, 29.252817, 31.216053>,  <35.316849, 29.397528, 31.982836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328506, 29.252817, 31.216053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418510, 29.641359, 31.246618>,  <35.472515, 29.874485, 31.264957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418510, 29.641359, 31.246618>,  <35.328506, 29.252817, 31.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418510, 29.641359, 31.246618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455254, -0.035473, -0.889655,
		-0.861459, 0.234973, -0.450195,
		0.225014, 0.971354, 0.076414,
		35.486015, 29.932766, 31.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180889, 29.513838, 30.593966>,  <35.328506, 29.252817, 31.216053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180889, 29.513838, 30.593966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437191, 29.770338, 30.762835>,  <35.590973, 29.924238, 30.864157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437191, 29.770338, 30.762835>,  <35.180889, 29.513838, 30.593966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437191, 29.770338, 30.762835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480921, 0.093392, -0.871776,
		-0.598455, 0.761626, -0.248550,
		0.640754, 0.641252, 0.422172,
		35.629417, 29.962713, 30.889486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230484, 30.104460, 30.054375>,  <35.180889, 29.513838, 30.593966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230484, 30.104460, 30.054375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547882, 30.160841, 30.291183>,  <35.738323, 30.194670, 30.433270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547882, 30.160841, 30.291183>,  <35.230484, 30.104460, 30.054375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547882, 30.160841, 30.291183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565006, 0.190818, -0.802718,
		-0.226116, 0.971453, 0.071774,
		0.793499, 0.140955, 0.592024,
		35.785931, 30.203127, 30.468790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380497, 30.754013, 30.045834>,  <35.230484, 30.104460, 30.054375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380497, 30.754013, 30.045834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727375, 30.605650, 30.178738>,  <35.935501, 30.516632, 30.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727375, 30.605650, 30.178738>,  <35.380497, 30.754013, 30.045834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727375, 30.605650, 30.178738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476089, 0.421945, -0.771558,
		0.145982, 0.827278, 0.542495,
		0.867196, -0.370909, 0.332261,
		35.987534, 30.494377, 30.278416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813095, 31.249052, 29.864136>,  <35.380497, 30.754013, 30.045834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813095, 31.249052, 29.864136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040890, 30.922800, 29.904991>,  <36.177567, 30.727049, 29.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040890, 30.922800, 29.904991>,  <35.813095, 31.249052, 29.864136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040890, 30.922800, 29.904991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570258, 0.302524, -0.763731,
		0.592022, 0.493181, 0.637403,
		0.569487, -0.815630, 0.102139,
		36.211735, 30.678112, 29.935633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449928, 31.497326, 29.617548>,  <35.813095, 31.249052, 29.864136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449928, 31.497326, 29.617548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460167, 31.100348, 29.569555>,  <36.466312, 30.862160, 29.540760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460167, 31.100348, 29.569555>,  <36.449928, 31.497326, 29.617548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460167, 31.100348, 29.569555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433047, 0.119186, -0.893457,
		0.901008, -0.029087, 0.432827,
		0.025599, -0.992446, -0.119983,
		36.467846, 30.802614, 29.533560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048920, 31.340584, 29.315853>,  <36.449928, 31.497326, 29.617548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048920, 31.340584, 29.315853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863747, 31.000710, 29.214880>,  <36.752644, 30.796785, 29.154297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863747, 31.000710, 29.214880>,  <37.048920, 31.340584, 29.315853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863747, 31.000710, 29.214880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301122, 0.117095, -0.946369,
		0.833677, -0.514120, 0.201652,
		-0.462935, -0.849688, -0.252432,
		36.724865, 30.745804, 29.139151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478149, 31.069960, 28.790504>,  <37.048920, 31.340584, 29.315853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478149, 31.069960, 28.790504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150578, 30.843578, 28.752460>,  <36.954033, 30.707750, 28.729633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150578, 30.843578, 28.752460>,  <37.478149, 31.069960, 28.790504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150578, 30.843578, 28.752460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249937, -0.202539, -0.946842,
		0.516603, -0.799172, 0.307319,
		-0.818934, -0.565952, -0.095111,
		36.904896, 30.673794, 28.723927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693726, 30.460146, 28.514687>,  <37.478149, 31.069960, 28.790504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693726, 30.460146, 28.514687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305721, 30.509338, 28.430826>,  <37.072918, 30.538853, 28.380510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305721, 30.509338, 28.430826>,  <37.693726, 30.460146, 28.514687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305721, 30.509338, 28.430826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195578, -0.117217, -0.973658,
		-0.144321, -0.985462, 0.089649,
		-0.970011, 0.122986, -0.209651,
		37.014717, 30.546232, 28.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660175, 30.120039, 27.985142>,  <37.693726, 30.460146, 28.514687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660175, 30.120039, 27.985142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305313, 30.301044, 27.948954>,  <37.092396, 30.409647, 27.927240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305313, 30.301044, 27.948954>,  <37.660175, 30.120039, 27.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305313, 30.301044, 27.948954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014170, -0.222666, -0.974792,
		-0.461252, -0.863511, 0.203951,
		-0.887156, 0.452515, -0.090469,
		37.039165, 30.436798, 27.921812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272144, 29.646013, 27.567989>,  <37.660175, 30.120039, 27.985142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272144, 29.646013, 27.567989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092663, 30.002960, 27.548609>,  <36.984974, 30.217129, 27.536980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092663, 30.002960, 27.548609>,  <37.272144, 29.646013, 27.567989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092663, 30.002960, 27.548609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181763, -0.144210, -0.972710,
		-0.875001, -0.427653, 0.226907,
		-0.448705, 0.892366, -0.048452,
		36.958050, 30.270670, 27.534073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468903, 29.665257, 27.397001>,  <37.272144, 29.646013, 27.567989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468903, 29.665257, 27.397001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647175, 30.004908, 27.283613>,  <36.754139, 30.208698, 27.215580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647175, 30.004908, 27.283613>,  <36.468903, 29.665257, 27.397001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647175, 30.004908, 27.283613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174579, -0.228137, -0.957850,
		-0.878006, 0.476379, 0.046565,
		0.445677, 0.849127, -0.283471,
		36.780876, 30.259645, 27.198572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966671, 29.928787, 26.874874>,  <36.468903, 29.665257, 27.397001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966671, 29.928787, 26.874874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315826, 30.116222, 26.820486>,  <36.525322, 30.228683, 26.787853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315826, 30.116222, 26.820486>,  <35.966671, 29.928787, 26.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315826, 30.116222, 26.820486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039793, -0.209381, -0.977024,
		-0.486290, 0.858246, -0.164121,
		0.872891, 0.468586, -0.135972,
		36.577694, 30.256798, 26.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873928, 30.361069, 26.354004>,  <35.966671, 29.928787, 26.874874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873928, 30.361069, 26.354004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273048, 30.334959, 26.358616>,  <36.512520, 30.319294, 26.361383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273048, 30.334959, 26.358616>,  <35.873928, 30.361069, 26.354004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273048, 30.334959, 26.358616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009787, -0.026980, -0.999588,
		0.065556, 0.997503, -0.026282,
		0.997801, -0.065272, 0.011531,
		36.572388, 30.315378, 26.362076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093842, 30.815733, 25.824926>,  <35.873928, 30.361069, 26.354004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093842, 30.815733, 25.824926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402218, 30.566734, 25.878824>,  <36.587242, 30.417336, 25.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402218, 30.566734, 25.878824>,  <36.093842, 30.815733, 25.824926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402218, 30.566734, 25.878824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160487, -0.014872, -0.986926,
		0.616360, 0.782483, 0.088437,
		0.770937, -0.622495, 0.134745,
		36.633499, 30.379986, 25.919249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611080, 31.069630, 25.417398>,  <36.093842, 30.815733, 25.824926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611080, 31.069630, 25.417398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674629, 30.678345, 25.470856>,  <36.712757, 30.443573, 25.502930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674629, 30.678345, 25.470856>,  <36.611080, 31.069630, 25.417398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674629, 30.678345, 25.470856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381273, -0.064075, -0.922239,
		0.910710, 0.197469, 0.362787,
		0.158868, -0.978213, 0.133644,
		36.722290, 30.384880, 25.510948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072430, 31.043022, 24.883196>,  <36.611080, 31.069630, 25.417398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072430, 31.043022, 24.883196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998932, 30.666388, 24.996084>,  <36.954834, 30.440407, 25.063818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998932, 30.666388, 24.996084>,  <37.072430, 31.043022, 24.883196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998932, 30.666388, 24.996084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412491, -0.334469, -0.847338,
		0.892237, -0.039284, 0.449855,
		-0.183749, -0.941587, 0.282222,
		36.943806, 30.383911, 25.080751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691757, 30.693169, 24.956793>,  <37.072430, 31.043022, 24.883196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691757, 30.693169, 24.956793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428017, 30.398794, 24.895271>,  <37.269772, 30.222170, 24.858358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428017, 30.398794, 24.895271>,  <37.691757, 30.693169, 24.956793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428017, 30.398794, 24.895271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596983, -0.388121, -0.702121,
		0.457023, -0.554761, 0.695249,
		-0.659349, -0.735937, -0.153803,
		37.230213, 30.178013, 24.849131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058460, 30.062233, 24.853800>,  <37.691757, 30.693169, 24.956793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058460, 30.062233, 24.853800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705387, 29.993195, 24.678949>,  <37.493542, 29.951771, 24.574039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705387, 29.993195, 24.678949>,  <38.058460, 30.062233, 24.853800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705387, 29.993195, 24.678949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468719, -0.391020, -0.792090,
		-0.034213, -0.904054, 0.426046,
		-0.882685, -0.172596, -0.437125,
		37.440582, 29.941416, 24.547812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082920, 29.388836, 24.461720>,  <38.058460, 30.062233, 24.853800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082920, 29.388836, 24.461720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803493, 29.633148, 24.312616>,  <37.635838, 29.779736, 24.223154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803493, 29.633148, 24.312616>,  <38.082920, 29.388836, 24.461720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803493, 29.633148, 24.312616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400043, -0.098553, -0.911182,
		-0.593271, -0.785641, -0.175493,
		-0.698567, 0.610782, -0.372759,
		37.593922, 29.816383, 24.200788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870735, 29.090279, 23.820929>,  <38.082920, 29.388836, 24.461720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870735, 29.090279, 23.820929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731411, 29.464310, 23.794682>,  <37.647816, 29.688728, 23.778933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731411, 29.464310, 23.794682>,  <37.870735, 29.090279, 23.820929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731411, 29.464310, 23.794682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405812, 0.087319, -0.909776,
		-0.844982, -0.343517, -0.409880,
		-0.348314, 0.935078, -0.065620,
		37.626915, 29.744833, 23.774996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746338, 29.101927, 23.124880>,  <37.870735, 29.090279, 23.820929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746338, 29.101927, 23.124880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724304, 29.486565, 23.232433>,  <37.711086, 29.717348, 23.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724304, 29.486565, 23.232433>,  <37.746338, 29.101927, 23.124880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724304, 29.486565, 23.232433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350730, 0.270767, -0.896478,
		-0.934855, 0.044927, -0.352175,
		-0.055081, 0.961596, 0.268885,
		37.707779, 29.775043, 23.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544346, 29.434980, 22.530485>,  <37.746338, 29.101927, 23.124880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544346, 29.434980, 22.530485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683159, 29.730148, 22.762018>,  <37.766449, 29.907249, 22.900938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683159, 29.730148, 22.762018>,  <37.544346, 29.434980, 22.530485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683159, 29.730148, 22.762018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423847, 0.427161, -0.798678,
		-0.836613, 0.522504, -0.164525,
		0.347034, 0.737918, 0.578831,
		37.787270, 29.951523, 22.935667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510178, 30.058117, 22.128410>,  <37.544346, 29.434980, 22.530485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510178, 30.058117, 22.128410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797935, 30.139244, 22.394142>,  <37.970589, 30.187920, 22.553581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797935, 30.139244, 22.394142>,  <37.510178, 30.058117, 22.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797935, 30.139244, 22.394142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463301, 0.572477, -0.676477,
		-0.517515, 0.794440, 0.317872,
		0.719396, 0.202817, 0.664331,
		38.013756, 30.200089, 22.593441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771946, 30.666582, 21.935652>,  <37.510178, 30.058117, 22.128410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771946, 30.666582, 21.935652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073929, 30.549673, 22.170467>,  <38.255119, 30.479527, 22.311357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073929, 30.549673, 22.170467>,  <37.771946, 30.666582, 21.935652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073929, 30.549673, 22.170467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649521, 0.456596, -0.607983,
		-0.090341, 0.840295, 0.534549,
		0.754958, -0.292275, 0.587038,
		38.300415, 30.461990, 22.346579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041039, 31.302900, 21.994516>,  <37.771946, 30.666582, 21.935652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041039, 31.302900, 21.994516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292336, 30.995617, 22.043793>,  <38.443111, 30.811247, 22.073359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292336, 30.995617, 22.043793>,  <38.041039, 31.302900, 21.994516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292336, 30.995617, 22.043793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522245, 0.299019, -0.798653,
		0.576694, 0.566080, 0.589048,
		0.628238, -0.768206, 0.123190,
		38.480808, 30.765156, 22.080750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614143, 31.598877, 21.952387>,  <38.041039, 31.302900, 21.994516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614143, 31.598877, 21.952387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723213, 31.216669, 21.907440>,  <38.788654, 30.987345, 21.880472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723213, 31.216669, 21.907440>,  <38.614143, 31.598877, 21.952387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723213, 31.216669, 21.907440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625601, 0.264822, -0.733821,
		0.730939, 0.129799, 0.669986,
		0.272676, -0.955522, -0.112366,
		38.805016, 30.930012, 21.873730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318214, 31.601345, 21.866707>,  <38.614143, 31.598877, 21.952387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318214, 31.601345, 21.866707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223125, 31.249672, 21.701530>,  <39.166073, 31.038668, 21.602425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223125, 31.249672, 21.701530>,  <39.318214, 31.601345, 21.866707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223125, 31.249672, 21.701530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653461, 0.169786, -0.737673,
		0.718663, -0.445203, 0.534151,
		-0.237723, -0.879185, -0.412942,
		39.151810, 30.985916, 21.577648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939095, 31.390823, 21.692781>,  <39.318214, 31.601345, 21.866707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939095, 31.390823, 21.692781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679089, 31.167400, 21.486675>,  <39.523087, 31.033346, 21.363012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679089, 31.167400, 21.486675>,  <39.939095, 31.390823, 21.692781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679089, 31.167400, 21.486675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639671, -0.036118, -0.767799,
		0.410250, -0.828679, 0.380770,
		-0.650012, -0.558558, -0.515265,
		39.484085, 30.999834, 21.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375454, 30.881218, 21.298422>,  <39.939095, 31.390823, 21.692781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375454, 30.881218, 21.298422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029968, 30.893038, 21.097174>,  <39.822678, 30.900129, 20.976425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029968, 30.893038, 21.097174>,  <40.375454, 30.881218, 21.298422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029968, 30.893038, 21.097174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495958, -0.127639, -0.858914,
		-0.089595, -0.991380, 0.095590,
		-0.863712, 0.029546, -0.503119,
		39.770855, 30.901901, 20.946238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478790, 30.323858, 20.748501>,  <40.375454, 30.881218, 21.298422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478790, 30.323858, 20.748501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190922, 30.568701, 20.617416>,  <40.018200, 30.715607, 20.538765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190922, 30.568701, 20.617416>,  <40.478790, 30.323858, 20.748501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190922, 30.568701, 20.617416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402615, -0.016627, -0.915218,
		-0.565661, -0.790600, -0.234478,
		-0.719672, 0.612108, -0.327713,
		39.975021, 30.752333, 20.519102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107986, 30.021515, 20.131252>,  <40.478790, 30.323858, 20.748501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107986, 30.021515, 20.131252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016109, 30.410353, 20.112179>,  <39.960983, 30.643656, 20.100735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016109, 30.410353, 20.112179>,  <40.107986, 30.021515, 20.131252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016109, 30.410353, 20.112179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285220, 0.020390, -0.958245,
		-0.930533, -0.233702, -0.281945,
		-0.229692, 0.972094, -0.047683,
		39.947201, 30.701981, 20.097874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799782, 30.098738, 19.531950>,  <40.107986, 30.021515, 20.131252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799782, 30.098738, 19.531950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945023, 30.458519, 19.629227>,  <40.032169, 30.674387, 19.687593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945023, 30.458519, 19.629227>,  <39.799782, 30.098738, 19.531950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945023, 30.458519, 19.629227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435246, 0.067042, -0.897812,
		-0.823842, 0.431849, -0.367139,
		0.363105, 0.899451, 0.243193,
		40.053955, 30.728354, 19.702185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794926, 30.431129, 18.861774>,  <39.799782, 30.098738, 19.531950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794926, 30.431129, 18.861774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042648, 30.627758, 19.106665>,  <40.191280, 30.745735, 19.253599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042648, 30.627758, 19.106665>,  <39.794926, 30.431129, 18.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042648, 30.627758, 19.106665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612684, 0.185061, -0.768356,
		-0.491002, 0.850945, -0.186570,
		0.619302, 0.491573, 0.612226,
		40.228439, 30.775230, 19.290333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969181, 31.061478, 18.547697>,  <39.794926, 30.431129, 18.861774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969181, 31.061478, 18.547697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285362, 30.922209, 18.749277>,  <40.475071, 30.838648, 18.870226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285362, 30.922209, 18.749277>,  <39.969181, 31.061478, 18.547697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285362, 30.922209, 18.749277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577591, 0.149789, -0.802466,
		0.203911, 0.925386, 0.319502,
		0.790448, -0.348173, 0.503951,
		40.522495, 30.817757, 18.900463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526211, 31.603859, 18.448084>,  <39.969181, 31.061478, 18.547697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526211, 31.603859, 18.448084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670433, 31.233900, 18.496351>,  <40.756966, 31.011925, 18.525311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670433, 31.233900, 18.496351>,  <40.526211, 31.603859, 18.448084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670433, 31.233900, 18.496351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394562, 0.034016, -0.918240,
		0.845174, 0.378689, 0.377194,
		0.360558, -0.924899, 0.120667,
		40.778599, 30.956430, 18.532551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233589, 31.623859, 18.485558>,  <40.526211, 31.603859, 18.448084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233589, 31.623859, 18.485558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052414, 31.308582, 18.318897>,  <40.943710, 31.119415, 18.218901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052414, 31.308582, 18.318897>,  <41.233589, 31.623859, 18.485558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052414, 31.308582, 18.318897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444284, 0.205628, -0.871969,
		0.772956, -0.580057, 0.257046,
		-0.452935, -0.788195, -0.416651,
		40.916534, 31.072124, 18.193901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236725, 32.386940, 18.417942>,  <41.233589, 31.623859, 18.485558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236725, 32.386940, 18.417942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119999, 32.505604, 18.054220>,  <41.049965, 32.576801, 17.835987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119999, 32.505604, 18.054220>,  <41.236725, 32.386940, 18.417942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119999, 32.505604, 18.054220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955731, -0.127937, 0.264973,
		-0.037727, 0.946375, 0.320861,
		-0.291814, 0.296660, -0.909306,
		41.032455, 32.594601, 17.781429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656979, 32.602459, 18.525774>,  <41.236725, 32.386940, 18.417942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656979, 32.602459, 18.525774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608692, 32.574970, 18.129652>,  <40.579720, 32.558479, 17.891979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608692, 32.574970, 18.129652>,  <40.656979, 32.602459, 18.525774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608692, 32.574970, 18.129652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992530, 0.026085, 0.119181,
		0.017642, 0.997295, -0.071354,
		-0.120720, -0.068718, -0.990305,
		40.572475, 32.554356, 17.832560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124683, 33.035896, 18.574406>,  <40.656979, 32.602459, 18.525774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124683, 33.035896, 18.574406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134716, 33.309776, 18.283047>,  <40.140736, 33.474102, 18.108232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134716, 33.309776, 18.283047>,  <40.124683, 33.035896, 18.574406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134716, 33.309776, 18.283047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867111, 0.377491, 0.324990,
		0.497483, 0.623450, 0.603176,
		0.025078, 0.684698, -0.728395,
		40.142239, 33.515186, 18.064528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218525, 33.749321, 18.801275>,  <40.124683, 33.035896, 18.574406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218525, 33.749321, 18.801275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998112, 33.699791, 18.471178>,  <39.865864, 33.670074, 18.273119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998112, 33.699791, 18.471178>,  <40.218525, 33.749321, 18.801275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998112, 33.699791, 18.471178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826336, 0.218800, 0.518937,
		0.116306, 0.967881, -0.222888,
		-0.551037, -0.123824, -0.825243,
		39.832802, 33.662643, 18.223604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685635, 34.322189, 18.869022>,  <40.218525, 33.749321, 18.801275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685635, 34.322189, 18.869022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585228, 34.011059, 18.638552>,  <39.524982, 33.824379, 18.500269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585228, 34.011059, 18.638552>,  <39.685635, 34.322189, 18.869022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585228, 34.011059, 18.638552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910978, -0.011421, 0.412297,
		-0.327275, 0.628378, -0.705714,
		-0.251018, -0.777824, -0.576176,
		39.509922, 33.777710, 18.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086594, 34.791470, 19.291948>,  <39.685635, 34.322189, 18.869022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086594, 34.791470, 19.291948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080982, 35.188080, 19.240294>,  <40.077614, 35.426048, 19.209301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080982, 35.188080, 19.240294>,  <40.086594, 34.791470, 19.291948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080982, 35.188080, 19.240294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540212, 0.116197, 0.833469,
		0.841412, -0.058068, -0.537265,
		-0.014031, 0.991527, -0.129138,
		40.076775, 35.485538, 19.201551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388012, 34.583519, 19.998680>,  <40.086594, 34.791470, 19.291948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388012, 34.583519, 19.998680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425964, 34.185463, 19.988132>,  <40.448738, 33.946629, 19.981804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425964, 34.185463, 19.988132>,  <40.388012, 34.583519, 19.998680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425964, 34.185463, 19.988132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522345, -0.072321, 0.849662,
		-0.847439, -0.066845, -0.526668,
		0.094885, -0.995139, -0.026371,
		40.454430, 33.886921, 19.980221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852055, 34.396843, 20.364767>,  <40.388012, 34.583519, 19.998680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852055, 34.396843, 20.364767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069149, 34.061054, 20.354029>,  <40.199406, 33.859581, 20.347586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069149, 34.061054, 20.354029>,  <39.852055, 34.396843, 20.364767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069149, 34.061054, 20.354029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528135, -0.365955, 0.766257,
		-0.653076, -0.401700, -0.641973,
		0.542739, -0.839472, -0.026845,
		40.231972, 33.809212, 20.345976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460632, 33.842445, 20.229992>,  <39.852055, 34.396843, 20.364767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460632, 33.842445, 20.229992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770119, 33.671562, 20.417124>,  <39.955811, 33.569031, 20.529404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770119, 33.671562, 20.417124>,  <39.460632, 33.842445, 20.229992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770119, 33.671562, 20.417124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601348, -0.262831, 0.754520,
		-0.199374, -0.865110, -0.460255,
		0.773712, -0.427206, 0.467831,
		40.002232, 33.543400, 20.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203678, 33.219490, 20.551373>,  <39.460632, 33.842445, 20.229992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203678, 33.219490, 20.551373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548008, 33.276901, 20.746670>,  <39.754604, 33.311348, 20.863848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548008, 33.276901, 20.746670>,  <39.203678, 33.219490, 20.551373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548008, 33.276901, 20.746670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439641, -0.273471, 0.855528,
		0.256312, -0.951112, -0.172310,
		0.860825, 0.143527, 0.488242,
		39.806255, 33.319958, 20.893143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334614, 32.599087, 20.924017>,  <39.203678, 33.219490, 20.551373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334614, 32.599087, 20.924017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544498, 32.876549, 21.121408>,  <39.670429, 33.043026, 21.239843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544498, 32.876549, 21.121408>,  <39.334614, 32.599087, 20.924017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544498, 32.876549, 21.121408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422920, -0.290679, 0.858280,
		0.738791, -0.659054, 0.140836,
		0.524715, 0.693652, 0.493479,
		39.701912, 33.084644, 21.269451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679699, 32.170811, 21.481237>,  <39.334614, 32.599087, 20.924017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679699, 32.170811, 21.481237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699131, 32.549240, 21.609356>,  <39.710789, 32.776299, 21.686228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699131, 32.549240, 21.609356>,  <39.679699, 32.170811, 21.481237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699131, 32.549240, 21.609356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117502, -0.313035, 0.942445,
		0.991884, -0.083417, 0.095959,
		0.048578, 0.946071, 0.320296,
		39.713703, 32.833061, 21.705444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138615, 32.129967, 22.044279>,  <39.679699, 32.170811, 21.481237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138615, 32.129967, 22.044279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949924, 32.478603, 22.097633>,  <39.836708, 32.687786, 22.129646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949924, 32.478603, 22.097633>,  <40.138615, 32.129967, 22.044279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949924, 32.478603, 22.097633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079057, -0.108856, 0.990909,
		0.878192, 0.477986, -0.017555,
		-0.471730, 0.871596, 0.133385,
		39.808407, 32.740082, 22.137650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395000, 32.635605, 22.507572>,  <40.138615, 32.129967, 22.044279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395000, 32.635605, 22.507572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013096, 32.753731, 22.521503>,  <39.783951, 32.824608, 22.529863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013096, 32.753731, 22.521503>,  <40.395000, 32.635605, 22.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013096, 32.753731, 22.521503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017860, -0.059971, 0.998040,
		0.296825, 0.953516, 0.051984,
		-0.954765, 0.295315, 0.034831,
		39.726665, 32.842327, 22.531952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350552, 33.159073, 22.992111>,  <40.395000, 32.635605, 22.507572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350552, 33.159073, 22.992111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964115, 33.059471, 22.964779>,  <39.732254, 32.999710, 22.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964115, 33.059471, 22.964779>,  <40.350552, 33.159073, 22.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964115, 33.059471, 22.964779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104656, 0.135692, 0.985208,
		-0.236048, 0.958950, -0.157150,
		-0.966089, -0.249003, -0.068330,
		39.674290, 32.984772, 22.944281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901016, 33.690201, 23.363298>,  <40.350552, 33.159073, 22.992111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901016, 33.690201, 23.363298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665352, 33.367870, 23.339516>,  <39.523952, 33.174473, 23.325245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665352, 33.367870, 23.339516>,  <39.901016, 33.690201, 23.363298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665352, 33.367870, 23.339516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177706, 0.057439, 0.982406,
		-0.788231, 0.589363, -0.177041,
		-0.589162, -0.805824, -0.059459,
		39.488602, 33.126122, 23.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258980, 33.823223, 23.638508>,  <39.901016, 33.690201, 23.363298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258980, 33.823223, 23.638508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306618, 33.427151, 23.667809>,  <39.335201, 33.189507, 23.685389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306618, 33.427151, 23.667809>,  <39.258980, 33.823223, 23.638508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306618, 33.427151, 23.667809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215338, 0.046262, 0.975443,
		-0.969250, -0.131944, -0.207713,
		0.119095, -0.990177, 0.073252,
		39.342346, 33.130096, 23.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683228, 33.527679, 24.070564>,  <39.258980, 33.823223, 23.638508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683228, 33.527679, 24.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959236, 33.239864, 24.101892>,  <39.124840, 33.067173, 24.120689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959236, 33.239864, 24.101892>,  <38.683228, 33.527679, 24.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959236, 33.239864, 24.101892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185782, -0.071490, 0.979987,
		-0.699543, -0.690759, -0.183007,
		0.690018, -0.719542, 0.078320,
		39.166241, 33.024002, 24.125389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401783, 33.091305, 24.569330>,  <38.683228, 33.527679, 24.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401783, 33.091305, 24.569330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791721, 33.002892, 24.557842>,  <39.025684, 32.949844, 24.550949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791721, 33.002892, 24.557842>,  <38.401783, 33.091305, 24.569330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791721, 33.002892, 24.557842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014897, -0.193186, 0.981049,
		-0.222394, -0.955941, -0.191619,
		0.974843, -0.221034, -0.028723,
		39.084175, 32.936584, 24.549225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514805, 32.334259, 24.772850>,  <38.401783, 33.091305, 24.569330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514805, 32.334259, 24.772850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835918, 32.554630, 24.864084>,  <39.028587, 32.686852, 24.918825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835918, 32.554630, 24.864084>,  <38.514805, 32.334259, 24.772850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835918, 32.554630, 24.864084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120168, -0.225188, 0.966877,
		0.584038, -0.803600, -0.114573,
		0.802782, 0.550925, 0.228085,
		39.076752, 32.719906, 24.932510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766994, 31.988827, 25.387684>,  <38.514805, 32.334259, 24.772850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766994, 31.988827, 25.387684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968246, 32.334404, 25.379072>,  <39.088997, 32.541748, 25.373905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968246, 32.334404, 25.379072>,  <38.766994, 31.988827, 25.387684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968246, 32.334404, 25.379072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019550, 0.036284, 0.999150,
		0.863988, -0.502284, 0.035146,
		0.503132, 0.863941, -0.021529,
		39.119186, 32.593586, 25.372614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216915, 31.941929, 25.875544>,  <38.766994, 31.988827, 25.387684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216915, 31.941929, 25.875544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168785, 32.335770, 25.824825>,  <39.139908, 32.572075, 25.794395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168785, 32.335770, 25.824825>,  <39.216915, 31.941929, 25.875544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168785, 32.335770, 25.824825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171625, 0.105167, 0.979533,
		0.977786, 0.139628, 0.156327,
		-0.120329, 0.984604, -0.126795,
		39.132687, 32.631149, 25.786787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597176, 32.278542, 26.401434>,  <39.216915, 31.941929, 25.875544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597176, 32.278542, 26.401434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315895, 32.524319, 26.258347>,  <39.147125, 32.671787, 26.172493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315895, 32.524319, 26.258347>,  <39.597176, 32.278542, 26.401434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315895, 32.524319, 26.258347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278701, 0.224644, 0.933735,
		0.654090, 0.756300, 0.013277,
		-0.703201, 0.614447, -0.357720,
		39.104935, 32.708652, 26.151031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637207, 32.717426, 26.944798>,  <39.597176, 32.278542, 26.401434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637207, 32.717426, 26.944798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298923, 32.812614, 26.753740>,  <39.095951, 32.869728, 26.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298923, 32.812614, 26.753740>,  <39.637207, 32.717426, 26.944798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298923, 32.812614, 26.753740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459549, 0.130218, 0.878554,
		0.271265, 0.962504, -0.000769,
		-0.845713, 0.237967, -0.477641,
		39.045208, 32.884007, 26.610447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421505, 33.359379, 27.311504>,  <39.637207, 32.717426, 26.944798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421505, 33.359379, 27.311504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100819, 33.213512, 27.122080>,  <38.908405, 33.125992, 27.008425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100819, 33.213512, 27.122080>,  <39.421505, 33.359379, 27.311504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100819, 33.213512, 27.122080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568314, 0.219721, 0.792933,
		-0.185105, 0.904843, -0.383401,
		-0.801720, -0.364668, -0.473563,
		38.860302, 33.104111, 26.980011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832878, 33.836502, 27.513790>,  <39.421505, 33.359379, 27.311504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832878, 33.836502, 27.513790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691593, 33.479824, 27.400562>,  <38.606823, 33.265820, 27.332626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691593, 33.479824, 27.400562>,  <38.832878, 33.836502, 27.513790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691593, 33.479824, 27.400562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547085, -0.048573, 0.835667,
		-0.758906, 0.450031, -0.470674,
		-0.353213, -0.891691, -0.283067,
		38.585629, 33.212318, 27.315641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162205, 33.938644, 27.598906>,  <38.832878, 33.836502, 27.513790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162205, 33.938644, 27.598906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179401, 33.539520, 27.578789>,  <38.189720, 33.300045, 27.566719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179401, 33.539520, 27.578789>,  <38.162205, 33.938644, 27.598906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179401, 33.539520, 27.578789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707184, -0.065952, 0.703947,
		-0.705721, 0.005300, -0.708470,
		0.042994, -0.997809, -0.050292,
		38.192299, 33.240177, 27.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423519, 33.680695, 27.363928>,  <38.162205, 33.938644, 27.598906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423519, 33.680695, 27.363928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631332, 33.405819, 27.567049>,  <37.756020, 33.240894, 27.688921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631332, 33.405819, 27.567049>,  <37.423519, 33.680695, 27.363928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631332, 33.405819, 27.567049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708126, -0.013690, 0.705954,
		-0.478171, -0.726351, -0.493727,
		0.519529, -0.687188, 0.507802,
		37.787189, 33.199661, 27.719389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926086, 33.108109, 27.452435>,  <37.423519, 33.680695, 27.363928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926086, 33.108109, 27.452435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210968, 33.064415, 27.729801>,  <37.381897, 33.038197, 27.896221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210968, 33.064415, 27.729801>,  <36.926086, 33.108109, 27.452435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210968, 33.064415, 27.729801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701849, -0.092549, 0.706288,
		-0.012976, -0.989698, -0.142580,
		0.712208, -0.109235, 0.693417,
		37.424629, 33.031643, 27.937826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553059, 32.776878, 27.923330>,  <36.926086, 33.108109, 27.452435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553059, 32.776878, 27.923330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870998, 32.885677, 28.140301>,  <37.061764, 32.950958, 28.270483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870998, 32.885677, 28.140301>,  <36.553059, 32.776878, 27.923330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870998, 32.885677, 28.140301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551308, -0.049758, 0.832816,
		0.253518, -0.961009, 0.110407,
		0.794851, 0.272002, 0.542427,
		37.109455, 32.967278, 28.303028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463997, 32.529007, 28.516632>,  <36.553059, 32.776878, 27.923330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463997, 32.529007, 28.516632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752346, 32.774403, 28.645617>,  <36.925354, 32.921638, 28.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752346, 32.774403, 28.645617>,  <36.463997, 32.529007, 28.516632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752346, 32.774403, 28.645617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437060, 0.041301, 0.898483,
		0.537888, -0.788625, 0.297903,
		0.720870, 0.613485, 0.322462,
		36.968609, 32.958447, 28.742355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941345, 32.280663, 29.208532>,  <36.463997, 32.529007, 28.516632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941345, 32.280663, 29.208532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912537, 32.677616, 29.168564>,  <36.895252, 32.915787, 29.144583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912537, 32.677616, 29.168564>,  <36.941345, 32.280663, 29.208532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912537, 32.677616, 29.168564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292723, 0.074739, 0.953272,
		0.953481, 0.097904, 0.285111,
		-0.072020, 0.992386, -0.099922,
		36.890930, 32.975330, 29.138588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066750, 32.430897, 29.873222>,  <36.941345, 32.280663, 29.208532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066750, 32.430897, 29.873222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950344, 32.782360, 29.721819>,  <36.880501, 32.993237, 29.630976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950344, 32.782360, 29.721819>,  <37.066750, 32.430897, 29.873222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950344, 32.782360, 29.721819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199342, 0.331262, 0.922241,
		0.935721, 0.343837, 0.078752,
		-0.291013, 0.878659, -0.378510,
		36.863041, 33.045959, 29.608267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062233, 33.009956, 30.449171>,  <37.066750, 32.430897, 29.873222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062233, 33.009956, 30.449171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838917, 33.234238, 30.204573>,  <36.704926, 33.368805, 30.057814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838917, 33.234238, 30.204573>,  <37.062233, 33.009956, 30.449171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838917, 33.234238, 30.204573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363889, 0.496884, 0.787839,
		0.745582, 0.662362, -0.073375,
		-0.558294, 0.560699, -0.611494,
		36.671429, 33.402447, 30.021124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194710, 33.783997, 30.557318>,  <37.062233, 33.009956, 30.449171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194710, 33.783997, 30.557318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836647, 33.744400, 30.383469>,  <36.621811, 33.720642, 30.279160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836647, 33.744400, 30.383469>,  <37.194710, 33.783997, 30.557318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836647, 33.744400, 30.383469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418125, 0.524386, 0.741748,
		0.154485, 0.845707, -0.510797,
		-0.895157, -0.098988, -0.434621,
		36.568100, 33.714703, 30.253082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811543, 34.512447, 30.461542>,  <37.194710, 33.783997, 30.557318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811543, 34.512447, 30.461542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560875, 34.200733, 30.462111>,  <36.410473, 34.013706, 30.462452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560875, 34.200733, 30.462111>,  <36.811543, 34.512447, 30.461542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560875, 34.200733, 30.462111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530147, 0.427660, 0.732155,
		-0.571162, 0.458069, -0.681137,
		-0.626672, -0.779282, 0.001419,
		36.372871, 33.966949, 30.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212780, 34.940975, 30.550121>,  <36.811543, 34.512447, 30.461542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212780, 34.940975, 30.550121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126766, 34.556248, 30.617849>,  <36.075157, 34.325413, 30.658485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126766, 34.556248, 30.617849>,  <36.212780, 34.940975, 30.550121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126766, 34.556248, 30.617849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653254, 0.270534, 0.707157,
		-0.725963, 0.041451, -0.686484,
		-0.215030, -0.961817, 0.169319,
		36.062256, 34.267704, 30.668646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494476, 35.012684, 30.563559>,  <36.212780, 34.940975, 30.550121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494476, 35.012684, 30.563559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592522, 34.680115, 30.763021>,  <35.651348, 34.480572, 30.882698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592522, 34.680115, 30.763021>,  <35.494476, 35.012684, 30.563559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592522, 34.680115, 30.763021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688713, 0.212678, 0.693140,
		-0.682345, -0.513328, -0.520481,
		0.245113, -0.831422, 0.498655,
		35.666054, 34.430687, 30.912619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912025, 34.725876, 30.860842>,  <35.494476, 35.012684, 30.563559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912025, 34.725876, 30.860842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207607, 34.564548, 31.076725>,  <35.384956, 34.467751, 31.206255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207607, 34.564548, 31.076725>,  <34.912025, 34.725876, 30.860842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207607, 34.564548, 31.076725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568086, 0.057724, 0.820943,
		-0.362257, -0.913236, -0.186465,
		0.738951, -0.403320, 0.539708,
		35.429291, 34.443554, 31.238638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593567, 34.196121, 31.332752>,  <34.912025, 34.725876, 30.860842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593567, 34.196121, 31.332752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942692, 34.267780, 31.514349>,  <35.152164, 34.310776, 31.623306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942692, 34.267780, 31.514349>,  <34.593567, 34.196121, 31.332752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942692, 34.267780, 31.514349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462921, 0.009187, 0.886352,
		0.154619, -0.983779, 0.090951,
		0.872810, 0.179150, 0.453991,
		35.204536, 34.321526, 31.650547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605625, 33.826580, 31.904650>,  <34.593567, 34.196121, 31.332752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605625, 33.826580, 31.904650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922569, 34.056309, 31.986931>,  <35.112736, 34.194145, 32.036301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922569, 34.056309, 31.986931>,  <34.605625, 33.826580, 31.904650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922569, 34.056309, 31.986931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214899, -0.052805, 0.975208,
		0.570950, -0.816921, 0.081582,
		0.792360, 0.574327, 0.205704,
		35.160278, 34.228607, 32.048641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094650, 33.425575, 32.384296>,  <34.605625, 33.826580, 31.904650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094650, 33.425575, 32.384296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116791, 33.824047, 32.411316>,  <35.130074, 34.063129, 32.427528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116791, 33.824047, 32.411316>,  <35.094650, 33.425575, 32.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116791, 33.824047, 32.411316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025686, -0.066210, 0.997475,
		0.998137, -0.056944, 0.021923,
		0.055349, 0.996180, 0.067549,
		35.133396, 34.122902, 32.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540203, 33.540958, 32.926300>,  <35.094650, 33.425575, 32.384296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540203, 33.540958, 32.926300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378620, 33.905643, 32.896389>,  <35.281670, 34.124454, 32.878441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378620, 33.905643, 32.896389>,  <35.540203, 33.540958, 32.926300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378620, 33.905643, 32.896389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033239, 0.096320, 0.994795,
		0.914172, 0.399374, -0.069215,
		-0.403962, 0.911714, -0.074778,
		35.257431, 34.179157, 32.873955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977455, 33.932281, 33.426197>,  <35.540203, 33.540958, 32.926300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977455, 33.932281, 33.426197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637810, 34.135696, 33.369068>,  <35.434025, 34.257748, 33.334789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637810, 34.135696, 33.369068>,  <35.977455, 33.932281, 33.426197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637810, 34.135696, 33.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107712, 0.098013, 0.989339,
		0.517117, 0.855442, -0.028449,
		-0.849110, 0.508540, -0.142825,
		35.383076, 34.288258, 33.326221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959728, 34.618626, 33.810356>,  <35.977455, 33.932281, 33.426197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959728, 34.618626, 33.810356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573376, 34.544655, 33.737820>,  <35.341564, 34.500271, 33.694298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573376, 34.544655, 33.737820>,  <35.959728, 34.618626, 33.810356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573376, 34.544655, 33.737820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223988, 0.244874, 0.943327,
		-0.130042, 0.951756, -0.277940,
		-0.965877, -0.184927, -0.181338,
		35.283611, 34.489178, 33.683418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305996, 34.891399, 33.327751>,  <35.959728, 34.618626, 33.810356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305996, 34.891399, 33.327751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623386, 35.079449, 33.482349>,  <36.813820, 35.192280, 33.575108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623386, 35.079449, 33.482349>,  <36.305996, 34.891399, 33.327751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623386, 35.079449, 33.482349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552035, -0.288603, -0.782282,
		-0.256229, 0.834079, -0.488526,
		0.793476, 0.470127, 0.386493,
		36.861427, 35.220486, 33.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628166, 35.231659, 32.840336>,  <36.305996, 34.891399, 33.327751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628166, 35.231659, 32.840336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939156, 35.206882, 33.090679>,  <37.125748, 35.192017, 33.240887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939156, 35.206882, 33.090679>,  <36.628166, 35.231659, 32.840336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939156, 35.206882, 33.090679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605133, -0.197399, -0.771264,
		0.171320, 0.978364, -0.115987,
		0.777472, -0.061946, 0.625859,
		37.172398, 35.188297, 33.278439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063854, 35.683220, 32.530209>,  <36.628166, 35.231659, 32.840336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063854, 35.683220, 32.530209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276749, 35.444374, 32.770267>,  <37.404488, 35.301067, 32.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276749, 35.444374, 32.770267>,  <37.063854, 35.683220, 32.530209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276749, 35.444374, 32.770267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651445, -0.163876, -0.740786,
		0.540685, 0.785236, 0.301768,
		0.532239, -0.597118, 0.600143,
		37.436420, 35.265240, 32.950310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824554, 35.924686, 32.430397>,  <37.063854, 35.683220, 32.530209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824554, 35.924686, 32.430397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839043, 35.563915, 32.602547>,  <37.847736, 35.347454, 32.705837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839043, 35.563915, 32.602547>,  <37.824554, 35.924686, 32.430397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839043, 35.563915, 32.602547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706477, -0.281481, -0.649353,
		0.706809, 0.327567, 0.626993,
		0.036220, -0.901924, 0.430372,
		37.849907, 35.293339, 32.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478626, 35.868282, 32.712036>,  <37.824554, 35.924686, 32.430397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478626, 35.868282, 32.712036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345592, 35.493740, 32.667095>,  <38.265770, 35.269016, 32.640129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345592, 35.493740, 32.667095>,  <38.478626, 35.868282, 32.712036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345592, 35.493740, 32.667095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793315, -0.213360, -0.570201,
		0.509939, -0.278776, 0.813786,
		-0.332587, -0.936355, -0.112357,
		38.245815, 35.212833, 32.633389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065403, 35.527115, 32.670109>,  <38.478626, 35.868282, 32.712036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065403, 35.527115, 32.670109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785885, 35.305698, 32.488884>,  <38.618172, 35.172848, 32.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785885, 35.305698, 32.488884>,  <39.065403, 35.527115, 32.670109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785885, 35.305698, 32.488884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643317, -0.209394, -0.736408,
		0.312766, -0.806066, 0.502429,
		-0.698799, -0.553544, -0.453065,
		38.576244, 35.139637, 32.352962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450111, 35.045891, 32.325874>,  <39.065403, 35.527115, 32.670109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450111, 35.045891, 32.325874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104855, 34.977173, 32.135941>,  <38.897701, 34.935940, 32.021980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104855, 34.977173, 32.135941>,  <39.450111, 35.045891, 32.325874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104855, 34.977173, 32.135941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499754, -0.155996, -0.852004,
		0.072300, -0.972703, 0.220504,
		-0.863145, -0.171798, -0.474834,
		38.845913, 34.925632, 31.993490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554672, 34.519413, 31.925167>,  <39.450111, 35.045891, 32.325874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554672, 34.519413, 31.925167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231285, 34.672173, 31.746046>,  <39.037251, 34.763828, 31.638573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231285, 34.672173, 31.746046>,  <39.554672, 34.519413, 31.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231285, 34.672173, 31.746046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385217, -0.231867, -0.893222,
		-0.444957, -0.894643, 0.040341,
		-0.808469, 0.381905, -0.447803,
		38.988743, 34.786743, 31.611706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458332, 34.056156, 31.383059>,  <39.554672, 34.519413, 31.925167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458332, 34.056156, 31.383059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259632, 34.383511, 31.267483>,  <39.140411, 34.579922, 31.198137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259632, 34.383511, 31.267483>,  <39.458332, 34.056156, 31.383059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259632, 34.383511, 31.267483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359590, -0.108923, -0.926731,
		-0.789894, -0.564255, -0.240175,
		-0.496752, 0.818384, -0.288938,
		39.110607, 34.629025, 31.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144455, 33.897243, 30.715649>,  <39.458332, 34.056156, 31.383059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144455, 33.897243, 30.715649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194199, 34.293919, 30.728907>,  <39.224045, 34.531921, 30.736862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194199, 34.293919, 30.728907>,  <39.144455, 33.897243, 30.715649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194199, 34.293919, 30.728907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340899, -0.011330, -0.940032,
		-0.931839, 0.128199, -0.339473,
		0.124358, 0.991684, 0.033145,
		39.231506, 34.591423, 30.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853992, 34.063782, 30.183170>,  <39.144455, 33.897243, 30.715649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853992, 34.063782, 30.183170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085430, 34.383518, 30.248026>,  <39.224293, 34.575359, 30.286940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085430, 34.383518, 30.248026>,  <38.853992, 34.063782, 30.183170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085430, 34.383518, 30.248026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192911, 0.059032, -0.979439,
		-0.792474, 0.597976, -0.120046,
		0.578594, 0.799338, 0.162137,
		39.259007, 34.623318, 30.296667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822922, 34.424778, 29.509783>,  <38.853992, 34.063782, 30.183170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822922, 34.424778, 29.509783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129791, 34.610512, 29.686800>,  <39.313911, 34.721951, 29.793011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129791, 34.610512, 29.686800>,  <38.822922, 34.424778, 29.509783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129791, 34.610512, 29.686800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391833, 0.206997, -0.896448,
		-0.507855, 0.861131, -0.023139,
		0.767170, 0.464333, 0.442544,
		39.359943, 34.749813, 29.819563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790226, 35.119541, 29.357534>,  <38.822922, 34.424778, 29.509783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790226, 35.119541, 29.357534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168419, 35.004265, 29.418205>,  <39.395336, 34.935101, 29.454607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168419, 35.004265, 29.418205>,  <38.790226, 35.119541, 29.357534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168419, 35.004265, 29.418205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229160, 0.257814, -0.938626,
		0.231394, 0.922215, 0.309800,
		0.945485, -0.288186, 0.151678,
		39.452065, 34.917809, 29.463709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267193, 35.586555, 28.989225>,  <38.790226, 35.119541, 29.357534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267193, 35.586555, 28.989225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495533, 35.264488, 29.053516>,  <39.632538, 35.071247, 29.092091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495533, 35.264488, 29.053516>,  <39.267193, 35.586555, 28.989225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495533, 35.264488, 29.053516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426650, 0.123643, -0.895925,
		0.701497, 0.580015, 0.414107,
		0.570851, -0.805168, 0.160728,
		39.666790, 35.022938, 29.101734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946434, 35.827606, 28.739332>,  <39.267193, 35.586555, 28.989225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946434, 35.827606, 28.739332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969486, 35.428291, 28.735132>,  <39.983318, 35.188702, 28.732613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969486, 35.428291, 28.735132>,  <39.946434, 35.827606, 28.739332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969486, 35.428291, 28.735132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580019, 0.042043, -0.813517,
		0.812562, 0.040793, 0.581446,
		0.057632, -0.998283, -0.010502,
		39.986774, 35.128807, 28.731981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591187, 35.742485, 28.451433>,  <39.946434, 35.827606, 28.739332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591187, 35.742485, 28.451433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452927, 35.367996, 28.426090>,  <40.369972, 35.143303, 28.410885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452927, 35.367996, 28.426090>,  <40.591187, 35.742485, 28.451433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452927, 35.367996, 28.426090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578360, -0.159384, -0.800061,
		0.738936, -0.313184, 0.596564,
		-0.345649, -0.936223, -0.063358,
		40.349232, 35.087128, 28.407084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190960, 35.301292, 28.259853>,  <40.591187, 35.742485, 28.451433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190960, 35.301292, 28.259853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854568, 35.107391, 28.163710>,  <40.652733, 34.991051, 28.106024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854568, 35.107391, 28.163710>,  <41.190960, 35.301292, 28.259853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854568, 35.107391, 28.163710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470251, -0.435116, -0.767814,
		0.267614, -0.758744, 0.593878,
		-0.840980, -0.484749, -0.240357,
		40.602276, 34.961967, 28.091602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399654, 34.556335, 28.076429>,  <41.190960, 35.301292, 28.259853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399654, 34.556335, 28.076429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069611, 34.649014, 27.870317>,  <40.871586, 34.704620, 27.746651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069611, 34.649014, 27.870317>,  <41.399654, 34.556335, 28.076429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069611, 34.649014, 27.870317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431378, -0.330606, -0.839412,
		-0.364851, -0.914884, 0.172832,
		-0.825104, 0.231704, -0.515283,
		40.822079, 34.718521, 27.715733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328415, 34.019962, 27.673120>,  <41.399654, 34.556335, 28.076429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328415, 34.019962, 27.673120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094181, 34.296055, 27.503103>,  <40.953640, 34.461712, 27.401093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094181, 34.296055, 27.503103>,  <41.328415, 34.019962, 27.673120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094181, 34.296055, 27.503103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320303, -0.284654, -0.903536,
		-0.744643, -0.665243, -0.054395,
		-0.585588, 0.690234, -0.425045,
		40.918503, 34.503124, 27.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183098, 33.699879, 27.053234>,  <41.328415, 34.019962, 27.673120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183098, 33.699879, 27.053234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074409, 34.081757, 27.004696>,  <41.009197, 34.310883, 26.975573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074409, 34.081757, 27.004696>,  <41.183098, 33.699879, 27.053234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074409, 34.081757, 27.004696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160309, -0.079427, -0.983866,
		-0.948930, -0.286791, -0.131464,
		-0.271722, 0.954695, -0.121346,
		40.992893, 34.368164, 26.968292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570190, 33.709637, 26.554358>,  <41.183098, 33.699879, 27.053234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570190, 33.709637, 26.554358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732845, 34.074707, 26.538052>,  <40.830437, 34.293751, 26.528269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732845, 34.074707, 26.538052>,  <40.570190, 33.709637, 26.554358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732845, 34.074707, 26.538052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036449, -0.060792, -0.997485,
		-0.912862, 0.404128, -0.057987,
		0.406637, 0.912680, -0.040764,
		40.854836, 34.348511, 26.525822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117714, 34.106258, 26.072691>,  <40.570190, 33.709637, 26.554358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117714, 34.106258, 26.072691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499008, 34.222607, 26.105532>,  <40.727783, 34.292416, 26.125237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499008, 34.222607, 26.105532>,  <40.117714, 34.106258, 26.072691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499008, 34.222607, 26.105532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146341, -0.206502, -0.967440,
		-0.264447, 0.934211, -0.239411,
		0.953232, 0.290873, 0.082104,
		40.784977, 34.309868, 26.130163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221291, 34.295437, 25.427551>,  <40.117714, 34.106258, 26.072691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221291, 34.295437, 25.427551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586666, 34.318180, 25.588743>,  <40.805893, 34.331825, 25.685457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586666, 34.318180, 25.588743>,  <40.221291, 34.295437, 25.427551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586666, 34.318180, 25.588743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401385, -0.289329, -0.869010,
		0.067187, 0.955540, -0.287105,
		0.913442, 0.056854, 0.402978,
		40.860699, 34.335236, 25.709637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696335, 34.809273, 25.041315>,  <40.221291, 34.295437, 25.427551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696335, 34.809273, 25.041315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901878, 34.524181, 25.232296>,  <41.025204, 34.353127, 25.346884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901878, 34.524181, 25.232296>,  <40.696335, 34.809273, 25.041315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901878, 34.524181, 25.232296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325554, -0.352908, -0.877195,
		0.793700, 0.606194, 0.050686,
		0.513862, -0.712731, 0.477452,
		41.056038, 34.310364, 25.375532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268433, 34.866173, 24.752405>,  <40.696335, 34.809273, 25.041315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268433, 34.866173, 24.752405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264503, 34.494930, 24.901278>,  <41.262146, 34.272182, 24.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264503, 34.494930, 24.901278>,  <41.268433, 34.866173, 24.752405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264503, 34.494930, 24.901278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382547, -0.347373, -0.856148,
		0.923884, 0.133970, 0.358456,
		-0.009819, -0.928108, 0.372182,
		41.261559, 34.216499, 25.012932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826050, 34.643368, 24.422417>,  <41.268433, 34.866173, 24.752405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826050, 34.643368, 24.422417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666714, 34.301785, 24.556324>,  <41.571110, 34.096832, 24.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666714, 34.301785, 24.556324>,  <41.826050, 34.643368, 24.422417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666714, 34.301785, 24.556324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261673, -0.455611, -0.850850,
		0.879118, -0.251331, 0.404949,
		-0.398344, -0.853962, 0.334769,
		41.547211, 34.045597, 24.656755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320812, 34.091919, 24.259830>,  <41.826050, 34.643368, 24.422417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320812, 34.091919, 24.259830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973763, 33.899769, 24.311169>,  <41.765533, 33.784477, 24.341972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973763, 33.899769, 24.311169>,  <42.320812, 34.091919, 24.259830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973763, 33.899769, 24.311169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267183, -0.668106, -0.694441,
		0.419341, -0.568220, 0.708011,
		-0.867621, -0.480376, 0.128345,
		41.713474, 33.755657, 24.349672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438004, 33.387691, 24.312962>,  <42.320812, 34.091919, 24.259830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438004, 33.387691, 24.312962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056389, 33.440723, 24.205452>,  <41.827419, 33.472542, 24.140947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056389, 33.440723, 24.205452>,  <42.438004, 33.387691, 24.312962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056389, 33.440723, 24.205452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037645, -0.836711, -0.546349,
		-0.297318, -0.531355, 0.793262,
		-0.954036, 0.132577, -0.268772,
		41.770180, 33.480495, 24.124821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209633, 32.811886, 24.375048>,  <42.438004, 33.387691, 24.312962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209633, 32.811886, 24.375048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959743, 32.989613, 24.118202>,  <41.809811, 33.096249, 23.964094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959743, 32.989613, 24.118202>,  <42.209633, 32.811886, 24.375048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959743, 32.989613, 24.118202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069506, -0.787422, -0.612483,
		-0.777742, -0.427266, 0.461044,
		-0.624729, 0.444308, -0.642109,
		41.772327, 33.122906, 23.925568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620815, 32.368042, 24.290705>,  <42.209633, 32.811886, 24.375048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620815, 32.368042, 24.290705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616600, 32.585403, 23.954943>,  <41.614071, 32.715820, 23.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616600, 32.585403, 23.954943>,  <41.620815, 32.368042, 24.290705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616600, 32.585403, 23.954943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184888, -0.823917, -0.535702,
		-0.982703, -0.160842, -0.091785,
		-0.010540, 0.543406, -0.839404,
		41.613438, 32.748425, 23.703121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224724, 31.950134, 23.795307>,  <41.620815, 32.368042, 24.290705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224724, 31.950134, 23.795307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422665, 32.211304, 23.565939>,  <41.541431, 32.368004, 23.428318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422665, 32.211304, 23.565939>,  <41.224724, 31.950134, 23.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422665, 32.211304, 23.565939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322258, -0.750715, -0.576694,
		-0.807011, 0.100591, -0.581905,
		0.494856, 0.652923, -0.573420,
		41.571121, 32.407181, 23.393913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075813, 31.857496, 23.155880>,  <41.224724, 31.950134, 23.795307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075813, 31.857496, 23.155880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411861, 32.063705, 23.088432>,  <41.613491, 32.187431, 23.047964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411861, 32.063705, 23.088432>,  <41.075813, 31.857496, 23.155880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411861, 32.063705, 23.088432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271249, -0.668529, -0.692455,
		-0.469704, 0.536008, -0.701480,
		0.840120, 0.515524, -0.168619,
		41.663898, 32.218361, 23.037846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204445, 31.877178, 22.406801>,  <41.075813, 31.857496, 23.155880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204445, 31.877178, 22.406801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563995, 32.003780, 22.528021>,  <41.779728, 32.079742, 22.600752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563995, 32.003780, 22.528021>,  <41.204445, 31.877178, 22.406801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563995, 32.003780, 22.528021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434777, -0.557989, -0.706836,
		-0.054619, 0.767120, -0.639175,
		0.898880, 0.316505, 0.303049,
		41.833660, 32.098732, 22.618937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490067, 32.131550, 21.787687>,  <41.204445, 31.877178, 22.406801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490067, 32.131550, 21.787687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793423, 32.031708, 22.028534>,  <41.975437, 31.971802, 22.173042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793423, 32.031708, 22.028534>,  <41.490067, 32.131550, 21.787687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793423, 32.031708, 22.028534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495012, -0.380408, -0.781187,
		0.424038, 0.890498, -0.164940,
		0.758390, -0.249606, 0.602114,
		42.020939, 31.956825, 22.209167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109692, 32.217686, 21.390224>,  <41.490067, 32.131550, 21.787687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109692, 32.217686, 21.390224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243126, 31.993387, 21.693350>,  <42.323189, 31.858807, 21.875225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243126, 31.993387, 21.693350>,  <42.109692, 32.217686, 21.390224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243126, 31.993387, 21.693350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576424, -0.514754, -0.634637,
		0.745959, 0.648528, 0.151513,
		0.333588, -0.560749, 0.757812,
		42.343201, 31.825163, 21.920694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808167, 32.147778, 21.216351>,  <42.109692, 32.217686, 21.390224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808167, 32.147778, 21.216351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741795, 31.860996, 21.487185>,  <42.701969, 31.688929, 21.649685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741795, 31.860996, 21.487185>,  <42.808167, 32.147778, 21.216351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741795, 31.860996, 21.487185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452532, -0.665403, -0.593678,
		0.876174, 0.207892, 0.434856,
		-0.165934, -0.716952, 0.677087,
		42.692013, 31.645910, 21.690311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424915, 31.780651, 21.204008>,  <42.808167, 32.147778, 21.216351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424915, 31.780651, 21.204008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153336, 31.539413, 21.371483>,  <42.990387, 31.394670, 21.471968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153336, 31.539413, 21.371483>,  <43.424915, 31.780651, 21.204008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153336, 31.539413, 21.371483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359027, -0.770176, -0.527190,
		0.640410, -0.207616, 0.739439,
		-0.678952, -0.603096, 0.418688,
		42.949650, 31.358484, 21.497089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839458, 31.264875, 21.474722>,  <43.424915, 31.780651, 21.204008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839458, 31.264875, 21.474722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463276, 31.151407, 21.399818>,  <43.237564, 31.083326, 21.354876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463276, 31.151407, 21.399818>,  <43.839458, 31.264875, 21.474722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463276, 31.151407, 21.399818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339641, -0.762591, -0.550544,
		0.013372, -0.581365, 0.813533,
		-0.940460, -0.283671, -0.187258,
		43.181137, 31.066305, 21.343641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137939, 31.729586, 21.883627>,  <43.839458, 31.264875, 21.474722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137939, 31.729586, 21.883627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351162, 31.419500, 22.019211>,  <44.479095, 31.233450, 22.100561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351162, 31.419500, 22.019211>,  <44.137939, 31.729586, 21.883627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351162, 31.419500, 22.019211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173561, 0.291917, 0.940564,
		-0.828086, -0.560205, 0.021062,
		0.533057, -0.775213, 0.338962,
		44.511078, 31.186937, 22.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675568, 31.099733, 22.174347>,  <44.137939, 31.729586, 21.883627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675568, 31.099733, 22.174347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039513, 31.112453, 22.339819>,  <44.257881, 31.120087, 22.439102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039513, 31.112453, 22.339819>,  <43.675568, 31.099733, 22.174347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039513, 31.112453, 22.339819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413079, -0.023923, 0.910381,
		0.038857, -0.999208, -0.008626,
		0.909866, 0.031811, 0.413681,
		44.312473, 31.121994, 22.463923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616745, 30.714289, 22.825624>,  <43.675568, 31.099733, 22.174347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616745, 30.714289, 22.825624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946651, 30.933348, 22.881973>,  <44.144596, 31.064783, 22.915783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946651, 30.933348, 22.881973>,  <43.616745, 30.714289, 22.825624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946651, 30.933348, 22.881973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275800, 0.172101, 0.945683,
		0.493658, -0.818817, 0.292985,
		0.824764, 0.547649, 0.140871,
		44.194080, 31.097643, 22.924234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912315, 30.493250, 23.502211>,  <43.616745, 30.714289, 22.825624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912315, 30.493250, 23.502211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094368, 30.840527, 23.423117>,  <44.203598, 31.048893, 23.375660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094368, 30.840527, 23.423117>,  <43.912315, 30.493250, 23.502211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094368, 30.840527, 23.423117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172747, 0.303944, 0.936897,
		0.873508, -0.392251, 0.288311,
		0.455129, 0.868192, -0.197737,
		44.230907, 31.100985, 23.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243500, 30.516422, 24.038275>,  <43.912315, 30.493250, 23.502211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243500, 30.516422, 24.038275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241062, 30.890255, 23.895998>,  <44.239597, 31.114555, 23.810633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241062, 30.890255, 23.895998>,  <44.243500, 30.516422, 24.038275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241062, 30.890255, 23.895998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126533, 0.352117, 0.927363,
		0.991944, 0.050661, 0.116108,
		-0.006098, 0.934584, -0.355691,
		44.239231, 31.170630, 23.789291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666100, 30.947309, 24.451044>,  <44.243500, 30.516422, 24.038275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666100, 30.947309, 24.451044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406422, 31.188581, 24.265694>,  <44.250614, 31.333345, 24.154484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406422, 31.188581, 24.265694>,  <44.666100, 30.947309, 24.451044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406422, 31.188581, 24.265694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176933, 0.472743, 0.863255,
		0.739758, 0.642406, -0.200179,
		-0.649194, 0.603182, -0.463378,
		44.211662, 31.369535, 24.126680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890213, 31.664879, 24.577644>,  <44.666100, 30.947309, 24.451044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890213, 31.664879, 24.577644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500805, 31.646475, 24.488079>,  <44.267159, 31.635433, 24.434340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500805, 31.646475, 24.488079>,  <44.890213, 31.664879, 24.577644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500805, 31.646475, 24.488079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213086, 0.537261, 0.816054,
		0.082753, 0.842160, -0.532840,
		-0.973523, -0.046010, -0.223913,
		44.208748, 31.632671, 24.420906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759674, 32.327030, 24.728045>,  <44.890213, 31.664879, 24.577644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759674, 32.327030, 24.728045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402061, 32.156364, 24.673399>,  <44.187492, 32.053967, 24.640612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402061, 32.156364, 24.673399>,  <44.759674, 32.327030, 24.728045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402061, 32.156364, 24.673399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338137, 0.442613, 0.830516,
		-0.293880, 0.788705, -0.539981,
		-0.894034, -0.426660, -0.136615,
		44.133850, 32.028366, 24.632414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276077, 32.809875, 24.741625>,  <44.759674, 32.327030, 24.728045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276077, 32.809875, 24.741625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089928, 32.470993, 24.844133>,  <43.978237, 32.267666, 24.905638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089928, 32.470993, 24.844133>,  <44.276077, 32.809875, 24.741625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089928, 32.470993, 24.844133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325615, 0.433098, 0.840476,
		-0.823046, 0.307688, -0.477414,
		-0.465371, -0.847204, 0.256272,
		43.950317, 32.216831, 24.921015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648361, 33.035011, 25.000862>,  <44.276077, 32.809875, 24.741625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648361, 33.035011, 25.000862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681835, 32.666405, 25.152554>,  <43.701920, 32.445240, 25.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681835, 32.666405, 25.152554>,  <43.648361, 33.035011, 25.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681835, 32.666405, 25.152554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352718, 0.328533, 0.876160,
		-0.931980, -0.207077, -0.297542,
		0.083680, -0.921512, 0.379227,
		43.706940, 32.389950, 25.266321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027584, 32.958050, 25.365803>,  <43.648361, 33.035011, 25.000862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027584, 32.958050, 25.365803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296398, 32.701988, 25.514706>,  <43.457687, 32.548351, 25.604048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296398, 32.701988, 25.514706>,  <43.027584, 32.958050, 25.365803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296398, 32.701988, 25.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311713, 0.211445, 0.926351,
		-0.671720, -0.738574, -0.057447,
		0.672032, -0.640155, 0.372255,
		43.498009, 32.509941, 25.626383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648090, 32.775715, 25.905334>,  <43.027584, 32.958050, 25.365803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648090, 32.775715, 25.905334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000931, 32.604729, 25.984499>,  <43.212635, 32.502136, 26.031998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000931, 32.604729, 25.984499>,  <42.648090, 32.775715, 25.905334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000931, 32.604729, 25.984499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120007, 0.202355, 0.971931,
		-0.455514, -0.881094, 0.127200,
		0.882103, -0.427463, 0.197913,
		43.265560, 32.476490, 26.043873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606583, 32.186600, 26.315102>,  <42.648090, 32.775715, 25.905334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606583, 32.186600, 26.315102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953022, 32.368992, 26.397036>,  <43.160885, 32.478428, 26.446196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953022, 32.368992, 26.397036>,  <42.606583, 32.186600, 26.315102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953022, 32.368992, 26.397036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263629, 0.068510, 0.962188,
		0.424710, -0.887347, 0.179547,
		0.866095, 0.455985, 0.204833,
		43.212852, 32.505787, 26.458487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838894, 31.751221, 26.866758>,  <42.606583, 32.186600, 26.315102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838894, 31.751221, 26.866758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056095, 32.086967, 26.876633>,  <43.186417, 32.288414, 26.882557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056095, 32.086967, 26.876633>,  <42.838894, 31.751221, 26.866758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056095, 32.086967, 26.876633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114171, 0.044670, 0.992456,
		0.831932, -0.541727, 0.120087,
		0.543005, 0.839367, 0.024687,
		43.218998, 32.338776, 26.884039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352753, 31.698528, 27.424608>,  <42.838894, 31.751221, 26.866758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352753, 31.698528, 27.424608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314411, 32.091640, 27.361416>,  <43.291405, 32.327507, 27.323500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314411, 32.091640, 27.361416>,  <43.352753, 31.698528, 27.424608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314411, 32.091640, 27.361416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108940, 0.147402, 0.983059,
		0.989416, 0.111441, 0.092935,
		-0.095855, 0.982778, -0.157982,
		43.285656, 32.386475, 27.314022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600430, 32.054935, 28.045208>,  <43.352753, 31.698528, 27.424608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600430, 32.054935, 28.045208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420712, 32.358822, 27.857182>,  <43.312881, 32.541153, 27.744366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420712, 32.358822, 27.857182>,  <43.600430, 32.054935, 28.045208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420712, 32.358822, 27.857182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397993, 0.300856, 0.866653,
		0.799834, 0.576466, 0.167189,
		-0.449296, 0.759718, -0.470065,
		43.285923, 32.586739, 27.716162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851471, 32.677399, 28.327061>,  <43.600430, 32.054935, 28.045208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851471, 32.677399, 28.327061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491703, 32.738026, 28.163071>,  <43.275845, 32.774403, 28.064676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491703, 32.738026, 28.163071>,  <43.851471, 32.677399, 28.327061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491703, 32.738026, 28.163071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314903, 0.425783, 0.848260,
		0.303128, 0.892041, -0.335227,
		-0.899416, 0.151567, -0.409973,
		43.221878, 32.783497, 28.040079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814724, 33.425133, 28.479521>,  <43.851471, 32.677399, 28.327061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814724, 33.425133, 28.479521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459946, 33.263878, 28.389353>,  <43.247078, 33.167126, 28.335253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459946, 33.263878, 28.389353>,  <43.814724, 33.425133, 28.479521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459946, 33.263878, 28.389353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421107, 0.505312, 0.753212,
		-0.189737, 0.762983, -0.617946,
		-0.886944, -0.403134, -0.225421,
		43.193863, 33.142937, 28.321726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408676, 34.022495, 28.648399>,  <43.814724, 33.425133, 28.479521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408676, 34.022495, 28.648399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141964, 33.724480, 28.641342>,  <42.981937, 33.545670, 28.637108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141964, 33.724480, 28.641342>,  <43.408676, 34.022495, 28.648399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141964, 33.724480, 28.641342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391804, 0.330313, 0.858710,
		-0.633948, 0.579486, -0.512158,
		-0.666783, -0.745043, -0.017644,
		42.941929, 33.500965, 28.636049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808075, 34.349285, 28.801643>,  <43.408676, 34.022495, 28.648399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808075, 34.349285, 28.801643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758705, 33.960777, 28.883036>,  <42.729084, 33.727673, 28.931871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758705, 33.960777, 28.883036>,  <42.808075, 34.349285, 28.801643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758705, 33.960777, 28.883036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509665, 0.237982, 0.826805,
		-0.851474, -0.001658, -0.524395,
		-0.123426, -0.971268, 0.203480,
		42.721676, 33.669395, 28.944080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057014, 34.344761, 29.055317>,  <42.808075, 34.349285, 28.801643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057014, 34.344761, 29.055317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196732, 33.978516, 29.134954>,  <42.280563, 33.758766, 29.182737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196732, 33.978516, 29.134954>,  <42.057014, 34.344761, 29.055317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196732, 33.978516, 29.134954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635199, -0.075175, 0.768681,
		-0.688850, -0.394962, -0.607857,
		0.349295, -0.915617, 0.199095,
		42.301521, 33.703831, 29.194683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559322, 33.871983, 29.008156>,  <42.057014, 34.344761, 29.055317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559322, 33.871983, 29.008156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840923, 33.724552, 29.250982>,  <42.009884, 33.636093, 29.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840923, 33.724552, 29.250982>,  <41.559322, 33.871983, 29.008156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840923, 33.724552, 29.250982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670611, -0.063606, 0.739077,
		-0.233794, -0.927418, -0.291951,
		0.704003, -0.368577, 0.607067,
		42.052124, 33.613979, 29.433102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120449, 33.458454, 29.446627>,  <41.559322, 33.871983, 29.008156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120449, 33.458454, 29.446627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474804, 33.526852, 29.619122>,  <41.687416, 33.567890, 29.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474804, 33.526852, 29.619122>,  <41.120449, 33.458454, 29.446627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474804, 33.526852, 29.619122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442861, 0.034955, 0.895909,
		0.138123, -0.984652, 0.106693,
		0.885887, 0.170996, 0.431235,
		41.740570, 33.578152, 29.748491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052837, 33.013622, 29.971790>,  <41.120449, 33.458454, 29.446627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052837, 33.013622, 29.971790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360237, 33.256783, 30.051657>,  <41.544678, 33.402679, 30.099577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360237, 33.256783, 30.051657>,  <41.052837, 33.013622, 29.971790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360237, 33.256783, 30.051657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384496, 0.189312, 0.903506,
		0.511442, -0.771115, 0.379221,
		0.768498, 0.607900, 0.199668,
		41.590786, 33.439152, 30.111557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431786, 32.790306, 30.577223>,  <41.052837, 33.013622, 29.971790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431786, 32.790306, 30.577223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496052, 33.183014, 30.536594>,  <41.534611, 33.418640, 30.512217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496052, 33.183014, 30.536594>,  <41.431786, 32.790306, 30.577223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496052, 33.183014, 30.536594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322322, 0.149456, 0.934757,
		0.932897, -0.117440, 0.340458,
		0.160661, 0.981769, -0.101573,
		41.544250, 33.477543, 30.506123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738663, 32.978523, 31.185291>,  <41.431786, 32.790306, 30.577223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738663, 32.978523, 31.185291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608017, 33.330437, 31.047132>,  <41.529629, 33.541584, 30.964237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608017, 33.330437, 31.047132>,  <41.738663, 32.978523, 31.185291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608017, 33.330437, 31.047132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175025, 0.302816, 0.936840,
		0.928810, 0.366439, 0.055080,
		-0.326615, 0.879787, -0.345395,
		41.510033, 33.594372, 30.943514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054199, 33.381771, 31.567657>,  <41.738663, 32.978523, 31.185291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054199, 33.381771, 31.567657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758701, 33.612267, 31.427830>,  <41.581402, 33.750565, 31.343933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758701, 33.612267, 31.427830>,  <42.054199, 33.381771, 31.567657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758701, 33.612267, 31.427830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242262, 0.256968, 0.935562,
		0.628940, 0.775830, -0.050232,
		-0.738745, 0.576243, -0.349572,
		41.537079, 33.785141, 31.322958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113445, 34.046539, 31.740967>,  <42.054199, 33.381771, 31.567657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113445, 34.046539, 31.740967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717987, 34.035217, 31.681946>,  <41.480713, 34.028423, 31.646534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717987, 34.035217, 31.681946>,  <42.113445, 34.046539, 31.740967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717987, 34.035217, 31.681946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147425, 0.372032, 0.916438,
		0.028958, 0.927788, -0.371981,
		-0.988649, -0.028301, -0.147553,
		41.421391, 34.026726, 31.637680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863388, 34.627083, 32.136906>,  <42.113445, 34.046539, 31.740967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863388, 34.627083, 32.136906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549858, 34.397991, 32.040909>,  <41.361740, 34.260536, 31.983311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549858, 34.397991, 32.040909>,  <41.863388, 34.627083, 32.136906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549858, 34.397991, 32.040909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427655, 0.217641, 0.877350,
		-0.450247, 0.790328, -0.415522,
		-0.783829, -0.572725, -0.239996,
		41.314709, 34.226173, 31.968910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383881, 34.853863, 32.575073>,  <41.863388, 34.627083, 32.136906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383881, 34.853863, 32.575073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202259, 34.510994, 32.477840>,  <41.093288, 34.305271, 32.419502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202259, 34.510994, 32.477840>,  <41.383881, 34.853863, 32.575073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202259, 34.510994, 32.477840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424733, -0.031593, 0.904767,
		-0.783225, 0.514054, -0.349726,
		-0.454050, -0.857176, -0.243080,
		41.066044, 34.253841, 32.404915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586216, 34.884121, 32.619637>,  <41.383881, 34.853863, 32.575073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586216, 34.884121, 32.619637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702946, 34.505146, 32.672081>,  <40.772984, 34.277760, 32.703548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702946, 34.505146, 32.672081>,  <40.586216, 34.884121, 32.619637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702946, 34.505146, 32.672081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417925, -0.003004, 0.908476,
		-0.860334, -0.319914, -0.396837,
		0.291826, -0.947442, 0.131116,
		40.790493, 34.220913, 32.711414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989262, 34.537682, 32.804485>,  <40.586216, 34.884121, 32.619637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989262, 34.537682, 32.804485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314579, 34.338909, 32.925552>,  <40.509769, 34.219646, 32.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314579, 34.338909, 32.925552>,  <39.989262, 34.537682, 32.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314579, 34.338909, 32.925552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398694, -0.097081, 0.911931,
		-0.423786, -0.862341, -0.277080,
		0.813295, -0.496934, 0.302669,
		40.558567, 34.189831, 33.016354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658348, 34.227993, 33.365200>,  <39.989262, 34.537682, 32.804485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658348, 34.227993, 33.365200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047436, 34.146988, 33.410469>,  <40.280888, 34.098385, 33.437630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047436, 34.146988, 33.410469>,  <39.658348, 34.227993, 33.365200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047436, 34.146988, 33.410469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179581, -0.348480, 0.919952,
		-0.146859, -0.915179, -0.375340,
		0.972720, -0.202507, 0.113171,
		40.339252, 34.086235, 33.444420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644230, 33.569065, 33.655975>,  <39.658348, 34.227993, 33.365200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644230, 33.569065, 33.655975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972794, 33.770603, 33.762878>,  <40.169930, 33.891525, 33.827023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972794, 33.770603, 33.762878>,  <39.644230, 33.569065, 33.655975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972794, 33.770603, 33.762878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239293, -0.120910, 0.963390,
		0.517715, -0.855289, 0.021251,
		0.821407, 0.503847, 0.267261,
		40.219215, 33.921757, 33.843056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957684, 33.199356, 34.090992>,  <39.644230, 33.569065, 33.655975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957684, 33.199356, 34.090992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073345, 33.568123, 34.194103>,  <40.142742, 33.789383, 34.255970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073345, 33.568123, 34.194103>,  <39.957684, 33.199356, 34.090992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073345, 33.568123, 34.194103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178446, -0.212655, 0.960695,
		0.940503, -0.323790, 0.103023,
		0.289155, 0.921921, 0.257782,
		40.160091, 33.844700, 34.271439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369610, 33.030563, 34.666134>,  <39.957684, 33.199356, 34.090992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369610, 33.030563, 34.666134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320915, 33.426182, 34.699512>,  <40.291698, 33.663555, 34.719540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320915, 33.426182, 34.699512>,  <40.369610, 33.030563, 34.666134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320915, 33.426182, 34.699512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112744, -0.069748, 0.991173,
		0.986138, 0.130073, -0.103018,
		-0.121739, 0.989048, 0.083446,
		40.284393, 33.722897, 34.724545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009712, 33.332146, 34.912056>,  <40.369610, 33.030563, 34.666134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009712, 33.332146, 34.912056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704979, 33.566093, 35.023441>,  <40.522141, 33.706463, 35.090275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704979, 33.566093, 35.023441>,  <41.009712, 33.332146, 34.912056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704979, 33.566093, 35.023441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132390, -0.280230, 0.950760,
		0.634103, 0.761185, 0.136058,
		-0.761831, 0.584866, 0.278468,
		40.476429, 33.741554, 35.106983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168880, 33.496441, 35.587837>,  <41.009712, 33.332146, 34.912056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168880, 33.496441, 35.587837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781956, 33.597015, 35.574623>,  <40.549801, 33.657360, 35.566696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781956, 33.597015, 35.574623>,  <41.168880, 33.496441, 35.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781956, 33.597015, 35.574623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071063, -0.143707, 0.987065,
		0.243439, 0.957145, 0.156877,
		-0.967309, 0.251438, -0.033034,
		40.491764, 33.672447, 35.564713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054817, 33.861801, 36.245846>,  <41.168880, 33.496441, 35.587837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054817, 33.861801, 36.245846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699726, 33.741199, 36.106689>,  <40.486671, 33.668839, 36.023193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699726, 33.741199, 36.106689>,  <41.054817, 33.861801, 36.245846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699726, 33.741199, 36.106689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235298, -0.352365, 0.905800,
		-0.395692, 0.885964, 0.241861,
		-0.887729, -0.301509, -0.347893,
		40.433407, 33.650745, 36.002323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469612, 34.232983, 36.610081>,  <41.054817, 33.861801, 36.245846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469612, 34.232983, 36.610081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301559, 33.898315, 36.469524>,  <40.200729, 33.697514, 36.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301559, 33.898315, 36.469524>,  <40.469612, 34.232983, 36.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301559, 33.898315, 36.469524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361086, -0.201117, 0.910587,
		-0.832531, 0.509447, -0.217614,
		-0.420130, -0.836670, -0.351390,
		40.175522, 33.647316, 36.364109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403519, 34.402954, 37.345943>,  <40.469612, 34.232983, 36.610081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403519, 34.402954, 37.345943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422688, 34.664852, 37.647675>,  <40.434189, 34.821991, 37.828712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422688, 34.664852, 37.647675>,  <40.403519, 34.402954, 37.345943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422688, 34.664852, 37.647675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997578, -0.006748, 0.069228,
		0.050417, -0.755818, 0.652837,
		0.047918, 0.654747, 0.754328,
		40.437061, 34.861275, 37.873974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842983, 34.242504, 37.853931>,  <40.403519, 34.402954, 37.345943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842983, 34.242504, 37.853931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963654, 34.614391, 37.938416>,  <40.036057, 34.837524, 37.989105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963654, 34.614391, 37.938416>,  <39.842983, 34.242504, 37.853931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963654, 34.614391, 37.938416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951895, 0.281233, 0.121671,
		0.053722, -0.237754, 0.969839,
		0.301678, 0.929721, 0.211209,
		40.054157, 34.893307, 38.001778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440907, 34.388191, 38.511330>,  <39.842983, 34.242504, 37.853931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440907, 34.388191, 38.511330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554310, 34.734131, 38.345604>,  <39.622353, 34.941696, 38.246166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554310, 34.734131, 38.345604>,  <39.440907, 34.388191, 38.511330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554310, 34.734131, 38.345604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951799, 0.306508, -0.011481,
		0.117062, 0.397600, 0.910061,
		0.283506, 0.864851, -0.414316,
		39.639362, 34.993587, 38.221310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301998, 34.855278, 38.925407>,  <39.440907, 34.388191, 38.511330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301998, 34.855278, 38.925407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302990, 35.049137, 38.575523>,  <39.303585, 35.165451, 38.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302990, 35.049137, 38.575523>,  <39.301998, 34.855278, 38.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302990, 35.049137, 38.575523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922127, 0.339516, 0.185500,
		0.386879, 0.806131, 0.447747,
		0.002480, 0.484646, -0.874707,
		39.303734, 35.194530, 38.313110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942837, 35.508053, 39.111248>,  <39.301998, 34.855278, 38.925407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942837, 35.508053, 39.111248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932930, 35.454918, 38.714916>,  <38.926987, 35.423038, 38.477116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932930, 35.454918, 38.714916>,  <38.942837, 35.508053, 39.111248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932930, 35.454918, 38.714916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931025, 0.364060, -0.025540,
		0.364114, 0.921858, -0.132661,
		-0.024753, -0.132810, -0.990832,
		38.925503, 35.415066, 38.417667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759842, 36.058060, 38.856102>,  <38.942837, 35.508053, 39.111248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759842, 36.058060, 38.856102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660213, 35.806320, 38.561653>,  <38.600437, 35.655277, 38.384983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660213, 35.806320, 38.561653>,  <38.759842, 36.058060, 38.856102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660213, 35.806320, 38.561653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943050, 0.330653, 0.036398,
		0.220495, 0.703267, -0.675868,
		-0.249075, -0.629351, -0.736123,
		38.585491, 35.617516, 38.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309135, 36.327892, 38.276272>,  <38.759842, 36.058060, 38.856102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309135, 36.327892, 38.276272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225029, 35.937347, 38.296314>,  <38.174564, 35.703022, 38.308338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225029, 35.937347, 38.296314>,  <38.309135, 36.327892, 38.276272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225029, 35.937347, 38.296314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958082, 0.215989, 0.188223,
		-0.194595, -0.008428, -0.980847,
		-0.210266, -0.976359, 0.050105,
		38.161949, 35.644440, 38.311344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596569, 36.224617, 37.903542>,  <38.309135, 36.327892, 38.276272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596569, 36.224617, 37.903542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687519, 35.950336, 38.180126>,  <37.742088, 35.785770, 38.346077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687519, 35.950336, 38.180126>,  <37.596569, 36.224617, 37.903542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687519, 35.950336, 38.180126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957714, -0.028908, 0.286267,
		-0.176305, -0.727311, -0.663276,
		0.227379, -0.685699, 0.691459,
		37.755733, 35.744625, 38.387566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018421, 36.022507, 38.019604>,  <37.596569, 36.224617, 37.903542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018421, 36.022507, 38.019604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184517, 35.822586, 38.323650>,  <37.284172, 35.702633, 38.506081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184517, 35.822586, 38.323650>,  <37.018421, 36.022507, 38.019604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184517, 35.822586, 38.323650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904077, -0.133840, 0.405872,
		-0.101117, -0.855742, -0.507426,
		0.415236, -0.499793, 0.760123,
		37.309086, 35.672646, 38.551685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343136, 35.792862, 38.179394>,  <37.018421, 36.022507, 38.019604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343136, 35.792862, 38.179394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473526, 36.169781, 38.209900>,  <36.551758, 36.395931, 38.228203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473526, 36.169781, 38.209900>,  <36.343136, 35.792862, 38.179394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473526, 36.169781, 38.209900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945336, 0.324129, 0.035771,
		0.008985, -0.083761, 0.996445,
		0.325973, 0.942297, 0.076270,
		36.571320, 36.452469, 38.232780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027519, 35.197510, 37.692783>,  <36.343136, 35.792862, 38.179394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027519, 35.197510, 37.692783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928127, 35.203033, 37.305367>,  <35.868492, 35.206348, 37.072918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928127, 35.203033, 37.305367>,  <36.027519, 35.197510, 37.692783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928127, 35.203033, 37.305367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929612, -0.284357, 0.234442,
		-0.272174, 0.958619, 0.083490,
		-0.248482, 0.013804, -0.968538,
		35.853584, 35.207176, 37.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497250, 35.653164, 37.513226>,  <36.027519, 35.197510, 37.692783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497250, 35.653164, 37.513226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487629, 35.331860, 37.275166>,  <35.481857, 35.139076, 37.132332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487629, 35.331860, 37.275166>,  <35.497250, 35.653164, 37.513226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487629, 35.331860, 37.275166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992158, -0.053865, 0.112790,
		-0.122657, 0.593192, -0.795662,
		-0.024047, -0.803257, -0.595147,
		35.480415, 35.090881, 37.096622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110962, 35.834133, 36.997684>,  <35.497250, 35.653164, 37.513226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110962, 35.834133, 36.997684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082520, 35.437153, 37.037651>,  <35.065453, 35.198963, 37.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082520, 35.437153, 37.037651>,  <35.110962, 35.834133, 36.997684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082520, 35.437153, 37.037651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993514, 0.061556, -0.095608,
		0.088736, -0.106066, -0.990392,
		-0.071105, -0.992452, 0.099915,
		35.061188, 35.139416, 37.067627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857445, 35.578312, 36.399895>,  <35.110962, 35.834133, 36.997684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857445, 35.578312, 36.399895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770519, 35.306789, 36.680466>,  <34.718365, 35.143875, 36.848808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770519, 35.306789, 36.680466>,  <34.857445, 35.578312, 36.399895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770519, 35.306789, 36.680466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966001, 0.046453, -0.254331,
		0.140057, -0.732849, -0.665820,
		-0.217315, -0.678803, 0.701427,
		34.705326, 35.103149, 36.890896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588207, 34.899311, 36.090290>,  <34.857445, 35.578312, 36.399895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588207, 34.899311, 36.090290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467148, 34.949436, 36.468224>,  <34.394512, 34.979511, 36.694984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467148, 34.949436, 36.468224>,  <34.588207, 34.899311, 36.090290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467148, 34.949436, 36.468224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952193, -0.083055, -0.293989,
		0.041633, -0.988635, 0.144456,
		-0.302646, 0.125310, 0.944830,
		34.376354, 34.987030, 36.751671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963272, 34.909977, 35.900417>,  <34.588207, 34.899311, 36.090290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963272, 34.909977, 35.900417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941162, 34.931633, 36.299217>,  <33.927895, 34.944626, 36.538498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941162, 34.931633, 36.299217>,  <33.963272, 34.909977, 35.900417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941162, 34.931633, 36.299217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964384, 0.255787, -0.067357,
		-0.258667, -0.965216, 0.038069,
		-0.055277, 0.054136, 0.997002,
		33.924580, 34.947872, 36.598316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511616, 34.418221, 36.108112>,  <33.963272, 34.909977, 35.900417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511616, 34.418221, 36.108112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524822, 34.696461, 36.395180>,  <33.532745, 34.863403, 36.567421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524822, 34.696461, 36.395180>,  <33.511616, 34.418221, 36.108112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524822, 34.696461, 36.395180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999415, 0.029375, 0.017509,
		-0.008902, -0.717830, 0.696162,
		0.033018, 0.695599, 0.717671,
		33.534729, 34.905140, 36.610481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121662, 34.107693, 36.717552>,  <33.511616, 34.418221, 36.108112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121662, 34.107693, 36.717552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115475, 34.507603, 36.711761>,  <33.111763, 34.747547, 36.708286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115475, 34.507603, 36.711761>,  <33.121662, 34.107693, 36.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115475, 34.507603, 36.711761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996452, -0.014219, 0.082952,
		0.082728, 0.015705, 0.996449,
		-0.015471, 0.999776, -0.014473,
		33.110832, 34.807537, 36.707420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520710, 34.233246, 37.149399>,  <33.121662, 34.107693, 36.717552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520710, 34.233246, 37.149399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608326, 34.570160, 36.952393>,  <32.660896, 34.772308, 36.834187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608326, 34.570160, 36.952393>,  <32.520710, 34.233246, 37.149399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608326, 34.570160, 36.952393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974863, 0.167826, -0.146549,
		-0.040779, 0.512238, 0.857875,
		0.219042, 0.842287, -0.492518,
		32.674038, 34.822845, 36.804638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331455, 34.959644, 37.465317>,  <32.520710, 34.233246, 37.149399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331455, 34.959644, 37.465317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305164, 34.932732, 37.067089>,  <32.289391, 34.916584, 36.828152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305164, 34.932732, 37.067089>,  <32.331455, 34.959644, 37.465317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305164, 34.932732, 37.067089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996957, 0.046327, 0.062691,
		0.041904, 0.996658, -0.070119,
		-0.065729, -0.067279, -0.995567,
		32.285446, 34.912548, 36.768417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844704, 35.551151, 37.252483>,  <32.331455, 34.959644, 37.465317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844704, 35.551151, 37.252483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878359, 35.249901, 36.991493>,  <31.898552, 35.069153, 36.834900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878359, 35.249901, 36.991493>,  <31.844704, 35.551151, 37.252483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878359, 35.249901, 36.991493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994528, -0.022780, -0.101956,
		0.061922, 0.657486, -0.750918,
		0.084140, -0.753122, -0.652478,
		31.903601, 35.023964, 36.795750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475180, 35.731297, 36.516590>,  <31.844704, 35.551151, 37.252483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475180, 35.731297, 36.516590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444698, 35.347233, 36.624130>,  <31.426409, 35.116795, 36.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444698, 35.347233, 36.624130>,  <31.475180, 35.731297, 36.516590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444698, 35.347233, 36.624130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963009, 0.000978, -0.269468,
		0.258470, -0.279443, -0.924719,
		-0.076205, -0.960162, 0.268853,
		31.421837, 35.059185, 36.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225679, 35.283161, 35.897999>,  <31.475180, 35.731297, 36.516590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225679, 35.283161, 35.897999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128954, 35.155769, 36.264626>,  <31.070919, 35.079334, 36.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128954, 35.155769, 36.264626>,  <31.225679, 35.283161, 35.897999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128954, 35.155769, 36.264626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969301, 0.122615, -0.213122,
		-0.044508, -0.939965, -0.338357,
		-0.241815, -0.318484, 0.916566,
		31.056410, 35.060223, 36.539597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511761, 34.704563, 35.471577>,  <31.225679, 35.283161, 35.897999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511761, 34.704563, 35.471577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195910, 34.462437, 35.511738>,  <31.006399, 34.317162, 35.535835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195910, 34.462437, 35.511738>,  <31.511761, 34.704563, 35.471577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195910, 34.462437, 35.511738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482501, 0.713656, 0.507826,
		-0.379050, 0.352548, -0.855588,
		-0.789629, -0.605314, 0.100407,
		30.959021, 34.280842, 35.541859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101803, 34.650986, 35.891628>,  <31.511761, 34.704563, 35.471577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101803, 34.650986, 35.891628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068382, 34.916023, 36.189350>,  <32.048328, 35.075047, 36.367985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068382, 34.916023, 36.189350>,  <32.101803, 34.650986, 35.891628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068382, 34.916023, 36.189350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995227, 0.017692, 0.095972,
		0.050423, 0.748770, -0.660909,
		-0.083554, 0.662594, 0.744304,
		32.043316, 35.114799, 36.412640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498592, 35.390594, 35.673401>,  <32.101803, 34.650986, 35.891628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498592, 35.390594, 35.673401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432747, 35.380310, 36.067810>,  <32.393238, 35.374138, 36.304455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432747, 35.380310, 36.067810>,  <32.498592, 35.390594, 35.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432747, 35.380310, 36.067810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941791, 0.292997, 0.164870,
		-0.293141, 0.955767, -0.024014,
		-0.164614, -0.025714, 0.986023,
		32.383362, 35.372597, 36.363617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930897, 35.944897, 35.991142>,  <32.498592, 35.390594, 35.673401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930897, 35.944897, 35.991142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848770, 35.644943, 36.242702>,  <32.799496, 35.464970, 36.393639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848770, 35.644943, 36.242702>,  <32.930897, 35.944897, 35.991142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848770, 35.644943, 36.242702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945020, 0.015215, 0.326658,
		-0.254526, 0.661390, 0.705535,
		-0.205314, -0.749888, 0.628899,
		32.787174, 35.419975, 36.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111626, 36.055943, 36.758003>,  <32.930897, 35.944897, 35.991142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111626, 36.055943, 36.758003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111156, 35.657284, 36.725269>,  <33.110874, 35.418091, 36.705627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111156, 35.657284, 36.725269>,  <33.111626, 36.055943, 36.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111156, 35.657284, 36.725269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932049, -0.030741, 0.361025,
		-0.362330, -0.075853, 0.928958,
		-0.001172, -0.996645, -0.081837,
		33.110806, 35.358292, 36.700718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347214, 35.841980, 37.432999>,  <33.111626, 36.055943, 36.758003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347214, 35.841980, 37.432999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418060, 35.554985, 37.163528>,  <33.460567, 35.382786, 37.001846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418060, 35.554985, 37.163528>,  <33.347214, 35.841980, 37.432999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418060, 35.554985, 37.163528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936441, -0.087766, 0.339669,
		-0.302836, -0.691017, 0.656343,
		0.177112, -0.717491, -0.673675,
		33.471195, 35.339737, 36.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782024, 35.416462, 37.840809>,  <33.347214, 35.841980, 37.432999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782024, 35.416462, 37.840809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799599, 35.300861, 37.458282>,  <33.810143, 35.231499, 37.228767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799599, 35.300861, 37.458282>,  <33.782024, 35.416462, 37.840809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799599, 35.300861, 37.458282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918893, -0.363961, 0.152211,
		-0.392052, -0.885443, 0.249572,
		0.043940, -0.289005, -0.956319,
		33.812782, 35.214161, 37.171387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986019, 34.729057, 37.911304>,  <33.782024, 35.416462, 37.840809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986019, 34.729057, 37.911304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100739, 34.813770, 37.537590>,  <34.169571, 34.864597, 37.313362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100739, 34.813770, 37.537590>,  <33.986019, 34.729057, 37.911304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100739, 34.813770, 37.537590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946445, -0.213587, 0.242120,
		-0.148275, -0.953693, -0.261696,
		0.286803, 0.211781, -0.934287,
		34.186779, 34.877304, 37.257305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699097, 34.020061, 37.720798>,  <33.986019, 34.729057, 37.911304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699097, 34.020061, 37.720798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423584, 34.214317, 37.505489>,  <33.258278, 34.330872, 37.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423584, 34.214317, 37.505489>,  <33.699097, 34.020061, 37.720798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423584, 34.214317, 37.505489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158228, 0.623876, 0.765338,
		0.707492, 0.612320, -0.352873,
		-0.688780, 0.485637, -0.538274,
		33.216949, 34.360008, 37.344006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447903, 34.161564, 37.806156>,  <33.699097, 34.020061, 37.720798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447903, 34.161564, 37.806156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521832, 34.458309, 37.548325>,  <34.566189, 34.636356, 37.393627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521832, 34.458309, 37.548325>,  <34.447903, 34.161564, 37.806156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521832, 34.458309, 37.548325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981493, -0.105877, 0.159568,
		0.050131, -0.662141, -0.747701,
		0.184820, 0.741862, -0.644579,
		34.577278, 34.680866, 37.354950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917175, 33.869541, 37.351189>,  <34.447903, 34.161564, 37.806156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917175, 33.869541, 37.351189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969120, 34.258442, 37.273350>,  <35.000286, 34.491783, 37.226646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969120, 34.258442, 37.273350>,  <34.917175, 33.869541, 37.351189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969120, 34.258442, 37.273350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991294, -0.131605, 0.003995,
		-0.021726, -0.193423, -0.980875,
		0.129861, 0.972249, -0.194598,
		35.008080, 34.550117, 37.214970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478756, 33.814865, 36.912533>,  <34.917175, 33.869541, 37.351189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478756, 33.814865, 36.912533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484230, 34.200169, 37.019825>,  <35.487514, 34.431351, 37.084198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484230, 34.200169, 37.019825>,  <35.478756, 33.814865, 36.912533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484230, 34.200169, 37.019825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999852, -0.010393, -0.013683,
		-0.010393, 0.268374, -0.963259,
		0.013683, 0.963259, 0.268226,
		35.488335, 34.489147, 37.100292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735584, 34.110794, 36.375340>,  <35.478756, 33.814865, 36.912533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735584, 34.110794, 36.375340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827053, 34.324047, 36.701157>,  <35.881935, 34.452000, 36.896648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827053, 34.324047, 36.701157>,  <35.735584, 34.110794, 36.375340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827053, 34.324047, 36.701157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972155, -0.081045, -0.219879,
		-0.051209, 0.842144, -0.536816,
		0.228676, 0.533128, 0.814544,
		35.895657, 34.483986, 36.945518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305691, 34.814518, 36.379398>,  <35.735584, 34.110794, 36.375340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305691, 34.814518, 36.379398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333946, 34.623619, 36.729767>,  <36.350899, 34.509079, 36.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333946, 34.623619, 36.729767>,  <36.305691, 34.814518, 36.379398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333946, 34.623619, 36.729767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996873, 0.002612, -0.078972,
		0.035401, 0.878763, 0.475943,
		0.070641, -0.477251, 0.875923,
		36.355137, 34.480442, 36.992542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750252, 35.098351, 36.901646>,  <36.305691, 34.814518, 36.379398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750252, 35.098351, 36.901646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741444, 34.713791, 37.011353>,  <36.736160, 34.483055, 37.077175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741444, 34.713791, 37.011353>,  <36.750252, 35.098351, 36.901646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741444, 34.713791, 37.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999131, -0.030875, -0.028005,
		0.035392, 0.273413, 0.961245,
		-0.022021, -0.961401, 0.274268,
		36.734837, 34.425369, 37.093632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290535, 34.853043, 37.418144>,  <36.750252, 35.098351, 36.901646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290535, 34.853043, 37.418144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187363, 34.562073, 37.163799>,  <37.125458, 34.387489, 37.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187363, 34.562073, 37.163799>,  <37.290535, 34.853043, 37.418144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187363, 34.562073, 37.163799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965458, -0.219192, -0.140876,
		-0.036900, -0.650238, 0.758834,
		-0.257933, -0.727424, -0.635866,
		37.109982, 34.343845, 36.973038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828419, 35.158180, 37.829636>,  <37.290535, 34.853043, 37.418144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828419, 35.158180, 37.829636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071815, 35.464378, 37.913303>,  <38.217854, 35.648098, 37.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071815, 35.464378, 37.913303>,  <37.828419, 35.158180, 37.829636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071815, 35.464378, 37.913303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791172, -0.564790, -0.234644,
		-0.061484, 0.308266, -0.949311,
		0.608495, 0.765496, 0.209166,
		38.254364, 35.694027, 37.976051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340649, 35.180607, 37.264961>,  <37.828419, 35.158180, 37.829636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340649, 35.180607, 37.264961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474613, 35.393925, 37.575684>,  <38.554993, 35.521915, 37.762119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474613, 35.393925, 37.575684>,  <38.340649, 35.180607, 37.264961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474613, 35.393925, 37.575684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883486, -0.464318, -0.062140,
		0.327549, 0.707112, -0.626662,
		0.334910, 0.533293, 0.776810,
		38.575085, 35.553913, 37.808727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024086, 35.319618, 37.092888>,  <38.340649, 35.180607, 37.264961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024086, 35.319618, 37.092888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977852, 35.360317, 37.488117>,  <38.950111, 35.384739, 37.725254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977852, 35.360317, 37.488117>,  <39.024086, 35.319618, 37.092888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977852, 35.360317, 37.488117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947909, -0.285962, 0.140335,
		0.296830, 0.952823, -0.063398,
		-0.115585, 0.101751, 0.988072,
		38.943176, 35.390842, 37.784538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481869, 35.867569, 37.280640>,  <39.024086, 35.319618, 37.092888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481869, 35.867569, 37.280640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390766, 35.609367, 37.572243>,  <39.336105, 35.454445, 37.747204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390766, 35.609367, 37.572243>,  <39.481869, 35.867569, 37.280640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390766, 35.609367, 37.572243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910654, 0.123852, 0.394171,
		-0.344728, 0.753646, 0.559624,
		-0.227755, -0.645506, 0.729006,
		39.322441, 35.415714, 37.790943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821976, 36.204811, 37.790627>,  <39.481869, 35.867569, 37.280640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821976, 36.204811, 37.790627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756298, 35.824158, 37.894505>,  <39.716892, 35.595768, 37.956829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756298, 35.824158, 37.894505>,  <39.821976, 36.204811, 37.790627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756298, 35.824158, 37.894505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940792, -0.071920, 0.331267,
		-0.296567, 0.298706, 0.907096,
		-0.164190, -0.951631, 0.259691,
		39.707043, 35.538670, 37.972412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365551, 36.108952, 38.344418>,  <39.821976, 36.204811, 37.790627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365551, 36.108952, 38.344418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286713, 35.724182, 38.268665>,  <40.239410, 35.493320, 38.223213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286713, 35.724182, 38.268665>,  <40.365551, 36.108952, 38.344418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286713, 35.724182, 38.268665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977114, -0.208501, 0.042124,
		-0.080005, -0.176740, 0.981000,
		-0.197095, -0.961920, -0.189377,
		40.227585, 35.435608, 38.211853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747711, 35.711269, 38.795841>,  <40.365551, 36.108952, 38.344418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747711, 35.711269, 38.795841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646095, 35.477848, 38.487316>,  <40.585125, 35.337795, 38.302200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646095, 35.477848, 38.487316>,  <40.747711, 35.711269, 38.795841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646095, 35.477848, 38.487316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953275, -0.285872, -0.097691,
		-0.163490, -0.760095, 0.628909,
		-0.254042, -0.583552, -0.771317,
		40.569881, 35.302784, 38.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372406, 35.459026, 38.761875>,  <40.747711, 35.711269, 38.795841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372406, 35.459026, 38.761875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176991, 35.364361, 38.425941>,  <41.059742, 35.307560, 38.224380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176991, 35.364361, 38.425941>,  <41.372406, 35.459026, 38.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176991, 35.364361, 38.425941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869544, -0.211753, -0.446155,
		-0.072247, -0.948235, 0.309241,
		-0.488543, -0.236666, -0.839831,
		41.030426, 35.293362, 38.173992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573788, 34.762989, 38.470486>,  <41.372406, 35.459026, 38.761875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573788, 34.762989, 38.470486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432316, 34.996262, 38.177963>,  <41.347431, 35.136223, 38.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432316, 34.996262, 38.177963>,  <41.573788, 34.762989, 38.470486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432316, 34.996262, 38.177963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869540, -0.083116, -0.486818,
		-0.344686, -0.808080, -0.477701,
		-0.353683, 0.583180, -0.731307,
		41.326210, 35.171215, 37.958572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640053, 34.428352, 37.786240>,  <41.573788, 34.762989, 38.470486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640053, 34.428352, 37.786240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686428, 34.824768, 37.759708>,  <41.714252, 35.062618, 37.743790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686428, 34.824768, 37.759708>,  <41.640053, 34.428352, 37.786240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686428, 34.824768, 37.759708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856884, -0.133570, -0.497904,
		-0.502301, 0.000896, -0.864692,
		0.115943, 0.991039, -0.066325,
		41.721210, 35.122078, 37.739811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184357, 33.971813, 37.882748>,  <41.640053, 34.428352, 37.786240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184357, 33.971813, 37.882748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337456, 33.919651, 37.516907>,  <42.429314, 33.888355, 37.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337456, 33.919651, 37.516907>,  <42.184357, 33.971813, 37.882748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337456, 33.919651, 37.516907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923621, -0.031756, -0.381989,
		0.020769, 0.990952, -0.132597,
		0.382744, -0.130403, -0.914605,
		42.452278, 33.880531, 37.242527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869568, 33.325081, 37.915054>,  <42.184357, 33.971813, 37.882748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869568, 33.325081, 37.915054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070576, 33.189056, 37.597103>,  <42.191181, 33.107441, 37.406334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070576, 33.189056, 37.597103>,  <41.869568, 33.325081, 37.915054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070576, 33.189056, 37.597103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242759, -0.826908, 0.507239,
		-0.829805, -0.447847, -0.332951,
		0.502485, -0.340082, -0.794892,
		42.221329, 33.087036, 37.358639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535210, 33.027359, 38.046364>,  <41.869568, 33.325081, 37.915054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535210, 33.027359, 38.046364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491936, 32.752579, 38.333805>,  <42.465973, 32.587711, 38.506271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491936, 32.752579, 38.333805>,  <42.535210, 33.027359, 38.046364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491936, 32.752579, 38.333805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689219, -0.469100, -0.552198,
		0.716431, -0.555015, -0.422712,
		-0.108184, -0.686952, 0.718605,
		42.459480, 32.546494, 38.549385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651806, 32.378975, 37.819141>,  <42.535210, 33.027359, 38.046364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651806, 32.378975, 37.819141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377605, 32.315235, 38.103310>,  <42.213085, 32.276993, 38.273811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377605, 32.315235, 38.103310>,  <42.651806, 32.378975, 37.819141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377605, 32.315235, 38.103310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580932, -0.468455, -0.665634,
		0.438864, -0.868999, 0.228560,
		-0.685505, -0.159345, 0.710417,
		42.171955, 32.267433, 38.316433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289799, 31.705006, 37.743488>,  <42.651806, 32.378975, 37.819141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289799, 31.705006, 37.743488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045864, 31.940145, 37.956100>,  <41.899502, 32.081230, 38.083668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045864, 31.940145, 37.956100>,  <42.289799, 31.705006, 37.743488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045864, 31.940145, 37.956100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784595, -0.353189, -0.509576,
		-0.111822, -0.727798, 0.676613,
		-0.609841, 0.587849, 0.531533,
		41.862911, 32.116501, 38.115559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944839, 31.452057, 37.256626>,  <42.289799, 31.705006, 37.743488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944839, 31.452057, 37.256626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212536, 31.693911, 37.429386>,  <43.373154, 31.839024, 37.533043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212536, 31.693911, 37.429386>,  <42.944839, 31.452057, 37.256626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212536, 31.693911, 37.429386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697946, -0.710943, -0.086206,
		0.254930, 0.359133, -0.897794,
		0.669240, 0.604635, 0.431896,
		43.413307, 31.875301, 37.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432308, 31.763557, 36.867603>,  <42.944839, 31.452057, 37.256626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432308, 31.763557, 36.867603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572723, 31.705042, 37.237549>,  <43.656971, 31.669933, 37.459515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572723, 31.705042, 37.237549>,  <43.432308, 31.763557, 36.867603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572723, 31.705042, 37.237549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590421, -0.732039, -0.339885,
		0.726757, 0.665371, -0.170601,
		0.351037, -0.146288, 0.924864,
		43.678036, 31.661156, 37.515007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723408, 32.434677, 36.579296>,  <43.432308, 31.763557, 36.867603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723408, 32.434677, 36.579296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342525, 32.330963, 36.643894>,  <43.113998, 32.268734, 36.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342525, 32.330963, 36.643894>,  <43.723408, 32.434677, 36.579296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342525, 32.330963, 36.643894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095611, -0.249125, -0.963740,
		0.290116, -0.933117, 0.212427,
		-0.952203, -0.259286, 0.161492,
		43.056866, 32.253178, 36.692341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480255, 32.268890, 36.768543>,  <43.723408, 32.434677, 36.579296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480255, 32.268890, 36.768543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735493, 32.509178, 36.575893>,  <44.888638, 32.653351, 36.460304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735493, 32.509178, 36.575893>,  <44.480255, 32.268890, 36.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735493, 32.509178, 36.575893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110503, 0.690501, 0.714841,
		0.761988, -0.402914, 0.506986,
		0.638094, 0.600723, -0.481630,
		44.926922, 32.689396, 36.431404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997204, 32.502598, 37.249325>,  <44.480255, 32.268890, 36.768543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997204, 32.502598, 37.249325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963177, 32.754051, 36.940109>,  <44.942760, 32.904922, 36.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963177, 32.754051, 36.940109>,  <44.997204, 32.502598, 37.249325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963177, 32.754051, 36.940109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100596, 0.766468, 0.634356,
		0.991284, 0.131730, -0.001967,
		-0.085071, 0.628629, -0.773039,
		44.937656, 32.942638, 36.708199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699337, 32.655064, 37.605076>,  <44.997204, 32.502598, 37.249325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699337, 32.655064, 37.605076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413662, 32.934162, 37.582874>,  <45.242256, 33.101624, 37.569553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413662, 32.934162, 37.582874>,  <45.699337, 32.655064, 37.605076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413662, 32.934162, 37.582874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643865, 0.685991, 0.338902,
		0.274544, 0.206302, -0.939183,
		-0.714187, 0.697751, -0.055504,
		45.199406, 33.143486, 37.566223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803745, 33.283504, 37.128429>,  <45.699337, 32.655064, 37.605076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803745, 33.283504, 37.128429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593853, 33.332859, 37.465340>,  <45.467918, 33.362473, 37.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593853, 33.332859, 37.465340>,  <45.803745, 33.283504, 37.128429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593853, 33.332859, 37.465340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668988, 0.671630, 0.318383,
		-0.526417, 0.730540, -0.434968,
		-0.524729, 0.123386, 0.842280,
		45.436436, 33.369873, 37.718025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701111, 33.842506, 36.657410>,  <45.803745, 33.283504, 37.128429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701111, 33.842506, 36.657410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470661, 34.165802, 36.706127>,  <45.332390, 34.359779, 36.735355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470661, 34.165802, 36.706127>,  <45.701111, 33.842506, 36.657410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470661, 34.165802, 36.706127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685845, -0.559082, 0.465880,
		0.444633, 0.184874, 0.876426,
		-0.576124, 0.808238, 0.121792,
		45.297825, 34.408272, 36.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338268, 34.388355, 36.708416>,  <45.701111, 33.842506, 36.657410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338268, 34.388355, 36.708416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203831, 34.453865, 36.337425>,  <46.123169, 34.493172, 36.114830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203831, 34.453865, 36.337425>,  <46.338268, 34.388355, 36.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203831, 34.453865, 36.337425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787183, 0.589512, -0.181161,
		0.517089, -0.790982, -0.327056,
		-0.336098, 0.163776, -0.927478,
		46.103001, 34.502998, 36.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946312, 34.313995, 36.409874>,  <46.338268, 34.388355, 36.708416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946312, 34.313995, 36.409874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698589, 34.499794, 36.156670>,  <46.549957, 34.611271, 36.004745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698589, 34.499794, 36.156670>,  <46.946312, 34.313995, 36.409874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698589, 34.499794, 36.156670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777225, 0.476932, -0.410434,
		0.111261, -0.746179, -0.656383,
		-0.619307, 0.464493, -0.633013,
		46.512798, 34.639141, 35.966766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101402, 34.043373, 35.714314>,  <46.946312, 34.313995, 36.409874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101402, 34.043373, 35.714314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988766, 34.427174, 35.717339>,  <46.921185, 34.657455, 35.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988766, 34.427174, 35.717339>,  <47.101402, 34.043373, 35.714314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988766, 34.427174, 35.717339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733233, 0.220256, -0.643317,
		-0.618930, -0.175610, -0.765563,
		-0.281593, 0.959504, 0.007559,
		46.904289, 34.715023, 35.719604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095291, 34.290077, 34.990345>,  <47.101402, 34.043373, 35.714314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095291, 34.290077, 34.990345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159557, 34.598808, 35.236423>,  <47.198116, 34.784046, 35.384071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159557, 34.598808, 35.236423>,  <47.095291, 34.290077, 34.990345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159557, 34.598808, 35.236423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845190, 0.214321, -0.489613,
		-0.509747, 0.598622, -0.617907,
		0.160663, 0.771828, 0.615199,
		47.207756, 34.830357, 35.420982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353745, 34.944199, 34.617165>,  <47.095291, 34.290077, 34.990345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353745, 34.944199, 34.617165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491058, 34.952427, 34.992767>,  <47.573448, 34.957363, 35.218128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491058, 34.952427, 34.992767>,  <47.353745, 34.944199, 34.617165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.491058, 34.952427, 34.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876913, 0.351082, -0.328276,
		-0.336423, 0.936119, 0.102478,
		0.343283, 0.020575, 0.939007,
		47.594044, 34.958599, 35.274467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.738232, 28.084440, 27.318361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377232, 28.231730, 27.229006>,  <39.160633, 28.320103, 27.175392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377232, 28.231730, 27.229006>,  <39.738232, 28.084440, 27.318361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377232, 28.231730, 27.229006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220224, 0.051190, 0.974105,
		0.370125, 0.928327, 0.034893,
		-0.902502, 0.368224, -0.223387,
		39.106480, 28.342197, 27.161989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659992, 28.611683, 27.800228>,  <39.738232, 28.084440, 27.318361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659992, 28.611683, 27.800228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280239, 28.597502, 27.675388>,  <39.052387, 28.588993, 27.600485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280239, 28.597502, 27.675388>,  <39.659992, 28.611683, 27.800228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280239, 28.597502, 27.675388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313323, 0.177124, 0.932982,
		0.022205, 0.983550, -0.179267,
		-0.949387, -0.035451, -0.312101,
		38.995422, 28.586866, 27.581758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368752, 29.224274, 28.043816>,  <39.659992, 28.611683, 27.800228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368752, 29.224274, 28.043816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072449, 28.965439, 27.971649>,  <38.894665, 28.810137, 27.928349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072449, 28.965439, 27.971649>,  <39.368752, 29.224274, 28.043816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072449, 28.965439, 27.971649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322783, 0.107321, 0.940369,
		-0.589139, 0.754824, -0.288368,
		-0.740761, -0.647088, -0.180417,
		38.850220, 28.771313, 27.917524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813530, 29.542709, 28.349337>,  <39.368752, 29.224274, 28.043816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813530, 29.542709, 28.349337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729050, 29.152719, 28.321571>,  <38.678360, 28.918726, 28.304913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729050, 29.152719, 28.321571>,  <38.813530, 29.542709, 28.349337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729050, 29.152719, 28.321571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337441, 0.006079, 0.941327,
		-0.917348, 0.222233, -0.330280,
		-0.211202, -0.974975, -0.069414,
		38.665688, 28.860228, 28.300747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081963, 29.439190, 28.676308>,  <38.813530, 29.542709, 28.349337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081963, 29.439190, 28.676308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238640, 29.071163, 28.673265>,  <38.332645, 28.850348, 28.671440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238640, 29.071163, 28.673265>,  <38.081963, 29.439190, 28.676308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238640, 29.071163, 28.673265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230750, -0.106230, 0.967197,
		-0.890692, -0.377088, -0.253915,
		0.391691, -0.920066, -0.007606,
		38.356148, 28.795143, 28.670984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578262, 28.928602, 28.941589>,  <38.081963, 29.439190, 28.676308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578262, 28.928602, 28.941589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909439, 28.716227, 29.013828>,  <38.108147, 28.588802, 29.057171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909439, 28.716227, 29.013828>,  <37.578262, 28.928602, 28.941589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909439, 28.716227, 29.013828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312480, -0.169343, 0.934708,
		-0.465689, -0.830318, -0.306114,
		0.827943, -0.530938, 0.180596,
		38.157822, 28.556946, 29.068007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414188, 28.343328, 29.325489>,  <37.578262, 28.928602, 28.941589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414188, 28.343328, 29.325489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797649, 28.429420, 29.399954>,  <38.027725, 28.481075, 29.444633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797649, 28.429420, 29.399954>,  <37.414188, 28.343328, 29.325489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797649, 28.429420, 29.399954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167503, -0.102075, 0.980573,
		0.230052, -0.971214, -0.061803,
		0.958654, 0.215231, 0.186164,
		38.085247, 28.493990, 29.455803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550484, 27.871113, 29.835390>,  <37.414188, 28.343328, 29.325489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550484, 27.871113, 29.835390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844059, 28.141792, 29.858738>,  <38.020206, 28.304201, 29.872747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844059, 28.141792, 29.858738>,  <37.550484, 27.871113, 29.835390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844059, 28.141792, 29.858738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044440, -0.037912, 0.998292,
		0.677758, -0.735281, 0.002247,
		0.733940, 0.676701, 0.058372,
		38.064240, 28.344803, 29.876249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964962, 27.669153, 30.433451>,  <37.550484, 27.871113, 29.835390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964962, 27.669153, 30.433451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073051, 28.047274, 30.360365>,  <38.137905, 28.274145, 30.316513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073051, 28.047274, 30.360365>,  <37.964962, 27.669153, 30.433451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073051, 28.047274, 30.360365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030434, 0.198065, 0.979716,
		0.962316, -0.259181, 0.082292,
		0.270223, 0.945301, -0.182714,
		38.154118, 28.330864, 30.305552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453014, 27.821218, 30.984461>,  <37.964962, 27.669153, 30.433451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453014, 27.821218, 30.984461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333397, 28.178017, 30.848862>,  <38.261627, 28.392096, 30.767502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333397, 28.178017, 30.848862>,  <38.453014, 27.821218, 30.984461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333397, 28.178017, 30.848862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020453, 0.349180, 0.936832,
		0.954020, 0.287088, -0.086176,
		-0.299044, 0.891994, -0.338996,
		38.243683, 28.445616, 30.747162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806755, 28.225117, 31.416111>,  <38.453014, 27.821218, 30.984461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806755, 28.225117, 31.416111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498600, 28.429996, 31.264238>,  <38.313705, 28.552925, 31.173115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498600, 28.429996, 31.264238>,  <38.806755, 28.225117, 31.416111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498600, 28.429996, 31.264238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124456, 0.463240, 0.877451,
		0.625313, 0.723229, -0.293127,
		-0.770386, 0.512200, -0.379680,
		38.267483, 28.583656, 31.150335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858067, 28.872566, 31.689829>,  <38.806755, 28.225117, 31.416111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858067, 28.872566, 31.689829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476261, 28.868073, 31.570650>,  <38.247177, 28.865376, 31.499144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476261, 28.868073, 31.570650>,  <38.858067, 28.872566, 31.689829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476261, 28.868073, 31.570650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271900, 0.442837, 0.854380,
		0.122342, 0.896532, -0.425751,
		-0.954517, -0.011235, -0.297945,
		38.189907, 28.864702, 31.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671700, 29.600609, 31.650068>,  <38.858067, 28.872566, 31.689829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671700, 29.600609, 31.650068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335892, 29.387447, 31.692421>,  <38.134407, 29.259550, 31.717833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335892, 29.387447, 31.692421>,  <38.671700, 29.600609, 31.650068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335892, 29.387447, 31.692421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259825, 0.564929, 0.783164,
		-0.477170, 0.629974, -0.612733,
		-0.839524, -0.532906, 0.105884,
		38.084034, 29.227575, 31.724186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082039, 30.101580, 31.698143>,  <38.671700, 29.600609, 31.650068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082039, 30.101580, 31.698143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939915, 29.767805, 31.866653>,  <37.854641, 29.567541, 31.967760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939915, 29.767805, 31.866653>,  <38.082039, 30.101580, 31.698143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939915, 29.767805, 31.866653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353292, 0.537131, 0.765947,
		-0.865414, 0.123314, -0.485646,
		-0.355308, -0.834436, 0.421275,
		37.833321, 29.517475, 31.993036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333061, 30.277317, 31.923710>,  <38.082039, 30.101580, 31.698143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333061, 30.277317, 31.923710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393139, 29.932823, 32.117912>,  <37.429184, 29.726126, 32.234432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393139, 29.932823, 32.117912>,  <37.333061, 30.277317, 31.923710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393139, 29.932823, 32.117912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251501, 0.441637, 0.861223,
		-0.956133, -0.251452, -0.150272,
		0.150190, -0.861237, 0.485504,
		37.438194, 29.674452, 32.263565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695290, 30.180387, 32.402561>,  <37.333061, 30.277317, 31.923710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695290, 30.180387, 32.402561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015255, 29.988993, 32.547443>,  <37.207233, 29.874155, 32.634373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015255, 29.988993, 32.547443>,  <36.695290, 30.180387, 32.402561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015255, 29.988993, 32.547443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163420, 0.407066, 0.898661,
		-0.577439, -0.778040, 0.247423,
		0.799911, -0.478488, 0.362203,
		37.255230, 29.845446, 32.656105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450043, 29.891054, 32.955379>,  <36.695290, 30.180387, 32.402561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450043, 29.891054, 32.955379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845795, 29.909309, 33.010590>,  <37.083244, 29.920263, 33.043716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845795, 29.909309, 33.010590>,  <36.450043, 29.891054, 32.955379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845795, 29.909309, 33.010590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143715, 0.450019, 0.881379,
		-0.021886, -0.891852, 0.451797,
		0.989377, 0.045640, 0.138021,
		37.142609, 29.923000, 33.051994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547527, 29.679884, 33.707520>,  <36.450043, 29.891054, 32.955379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547527, 29.679884, 33.707520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887192, 29.860338, 33.597687>,  <37.090992, 29.968611, 33.531788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887192, 29.860338, 33.597687>,  <36.547527, 29.679884, 33.707520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887192, 29.860338, 33.597687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010019, 0.506066, 0.862436,
		0.528042, -0.735097, 0.425211,
		0.849159, 0.451142, -0.274589,
		37.141941, 29.995680, 33.515312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083927, 29.585022, 34.209450>,  <36.547527, 29.679884, 33.707520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083927, 29.585022, 34.209450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165501, 29.922735, 34.011219>,  <37.214443, 30.125362, 33.892281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165501, 29.922735, 34.011219>,  <37.083927, 29.585022, 34.209450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165501, 29.922735, 34.011219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046938, 0.514067, 0.856464,
		0.977860, -0.151397, 0.144463,
		0.203930, 0.844283, -0.495580,
		37.226681, 30.176020, 33.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300262, 29.960342, 34.662552>,  <37.083927, 29.585022, 34.209450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300262, 29.960342, 34.662552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247368, 30.231775, 34.373543>,  <37.215630, 30.394634, 34.200138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247368, 30.231775, 34.373543>,  <37.300262, 29.960342, 34.662552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247368, 30.231775, 34.373543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111235, 0.714163, 0.691085,
		0.984957, 0.171757, -0.018956,
		-0.132237, 0.678580, -0.722525,
		37.207695, 30.435349, 34.156784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805092, 30.470346, 34.736031>,  <37.300262, 29.960342, 34.662552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805092, 30.470346, 34.736031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514446, 30.663347, 34.540390>,  <37.340057, 30.779148, 34.423004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514446, 30.663347, 34.540390>,  <37.805092, 30.470346, 34.736031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514446, 30.663347, 34.540390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057829, 0.666417, 0.743333,
		0.684605, 0.568403, -0.456328,
		-0.726617, 0.482500, -0.489103,
		37.296463, 30.808098, 34.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165070, 30.804388, 35.296326>,  <37.805092, 30.470346, 34.736031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165070, 30.804388, 35.296326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498943, 30.978287, 35.431557>,  <38.699268, 31.082626, 35.512695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498943, 30.978287, 35.431557>,  <38.165070, 30.804388, 35.296326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498943, 30.978287, 35.431557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544576, -0.560055, -0.624320,
		-0.082077, 0.705220, -0.704221,
		0.834686, 0.434745, 0.338078,
		38.749348, 31.108709, 35.532982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454189, 31.070040, 34.735577>,  <38.165070, 30.804388, 35.296326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454189, 31.070040, 34.735577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745300, 31.010561, 35.003376>,  <38.919968, 30.974874, 35.164055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745300, 31.010561, 35.003376>,  <38.454189, 31.070040, 34.735577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745300, 31.010561, 35.003376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538882, -0.479834, -0.692362,
		0.424200, 0.864667, -0.269083,
		0.727777, -0.148696, 0.669499,
		38.963634, 30.965952, 35.204227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078419, 31.268105, 34.376984>,  <38.454189, 31.070040, 34.735577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078419, 31.268105, 34.376984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196613, 31.047680, 34.689140>,  <39.267529, 30.915424, 34.876434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196613, 31.047680, 34.689140>,  <39.078419, 31.268105, 34.376984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196613, 31.047680, 34.689140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676075, -0.456531, -0.578361,
		0.674988, 0.698504, 0.237661,
		0.295488, -0.551063, 0.780395,
		39.285259, 30.882360, 34.923260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798817, 31.345808, 34.291340>,  <39.078419, 31.268105, 34.376984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798817, 31.345808, 34.291340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738892, 31.029144, 34.528263>,  <39.702934, 30.839146, 34.670418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738892, 31.029144, 34.528263>,  <39.798817, 31.345808, 34.291340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738892, 31.029144, 34.528263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602147, -0.548212, -0.580416,
		0.784203, 0.269702, 0.558827,
		-0.149816, -0.791660, 0.592309,
		39.693947, 30.791647, 34.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358067, 31.024679, 34.320007>,  <39.798817, 31.345808, 34.291340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358067, 31.024679, 34.320007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107330, 30.729568, 34.420212>,  <39.956890, 30.552502, 34.480335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107330, 30.729568, 34.420212>,  <40.358067, 31.024679, 34.320007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107330, 30.729568, 34.420212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558510, -0.649655, -0.515767,
		0.543266, -0.183391, 0.819286,
		-0.626840, -0.737778, 0.250510,
		39.919277, 30.508236, 34.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771015, 30.466209, 34.399437>,  <40.358067, 31.024679, 34.320007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771015, 30.466209, 34.399437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413094, 30.298109, 34.339149>,  <40.198341, 30.197248, 34.302979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413094, 30.298109, 34.339149>,  <40.771015, 30.466209, 34.399437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413094, 30.298109, 34.339149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422627, -0.688481, -0.589390,
		0.143925, -0.591085, 0.793665,
		-0.894803, -0.420252, -0.150719,
		40.144653, 30.172033, 34.293934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838650, 29.746828, 34.435581>,  <40.771015, 30.466209, 34.399437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838650, 29.746828, 34.435581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.505318, 29.810534, 34.223846>,  <40.305321, 29.848757, 34.096806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.505318, 29.810534, 34.223846>,  <40.838650, 29.746828, 34.435581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505318, 29.810534, 34.223846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264279, -0.726280, -0.634566,
		-0.485513, -0.668695, 0.563138,
		-0.833327, 0.159264, -0.529340,
		40.255322, 29.858313, 34.065044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619019, 29.016661, 34.247948>,  <40.838650, 29.746828, 34.435581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619019, 29.016661, 34.247948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461220, 29.295286, 34.008224>,  <40.366539, 29.462461, 33.864391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461220, 29.295286, 34.008224>,  <40.619019, 29.016661, 34.247948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461220, 29.295286, 34.008224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161866, -0.589328, -0.791512,
		-0.904528, -0.409258, 0.119739,
		-0.394498, 0.696563, -0.599308,
		40.342869, 29.504255, 33.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292233, 28.656910, 33.736061>,  <40.619019, 29.016661, 34.247948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292233, 28.656910, 33.736061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304737, 29.008970, 33.546597>,  <40.312241, 29.220207, 33.432919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304737, 29.008970, 33.546597>,  <40.292233, 28.656910, 33.736061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304737, 29.008970, 33.546597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167761, -0.471793, -0.865602,
		-0.985332, -0.052402, -0.162405,
		0.031263, 0.880150, -0.473664,
		40.314117, 29.273016, 33.404499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036030, 28.513134, 33.008167>,  <40.292233, 28.656910, 33.736061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036030, 28.513134, 33.008167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199337, 28.878275, 33.006466>,  <40.297321, 29.097359, 33.005444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199337, 28.878275, 33.006466>,  <40.036030, 28.513134, 33.008167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199337, 28.878275, 33.006466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373832, -0.171442, -0.911514,
		-0.832807, 0.370551, -0.411247,
		0.408267, 0.912853, -0.004255,
		40.321815, 29.152130, 33.005188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733227, 28.907806, 32.423447>,  <40.036030, 28.513134, 33.008167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733227, 28.907806, 32.423447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086586, 29.077322, 32.503452>,  <40.298603, 29.179031, 32.551456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086586, 29.077322, 32.503452>,  <39.733227, 28.907806, 32.423447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086586, 29.077322, 32.503452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215777, 0.011014, -0.976381,
		-0.415981, 0.905695, -0.081714,
		0.883403, 0.423788, 0.200009,
		40.351608, 29.204458, 32.563454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891411, 29.206087, 31.754614>,  <39.733227, 28.907806, 32.423447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891411, 29.206087, 31.754614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236984, 29.239088, 31.953337>,  <40.444328, 29.258888, 32.072571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236984, 29.239088, 31.953337>,  <39.891411, 29.206087, 31.754614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236984, 29.239088, 31.953337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486480, 0.118406, -0.865631,
		-0.130241, 0.989532, 0.062159,
		0.863930, 0.082502, 0.496808,
		40.496162, 29.263838, 32.102379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185963, 29.912373, 31.623024>,  <39.891411, 29.206087, 31.754614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185963, 29.912373, 31.623024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.470039, 29.648890, 31.722410>,  <40.640484, 29.490801, 31.782042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.470039, 29.648890, 31.722410>,  <40.185963, 29.912373, 31.623024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470039, 29.648890, 31.722410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392689, 0.077720, -0.916382,
		0.584316, 0.748375, 0.313863,
		0.710191, -0.658707, 0.248465,
		40.683098, 29.451277, 31.796949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823456, 30.163260, 31.432041>,  <40.185963, 29.912373, 31.623024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823456, 30.163260, 31.432041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903564, 29.771513, 31.442848>,  <40.951630, 29.536465, 31.449331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903564, 29.771513, 31.442848>,  <40.823456, 30.163260, 31.432041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903564, 29.771513, 31.442848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506283, 0.079842, -0.858663,
		0.838791, 0.185641, 0.511827,
		0.200268, -0.979369, 0.027016,
		40.963646, 29.477703, 31.450953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473774, 30.035789, 31.150492>,  <40.823456, 30.163260, 31.432041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473774, 30.035789, 31.150492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.376251, 29.648397, 31.130085>,  <41.317738, 29.415962, 31.117842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.376251, 29.648397, 31.130085>,  <41.473774, 30.035789, 31.150492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376251, 29.648397, 31.130085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603298, -0.110269, -0.789856,
		0.759335, -0.223350, 0.611167,
		-0.243808, -0.968481, -0.051016,
		41.303108, 29.357853, 31.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053276, 29.560295, 31.047155>,  <41.473774, 30.035789, 31.150492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053276, 29.560295, 31.047155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.738869, 29.359545, 30.902769>,  <41.550224, 29.239094, 30.816137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.738869, 29.359545, 30.902769>,  <42.053276, 29.560295, 31.047155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738869, 29.359545, 30.902769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470006, -0.105846, -0.876294,
		0.401586, -0.858437, 0.319083,
		-0.786017, -0.501879, -0.360965,
		41.503063, 29.208981, 30.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317291, 29.000414, 30.673880>,  <42.053276, 29.560295, 31.047155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317291, 29.000414, 30.673880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.939247, 29.009031, 30.543459>,  <41.712421, 29.014202, 30.465206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.939247, 29.009031, 30.543459>,  <42.317291, 29.000414, 30.673880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939247, 29.009031, 30.543459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317936, -0.169734, -0.932796,
		-0.075434, -0.985255, 0.153568,
		-0.945107, 0.021540, -0.326051,
		41.655716, 29.015493, 30.445644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282738, 28.440681, 30.198332>,  <42.317291, 29.000414, 30.673880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282738, 28.440681, 30.198332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.952942, 28.648304, 30.108175>,  <41.755066, 28.772877, 30.054081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.952942, 28.648304, 30.108175>,  <42.282738, 28.440681, 30.198332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952942, 28.648304, 30.108175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084829, -0.280434, -0.956117,
		-0.559488, -0.807425, 0.187183,
		-0.824486, 0.519057, -0.225393,
		41.705597, 28.804022, 30.040558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743050, 27.964449, 29.922596>,  <42.282738, 28.440681, 30.198332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743050, 27.964449, 29.922596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.668907, 28.321644, 29.758539>,  <41.624420, 28.535961, 29.660105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.668907, 28.321644, 29.758539>,  <41.743050, 27.964449, 29.922596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668907, 28.321644, 29.758539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247211, -0.361579, -0.898970,
		-0.951067, -0.268023, -0.153735,
		-0.185358, 0.892986, -0.410144,
		41.613300, 28.589540, 29.635496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.289917, 27.944168, 29.366762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413540, 28.314970, 29.281773>,  <41.487713, 28.537451, 29.230780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413540, 28.314970, 29.281773>,  <41.289917, 27.944168, 29.366762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413540, 28.314970, 29.281773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180498, -0.276524, -0.943904,
		-0.933757, 0.253372, -0.252785,
		0.309060, 0.927004, -0.212473,
		41.506256, 28.593071, 29.218031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940056, 28.069269, 28.721045>,  <41.289917, 27.944168, 29.366762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940056, 28.069269, 28.721045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232983, 28.340324, 28.747957>,  <41.408737, 28.502956, 28.764105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232983, 28.340324, 28.747957>,  <40.940056, 28.069269, 28.721045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232983, 28.340324, 28.747957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067061, 0.026558, -0.997395,
		-0.677659, 0.734917, -0.025994,
		0.732313, 0.677637, 0.067282,
		41.452675, 28.543615, 28.768143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637272, 28.594570, 28.318310>,  <40.940056, 28.069269, 28.721045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637272, 28.594570, 28.318310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034733, 28.636724, 28.334005>,  <41.273209, 28.662018, 28.343424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034733, 28.636724, 28.334005>,  <40.637272, 28.594570, 28.318310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034733, 28.636724, 28.334005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026367, 0.120882, -0.992317,
		-0.109321, 0.987057, 0.117337,
		0.993657, 0.105387, 0.039240,
		41.332829, 28.668341, 28.345778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807629, 29.139511, 27.885603>,  <40.637272, 28.594570, 28.318310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807629, 29.139511, 27.885603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149612, 28.932140, 27.892252>,  <41.354801, 28.807718, 27.896242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149612, 28.932140, 27.892252>,  <40.807629, 29.139511, 27.885603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149612, 28.932140, 27.892252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232745, 0.354795, -0.905511,
		0.463544, 0.778045, 0.423996,
		0.854960, -0.518427, 0.016623,
		41.406101, 28.776613, 27.897240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184505, 29.569111, 27.474667>,  <40.807629, 29.139511, 27.885603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184505, 29.569111, 27.474667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370522, 29.215725, 27.497396>,  <41.482132, 29.003693, 27.511034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370522, 29.215725, 27.497396>,  <41.184505, 29.569111, 27.474667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370522, 29.215725, 27.497396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287265, 0.089875, -0.953625,
		0.837389, 0.459793, 0.295584,
		0.465036, -0.883466, 0.056822,
		41.510033, 28.950686, 27.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825020, 29.738325, 27.199289>,  <41.184505, 29.569111, 27.474667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825020, 29.738325, 27.199289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769566, 29.343456, 27.167622>,  <41.736294, 29.106535, 27.148621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769566, 29.343456, 27.167622>,  <41.825020, 29.738325, 27.199289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769566, 29.343456, 27.167622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352683, 0.025487, -0.935396,
		0.925415, -0.157605, 0.344626,
		-0.138640, -0.987173, -0.079171,
		41.727974, 29.047304, 27.143871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363094, 29.399639, 26.983725>,  <41.825020, 29.738325, 27.199289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363094, 29.399639, 26.983725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096767, 29.112608, 26.901966>,  <41.936974, 28.940390, 26.852911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096767, 29.112608, 26.901966>,  <42.363094, 29.399639, 26.983725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096767, 29.112608, 26.901966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373568, -0.083475, -0.923839,
		0.645863, -0.691459, 0.323642,
		-0.665813, -0.717576, -0.204394,
		41.897022, 28.897335, 26.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754978, 28.963892, 26.646915>,  <42.363094, 29.399639, 26.983725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754978, 28.963892, 26.646915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378422, 28.860266, 26.560499>,  <42.152489, 28.798090, 26.508650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378422, 28.860266, 26.560499>,  <42.754978, 28.963892, 26.646915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378422, 28.860266, 26.560499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263340, -0.164152, -0.950635,
		0.210816, -0.951808, 0.222753,
		-0.941387, -0.259068, -0.216043,
		42.096004, 28.782545, 26.495686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725140, 28.212492, 26.430706>,  <42.754978, 28.963892, 26.646915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725140, 28.212492, 26.430706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432735, 28.434086, 26.271343>,  <42.257294, 28.567043, 26.175726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432735, 28.434086, 26.271343>,  <42.725140, 28.212492, 26.430706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432735, 28.434086, 26.271343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310570, -0.249773, -0.917148,
		-0.607599, -0.794174, 0.010534,
		-0.731006, 0.553987, -0.398408,
		42.213432, 28.600283, 26.151821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437077, 27.795534, 26.063160>,  <42.725140, 28.212492, 26.430706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437077, 27.795534, 26.063160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.296730, 28.138857, 25.913387>,  <42.212521, 28.344851, 25.823523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.296730, 28.138857, 25.913387>,  <42.437077, 27.795534, 26.063160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296730, 28.138857, 25.913387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142168, -0.346394, -0.927254,
		-0.925570, -0.378575, -0.000486,
		-0.350867, 0.858308, -0.374433,
		42.191471, 28.396349, 25.801058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968876, 27.589037, 25.578798>,  <42.437077, 27.795534, 26.063160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968876, 27.589037, 25.578798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091515, 27.957113, 25.481434>,  <42.165096, 28.177959, 25.423016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091515, 27.957113, 25.481434>,  <41.968876, 27.589037, 25.578798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091515, 27.957113, 25.481434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230537, -0.319900, -0.918976,
		-0.923500, 0.225639, -0.310217,
		0.306595, 0.920191, -0.243409,
		42.183495, 28.233171, 25.408411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759941, 27.650023, 24.942503>,  <41.968876, 27.589037, 25.578798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759941, 27.650023, 24.942503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031204, 27.942392, 24.973104>,  <42.193962, 28.117813, 24.991467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031204, 27.942392, 24.973104>,  <41.759941, 27.650023, 24.942503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031204, 27.942392, 24.973104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196535, -0.080062, -0.977223,
		-0.708150, 0.677747, -0.197947,
		0.678157, 0.730924, 0.076505,
		42.234650, 28.161669, 24.996056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636658, 28.157194, 24.363485>,  <41.759941, 27.650023, 24.942503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636658, 28.157194, 24.363485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.015671, 28.227650, 24.470188>,  <42.243080, 28.269922, 24.534210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.015671, 28.227650, 24.470188>,  <41.636658, 28.157194, 24.363485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015671, 28.227650, 24.470188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291247, -0.131751, -0.947532,
		-0.131751, 0.975509, -0.176138,
		0.947532, 0.176138, 0.266756,
		42.299931, 28.280491, 24.550215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911568, 28.681364, 23.926395>,  <41.636658, 28.157194, 24.363485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911568, 28.681364, 23.926395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233765, 28.486547, 24.061434>,  <42.427082, 28.369658, 24.142456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233765, 28.486547, 24.061434>,  <41.911568, 28.681364, 23.926395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233765, 28.486547, 24.061434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424058, 0.075789, -0.902458,
		0.413949, 0.870084, 0.267582,
		0.805494, -0.487041, 0.337594,
		42.475414, 28.340435, 24.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448833, 29.067049, 23.661928>,  <41.911568, 28.681364, 23.926395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448833, 29.067049, 23.661928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634861, 28.723536, 23.747910>,  <42.746479, 28.517427, 23.799500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634861, 28.723536, 23.747910>,  <42.448833, 29.067049, 23.661928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634861, 28.723536, 23.747910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477263, 0.038716, -0.877907,
		0.745609, 0.510877, 0.427870,
		0.465068, -0.858782, 0.214955,
		42.774380, 28.465900, 23.812397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081474, 29.207571, 23.497461>,  <42.448833, 29.067049, 23.661928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081474, 29.207571, 23.497461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.068115, 28.808134, 23.513960>,  <43.060101, 28.568472, 23.523859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.068115, 28.808134, 23.513960>,  <43.081474, 29.207571, 23.497461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068115, 28.808134, 23.513960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588794, -0.053004, -0.806544,
		0.807593, -0.002648, 0.589734,
		-0.033394, -0.998591, 0.041246,
		43.058098, 28.508556, 23.526333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733913, 28.943756, 23.408211>,  <43.081474, 29.207571, 23.497461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733913, 28.943756, 23.408211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.527519, 28.614117, 23.314728>,  <43.403683, 28.416332, 23.258638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.527519, 28.614117, 23.314728>,  <43.733913, 28.943756, 23.408211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527519, 28.614117, 23.314728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530663, -0.093357, -0.842426,
		0.672425, -0.558699, 0.485490,
		-0.515986, -0.824100, -0.233705,
		43.372723, 28.366886, 23.244616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252380, 28.570160, 23.251482>,  <43.733913, 28.943756, 23.408211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252380, 28.570160, 23.251482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.928368, 28.414118, 23.076366>,  <43.733959, 28.320492, 22.971296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.928368, 28.414118, 23.076366>,  <44.252380, 28.570160, 23.251482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928368, 28.414118, 23.076366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470567, 0.013002, -0.882269,
		0.349871, -0.920678, 0.173039,
		-0.810035, -0.390107, -0.437790,
		43.685356, 28.297087, 22.945030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546413, 28.127686, 22.807571>,  <44.252380, 28.570160, 23.251482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546413, 28.127686, 22.807571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.165096, 28.158409, 22.690725>,  <43.936306, 28.176844, 22.620619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.165096, 28.158409, 22.690725>,  <44.546413, 28.127686, 22.807571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165096, 28.158409, 22.690725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281551, -0.124186, -0.951476,
		-0.109344, -0.989283, 0.096764,
		-0.953296, 0.076795, -0.292113,
		43.879108, 28.181452, 22.603090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527367, 27.644613, 22.264767>,  <44.546413, 28.127686, 22.807571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527367, 27.644613, 22.264767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.212238, 27.880678, 22.194284>,  <44.023163, 28.022318, 22.151995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.212238, 27.880678, 22.194284>,  <44.527367, 27.644613, 22.264767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212238, 27.880678, 22.194284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190372, -0.038747, -0.980947,
		-0.585745, -0.806354, -0.081825,
		-0.787821, 0.590162, -0.176204,
		43.975891, 28.057726, 22.141424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310036, 27.381536, 21.711699>,  <44.527367, 27.644613, 22.264767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310036, 27.381536, 21.711699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138622, 27.742758, 21.723372>,  <44.035774, 27.959492, 21.730375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138622, 27.742758, 21.723372>,  <44.310036, 27.381536, 21.711699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138622, 27.742758, 21.723372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006601, 0.035427, -0.999350,
		-0.903503, -0.428060, -0.021143,
		-0.428531, 0.903056, 0.029182,
		44.010063, 28.013674, 21.732126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662453, 27.387537, 21.263830>,  <44.310036, 27.381536, 21.711699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662453, 27.387537, 21.263830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.834499, 27.743914, 21.322104>,  <43.937729, 27.957739, 21.357067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.834499, 27.743914, 21.322104>,  <43.662453, 27.387537, 21.263830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834499, 27.743914, 21.322104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039056, 0.142856, -0.988973,
		-0.901927, 0.431065, 0.026649,
		0.430118, 0.890941, 0.145681,
		43.963535, 28.011196, 21.365808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305252, 27.776094, 20.801449>,  <43.662453, 27.387537, 21.263830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305252, 27.776094, 20.801449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.641735, 27.978445, 20.877823>,  <43.843624, 28.099855, 20.923647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.641735, 27.978445, 20.877823>,  <43.305252, 27.776094, 20.801449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641735, 27.978445, 20.877823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156073, 0.110917, -0.981498,
		-0.517696, 0.855445, 0.014351,
		0.841209, 0.505878, 0.190933,
		43.894096, 28.130209, 20.935102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306335, 28.397945, 20.429132>,  <43.305252, 27.776094, 20.801449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306335, 28.397945, 20.429132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.688393, 28.289989, 20.477886>,  <43.917629, 28.225216, 20.507139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.688393, 28.289989, 20.477886>,  <43.306335, 28.397945, 20.429132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688393, 28.289989, 20.477886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201426, 0.290384, -0.935470,
		0.217080, 0.918061, 0.331722,
		0.955146, -0.269890, 0.121885,
		43.974937, 28.209023, 20.514452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841152, 28.969587, 20.126646>,  <43.306335, 28.397945, 20.429132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841152, 28.969587, 20.126646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955490, 28.939013, 19.744558>,  <43.024094, 28.920668, 19.515305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955490, 28.939013, 19.744558>,  <42.841152, 28.969587, 20.126646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955490, 28.939013, 19.744558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634558, 0.731852, -0.248452,
		0.718071, 0.677164, 0.160697,
		0.285849, -0.076435, -0.955221,
		43.041245, 28.916082, 19.457993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061352, 29.289383, 20.058506>,  <42.841152, 28.969587, 20.126646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061352, 29.289383, 20.058506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.087353, 29.574926, 19.779600>,  <42.102955, 29.746252, 19.612257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.087353, 29.574926, 19.779600>,  <42.061352, 29.289383, 20.058506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087353, 29.574926, 19.779600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138029, -0.685593, -0.714780,
		-0.988293, 0.142707, 0.053966,
		0.065006, 0.713860, -0.697265,
		42.106853, 29.789085, 19.570421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635220, 28.752701, 20.604879>,  <42.061352, 29.289383, 20.058506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635220, 28.752701, 20.604879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446350, 28.403458, 20.556318>,  <41.333027, 28.193913, 20.527182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446350, 28.403458, 20.556318>,  <41.635220, 28.752701, 20.604879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446350, 28.403458, 20.556318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622701, 0.232888, 0.746998,
		-0.623936, 0.428309, -0.653648,
		-0.472173, -0.873106, -0.121401,
		41.304699, 28.141525, 20.519897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972942, 28.902340, 20.661848>,  <41.635220, 28.752701, 20.604879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972942, 28.902340, 20.661848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987202, 28.508095, 20.727936>,  <40.995758, 28.271547, 20.767588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987202, 28.508095, 20.727936>,  <40.972942, 28.902340, 20.661848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987202, 28.508095, 20.727936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761037, 0.080379, 0.643710,
		-0.647729, -0.148687, -0.747221,
		0.035650, -0.985612, 0.165220,
		40.997898, 28.212412, 20.777502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252125, 28.749882, 20.743725>,  <40.972942, 28.902340, 20.661848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252125, 28.749882, 20.743725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465576, 28.462078, 20.921511>,  <40.593647, 28.289396, 21.028183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465576, 28.462078, 20.921511>,  <40.252125, 28.749882, 20.743725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465576, 28.462078, 20.921511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575006, 0.076717, 0.814545,
		-0.620171, -0.690232, -0.372784,
		0.533626, -0.719510, 0.444465,
		40.625664, 28.246225, 21.054850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739445, 28.253365, 21.014206>,  <40.252125, 28.749882, 20.743725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739445, 28.253365, 21.014206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082108, 28.197105, 21.212746>,  <40.287704, 28.163349, 21.331869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082108, 28.197105, 21.212746>,  <39.739445, 28.253365, 21.014206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082108, 28.197105, 21.212746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505685, -0.038488, 0.861859,
		-0.102122, -0.989310, -0.104099,
		0.856652, -0.140656, 0.496349,
		40.339104, 28.154911, 21.361650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745361, 27.615616, 21.469328>,  <39.739445, 28.253365, 21.014206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745361, 27.615616, 21.469328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017208, 27.855869, 21.637785>,  <40.180317, 28.000021, 21.738859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017208, 27.855869, 21.637785>,  <39.745361, 27.615616, 21.469328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017208, 27.855869, 21.637785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473690, -0.079037, 0.877138,
		0.560123, -0.795610, 0.230798,
		0.679618, 0.600632, 0.421143,
		40.221092, 28.036058, 21.764128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585659, 27.539377, 22.267422>,  <39.745361, 27.615616, 21.469328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585659, 27.539377, 22.267422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852489, 27.835728, 22.236151>,  <40.012589, 28.013538, 22.217388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852489, 27.835728, 22.236151>,  <39.585659, 27.539377, 22.267422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852489, 27.835728, 22.236151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218214, 0.294647, 0.930358,
		0.712315, -0.603560, 0.358221,
		0.667076, 0.740877, -0.078176,
		40.052612, 28.057991, 22.212698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005241, 27.472387, 22.891783>,  <39.585659, 27.539377, 22.267422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005241, 27.472387, 22.891783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045685, 27.849783, 22.765541>,  <40.069950, 28.076220, 22.689796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045685, 27.849783, 22.765541>,  <40.005241, 27.472387, 22.891783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045685, 27.849783, 22.765541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192437, 0.329786, 0.924234,
		0.976086, -0.032716, 0.214907,
		0.101111, 0.943489, -0.315604,
		40.076019, 28.132830, 22.670860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526913, 27.778337, 23.251940>,  <40.005241, 27.472387, 22.891783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526913, 27.778337, 23.251940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269463, 28.057337, 23.125925>,  <40.114994, 28.224735, 23.050316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269463, 28.057337, 23.125925>,  <40.526913, 27.778337, 23.251940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269463, 28.057337, 23.125925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167889, 0.272929, 0.947271,
		0.746701, 0.662577, -0.058562,
		-0.643624, 0.697496, -0.315036,
		40.076374, 28.266586, 23.031414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818790, 28.338924, 23.591526>,  <40.526913, 27.778337, 23.251940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818790, 28.338924, 23.591526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446285, 28.431269, 23.478779>,  <40.222782, 28.486675, 23.411131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446285, 28.431269, 23.478779>,  <40.818790, 28.338924, 23.591526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446285, 28.431269, 23.478779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141955, 0.482588, 0.864267,
		0.335549, 0.844874, -0.416646,
		-0.931265, 0.230859, -0.281866,
		40.166904, 28.500526, 23.394218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713402, 28.998333, 23.749912>,  <40.818790, 28.338924, 23.591526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713402, 28.998333, 23.749912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338020, 28.864990, 23.713741>,  <40.112793, 28.784985, 23.692039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338020, 28.864990, 23.713741>,  <40.713402, 28.998333, 23.749912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338020, 28.864990, 23.713741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283153, 0.592568, 0.754114,
		-0.197805, 0.733306, -0.650489,
		-0.938455, -0.333356, -0.090425,
		40.056484, 28.764984, 23.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356327, 29.473522, 24.000710>,  <40.713402, 28.998333, 23.749912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356327, 29.473522, 24.000710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083733, 29.181761, 24.024563>,  <39.920177, 29.006704, 24.038876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083733, 29.181761, 24.024563>,  <40.356327, 29.473522, 24.000710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083733, 29.181761, 24.024563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173143, 0.239867, 0.955241,
		-0.711058, 0.640654, -0.289755,
		-0.681482, -0.729401, 0.059635,
		39.879288, 28.962940, 24.042454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724110, 29.788422, 24.263004>,  <40.356327, 29.473522, 24.000710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724110, 29.788422, 24.263004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706989, 29.400253, 24.358044>,  <39.696716, 29.167353, 24.415068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706989, 29.400253, 24.358044>,  <39.724110, 29.788422, 24.263004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706989, 29.400253, 24.358044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284890, 0.239799, 0.928081,
		-0.957604, -0.027966, -0.286726,
		-0.042802, -0.970420, 0.237600,
		39.694149, 29.109127, 24.429323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064693, 29.722141, 24.582428>,  <39.724110, 29.788422, 24.263004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064693, 29.722141, 24.582428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277832, 29.394863, 24.668802>,  <39.405716, 29.198496, 24.720627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277832, 29.394863, 24.668802>,  <39.064693, 29.722141, 24.582428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277832, 29.394863, 24.668802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313476, 0.046165, 0.948473,
		-0.786005, -0.573084, -0.231886,
		0.532850, -0.818195, 0.215934,
		39.437687, 29.149405, 24.733583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708187, 29.415342, 25.125200>,  <39.064693, 29.722141, 24.582428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708187, 29.415342, 25.125200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048622, 29.205765, 25.138639>,  <39.252884, 29.080019, 25.146704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048622, 29.205765, 25.138639>,  <38.708187, 29.415342, 25.125200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048622, 29.205765, 25.138639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167944, -0.211055, 0.962938,
		-0.497434, -0.825190, -0.267620,
		0.851090, -0.523944, 0.033600,
		39.303947, 29.048582, 25.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515263, 28.745584, 25.297808>,  <38.708187, 29.415342, 25.125200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515263, 28.745584, 25.297808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897980, 28.775341, 25.410246>,  <39.127609, 28.793194, 25.477709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897980, 28.775341, 25.410246>,  <38.515263, 28.745584, 25.297808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897980, 28.775341, 25.410246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243238, -0.324920, 0.913927,
		0.159321, -0.942811, -0.292787,
		0.956793, 0.074391, 0.281094,
		39.185017, 28.797659, 25.494574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642410, 28.109318, 25.611078>,  <38.515263, 28.745584, 25.297808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642410, 28.109318, 25.611078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922554, 28.352638, 25.760460>,  <39.090641, 28.498631, 25.850090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922554, 28.352638, 25.760460>,  <38.642410, 28.109318, 25.611078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922554, 28.352638, 25.760460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315103, -0.205982, 0.926435,
		0.640479, -0.766510, 0.047418,
		0.700355, 0.608304, 0.373456,
		39.132660, 28.535130, 25.872498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189953, 27.750742, 26.099203>,  <38.642410, 28.109318, 25.611078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189953, 27.750742, 26.099203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156799, 28.135477, 26.203506>,  <39.136906, 28.366318, 26.266088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156799, 28.135477, 26.203506>,  <39.189953, 27.750742, 26.099203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156799, 28.135477, 26.203506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341330, -0.273234, 0.899353,
		0.936282, -0.014461, 0.350952,
		-0.082887, 0.961839, 0.260760,
		39.131935, 28.424028, 26.281734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570702, 27.755651, 26.675718>,  <39.189953, 27.750742, 26.099203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570702, 27.755651, 26.675718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333214, 28.077158, 26.690990>,  <39.190720, 28.270061, 26.700153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333214, 28.077158, 26.690990>,  <39.570702, 27.755651, 26.675718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333214, 28.077158, 26.690990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225248, -0.211563, 0.951055,
		0.772502, 0.556060, 0.306655,
		-0.593720, 0.803765, 0.038182,
		39.155098, 28.318287, 26.702444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.632534, 28.632837, 32.125198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330334, 28.873051, 32.020451>,  <41.149014, 29.017179, 31.957603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330334, 28.873051, 32.020451>,  <41.632534, 28.632837, 32.125198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330334, 28.873051, 32.020451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193951, 0.176773, 0.964953,
		0.625778, 0.779814, -0.017078,
		-0.755503, 0.600534, -0.261867,
		41.103683, 29.053211, 31.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727982, 29.289940, 32.504482>,  <41.632534, 28.632837, 32.125198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727982, 29.289940, 32.504482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340424, 29.247753, 32.414928>,  <41.107887, 29.222441, 32.361198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340424, 29.247753, 32.414928>,  <41.727982, 29.289940, 32.504482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340424, 29.247753, 32.414928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244210, 0.260934, 0.933957,
		-0.040082, 0.959578, -0.278573,
		-0.968894, -0.105465, -0.223880,
		41.049755, 29.216114, 32.347763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437241, 29.715239, 32.935802>,  <41.727982, 29.289940, 32.504482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437241, 29.715239, 32.935802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091251, 29.563576, 32.804314>,  <40.883659, 29.472578, 32.725418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091251, 29.563576, 32.804314>,  <41.437241, 29.715239, 32.935802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091251, 29.563576, 32.804314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429196, 0.219537, 0.876125,
		-0.260022, 0.898912, -0.352627,
		-0.864974, -0.379158, -0.328725,
		40.831760, 29.449829, 32.705696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947384, 30.321899, 33.067070>,  <41.437241, 29.715239, 32.935802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947384, 30.321899, 33.067070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777206, 29.960402, 33.048115>,  <40.675098, 29.743504, 33.036743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777206, 29.960402, 33.048115>,  <40.947384, 30.321899, 33.067070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777206, 29.960402, 33.048115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610952, 0.248190, 0.751758,
		-0.667635, 0.348781, -0.657735,
		-0.425442, -0.903744, -0.047388,
		40.649574, 29.689278, 33.033897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213940, 30.428572, 32.813938>,  <40.947384, 30.321899, 33.067070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213940, 30.428572, 32.813938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275105, 30.088264, 33.015057>,  <40.311806, 29.884079, 33.135727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275105, 30.088264, 33.015057>,  <40.213940, 30.428572, 32.813938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275105, 30.088264, 33.015057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589902, 0.329615, 0.737136,
		-0.792863, -0.409322, -0.451468,
		0.152916, -0.850769, 0.502800,
		40.320980, 29.833035, 33.165897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641579, 30.375740, 33.194660>,  <40.213940, 30.428572, 32.813938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641579, 30.375740, 33.194660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888355, 30.119730, 33.377853>,  <40.036423, 29.966124, 33.487770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888355, 30.119730, 33.377853>,  <39.641579, 30.375740, 33.194660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888355, 30.119730, 33.377853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462273, 0.176255, 0.869044,
		-0.636932, -0.747864, -0.187128,
		0.616945, -0.640027, 0.457980,
		40.073441, 29.927723, 33.515247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140606, 30.080044, 33.477909>,  <39.641579, 30.375740, 33.194660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140606, 30.080044, 33.477909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482952, 29.994623, 33.666332>,  <39.688358, 29.943371, 33.779385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482952, 29.994623, 33.666332>,  <39.140606, 30.080044, 33.477909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482952, 29.994623, 33.666332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392453, 0.325063, 0.860416,
		-0.336867, -0.921265, 0.194400,
		0.855863, -0.213553, 0.471056,
		39.739712, 29.930557, 33.807648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990498, 29.620596, 34.128574>,  <39.140606, 30.080044, 33.477909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990498, 29.620596, 34.128574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347748, 29.794859, 34.173336>,  <39.562099, 29.899416, 34.200191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347748, 29.794859, 34.173336>,  <38.990498, 29.620596, 34.128574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347748, 29.794859, 34.173336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280798, 0.345666, 0.895359,
		0.351442, -0.831067, 0.431063,
		0.893107, 0.435709, 0.111880,
		39.615688, 29.925556, 34.206905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130283, 29.517790, 34.859482>,  <38.990498, 29.620596, 34.128574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130283, 29.517790, 34.859482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351925, 29.826147, 34.733822>,  <39.484909, 30.011162, 34.658428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351925, 29.826147, 34.733822>,  <39.130283, 29.517790, 34.859482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351925, 29.826147, 34.733822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203474, 0.491359, 0.846856,
		0.807194, -0.405328, 0.429123,
		0.554107, 0.770893, -0.314148,
		39.518158, 30.057415, 34.639576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523319, 29.668480, 35.427078>,  <39.130283, 29.517790, 34.859482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523319, 29.668480, 35.427078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532200, 29.995260, 35.196564>,  <39.537529, 30.191328, 35.058254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532200, 29.995260, 35.196564>,  <39.523319, 29.668480, 35.427078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532200, 29.995260, 35.196564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232347, 0.564859, 0.791802,
		0.972380, 0.116316, 0.202358,
		0.022204, 0.816949, -0.576283,
		39.538860, 30.240345, 35.023678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700638, 30.190159, 35.930511>,  <39.523319, 29.668480, 35.427078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700638, 30.190159, 35.930511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580769, 30.406710, 35.616287>,  <39.508846, 30.536640, 35.427753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580769, 30.406710, 35.616287>,  <39.700638, 30.190159, 35.930511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580769, 30.406710, 35.616287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272041, 0.740731, 0.614257,
		0.914435, 0.397780, -0.074698,
		-0.299670, 0.541377, -0.785563,
		39.490868, 30.569122, 35.380619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929340, 30.895344, 36.013222>,  <39.700638, 30.190159, 35.930511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929340, 30.895344, 36.013222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602070, 30.903116, 35.783363>,  <39.405708, 30.907780, 35.645451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602070, 30.903116, 35.783363>,  <39.929340, 30.895344, 36.013222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602070, 30.903116, 35.783363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355697, 0.768127, 0.532410,
		0.451744, 0.640003, -0.621550,
		-0.818173, 0.019430, -0.574644,
		39.356617, 30.908945, 35.610970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838871, 31.654690, 36.018326>,  <39.929340, 30.895344, 36.013222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838871, 31.654690, 36.018326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507214, 31.464001, 35.901527>,  <39.308220, 31.349586, 35.831448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507214, 31.464001, 35.901527>,  <39.838871, 31.654690, 36.018326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507214, 31.464001, 35.901527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548141, 0.590618, 0.592209,
		-0.109859, 0.651081, -0.751016,
		-0.829139, -0.476722, -0.291999,
		39.258472, 31.320984, 35.813927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366936, 32.113411, 35.820107>,  <39.838871, 31.654690, 36.018326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366936, 32.113411, 35.820107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135838, 31.803030, 35.921387>,  <38.997177, 31.616802, 35.982155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135838, 31.803030, 35.921387>,  <39.366936, 32.113411, 35.820107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135838, 31.803030, 35.921387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573819, 0.606743, 0.550085,
		-0.580468, 0.172517, -0.795799,
		-0.577745, -0.775951, 0.253201,
		38.962513, 31.570244, 35.997349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597198, 32.717438, 35.664261>,  <39.366936, 32.113411, 35.820107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597198, 32.717438, 35.664261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748459, 33.008842, 35.892742>,  <39.839214, 33.183685, 36.029831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748459, 33.008842, 35.892742>,  <39.597198, 32.717438, 35.664261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748459, 33.008842, 35.892742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080506, 0.588802, -0.804258,
		-0.922236, 0.350118, 0.164008,
		0.378153, 0.728512, 0.571201,
		39.861904, 33.227398, 36.064102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255749, 33.374596, 35.455196>,  <39.597198, 32.717438, 35.664261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255749, 33.374596, 35.455196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571758, 33.500580, 35.665592>,  <39.761364, 33.576172, 35.791828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571758, 33.500580, 35.665592>,  <39.255749, 33.374596, 35.455196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571758, 33.500580, 35.665592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222819, 0.651766, -0.724950,
		-0.571149, 0.689929, 0.444733,
		0.790025, 0.314959, 0.525985,
		39.808765, 33.595066, 35.823387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251980, 34.040955, 35.511120>,  <39.255749, 33.374596, 35.455196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251980, 34.040955, 35.511120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628597, 33.907883, 35.532391>,  <39.854568, 33.828041, 35.545155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628597, 33.907883, 35.532391>,  <39.251980, 34.040955, 35.511120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628597, 33.907883, 35.532391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261104, 0.620814, -0.739199,
		0.212901, 0.709870, 0.671384,
		0.941540, -0.332678, 0.053178,
		39.911060, 33.808079, 35.548344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570103, 34.666286, 35.230240>,  <39.251980, 34.040955, 35.511120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570103, 34.666286, 35.230240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805496, 34.344830, 35.194813>,  <39.946732, 34.151955, 35.173557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805496, 34.344830, 35.194813>,  <39.570103, 34.666286, 35.230240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805496, 34.344830, 35.194813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402906, 0.386473, -0.829642,
		0.700963, 0.452549, 0.551226,
		0.588487, -0.803641, -0.088568,
		39.982044, 34.103737, 35.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214203, 34.997108, 34.942142>,  <39.570103, 34.666286, 35.230240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214203, 34.997108, 34.942142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210957, 34.606068, 34.858021>,  <40.209007, 34.371445, 34.807549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210957, 34.606068, 34.858021>,  <40.214203, 34.997108, 34.942142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210957, 34.606068, 34.858021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370446, 0.192404, -0.908708,
		0.928818, -0.085280, 0.360588,
		-0.008116, -0.977603, -0.210300,
		40.208523, 34.312786, 34.794930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835674, 34.956623, 34.626846>,  <40.214203, 34.997108, 34.942142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835674, 34.956623, 34.626846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634415, 34.631718, 34.508808>,  <40.513660, 34.436775, 34.437984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634415, 34.631718, 34.508808>,  <40.835674, 34.956623, 34.626846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634415, 34.631718, 34.508808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413484, 0.073579, -0.907534,
		0.758866, -0.578637, 0.298835,
		-0.503145, -0.812260, -0.295093,
		40.483471, 34.388039, 34.420280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305393, 34.461483, 34.297108>,  <40.835674, 34.956623, 34.626846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305393, 34.461483, 34.297108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968647, 34.311295, 34.142044>,  <40.766598, 34.221184, 34.049007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968647, 34.311295, 34.142044>,  <41.305393, 34.461483, 34.297108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968647, 34.311295, 34.142044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385607, 0.084056, -0.918826,
		0.377574, -0.923017, 0.074019,
		-0.841870, -0.375467, -0.387659,
		40.716087, 34.198654, 34.025745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601288, 33.857048, 33.780811>,  <41.305393, 34.461483, 34.297108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601288, 33.857048, 33.780811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.220566, 33.910881, 33.670574>,  <40.992134, 33.943180, 33.604431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.220566, 33.910881, 33.670574>,  <41.601288, 33.857048, 33.780811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220566, 33.910881, 33.670574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216726, -0.340677, -0.914860,
		-0.217012, -0.930498, 0.295091,
		-0.951806, 0.134582, -0.275594,
		40.935024, 33.951256, 33.587894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470444, 33.315243, 33.426971>,  <41.601288, 33.857048, 33.780811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470444, 33.315243, 33.426971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.190674, 33.564175, 33.286392>,  <41.022812, 33.713535, 33.202045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.190674, 33.564175, 33.286392>,  <41.470444, 33.315243, 33.426971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190674, 33.564175, 33.286392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285595, -0.207408, -0.935638,
		-0.655167, -0.754778, -0.032668,
		-0.699423, 0.622329, -0.351447,
		40.980846, 33.750874, 33.180958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123539, 32.959614, 32.836723>,  <41.470444, 33.315243, 33.426971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123539, 32.959614, 32.836723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035660, 33.347717, 32.796082>,  <40.982933, 33.580582, 32.771694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035660, 33.347717, 32.796082>,  <41.123539, 32.959614, 32.836723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035660, 33.347717, 32.796082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249421, -0.044828, -0.967357,
		-0.943146, -0.237865, -0.232156,
		-0.219693, 0.970263, -0.101607,
		40.969753, 33.638798, 32.765598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596519, 33.030766, 32.278866>,  <41.123539, 32.959614, 32.836723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596519, 33.030766, 32.278866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762207, 33.393005, 32.315357>,  <40.861618, 33.610348, 32.337250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762207, 33.393005, 32.315357>,  <40.596519, 33.030766, 32.278866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762207, 33.393005, 32.315357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093642, 0.057294, -0.993956,
		-0.905348, 0.420256, -0.061070,
		0.414217, 0.905595, 0.091225,
		40.886471, 33.664684, 32.342724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261086, 33.428822, 31.766235>,  <40.596519, 33.030766, 32.278866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261086, 33.428822, 31.766235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584503, 33.652637, 31.839087>,  <40.778553, 33.786926, 31.882797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584503, 33.652637, 31.839087>,  <40.261086, 33.428822, 31.766235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584503, 33.652637, 31.839087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171203, 0.072431, -0.982570,
		-0.562982, 0.825630, -0.037232,
		0.808542, 0.559544, 0.182128,
		40.827065, 33.820499, 31.893724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236721, 34.009296, 31.327534>,  <40.261086, 33.428822, 31.766235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236721, 34.009296, 31.327534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613323, 33.950905, 31.449032>,  <40.839283, 33.915871, 31.521931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613323, 33.950905, 31.449032>,  <40.236721, 34.009296, 31.327534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613323, 33.950905, 31.449032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289799, -0.109344, -0.950821,
		0.172011, 0.983227, -0.060644,
		0.941503, -0.145977, 0.303747,
		40.895775, 33.907112, 31.540155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516541, 34.488049, 30.889565>,  <40.236721, 34.009296, 31.327534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516541, 34.488049, 30.889565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821682, 34.272778, 31.032907>,  <41.004768, 34.143616, 31.118914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821682, 34.272778, 31.032907>,  <40.516541, 34.488049, 30.889565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821682, 34.272778, 31.032907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414880, -0.017666, -0.909705,
		0.495909, 0.842649, 0.209800,
		0.762856, -0.538173, 0.358359,
		41.050537, 34.111324, 31.140415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456257, 35.188892, 30.310213>,  <40.516541, 34.488049, 30.889565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456257, 35.188892, 30.310213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096798, 35.062241, 30.188763>,  <39.881123, 34.986252, 30.115892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096798, 35.062241, 30.188763>,  <40.456257, 35.188892, 30.310213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096798, 35.062241, 30.188763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334545, 0.046933, 0.941210,
		-0.283762, 0.947389, -0.148102,
		-0.898643, -0.316626, -0.303626,
		39.827206, 34.967251, 30.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009727, 35.617733, 30.656237>,  <40.456257, 35.188892, 30.310213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009727, 35.617733, 30.656237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779060, 35.308903, 30.549387>,  <39.640659, 35.123604, 30.485277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779060, 35.308903, 30.549387>,  <40.009727, 35.617733, 30.656237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779060, 35.308903, 30.549387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514754, 0.089465, 0.852657,
		-0.634419, 0.629200, -0.449021,
		-0.576663, -0.772078, -0.267125,
		39.606060, 35.077278, 30.469250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385441, 35.863571, 30.689007>,  <40.009727, 35.617733, 30.656237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385441, 35.863571, 30.689007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312092, 35.470539, 30.701078>,  <39.268082, 35.234718, 30.708323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312092, 35.470539, 30.701078>,  <39.385441, 35.863571, 30.689007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312092, 35.470539, 30.701078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604752, 0.136959, 0.784549,
		-0.775015, 0.125614, -0.619332,
		-0.183374, -0.982580, 0.030180,
		39.257080, 35.175766, 30.710133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681637, 35.808514, 30.885324>,  <39.385441, 35.863571, 30.689007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681637, 35.808514, 30.885324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811924, 35.437065, 30.956390>,  <38.890095, 35.214195, 30.999029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811924, 35.437065, 30.956390>,  <38.681637, 35.808514, 30.885324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811924, 35.437065, 30.956390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498636, -0.009070, 0.866764,
		-0.803287, -0.370911, -0.466000,
		0.325719, -0.928624, 0.177664,
		38.909641, 35.158478, 31.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047268, 35.452110, 31.135490>,  <38.681637, 35.808514, 30.885324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047268, 35.452110, 31.135490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332729, 35.197254, 31.251945>,  <38.504005, 35.044342, 31.321817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332729, 35.197254, 31.251945>,  <38.047268, 35.452110, 31.135490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332729, 35.197254, 31.251945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467210, -0.123256, 0.875513,
		-0.521939, -0.760830, -0.385640,
		0.713649, -0.637139, 0.291135,
		38.546825, 35.006111, 31.339287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718994, 34.862492, 31.362644>,  <38.047268, 35.452110, 31.135490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718994, 34.862492, 31.362644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.073845, 34.872189, 31.547003>,  <38.286755, 34.878006, 31.657618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.073845, 34.872189, 31.547003>,  <37.718994, 34.862492, 31.362644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073845, 34.872189, 31.547003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439214, -0.262433, 0.859197,
		0.141784, -0.964646, -0.222163,
		0.887124, 0.024243, 0.460895,
		38.339981, 34.879463, 31.685270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596622, 34.346474, 31.953634>,  <37.718994, 34.862492, 31.362644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596622, 34.346474, 31.953634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907887, 34.566399, 32.075081>,  <38.094643, 34.698353, 32.147949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907887, 34.566399, 32.075081>,  <37.596622, 34.346474, 31.953634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907887, 34.566399, 32.075081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342554, -0.033656, 0.938895,
		0.526432, -0.834612, 0.162150,
		0.778156, 0.549809, 0.303617,
		38.141335, 34.731342, 32.166164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869232, 33.969009, 32.502743>,  <37.596622, 34.346474, 31.953634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869232, 33.969009, 32.502743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987087, 34.348721, 32.546661>,  <38.057800, 34.576546, 32.573013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987087, 34.348721, 32.546661>,  <37.869232, 33.969009, 32.502743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987087, 34.348721, 32.546661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492467, 0.052367, 0.868754,
		0.818940, -0.310042, 0.482919,
		0.294640, 0.949279, 0.109800,
		38.075478, 34.633503, 32.579601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926182, 34.082790, 33.197208>,  <37.869232, 33.969009, 32.502743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926182, 34.082790, 33.197208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894703, 34.456879, 33.059120>,  <37.875816, 34.681332, 32.976269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894703, 34.456879, 33.059120>,  <37.926182, 34.082790, 33.197208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894703, 34.456879, 33.059120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450060, 0.275662, 0.849386,
		0.889524, 0.222215, 0.399209,
		-0.078699, 0.935217, -0.345218,
		37.871094, 34.737442, 32.955555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139511, 34.490860, 33.739342>,  <37.926182, 34.082790, 33.197208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139511, 34.490860, 33.739342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947586, 34.730202, 33.482674>,  <37.832432, 34.873806, 33.328671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947586, 34.730202, 33.482674>,  <38.139511, 34.490860, 33.739342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947586, 34.730202, 33.482674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352214, 0.538480, 0.765497,
		0.803569, 0.593304, -0.047622,
		-0.479816, 0.598356, -0.641675,
		37.803642, 34.909710, 33.290173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185905, 35.149727, 34.054508>,  <38.139511, 34.490860, 33.739342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185905, 35.149727, 34.054508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863174, 35.181156, 33.820293>,  <37.669537, 35.200012, 33.679764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863174, 35.181156, 33.820293>,  <38.185905, 35.149727, 34.054508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863174, 35.181156, 33.820293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467552, 0.520947, 0.714150,
		0.361147, 0.849965, -0.383577,
		-0.806826, 0.078571, -0.585541,
		37.621128, 35.204727, 33.644630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992157, 35.789581, 34.083668>,  <38.185905, 35.149727, 34.054508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992157, 35.789581, 34.083668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 35.601143, 33.956722>,  <37.465427, 35.488079, 33.880554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 35.601143, 33.956722>,  <37.992157, 35.789581, 34.083668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662952, 35.601143, 33.956722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472417, 0.257475, 0.842929,
		-0.315385, 0.843670, -0.434458,
		-0.823016, -0.471092, -0.317360,
		37.416046, 35.459816, 33.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.524837, 35.426651, 26.497128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292568, 35.101410, 26.480715>,  <41.153206, 34.906265, 26.470867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292568, 35.101410, 26.480715>,  <41.524837, 35.426651, 26.497128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292568, 35.101410, 26.480715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460958, 0.286811, 0.839796,
		-0.671074, 0.506558, -0.541349,
		-0.580670, -0.813104, -0.041031,
		41.118366, 34.857479, 26.468405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836720, 35.592926, 26.581917>,  <41.524837, 35.426651, 26.497128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836720, 35.592926, 26.581917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874470, 35.210884, 26.694248>,  <40.897121, 34.981659, 26.761648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874470, 35.210884, 26.694248>,  <40.836720, 35.592926, 26.581917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874470, 35.210884, 26.694248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351321, 0.231989, 0.907058,
		-0.931486, -0.184264, -0.313655,
		0.094374, -0.955106, 0.280831,
		40.902782, 34.924351, 26.778498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098087, 35.422092, 26.797121>,  <40.836720, 35.592926, 26.581917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098087, 35.422092, 26.797121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339787, 35.151234, 26.965103>,  <40.484806, 34.988720, 27.065893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339787, 35.151234, 26.965103>,  <40.098087, 35.422092, 26.797121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339787, 35.151234, 26.965103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418236, 0.179074, 0.890512,
		-0.678208, -0.713729, -0.175001,
		0.604246, -0.677144, 0.419957,
		40.521061, 34.948090, 27.091089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679428, 34.892017, 27.172684>,  <40.098087, 35.422092, 26.797121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679428, 34.892017, 27.172684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038628, 34.868462, 27.347103>,  <40.254147, 34.854328, 27.451756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038628, 34.868462, 27.347103>,  <39.679428, 34.892017, 27.172684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038628, 34.868462, 27.347103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437165, -0.006978, 0.899354,
		-0.049928, -0.998240, -0.032014,
		0.897994, -0.058899, 0.436048,
		40.308025, 34.850796, 27.477917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443581, 34.545921, 27.703125>,  <39.679428, 34.892017, 27.172684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443581, 34.545921, 27.703125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801487, 34.670765, 27.830858>,  <40.016232, 34.745670, 27.907499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801487, 34.670765, 27.830858>,  <39.443581, 34.545921, 27.703125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801487, 34.670765, 27.830858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336732, 0.001963, 0.941599,
		0.293258, -0.950043, 0.106855,
		0.894769, 0.312113, 0.319334,
		40.069920, 34.764397, 27.926659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734146, 33.953629, 28.143606>,  <39.443581, 34.545921, 27.703125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734146, 33.953629, 28.143606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929482, 34.289310, 28.239321>,  <40.046680, 34.490719, 28.296749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929482, 34.289310, 28.239321>,  <39.734146, 33.953629, 28.143606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929482, 34.289310, 28.239321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220267, -0.146788, 0.964332,
		0.844399, -0.523625, 0.113168,
		0.488336, 0.839208, 0.239285,
		40.075981, 34.541073, 28.311106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236847, 33.856171, 28.654552>,  <39.734146, 33.953629, 28.143606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236847, 33.856171, 28.654552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161415, 34.244770, 28.712009>,  <40.116158, 34.477928, 28.746483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161415, 34.244770, 28.712009>,  <40.236847, 33.856171, 28.654552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161415, 34.244770, 28.712009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134491, -0.170437, 0.976147,
		0.972805, 0.164762, 0.162799,
		-0.188579, 0.971496, 0.143643,
		40.104843, 34.536221, 28.755102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407246, 33.977428, 29.350878>,  <40.236847, 33.856171, 28.654552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407246, 33.977428, 29.350878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198071, 34.308540, 29.269579>,  <40.072567, 34.507210, 29.220798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198071, 34.308540, 29.269579>,  <40.407246, 33.977428, 29.350878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198071, 34.308540, 29.269579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107592, 0.172439, 0.979127,
		0.845553, 0.533891, -0.001112,
		-0.522938, 0.827783, -0.203249,
		40.041187, 34.556877, 29.208605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658588, 34.597660, 29.723999>,  <40.407246, 33.977428, 29.350878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658588, 34.597660, 29.723999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274242, 34.678265, 29.647976>,  <40.043633, 34.726627, 29.602362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274242, 34.678265, 29.647976>,  <40.658588, 34.597660, 29.723999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274242, 34.678265, 29.647976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190405, 0.017853, 0.981543,
		0.201188, 0.979323, 0.021215,
		-0.960869, 0.201514, -0.190060,
		39.985981, 34.738720, 29.590958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058628, 34.654819, 30.324896>,  <40.658588, 34.597660, 29.723999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058628, 34.654819, 30.324896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195347, 34.343105, 30.534998>,  <41.277378, 34.156078, 30.661060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195347, 34.343105, 30.534998>,  <41.058628, 34.654819, 30.324896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195347, 34.343105, 30.534998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455453, -0.351533, -0.817917,
		0.822033, 0.518791, 0.234774,
		0.341797, -0.779282, 0.525256,
		41.297886, 34.109322, 30.692575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866943, 34.736156, 30.311876>,  <41.058628, 34.654819, 30.324896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866943, 34.736156, 30.311876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764061, 34.355465, 30.378868>,  <41.702332, 34.127048, 30.419064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764061, 34.355465, 30.378868>,  <41.866943, 34.736156, 30.311876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764061, 34.355465, 30.378868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677227, -0.301156, -0.671319,
		0.689354, -0.059244, 0.721998,
		-0.257206, -0.951733, 0.167481,
		41.686897, 34.069946, 30.429111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429073, 34.417408, 30.331900>,  <41.866943, 34.736156, 30.311876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429073, 34.417408, 30.331900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172268, 34.115391, 30.278641>,  <42.018185, 33.934181, 30.246685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172268, 34.115391, 30.278641>,  <42.429073, 34.417408, 30.331900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172268, 34.115391, 30.278641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617990, -0.406852, -0.672726,
		0.453764, -0.514185, 0.727813,
		-0.642018, -0.755040, -0.133147,
		41.979664, 33.888878, 30.238697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947269, 33.834400, 30.274332>,  <42.429073, 34.417408, 30.331900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947269, 33.834400, 30.274332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583630, 33.755539, 30.127546>,  <42.365444, 33.708221, 30.039474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583630, 33.755539, 30.127546>,  <42.947269, 33.834400, 30.274332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583630, 33.755539, 30.127546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416254, -0.395407, -0.818771,
		0.016326, -0.897096, 0.441533,
		-0.909101, -0.197157, -0.366965,
		42.310898, 33.696392, 30.017456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949196, 33.109459, 30.146589>,  <42.947269, 33.834400, 30.274332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949196, 33.109459, 30.146589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670025, 33.288540, 29.922995>,  <42.502522, 33.395988, 29.788837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670025, 33.288540, 29.922995>,  <42.949196, 33.109459, 30.146589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670025, 33.288540, 29.922995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427104, -0.366338, -0.826667,
		-0.574876, -0.815697, 0.064462,
		-0.697925, 0.447699, -0.558987,
		42.460648, 33.422848, 29.755299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967888, 32.687466, 29.675758>,  <42.949196, 33.109459, 30.146589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967888, 32.687466, 29.675758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752251, 32.991714, 29.531076>,  <42.622868, 33.174263, 29.444267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752251, 32.991714, 29.531076>,  <42.967888, 32.687466, 29.675758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752251, 32.991714, 29.531076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091756, -0.373859, -0.922935,
		-0.837236, -0.530733, 0.131751,
		-0.539089, 0.760626, -0.361707,
		42.590523, 33.219902, 29.422564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536770, 32.381874, 29.183405>,  <42.967888, 32.687466, 29.675758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536770, 32.381874, 29.183405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565102, 32.774372, 29.111685>,  <42.582100, 33.009869, 29.068653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565102, 32.774372, 29.111685>,  <42.536770, 32.381874, 29.183405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565102, 32.774372, 29.111685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153998, -0.188353, -0.969952,
		-0.985529, 0.041088, -0.164450,
		0.070828, 0.981242, -0.179300,
		42.586349, 33.068745, 29.057896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118999, 32.497028, 28.602015>,  <42.536770, 32.381874, 29.183405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118999, 32.497028, 28.602015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384686, 32.796036, 28.604162>,  <42.544098, 32.975441, 28.605452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384686, 32.796036, 28.604162>,  <42.118999, 32.497028, 28.602015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384686, 32.796036, 28.604162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143765, -0.120689, -0.982225,
		-0.733586, 0.653182, -0.187631,
		0.664216, 0.747521, 0.005369,
		42.583950, 33.020290, 28.605772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900921, 33.056583, 28.177076>,  <42.118999, 32.497028, 28.602015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900921, 33.056583, 28.177076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300270, 33.050777, 28.199156>,  <42.539879, 33.047295, 28.212404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300270, 33.050777, 28.199156>,  <41.900921, 33.056583, 28.177076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300270, 33.050777, 28.199156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049639, -0.256499, -0.965269,
		0.028170, 0.966435, -0.255361,
		0.998370, -0.014516, 0.055199,
		42.599781, 33.046421, 28.215715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137665, 33.137283, 27.473238>,  <41.900921, 33.056583, 28.177076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137665, 33.137283, 27.473238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484211, 33.052193, 27.653973>,  <42.692139, 33.001137, 27.762413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484211, 33.052193, 27.653973>,  <42.137665, 33.137283, 27.473238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484211, 33.052193, 27.653973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459542, -0.014651, -0.888035,
		0.195528, 0.977002, 0.085063,
		0.866366, -0.212725, 0.451838,
		42.744122, 32.988377, 27.789524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674427, 33.642296, 27.298307>,  <42.137665, 33.137283, 27.473238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674427, 33.642296, 27.298307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866348, 33.306862, 27.401503>,  <42.981503, 33.105602, 27.463421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866348, 33.306862, 27.401503>,  <42.674427, 33.642296, 27.298307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866348, 33.306862, 27.401503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512811, 0.029447, -0.857997,
		0.711909, 0.543969, 0.444166,
		0.479803, -0.838588, 0.257989,
		43.010288, 33.055286, 27.478899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292324, 33.653370, 27.077166>,  <42.674427, 33.642296, 27.298307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292324, 33.653370, 27.077166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282623, 33.259247, 27.144789>,  <43.276802, 33.022774, 27.185364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282623, 33.259247, 27.144789>,  <43.292324, 33.653370, 27.077166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282623, 33.259247, 27.144789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396324, -0.164730, -0.903212,
		0.917790, 0.045095, 0.394496,
		-0.024255, -0.985307, 0.169060,
		43.275349, 32.963654, 27.195507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940895, 33.409370, 26.928999>,  <43.292324, 33.653370, 27.077166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940895, 33.409370, 26.928999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684952, 33.104004, 26.893721>,  <43.531387, 32.920784, 26.872553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684952, 33.104004, 26.893721>,  <43.940895, 33.409370, 26.928999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684952, 33.104004, 26.893721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397385, -0.230450, -0.888244,
		0.657776, -0.603396, 0.450826,
		-0.639856, -0.763417, -0.088196,
		43.492996, 32.874977, 26.867262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423412, 32.822353, 26.687067>,  <43.940895, 33.409370, 26.928999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423412, 32.822353, 26.687067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034695, 32.775234, 26.605349>,  <43.801464, 32.746964, 26.556316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034695, 32.775234, 26.605349>,  <44.423412, 32.822353, 26.687067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034695, 32.775234, 26.605349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232417, -0.331631, -0.914332,
		0.039954, -0.936026, 0.349656,
		-0.971795, -0.117797, -0.204298,
		43.743156, 32.739895, 26.544060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.296944, 29.222950, 24.677601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571686, 29.508680, 24.731226>,  <36.736530, 29.680119, 24.763401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571686, 29.508680, 24.731226>,  <36.296944, 29.222950, 24.677601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571686, 29.508680, 24.731226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221731, 0.030285, 0.974638,
		0.692149, -0.699157, 0.179189,
		0.686852, 0.714326, 0.134063,
		36.777740, 29.722979, 24.771444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735973, 29.071295, 25.318956>,  <36.296944, 29.222950, 24.677601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735973, 29.071295, 25.318956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793980, 29.462130, 25.256643>,  <36.828781, 29.696630, 25.219255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793980, 29.462130, 25.256643>,  <36.735973, 29.071295, 25.318956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793980, 29.462130, 25.256643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005037, 0.158174, 0.987398,
		0.989417, -0.142400, 0.027859,
		0.145012, 0.977089, -0.155783,
		36.837482, 29.755257, 25.209909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032879, 29.234293, 25.923227>,  <36.735973, 29.071295, 25.318956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032879, 29.234293, 25.923227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979092, 29.602192, 25.775724>,  <36.946819, 29.822931, 25.687223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979092, 29.602192, 25.775724>,  <37.032879, 29.234293, 25.923227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979092, 29.602192, 25.775724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137316, 0.385842, 0.912289,
		0.981357, 0.072039, -0.178180,
		-0.134470, 0.919748, -0.368757,
		36.938751, 29.878117, 25.665098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698990, 29.642895, 26.086620>,  <37.032879, 29.234293, 25.923227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698990, 29.642895, 26.086620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373093, 29.871428, 26.047071>,  <37.177555, 30.008547, 26.023342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373093, 29.871428, 26.047071>,  <37.698990, 29.642895, 26.086620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373093, 29.871428, 26.047071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086004, 0.287717, 0.953846,
		0.573408, 0.768636, -0.283552,
		-0.814743, 0.571330, -0.098873,
		37.128670, 30.042826, 26.017410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910591, 30.207104, 26.374224>,  <37.698990, 29.642895, 26.086620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910591, 30.207104, 26.374224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510864, 30.214291, 26.361334>,  <37.271027, 30.218603, 26.353600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510864, 30.214291, 26.361334>,  <37.910591, 30.207104, 26.374224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510864, 30.214291, 26.361334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022479, 0.396073, 0.917944,
		0.029257, 0.918043, -0.395400,
		-0.999319, 0.017968, -0.032224,
		37.211067, 30.219681, 26.351667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751995, 30.857351, 26.688337>,  <37.910591, 30.207104, 26.374224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751995, 30.857351, 26.688337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396774, 30.673462, 26.686800>,  <37.183640, 30.563129, 26.685877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396774, 30.673462, 26.686800>,  <37.751995, 30.857351, 26.688337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396774, 30.673462, 26.686800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225199, 0.427701, 0.875418,
		-0.400805, 0.778284, -0.483351,
		-0.888054, -0.459723, -0.003844,
		37.130360, 30.535545, 26.685646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261040, 31.444691, 26.901951>,  <37.751995, 30.857351, 26.688337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261040, 31.444691, 26.901951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115658, 31.078707, 26.972094>,  <37.028431, 30.859116, 27.014179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115658, 31.078707, 26.972094>,  <37.261040, 31.444691, 26.901951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115658, 31.078707, 26.972094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228799, 0.270129, 0.935244,
		-0.903081, 0.299794, -0.307521,
		-0.363451, -0.914961, 0.175356,
		37.006622, 30.804218, 27.024700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705997, 31.557392, 27.286892>,  <37.261040, 31.444691, 26.901951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705997, 31.557392, 27.286892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754192, 31.166962, 27.359287>,  <36.783108, 30.932703, 27.402723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754192, 31.166962, 27.359287>,  <36.705997, 31.557392, 27.286892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754192, 31.166962, 27.359287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487136, 0.100723, 0.867498,
		-0.864975, -0.192685, -0.463347,
		0.120484, -0.976077, 0.180987,
		36.790337, 30.874138, 27.413584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062462, 31.171988, 27.659193>,  <36.705997, 31.557392, 27.286892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062462, 31.171988, 27.659193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360191, 30.920160, 27.748306>,  <36.538830, 30.769064, 27.801775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360191, 30.920160, 27.748306>,  <36.062462, 31.171988, 27.659193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360191, 30.920160, 27.748306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325841, -0.051166, 0.944039,
		-0.582936, -0.775260, -0.243222,
		0.744321, -0.629566, 0.222785,
		36.583488, 30.731291, 27.815142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730148, 30.737154, 28.103634>,  <36.062462, 31.171988, 27.659193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730148, 30.737154, 28.103634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115532, 30.655365, 28.172840>,  <36.346764, 30.606291, 28.214365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115532, 30.655365, 28.172840>,  <35.730148, 30.737154, 28.103634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115532, 30.655365, 28.172840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207836, -0.163235, 0.964447,
		-0.168947, -0.965169, -0.199764,
		0.963463, -0.204459, 0.173019,
		36.404572, 30.594023, 28.224745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779526, 30.068083, 28.493792>,  <35.730148, 30.737154, 28.103634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779526, 30.068083, 28.493792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116329, 30.273844, 28.558804>,  <36.318413, 30.397301, 28.597811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116329, 30.273844, 28.558804>,  <35.779526, 30.068083, 28.493792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116329, 30.273844, 28.558804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066172, -0.200520, 0.977453,
		0.535392, -0.833777, -0.134800,
		0.842007, 0.514400, 0.162529,
		36.368931, 30.428164, 28.607563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117138, 29.610895, 28.939646>,  <35.779526, 30.068083, 28.493792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117138, 29.610895, 28.939646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315594, 29.952587, 29.001791>,  <36.434669, 30.157602, 29.039078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315594, 29.952587, 29.001791>,  <36.117138, 29.610895, 28.939646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315594, 29.952587, 29.001791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032279, -0.160667, 0.986480,
		0.867641, -0.494449, -0.052140,
		0.496141, 0.854228, 0.155362,
		36.464436, 30.208857, 29.048399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700890, 29.512981, 29.389170>,  <36.117138, 29.610895, 28.939646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700890, 29.512981, 29.389170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632324, 29.904385, 29.435020>,  <36.591183, 30.139227, 29.462530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632324, 29.904385, 29.435020>,  <36.700890, 29.512981, 29.389170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632324, 29.904385, 29.435020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078292, -0.102452, 0.991652,
		0.982083, 0.178961, -0.059047,
		-0.171417, 0.978507, 0.114628,
		36.580898, 30.197937, 29.469408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104965, 29.668562, 29.854389>,  <36.700890, 29.512981, 29.389170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104965, 29.668562, 29.854389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844326, 29.967125, 29.908489>,  <36.687943, 30.146263, 29.940948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844326, 29.967125, 29.908489>,  <37.104965, 29.668562, 29.854389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844326, 29.967125, 29.908489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080293, -0.109427, 0.990746,
		0.754301, 0.656431, 0.011372,
		-0.651601, 0.746408, 0.135248,
		36.648846, 30.191048, 29.949064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748943, 29.567179, 30.348040>,  <37.104965, 29.668562, 29.854389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748943, 29.567179, 30.348040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906063, 29.222643, 30.476913>,  <38.000336, 29.015923, 30.554237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906063, 29.222643, 30.476913>,  <37.748943, 29.567179, 30.348040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906063, 29.222643, 30.476913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343869, -0.187360, -0.920136,
		0.852912, 0.472222, 0.222591,
		0.392804, -0.861338, 0.322184,
		38.023903, 28.964241, 30.573568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367512, 29.600689, 30.052929>,  <37.748943, 29.567179, 30.348040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367512, 29.600689, 30.052929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322098, 29.213409, 30.142105>,  <38.294849, 28.981041, 30.195610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322098, 29.213409, 30.142105>,  <38.367512, 29.600689, 30.052929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322098, 29.213409, 30.142105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348279, -0.248937, -0.903732,
		0.930490, -0.024961, 0.365466,
		-0.113536, -0.968198, 0.222940,
		38.288036, 28.922951, 30.208986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982910, 29.230854, 29.786839>,  <38.367512, 29.600689, 30.052929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982910, 29.230854, 29.786839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707188, 28.947313, 29.846682>,  <38.541752, 28.777189, 29.882587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707188, 28.947313, 29.846682>,  <38.982910, 29.230854, 29.786839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707188, 28.947313, 29.846682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208905, -0.392218, -0.895837,
		0.693693, -0.586256, 0.418442,
		-0.689310, -0.708850, 0.149607,
		38.500393, 28.734657, 29.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344791, 28.635624, 29.671169>,  <38.982910, 29.230854, 29.786839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344791, 28.635624, 29.671169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953331, 28.576145, 29.614422>,  <38.718452, 28.540457, 29.580374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953331, 28.576145, 29.614422>,  <39.344791, 28.635624, 29.671169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953331, 28.576145, 29.614422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186009, -0.347296, -0.919122,
		0.087401, -0.925891, 0.367542,
		-0.978653, -0.148698, -0.141870,
		38.659737, 28.531536, 29.571861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251659, 27.988188, 29.341398>,  <39.344791, 28.635624, 29.671169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251659, 27.988188, 29.341398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919491, 28.191984, 29.251230>,  <38.720188, 28.314262, 29.197128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919491, 28.191984, 29.251230>,  <39.251659, 27.988188, 29.341398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919491, 28.191984, 29.251230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161261, -0.167479, -0.972597,
		-0.533284, -0.844019, 0.056917,
		-0.830423, 0.509492, -0.225422,
		38.670364, 28.344831, 29.183603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007973, 27.692833, 28.694538>,  <39.251659, 27.988188, 29.341398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007973, 27.692833, 28.694538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821175, 28.046217, 28.709608>,  <38.709095, 28.258247, 28.718651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821175, 28.046217, 28.709608>,  <39.007973, 27.692833, 28.694538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821175, 28.046217, 28.709608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104176, 0.097277, -0.989790,
		-0.878104, -0.458298, -0.137463,
		-0.466991, 0.883459, 0.037676,
		38.681076, 28.311255, 28.720911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424908, 27.563555, 28.254770>,  <39.007973, 27.692833, 28.694538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424908, 27.563555, 28.254770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522057, 27.951576, 28.256178>,  <38.580345, 28.184389, 28.257023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522057, 27.951576, 28.256178>,  <38.424908, 27.563555, 28.254770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522057, 27.951576, 28.256178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008595, 0.005780, -0.999946,
		-0.970020, 0.242831, 0.009742,
		0.242874, 0.970051, 0.003520,
		38.594917, 28.242592, 28.257235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945042, 27.821091, 27.859844>,  <38.424908, 27.563555, 28.254770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945042, 27.821091, 27.859844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234329, 28.097204, 27.868429>,  <38.407902, 28.262873, 27.873579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234329, 28.097204, 27.868429>,  <37.945042, 27.821091, 27.859844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234329, 28.097204, 27.868429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035058, 0.067730, -0.997088,
		-0.689729, 0.720360, 0.073184,
		0.723218, 0.690286, 0.021461,
		38.451294, 28.304291, 27.874868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789997, 28.341110, 27.436152>,  <37.945042, 27.821091, 27.859844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789997, 28.341110, 27.436152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184322, 28.406832, 27.449865>,  <38.420918, 28.446264, 27.458094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184322, 28.406832, 27.449865>,  <37.789997, 28.341110, 27.436152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184322, 28.406832, 27.449865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002713, 0.188656, -0.982039,
		-0.167820, 0.968201, 0.185534,
		0.985814, 0.164303, 0.034287,
		38.480068, 28.456123, 27.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934719, 28.873526, 26.966293>,  <37.789997, 28.341110, 27.436152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934719, 28.873526, 26.966293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295448, 28.708576, 27.017925>,  <38.511887, 28.609606, 27.048904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295448, 28.708576, 27.017925>,  <37.934719, 28.873526, 26.966293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295448, 28.708576, 27.017925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262290, 0.285022, -0.921936,
		0.343392, 0.865280, 0.365201,
		0.901824, -0.412374, 0.129080,
		38.565994, 28.584864, 27.056650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382980, 29.386650, 26.714363>,  <37.934719, 28.873526, 26.966293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382980, 29.386650, 26.714363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626774, 29.069647, 26.705759>,  <38.773048, 28.879444, 26.700596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626774, 29.069647, 26.705759>,  <38.382980, 29.386650, 26.714363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626774, 29.069647, 26.705759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458789, 0.374702, -0.805674,
		0.646565, 0.481172, 0.591968,
		0.609480, -0.792510, -0.021512,
		38.809616, 28.831894, 26.699305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108387, 29.665859, 26.530899>,  <38.382980, 29.386650, 26.714363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108387, 29.665859, 26.530899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124424, 29.274742, 26.448620>,  <39.134045, 29.040071, 26.399252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124424, 29.274742, 26.448620>,  <39.108387, 29.665859, 26.530899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124424, 29.274742, 26.448620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582313, 0.190154, -0.790414,
		0.811976, -0.088090, 0.577005,
		0.040092, -0.977794, -0.205696,
		39.136452, 28.981403, 26.386911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755974, 29.500504, 26.436506>,  <39.108387, 29.665859, 26.530899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755974, 29.500504, 26.436506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578121, 29.200968, 26.239918>,  <39.471409, 29.021246, 26.121965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578121, 29.200968, 26.239918>,  <39.755974, 29.500504, 26.436506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578121, 29.200968, 26.239918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644062, 0.114033, -0.756427,
		0.622486, -0.652868, 0.431596,
		-0.444630, -0.748839, -0.491471,
		39.444733, 28.976316, 26.092476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329315, 29.030443, 26.018068>,  <39.755974, 29.500504, 26.436506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329315, 29.030443, 26.018068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977253, 28.969181, 25.838348>,  <39.766014, 28.932425, 25.730516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977253, 28.969181, 25.838348>,  <40.329315, 29.030443, 26.018068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977253, 28.969181, 25.838348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458826, -0.031877, -0.887954,
		0.121673, -0.987688, 0.098328,
		-0.880156, -0.153156, -0.449298,
		39.713207, 28.923235, 25.703558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906349, 28.565645, 26.128769>,  <40.329315, 29.030443, 26.018068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906349, 28.565645, 26.128769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.285831, 28.616505, 26.244553>,  <41.513523, 28.647020, 26.314024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.285831, 28.616505, 26.244553>,  <40.906349, 28.565645, 26.128769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285831, 28.616505, 26.244553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282657, -0.069032, 0.956734,
		0.141632, -0.989478, -0.029551,
		0.948707, 0.127151, 0.289460,
		41.570442, 28.654650, 26.331390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980942, 28.045183, 26.674698>,  <40.906349, 28.565645, 26.128769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980942, 28.045183, 26.674698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275768, 28.313538, 26.707293>,  <41.452667, 28.474550, 26.726851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275768, 28.313538, 26.707293>,  <40.980942, 28.045183, 26.674698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275768, 28.313538, 26.707293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061632, -0.053348, 0.996672,
		0.672999, -0.739640, 0.002027,
		0.737071, 0.670885, 0.081488,
		41.496891, 28.514803, 26.731739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557526, 27.798344, 26.968382>,  <40.980942, 28.045183, 26.674698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557526, 27.798344, 26.968382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602890, 28.186844, 27.052109>,  <41.630108, 28.419943, 27.102345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602890, 28.186844, 27.052109>,  <41.557526, 27.798344, 26.968382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602890, 28.186844, 27.052109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078431, -0.218769, 0.972620,
		0.990448, -0.093890, -0.100987,
		0.113412, 0.971249, 0.209315,
		41.636913, 28.478218, 27.114902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097450, 27.801685, 27.472965>,  <41.557526, 27.798344, 26.968382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097450, 27.801685, 27.472965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915077, 28.156034, 27.507259>,  <41.805653, 28.368645, 27.527836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915077, 28.156034, 27.507259>,  <42.097450, 27.801685, 27.472965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915077, 28.156034, 27.507259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093030, -0.048369, 0.994488,
		0.885138, 0.461397, -0.060359,
		-0.455934, 0.885874, 0.085737,
		41.778297, 28.421797, 27.532980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536949, 28.141586, 28.044704>,  <42.097450, 27.801685, 27.472965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536949, 28.141586, 28.044704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.195881, 28.346014, 28.001339>,  <41.991238, 28.468672, 27.975321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.195881, 28.346014, 28.001339>,  <42.536949, 28.141586, 28.044704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195881, 28.346014, 28.001339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022208, 0.242778, 0.969827,
		0.521971, 0.824539, -0.218361,
		-0.852674, 0.511071, -0.108412,
		41.940079, 28.499336, 27.968815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642044, 28.824928, 28.263859>,  <42.536949, 28.141586, 28.044704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642044, 28.824928, 28.263859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.249474, 28.754801, 28.295029>,  <42.013931, 28.712725, 28.313730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.249474, 28.754801, 28.295029>,  <42.642044, 28.824928, 28.263859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249474, 28.754801, 28.295029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020509, 0.307958, 0.951179,
		-0.190756, 0.935107, -0.298641,
		-0.981423, -0.175318, 0.077923,
		41.955048, 28.702206, 28.318405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479950, 29.318195, 28.804251>,  <42.642044, 28.824928, 28.263859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479950, 29.318195, 28.804251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.152969, 29.088984, 28.780912>,  <41.956779, 28.951456, 28.766911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.152969, 29.088984, 28.780912>,  <42.479950, 29.318195, 28.804251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152969, 29.088984, 28.780912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244611, 0.253665, 0.935852,
		-0.521470, 0.779289, -0.347529,
		-0.817456, -0.573029, -0.058344,
		41.907734, 28.917074, 28.763409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922222, 29.762617, 28.868013>,  <42.479950, 29.318195, 28.804251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922222, 29.762617, 28.868013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795441, 29.400818, 28.982151>,  <41.719372, 29.183739, 29.050634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795441, 29.400818, 28.982151>,  <41.922222, 29.762617, 28.868013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795441, 29.400818, 28.982151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293630, 0.379655, 0.877293,
		-0.901844, 0.194275, -0.385921,
		-0.316953, -0.904499, 0.285345,
		41.700356, 29.129469, 29.067755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275925, 29.792946, 29.267981>,  <41.922222, 29.762617, 28.868013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275925, 29.792946, 29.267981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.386284, 29.419676, 29.360126>,  <41.452499, 29.195715, 29.415415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.386284, 29.419676, 29.360126>,  <41.275925, 29.792946, 29.267981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386284, 29.419676, 29.360126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390461, 0.110192, 0.914001,
		-0.878306, -0.342117, -0.333967,
		0.275895, -0.933174, 0.230365,
		41.469051, 29.139723, 29.429235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852486, 29.720049, 29.816847>,  <41.275925, 29.792946, 29.267981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852486, 29.720049, 29.816847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.111095, 29.420958, 29.877390>,  <41.266262, 29.241503, 29.913715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.111095, 29.420958, 29.877390>,  <40.852486, 29.720049, 29.816847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111095, 29.420958, 29.877390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235046, -0.006483, 0.971963,
		-0.725782, -0.663974, -0.179942,
		0.646525, -0.747727, 0.151360,
		41.305054, 29.196640, 29.922798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391640, 29.025030, 30.095488>,  <40.852486, 29.720049, 29.816847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391640, 29.025030, 30.095488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776997, 29.034695, 30.202293>,  <41.008209, 29.040493, 30.266376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776997, 29.034695, 30.202293>,  <40.391640, 29.025030, 30.095488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776997, 29.034695, 30.202293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251856, -0.259917, 0.932208,
		0.091926, -0.965329, -0.244316,
		0.963389, 0.024162, 0.267017,
		41.066013, 29.041943, 30.282398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392712, 28.525312, 30.538446>,  <40.391640, 29.025030, 30.095488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392712, 28.525312, 30.538446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.743458, 28.704273, 30.608797>,  <40.953907, 28.811649, 30.651007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.743458, 28.704273, 30.608797>,  <40.392712, 28.525312, 30.538446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743458, 28.704273, 30.608797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125930, -0.139298, 0.982211,
		0.463942, -0.883418, -0.065805,
		0.876869, 0.447402, 0.175875,
		41.006519, 28.838493, 30.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796410, 28.168394, 31.102043>,  <40.392712, 28.525312, 30.538446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796410, 28.168394, 31.102043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.911266, 28.550945, 31.080534>,  <40.980183, 28.780476, 31.067629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.911266, 28.550945, 31.080534>,  <40.796410, 28.168394, 31.102043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911266, 28.550945, 31.080534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120540, 0.091768, 0.988458,
		0.950272, -0.277349, 0.141632,
		0.287146, 0.956376, -0.053773,
		40.997410, 28.837858, 31.064402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367538, 28.245558, 31.518955>,  <40.796410, 28.168394, 31.102043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367538, 28.245558, 31.518955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.177879, 28.597540, 31.507187>,  <41.064083, 28.808729, 31.500126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.177879, 28.597540, 31.507187>,  <41.367538, 28.245558, 31.518955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177879, 28.597540, 31.507187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125372, 0.100554, 0.987001,
		0.871475, 0.464293, -0.157998,
		-0.474145, 0.879955, -0.029421,
		41.035637, 28.861526, 31.498360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.500446, 32.182961, 26.309813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119423, 32.279358, 26.235464>,  <43.890808, 32.337196, 26.190855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119423, 32.279358, 26.235464>,  <44.500446, 32.182961, 26.309813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119423, 32.279358, 26.235464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021998, -0.663650, -0.747719,
		-0.303548, -0.708161, 0.637469,
		-0.952562, 0.240992, -0.185872,
		43.833652, 32.351654, 26.179703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352547, 31.641781, 25.947529>,  <44.500446, 32.182961, 26.309813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352547, 31.641781, 25.947529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066452, 31.912418, 25.877497>,  <43.894794, 32.074802, 25.835478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066452, 31.912418, 25.877497>,  <44.352547, 31.641781, 25.947529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066452, 31.912418, 25.877497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153156, -0.396169, -0.905314,
		-0.681894, -0.620699, 0.386980,
		-0.715237, 0.676596, -0.175081,
		43.851879, 32.115398, 25.824972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842926, 31.172913, 25.712326>,  <44.352547, 31.641781, 25.947529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842926, 31.172913, 25.712326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.810211, 31.547560, 25.576057>,  <43.790581, 31.772348, 25.494295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.810211, 31.547560, 25.576057>,  <43.842926, 31.172913, 25.712326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810211, 31.547560, 25.576057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024044, -0.343573, -0.938818,
		-0.996360, -0.068593, 0.050620,
		-0.081788, 0.936617, -0.340673,
		43.785675, 31.828545, 25.473856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249390, 31.163830, 25.232750>,  <43.842926, 31.172913, 25.712326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249390, 31.163830, 25.232750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.476093, 31.478167, 25.133759>,  <43.612114, 31.666769, 25.074364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.476093, 31.478167, 25.133759>,  <43.249390, 31.163830, 25.232750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476093, 31.478167, 25.133759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065157, -0.256685, -0.964296,
		-0.821306, 0.562644, -0.094275,
		0.566755, 0.785840, -0.247477,
		43.646118, 31.713919, 25.059515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967197, 31.408436, 24.634157>,  <43.249390, 31.163830, 25.232750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967197, 31.408436, 24.634157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331738, 31.573034, 24.638418>,  <43.550461, 31.671793, 24.640976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331738, 31.573034, 24.638418>,  <42.967197, 31.408436, 24.634157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331738, 31.573034, 24.638418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149692, -0.307193, -0.939800,
		-0.383453, 0.858081, -0.341558,
		0.911349, 0.411497, 0.010654,
		43.605141, 31.696484, 24.641615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020519, 31.680359, 23.965517>,  <42.967197, 31.408436, 24.634157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020519, 31.680359, 23.965517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.394958, 31.694426, 24.105511>,  <43.619621, 31.702866, 24.189507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.394958, 31.694426, 24.105511>,  <43.020519, 31.680359, 23.965517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394958, 31.694426, 24.105511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351491, -0.131366, -0.926929,
		0.013377, 0.990710, -0.135332,
		0.936096, 0.035169, 0.349982,
		43.675789, 31.704977, 24.210505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350845, 32.201164, 23.578234>,  <43.020519, 31.680359, 23.965517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350845, 32.201164, 23.578234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.642422, 31.970552, 23.725891>,  <43.817368, 31.832186, 23.814486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.642422, 31.970552, 23.725891>,  <43.350845, 32.201164, 23.578234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642422, 31.970552, 23.725891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412980, -0.059724, -0.908780,
		0.545981, 0.814894, 0.194558,
		0.728940, -0.576525, 0.369143,
		43.861103, 31.797596, 23.836634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999882, 32.426125, 23.295820>,  <43.350845, 32.201164, 23.578234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999882, 32.426125, 23.295820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081242, 32.065929, 23.449572>,  <44.130058, 31.849812, 23.541822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081242, 32.065929, 23.449572>,  <43.999882, 32.426125, 23.295820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081242, 32.065929, 23.449572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651447, -0.168605, -0.739722,
		0.730920, 0.400863, 0.552327,
		0.203402, -0.900490, 0.384378,
		44.142262, 31.795782, 23.564884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745018, 32.279118, 23.215631>,  <43.999882, 32.426125, 23.295820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745018, 32.279118, 23.215631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547199, 31.934338, 23.260288>,  <44.428509, 31.727470, 23.287083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547199, 31.934338, 23.260288>,  <44.745018, 32.279118, 23.215631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547199, 31.934338, 23.260288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548202, -0.409024, -0.729503,
		0.674459, -0.299573, 0.674805,
		-0.494550, -0.861949, 0.111644,
		44.398834, 31.675753, 23.293781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271561, 31.780418, 23.213562>,  <44.745018, 32.279118, 23.215631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271561, 31.780418, 23.213562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.934925, 31.589018, 23.113354>,  <44.732944, 31.474178, 23.053228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.934925, 31.589018, 23.113354>,  <45.271561, 31.780418, 23.213562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934925, 31.589018, 23.113354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508106, -0.544091, -0.667678,
		0.183178, -0.689204, 0.701031,
		-0.841591, -0.478502, -0.250523,
		44.682449, 31.445467, 23.038197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487553, 31.166672, 22.890167>,  <45.271561, 31.780418, 23.213562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487553, 31.166672, 22.890167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.109154, 31.134146, 22.764647>,  <44.882114, 31.114630, 22.689333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.109154, 31.134146, 22.764647>,  <45.487553, 31.166672, 22.890167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109154, 31.134146, 22.764647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297278, -0.603631, -0.739767,
		-0.129268, -0.793106, 0.595208,
		-0.946000, -0.081314, -0.313803,
		44.825356, 31.109751, 22.670506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298172, 30.458601, 22.750896>,  <45.487553, 31.166672, 22.890167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298172, 30.458601, 22.750896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.028969, 30.658722, 22.532995>,  <44.867447, 30.778795, 22.402254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.028969, 30.658722, 22.532995>,  <45.298172, 30.458601, 22.750896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028969, 30.658722, 22.532995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216910, -0.570628, -0.792044,
		-0.707117, -0.651213, 0.275514,
		-0.673005, 0.500306, -0.544755,
		44.827068, 30.808813, 22.369568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871494, 29.900007, 22.327923>,  <45.298172, 30.458601, 22.750896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871494, 29.900007, 22.327923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868313, 30.271606, 22.179926>,  <44.866402, 30.494566, 22.091127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868313, 30.271606, 22.179926>,  <44.871494, 29.900007, 22.327923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868313, 30.271606, 22.179926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369274, -0.341123, -0.864449,
		-0.929286, -0.143508, -0.340341,
		-0.007957, 0.929000, -0.369995,
		44.865925, 30.550306, 22.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592800, 30.012327, 21.581985>,  <44.871494, 29.900007, 22.327923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592800, 30.012327, 21.581985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.826809, 30.327726, 21.657900>,  <44.967216, 30.516966, 21.703449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.826809, 30.327726, 21.657900>,  <44.592800, 30.012327, 21.581985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826809, 30.327726, 21.657900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352545, -0.036502, -0.935083,
		-0.730381, 0.613956, -0.299335,
		0.585026, 0.788496, 0.189787,
		45.002316, 30.564276, 21.714836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383659, 29.191437, 21.503651>,  <44.592800, 30.012327, 21.581985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383659, 29.191437, 21.503651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.228420, 28.826336, 21.452637>,  <44.135277, 28.607275, 21.422028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.228420, 28.826336, 21.452637>,  <44.383659, 29.191437, 21.503651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228420, 28.826336, 21.452637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336172, 0.011351, 0.941733,
		-0.858121, 0.408356, -0.311247,
		-0.388095, -0.912752, -0.127537,
		44.111992, 28.552509, 21.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731548, 29.255102, 21.764982>,  <44.383659, 29.191437, 21.503651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731548, 29.255102, 21.764982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.772079, 28.857697, 21.744329>,  <43.796398, 28.619253, 21.731937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.772079, 28.857697, 21.744329>,  <43.731548, 29.255102, 21.764982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772079, 28.857697, 21.744329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366742, -0.085548, 0.926381,
		-0.924788, -0.074933, -0.373031,
		0.101329, -0.993512, -0.051633,
		43.802479, 28.559643, 21.728840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026718, 28.900177, 21.919823>,  <43.731548, 29.255102, 21.764982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026718, 28.900177, 21.919823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319649, 28.637009, 21.990068>,  <43.495407, 28.479107, 22.032217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319649, 28.637009, 21.990068>,  <43.026718, 28.900177, 21.919823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319649, 28.637009, 21.990068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373934, -0.173003, 0.911177,
		-0.569102, -0.732945, -0.372713,
		0.732323, -0.657923, 0.175616,
		43.539345, 28.439632, 22.042753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712154, 28.289940, 22.058466>,  <43.026718, 28.900177, 21.919823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712154, 28.289940, 22.058466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.074249, 28.245483, 22.222513>,  <43.291504, 28.218809, 22.320942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.074249, 28.245483, 22.222513>,  <42.712154, 28.289940, 22.058466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074249, 28.245483, 22.222513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418322, -0.063792, 0.906056,
		-0.074562, -0.991752, -0.104251,
		0.905233, -0.111168, 0.410116,
		43.345821, 28.212141, 22.345549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676624, 27.648478, 22.396166>,  <42.712154, 28.289940, 22.058466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676624, 27.648478, 22.396166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.969658, 27.864733, 22.561590>,  <43.145477, 27.994486, 22.660845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.969658, 27.864733, 22.561590>,  <42.676624, 27.648478, 22.396166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969658, 27.864733, 22.561590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458244, -0.057549, 0.886961,
		0.503325, -0.839284, 0.205585,
		0.732581, 0.540638, 0.413563,
		43.189434, 28.026924, 22.685659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783455, 27.276194, 22.999672>,  <42.676624, 27.648478, 22.396166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783455, 27.276194, 22.999672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973362, 27.624132, 23.053272>,  <43.087307, 27.832895, 23.085432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973362, 27.624132, 23.053272>,  <42.783455, 27.276194, 22.999672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973362, 27.624132, 23.053272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339866, 0.040757, 0.939590,
		0.811840, -0.491632, 0.314982,
		0.474770, 0.869849, 0.134001,
		43.115791, 27.885086, 23.093473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134228, 27.188951, 23.585346>,  <42.783455, 27.276194, 22.999672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134228, 27.188951, 23.585346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102009, 27.586325, 23.552845>,  <43.082676, 27.824749, 23.533344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102009, 27.586325, 23.552845>,  <43.134228, 27.188951, 23.585346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102009, 27.586325, 23.552845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225404, 0.061252, 0.972338,
		0.970930, 0.096632, 0.218991,
		-0.080546, 0.993434, -0.081252,
		43.077847, 27.884356, 23.528469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382381, 27.454739, 24.273016>,  <43.134228, 27.188951, 23.585346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382381, 27.454739, 24.273016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210426, 27.779295, 24.114603>,  <43.107254, 27.974030, 24.019556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210426, 27.779295, 24.114603>,  <43.382381, 27.454739, 24.273016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210426, 27.779295, 24.114603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204833, 0.339549, 0.918014,
		0.879341, 0.475763, 0.020232,
		-0.429887, 0.811392, -0.396031,
		43.081459, 28.022713, 23.995794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682018, 27.933271, 24.581223>,  <43.382381, 27.454739, 24.273016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682018, 27.933271, 24.581223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315025, 28.060080, 24.485113>,  <43.094830, 28.136164, 24.427448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315025, 28.060080, 24.485113>,  <43.682018, 27.933271, 24.581223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315025, 28.060080, 24.485113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159410, 0.260377, 0.952256,
		0.364445, 0.911977, -0.188354,
		-0.917479, 0.317020, -0.240271,
		43.039783, 28.155186, 24.413033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533554, 28.499134, 24.934784>,  <43.682018, 27.933271, 24.581223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533554, 28.499134, 24.934784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154972, 28.466694, 24.809788>,  <42.927822, 28.447229, 24.734791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154972, 28.466694, 24.809788>,  <43.533554, 28.499134, 24.934784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154972, 28.466694, 24.809788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321341, 0.329912, 0.887636,
		0.031106, 0.940522, -0.338307,
		-0.946453, -0.081101, -0.312490,
		42.871037, 28.442364, 24.716042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180538, 29.068081, 25.024839>,  <43.533554, 28.499134, 24.934784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180538, 29.068081, 25.024839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.889580, 28.793676, 25.031483>,  <42.715004, 28.629034, 25.035469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.889580, 28.793676, 25.031483>,  <43.180538, 29.068081, 25.024839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889580, 28.793676, 25.031483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282286, 0.321204, 0.903959,
		-0.625463, 0.652851, -0.427295,
		-0.727400, -0.686013, 0.016610,
		42.671360, 28.587873, 25.036467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648327, 29.418865, 25.087866>,  <43.180538, 29.068081, 25.024839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648327, 29.418865, 25.087866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512024, 29.052626, 25.173252>,  <42.430241, 28.832882, 25.224483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512024, 29.052626, 25.173252>,  <42.648327, 29.418865, 25.087866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512024, 29.052626, 25.173252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529738, 0.374568, 0.760970,
		-0.776700, 0.146224, -0.612663,
		-0.340756, -0.915597, 0.213467,
		42.409798, 28.777946, 25.237291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829727, 29.495768, 25.316429>,  <42.648327, 29.418865, 25.087866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829727, 29.495768, 25.316429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938911, 29.141859, 25.467516>,  <42.004421, 28.929514, 25.558168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938911, 29.141859, 25.467516>,  <41.829727, 29.495768, 25.316429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938911, 29.141859, 25.467516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562368, 0.171806, 0.808842,
		-0.780534, -0.433201, -0.450670,
		0.272963, -0.884771, 0.377719,
		42.020802, 28.876429, 25.580832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193821, 29.130730, 25.582659>,  <41.829727, 29.495768, 25.316429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193821, 29.130730, 25.582659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514622, 28.987377, 25.773804>,  <41.707104, 28.901365, 25.888491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514622, 28.987377, 25.773804>,  <41.193821, 29.130730, 25.582659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514622, 28.987377, 25.773804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525017, -0.041420, 0.850083,
		-0.284864, -0.932655, -0.221377,
		0.802004, -0.358385, 0.477861,
		41.755222, 28.879862, 25.917162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555420, 28.676289, 25.370869>,  <41.193821, 29.130730, 25.582659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555420, 28.676289, 25.370869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172974, 28.776644, 25.310333>,  <39.943508, 28.836857, 25.274012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172974, 28.776644, 25.310333>,  <40.555420, 28.676289, 25.370869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172974, 28.776644, 25.310333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120118, -0.135475, -0.983473,
		-0.267246, -0.958489, 0.099393,
		-0.956112, 0.250890, -0.151337,
		39.886139, 28.851912, 25.264933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114647, 28.038879, 25.084154>,  <40.555420, 28.676289, 25.370869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114647, 28.038879, 25.084154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938755, 28.379520, 24.970024>,  <39.833221, 28.583906, 24.901546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938755, 28.379520, 24.970024>,  <40.114647, 28.038879, 25.084154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938755, 28.379520, 24.970024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020937, -0.327320, -0.944682,
		-0.897887, -0.409430, 0.161762,
		-0.439729, 0.851604, -0.285324,
		39.806835, 28.635002, 24.884426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570576, 27.813116, 24.606619>,  <40.114647, 28.038879, 25.084154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570576, 27.813116, 24.606619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607922, 28.205280, 24.537245>,  <39.630329, 28.440578, 24.495621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607922, 28.205280, 24.537245>,  <39.570576, 27.813116, 24.606619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607922, 28.205280, 24.537245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005710, -0.173667, -0.984788,
		-0.995615, 0.092939, -0.010617,
		0.093369, 0.980409, -0.173436,
		39.635933, 28.499403, 24.485214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003429, 27.990726, 24.170061>,  <39.570576, 27.813116, 24.606619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003429, 27.990726, 24.170061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285442, 28.271147, 24.127249>,  <39.454651, 28.439400, 24.101561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285442, 28.271147, 24.127249>,  <39.003429, 27.990726, 24.170061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285442, 28.271147, 24.127249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042864, -0.108521, -0.993169,
		-0.707878, 0.704805, -0.046461,
		0.705032, 0.701052, -0.107030,
		39.496952, 28.481462, 24.095140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932888, 28.216896, 23.444679>,  <39.003429, 27.990726, 24.170061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932888, 28.216896, 23.444679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262100, 28.424231, 23.537584>,  <39.459629, 28.548632, 23.593328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262100, 28.424231, 23.537584>,  <38.932888, 28.216896, 23.444679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262100, 28.424231, 23.537584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304895, -0.058158, -0.950608,
		-0.479226, 0.853197, -0.205904,
		0.823032, 0.518336, 0.232265,
		39.509010, 28.579731, 23.607264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007683, 28.858776, 22.952684>,  <38.932888, 28.216896, 23.444679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007683, 28.858776, 22.952684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.356613, 28.722561, 23.093019>,  <39.565971, 28.640831, 23.177219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.356613, 28.722561, 23.093019>,  <39.007683, 28.858776, 22.952684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356613, 28.722561, 23.093019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349587, -0.067244, -0.934488,
		0.341820, 0.937823, 0.060390,
		0.872323, -0.340538, 0.350836,
		39.618309, 28.620399, 23.198271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410931, 29.350500, 22.685907>,  <39.007683, 28.858776, 22.952684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410931, 29.350500, 22.685907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598866, 29.003557, 22.751566>,  <39.711628, 28.795391, 22.790960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598866, 29.003557, 22.751566>,  <39.410931, 29.350500, 22.685907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598866, 29.003557, 22.751566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178366, -0.088832, -0.979946,
		0.864543, 0.489697, 0.112969,
		0.469842, -0.867355, 0.164145,
		39.739819, 28.743351, 22.800810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368992, 30.113022, 22.982494>,  <39.410931, 29.350500, 22.685907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368992, 30.113022, 22.982494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030598, 30.201065, 22.788229>,  <38.827560, 30.253891, 22.671669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030598, 30.201065, 22.788229>,  <39.368992, 30.113022, 22.982494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030598, 30.201065, 22.788229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533135, -0.333584, 0.777488,
		0.009120, 0.916665, 0.399552,
		-0.845981, 0.220106, -0.485664,
		38.776802, 30.267097, 22.642530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948868, 30.409424, 23.450367>,  <39.368992, 30.113022, 22.982494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948868, 30.409424, 23.450367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.647625, 30.374685, 23.189510>,  <38.466881, 30.353842, 23.032995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.647625, 30.374685, 23.189510>,  <38.948868, 30.409424, 23.450367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647625, 30.374685, 23.189510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632592, -0.176702, 0.754058,
		-0.180722, 0.980425, 0.078138,
		-0.753105, -0.086845, -0.652144,
		38.421692, 30.348631, 22.993868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355492, 30.868326, 23.605228>,  <38.948868, 30.409424, 23.450367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355492, 30.868326, 23.605228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191090, 30.570086, 23.395407>,  <38.092449, 30.391142, 23.269514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191090, 30.570086, 23.395407>,  <38.355492, 30.868326, 23.605228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191090, 30.570086, 23.395407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748289, -0.052742, 0.661273,
		-0.520712, 0.664302, -0.536248,
		-0.411002, -0.745601, -0.524554,
		38.067791, 30.346405, 23.238041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662155, 31.034250, 23.404293>,  <38.355492, 30.868326, 23.605228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662155, 31.034250, 23.404293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703476, 30.636393, 23.405310>,  <37.728268, 30.397678, 23.405920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703476, 30.636393, 23.405310>,  <37.662155, 31.034250, 23.404293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703476, 30.636393, 23.405310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672101, -0.067921, 0.737337,
		-0.733217, -0.077881, -0.675520,
		0.103306, -0.994646, 0.002543,
		37.734467, 30.337999, 23.406073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043747, 30.895763, 23.654118>,  <37.662155, 31.034250, 23.404293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043747, 30.895763, 23.654118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208622, 30.532406, 23.682198>,  <37.307545, 30.314392, 23.699045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208622, 30.532406, 23.682198>,  <37.043747, 30.895763, 23.654118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208622, 30.532406, 23.682198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630434, -0.228738, 0.741776,
		-0.657767, -0.350003, -0.666964,
		0.412184, -0.908392, 0.070198,
		37.332275, 30.259888, 23.703257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525043, 30.466291, 23.672775>,  <37.043747, 30.895763, 23.654118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525043, 30.466291, 23.672775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840767, 30.278141, 23.830627>,  <37.030201, 30.165251, 23.925339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840767, 30.278141, 23.830627>,  <36.525043, 30.466291, 23.672775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840767, 30.278141, 23.830627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563710, -0.300426, 0.769399,
		-0.243351, -0.829752, -0.502286,
		0.789311, -0.470377, 0.394631,
		37.077560, 30.137028, 23.949017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258587, 29.755291, 24.013487>,  <36.525043, 30.466291, 23.672775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258587, 29.755291, 24.013487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616409, 29.857018, 24.160507>,  <36.831104, 29.918053, 24.248718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616409, 29.857018, 24.160507>,  <36.258587, 29.755291, 24.013487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616409, 29.857018, 24.160507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345791, -0.127243, 0.929644,
		0.283191, -0.958714, -0.025886,
		0.894556, 0.254316, 0.367549,
		36.884777, 29.933311, 24.270771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.914970, 30.607258, 21.213030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.288715, 30.745613, 21.247252>,  <42.512962, 30.828627, 21.267784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.288715, 30.745613, 21.247252>,  <41.914970, 30.607258, 21.213030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288715, 30.745613, 21.247252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305286, 0.653323, 0.692798,
		0.183737, -0.673446, 0.716038,
		0.934366, 0.345890, 0.085554,
		42.569027, 30.849380, 21.272917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143726, 30.429661, 21.881872>,  <41.914970, 30.607258, 21.213030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143726, 30.429661, 21.881872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.366783, 30.743687, 21.774014>,  <42.500618, 30.932102, 21.709297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.366783, 30.743687, 21.774014>,  <42.143726, 30.429661, 21.881872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366783, 30.743687, 21.774014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212908, 0.449249, 0.867666,
		0.802314, -0.426434, 0.417666,
		0.557639, 0.785066, -0.269648,
		42.534077, 30.979206, 21.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288773, 30.656321, 22.438086>,  <42.143726, 30.429661, 21.881872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288773, 30.656321, 22.438086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447483, 30.952284, 22.220791>,  <42.542709, 31.129862, 22.090414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447483, 30.952284, 22.220791>,  <42.288773, 30.656321, 22.438086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447483, 30.952284, 22.220791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234355, 0.653857, 0.719409,
		0.887496, -0.158132, 0.432834,
		0.396773, 0.739909, -0.543236,
		42.566513, 31.174257, 22.057819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759804, 31.018267, 22.859205>,  <42.288773, 30.656321, 22.438086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759804, 31.018267, 22.859205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.653961, 31.267729, 22.564985>,  <42.590454, 31.417406, 22.388453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.653961, 31.267729, 22.564985>,  <42.759804, 31.018267, 22.859205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653961, 31.267729, 22.564985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121794, 0.735019, 0.667018,
		0.956635, 0.266083, -0.118533,
		-0.264606, 0.623656, -0.735552,
		42.574577, 31.454826, 22.344320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004662, 31.677011, 23.011166>,  <42.759804, 31.018267, 22.859205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004662, 31.677011, 23.011166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699352, 31.751554, 22.763720>,  <42.516167, 31.796280, 22.615252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699352, 31.751554, 22.763720>,  <43.004662, 31.677011, 23.011166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699352, 31.751554, 22.763720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159891, 0.873225, 0.460341,
		0.625978, 0.450277, -0.636712,
		-0.763274, 0.186358, -0.618614,
		42.470371, 31.807463, 22.578135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004066, 32.338409, 22.981028>,  <43.004662, 31.677011, 23.011166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004066, 32.338409, 22.981028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.633789, 32.257393, 22.853237>,  <42.411621, 32.208782, 22.776564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.633789, 32.257393, 22.853237>,  <43.004066, 32.338409, 22.981028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633789, 32.257393, 22.853237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327860, 0.850841, 0.410582,
		0.188662, 0.484817, -0.854025,
		-0.925697, -0.202539, -0.319474,
		42.356079, 32.196632, 22.757395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707771, 32.911373, 22.751022>,  <43.004066, 32.338409, 22.981028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707771, 32.911373, 22.751022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373268, 32.703915, 22.822216>,  <42.172565, 32.579441, 22.864933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373268, 32.703915, 22.822216>,  <42.707771, 32.911373, 22.751022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373268, 32.703915, 22.822216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395484, 0.795326, 0.459400,
		-0.379823, 0.313787, -0.870214,
		-0.836258, -0.518647, 0.177985,
		42.122391, 32.548321, 22.875612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194096, 33.361961, 22.689503>,  <42.707771, 32.911373, 22.751022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194096, 33.361961, 22.689503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991798, 33.082058, 22.891315>,  <41.870419, 32.914116, 23.012403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991798, 33.082058, 22.891315>,  <42.194096, 33.361961, 22.689503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991798, 33.082058, 22.891315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456984, 0.713357, 0.531308,
		-0.731702, 0.038143, -0.680557,
		-0.505746, -0.699762, 0.504534,
		41.840076, 32.872128, 23.042675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483109, 33.621658, 22.670414>,  <42.194096, 33.361961, 22.689503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483109, 33.621658, 22.670414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543751, 33.362812, 22.969282>,  <41.580135, 33.207504, 23.148603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543751, 33.362812, 22.969282>,  <41.483109, 33.621658, 22.670414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543751, 33.362812, 22.969282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271665, 0.699518, 0.660963,
		-0.950376, -0.303184, -0.069749,
		0.151602, -0.647112, 0.747170,
		41.589230, 33.168678, 23.193434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013748, 33.809017, 23.161982>,  <41.483109, 33.621658, 22.670414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013748, 33.809017, 23.161982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235065, 33.571098, 23.395248>,  <41.367855, 33.428349, 23.535210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235065, 33.571098, 23.395248>,  <41.013748, 33.809017, 23.161982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235065, 33.571098, 23.395248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211783, 0.576641, 0.789071,
		-0.805618, -0.560090, 0.193080,
		0.553288, -0.594799, 0.583169,
		41.401051, 33.392658, 23.570200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526329, 33.665833, 23.734459>,  <41.013748, 33.809017, 23.161982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526329, 33.665833, 23.734459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901890, 33.587154, 23.847429>,  <41.127228, 33.539948, 23.915211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901890, 33.587154, 23.847429>,  <40.526329, 33.665833, 23.734459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901890, 33.587154, 23.847429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199654, 0.357133, 0.912466,
		-0.280344, -0.913108, 0.296043,
		0.938907, -0.196698, 0.282426,
		41.183563, 33.528145, 23.932158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417969, 33.404629, 24.405350>,  <40.526329, 33.665833, 23.734459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417969, 33.404629, 24.405350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809689, 33.476452, 24.367987>,  <41.044720, 33.519547, 24.345570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809689, 33.476452, 24.367987>,  <40.417969, 33.404629, 24.405350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809689, 33.476452, 24.367987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006887, 0.490780, 0.871256,
		0.202286, -0.852580, 0.481858,
		0.979302, 0.179562, -0.093406,
		41.103477, 33.530319, 24.339964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327152, 32.587276, 24.445921>,  <40.417969, 33.404629, 24.405350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327152, 32.587276, 24.445921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.938065, 32.665451, 24.495928>,  <39.704613, 32.712357, 24.525932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.938065, 32.665451, 24.495928>,  <40.327152, 32.587276, 24.445921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938065, 32.665451, 24.495928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165384, -0.206212, -0.964430,
		-0.162703, -0.958792, 0.232907,
		-0.972716, 0.195435, 0.125018,
		39.646252, 32.724083, 24.533432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855007, 31.946739, 24.125187>,  <40.327152, 32.587276, 24.445921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855007, 31.946739, 24.125187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659184, 32.294720, 24.101469>,  <39.541687, 32.503510, 24.087238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659184, 32.294720, 24.101469>,  <39.855007, 31.946739, 24.125187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659184, 32.294720, 24.101469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090085, -0.118098, -0.988907,
		-0.867303, -0.478789, 0.136185,
		-0.489561, 0.869950, -0.059295,
		39.512314, 32.555706, 24.083681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388306, 31.835871, 23.553438>,  <39.855007, 31.946739, 24.125187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388306, 31.835871, 23.553438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380932, 32.230679, 23.617254>,  <39.376507, 32.467564, 23.655544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380932, 32.230679, 23.617254>,  <39.388306, 31.835871, 23.553438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380932, 32.230679, 23.617254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131977, 0.155771, -0.978937,
		-0.991081, -0.039103, 0.127392,
		-0.018435, 0.987019, 0.159542,
		39.375401, 32.526783, 23.665117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696407, 32.149830, 23.293327>,  <39.388306, 31.835871, 23.553438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696407, 32.149830, 23.293327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985405, 32.426277, 23.300955>,  <39.158802, 32.592144, 23.305532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985405, 32.426277, 23.300955>,  <38.696407, 32.149830, 23.293327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985405, 32.426277, 23.300955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118541, 0.151003, -0.981400,
		-0.681139, 0.706795, 0.191024,
		0.722494, 0.691114, 0.019070,
		39.202152, 32.633610, 23.306675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439930, 32.672619, 22.740837>,  <38.696407, 32.149830, 23.293327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439930, 32.672619, 22.740837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819031, 32.765774, 22.828041>,  <39.046490, 32.821667, 22.880363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819031, 32.765774, 22.828041>,  <38.439930, 32.672619, 22.740837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819031, 32.765774, 22.828041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177324, 0.183493, -0.966895,
		-0.265183, 0.955035, 0.132609,
		0.947752, 0.232889, 0.218010,
		39.103355, 32.835640, 22.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556484, 33.356964, 22.385508>,  <38.439930, 32.672619, 22.740837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556484, 33.356964, 22.385508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917374, 33.198605, 22.453932>,  <39.133907, 33.103588, 22.494986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917374, 33.198605, 22.453932>,  <38.556484, 33.356964, 22.385508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917374, 33.198605, 22.453932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324837, 0.362910, -0.873371,
		0.283690, 0.843539, 0.456028,
		0.902220, -0.395902, 0.171059,
		39.188038, 33.079834, 22.505249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018570, 33.865181, 22.264355>,  <38.556484, 33.356964, 22.385508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018570, 33.865181, 22.264355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253357, 33.544796, 22.217161>,  <39.394230, 33.352566, 22.188845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253357, 33.544796, 22.217161>,  <39.018570, 33.865181, 22.264355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253357, 33.544796, 22.217161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269413, 0.330663, -0.904477,
		0.763468, 0.499114, 0.409880,
		0.586970, -0.800966, -0.117983,
		39.429447, 33.304504, 22.181767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741985, 34.101276, 22.116987>,  <39.018570, 33.865181, 22.264355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741985, 34.101276, 22.116987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707714, 33.729050, 21.974606>,  <39.687149, 33.505714, 21.889175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707714, 33.729050, 21.974606>,  <39.741985, 34.101276, 22.116987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707714, 33.729050, 21.974606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454730, 0.281363, -0.845018,
		0.886498, -0.234265, 0.399049,
		-0.085681, -0.930567, -0.355956,
		39.682011, 33.449879, 21.867819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431580, 33.943630, 21.863514>,  <39.741985, 34.101276, 22.116987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431580, 33.943630, 21.863514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200085, 33.674900, 21.678596>,  <40.061188, 33.513660, 21.567646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200085, 33.674900, 21.678596>,  <40.431580, 33.943630, 21.863514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200085, 33.674900, 21.678596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643683, -0.028242, -0.764771,
		0.500738, -0.740169, 0.448789,
		-0.578734, -0.671827, -0.462292,
		40.026463, 33.473351, 21.539909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980324, 33.558990, 21.475534>,  <40.431580, 33.943630, 21.863514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980324, 33.558990, 21.475534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.621841, 33.478088, 21.317595>,  <40.406754, 33.429546, 21.222830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.621841, 33.478088, 21.317595>,  <40.980324, 33.558990, 21.475534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621841, 33.478088, 21.317595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404598, -0.007547, -0.914464,
		0.181973, -0.979304, 0.088595,
		-0.896207, -0.202253, -0.394851,
		40.352978, 33.417412, 21.199139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028381, 33.007175, 21.109051>,  <40.980324, 33.558990, 21.475534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028381, 33.007175, 21.109051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710415, 33.189255, 20.948597>,  <40.519634, 33.298500, 20.852324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710415, 33.189255, 20.948597>,  <41.028381, 33.007175, 21.109051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710415, 33.189255, 20.948597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496124, 0.107095, -0.861622,
		-0.349245, -0.883928, -0.310965,
		-0.794914, 0.455194, -0.401136,
		40.471939, 33.325813, 20.828257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066021, 32.785839, 20.496195>,  <41.028381, 33.007175, 21.109051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066021, 32.785839, 20.496195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820683, 33.099880, 20.461723>,  <40.673481, 33.288303, 20.441040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820683, 33.099880, 20.461723>,  <41.066021, 32.785839, 20.496195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820683, 33.099880, 20.461723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437378, 0.246771, -0.864757,
		-0.657657, -0.568083, -0.494741,
		-0.613342, 0.785102, -0.086176,
		40.636681, 33.335411, 20.435871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612904, 32.720078, 19.939682>,  <41.066021, 32.785839, 20.496195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612904, 32.720078, 19.939682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660698, 33.116829, 19.957144>,  <40.689377, 33.354877, 19.967621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660698, 33.116829, 19.957144>,  <40.612904, 32.720078, 19.939682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660698, 33.116829, 19.957144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453844, -0.015461, -0.890947,
		-0.883033, 0.126272, -0.452004,
		0.119490, 0.991875, 0.043655,
		40.696545, 33.414391, 19.970240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465923, 31.939301, 19.965576>,  <40.612904, 32.720078, 19.939682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465923, 31.939301, 19.965576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311413, 31.580790, 19.878422>,  <40.218704, 31.365683, 19.826130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311413, 31.580790, 19.878422>,  <40.465923, 31.939301, 19.965576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311413, 31.580790, 19.878422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461378, -0.016797, 0.887045,
		-0.798699, 0.443175, -0.407034,
		-0.386279, -0.896278, -0.217886,
		40.195530, 31.311907, 19.813055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767864, 31.941923, 20.188854>,  <40.465923, 31.939301, 19.965576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767864, 31.941923, 20.188854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.838470, 31.554127, 20.120823>,  <39.880833, 31.321449, 20.080004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.838470, 31.554127, 20.120823>,  <39.767864, 31.941923, 20.188854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838470, 31.554127, 20.120823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480302, -0.235660, 0.844852,
		-0.859158, -0.067441, -0.507247,
		0.176516, -0.969492, -0.170077,
		39.891426, 31.263279, 20.069799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053932, 31.656488, 20.130709>,  <39.767864, 31.941923, 20.188854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053932, 31.656488, 20.130709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325523, 31.380424, 20.230848>,  <39.488476, 31.214787, 20.290932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325523, 31.380424, 20.230848>,  <39.053932, 31.656488, 20.130709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325523, 31.380424, 20.230848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506920, -0.194053, 0.839866,
		-0.531062, -0.697152, -0.481613,
		0.678973, -0.690161, 0.250347,
		39.529217, 31.173376, 20.305952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641354, 31.026751, 20.237415>,  <39.053932, 31.656488, 20.130709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641354, 31.026751, 20.237415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.972767, 30.977308, 20.455866>,  <39.171616, 30.947643, 20.586937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.972767, 30.977308, 20.455866>,  <38.641354, 31.026751, 20.237415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972767, 30.977308, 20.455866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556008, -0.066237, 0.828534,
		-0.066237, -0.990119, -0.123604,
		-0.828534, 0.123604, -0.546126,
		39.221329, 30.940228, 20.619703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541172, 30.423374, 20.585550>,  <38.641354, 31.026751, 20.237415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541172, 30.423374, 20.585550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836121, 30.601887, 20.788380>,  <39.013088, 30.708994, 20.910076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836121, 30.601887, 20.788380>,  <38.541172, 30.423374, 20.585550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836121, 30.601887, 20.788380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437195, -0.256932, 0.861886,
		0.514925, -0.857217, 0.005658,
		0.737369, 0.446280, 0.507071,
		39.057331, 30.735771, 20.940500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801888, 29.904827, 21.012039>,  <38.541172, 30.423374, 20.585550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801888, 29.904827, 21.012039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.894638, 30.256828, 21.177847>,  <38.950291, 30.468029, 21.277332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.894638, 30.256828, 21.177847>,  <38.801888, 29.904827, 21.012039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894638, 30.256828, 21.177847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408643, -0.298586, 0.862472,
		0.882748, -0.369380, 0.290371,
		0.231879, 0.880003, 0.414520,
		38.964203, 30.520828, 21.302202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072762, 29.707895, 21.646133>,  <38.801888, 29.904827, 21.012039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072762, 29.707895, 21.646133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.017139, 30.097717, 21.716457>,  <38.983765, 30.331610, 21.758652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.017139, 30.097717, 21.716457>,  <39.072762, 29.707895, 21.646133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017139, 30.097717, 21.716457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251093, -0.206432, 0.945694,
		0.957922, 0.087360, 0.273410,
		-0.139057, 0.974553, 0.175811,
		38.975422, 30.390083, 21.769201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484097, 29.893311, 22.224205>,  <39.072762, 29.707895, 21.646133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484097, 29.893311, 22.224205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170601, 30.139811, 22.193228>,  <38.982506, 30.287710, 22.174641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170601, 30.139811, 22.193228>,  <39.484097, 29.893311, 22.224205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170601, 30.139811, 22.193228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281302, -0.241028, 0.928857,
		0.553741, 0.749762, 0.362253,
		-0.783735, 0.616248, -0.077443,
		38.935482, 30.324684, 22.169994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031605, 29.335464, 22.286629>,  <39.484097, 29.893311, 22.224205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031605, 29.335464, 22.286629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068558, 28.960537, 22.421032>,  <40.090729, 28.735580, 22.501673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068558, 28.960537, 22.421032>,  <40.031605, 29.335464, 22.286629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068558, 28.960537, 22.421032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560870, -0.229840, -0.795361,
		0.822734, 0.261932, 0.504481,
		0.092381, -0.937318, 0.336007,
		40.096272, 28.679342, 22.521833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674271, 29.183847, 22.244844>,  <40.031605, 29.335464, 22.286629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674271, 29.183847, 22.244844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499748, 28.823999, 22.237667>,  <40.395035, 28.608089, 22.233360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499748, 28.823999, 22.237667>,  <40.674271, 29.183847, 22.244844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499748, 28.823999, 22.237667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621764, -0.287012, -0.728721,
		0.650423, -0.329099, 0.684576,
		-0.436303, -0.899621, -0.017943,
		40.368858, 28.554113, 22.232285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181255, 28.586592, 22.379744>,  <40.674271, 29.183847, 22.244844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181255, 28.586592, 22.379744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868187, 28.435549, 22.181822>,  <40.680344, 28.344923, 22.063068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868187, 28.435549, 22.181822>,  <41.181255, 28.586592, 22.379744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868187, 28.435549, 22.181822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611293, -0.316603, -0.725316,
		0.117228, -0.870157, 0.478627,
		-0.782674, -0.377609, -0.494806,
		40.633385, 28.322266, 22.033381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531963, 28.089706, 22.003977>,  <41.181255, 28.586592, 22.379744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531963, 28.089706, 22.003977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176262, 28.084597, 21.821083>,  <40.962841, 28.081532, 21.711348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176262, 28.084597, 21.821083>,  <41.531963, 28.089706, 22.003977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176262, 28.084597, 21.821083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417972, -0.428752, -0.800919,
		-0.185809, -0.903332, 0.386610,
		-0.889255, -0.012774, -0.457234,
		40.909485, 28.080765, 21.683912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342037, 27.429214, 21.704929>,  <41.531963, 28.089706, 22.003977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342037, 27.429214, 21.704929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.118736, 27.684128, 21.492430>,  <40.984756, 27.837076, 21.364929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.118736, 27.684128, 21.492430>,  <41.342037, 27.429214, 21.704929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118736, 27.684128, 21.492430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388211, -0.365254, -0.846098,
		-0.733244, -0.678573, -0.043496,
		-0.558252, 0.637282, -0.531250,
		40.951260, 27.875313, 21.333055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976620, 26.957424, 21.163363>,  <41.342037, 27.429214, 21.704929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976620, 26.957424, 21.163363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.001415, 27.336273, 21.037434>,  <41.016293, 27.563583, 20.961876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.001415, 27.336273, 21.037434>,  <40.976620, 26.957424, 21.163363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001415, 27.336273, 21.037434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334454, -0.316902, -0.887532,
		-0.940371, -0.050277, -0.336414,
		0.061988, 0.947124, -0.314821,
		41.020012, 27.620411, 20.942987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713463, 26.989738, 20.444342>,  <40.976620, 26.957424, 21.163363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713463, 26.989738, 20.444342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891846, 27.347130, 20.465584>,  <40.998875, 27.561563, 20.478329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891846, 27.347130, 20.465584>,  <40.713463, 26.989738, 20.444342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891846, 27.347130, 20.465584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310305, -0.098685, -0.945501,
		-0.839542, 0.438134, -0.321259,
		0.445959, 0.893476, 0.053105,
		41.025635, 27.615173, 20.481516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614929, 27.566334, 19.876358>,  <40.713463, 26.989738, 20.444342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614929, 27.566334, 19.876358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.979561, 27.606920, 20.035725>,  <41.198338, 27.631271, 20.131344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.979561, 27.606920, 20.035725>,  <40.614929, 27.566334, 19.876358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979561, 27.606920, 20.035725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397229, 0.032533, -0.917143,
		-0.106019, 0.994307, -0.010648,
		0.911575, 0.101465, 0.398417,
		41.253033, 27.637360, 20.155251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005173, 28.147783, 19.568953>,  <40.614929, 27.566334, 19.876358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005173, 28.147783, 19.568953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254261, 27.862669, 19.698046>,  <41.403713, 27.691601, 19.775501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254261, 27.862669, 19.698046>,  <41.005173, 28.147783, 19.568953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254261, 27.862669, 19.698046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426888, -0.036175, -0.903581,
		0.655733, 0.700450, 0.281752,
		0.622721, -0.712784, 0.322734,
		41.441078, 27.648834, 19.794867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.205200, 31.051567, 34.237701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576088, 31.143887, 34.355682>,  <36.798622, 31.199278, 34.426472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576088, 31.143887, 34.355682>,  <36.205200, 31.051567, 34.237701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576088, 31.143887, 34.355682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368129, -0.416789, -0.831125,
		-0.068892, 0.879214, -0.471420,
		0.927219, 0.230801, 0.294950,
		36.854252, 31.213127, 34.444168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383495, 31.330465, 33.718243>,  <36.205200, 31.051567, 34.237701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383495, 31.330465, 33.718243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684483, 31.179760, 33.934330>,  <36.865074, 31.089336, 34.063984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684483, 31.179760, 33.934330>,  <36.383495, 31.330465, 33.718243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684483, 31.179760, 33.934330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324224, -0.502055, -0.801760,
		0.573295, 0.778453, -0.255626,
		0.752471, -0.376765, 0.540218,
		36.910225, 31.066730, 34.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063709, 31.389402, 33.358212>,  <36.383495, 31.330465, 33.718243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063709, 31.389402, 33.358212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101021, 31.074434, 33.601940>,  <37.123405, 30.885454, 33.748177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101021, 31.074434, 33.601940>,  <37.063709, 31.389402, 33.358212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101021, 31.074434, 33.601940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274634, -0.567897, -0.775932,
		0.957014, 0.239716, 0.163280,
		0.093277, -0.787420, 0.609319,
		37.129005, 30.838209, 33.784737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664162, 31.123964, 33.078682>,  <37.063709, 31.389402, 33.358212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664162, 31.123964, 33.078682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521744, 30.838106, 33.319519>,  <37.436295, 30.666592, 33.464020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521744, 30.838106, 33.319519>,  <37.664162, 31.123964, 33.078682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521744, 30.838106, 33.319519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302241, -0.697749, -0.649459,
		0.884242, -0.049259, 0.464424,
		-0.356043, -0.714647, 0.602091,
		37.414932, 30.623713, 33.500145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138554, 30.593407, 32.913467>,  <37.664162, 31.123964, 33.078682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138554, 30.593407, 32.913467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832436, 30.409029, 33.093178>,  <37.648766, 30.298403, 33.201004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832436, 30.409029, 33.093178>,  <38.138554, 30.593407, 32.913467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832436, 30.409029, 33.093178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192535, -0.829957, -0.523547,
		0.614204, -0.314169, 0.723914,
		-0.765299, -0.460943, 0.449275,
		37.602844, 30.270746, 33.227959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425522, 29.910229, 33.180706>,  <38.138554, 30.593407, 32.913467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425522, 29.910229, 33.180706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028908, 29.911104, 33.128769>,  <37.790939, 29.911629, 33.097607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028908, 29.911104, 33.128769>,  <38.425522, 29.910229, 33.180706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028908, 29.911104, 33.128769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089730, -0.711234, -0.697205,
		-0.093872, -0.702952, 0.705015,
		-0.991532, 0.002187, -0.129841,
		37.731449, 29.911760, 33.089817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316147, 29.232046, 33.055286>,  <38.425522, 29.910229, 33.180706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316147, 29.232046, 33.055286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970829, 29.397345, 32.939388>,  <37.763638, 29.496523, 32.869850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970829, 29.397345, 32.939388>,  <38.316147, 29.232046, 33.055286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970829, 29.397345, 32.939388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088308, -0.441560, -0.892875,
		-0.496919, -0.796399, 0.344702,
		-0.863292, 0.413247, -0.289748,
		37.711842, 29.521318, 32.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842964, 28.651283, 32.932198>,  <38.316147, 29.232046, 33.055286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842964, 28.651283, 32.932198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720673, 28.975624, 32.732578>,  <37.647297, 29.170229, 32.612804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720673, 28.975624, 32.732578>,  <37.842964, 28.651283, 32.932198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720673, 28.975624, 32.732578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151552, -0.476023, -0.866276,
		-0.939980, -0.340476, 0.022647,
		-0.305726, 0.810850, -0.499052,
		37.628956, 29.218880, 32.582863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426891, 28.389816, 32.419178>,  <37.842964, 28.651283, 32.932198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426891, 28.389816, 32.419178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535004, 28.759232, 32.310345>,  <37.599869, 28.980881, 32.245045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535004, 28.759232, 32.310345>,  <37.426891, 28.389816, 32.419178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535004, 28.759232, 32.310345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165572, -0.322980, -0.931810,
		-0.948439, 0.206798, -0.240206,
		0.270278, 0.923536, -0.272087,
		37.616089, 29.036293, 32.228718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995941, 28.520853, 31.824753>,  <37.426891, 28.389816, 32.419178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995941, 28.520853, 31.824753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332172, 28.737228, 31.813326>,  <37.533909, 28.867054, 31.806469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332172, 28.737228, 31.813326>,  <36.995941, 28.520853, 31.824753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332172, 28.737228, 31.813326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131518, -0.254961, -0.957965,
		-0.525485, 0.801486, -0.285458,
		0.840576, 0.540939, -0.028568,
		37.584347, 28.899509, 31.804756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926319, 28.921915, 31.263960>,  <36.995941, 28.520853, 31.824753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926319, 28.921915, 31.263960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319603, 28.902010, 31.334183>,  <37.555573, 28.890068, 31.376316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319603, 28.902010, 31.334183>,  <36.926319, 28.921915, 31.263960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319603, 28.902010, 31.334183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165750, -0.158812, -0.973296,
		0.076313, 0.986054, -0.147898,
		0.983211, -0.049762, 0.175558,
		37.614567, 28.887081, 31.386850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279648, 29.298346, 30.840425>,  <36.926319, 28.921915, 31.263960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279648, 29.298346, 30.840425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593826, 29.065153, 30.923567>,  <37.782333, 28.925238, 30.973452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593826, 29.065153, 30.923567>,  <37.279648, 29.298346, 30.840425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593826, 29.065153, 30.923567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076434, -0.241890, -0.967288,
		0.614187, 0.775644, -0.145433,
		0.785450, -0.582980, 0.207851,
		37.829460, 28.890259, 30.985922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136303, 29.930668, 30.677517>,  <37.279648, 29.298346, 30.840425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136303, 29.930668, 30.677517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801212, 30.106598, 30.548042>,  <36.600159, 30.212156, 30.470358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801212, 30.106598, 30.548042>,  <37.136303, 29.930668, 30.677517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801212, 30.106598, 30.548042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337399, 0.049209, 0.940075,
		0.429396, 0.896735, 0.107173,
		-0.837723, 0.439825, -0.323688,
		36.549896, 30.238544, 30.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879616, 30.322319, 31.215231>,  <37.136303, 29.930668, 30.677517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879616, 30.322319, 31.215231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554459, 30.294554, 30.983927>,  <36.359364, 30.277895, 30.845144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554459, 30.294554, 30.983927>,  <36.879616, 30.322319, 31.215231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554459, 30.294554, 30.983927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579894, 0.188648, 0.792550,
		0.054074, 0.979589, -0.193603,
		-0.812896, -0.069413, -0.578258,
		36.310589, 30.273729, 30.810450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467148, 30.835983, 31.327209>,  <36.879616, 30.322319, 31.215231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467148, 30.835983, 31.327209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195694, 30.581005, 31.181273>,  <36.032822, 30.428019, 31.093710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195694, 30.581005, 31.181273>,  <36.467148, 30.835983, 31.327209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195694, 30.581005, 31.181273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657761, 0.306447, 0.688071,
		-0.326804, 0.706931, -0.627254,
		-0.678639, -0.637447, -0.364843,
		35.992104, 30.389771, 31.071819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885288, 31.176504, 31.319738>,  <36.467148, 30.835983, 31.327209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885288, 31.176504, 31.319738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751907, 30.799553, 31.308910>,  <35.671879, 30.573381, 31.302414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751907, 30.799553, 31.308910>,  <35.885288, 31.176504, 31.319738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751907, 30.799553, 31.308910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730275, 0.240030, 0.639598,
		-0.596245, 0.233045, -0.768233,
		-0.333454, -0.942378, -0.027070,
		35.651871, 30.516840, 31.300789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268028, 31.147726, 31.062618>,  <35.885288, 31.176504, 31.319738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268028, 31.147726, 31.062618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252163, 30.798714, 31.257397>,  <35.242641, 30.589306, 31.374264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252163, 30.798714, 31.257397>,  <35.268028, 31.147726, 31.062618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252163, 30.798714, 31.257397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829542, 0.300428, 0.470748,
		-0.557034, -0.385269, -0.735718,
		-0.039666, -0.872531, 0.486945,
		35.240265, 30.536955, 31.403481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618729, 31.007507, 31.022362>,  <35.268028, 31.147726, 31.062618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618729, 31.007507, 31.022362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735863, 30.792204, 31.338470>,  <34.806145, 30.663023, 31.528135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735863, 30.792204, 31.338470>,  <34.618729, 31.007507, 31.022362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735863, 30.792204, 31.338470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814227, 0.292927, 0.501226,
		-0.501280, -0.790236, -0.352484,
		0.292835, -0.538257, 0.790270,
		34.823711, 30.630728, 31.575552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039227, 30.999346, 31.377581>,  <34.618729, 31.007507, 31.022362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039227, 30.999346, 31.377581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306736, 30.845409, 31.632027>,  <34.467239, 30.753048, 31.784695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306736, 30.845409, 31.632027>,  <34.039227, 30.999346, 31.377581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306736, 30.845409, 31.632027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528293, 0.356036, 0.770808,
		-0.523120, -0.851548, 0.034796,
		0.668769, -0.384843, 0.636116,
		34.507366, 30.729958, 31.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607948, 30.694281, 31.904228>,  <34.039227, 30.999346, 31.377581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607948, 30.694281, 31.904228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981667, 30.740623, 32.039089>,  <34.205898, 30.768429, 32.120007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981667, 30.740623, 32.039089>,  <33.607948, 30.694281, 31.904228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981667, 30.740623, 32.039089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350917, 0.465658, 0.812416,
		-0.062874, -0.877348, 0.475718,
		0.934293, 0.115857, 0.337155,
		34.261955, 30.775381, 32.140236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542599, 30.519175, 32.572613>,  <33.607948, 30.694281, 31.904228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542599, 30.519175, 32.572613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885403, 30.724678, 32.556679>,  <34.091084, 30.847980, 32.547119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885403, 30.724678, 32.556679>,  <33.542599, 30.519175, 32.572613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885403, 30.724678, 32.556679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377122, 0.678005, 0.630942,
		0.351161, -0.525700, 0.774807,
		0.857009, 0.513759, -0.039836,
		34.142506, 30.878805, 32.544727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740051, 30.846453, 33.291950>,  <33.542599, 30.519175, 32.572613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740051, 30.846453, 33.291950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955437, 31.065973, 33.036179>,  <34.084667, 31.197685, 32.882713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955437, 31.065973, 33.036179>,  <33.740051, 30.846453, 33.291950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955437, 31.065973, 33.036179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136015, 0.805493, 0.576784,
		0.831598, -0.223605, 0.508375,
		0.538465, 0.548800, -0.639433,
		34.116978, 31.230614, 32.844349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164604, 31.255167, 33.685043>,  <33.740051, 30.846453, 33.291950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164604, 31.255167, 33.685043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154449, 31.444569, 33.332874>,  <34.148357, 31.558210, 33.121571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154449, 31.444569, 33.332874>,  <34.164604, 31.255167, 33.685043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154449, 31.444569, 33.332874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239937, 0.852079, 0.465179,
		0.970456, 0.223055, 0.091981,
		-0.025385, 0.473505, -0.880425,
		34.146835, 31.586620, 33.068748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582924, 31.880871, 33.771423>,  <34.164604, 31.255167, 33.685043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582924, 31.880871, 33.771423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332508, 31.942656, 33.465687>,  <34.182259, 31.979727, 33.282246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332508, 31.942656, 33.465687>,  <34.582924, 31.880871, 33.771423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332508, 31.942656, 33.465687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267681, 0.878058, 0.396687,
		0.732412, 0.452940, -0.508348,
		-0.626035, 0.154463, -0.764344,
		34.144699, 31.988995, 33.236385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655277, 32.506142, 33.497486>,  <34.582924, 31.880871, 33.771423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655277, 32.506142, 33.497486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274117, 32.440006, 33.395790>,  <34.045422, 32.400326, 33.334774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274117, 32.440006, 33.395790>,  <34.655277, 32.506142, 33.497486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274117, 32.440006, 33.395790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217431, 0.956875, 0.192651,
		0.211422, 0.238857, -0.947759,
		-0.952903, -0.165341, -0.254239,
		33.988247, 32.390404, 33.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437866, 33.129250, 33.034283>,  <34.655277, 32.506142, 33.497486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437866, 33.129250, 33.034283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130360, 32.955696, 33.222214>,  <33.945854, 32.851566, 33.334972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130360, 32.955696, 33.222214>,  <34.437866, 33.129250, 33.034283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130360, 32.955696, 33.222214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305592, 0.894579, 0.326100,
		-0.561788, 0.107121, -0.820317,
		-0.768771, -0.433881, 0.469829,
		33.899727, 32.825531, 33.363163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759800, 33.511864, 32.899700>,  <34.437866, 33.129250, 33.034283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759800, 33.511864, 32.899700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826199, 33.327770, 33.248558>,  <33.866039, 33.217316, 33.457870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826199, 33.327770, 33.248558>,  <33.759800, 33.511864, 32.899700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826199, 33.327770, 33.248558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219400, 0.845009, 0.487671,
		-0.961410, -0.272300, 0.039293,
		0.165996, -0.460231, 0.872143,
		33.875996, 33.189701, 33.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427483, 33.948547, 33.218391>,  <33.759800, 33.511864, 32.899700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427483, 33.948547, 33.218391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648666, 33.755466, 33.490047>,  <33.781376, 33.639618, 33.653042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648666, 33.755466, 33.490047>,  <33.427483, 33.948547, 33.218391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648666, 33.755466, 33.490047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171684, 0.731596, 0.659767,
		-0.815328, -0.481423, 0.321671,
		0.552960, -0.482701, 0.679143,
		33.814556, 33.610657, 33.693790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051113, 34.243172, 33.479912>,  <33.427483, 33.948547, 33.218391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051113, 34.243172, 33.479912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429150, 34.354755, 33.548004>,  <34.655972, 34.421707, 33.588860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429150, 34.354755, 33.548004>,  <34.051113, 34.243172, 33.479912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429150, 34.354755, 33.548004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151933, 0.086113, -0.984632,
		-0.289333, 0.956433, 0.039001,
		0.945094, 0.278961, 0.170229,
		34.712677, 34.438442, 33.599072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177368, 34.828735, 33.164310>,  <34.051113, 34.243172, 33.479912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177368, 34.828735, 33.164310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536575, 34.664368, 33.227173>,  <34.752102, 34.565746, 33.264889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536575, 34.664368, 33.227173>,  <34.177368, 34.828735, 33.164310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536575, 34.664368, 33.227173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225725, 0.123743, -0.966300,
		0.377629, 0.903233, 0.203880,
		0.898022, -0.410924, 0.157153,
		34.805981, 34.541092, 33.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671162, 35.329990, 32.983818>,  <34.177368, 34.828735, 33.164310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671162, 35.329990, 32.983818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845512, 34.974068, 32.929779>,  <34.950123, 34.760513, 32.897358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845512, 34.974068, 32.929779>,  <34.671162, 35.329990, 32.983818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845512, 34.974068, 32.929779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313314, 0.290733, -0.904051,
		0.843711, 0.351725, 0.405513,
		0.435873, -0.889811, -0.135095,
		34.976273, 34.707123, 32.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378315, 35.416615, 32.650230>,  <34.671162, 35.329990, 32.983818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378315, 35.416615, 32.650230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327717, 35.029640, 32.562531>,  <35.297356, 34.797455, 32.509911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327717, 35.029640, 32.562531>,  <35.378315, 35.416615, 32.650230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327717, 35.029640, 32.562531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390654, 0.154581, -0.907466,
		0.911805, -0.200445, 0.358377,
		-0.126498, -0.967433, -0.219253,
		35.289768, 34.739410, 32.496754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033016, 35.156620, 32.331318>,  <35.378315, 35.416615, 32.650230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033016, 35.156620, 32.331318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761818, 34.874653, 32.247978>,  <35.599098, 34.705471, 32.197975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761818, 34.874653, 32.247978>,  <36.033016, 35.156620, 32.331318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761818, 34.874653, 32.247978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395214, -0.110586, -0.911908,
		0.619784, -0.700611, 0.353572,
		-0.677993, -0.704922, -0.208352,
		35.558418, 34.663177, 32.185474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372368, 34.474022, 32.136711>,  <36.033016, 35.156620, 32.331318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372368, 34.474022, 32.136711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007496, 34.462601, 31.973196>,  <35.788570, 34.455746, 31.875086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007496, 34.462601, 31.973196>,  <36.372368, 34.474022, 32.136711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007496, 34.462601, 31.973196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407535, -0.167607, -0.897676,
		-0.042881, -0.985440, 0.164526,
		-0.912182, -0.028557, -0.408789,
		35.733841, 34.454033, 31.850559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451199, 33.846127, 31.739906>,  <36.372368, 34.474022, 32.136711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451199, 33.846127, 31.739906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125271, 34.029125, 31.597494>,  <35.929714, 34.138924, 31.512047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125271, 34.029125, 31.597494>,  <36.451199, 33.846127, 31.739906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125271, 34.029125, 31.597494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275978, -0.233963, -0.932254,
		-0.509805, -0.857878, 0.064377,
		-0.814822, 0.457501, -0.356031,
		35.880825, 34.166374, 31.490685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082340, 33.327290, 31.542793>,  <36.451199, 33.846127, 31.739906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082340, 33.327290, 31.542793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962345, 33.660931, 31.357630>,  <35.890347, 33.861115, 31.246531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962345, 33.660931, 31.357630>,  <36.082340, 33.327290, 31.542793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962345, 33.660931, 31.357630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165080, -0.432548, -0.886369,
		-0.939551, -0.342316, -0.007935,
		-0.299986, 0.834100, -0.462911,
		35.872349, 33.911160, 31.218756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702267, 33.064991, 31.030821>,  <36.082340, 33.327290, 31.542793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702267, 33.064991, 31.030821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801849, 33.439255, 30.930775>,  <35.861599, 33.663815, 30.870747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801849, 33.439255, 30.930775>,  <35.702267, 33.064991, 31.030821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801849, 33.439255, 30.930775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275790, -0.316040, -0.907777,
		-0.928419, 0.157018, -0.336726,
		0.248956, 0.935662, -0.250114,
		35.876537, 33.719952, 30.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402946, 33.101112, 30.426355>,  <35.702267, 33.064991, 31.030821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402946, 33.101112, 30.426355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698467, 33.370678, 30.425554>,  <35.875782, 33.532417, 30.425074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698467, 33.370678, 30.425554>,  <35.402946, 33.101112, 30.426355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698467, 33.370678, 30.425554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396056, -0.436594, -0.807791,
		-0.545258, 0.596006, -0.589466,
		0.738805, 0.673916, -0.002005,
		35.920109, 33.572853, 30.424953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344833, 33.538303, 29.790430>,  <35.402946, 33.101112, 30.426355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344833, 33.538303, 29.790430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716206, 33.582943, 29.932167>,  <35.939030, 33.609726, 30.017210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716206, 33.582943, 29.932167>,  <35.344833, 33.538303, 29.790430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716206, 33.582943, 29.932167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371468, -0.266252, -0.889450,
		-0.004916, 0.957421, -0.288652,
		0.928433, 0.111598, 0.354342,
		35.994736, 33.616421, 30.038469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771725, 33.779072, 29.212158>,  <35.344833, 33.538303, 29.790430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771725, 33.779072, 29.212158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057129, 33.650757, 29.461317>,  <36.228371, 33.573769, 29.610811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057129, 33.650757, 29.461317>,  <35.771725, 33.779072, 29.212158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057129, 33.650757, 29.461317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564214, -0.264038, -0.782270,
		0.415412, 0.909603, -0.007400,
		0.713510, -0.320789, 0.622895,
		36.271183, 33.554520, 29.648186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373459, 34.148781, 29.160501>,  <35.771725, 33.779072, 29.212158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373459, 34.148781, 29.160501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499401, 33.788731, 29.280924>,  <36.574966, 33.572701, 29.353178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499401, 33.788731, 29.280924>,  <36.373459, 34.148781, 29.160501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499401, 33.788731, 29.280924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626043, -0.041452, -0.778686,
		0.713395, 0.433651, 0.550467,
		0.314860, -0.900127, 0.301056,
		36.593861, 33.518692, 29.371241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107067, 34.250977, 29.167191>,  <36.373459, 34.148781, 29.160501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107067, 34.250977, 29.167191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018402, 33.861057, 29.157183>,  <36.965202, 33.627106, 29.151178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018402, 33.861057, 29.157183>,  <37.107067, 34.250977, 29.167191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018402, 33.861057, 29.157183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626177, -0.122626, -0.769978,
		0.747508, -0.186342, 0.637580,
		-0.221663, -0.974802, -0.025019,
		36.951904, 33.568615, 29.149677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757874, 33.963390, 29.015390>,  <37.107067, 34.250977, 29.167191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757874, 33.963390, 29.015390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510525, 33.661652, 28.927237>,  <37.362114, 33.480606, 28.874344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510525, 33.661652, 28.927237>,  <37.757874, 33.963390, 29.015390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510525, 33.661652, 28.927237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608205, -0.281771, -0.742086,
		0.497694, -0.592927, 0.633039,
		-0.618375, -0.754349, -0.220385,
		37.325012, 33.435349, 28.861120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204720, 33.502426, 28.980509>,  <37.757874, 33.963390, 29.015390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204720, 33.502426, 28.980509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877766, 33.381283, 28.784481>,  <37.681595, 33.308598, 28.666864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877766, 33.381283, 28.784481>,  <38.204720, 33.502426, 28.980509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877766, 33.381283, 28.784481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568639, -0.287686, -0.770640,
		0.092407, -0.908579, 0.407365,
		-0.817380, -0.302856, -0.490069,
		37.632553, 33.290424, 28.637461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284206, 32.738121, 28.863750>,  <38.204720, 33.502426, 28.980509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284206, 32.738121, 28.863750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039715, 32.912796, 28.599722>,  <37.893021, 33.017601, 28.441305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039715, 32.912796, 28.599722>,  <38.284206, 32.738121, 28.863750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039715, 32.912796, 28.599722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536860, -0.384029, -0.751202,
		-0.581530, -0.813525, 0.000289,
		-0.611232, 0.436691, -0.660073,
		37.856346, 33.043804, 28.401701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413387, 32.237507, 28.343559>,  <38.284206, 32.738121, 28.863750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413387, 32.237507, 28.343559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240826, 32.549473, 28.162178>,  <38.137287, 32.736652, 28.053349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240826, 32.549473, 28.162178>,  <38.413387, 32.237507, 28.343559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240826, 32.549473, 28.162178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697400, -0.030548, -0.716031,
		-0.572296, -0.625139, -0.530734,
		-0.431406, 0.779915, -0.453454,
		38.111404, 32.783447, 28.026142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343590, 31.952862, 27.601345>,  <38.413387, 32.237507, 28.343559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343590, 31.952862, 27.601345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270786, 32.346085, 27.592642>,  <38.227104, 32.582020, 27.587420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270786, 32.346085, 27.592642>,  <38.343590, 31.952862, 27.601345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270786, 32.346085, 27.592642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639978, 0.101633, -0.761642,
		-0.746526, -0.152549, -0.647633,
		-0.182008, 0.983056, -0.021756,
		38.216183, 32.641003, 27.586115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977604, 32.125343, 26.876965>,  <38.343590, 31.952862, 27.601345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977604, 32.125343, 26.876965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160057, 32.454556, 27.012356>,  <38.269531, 32.652081, 27.093590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160057, 32.454556, 27.012356>,  <37.977604, 32.125343, 26.876965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160057, 32.454556, 27.012356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508924, 0.070762, -0.857898,
		-0.730024, 0.563579, -0.386581,
		0.456138, 0.823026, 0.338477,
		38.296898, 32.701462, 27.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781963, 32.680408, 26.477152>,  <37.977604, 32.125343, 26.876965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781963, 32.680408, 26.477152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133270, 32.786839, 26.636076>,  <38.344055, 32.850697, 26.731430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133270, 32.786839, 26.636076>,  <37.781963, 32.680408, 26.477152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133270, 32.786839, 26.636076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381785, 0.110090, -0.917671,
		-0.287906, 0.957646, -0.004894,
		0.878265, 0.266072, 0.397311,
		38.396751, 32.866661, 26.755270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905521, 33.233940, 26.087509>,  <37.781963, 32.680408, 26.477152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905521, 33.233940, 26.087509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259842, 33.138466, 26.246702>,  <38.472435, 33.081181, 26.342218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259842, 33.138466, 26.246702>,  <37.905521, 33.233940, 26.087509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259842, 33.138466, 26.246702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441762, 0.170985, -0.880687,
		0.142159, 0.955925, 0.256900,
		0.885797, -0.238686, 0.397985,
		38.525581, 33.066860, 26.366098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401978, 33.685612, 25.765530>,  <37.905521, 33.233940, 26.087509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401978, 33.685612, 25.765530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642525, 33.399368, 25.907665>,  <38.786854, 33.227623, 25.992947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642525, 33.399368, 25.907665>,  <38.401978, 33.685612, 25.765530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642525, 33.399368, 25.907665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653209, 0.184253, -0.734417,
		0.460082, 0.673763, 0.578245,
		0.601367, -0.715607, 0.355337,
		38.822933, 33.184685, 26.014267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014675, 33.950165, 25.741962>,  <38.401978, 33.685612, 25.765530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014675, 33.950165, 25.741962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051201, 33.551922, 25.750271>,  <39.073116, 33.312977, 25.755257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051201, 33.551922, 25.750271>,  <39.014675, 33.950165, 25.741962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051201, 33.551922, 25.750271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587202, 0.036989, -0.808595,
		0.804273, 0.086034, 0.587999,
		0.091316, -0.995605, 0.020771,
		39.078594, 33.253239, 25.756502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729462, 33.765095, 25.422770>,  <39.014675, 33.950165, 25.741962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729462, 33.765095, 25.422770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551708, 33.406822, 25.416243>,  <39.445057, 33.191856, 25.412327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551708, 33.406822, 25.416243>,  <39.729462, 33.765095, 25.422770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551708, 33.406822, 25.416243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430373, -0.197483, -0.880783,
		0.785683, -0.398431, 0.473238,
		-0.444388, -0.895686, -0.016315,
		39.418392, 33.138115, 25.411348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237103, 33.254189, 25.191818>,  <39.729462, 33.765095, 25.422770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237103, 33.254189, 25.191818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875107, 33.099499, 25.120899>,  <39.657909, 33.006683, 25.078348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875107, 33.099499, 25.120899>,  <40.237103, 33.254189, 25.191818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875107, 33.099499, 25.120899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357381, -0.464976, -0.809985,
		0.230805, -0.796391, 0.559008,
		-0.904991, -0.386728, -0.177296,
		39.603611, 32.983482, 25.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847855, 32.961067, 24.949009>,  <40.237103, 33.254189, 25.191818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847855, 32.961067, 24.949009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085812, 33.274696, 24.878212>,  <41.228588, 33.462875, 24.835733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085812, 33.274696, 24.878212>,  <40.847855, 32.961067, 24.949009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085812, 33.274696, 24.878212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145151, 0.321363, 0.935765,
		0.790590, -0.530991, 0.304987,
		0.594894, 0.784075, -0.176992,
		41.264278, 33.509918, 24.825115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293068, 33.054996, 25.517368>,  <40.847855, 32.961067, 24.949009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293068, 33.054996, 25.517368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.313828, 33.422623, 25.361101>,  <41.326283, 33.643200, 25.267342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.313828, 33.422623, 25.361101>,  <41.293068, 33.054996, 25.517368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313828, 33.422623, 25.361101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012168, 0.391748, 0.919992,
		0.998578, -0.042993, 0.031514,
		0.051898, 0.919068, -0.390667,
		41.329395, 33.698341, 25.243900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887661, 33.511894, 25.907089>,  <41.293068, 33.054996, 25.517368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887661, 33.511894, 25.907089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591259, 33.733517, 25.755335>,  <41.413418, 33.866489, 25.664282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591259, 33.733517, 25.755335>,  <41.887661, 33.511894, 25.907089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591259, 33.733517, 25.755335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007442, 0.571725, 0.820411,
		0.671461, 0.605103, -0.427773,
		-0.741002, 0.554058, -0.379388,
		41.368958, 33.899734, 25.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147999, 34.208832, 26.096708>,  <41.887661, 33.511894, 25.907089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147999, 34.208832, 26.096708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766331, 34.247818, 25.983530>,  <41.537331, 34.271210, 25.915623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766331, 34.247818, 25.983530>,  <42.147999, 34.208832, 26.096708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766331, 34.247818, 25.983530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129339, 0.718299, 0.683606,
		0.269867, 0.688873, -0.672774,
		-0.954171, 0.097467, -0.282944,
		41.480080, 34.277058, 25.898647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939621, 34.950729, 26.054092>,  <42.147999, 34.208832, 26.096708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939621, 34.950729, 26.054092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.614376, 34.723770, 26.106100>,  <41.419228, 34.587597, 26.137304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.614376, 34.723770, 26.106100>,  <41.939621, 34.950729, 26.054092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614376, 34.723770, 26.106100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257409, 0.550816, 0.793941,
		-0.522096, 0.612098, -0.593930,
		-0.813116, -0.567396, 0.130019,
		41.370441, 34.553551, 26.145105>
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
