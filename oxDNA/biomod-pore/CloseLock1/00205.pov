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
	<24.185244, 35.109280, 34.838932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142988, 34.749088, 34.670177>,  <24.117636, 34.532974, 34.568924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142988, 34.749088, 34.670177>,  <24.185244, 35.109280, 34.838932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.142988, 34.749088, 34.670177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486292, -0.416845, 0.767959,
		-0.867387, -0.124033, 0.481928,
		-0.105637, -0.900476, -0.421882,
		24.111298, 34.478947, 34.543613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002317, 34.961884, 34.733181>,  <24.185244, 35.109280, 34.838932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002317, 34.961884, 34.733181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201136, 34.615261, 34.751179>,  <25.320427, 34.407288, 34.761978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201136, 34.615261, 34.751179>,  <25.002317, 34.961884, 34.733181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201136, 34.615261, 34.751179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832265, 0.461423, -0.307283,
		0.245518, 0.190179, 0.950554,
		0.497046, -0.866557, 0.044992,
		25.350250, 34.355293, 34.764675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708925, 35.072826, 35.014233>,  <25.002317, 34.961884, 34.733181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708925, 35.072826, 35.014233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719479, 34.749401, 34.779106>,  <25.725811, 34.555344, 34.638031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719479, 34.749401, 34.779106>,  <25.708925, 35.072826, 35.014233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719479, 34.749401, 34.779106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766689, 0.393696, -0.507139,
		0.641476, -0.437291, 0.630306,
		0.026382, -0.808566, -0.587813,
		25.727392, 34.506832, 34.602760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341547, 34.629395, 35.111443>,  <25.708925, 35.072826, 35.014233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341547, 34.629395, 35.111443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170338, 34.649139, 34.750477>,  <26.067612, 34.660988, 34.533897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170338, 34.649139, 34.750477>,  <26.341547, 34.629395, 35.111443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170338, 34.649139, 34.750477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836663, 0.399213, -0.374998,
		0.341745, -0.915528, -0.212176,
		-0.428025, 0.049366, -0.902418,
		26.041931, 34.663948, 34.479752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686581, 34.149967, 34.625713>,  <26.341547, 34.629395, 35.111443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686581, 34.149967, 34.625713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558153, 34.516415, 34.529678>,  <26.481096, 34.736282, 34.472057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558153, 34.516415, 34.529678>,  <26.686581, 34.149967, 34.625713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558153, 34.516415, 34.529678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929864, 0.353028, 0.103562,
		0.179632, -0.189996, -0.965212,
		-0.321070, 0.916118, -0.240086,
		26.461832, 34.791248, 34.457653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022493, 34.348431, 34.148685>,  <26.686581, 34.149967, 34.625713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022493, 34.348431, 34.148685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950119, 34.702660, 34.319809>,  <26.906694, 34.915199, 34.422482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950119, 34.702660, 34.319809>,  <27.022493, 34.348431, 34.148685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950119, 34.702660, 34.319809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979833, 0.199817, 0.000785,
		-0.084788, 0.419323, -0.903869,
		-0.180937, 0.885574, 0.427808,
		26.895838, 34.968330, 34.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152920, 33.527645, 34.079414>,  <27.022493, 34.348431, 34.148685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152920, 33.527645, 34.079414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979082, 33.235809, 33.868198>,  <26.874779, 33.060707, 33.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979082, 33.235809, 33.868198>,  <27.152920, 33.527645, 34.079414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979082, 33.235809, 33.868198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273116, -0.665460, 0.694673,
		-0.858216, 0.157684, 0.488467,
		-0.434594, -0.729588, -0.528043,
		26.848703, 33.016933, 33.709785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933794, 33.665554, 34.053642>,  <27.152920, 33.527645, 34.079414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933794, 33.665554, 34.053642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329754, 33.617596, 34.023369>,  <28.567329, 33.588821, 34.005203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329754, 33.617596, 34.023369>,  <27.933794, 33.665554, 34.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329754, 33.617596, 34.023369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141086, -0.780122, -0.609511,
		0.014034, 0.614031, -0.789157,
		0.989898, -0.119893, -0.075683,
		28.626722, 33.581627, 34.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150894, 33.629230, 33.341866>,  <27.933794, 33.665554, 34.053642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150894, 33.629230, 33.341866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433203, 33.436119, 33.549255>,  <28.602589, 33.320251, 33.673687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433203, 33.436119, 33.549255>,  <28.150894, 33.629230, 33.341866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433203, 33.436119, 33.549255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089146, -0.786555, -0.611052,
		0.702808, 0.385044, -0.598166,
		0.705772, -0.482776, 0.518472,
		28.644934, 33.291286, 33.704796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391573, 33.186859, 32.856003>,  <28.150894, 33.629230, 33.341866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391573, 33.186859, 32.856003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564619, 33.035755, 33.183453>,  <28.668446, 32.945091, 33.379921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564619, 33.035755, 33.183453>,  <28.391573, 33.186859, 32.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564619, 33.035755, 33.183453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040343, -0.915187, -0.401006,
		0.900676, 0.140455, -0.411162,
		0.432614, -0.377764, 0.818621,
		28.694403, 32.922424, 33.429039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037420, 32.851612, 32.657131>,  <28.391573, 33.186859, 32.856003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037420, 32.851612, 32.657131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896719, 32.688950, 32.994392>,  <28.812298, 32.591351, 33.196747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896719, 32.688950, 32.994392>,  <29.037420, 32.851612, 32.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896719, 32.688950, 32.994392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013432, -0.898426, -0.438919,
		0.935997, -0.165715, 0.310560,
		-0.351751, -0.406655, 0.843150,
		28.791193, 32.566952, 33.247337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298330, 32.194874, 32.692902>,  <29.037420, 32.851612, 32.657131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298330, 32.194874, 32.692902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020033, 32.170349, 32.979172>,  <28.853054, 32.155632, 33.150932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020033, 32.170349, 32.979172>,  <29.298330, 32.194874, 32.692902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020033, 32.170349, 32.979172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155112, -0.960017, -0.233041,
		0.701345, -0.273145, 0.658413,
		-0.695741, -0.061315, 0.715671,
		28.811310, 32.151955, 33.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364321, 31.525877, 33.041264>,  <29.298330, 32.194874, 32.692902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364321, 31.525877, 33.041264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988106, 31.626705, 33.132343>,  <28.762377, 31.687202, 33.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988106, 31.626705, 33.132343>,  <29.364321, 31.525877, 33.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988106, 31.626705, 33.132343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299866, -0.931042, -0.207944,
		0.159579, -0.263858, 0.951269,
		-0.940540, 0.252070, 0.227697,
		28.705944, 31.702326, 33.200653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174868, 31.132803, 33.674023>,  <29.364321, 31.525877, 33.041264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174868, 31.132803, 33.674023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832737, 31.236523, 33.494610>,  <28.627459, 31.298754, 33.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832737, 31.236523, 33.494610>,  <29.174868, 31.132803, 33.674023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832737, 31.236523, 33.494610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211530, -0.965076, -0.154542,
		-0.472936, -0.037307, 0.880307,
		-0.855328, 0.259300, -0.448528,
		28.576138, 31.314312, 33.360050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623175, 30.585896, 33.917198>,  <29.174868, 31.132803, 33.674023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623175, 30.585896, 33.917198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447840, 30.765125, 33.605534>,  <28.342638, 30.872663, 33.418537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447840, 30.765125, 33.605534>,  <28.623175, 30.585896, 33.917198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447840, 30.765125, 33.605534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425818, -0.866947, -0.259003,
		-0.791543, 0.218249, 0.570813,
		-0.438337, 0.448074, -0.779159,
		28.316339, 30.899548, 33.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927107, 30.336374, 33.880974>,  <28.623175, 30.585896, 33.917198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927107, 30.336374, 33.880974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058157, 30.472103, 33.528267>,  <28.136787, 30.553541, 33.316643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058157, 30.472103, 33.528267>,  <27.927107, 30.336374, 33.880974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058157, 30.472103, 33.528267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191957, -0.889911, -0.413776,
		-0.925102, 0.304826, -0.226424,
		0.327627, 0.339322, -0.881772,
		28.156445, 30.573900, 33.263737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395803, 30.270683, 33.406109>,  <27.927107, 30.336374, 33.880974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395803, 30.270683, 33.406109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698351, 30.307814, 33.147099>,  <27.879879, 30.330091, 32.991692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698351, 30.307814, 33.147099>,  <27.395803, 30.270683, 33.406109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698351, 30.307814, 33.147099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380166, -0.743175, -0.550605,
		-0.532335, 0.662627, -0.526825,
		0.756369, 0.092826, -0.647526,
		27.925262, 30.335661, 32.952839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965286, 30.020620, 32.868729>,  <27.395803, 30.270683, 33.406109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965286, 30.020620, 32.868729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345533, 30.017860, 32.744614>,  <27.573681, 30.016205, 32.670143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345533, 30.017860, 32.744614>,  <26.965286, 30.020620, 32.868729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345533, 30.017860, 32.744614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263177, -0.547863, -0.794093,
		-0.164518, 0.836540, -0.522623,
		0.950616, -0.006900, -0.310292,
		27.630718, 30.015791, 32.651527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779264, 30.102015, 32.229122>,  <26.965286, 30.020620, 32.868729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779264, 30.102015, 32.229122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135279, 29.940020, 32.312859>,  <27.348886, 29.842823, 32.363098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135279, 29.940020, 32.312859>,  <26.779264, 30.102015, 32.229122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135279, 29.940020, 32.312859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273282, -0.841495, -0.466050,
		0.364901, 0.357593, -0.859636,
		0.890036, -0.404985, 0.209339,
		27.402290, 29.818523, 32.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081419, 29.935959, 31.547716>,  <26.779264, 30.102015, 32.229122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081419, 29.935959, 31.547716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256132, 29.708683, 31.826681>,  <27.360960, 29.572317, 31.994061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256132, 29.708683, 31.826681>,  <27.081419, 29.935959, 31.547716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256132, 29.708683, 31.826681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308654, -0.822870, -0.477093,
		0.844957, -0.006872, -0.534790,
		0.436784, -0.568188, 0.697411,
		27.387167, 29.538227, 32.035904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461275, 29.459789, 31.174484>,  <27.081419, 29.935959, 31.547716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461275, 29.459789, 31.174484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402308, 29.282423, 31.528128>,  <27.366926, 29.176003, 31.740314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402308, 29.282423, 31.528128>,  <27.461275, 29.459789, 31.174484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402308, 29.282423, 31.528128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311532, -0.827561, -0.467002,
		0.938731, -0.344274, -0.016140,
		-0.147420, -0.443417, 0.884109,
		27.358082, 29.149399, 31.793360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704634, 28.773870, 31.130024>,  <27.461275, 29.459789, 31.174484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704634, 28.773870, 31.130024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491116, 28.734364, 31.465954>,  <27.363005, 28.710659, 31.667513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491116, 28.734364, 31.465954>,  <27.704634, 28.773870, 31.130024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491116, 28.734364, 31.465954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291852, -0.910611, -0.292593,
		0.793654, -0.401289, 0.457253,
		-0.533794, -0.098768, 0.839827,
		27.330976, 28.704733, 31.717901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882511, 28.087267, 31.418806>,  <27.704634, 28.773870, 31.130024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882511, 28.087267, 31.418806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516991, 28.203449, 31.532372>,  <27.297678, 28.273159, 31.600510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516991, 28.203449, 31.532372>,  <27.882511, 28.087267, 31.418806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516991, 28.203449, 31.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347135, -0.921411, -0.174641,
		0.210874, -0.258143, 0.942812,
		-0.913799, 0.290456, 0.283913,
		27.242851, 28.290586, 31.617546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689856, 27.824316, 32.109089>,  <27.882511, 28.087267, 31.418806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689856, 27.824316, 32.109089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406122, 27.865547, 31.830170>,  <27.235882, 27.890285, 31.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406122, 27.865547, 31.830170>,  <27.689856, 27.824316, 32.109089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406122, 27.865547, 31.830170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157307, -0.987450, 0.014055,
		-0.687097, 0.119660, 0.716644,
		-0.709332, 0.103076, -0.697297,
		27.193323, 27.896469, 31.620981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058468, 27.404652, 32.248589>,  <27.689856, 27.824316, 32.109089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058468, 27.404652, 32.248589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030222, 27.464796, 31.854147>,  <27.013273, 27.500883, 31.617481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030222, 27.464796, 31.854147>,  <27.058468, 27.404652, 32.248589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030222, 27.464796, 31.854147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191988, -0.972139, -0.134485,
		-0.978854, 0.179823, 0.097517,
		-0.070616, 0.150363, -0.986106,
		27.009037, 27.509905, 31.558315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497072, 27.030024, 31.932442>,  <27.058468, 27.404652, 32.248589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497072, 27.030024, 31.932442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751183, 27.067776, 31.625843>,  <26.903648, 27.090427, 31.441885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751183, 27.067776, 31.625843>,  <26.497072, 27.030024, 31.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751183, 27.067776, 31.625843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047758, -0.995406, -0.082982,
		-0.770806, 0.016111, -0.636867,
		0.635278, 0.094379, -0.766495,
		26.941767, 27.096088, 31.395895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225517, 26.578442, 31.428179>,  <26.497072, 27.030024, 31.932442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225517, 26.578442, 31.428179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625214, 26.593410, 31.423809>,  <26.865030, 26.602392, 31.421186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625214, 26.593410, 31.423809>,  <26.225517, 26.578442, 31.428179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625214, 26.593410, 31.423809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035634, -0.990433, -0.133312,
		-0.015808, 0.132821, -0.991014,
		0.999240, 0.037421, -0.010924,
		26.924986, 26.604637, 31.420532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547775, 26.166914, 30.800276>,  <26.225517, 26.578442, 31.428179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547775, 26.166914, 30.800276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813400, 26.173822, 31.099266>,  <26.972775, 26.177967, 31.278660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813400, 26.173822, 31.099266>,  <26.547775, 26.166914, 30.800276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813400, 26.173822, 31.099266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105813, -0.991842, -0.071085,
		0.740152, 0.126298, -0.660473,
		0.664063, 0.017273, 0.747478,
		27.012619, 26.179005, 31.323509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133720, 25.939064, 30.623856>,  <26.547775, 26.166914, 30.800276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133720, 25.939064, 30.623856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155685, 25.827963, 31.007488>,  <27.168865, 25.761303, 31.237667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155685, 25.827963, 31.007488>,  <27.133720, 25.939064, 30.623856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155685, 25.827963, 31.007488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288176, -0.915249, -0.281556,
		0.956002, 0.291846, 0.029781,
		0.054914, -0.277751, 0.959082,
		27.172159, 25.744638, 31.295214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768538, 25.582170, 30.846062>,  <27.133720, 25.939064, 30.623856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768538, 25.582170, 30.846062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447327, 25.457867, 31.049461>,  <27.254601, 25.383284, 31.171501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447327, 25.457867, 31.049461>,  <27.768538, 25.582170, 30.846062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447327, 25.457867, 31.049461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224595, -0.948174, -0.224773,
		0.551998, -0.066292, 0.831206,
		-0.803029, -0.310759, 0.508501,
		27.206417, 25.364639, 31.202011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886871, 25.084192, 31.517050>,  <27.768538, 25.582170, 30.846062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886871, 25.084192, 31.517050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562635, 25.028393, 31.289547>,  <27.368093, 24.994913, 31.153046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562635, 25.028393, 31.289547>,  <27.886871, 25.084192, 31.517050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562635, 25.028393, 31.289547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457226, -0.757599, -0.465820,
		-0.365906, -0.637639, 0.677887,
		-0.810591, -0.139501, -0.568754,
		27.319458, 24.986542, 31.118921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234016, 25.185198, 32.249477>,  <27.886871, 25.084192, 31.517050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234016, 25.185198, 32.249477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492632, 25.417221, 32.447678>,  <28.647802, 25.556435, 32.566597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492632, 25.417221, 32.447678>,  <28.234016, 25.185198, 32.249477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492632, 25.417221, 32.447678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758670, 0.557026, 0.337849,
		-0.080033, -0.594353, 0.800212,
		0.646540, 0.580058, 0.495498,
		28.686594, 25.591238, 32.596329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877520, 25.525707, 32.800365>,  <28.234016, 25.185198, 32.249477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877520, 25.525707, 32.800365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209225, 25.748579, 32.783058>,  <28.408249, 25.882303, 32.772675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209225, 25.748579, 32.783058>,  <27.877520, 25.525707, 32.800365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209225, 25.748579, 32.783058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447711, 0.708678, 0.545280,
		0.334479, -0.432811, 0.837137,
		0.829264, 0.557181, -0.043264,
		28.458004, 25.915733, 32.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129812, 25.655846, 33.539967>,  <27.877520, 25.525707, 32.800365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129812, 25.655846, 33.539967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270678, 25.942268, 33.298889>,  <28.355198, 26.114122, 33.154243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270678, 25.942268, 33.298889>,  <28.129812, 25.655846, 33.539967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270678, 25.942268, 33.298889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257631, 0.693237, 0.673089,
		0.899781, -0.081766, 0.428612,
		0.352165, 0.716056, -0.602696,
		28.376328, 26.157085, 33.118080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337793, 25.900799, 34.186497>,  <28.129812, 25.655846, 33.539967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337793, 25.900799, 34.186497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614376, 25.620905, 34.114655>,  <28.780327, 25.452969, 34.071548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614376, 25.620905, 34.114655>,  <28.337793, 25.900799, 34.186497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614376, 25.620905, 34.114655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692623, 0.571464, 0.440115,
		-0.205326, -0.428719, 0.879796,
		0.691458, -0.699734, -0.179604,
		28.821814, 25.410984, 34.060772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668764, 25.684820, 34.831436>,  <28.337793, 25.900799, 34.186497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668764, 25.684820, 34.831436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909168, 25.641121, 34.514740>,  <29.053410, 25.614902, 34.324722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909168, 25.641121, 34.514740>,  <28.668764, 25.684820, 34.831436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909168, 25.641121, 34.514740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710990, 0.525571, 0.467192,
		0.365077, -0.843706, 0.393547,
		0.601009, -0.109247, -0.791740,
		29.089472, 25.608347, 34.277218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385321, 25.638969, 35.149124>,  <28.668764, 25.684820, 34.831436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385321, 25.638969, 35.149124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429722, 25.744358, 34.765820>,  <29.456364, 25.807590, 34.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429722, 25.744358, 34.765820>,  <29.385321, 25.638969, 35.149124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429722, 25.744358, 34.765820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627814, 0.728870, 0.273126,
		0.770407, -0.631927, -0.084503,
		0.111004, 0.263470, -0.958260,
		29.463022, 25.823399, 34.478340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094667, 25.694208, 35.080128>,  <29.385321, 25.638969, 35.149124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094667, 25.694208, 35.080128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937275, 25.882910, 34.764503>,  <29.842840, 25.996130, 34.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937275, 25.882910, 34.764503>,  <30.094667, 25.694208, 35.080128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937275, 25.882910, 34.764503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609129, 0.776645, 0.160575,
		0.688575, -0.417460, -0.592952,
		-0.393480, 0.471752, -0.789065,
		29.819231, 26.024435, 34.527782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647625, 25.913509, 34.643875>,  <30.094667, 25.694208, 35.080128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647625, 25.913509, 34.643875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336876, 26.153797, 34.568398>,  <30.150427, 26.297970, 34.523113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336876, 26.153797, 34.568398>,  <30.647625, 25.913509, 34.643875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336876, 26.153797, 34.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569165, 0.798130, 0.197586,
		0.269294, 0.046102, -0.961954,
		-0.776873, 0.600719, -0.188692,
		30.103813, 26.334013, 34.511791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914906, 26.445963, 34.096474>,  <30.647625, 25.913509, 34.643875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914906, 26.445963, 34.096474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588926, 26.608128, 34.262127>,  <30.393339, 26.705425, 34.361519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588926, 26.608128, 34.262127>,  <30.914906, 26.445963, 34.096474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588926, 26.608128, 34.262127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465910, 0.883294, 0.052148,
		-0.344658, 0.235445, -0.908722,
		-0.814947, 0.405410, 0.414131,
		30.344442, 26.729750, 34.386368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812641, 27.150373, 33.741085>,  <30.914906, 26.445963, 34.096474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812641, 27.150373, 33.741085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578014, 27.188818, 34.062756>,  <30.437239, 27.211884, 34.255756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578014, 27.188818, 34.062756>,  <30.812641, 27.150373, 33.741085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578014, 27.188818, 34.062756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378929, 0.910119, 0.167621,
		-0.715786, 0.403047, -0.570266,
		-0.586569, 0.096109, 0.804177,
		30.402044, 27.217651, 34.304008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391886, 27.782089, 33.728367>,  <30.812641, 27.150373, 33.741085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391886, 27.782089, 33.728367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404367, 27.691231, 34.117710>,  <30.411856, 27.636715, 34.351318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404367, 27.691231, 34.117710>,  <30.391886, 27.782089, 33.728367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404367, 27.691231, 34.117710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258629, 0.942504, 0.211654,
		-0.965473, 0.245135, 0.088157,
		0.031204, -0.227146, 0.973361,
		30.413729, 27.623087, 34.409718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173237, 28.311256, 33.962070>,  <30.391886, 27.782089, 33.728367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173237, 28.311256, 33.962070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307278, 28.136396, 34.295921>,  <30.387701, 28.031481, 34.496231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307278, 28.136396, 34.295921>,  <30.173237, 28.311256, 33.962070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307278, 28.136396, 34.295921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202795, 0.898549, 0.389210,
		-0.920099, 0.038834, 0.389756,
		0.335100, -0.437152, 0.834630,
		30.407808, 28.005251, 34.546310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790184, 28.640066, 34.504093>,  <30.173237, 28.311256, 33.962070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790184, 28.640066, 34.504093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142523, 28.523695, 34.653473>,  <30.353926, 28.453873, 34.743103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142523, 28.523695, 34.653473>,  <29.790184, 28.640066, 34.504093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142523, 28.523695, 34.653473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183498, 0.937030, 0.297158,
		-0.436390, -0.193223, 0.878766,
		0.880848, -0.290929, 0.373454,
		30.406776, 28.436417, 34.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876263, 28.829386, 35.193478>,  <29.790184, 28.640066, 34.504093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876263, 28.829386, 35.193478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252327, 28.771109, 35.070271>,  <30.477966, 28.736143, 34.996346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252327, 28.771109, 35.070271>,  <29.876263, 28.829386, 35.193478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252327, 28.771109, 35.070271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257124, 0.896509, 0.360776,
		0.223576, -0.418385, 0.880322,
		0.940160, -0.145691, -0.308015,
		30.534374, 28.727402, 34.977867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183327, 29.026318, 35.754700>,  <29.876263, 28.829386, 35.193478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183327, 29.026318, 35.754700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435240, 29.037773, 35.444202>,  <30.586388, 29.044645, 35.257904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435240, 29.037773, 35.444202>,  <30.183327, 29.026318, 35.754700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435240, 29.037773, 35.444202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341695, 0.887227, 0.309958,
		0.697579, -0.460444, 0.548976,
		0.629784, 0.028638, -0.776242,
		30.624174, 29.046364, 35.211330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837879, 29.176300, 36.058678>,  <30.183327, 29.026318, 35.754700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837879, 29.176300, 36.058678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853426, 29.288689, 35.675106>,  <30.862755, 29.356123, 35.444962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853426, 29.288689, 35.675106>,  <30.837879, 29.176300, 36.058678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853426, 29.288689, 35.675106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317246, 0.906534, 0.278480,
		0.947546, -0.315040, -0.053902,
		0.038868, 0.280973, -0.958928,
		30.865086, 29.372980, 35.387428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383970, 29.650494, 36.106342>,  <30.837879, 29.176300, 36.058678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383970, 29.650494, 36.106342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227898, 29.726057, 35.745880>,  <31.134254, 29.771395, 35.529602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227898, 29.726057, 35.745880>,  <31.383970, 29.650494, 36.106342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227898, 29.726057, 35.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362683, 0.931131, 0.038157,
		0.846297, -0.311944, -0.431824,
		-0.390181, 0.188908, -0.901151,
		31.110844, 29.782730, 35.475536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913136, 30.065727, 35.717670>,  <31.383970, 29.650494, 36.106342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913136, 30.065727, 35.717670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567959, 30.132259, 35.526814>,  <31.360853, 30.172178, 35.412300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567959, 30.132259, 35.526814>,  <31.913136, 30.065727, 35.717670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567959, 30.132259, 35.526814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162357, 0.985469, 0.049901,
		0.478506, -0.034405, -0.877410,
		-0.862944, 0.166332, -0.477139,
		31.309076, 30.182159, 35.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079067, 30.532099, 35.173100>,  <31.913136, 30.065727, 35.717670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079067, 30.532099, 35.173100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686426, 30.564157, 35.242428>,  <31.450842, 30.583393, 35.284023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686426, 30.564157, 35.242428>,  <32.079067, 30.532099, 35.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686426, 30.564157, 35.242428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073585, 0.996319, -0.043963,
		-0.176206, -0.030400, -0.983884,
		-0.981599, 0.080146, 0.173320,
		31.391947, 30.588202, 35.294422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725571, 30.933123, 34.658062>,  <32.079067, 30.532099, 35.173100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725571, 30.933123, 34.658062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460005, 30.946173, 34.956902>,  <31.300665, 30.954002, 35.136204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460005, 30.946173, 34.956902>,  <31.725571, 30.933123, 34.658062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460005, 30.946173, 34.956902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043422, 0.995680, -0.082070,
		-0.746548, -0.086928, -0.659628,
		-0.663912, 0.032627, 0.747098,
		31.260832, 30.955961, 35.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194889, 31.328707, 34.358795>,  <31.725571, 30.933123, 34.658062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194889, 31.328707, 34.358795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148703, 31.340517, 34.755943>,  <31.120991, 31.347603, 34.994232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148703, 31.340517, 34.755943>,  <31.194889, 31.328707, 34.358795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148703, 31.340517, 34.755943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065889, 0.997129, -0.037313,
		-0.991124, -0.069728, -0.113188,
		-0.115465, 0.029524, 0.992872,
		31.114063, 31.349375, 35.053806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668341, 31.797930, 34.459976>,  <31.194889, 31.328707, 34.358795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668341, 31.797930, 34.459976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805006, 31.805267, 34.835835>,  <30.887005, 31.809669, 35.061348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805006, 31.805267, 34.835835>,  <30.668341, 31.797930, 34.459976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805006, 31.805267, 34.835835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157291, 0.986824, 0.037927,
		-0.926567, -0.160755, 0.340046,
		0.341663, 0.018345, 0.939644,
		30.907505, 31.810770, 35.117729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157656, 32.147133, 34.857327>,  <30.668341, 31.797930, 34.459976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157656, 32.147133, 34.857327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488184, 32.182236, 35.079853>,  <30.686501, 32.203297, 35.213371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488184, 32.182236, 35.079853>,  <30.157656, 32.147133, 34.857327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488184, 32.182236, 35.079853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192727, 0.972210, 0.132910,
		-0.529195, -0.217045, 0.820271,
		0.826322, 0.087753, 0.556319,
		30.736080, 32.208561, 35.246750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887041, 32.570427, 35.440376>,  <30.157656, 32.147133, 34.857327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887041, 32.570427, 35.440376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286734, 32.577366, 35.426296>,  <30.526548, 32.581528, 35.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286734, 32.577366, 35.426296>,  <29.887041, 32.570427, 35.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286734, 32.577366, 35.426296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021969, 0.990537, -0.135478,
		0.032514, 0.136146, 0.990155,
		0.999230, 0.017347, -0.035197,
		30.586502, 32.582569, 35.415737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122866, 33.160084, 35.907711>,  <29.887041, 32.570427, 35.440376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122866, 33.160084, 35.907711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407310, 33.066631, 35.642460>,  <30.577978, 33.010559, 35.483311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407310, 33.066631, 35.642460>,  <30.122866, 33.160084, 35.907711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407310, 33.066631, 35.642460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078460, 0.963654, -0.255371,
		0.698686, 0.129569, 0.703597,
		0.711113, -0.233628, -0.663126,
		30.620644, 32.996544, 35.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611887, 33.659695, 36.086342>,  <30.122866, 33.160084, 35.907711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611887, 33.659695, 36.086342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730537, 33.536266, 35.724834>,  <30.801727, 33.462208, 35.507931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730537, 33.536266, 35.724834>,  <30.611887, 33.659695, 36.086342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730537, 33.536266, 35.724834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031963, 0.949036, -0.313541,
		0.954459, 0.064117, 0.291372,
		0.296626, -0.308575, -0.903767,
		30.819525, 33.443695, 35.453705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109825, 34.103020, 35.946720>,  <30.611887, 33.659695, 36.086342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109825, 34.103020, 35.946720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028625, 33.959789, 35.582176>,  <30.979906, 33.873852, 35.363449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028625, 33.959789, 35.582176>,  <31.109825, 34.103020, 35.946720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028625, 33.959789, 35.582176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070242, 0.923013, -0.378303,
		0.976656, -0.140812, -0.162219,
		-0.203000, -0.358077, -0.911357,
		30.967726, 33.852367, 35.308769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908871, 34.018147, 36.074833>,  <31.109825, 34.103020, 35.946720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908871, 34.018147, 36.074833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177635, 34.088867, 36.362522>,  <32.338894, 34.131298, 36.535133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177635, 34.088867, 36.362522>,  <31.908871, 34.018147, 36.074833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177635, 34.088867, 36.362522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586379, -0.466221, 0.662418,
		0.452430, -0.866822, -0.209587,
		0.671912, 0.176800, 0.719218,
		32.379208, 34.141907, 36.578289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088120, 33.414791, 36.603069>,  <31.908871, 34.018147, 36.074833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088120, 33.414791, 36.603069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184673, 33.748951, 36.800587>,  <32.242607, 33.949448, 36.919098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184673, 33.748951, 36.800587>,  <32.088120, 33.414791, 36.603069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184673, 33.748951, 36.800587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422018, -0.367841, 0.828610,
		0.873861, -0.408407, 0.263762,
		0.241388, 0.835402, 0.493797,
		32.257088, 33.999573, 36.948727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355843, 33.342289, 37.426769>,  <32.088120, 33.414791, 36.603069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355843, 33.342289, 37.426769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145996, 33.675571, 37.356850>,  <32.020088, 33.875542, 37.314899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145996, 33.675571, 37.356850>,  <32.355843, 33.342289, 37.426769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145996, 33.675571, 37.356850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594999, -0.211991, 0.775265,
		0.608899, 0.510716, 0.606969,
		-0.524612, 0.833205, -0.174795,
		31.988613, 33.925533, 37.304413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391094, 33.651310, 38.012630>,  <32.355843, 33.342289, 37.426769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391094, 33.651310, 38.012630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060272, 33.783863, 37.831005>,  <31.861780, 33.863396, 37.722031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060272, 33.783863, 37.831005>,  <32.391094, 33.651310, 38.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060272, 33.783863, 37.831005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493421, -0.040997, 0.868824,
		0.269296, 0.942606, 0.197417,
		-0.827052, 0.331381, -0.454062,
		31.812157, 33.883278, 37.694786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297577, 34.396179, 38.182846>,  <32.391094, 33.651310, 38.012630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297577, 34.396179, 38.182846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972492, 34.167931, 38.135712>,  <31.777441, 34.030983, 38.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972492, 34.167931, 38.135712>,  <32.297577, 34.396179, 38.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972492, 34.167931, 38.135712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268723, 0.187633, 0.944766,
		-0.516993, 0.799491, -0.305831,
		-0.812716, -0.570620, -0.117837,
		31.728678, 33.996746, 38.100361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621624, 34.695538, 38.279331>,  <32.297577, 34.396179, 38.182846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621624, 34.695538, 38.279331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606825, 34.314579, 38.400372>,  <31.597944, 34.086002, 38.472996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606825, 34.314579, 38.400372>,  <31.621624, 34.695538, 38.279331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606825, 34.314579, 38.400372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182367, 0.304155, 0.935004,
		-0.982534, -0.020590, -0.184940,
		-0.036999, -0.952400, 0.302598,
		31.595726, 34.028858, 38.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996181, 34.623535, 38.664494>,  <31.621624, 34.695538, 38.279331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996181, 34.623535, 38.664494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251371, 34.341511, 38.788353>,  <31.404486, 34.172298, 38.862667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251371, 34.341511, 38.788353>,  <30.996181, 34.623535, 38.664494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251371, 34.341511, 38.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152576, 0.278403, 0.948268,
		-0.754792, -0.652215, 0.070039,
		0.637973, -0.705059, 0.309649,
		31.442764, 34.129993, 38.881248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634588, 34.417526, 39.210011>,  <30.996181, 34.623535, 38.664494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634588, 34.417526, 39.210011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008080, 34.290089, 39.275314>,  <31.232174, 34.213627, 39.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008080, 34.290089, 39.275314>,  <30.634588, 34.417526, 39.210011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008080, 34.290089, 39.275314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026296, 0.393768, 0.918833,
		-0.357021, -0.862232, 0.359294,
		0.933726, -0.318595, 0.163257,
		31.288197, 34.194511, 39.324291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736938, 34.035480, 39.909962>,  <30.634588, 34.417526, 39.210011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736938, 34.035480, 39.909962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107117, 34.156322, 39.818501>,  <31.329224, 34.228828, 39.763622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107117, 34.156322, 39.818501>,  <30.736938, 34.035480, 39.909962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107117, 34.156322, 39.818501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170139, 0.207868, 0.963246,
		0.338532, -0.930335, 0.140971,
		0.925445, 0.302105, -0.228656,
		31.384750, 34.246952, 39.749905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104586, 33.860355, 40.549812>,  <30.736938, 34.035480, 39.909962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104586, 33.860355, 40.549812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308203, 34.151588, 40.366173>,  <31.430374, 34.326328, 40.255989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308203, 34.151588, 40.366173>,  <31.104586, 33.860355, 40.549812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308203, 34.151588, 40.366173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217122, 0.407512, 0.887013,
		0.832906, -0.551209, 0.049360,
		0.509045, 0.728081, -0.459099,
		31.460917, 34.370014, 40.228443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830929, 33.787952, 40.720482>,  <31.104586, 33.860355, 40.549812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830929, 33.787952, 40.720482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792187, 34.171589, 40.614079>,  <31.768942, 34.401772, 40.550236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792187, 34.171589, 40.614079>,  <31.830929, 33.787952, 40.720482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792187, 34.171589, 40.614079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420785, 0.281663, 0.862326,
		0.901975, -0.028412, -0.430852,
		-0.096854, 0.959093, -0.266008,
		31.763130, 34.459316, 40.534275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360138, 34.107738, 40.925949>,  <31.830929, 33.787952, 40.720482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360138, 34.107738, 40.925949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106014, 34.412930, 40.878193>,  <31.953541, 34.596043, 40.849541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106014, 34.412930, 40.878193>,  <32.360138, 34.107738, 40.925949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106014, 34.412930, 40.878193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477261, 0.509443, 0.716024,
		0.607127, 0.397919, -0.687792,
		-0.635310, 0.762973, -0.119386,
		31.915421, 34.641823, 40.842377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791416, 34.625309, 41.286373>,  <32.360138, 34.107738, 40.925949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791416, 34.625309, 41.286373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447765, 34.826363, 41.247879>,  <32.241577, 34.946995, 41.224785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447765, 34.826363, 41.247879>,  <32.791416, 34.625309, 41.286373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447765, 34.826363, 41.247879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264183, 0.596631, 0.757786,
		0.438306, 0.625610, -0.645368,
		-0.859125, 0.502637, -0.096231,
		32.190029, 34.977154, 41.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003506, 35.343826, 41.472595>,  <32.791416, 34.625309, 41.286373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003506, 35.343826, 41.472595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609779, 35.312920, 41.536034>,  <32.373543, 35.294376, 41.574097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609779, 35.312920, 41.536034>,  <33.003506, 35.343826, 41.472595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609779, 35.312920, 41.536034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064144, 0.680721, 0.729729,
		-0.164342, 0.728457, -0.665088,
		-0.984316, -0.077264, 0.158597,
		32.314484, 35.289742, 41.583614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661980, 36.149197, 41.559780>,  <33.003506, 35.343826, 41.472595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661980, 36.149197, 41.559780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402512, 35.895153, 41.727528>,  <32.246830, 35.742729, 41.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402512, 35.895153, 41.727528>,  <32.661980, 36.149197, 41.559780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402512, 35.895153, 41.727528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013574, 0.541279, 0.840734,
		-0.760947, 0.551053, -0.342492,
		-0.648672, -0.635104, 0.419364,
		32.207909, 35.704620, 41.853336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291626, 36.537209, 42.067287>,  <32.661980, 36.149197, 41.559780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291626, 36.537209, 42.067287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182907, 36.168297, 42.177219>,  <32.117676, 35.946949, 42.243179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182907, 36.168297, 42.177219>,  <32.291626, 36.537209, 42.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182907, 36.168297, 42.177219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228318, 0.339224, 0.912578,
		-0.934878, 0.185287, -0.302773,
		-0.271796, -0.922277, 0.274829,
		32.101368, 35.891613, 42.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768688, 36.583981, 42.620773>,  <32.291626, 36.537209, 42.067287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768688, 36.583981, 42.620773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904112, 36.210659, 42.668640>,  <31.985367, 35.986668, 42.697361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904112, 36.210659, 42.668640>,  <31.768688, 36.583981, 42.620773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904112, 36.210659, 42.668640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078060, 0.098880, 0.992033,
		-0.937702, -0.345202, -0.039377,
		0.338558, -0.933305, 0.119666,
		32.005680, 35.930668, 42.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356712, 36.177116, 43.011360>,  <31.768688, 36.583981, 42.620773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356712, 36.177116, 43.011360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696861, 35.973736, 43.065544>,  <31.900949, 35.851707, 43.098057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696861, 35.973736, 43.065544>,  <31.356712, 36.177116, 43.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696861, 35.973736, 43.065544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167708, -0.017880, 0.985675,
		-0.498742, -0.860907, -0.100476,
		0.850371, -0.508448, 0.135464,
		31.951973, 35.821201, 43.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249405, 35.606766, 43.490101>,  <31.356712, 36.177116, 43.011360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249405, 35.606766, 43.490101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 35.646137, 43.518234>,  <31.884705, 35.669758, 43.535114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 35.646137, 43.518234>,  <31.249405, 35.606766, 43.490101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646467, 35.646137, 43.518234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056461, -0.137220, 0.988930,
		0.106985, -0.985638, -0.130655,
		0.992656, 0.098424, 0.070330,
		31.944263, 35.675663, 43.539333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368948, 35.030411, 43.829754>,  <31.249405, 35.606766, 43.490101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368948, 35.030411, 43.829754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666393, 35.293472, 43.877979>,  <31.844860, 35.451309, 43.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666393, 35.293472, 43.877979>,  <31.368948, 35.030411, 43.829754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666393, 35.293472, 43.877979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022536, -0.155564, 0.987569,
		0.668230, -0.737086, -0.100859,
		0.743613, 0.657650, 0.120564,
		31.889477, 35.490768, 43.914150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732914, 34.493111, 44.226128>,  <31.368948, 35.030411, 43.829754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732914, 34.493111, 44.226128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910261, 34.846680, 44.285599>,  <32.016670, 35.058823, 44.321281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910261, 34.846680, 44.285599>,  <31.732914, 34.493111, 44.226128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910261, 34.846680, 44.285599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023778, -0.177415, 0.983849,
		0.896025, -0.432669, -0.099678,
		0.443366, 0.883924, 0.148680,
		32.043270, 35.111858, 44.330204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280502, 34.346409, 44.543495>,  <31.732914, 34.493111, 44.226128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280502, 34.346409, 44.543495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193478, 34.720589, 44.654926>,  <32.141262, 34.945095, 44.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193478, 34.720589, 44.654926>,  <32.280502, 34.346409, 44.543495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193478, 34.720589, 44.654926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294154, -0.209310, 0.932557,
		0.930668, 0.284830, -0.229628,
		-0.217557, 0.935447, 0.278582,
		32.128212, 35.001225, 44.738503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676807, 34.377506, 45.016670>,  <32.280502, 34.346409, 44.543495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676807, 34.377506, 45.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494591, 34.727875, 45.080227>,  <32.385262, 34.938095, 45.118359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494591, 34.727875, 45.080227>,  <32.676807, 34.377506, 45.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494591, 34.727875, 45.080227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212811, -0.066157, 0.974851,
		0.864401, 0.477903, -0.156267,
		-0.455546, 0.875918, 0.158890,
		32.357925, 34.990650, 45.127895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126656, 34.789005, 45.395992>,  <32.676807, 34.377506, 45.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126656, 34.789005, 45.395992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761547, 34.927456, 45.482761>,  <32.542484, 35.010525, 45.534821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761547, 34.927456, 45.482761>,  <33.126656, 34.789005, 45.395992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761547, 34.927456, 45.482761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206373, -0.067529, 0.976140,
		0.352512, 0.935756, -0.009792,
		-0.912768, 0.346122, 0.216920,
		32.487717, 35.031292, 45.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207455, 35.166763, 46.067562>,  <33.126656, 34.789005, 45.395992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207455, 35.166763, 46.067562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811214, 35.122204, 46.035793>,  <32.573471, 35.095467, 46.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811214, 35.122204, 46.035793>,  <33.207455, 35.166763, 46.067562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811214, 35.122204, 46.035793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069813, -0.087696, 0.993698,
		-0.117664, 0.989898, 0.079094,
		-0.990596, -0.111401, -0.079426,
		32.514034, 35.088783, 46.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931931, 35.622963, 46.561810>,  <33.207455, 35.166763, 46.067562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931931, 35.622963, 46.561810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668457, 35.325836, 46.513874>,  <32.510372, 35.147560, 46.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668457, 35.325836, 46.513874>,  <32.931931, 35.622963, 46.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668457, 35.325836, 46.513874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047367, -0.118025, 0.991880,
		-0.750925, 0.659015, 0.042557,
		-0.658686, -0.742812, -0.119843,
		32.470852, 35.102993, 46.477921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404995, 35.798687, 47.046856>,  <32.931931, 35.622963, 46.561810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404995, 35.798687, 47.046856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388008, 35.404564, 46.980694>,  <32.377815, 35.168091, 46.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388008, 35.404564, 46.980694>,  <32.404995, 35.798687, 47.046856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388008, 35.404564, 46.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172256, -0.155852, 0.972645,
		-0.984136, 0.069795, -0.163108,
		-0.042465, -0.985312, -0.165402,
		32.375267, 35.108971, 46.931072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090954, 35.452465, 47.665722>,  <32.404995, 35.798687, 47.046856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090954, 35.452465, 47.665722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174942, 35.110905, 47.475243>,  <32.225334, 34.905968, 47.360954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174942, 35.110905, 47.475243>,  <32.090954, 35.452465, 47.665722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174942, 35.110905, 47.475243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278922, -0.519136, 0.807899,
		-0.937077, -0.036813, -0.347176,
		0.209972, -0.853899, -0.476203,
		32.237934, 34.854736, 47.332382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497955, 34.965420, 47.916058>,  <32.090954, 35.452465, 47.665722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497955, 34.965420, 47.916058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823202, 34.765923, 47.795994>,  <32.018353, 34.646225, 47.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823202, 34.765923, 47.795994>,  <31.497955, 34.965420, 47.916058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823202, 34.765923, 47.795994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022100, -0.541733, 0.840260,
		-0.581681, -0.676596, -0.451514,
		0.813117, -0.498742, -0.300163,
		32.067139, 34.616302, 47.705944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427504, 34.189808, 48.040039>,  <31.497955, 34.965420, 47.916058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427504, 34.189808, 48.040039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823664, 34.218018, 47.992489>,  <32.061359, 34.234943, 47.963959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823664, 34.218018, 47.992489>,  <31.427504, 34.189808, 48.040039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823664, 34.218018, 47.992489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133084, -0.718841, 0.682317,
		-0.037337, -0.691588, -0.721327,
		0.990401, 0.070521, -0.118879,
		32.120785, 34.239174, 47.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708754, 33.439316, 48.118214>,  <31.427504, 34.189808, 48.040039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708754, 33.439316, 48.118214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022861, 33.683998, 48.156502>,  <32.211327, 33.830807, 48.179474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022861, 33.683998, 48.156502>,  <31.708754, 33.439316, 48.118214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022861, 33.683998, 48.156502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378526, -0.596657, 0.707615,
		0.489966, -0.519437, -0.700085,
		0.785272, 0.611708, 0.095721,
		32.258442, 33.867512, 48.185219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343117, 32.964970, 48.168938>,  <31.708754, 33.439316, 48.118214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343117, 32.964970, 48.168938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386948, 33.305939, 48.373432>,  <32.413246, 33.510521, 48.496128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386948, 33.305939, 48.373432>,  <32.343117, 32.964970, 48.168938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386948, 33.305939, 48.373432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246754, -0.521561, 0.816754,
		0.962863, 0.036651, -0.267491,
		0.109578, 0.852427, 0.511235,
		32.419823, 33.561668, 48.526802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981400, 32.890434, 48.553532>,  <32.343117, 32.964970, 48.168938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981400, 32.890434, 48.553532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759609, 33.182880, 48.712540>,  <32.626534, 33.358349, 48.807945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759609, 33.182880, 48.712540>,  <32.981400, 32.890434, 48.553532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759609, 33.182880, 48.712540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201693, -0.345371, 0.916536,
		0.807388, 0.588376, 0.044039,
		-0.554478, 0.731117, 0.397520,
		32.593266, 33.402214, 48.831795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220451, 32.959976, 49.210632>,  <32.981400, 32.890434, 48.553532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220451, 32.959976, 49.210632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889874, 33.184582, 49.227116>,  <32.691528, 33.319344, 49.237007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889874, 33.184582, 49.227116>,  <33.220451, 32.959976, 49.210632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889874, 33.184582, 49.227116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004796, -0.080207, 0.996767,
		0.563001, 0.823573, 0.068979,
		-0.826442, 0.561511, 0.041207,
		32.641941, 33.353035, 49.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353374, 33.639942, 49.544819>,  <33.220451, 32.959976, 49.210632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353374, 33.639942, 49.544819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975510, 33.515327, 49.585907>,  <32.748791, 33.440559, 49.610561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975510, 33.515327, 49.585907>,  <33.353374, 33.639942, 49.544819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975510, 33.515327, 49.585907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109462, -0.004180, 0.993982,
		-0.309233, 0.950225, 0.038051,
		-0.944666, -0.311537, 0.102721,
		32.692108, 33.421867, 49.616722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059284, 34.056091, 49.990387>,  <33.353374, 33.639942, 49.544819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059284, 34.056091, 49.990387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818623, 33.736977, 50.006126>,  <32.674225, 33.545506, 50.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818623, 33.736977, 50.006126>,  <33.059284, 34.056091, 49.990387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818623, 33.736977, 50.006126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081954, -0.012652, 0.996556,
		-0.794544, 0.602803, 0.072994,
		-0.601650, -0.797790, 0.039349,
		32.638126, 33.497639, 50.017933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708317, 34.141949, 50.621212>,  <33.059284, 34.056091, 49.990387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708317, 34.141949, 50.621212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606815, 33.762371, 50.546249>,  <32.545914, 33.534626, 50.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606815, 33.762371, 50.546249>,  <32.708317, 34.141949, 50.621212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606815, 33.762371, 50.546249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152533, -0.230585, 0.961023,
		-0.955167, 0.215274, 0.203256,
		-0.253751, -0.948940, -0.187411,
		32.530689, 33.477688, 50.490025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291824, 33.996113, 51.181675>,  <32.708317, 34.141949, 50.621212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291824, 33.996113, 51.181675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 33.651947, 51.013332>,  <32.475723, 33.445446, 50.912327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 33.651947, 51.013332>,  <32.291824, 33.996113, 51.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406761, 33.651947, 51.013332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264261, -0.351117, 0.898267,
		-0.920651, -0.369328, 0.126482,
		0.287345, -0.860415, -0.420855,
		32.492966, 33.393822, 50.887077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034092, 33.466217, 51.595451>,  <32.291824, 33.996113, 51.181675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034092, 33.466217, 51.595451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334919, 33.284328, 51.404613>,  <32.515415, 33.175194, 51.290112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334919, 33.284328, 51.404613>,  <32.034092, 33.466217, 51.595451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334919, 33.284328, 51.404613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289620, -0.422239, 0.858973,
		-0.592043, -0.784183, -0.185855,
		0.752067, -0.454721, -0.477099,
		32.560539, 33.147911, 51.261482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036720, 32.655544, 51.527023>,  <32.034092, 33.466217, 51.595451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036720, 32.655544, 51.527023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413948, 32.786858, 51.505642>,  <32.640285, 32.865646, 51.492813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413948, 32.786858, 51.505642>,  <32.036720, 32.655544, 51.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413948, 32.786858, 51.505642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265587, -0.646501, 0.715192,
		0.200225, -0.688670, -0.696881,
		0.943066, 0.328282, -0.053457,
		32.696869, 32.885342, 51.489605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462978, 32.056770, 51.574078>,  <32.036720, 32.655544, 51.527023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462978, 32.056770, 51.574078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700356, 32.360157, 51.681820>,  <32.842781, 32.542191, 51.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700356, 32.360157, 51.681820>,  <32.462978, 32.056770, 51.574078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700356, 32.360157, 51.681820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365834, -0.552271, 0.749107,
		0.716931, -0.346014, -0.605215,
		0.593444, 0.758466, 0.269357,
		32.878387, 32.587696, 51.762627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119305, 31.757359, 51.679878>,  <32.462978, 32.056770, 51.574078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119305, 31.757359, 51.679878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103783, 32.083637, 51.910748>,  <33.094471, 32.279404, 52.049271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103783, 32.083637, 51.910748>,  <33.119305, 31.757359, 51.679878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103783, 32.083637, 51.910748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298811, -0.541708, 0.785662,
		0.953523, 0.202951, -0.222721,
		-0.038801, 0.815698, 0.577175,
		33.092144, 32.328346, 52.083900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672752, 31.605507, 52.118168>,  <33.119305, 31.757359, 51.679878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672752, 31.605507, 52.118168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503677, 31.920547, 52.297508>,  <33.402233, 32.109573, 52.405113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503677, 31.920547, 52.297508>,  <33.672752, 31.605507, 52.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503677, 31.920547, 52.297508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203278, -0.399718, 0.893814,
		0.883184, 0.468943, 0.008853,
		-0.422687, 0.787603, 0.448350,
		33.376873, 32.156830, 52.432014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098286, 31.728439, 52.667431>,  <33.672752, 31.605507, 52.118168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098286, 31.728439, 52.667431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766796, 31.904501, 52.805691>,  <33.567902, 32.010139, 52.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766796, 31.904501, 52.805691>,  <34.098286, 31.728439, 52.667431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766796, 31.904501, 52.805691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218218, -0.314596, 0.923802,
		0.515357, 0.841007, 0.164664,
		-0.828727, 0.440155, 0.345652,
		33.518177, 32.036549, 52.909386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236698, 32.159733, 53.232475>,  <34.098286, 31.728439, 52.667431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236698, 32.159733, 53.232475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854462, 32.054035, 53.284645>,  <33.625118, 31.990616, 53.315948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854462, 32.054035, 53.284645>,  <34.236698, 32.159733, 53.232475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854462, 32.054035, 53.284645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177573, -0.163147, 0.970490,
		-0.235168, 0.950557, 0.202825,
		-0.955596, -0.264245, 0.130427,
		33.567783, 31.974762, 53.323772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000164, 32.330166, 53.846809>,  <34.236698, 32.159733, 53.232475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000164, 32.330166, 53.846809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702770, 32.067154, 53.798012>,  <33.524334, 31.909348, 53.768734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702770, 32.067154, 53.798012>,  <34.000164, 32.330166, 53.846809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702770, 32.067154, 53.798012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086425, -0.275358, 0.957449,
		-0.663140, 0.701310, 0.261553,
		-0.743489, -0.657528, -0.121991,
		33.479725, 31.869896, 53.761414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582073, 32.287121, 54.547592>,  <34.000164, 32.330166, 53.846809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582073, 32.287121, 54.547592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516102, 31.958149, 54.329819>,  <33.476521, 31.760767, 54.199154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516102, 31.958149, 54.329819>,  <33.582073, 32.287121, 54.547592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516102, 31.958149, 54.329819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030176, -0.547531, 0.836241,
		-0.985844, 0.154349, 0.065486,
		-0.164929, -0.822427, -0.544437,
		33.466621, 31.711420, 54.166489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080116, 31.702827, 54.903603>,  <33.582073, 32.287121, 54.547592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080116, 31.702827, 54.903603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285484, 31.475058, 54.646805>,  <33.408707, 31.338396, 54.492725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285484, 31.475058, 54.646805>,  <33.080116, 31.702827, 54.903603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285484, 31.475058, 54.646805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047671, -0.728041, 0.683875,
		-0.856811, -0.381722, -0.346647,
		0.513423, -0.569426, -0.641990,
		33.439510, 31.304230, 54.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805489, 30.942366, 54.906548>,  <33.080116, 31.702827, 54.903603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805489, 30.942366, 54.906548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188560, 30.972021, 54.795300>,  <33.418404, 30.989815, 54.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188560, 30.972021, 54.795300>,  <32.805489, 30.942366, 54.906548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188560, 30.972021, 54.795300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245477, -0.714912, 0.654708,
		-0.150291, -0.695273, -0.702857,
		0.957681, 0.074139, -0.278118,
		33.475864, 30.994263, 54.711864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217693, 30.277185, 54.591557>,  <32.805489, 30.942366, 54.906548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217693, 30.277185, 54.591557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453320, 30.522274, 54.802299>,  <33.594696, 30.669327, 54.928745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453320, 30.522274, 54.802299>,  <33.217693, 30.277185, 54.591557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453320, 30.522274, 54.802299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069006, -0.687742, 0.722668,
		0.805136, -0.389340, -0.447404,
		0.589063, 0.612720, 0.526858,
		33.630039, 30.706089, 54.960358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969017, 29.909601, 54.758553>,  <33.217693, 30.277185, 54.591557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969017, 29.909601, 54.758553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803608, 30.163706, 55.019455>,  <33.704361, 30.316168, 55.175999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803608, 30.163706, 55.019455>,  <33.969017, 29.909601, 54.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803608, 30.163706, 55.019455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006373, -0.718381, 0.695620,
		0.910471, 0.283499, 0.301116,
		-0.413523, 0.635261, 0.652259,
		33.679550, 30.354284, 55.215134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070328, 29.492523, 55.285614>,  <33.969017, 29.909601, 54.758553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070328, 29.492523, 55.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873444, 29.789478, 55.467422>,  <33.755314, 29.967651, 55.576508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873444, 29.789478, 55.467422>,  <34.070328, 29.492523, 55.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873444, 29.789478, 55.467422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023003, -0.533061, 0.845764,
		0.870173, 0.405837, 0.279454,
		-0.492208, 0.742389, 0.454521,
		33.725780, 30.012196, 55.603779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280422, 29.491720, 55.975941>,  <34.070328, 29.492523, 55.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280422, 29.491720, 55.975941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954414, 29.717972, 56.026222>,  <33.758808, 29.853724, 56.056389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954414, 29.717972, 56.026222>,  <34.280422, 29.491720, 55.975941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954414, 29.717972, 56.026222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154841, -0.421663, 0.893434,
		0.558355, 0.708706, 0.431248,
		-0.815024, 0.565628, 0.125701,
		33.709908, 29.887661, 56.063934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658680, 30.093121, 55.648037>,  <34.280422, 29.491720, 55.975941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658680, 30.093121, 55.648037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713196, 29.696854, 55.647827>,  <34.745907, 29.459093, 55.647701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713196, 29.696854, 55.647827>,  <34.658680, 30.093121, 55.648037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713196, 29.696854, 55.647827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433535, -0.059169, -0.899192,
		0.890770, 0.122781, -0.437553,
		0.136293, -0.990668, -0.000523,
		34.754086, 29.399652, 55.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073414, 29.877140, 55.052216>,  <34.658680, 30.093121, 55.648037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073414, 29.877140, 55.052216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835068, 29.580427, 55.175312>,  <34.692062, 29.402399, 55.249168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835068, 29.580427, 55.175312>,  <35.073414, 29.877140, 55.052216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835068, 29.580427, 55.175312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329101, -0.124002, -0.936118,
		0.732557, -0.659076, -0.170233,
		-0.595863, -0.741783, 0.307741,
		34.656307, 29.357893, 55.267635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983494, 29.459167, 54.404148>,  <35.073414, 29.877140, 55.052216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983494, 29.459167, 54.404148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707943, 29.311743, 54.653824>,  <34.542610, 29.223288, 54.803627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707943, 29.311743, 54.653824>,  <34.983494, 29.459167, 54.404148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707943, 29.311743, 54.653824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522379, -0.344585, -0.779988,
		0.502560, -0.863379, 0.044848,
		-0.688879, -0.368563, 0.624185,
		34.501278, 29.201174, 54.841080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868347, 28.775671, 54.342323>,  <34.983494, 29.459167, 54.404148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868347, 28.775671, 54.342323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 28.925459, 54.479614>,  <34.317066, 29.015331, 54.561989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 28.925459, 54.479614>,  <34.868347, 28.775671, 54.342323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523796, 28.925459, 54.479614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457185, -0.277033, -0.845124,
		-0.221384, -0.884889, 0.409830,
		-0.861377, 0.374465, 0.343227,
		34.265385, 29.037800, 54.582581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303547, 28.400631, 54.421867>,  <34.868347, 28.775671, 54.342323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303547, 28.400631, 54.421867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 28.771133, 54.339146>,  <34.101891, 28.993435, 54.289513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 28.771133, 54.339146>,  <34.303547, 28.400631, 54.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177513, 28.771133, 54.339146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378672, -0.322502, -0.867525,
		-0.870245, -0.195038, 0.452364,
		-0.315089, 0.926257, -0.206800,
		34.082985, 29.049011, 54.277107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626614, 28.358961, 54.047199>,  <34.303547, 28.400631, 54.421867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626614, 28.358961, 54.047199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793530, 28.714073, 53.969513>,  <33.893677, 28.927141, 53.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793530, 28.714073, 53.969513>,  <33.626614, 28.358961, 54.047199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793530, 28.714073, 53.969513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170695, -0.133336, -0.976261,
		-0.892600, 0.440532, 0.095900,
		0.417287, 0.887780, -0.194213,
		33.918716, 28.980408, 53.911247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470078, 28.525415, 53.376255>,  <33.626614, 28.358961, 54.047199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470078, 28.525415, 53.376255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767101, 28.788662, 53.426025>,  <33.945316, 28.946609, 53.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767101, 28.788662, 53.426025>,  <33.470078, 28.525415, 53.376255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767101, 28.788662, 53.426025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133059, 0.037119, -0.990413,
		-0.656427, 0.751999, -0.060006,
		0.742562, 0.658118, 0.124426,
		33.989868, 28.986097, 53.463352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384922, 29.048662, 52.863281>,  <33.470078, 28.525415, 53.376255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384922, 29.048662, 52.863281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765678, 29.043539, 52.985744>,  <33.994133, 29.040464, 53.059223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765678, 29.043539, 52.985744>,  <33.384922, 29.048662, 52.863281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765678, 29.043539, 52.985744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298620, 0.262863, -0.917458,
		-0.068727, 0.964748, 0.254043,
		0.951894, -0.012809, 0.306159,
		34.051247, 29.039696, 53.077591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680496, 29.224438, 52.377811>,  <33.384922, 29.048662, 52.863281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680496, 29.224438, 52.377811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025494, 29.136860, 52.560318>,  <34.232491, 29.084312, 52.669823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025494, 29.136860, 52.560318>,  <33.680496, 29.224438, 52.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025494, 29.136860, 52.560318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485390, 0.102763, -0.868237,
		0.143209, 0.970311, 0.194906,
		0.862489, -0.218944, 0.456263,
		34.284241, 29.071177, 52.697197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126305, 29.777681, 52.207458>,  <33.680496, 29.224438, 52.377811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126305, 29.777681, 52.207458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330135, 29.447418, 52.304306>,  <34.452435, 29.249260, 52.362415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330135, 29.447418, 52.304306>,  <34.126305, 29.777681, 52.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330135, 29.447418, 52.304306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391012, -0.028447, -0.919946,
		0.766447, 0.563455, 0.308346,
		0.509576, -0.825657, 0.242121,
		34.483009, 29.199720, 52.376942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883434, 29.921860, 52.214924>,  <34.126305, 29.777681, 52.207458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883434, 29.921860, 52.214924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845692, 29.527046, 52.162979>,  <34.823044, 29.290159, 52.131813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845692, 29.527046, 52.162979>,  <34.883434, 29.921860, 52.214924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845692, 29.527046, 52.162979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416836, 0.079291, -0.905517,
		0.904071, -0.139577, 0.403949,
		-0.094360, -0.987032, -0.129865,
		34.817383, 29.230936, 52.124020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455463, 29.786007, 51.923641>,  <34.883434, 29.921860, 52.214924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455463, 29.786007, 51.923641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251152, 29.448256, 51.858982>,  <35.128567, 29.245605, 51.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251152, 29.448256, 51.858982>,  <35.455463, 29.786007, 51.923641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251152, 29.448256, 51.858982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227898, 0.048308, -0.972486,
		0.828955, -0.533565, 0.167758,
		-0.510780, -0.844379, -0.161644,
		35.097919, 29.194942, 51.810490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966373, 29.380035, 51.482990>,  <35.455463, 29.786007, 51.923641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966373, 29.380035, 51.482990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600540, 29.228275, 51.426998>,  <35.381039, 29.137220, 51.393402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600540, 29.228275, 51.426998>,  <35.966373, 29.380035, 51.482990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600540, 29.228275, 51.426998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064945, 0.203846, -0.976846,
		0.399149, -0.902498, -0.161794,
		-0.914583, -0.379399, -0.139977,
		35.326164, 29.114456, 51.385006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090611, 28.923576, 50.961792>,  <35.966373, 29.380035, 51.482990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090611, 28.923576, 50.961792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695786, 28.987457, 50.956146>,  <35.458889, 29.025785, 50.952759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695786, 28.987457, 50.956146>,  <36.090611, 28.923576, 50.961792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695786, 28.987457, 50.956146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072303, 0.364857, -0.928252,
		-0.143096, -0.917265, -0.371684,
		-0.987064, 0.159703, -0.014111,
		35.399666, 29.035368, 50.951912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741928, 28.601063, 50.304741>,  <36.090611, 28.923576, 50.961792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741928, 28.601063, 50.304741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487164, 28.890516, 50.411102>,  <35.334305, 29.064188, 50.474918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487164, 28.890516, 50.411102>,  <35.741928, 28.601063, 50.304741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487164, 28.890516, 50.411102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082343, 0.279082, -0.956730,
		-0.766529, -0.631245, -0.118164,
		-0.636909, 0.723632, 0.265903,
		35.296089, 29.107605, 50.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095722, 28.591991, 49.937893>,  <35.741928, 28.601063, 50.304741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095722, 28.591991, 49.937893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100262, 28.975483, 50.051529>,  <35.102985, 29.205578, 50.119709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100262, 28.975483, 50.051529>,  <35.095722, 28.591991, 49.937893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100262, 28.975483, 50.051529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012181, 0.284219, -0.958682,
		-0.999861, 0.007420, 0.014904,
		0.011349, 0.958731, 0.284089,
		35.103668, 29.263102, 50.136757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656002, 28.844711, 49.456333>,  <35.095722, 28.591991, 49.937893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656002, 28.844711, 49.456333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799576, 29.178991, 49.622597>,  <34.885719, 29.379559, 49.722355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799576, 29.178991, 49.622597>,  <34.656002, 28.844711, 49.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799576, 29.178991, 49.622597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219118, 0.508335, -0.832816,
		-0.907278, 0.207849, 0.365576,
		0.358935, 0.835700, 0.415658,
		34.907257, 29.429701, 49.747295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099400, 29.254963, 49.325691>,  <34.656002, 28.844711, 49.456333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099400, 29.254963, 49.325691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409264, 29.488827, 49.422085>,  <34.595184, 29.629145, 49.479919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409264, 29.488827, 49.422085>,  <34.099400, 29.254963, 49.325691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409264, 29.488827, 49.422085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133419, 0.523602, -0.841452,
		-0.618140, 0.619690, 0.483619,
		0.774663, 0.584659, 0.240981,
		34.641663, 29.664225, 49.494381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858921, 29.837723, 49.333286>,  <34.099400, 29.254963, 49.325691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858921, 29.837723, 49.333286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245468, 29.893925, 49.247128>,  <34.477394, 29.927647, 49.195431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245468, 29.893925, 49.247128>,  <33.858921, 29.837723, 49.333286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245468, 29.893925, 49.247128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253797, 0.656335, -0.710501,
		0.041545, 0.741271, 0.669919,
		0.966365, 0.140505, -0.215400,
		34.535378, 29.936077, 49.182507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953564, 30.548594, 49.069511>,  <33.858921, 29.837723, 49.333286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953564, 30.548594, 49.069511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259296, 30.357508, 48.896267>,  <34.442738, 30.242857, 48.792320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259296, 30.357508, 48.896267>,  <33.953564, 30.548594, 49.069511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259296, 30.357508, 48.896267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176271, 0.491304, -0.852965,
		0.620264, 0.728292, 0.291312,
		0.764330, -0.477714, -0.433115,
		34.488594, 30.214193, 48.766331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225445, 30.989965, 48.579704>,  <33.953564, 30.548594, 49.069511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225445, 30.989965, 48.579704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356632, 30.624882, 48.482220>,  <34.435345, 30.405830, 48.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356632, 30.624882, 48.482220>,  <34.225445, 30.989965, 48.579704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356632, 30.624882, 48.482220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034404, 0.269348, -0.962428,
		0.944061, 0.307264, 0.119739,
		0.327971, -0.912711, -0.243710,
		34.455025, 30.351068, 48.409107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501957, 31.178518, 48.020283>,  <34.225445, 30.989965, 48.579704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501957, 31.178518, 48.020283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551430, 30.781731, 48.009727>,  <34.581116, 30.543657, 48.003395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551430, 30.781731, 48.009727>,  <34.501957, 31.178518, 48.020283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551430, 30.781731, 48.009727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080088, 0.036483, -0.996120,
		0.989084, 0.121093, 0.083957,
		0.123686, -0.991971, -0.026387,
		34.588535, 30.484140, 48.001812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053692, 31.068699, 47.520054>,  <34.501957, 31.178518, 48.020283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053692, 31.068699, 47.520054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815662, 30.749166, 47.555283>,  <34.672844, 30.557447, 47.576420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815662, 30.749166, 47.555283>,  <35.053692, 31.068699, 47.520054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815662, 30.749166, 47.555283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165676, 0.014707, -0.986071,
		0.786409, -0.601375, -0.141099,
		-0.595073, -0.798832, 0.088067,
		34.637142, 30.509518, 47.581703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219391, 30.773302, 46.881950>,  <35.053692, 31.068699, 47.520054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219391, 30.773302, 46.881950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883995, 30.582176, 46.986736>,  <34.682758, 30.467501, 47.049606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883995, 30.582176, 46.986736>,  <35.219391, 30.773302, 46.881950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883995, 30.582176, 46.986736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314891, 0.032523, -0.948570,
		0.444723, -0.877857, -0.177731,
		-0.838490, -0.477817, 0.261966,
		34.632446, 30.438831, 47.065327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004749, 30.215170, 46.389160>,  <35.219391, 30.773302, 46.881950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004749, 30.215170, 46.389160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655125, 30.286554, 46.569901>,  <34.445351, 30.329384, 46.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655125, 30.286554, 46.569901>,  <35.004749, 30.215170, 46.389160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655125, 30.286554, 46.569901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473784, -0.107439, -0.874063,
		-0.107439, -0.978064, 0.178460,
		0.874063, -0.178460, -0.451848,
		34.392906, 30.340092, 46.705456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559948, 29.724545, 46.121105>,  <35.004749, 30.215170, 46.389160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559948, 29.724545, 46.121105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329456, 30.011175, 46.278316>,  <34.191162, 30.183153, 46.372643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329456, 30.011175, 46.278316>,  <34.559948, 29.724545, 46.121105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329456, 30.011175, 46.278316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486835, 0.085315, -0.869318,
		-0.656466, -0.692269, 0.299694,
		-0.576233, 0.716579, 0.393027,
		34.156586, 30.226149, 46.396225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874592, 29.509159, 45.932613>,  <34.559948, 29.724545, 46.121105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874592, 29.509159, 45.932613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829807, 29.892475, 46.037796>,  <33.802937, 30.122465, 46.100906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829807, 29.892475, 46.037796>,  <33.874592, 29.509159, 45.932613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829807, 29.892475, 46.037796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456081, 0.185549, -0.870381,
		-0.882867, -0.217382, 0.416282,
		-0.111964, 0.958289, 0.262959,
		33.796219, 30.179962, 46.116684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240337, 29.664904, 45.769703>,  <33.874592, 29.509159, 45.932613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240337, 29.664904, 45.769703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392052, 30.035000, 45.773079>,  <33.483082, 30.257057, 45.775105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392052, 30.035000, 45.773079>,  <33.240337, 29.664904, 45.769703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392052, 30.035000, 45.773079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445994, 0.190802, -0.874462,
		-0.810698, 0.327909, 0.485020,
		0.379287, 0.925241, 0.008437,
		33.505836, 30.312572, 45.775612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683903, 30.044281, 45.609802>,  <33.240337, 29.664904, 45.769703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683903, 30.044281, 45.609802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002865, 30.274347, 45.536781>,  <33.194244, 30.412386, 45.492970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002865, 30.274347, 45.536781>,  <32.683903, 30.044281, 45.609802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002865, 30.274347, 45.536781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309890, 0.130726, -0.941742,
		-0.517792, 0.807525, 0.282480,
		0.797408, 0.575164, -0.182554,
		33.242088, 30.446898, 45.482014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423012, 30.751041, 45.217663>,  <32.683903, 30.044281, 45.609802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423012, 30.751041, 45.217663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807415, 30.694365, 45.122688>,  <33.038059, 30.660358, 45.065704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807415, 30.694365, 45.122688>,  <32.423012, 30.751041, 45.217663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807415, 30.694365, 45.122688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216738, 0.147209, -0.965067,
		0.171695, 0.978904, 0.110760,
		0.961013, -0.141691, -0.237441,
		33.095718, 30.651857, 45.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474842, 31.103119, 44.618069>,  <32.423012, 30.751041, 45.217663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474842, 31.103119, 44.618069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824032, 30.908119, 44.611710>,  <33.033546, 30.791119, 44.607895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824032, 30.908119, 44.611710>,  <32.474842, 31.103119, 44.618069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824032, 30.908119, 44.611710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038688, -0.036723, -0.998576,
		0.486222, 0.872351, -0.050919,
		0.872978, -0.487500, -0.015894,
		33.085926, 30.761869, 44.606941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009403, 31.487656, 44.259754>,  <32.474842, 31.103119, 44.618069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009403, 31.487656, 44.259754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107197, 31.100588, 44.234966>,  <33.165874, 30.868347, 44.220093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107197, 31.100588, 44.234966>,  <33.009403, 31.487656, 44.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107197, 31.100588, 44.234966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101913, 0.037916, -0.994070,
		0.964282, 0.249355, -0.089349,
		0.244488, -0.967670, -0.061974,
		33.180542, 30.810287, 44.216373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561237, 31.567135, 43.874630>,  <33.009403, 31.487656, 44.259754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561237, 31.567135, 43.874630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390919, 31.205830, 43.853401>,  <33.288727, 30.989046, 43.840664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390919, 31.205830, 43.853401>,  <33.561237, 31.567135, 43.874630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390919, 31.205830, 43.853401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133125, -0.004524, -0.991089,
		0.894974, -0.429064, 0.122174,
		-0.425793, -0.903263, -0.053071,
		33.263180, 30.934851, 43.837479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970818, 31.206858, 43.420322>,  <33.561237, 31.567135, 43.874630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970818, 31.206858, 43.420322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637642, 30.986193, 43.437672>,  <33.437737, 30.853794, 43.448082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637642, 30.986193, 43.437672>,  <33.970818, 31.206858, 43.420322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637642, 30.986193, 43.437672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052473, -0.156778, -0.986239,
		0.550870, -0.819201, 0.159534,
		-0.832940, -0.551661, 0.043378,
		33.387760, 30.820694, 43.450684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097450, 30.708645, 42.959782>,  <33.970818, 31.206858, 43.420322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097450, 30.708645, 42.959782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700558, 30.710304, 43.009518>,  <33.462421, 30.711300, 43.039360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700558, 30.710304, 43.009518>,  <34.097450, 30.708645, 42.959782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700558, 30.710304, 43.009518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124371, -0.056770, -0.990610,
		0.002951, -0.998379, 0.056845,
		-0.992232, 0.004146, 0.124337,
		33.402889, 30.711550, 43.046818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712185, 30.136871, 42.638794>,  <34.097450, 30.708645, 42.959782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712185, 30.136871, 42.638794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418552, 30.405745, 42.677372>,  <33.242374, 30.567068, 42.700520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418552, 30.405745, 42.677372>,  <33.712185, 30.136871, 42.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418552, 30.405745, 42.677372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058226, 0.079197, -0.995157,
		-0.676565, -0.736138, -0.018998,
		-0.734078, 0.672182, 0.096444,
		33.198330, 30.607399, 42.706306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343204, 30.014235, 42.114342>,  <33.712185, 30.136871, 42.638794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343204, 30.014235, 42.114342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179867, 30.367313, 42.207382>,  <33.081863, 30.579161, 42.263206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179867, 30.367313, 42.207382>,  <33.343204, 30.014235, 42.114342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179867, 30.367313, 42.207382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012092, 0.260021, -0.965527,
		-0.912747, -0.391456, -0.116852,
		-0.408346, 0.882695, 0.232600,
		33.057362, 30.632122, 42.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805138, 30.103323, 41.617176>,  <33.343204, 30.014235, 42.114342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805138, 30.103323, 41.617176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900192, 30.465237, 41.758537>,  <32.957226, 30.682384, 41.843353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900192, 30.465237, 41.758537>,  <32.805138, 30.103323, 41.617176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900192, 30.465237, 41.758537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026082, 0.369639, -0.928809,
		-0.971005, 0.211499, 0.111438,
		0.237634, 0.904785, 0.353405,
		32.971481, 30.736671, 41.864559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205620, 30.583294, 41.395500>,  <32.805138, 30.103323, 41.617176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205620, 30.583294, 41.395500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547871, 30.783436, 41.448483>,  <32.753220, 30.903521, 41.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547871, 30.783436, 41.448483>,  <32.205620, 30.583294, 41.395500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547871, 30.783436, 41.448483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128817, 0.453714, -0.881788,
		-0.501305, 0.737420, 0.452665,
		0.855628, 0.500356, 0.132457,
		32.804558, 30.933542, 41.488220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967863, 31.226547, 41.412762>,  <32.205620, 30.583294, 41.395500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967863, 31.226547, 41.412762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358028, 31.232973, 41.324844>,  <32.592129, 31.236830, 41.272095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358028, 31.232973, 41.324844>,  <31.967863, 31.226547, 41.412762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358028, 31.232973, 41.324844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203581, 0.447607, -0.870748,
		0.084392, 0.894086, 0.439873,
		0.975414, 0.016066, -0.219794,
		32.650654, 31.237793, 41.258907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206249, 31.973961, 41.172153>,  <31.967863, 31.226547, 41.412762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206249, 31.973961, 41.172153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460659, 31.706604, 41.017899>,  <32.613304, 31.546190, 40.925346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460659, 31.706604, 41.017899>,  <32.206249, 31.973961, 41.172153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460659, 31.706604, 41.017899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058780, 0.456333, -0.887865,
		0.769424, 0.587375, 0.250952,
		0.636028, -0.668394, -0.385640,
		32.651466, 31.506086, 40.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701473, 32.453140, 40.791729>,  <32.206249, 31.973961, 41.172153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701473, 32.453140, 40.791729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772972, 32.086266, 40.649284>,  <32.815872, 31.866140, 40.563820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772972, 32.086266, 40.649284>,  <32.701473, 32.453140, 40.791729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772972, 32.086266, 40.649284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021539, 0.358201, -0.933396,
		0.983659, 0.174513, 0.044272,
		0.178748, -0.917190, -0.356107,
		32.826595, 31.811110, 40.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142551, 32.649750, 40.316711>,  <32.701473, 32.453140, 40.791729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142551, 32.649750, 40.316711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023521, 32.279427, 40.223473>,  <32.952103, 32.057232, 40.167530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023521, 32.279427, 40.223473>,  <33.142551, 32.649750, 40.316711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023521, 32.279427, 40.223473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082627, 0.268219, -0.959808,
		0.951117, -0.266352, -0.156311,
		-0.297572, -0.925805, -0.233099,
		32.934250, 32.001686, 40.153542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548157, 32.408077, 39.784836>,  <33.142551, 32.649750, 40.316711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548157, 32.408077, 39.784836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250790, 32.142296, 39.754307>,  <33.072369, 31.982826, 39.735989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250790, 32.142296, 39.754307>,  <33.548157, 32.408077, 39.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250790, 32.142296, 39.754307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023392, 0.139880, -0.989892,
		0.668414, -0.734121, -0.119533,
		-0.743421, -0.664454, -0.076325,
		33.027763, 31.942959, 39.731411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866535, 32.812241, 40.357994>,  <33.548157, 32.408077, 39.784836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866535, 32.812241, 40.357994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197571, 32.777840, 40.136108>,  <34.396191, 32.757198, 40.002979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197571, 32.777840, 40.136108>,  <33.866535, 32.812241, 40.357994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197571, 32.777840, 40.136108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496865, -0.347588, 0.795178,
		-0.261198, -0.933695, -0.244927,
		0.827587, -0.086003, -0.554710,
		34.445847, 32.752037, 39.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111683, 32.056976, 40.310501>,  <33.866535, 32.812241, 40.357994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111683, 32.056976, 40.310501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424435, 32.296509, 40.241150>,  <34.612087, 32.440228, 40.199539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424435, 32.296509, 40.241150>,  <34.111683, 32.056976, 40.310501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424435, 32.296509, 40.241150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482633, -0.405391, 0.776353,
		0.394619, -0.690694, -0.605984,
		0.781883, 0.598832, -0.173377,
		34.659000, 32.476158, 40.189137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679768, 31.609268, 40.270710>,  <34.111683, 32.056976, 40.310501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679768, 31.609268, 40.270710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794872, 31.975924, 40.381683>,  <34.863934, 32.195915, 40.448269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794872, 31.975924, 40.381683>,  <34.679768, 31.609268, 40.270710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794872, 31.975924, 40.381683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622883, -0.399180, 0.672809,
		0.727468, -0.020798, -0.685826,
		0.287761, 0.916637, 0.277436,
		34.881199, 32.250916, 40.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452690, 31.599888, 40.280907>,  <34.679768, 31.609268, 40.270710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452690, 31.599888, 40.280907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320766, 31.878738, 40.535542>,  <35.241611, 32.046047, 40.688320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320766, 31.878738, 40.535542>,  <35.452690, 31.599888, 40.280907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320766, 31.878738, 40.535542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582766, -0.380158, 0.718237,
		0.742705, 0.607859, -0.280883,
		-0.329807, 0.697128, 0.636585,
		35.221825, 32.087875, 40.726517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015011, 31.665230, 40.711292>,  <35.452690, 31.599888, 40.280907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015011, 31.665230, 40.711292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737083, 31.860422, 40.922611>,  <35.570328, 31.977537, 41.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737083, 31.860422, 40.922611>,  <36.015011, 31.665230, 40.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737083, 31.860422, 40.922611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549300, -0.114058, 0.827805,
		0.464210, 0.865370, -0.188798,
		-0.694823, 0.487982, 0.528294,
		35.528637, 32.006817, 41.081100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458675, 32.099995, 41.197422>,  <36.015011, 31.665230, 40.711292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458675, 32.099995, 41.197422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093903, 32.044975, 41.352062>,  <35.875038, 32.011963, 41.444847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093903, 32.044975, 41.352062>,  <36.458675, 32.099995, 41.197422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093903, 32.044975, 41.352062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367946, 0.142970, 0.918790,
		-0.181653, 0.980122, -0.079768,
		-0.911931, -0.137550, 0.386603,
		35.820324, 32.003712, 41.468044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314884, 32.666752, 41.640179>,  <36.458675, 32.099995, 41.197422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314884, 32.666752, 41.640179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099087, 32.356514, 41.771271>,  <35.969608, 32.170372, 41.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099087, 32.356514, 41.771271>,  <36.314884, 32.666752, 41.640179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099087, 32.356514, 41.771271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333740, 0.160370, 0.928924,
		-0.773023, 0.610523, 0.172327,
		-0.539493, -0.775592, 0.327726,
		35.937241, 32.123837, 41.869587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148064, 32.821877, 42.380100>,  <36.314884, 32.666752, 41.640179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148064, 32.821877, 42.380100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071533, 32.431435, 42.338909>,  <36.025616, 32.197170, 42.314194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071533, 32.431435, 42.338909>,  <36.148064, 32.821877, 42.380100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071533, 32.431435, 42.338909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386323, -0.171339, 0.906310,
		-0.902302, 0.133619, 0.409875,
		-0.191328, -0.976109, -0.102980,
		36.014133, 32.138603, 42.308014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790771, 32.716751, 43.025627>,  <36.148064, 32.821877, 42.380100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790771, 32.716751, 43.025627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900501, 32.347340, 42.918415>,  <35.966339, 32.125694, 42.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900501, 32.347340, 42.918415>,  <35.790771, 32.716751, 43.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900501, 32.347340, 42.918415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314144, -0.177369, 0.932660,
		-0.908880, -0.340048, 0.241465,
		0.274321, -0.923530, -0.268031,
		35.982796, 32.070282, 42.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713257, 32.344837, 43.531166>,  <35.790771, 32.716751, 43.025627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713257, 32.344837, 43.531166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961098, 32.099396, 43.335381>,  <36.109802, 31.952129, 43.217911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961098, 32.099396, 43.335381>,  <35.713257, 32.344837, 43.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961098, 32.099396, 43.335381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337640, -0.354586, 0.871934,
		-0.708582, -0.705517, -0.012524,
		0.619605, -0.613608, -0.489464,
		36.146980, 31.915314, 43.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658836, 31.679239, 43.842564>,  <35.713257, 32.344837, 43.531166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658836, 31.679239, 43.842564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011883, 31.685122, 43.654617>,  <36.223709, 31.688650, 43.541851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011883, 31.685122, 43.654617>,  <35.658836, 31.679239, 43.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011883, 31.685122, 43.654617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458252, -0.249835, 0.852987,
		-0.104842, -0.968177, -0.227249,
		0.882617, 0.014708, -0.469862,
		36.276669, 31.689533, 43.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974625, 31.114708, 44.156227>,  <35.658836, 31.679239, 43.842564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974625, 31.114708, 44.156227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289257, 31.295441, 43.987877>,  <36.478035, 31.403879, 43.886868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289257, 31.295441, 43.987877>,  <35.974625, 31.114708, 44.156227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289257, 31.295441, 43.987877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576921, -0.294787, 0.761750,
		0.220113, -0.841991, -0.492545,
		0.786583, 0.451831, -0.420876,
		36.525230, 31.430990, 43.861614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554035, 30.600391, 44.319241>,  <35.974625, 31.114708, 44.156227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554035, 30.600391, 44.319241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700073, 30.960886, 44.225876>,  <36.787697, 31.177183, 44.169857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700073, 30.960886, 44.225876>,  <36.554035, 30.600391, 44.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700073, 30.960886, 44.225876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644674, -0.063868, 0.761785,
		0.671641, -0.428596, -0.604321,
		0.365095, 0.901236, -0.233409,
		36.809601, 31.231256, 44.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294197, 30.476170, 44.318829>,  <36.554035, 30.600391, 44.319241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294197, 30.476170, 44.318829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199497, 30.857557, 44.393494>,  <37.142677, 31.086390, 44.438293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199497, 30.857557, 44.393494>,  <37.294197, 30.476170, 44.318829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199497, 30.857557, 44.393494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489275, -0.048982, 0.870753,
		0.839380, 0.297484, -0.454912,
		-0.236752, 0.953470, 0.186666,
		37.128471, 31.143599, 44.449493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899242, 30.803717, 44.532803>,  <37.294197, 30.476170, 44.318829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899242, 30.803717, 44.532803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595882, 31.027618, 44.666374>,  <37.413868, 31.161961, 44.746517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595882, 31.027618, 44.666374>,  <37.899242, 30.803717, 44.532803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595882, 31.027618, 44.666374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345508, -0.089167, 0.934170,
		0.552683, 0.823846, -0.125776,
		-0.758397, 0.559756, 0.333926,
		37.368362, 31.195545, 44.766552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259388, 31.262325, 45.082504>,  <37.899242, 30.803717, 44.532803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259388, 31.262325, 45.082504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871880, 31.326124, 45.158440>,  <37.639374, 31.364403, 45.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871880, 31.326124, 45.158440>,  <38.259388, 31.262325, 45.082504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871880, 31.326124, 45.158440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200469, 0.053274, 0.978250,
		0.145912, 0.985760, -0.083584,
		-0.968773, 0.159495, 0.189841,
		37.581249, 31.373972, 45.215393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236073, 31.733467, 45.777782>,  <38.259388, 31.262325, 45.082504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236073, 31.733467, 45.777782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866909, 31.580334, 45.761379>,  <37.645412, 31.488455, 45.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866909, 31.580334, 45.761379>,  <38.236073, 31.733467, 45.777782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866909, 31.580334, 45.761379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087172, 0.104016, 0.990748,
		-0.375024, 0.917943, -0.129369,
		-0.922907, -0.382832, -0.041011,
		37.590038, 31.465485, 45.749077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885937, 32.044182, 46.340096>,  <38.236073, 31.733467, 45.777782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885937, 32.044182, 46.340096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631752, 31.743311, 46.270344>,  <37.479240, 31.562788, 46.228493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631752, 31.743311, 46.270344>,  <37.885937, 32.044182, 46.340096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631752, 31.743311, 46.270344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284105, 0.017782, 0.958628,
		-0.717960, 0.658718, -0.224998,
		-0.635466, -0.752180, -0.174378,
		37.441113, 31.517656, 46.218029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381023, 32.148632, 46.836124>,  <37.885937, 32.044182, 46.340096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381023, 32.148632, 46.836124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336544, 31.769365, 46.717056>,  <37.309856, 31.541805, 46.645615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336544, 31.769365, 46.717056>,  <37.381023, 32.148632, 46.836124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336544, 31.769365, 46.717056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337419, -0.245711, 0.908721,
		-0.934763, 0.201491, -0.292607,
		-0.111203, -0.948171, -0.297668,
		37.303185, 31.484915, 46.627754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689541, 31.981909, 47.016621>,  <37.381023, 32.148632, 46.836124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689541, 31.981909, 47.016621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917385, 31.656212, 46.971806>,  <37.054092, 31.460794, 46.944916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917385, 31.656212, 46.971806>,  <36.689541, 31.981909, 47.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917385, 31.656212, 46.971806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333558, -0.353592, 0.873906,
		-0.751186, -0.460417, -0.473007,
		0.569613, -0.814241, -0.112037,
		37.088268, 31.411940, 46.938194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326813, 31.342913, 47.294415>,  <36.689541, 31.981909, 47.016621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326813, 31.342913, 47.294415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714508, 31.245062, 47.305264>,  <36.947124, 31.186352, 47.311771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714508, 31.245062, 47.305264>,  <36.326813, 31.342913, 47.294415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714508, 31.245062, 47.305264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131838, -0.422963, 0.896505,
		-0.207840, -0.872502, -0.442203,
		0.969238, -0.244629, 0.027120,
		37.005280, 31.171673, 47.313400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354473, 30.715736, 47.625229>,  <36.326813, 31.342913, 47.294415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354473, 30.715736, 47.625229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732647, 30.838886, 47.667881>,  <36.959553, 30.912775, 47.693474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732647, 30.838886, 47.667881>,  <36.354473, 30.715736, 47.625229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732647, 30.838886, 47.667881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032579, -0.414958, 0.909257,
		0.324182, -0.856168, -0.402346,
		0.945433, 0.307873, 0.106629,
		37.016277, 30.931248, 47.699871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913254, 30.152046, 47.766903>,  <36.354473, 30.715736, 47.625229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913254, 30.152046, 47.766903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066231, 30.484554, 47.928261>,  <37.158016, 30.684059, 48.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066231, 30.484554, 47.928261>,  <36.913254, 30.152046, 47.766903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066231, 30.484554, 47.928261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169439, -0.492273, 0.853790,
		0.908311, -0.258174, -0.329115,
		0.382441, 0.831272, 0.403392,
		37.180962, 30.733936, 48.049278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434093, 29.871967, 48.204586>,  <36.913254, 30.152046, 47.766903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434093, 29.871967, 48.204586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390419, 30.243040, 48.347404>,  <37.364216, 30.465685, 48.433094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390419, 30.243040, 48.347404>,  <37.434093, 29.871967, 48.204586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390419, 30.243040, 48.347404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171281, -0.336263, 0.926062,
		0.979154, 0.162265, -0.122181,
		-0.109183, 0.927684, 0.357046,
		37.357666, 30.521345, 48.454517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944256, 29.957008, 48.736977>,  <37.434093, 29.871967, 48.204586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944256, 29.957008, 48.736977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679214, 30.247391, 48.810669>,  <37.520187, 30.421621, 48.854885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679214, 30.247391, 48.810669>,  <37.944256, 29.957008, 48.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679214, 30.247391, 48.810669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141765, -0.119966, 0.982604,
		0.735430, 0.677196, -0.023426,
		-0.662606, 0.725957, 0.184229,
		37.480434, 30.465178, 48.865936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092121, 30.407623, 49.281456>,  <37.944256, 29.957008, 48.736977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092121, 30.407623, 49.281456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692535, 30.418476, 49.266830>,  <37.452785, 30.424988, 49.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692535, 30.418476, 49.266830>,  <38.092121, 30.407623, 49.281456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692535, 30.418476, 49.266830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031069, 0.180806, 0.983028,
		0.033283, 0.983145, -0.179775,
		-0.998963, 0.027133, -0.036563,
		37.392845, 30.426617, 49.255863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972313, 31.034296, 49.704586>,  <38.092121, 30.407623, 49.281456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972313, 31.034296, 49.704586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645519, 30.806116, 49.670830>,  <37.449444, 30.669209, 49.650578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645519, 30.806116, 49.670830>,  <37.972313, 31.034296, 49.704586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645519, 30.806116, 49.670830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261604, 0.236227, 0.935821,
		-0.513902, 0.786629, -0.342226,
		-0.816987, -0.570448, -0.084388,
		37.400425, 30.634981, 49.645512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514362, 31.394518, 49.972466>,  <37.972313, 31.034296, 49.704586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514362, 31.394518, 49.972466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324726, 31.043221, 49.997543>,  <37.210945, 30.832443, 50.012589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324726, 31.043221, 49.997543>,  <37.514362, 31.394518, 49.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324726, 31.043221, 49.997543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096411, 0.122558, 0.987767,
		-0.875183, 0.462245, -0.142775,
		-0.474089, -0.878242, 0.062695,
		37.182499, 30.779747, 50.016354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126251, 31.483953, 50.548088>,  <37.514362, 31.394518, 49.972466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126251, 31.483953, 50.548088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109257, 31.089945, 50.481243>,  <37.099060, 30.853540, 50.441135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109257, 31.089945, 50.481243>,  <37.126251, 31.483953, 50.548088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109257, 31.089945, 50.481243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007280, -0.167568, 0.985834,
		-0.999071, 0.040667, 0.014290,
		-0.042486, -0.985021, -0.167117,
		37.096512, 30.794439, 50.431107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565239, 31.262545, 50.909389>,  <37.126251, 31.483953, 50.548088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565239, 31.262545, 50.909389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783680, 30.929842, 50.869484>,  <36.914745, 30.730221, 50.845539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783680, 30.929842, 50.869484>,  <36.565239, 31.262545, 50.909389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783680, 30.929842, 50.869484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069717, -0.163803, 0.984026,
		-0.834811, -0.530425, -0.147441,
		0.546104, -0.831756, -0.099765,
		36.947510, 30.680315, 50.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202202, 30.765522, 51.261795>,  <36.565239, 31.262545, 50.909389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202202, 30.765522, 51.261795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577488, 30.630756, 51.230198>,  <36.802658, 30.549898, 51.211239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577488, 30.630756, 51.230198>,  <36.202202, 30.765522, 51.261795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577488, 30.630756, 51.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055672, -0.078336, 0.995371,
		-0.341541, -0.938271, -0.054740,
		0.938217, -0.336913, -0.078990,
		36.858952, 30.529682, 51.206501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220764, 30.126226, 51.548790>,  <36.202202, 30.765522, 51.261795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220764, 30.126226, 51.548790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605724, 30.234846, 51.551567>,  <36.836700, 30.300018, 51.553234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605724, 30.234846, 51.551567>,  <36.220764, 30.126226, 51.548790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605724, 30.234846, 51.551567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060630, -0.239639, 0.968967,
		0.264786, -0.932113, -0.247092,
		0.962399, 0.271550, 0.006939,
		36.894444, 30.316311, 51.553650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607586, 29.632648, 51.958225>,  <36.220764, 30.126226, 51.548790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607586, 29.632648, 51.958225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842087, 29.956625, 51.965206>,  <36.982788, 30.151011, 51.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842087, 29.956625, 51.965206>,  <36.607586, 29.632648, 51.958225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842087, 29.956625, 51.965206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149944, -0.129657, 0.980156,
		0.796131, -0.572001, -0.197457,
		0.586252, 0.809940, 0.017456,
		37.017963, 30.199608, 51.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177311, 29.461143, 52.396900>,  <36.607586, 29.632648, 51.958225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177311, 29.461143, 52.396900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247257, 29.853741, 52.365681>,  <37.289227, 30.089300, 52.346947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247257, 29.853741, 52.365681>,  <37.177311, 29.461143, 52.396900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247257, 29.853741, 52.365681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197151, 0.042762, 0.979440,
		0.964652, -0.186657, -0.186025,
		0.174865, 0.981494, -0.078051,
		37.299717, 30.148190, 52.342266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739452, 29.612827, 52.892513>,  <37.177311, 29.461143, 52.396900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739452, 29.612827, 52.892513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544357, 29.956354, 52.829845>,  <37.427299, 30.162470, 52.792244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544357, 29.956354, 52.829845>,  <37.739452, 29.612827, 52.892513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544357, 29.956354, 52.829845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086427, 0.226080, 0.970267,
		0.868700, 0.459699, -0.184493,
		-0.487741, 0.858816, -0.156665,
		37.398033, 30.213999, 52.782845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055962, 30.058790, 53.330833>,  <37.739452, 29.612827, 52.892513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055962, 30.058790, 53.330833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696072, 30.209354, 53.242470>,  <37.480137, 30.299694, 53.189449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696072, 30.209354, 53.242470>,  <38.055962, 30.058790, 53.330833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696072, 30.209354, 53.242470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125535, 0.261583, 0.956983,
		0.418006, 0.888757, -0.188101,
		-0.899729, 0.376411, -0.220913,
		37.426151, 30.322277, 53.176197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997345, 30.647778, 53.687767>,  <38.055962, 30.058790, 53.330833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997345, 30.647778, 53.687767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619175, 30.558874, 53.592464>,  <37.392273, 30.505533, 53.535282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619175, 30.558874, 53.592464>,  <37.997345, 30.647778, 53.687767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619175, 30.558874, 53.592464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294461, 0.269748, 0.916803,
		-0.139495, 0.936930, -0.320474,
		-0.945428, -0.222257, -0.238261,
		37.335548, 30.492197, 53.520985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638657, 31.238401, 53.907551>,  <37.997345, 30.647778, 53.687767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638657, 31.238401, 53.907551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384212, 30.931089, 53.878971>,  <37.231544, 30.746702, 53.861824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384212, 30.931089, 53.878971>,  <37.638657, 31.238401, 53.907551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384212, 30.931089, 53.878971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345879, 0.201147, 0.916465,
		-0.689730, 0.607688, -0.393685,
		-0.636113, -0.768281, -0.071449,
		37.193378, 30.700605, 53.857536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122265, 31.785267, 53.580666>,  <37.638657, 31.238401, 53.907551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122265, 31.785267, 53.580666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218426, 32.172470, 53.609417>,  <38.276123, 32.404793, 53.626667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218426, 32.172470, 53.609417>,  <38.122265, 31.785267, 53.580666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218426, 32.172470, 53.609417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388330, 0.163777, -0.906850,
		-0.889609, 0.190101, 0.415280,
		0.240407, 0.968008, 0.071876,
		38.290546, 32.462872, 53.630981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541859, 32.218079, 53.337978>,  <38.122265, 31.785267, 53.580666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541859, 32.218079, 53.337978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867382, 32.446884, 53.296970>,  <38.062698, 32.584167, 53.272366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867382, 32.446884, 53.296970>,  <37.541859, 32.218079, 53.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867382, 32.446884, 53.296970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334580, 0.316948, -0.887468,
		-0.475150, 0.756534, 0.449320,
		0.813811, 0.572014, -0.102523,
		38.111526, 32.618488, 53.266212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278660, 32.845039, 52.941250>,  <37.541859, 32.218079, 53.337978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278660, 32.845039, 52.941250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673317, 32.907417, 52.922424>,  <37.910110, 32.944843, 52.911129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673317, 32.907417, 52.922424>,  <37.278660, 32.845039, 52.941250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673317, 32.907417, 52.922424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124471, 0.535418, -0.835365,
		-0.105072, 0.830066, 0.547677,
		0.986644, 0.155943, -0.047062,
		37.969311, 32.954201, 52.908306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353687, 33.580982, 52.940639>,  <37.278660, 32.845039, 52.941250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353687, 33.580982, 52.940639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661503, 33.396721, 52.763733>,  <37.846191, 33.286163, 52.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661503, 33.396721, 52.763733>,  <37.353687, 33.580982, 52.940639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661503, 33.396721, 52.763733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016980, 0.707080, -0.706930,
		0.638371, 0.536502, 0.551949,
		0.769541, -0.460655, -0.442270,
		37.892365, 33.258526, 52.631050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752190, 34.128716, 52.650230>,  <37.353687, 33.580982, 52.940639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752190, 34.128716, 52.650230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882328, 33.796398, 52.469597>,  <37.960411, 33.597008, 52.361217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882328, 33.796398, 52.469597>,  <37.752190, 34.128716, 52.650230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882328, 33.796398, 52.469597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126874, 0.434894, -0.891499,
		0.937044, 0.347341, 0.036085,
		0.325347, -0.830796, -0.451583,
		37.979931, 33.547161, 52.334122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198723, 34.373100, 52.113625>,  <37.752190, 34.128716, 52.650230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198723, 34.373100, 52.113625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080418, 33.999260, 52.034588>,  <38.009434, 33.774956, 51.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080418, 33.999260, 52.034588>,  <38.198723, 34.373100, 52.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080418, 33.999260, 52.034588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091678, 0.178120, -0.979729,
		0.950851, -0.307884, 0.033001,
		-0.295765, -0.934602, -0.197592,
		37.991688, 33.718880, 51.975311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671234, 34.169006, 51.641178>,  <38.198723, 34.373100, 52.113625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671234, 34.169006, 51.641178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354141, 33.930080, 51.592537>,  <38.163887, 33.786724, 51.563351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354141, 33.930080, 51.592537>,  <38.671234, 34.169006, 51.641178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354141, 33.930080, 51.592537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044086, 0.142791, -0.988770,
		0.607973, -0.789192, -0.086862,
		-0.792733, -0.597316, -0.121605,
		38.116322, 33.750885, 51.556057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756413, 33.865707, 51.004997>,  <38.671234, 34.169006, 51.641178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756413, 33.865707, 51.004997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372486, 33.763405, 51.051193>,  <38.142128, 33.702023, 51.078911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372486, 33.763405, 51.051193>,  <38.756413, 33.865707, 51.004997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372486, 33.763405, 51.051193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139224, 0.076664, -0.987289,
		0.243649, -0.963697, -0.109190,
		-0.959819, -0.255754, 0.115491,
		38.084541, 33.686680, 51.085842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611958, 33.249748, 50.587288>,  <38.756413, 33.865707, 51.004997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611958, 33.249748, 50.587288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271019, 33.453548, 50.634468>,  <38.066456, 33.575829, 50.662777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271019, 33.453548, 50.634468>,  <38.611958, 33.249748, 50.587288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271019, 33.453548, 50.634468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239047, -0.178974, -0.954371,
		-0.465141, -0.841653, 0.274342,
		-0.852350, 0.509498, 0.117947,
		38.015312, 33.606396, 50.669853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132706, 32.841377, 50.265789>,  <38.611958, 33.249748, 50.587288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132706, 32.841377, 50.265789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962032, 33.203018, 50.275028>,  <37.859627, 33.420002, 50.280571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962032, 33.203018, 50.275028>,  <38.132706, 32.841377, 50.265789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962032, 33.203018, 50.275028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217155, -0.077629, -0.973046,
		-0.877944, -0.420197, 0.229454,
		-0.426683, 0.904106, 0.023094,
		37.834026, 33.474251, 50.281956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675430, 32.703060, 49.820923>,  <38.132706, 32.841377, 50.265789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675430, 32.703060, 49.820923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699547, 33.101955, 49.838257>,  <37.714016, 33.341293, 49.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699547, 33.101955, 49.838257>,  <37.675430, 32.703060, 49.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699547, 33.101955, 49.838257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349430, 0.061749, -0.934926,
		-0.935021, 0.041223, 0.352188,
		0.060288, 0.997240, 0.043333,
		37.717632, 33.401127, 49.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977188, 32.983994, 49.664227>,  <37.675430, 32.703060, 49.820923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977188, 32.983994, 49.664227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249969, 33.261284, 49.570957>,  <37.413639, 33.427658, 49.514996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249969, 33.261284, 49.570957>,  <36.977188, 32.983994, 49.664227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249969, 33.261284, 49.570957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412877, 0.101733, -0.905087,
		-0.603711, 0.713502, 0.355595,
		0.681957, 0.693228, -0.233171,
		37.454556, 33.469254, 49.501007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523960, 33.405132, 49.173889>,  <36.977188, 32.983994, 49.664227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523960, 33.405132, 49.173889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912140, 33.492714, 49.133312>,  <37.145046, 33.545261, 49.108967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912140, 33.492714, 49.133312>,  <36.523960, 33.405132, 49.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912140, 33.492714, 49.133312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128276, 0.111985, -0.985396,
		-0.204393, 0.969288, 0.136762,
		0.970448, 0.218951, -0.101447,
		37.203274, 33.558399, 49.102879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534088, 33.935486, 48.641769>,  <36.523960, 33.405132, 49.173889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534088, 33.935486, 48.641769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912663, 33.810051, 48.672527>,  <37.139809, 33.734791, 48.690983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912663, 33.810051, 48.672527>,  <36.534088, 33.935486, 48.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912663, 33.810051, 48.672527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168213, 0.275600, -0.946440,
		0.275600, 0.908684, 0.313589,
		0.946440, -0.313589, 0.076897,
		37.196594, 33.715973, 48.695595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938671, 34.464607, 48.336941>,  <36.534088, 33.935486, 48.641769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938671, 34.464607, 48.336941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167019, 34.136192, 48.338154>,  <37.304028, 33.939144, 48.338882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167019, 34.136192, 48.338154>,  <36.938671, 34.464607, 48.336941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167019, 34.136192, 48.338154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212428, 0.144134, -0.966489,
		0.793083, 0.552384, 0.256692,
		0.570871, -0.821034, 0.003031,
		37.338280, 33.889881, 48.339062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481770, 34.691418, 47.902534>,  <36.938671, 34.464607, 48.336941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481770, 34.691418, 47.902534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519463, 34.294296, 47.932083>,  <37.542080, 34.056023, 47.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519463, 34.294296, 47.932083>,  <37.481770, 34.691418, 47.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519463, 34.294296, 47.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354590, -0.035864, -0.934334,
		0.930261, 0.114243, 0.348659,
		0.094237, -0.992805, 0.073872,
		37.547733, 33.996456, 47.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239143, 34.400276, 47.722878>,  <37.481770, 34.691418, 47.902534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239143, 34.400276, 47.722878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984478, 34.101482, 47.646275>,  <37.831680, 33.922207, 47.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984478, 34.101482, 47.646275>,  <38.239143, 34.400276, 47.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984478, 34.101482, 47.646275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289630, -0.001469, -0.957138,
		0.714687, -0.664838, 0.217285,
		-0.636660, -0.746986, -0.191507,
		37.793480, 33.877388, 47.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577450, 33.942120, 47.231201>,  <38.239143, 34.400276, 47.722878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577450, 33.942120, 47.231201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194660, 33.831444, 47.196243>,  <37.964985, 33.765038, 47.175270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194660, 33.831444, 47.196243>,  <38.577450, 33.942120, 47.231201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194660, 33.831444, 47.196243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136290, -0.162714, -0.977215,
		0.256168, -0.947083, 0.193424,
		-0.956976, -0.276693, -0.087395,
		37.907566, 33.748436, 47.170025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563389, 33.239723, 46.922058>,  <38.577450, 33.942120, 47.231201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563389, 33.239723, 46.922058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212578, 33.421547, 46.859829>,  <38.002090, 33.530640, 46.822491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212578, 33.421547, 46.859829>,  <38.563389, 33.239723, 46.922058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212578, 33.421547, 46.859829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042082, -0.395238, -0.917615,
		-0.478597, -0.798225, 0.365762,
		-0.877026, 0.454560, -0.155569,
		37.949471, 33.557915, 46.813160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277416, 32.791035, 46.380646>,  <38.563389, 33.239723, 46.922058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277416, 32.791035, 46.380646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040264, 33.113132, 46.383904>,  <37.897972, 33.306393, 46.385857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040264, 33.113132, 46.383904>,  <38.277416, 32.791035, 46.380646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040264, 33.113132, 46.383904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220820, -0.152843, -0.963264,
		-0.774423, -0.572899, 0.268433,
		-0.592881, 0.805249, 0.008142,
		37.862400, 33.354706, 46.386345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713985, 32.624374, 45.953217>,  <38.277416, 32.791035, 46.380646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713985, 32.624374, 45.953217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721943, 33.023804, 45.933407>,  <37.726719, 33.263462, 45.921520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721943, 33.023804, 45.933407>,  <37.713985, 32.624374, 45.953217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721943, 33.023804, 45.933407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141679, -0.046221, -0.988833,
		-0.989713, 0.026688, 0.140558,
		0.019893, 0.998574, -0.049526,
		37.727909, 33.323376, 45.918549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224110, 32.768902, 45.421833>,  <37.713985, 32.624374, 45.953217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224110, 32.768902, 45.421833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448647, 33.098267, 45.455040>,  <37.583370, 33.295883, 45.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448647, 33.098267, 45.455040>,  <37.224110, 32.768902, 45.421833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448647, 33.098267, 45.455040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017308, 0.111971, -0.993561,
		-0.827401, 0.556294, 0.077105,
		0.561345, 0.823408, 0.083017,
		37.617050, 33.345287, 45.479946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852016, 33.363789, 45.219704>,  <37.224110, 32.768902, 45.421833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852016, 33.363789, 45.219704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232960, 33.480400, 45.183887>,  <37.461525, 33.550365, 45.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232960, 33.480400, 45.183887>,  <36.852016, 33.363789, 45.219704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232960, 33.480400, 45.183887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148406, 0.186518, -0.971178,
		-0.266424, 0.938202, 0.220897,
		0.952362, 0.291528, -0.089542,
		37.518669, 33.567860, 45.157024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778488, 33.811909, 44.609665>,  <36.852016, 33.363789, 45.219704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778488, 33.811909, 44.609665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171921, 33.776093, 44.672333>,  <37.407982, 33.754601, 44.709934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171921, 33.776093, 44.672333>,  <36.778488, 33.811909, 44.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171921, 33.776093, 44.672333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172619, 0.213764, -0.961513,
		0.052608, 0.972773, 0.225711,
		0.983583, -0.089545, 0.156673,
		37.466995, 33.749229, 44.719334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151390, 34.420593, 44.337418>,  <36.778488, 33.811909, 44.609665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151390, 34.420593, 44.337418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412292, 34.117474, 44.344296>,  <37.568832, 33.935600, 44.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412292, 34.117474, 44.344296>,  <37.151390, 34.420593, 44.337418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412292, 34.117474, 44.344296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283057, 0.222458, -0.932948,
		0.703164, 0.613390, 0.359601,
		0.652257, -0.757803, 0.017199,
		37.607971, 33.890133, 44.349457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002983, 34.530548, 44.258453>,  <37.151390, 34.420593, 44.337418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002983, 34.530548, 44.258453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997551, 34.143234, 44.158653>,  <37.994289, 33.910847, 44.098774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997551, 34.143234, 44.158653>,  <38.002983, 34.530548, 44.258453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997551, 34.143234, 44.158653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428656, 0.219788, -0.876326,
		0.903365, -0.118852, 0.412074,
		-0.013584, -0.968281, -0.249496,
		37.993477, 33.852749, 44.083805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539619, 34.509991, 43.821037>,  <38.002983, 34.530548, 44.258453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539619, 34.509991, 43.821037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 34.170170, 43.744881>,  <38.224770, 33.966278, 43.699188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 34.170170, 43.744881>,  <38.539619, 34.509991, 43.821037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342838, 34.170170, 43.744881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357572, 0.002228, -0.933883,
		0.793804, -0.527505, 0.302679,
		-0.491953, -0.849549, -0.190390,
		38.195251, 33.915306, 43.687763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027626, 34.195168, 43.540676>,  <38.539619, 34.509991, 43.821037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027626, 34.195168, 43.540676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693146, 34.017612, 43.411850>,  <38.492458, 33.911079, 43.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693146, 34.017612, 43.411850>,  <39.027626, 34.195168, 43.540676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693146, 34.017612, 43.411850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363538, -0.008966, -0.931536,
		0.410613, -0.896036, 0.168869,
		-0.836204, -0.443892, -0.322061,
		38.442284, 33.884445, 43.315231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234390, 33.687695, 43.013538>,  <39.027626, 34.195168, 43.540676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234390, 33.687695, 43.013538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846458, 33.744339, 42.934162>,  <38.613701, 33.778328, 42.886536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846458, 33.744339, 42.934162>,  <39.234390, 33.687695, 43.013538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846458, 33.744339, 42.934162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194637, -0.040334, -0.980046,
		-0.146794, -0.989100, 0.011554,
		-0.969829, 0.141616, -0.198436,
		38.555511, 33.786823, 42.874630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111584, 33.207493, 42.467716>,  <39.234390, 33.687695, 43.013538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111584, 33.207493, 42.467716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794518, 33.447964, 42.427185>,  <38.604279, 33.592247, 42.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794518, 33.447964, 42.427185>,  <39.111584, 33.207493, 42.467716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794518, 33.447964, 42.427185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167877, 0.055455, -0.984247,
		-0.586092, -0.797186, -0.144882,
		-0.792663, 0.601181, -0.101328,
		38.556717, 33.628319, 42.396786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681030, 32.922535, 41.950340>,  <39.111584, 33.207493, 42.467716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681030, 32.922535, 41.950340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576797, 33.308445, 41.964764>,  <38.514259, 33.539993, 41.973415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576797, 33.308445, 41.964764>,  <38.681030, 32.922535, 41.950340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576797, 33.308445, 41.964764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068451, 0.055713, -0.996098,
		-0.963022, -0.257097, -0.080558,
		-0.260581, 0.964778, 0.036054,
		38.498623, 33.597878, 41.975578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264572, 32.971630, 41.319031>,  <38.681030, 32.922535, 41.950340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264572, 32.971630, 41.319031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358158, 33.340645, 41.441792>,  <38.414310, 33.562054, 41.515446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358158, 33.340645, 41.441792>,  <38.264572, 32.971630, 41.319031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358158, 33.340645, 41.441792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093167, 0.292932, -0.951583,
		-0.967770, 0.251233, -0.017413,
		0.233968, 0.922536, 0.306898,
		38.428349, 33.617405, 41.533859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765640, 33.504436, 40.961666>,  <38.264572, 32.971630, 41.319031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765640, 33.504436, 40.961666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086632, 33.708698, 41.085121>,  <38.279228, 33.831253, 41.159195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086632, 33.708698, 41.085121>,  <37.765640, 33.504436, 40.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086632, 33.708698, 41.085121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006913, 0.509272, -0.860578,
		-0.596636, 0.692732, 0.405151,
		0.802482, 0.510651, 0.308640,
		38.327377, 33.861893, 41.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678211, 34.186306, 40.757774>,  <37.765640, 33.504436, 40.961666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678211, 34.186306, 40.757774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073376, 34.144455, 40.803535>,  <38.310474, 34.119347, 40.830990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073376, 34.144455, 40.803535>,  <37.678211, 34.186306, 40.757774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073376, 34.144455, 40.803535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154861, 0.631741, -0.759553,
		0.007196, 0.768086, 0.640306,
		0.987910, -0.104625, 0.114400,
		38.369747, 34.113068, 40.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943905, 34.852810, 40.553383>,  <37.678211, 34.186306, 40.757774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943905, 34.852810, 40.553383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272781, 34.625679, 40.537476>,  <38.470108, 34.489403, 40.527931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272781, 34.625679, 40.537476>,  <37.943905, 34.852810, 40.553383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272781, 34.625679, 40.537476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216152, 0.376078, -0.901024,
		0.526578, 0.732216, 0.431943,
		0.822189, -0.567825, -0.039764,
		38.519440, 34.455330, 40.525547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477493, 35.336548, 40.389412>,  <37.943905, 34.852810, 40.553383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477493, 35.336548, 40.389412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586361, 34.965229, 40.288071>,  <38.651680, 34.742439, 40.227264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586361, 34.965229, 40.288071>,  <38.477493, 35.336548, 40.389412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586361, 34.965229, 40.288071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238079, 0.320075, -0.916990,
		0.932332, 0.189258, 0.308122,
		0.272169, -0.928296, -0.253358,
		38.668011, 34.686741, 40.212063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224575, 35.367687, 40.049950>,  <38.477493, 35.336548, 40.389412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224575, 35.367687, 40.049950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093914, 35.010273, 39.926727>,  <39.015518, 34.795826, 39.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093914, 35.010273, 39.926727>,  <39.224575, 35.367687, 40.049950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093914, 35.010273, 39.926727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285716, 0.217334, -0.933344,
		0.900924, -0.392897, 0.184304,
		-0.326652, -0.893531, -0.308058,
		38.995918, 34.742214, 39.834309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731201, 35.096024, 39.600254>,  <39.224575, 35.367687, 40.049950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731201, 35.096024, 39.600254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402390, 34.887581, 39.508415>,  <39.205101, 34.762516, 39.453312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402390, 34.887581, 39.508415>,  <39.731201, 35.096024, 39.600254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402390, 34.887581, 39.508415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257147, 0.020051, -0.966164,
		0.508077, -0.853257, 0.117518,
		-0.822030, -0.521105, -0.229600,
		39.155781, 34.731251, 39.439537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871590, 34.456200, 39.256023>,  <39.731201, 35.096024, 39.600254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871590, 34.456200, 39.256023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508179, 34.586082, 39.150841>,  <39.290131, 34.664013, 39.087730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508179, 34.586082, 39.150841>,  <39.871590, 34.456200, 39.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508179, 34.586082, 39.150841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301962, 0.075274, -0.950343,
		-0.288788, -0.942815, -0.166438,
		-0.908527, 0.324706, -0.262956,
		39.235622, 34.683495, 39.071953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928204, 34.530048, 38.575779>,  <39.871590, 34.456200, 39.256023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928204, 34.530048, 38.575779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543652, 34.638733, 38.593315>,  <39.312920, 34.703945, 38.603836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543652, 34.638733, 38.593315>,  <39.928204, 34.530048, 38.575779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543652, 34.638733, 38.593315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015410, 0.212174, -0.977110,
		-0.274797, -0.938697, -0.208167,
		-0.961379, 0.271715, 0.043840,
		39.255238, 34.720249, 38.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579704, 34.146950, 38.105057>,  <39.928204, 34.530048, 38.575779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579704, 34.146950, 38.105057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386879, 34.492298, 38.164673>,  <39.271183, 34.699505, 38.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386879, 34.492298, 38.164673>,  <39.579704, 34.146950, 38.105057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386879, 34.492298, 38.164673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108775, 0.227771, -0.967620,
		-0.869358, -0.450242, -0.203713,
		-0.482063, 0.863367, 0.149040,
		39.242260, 34.751308, 38.209385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967606, 34.114410, 37.637119>,  <39.579704, 34.146950, 38.105057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967606, 34.114410, 37.637119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164307, 34.448196, 37.736603>,  <39.282326, 34.648468, 37.796291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164307, 34.448196, 37.736603>,  <38.967606, 34.114410, 37.637119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164307, 34.448196, 37.736603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120296, 0.217785, -0.968555,
		-0.862386, 0.506207, 0.006714,
		0.491751, 0.834461, 0.248709,
		39.311832, 34.698536, 37.811214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701138, 34.696712, 37.315010>,  <38.967606, 34.114410, 37.637119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701138, 34.696712, 37.315010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097610, 34.702305, 37.367725>,  <39.335495, 34.705662, 37.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097610, 34.702305, 37.367725>,  <38.701138, 34.696712, 37.315010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097610, 34.702305, 37.367725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129551, 0.107402, -0.985739,
		-0.027936, 0.994117, 0.104643,
		0.991179, 0.013981, 0.131789,
		39.394966, 34.706501, 37.407261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052334, 35.165527, 36.766220>,  <38.701138, 34.696712, 37.315010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052334, 35.165527, 36.766220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340996, 34.934551, 36.918945>,  <39.514191, 34.795967, 37.010578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340996, 34.934551, 36.918945>,  <39.052334, 35.165527, 36.766220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340996, 34.934551, 36.918945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469525, 0.002997, -0.882914,
		0.508687, 0.816426, 0.273286,
		0.721653, -0.577442, 0.381809,
		39.557491, 34.761318, 37.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705490, 35.497234, 36.633366>,  <39.052334, 35.165527, 36.766220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705490, 35.497234, 36.633366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793377, 35.109219, 36.674843>,  <39.846107, 34.876408, 36.699730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793377, 35.109219, 36.674843>,  <39.705490, 35.497234, 36.633366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793377, 35.109219, 36.674843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580358, 0.044531, -0.813143,
		0.784162, 0.238837, 0.572754,
		0.219714, -0.970038, 0.103691,
		39.859291, 34.818207, 36.705952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446514, 35.347778, 36.435070>,  <39.705490, 35.497234, 36.633366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446514, 35.347778, 36.435070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240417, 35.018139, 36.340923>,  <40.116760, 34.820354, 36.284435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240417, 35.018139, 36.340923>,  <40.446514, 35.347778, 36.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240417, 35.018139, 36.340923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562868, -0.118276, -0.818041,
		0.646304, -0.553967, 0.524796,
		-0.515239, -0.824094, -0.235368,
		40.085846, 34.770912, 36.270313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932030, 35.002007, 36.017754>,  <40.446514, 35.347778, 36.435070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932030, 35.002007, 36.017754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576565, 34.836082, 35.939568>,  <40.363285, 34.736530, 35.892654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576565, 34.836082, 35.939568>,  <40.932030, 35.002007, 36.017754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576565, 34.836082, 35.939568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349792, -0.337589, -0.873888,
		0.296509, -0.844966, 0.445101,
		-0.888667, -0.414808, -0.195464,
		40.309963, 34.711639, 35.880928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227299, 35.686935, 36.140572>,  <40.932030, 35.002007, 36.017754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227299, 35.686935, 36.140572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624012, 35.656567, 36.099377>,  <41.862041, 35.638348, 36.074661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624012, 35.656567, 36.099377>,  <41.227299, 35.686935, 36.140572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624012, 35.656567, 36.099377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021222, 0.891385, -0.452749,
		0.126169, 0.446843, 0.885671,
		0.991782, -0.075919, -0.102983,
		41.921547, 35.633789, 36.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521225, 36.342999, 36.189606>,  <41.227299, 35.686935, 36.140572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521225, 36.342999, 36.189606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840317, 36.170410, 36.021095>,  <42.031773, 36.066856, 35.919991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840317, 36.170410, 36.021095>,  <41.521225, 36.342999, 36.189606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840317, 36.170410, 36.021095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178828, 0.836444, -0.518057,
		0.575895, 0.337932, 0.744411,
		0.797725, -0.431468, -0.421272,
		42.079636, 36.040970, 35.894714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236565, 36.737461, 36.354839>,  <41.521225, 36.342999, 36.189606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236565, 36.737461, 36.354839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225235, 36.533302, 36.011051>,  <42.218437, 36.410805, 35.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225235, 36.533302, 36.011051>,  <42.236565, 36.737461, 36.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225235, 36.533302, 36.011051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259738, 0.826523, -0.499394,
		0.965264, -0.237383, 0.109159,
		-0.028326, -0.510400, -0.859471,
		42.216736, 36.380184, 35.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625282, 37.121830, 35.914143>,  <42.236565, 36.737461, 36.354839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625282, 37.121830, 35.914143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447681, 36.875221, 35.654060>,  <42.341122, 36.727257, 35.498009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447681, 36.875221, 35.654060>,  <42.625282, 37.121830, 35.914143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447681, 36.875221, 35.654060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037865, 0.737918, -0.673827,
		0.895227, -0.274558, -0.350979,
		-0.443998, -0.616518, -0.650208,
		42.314484, 36.690266, 35.459000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014233, 37.119987, 35.309650>,  <42.625282, 37.121830, 35.914143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014233, 37.119987, 35.309650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638763, 37.034740, 35.201229>,  <42.413483, 36.983593, 35.136177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638763, 37.034740, 35.201229>,  <43.014233, 37.119987, 35.309650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638763, 37.034740, 35.201229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012487, 0.806600, -0.590966,
		0.344577, -0.551340, -0.759797,
		-0.938675, -0.213121, -0.271051,
		42.357162, 36.970802, 35.119915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020748, 37.151306, 34.548058>,  <43.014233, 37.119987, 35.309650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020748, 37.151306, 34.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633289, 37.153046, 34.647415>,  <42.400814, 37.154087, 34.707027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633289, 37.153046, 34.647415>,  <43.020748, 37.151306, 34.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633289, 37.153046, 34.647415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, 0.673675, -0.716587,
		-0.170449, -0.739015, -0.651770,
		-0.968650, 0.004345, 0.248391,
		42.342693, 37.154350, 34.721931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664337, 37.227764, 33.900398>,  <43.020748, 37.151306, 34.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664337, 37.227764, 33.900398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385330, 37.313919, 34.173771>,  <42.217926, 37.365612, 34.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385330, 37.313919, 34.173771>,  <42.664337, 37.227764, 33.900398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385330, 37.313919, 34.173771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445100, 0.617214, -0.648793,
		-0.561564, -0.756740, -0.334650,
		-0.697519, 0.215386, 0.683430,
		42.176075, 37.378536, 34.378799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097935, 37.358467, 33.491669>,  <42.664337, 37.227764, 33.900398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097935, 37.358467, 33.491669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041420, 37.530087, 33.848534>,  <42.007511, 37.633057, 34.062653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041420, 37.530087, 33.848534>,  <42.097935, 37.358467, 33.491669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041420, 37.530087, 33.848534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356049, 0.818877, -0.450188,
		-0.923724, -0.381261, 0.037063,
		-0.141289, 0.429046, 0.892164,
		41.999035, 37.658802, 34.116184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466961, 37.633991, 33.448933>,  <42.097935, 37.358467, 33.491669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466961, 37.633991, 33.448933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634945, 37.840996, 33.747147>,  <41.735733, 37.965199, 33.926075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634945, 37.840996, 33.747147>,  <41.466961, 37.633991, 33.448933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634945, 37.840996, 33.747147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305817, 0.854135, -0.420631,
		-0.854466, -0.051349, 0.516964,
		0.419958, 0.517511, 0.745532,
		41.760933, 37.996250, 33.970806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976414, 37.999161, 33.775967>,  <41.466961, 37.633991, 33.448933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976414, 37.999161, 33.775967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320263, 38.180420, 33.870380>,  <41.526573, 38.289177, 33.927029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320263, 38.180420, 33.870380>,  <40.976414, 37.999161, 33.775967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320263, 38.180420, 33.870380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313204, 0.832334, -0.457301,
		-0.403682, 0.319179, 0.857418,
		0.859619, 0.453151, 0.236030,
		41.578148, 38.316364, 33.941189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806568, 38.662086, 34.084404>,  <40.976414, 37.999161, 33.775967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806568, 38.662086, 34.084404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174034, 38.737610, 33.945602>,  <41.394512, 38.782925, 33.862320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174034, 38.737610, 33.945602>,  <40.806568, 38.662086, 34.084404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174034, 38.737610, 33.945602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348274, 0.801666, -0.485836,
		0.186452, 0.567172, 0.802217,
		0.918663, 0.188806, -0.347003,
		41.449635, 38.794250, 33.841503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935322, 39.419708, 34.189102>,  <40.806568, 38.662086, 34.084404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935322, 39.419708, 34.189102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196526, 39.310398, 33.906570>,  <41.353249, 39.244812, 33.737053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196526, 39.310398, 33.906570>,  <40.935322, 39.419708, 34.189102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196526, 39.310398, 33.906570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155222, 0.864542, -0.477988,
		0.741271, 0.421769, 0.522139,
		0.653012, -0.273271, -0.706328,
		41.392429, 39.228416, 33.694672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161724, 40.032467, 33.923401>,  <40.935322, 39.419708, 34.189102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161724, 40.032467, 33.923401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319111, 39.798435, 33.639751>,  <41.413544, 39.658016, 33.469563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319111, 39.798435, 33.639751>,  <41.161724, 40.032467, 33.923401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319111, 39.798435, 33.639751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026102, 0.763925, -0.644777,
		0.918968, 0.272209, 0.285308,
		0.393468, -0.585082, -0.709128,
		41.437153, 39.622910, 33.427013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692142, 40.400036, 33.488022>,  <41.161724, 40.032467, 33.923401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692142, 40.400036, 33.488022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557556, 40.096420, 33.265076>,  <41.476807, 39.914253, 33.131310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557556, 40.096420, 33.265076>,  <41.692142, 40.400036, 33.488022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557556, 40.096420, 33.265076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, 0.589288, -0.807874,
		0.941655, -0.276774, -0.191525,
		-0.336462, -0.759036, -0.557367,
		41.456619, 39.868710, 33.097866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997425, 40.582253, 32.833260>,  <41.692142, 40.400036, 33.488022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997425, 40.582253, 32.833260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695705, 40.321949, 32.798519>,  <41.514671, 40.165768, 32.777676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695705, 40.321949, 32.798519>,  <41.997425, 40.582253, 32.833260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695705, 40.321949, 32.798519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344908, 0.505354, -0.790984,
		0.558634, -0.566681, -0.605641,
		-0.754299, -0.650761, -0.086855,
		41.469414, 40.126720, 32.772465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012615, 40.236130, 32.158268>,  <41.997425, 40.582253, 32.833260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012615, 40.236130, 32.158268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640537, 40.230267, 32.304981>,  <41.417290, 40.226749, 32.393009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640537, 40.230267, 32.304981>,  <42.012615, 40.236130, 32.158268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640537, 40.230267, 32.304981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325050, 0.497123, -0.804494,
		-0.170543, -0.867556, -0.467184,
		-0.930192, -0.014657, 0.366781,
		41.361481, 40.225868, 32.415016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683884, 39.968208, 31.625980>,  <42.012615, 40.236130, 32.158268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683884, 39.968208, 31.625980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443176, 40.194210, 31.851774>,  <41.298752, 40.329811, 31.987251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443176, 40.194210, 31.851774>,  <41.683884, 39.968208, 31.625980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443176, 40.194210, 31.851774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356468, 0.442471, -0.822891,
		-0.714707, -0.696410, -0.064858,
		-0.601767, 0.565007, 0.564485,
		41.262646, 40.363712, 32.021118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333992, 40.275040, 31.165325>,  <41.683884, 39.968208, 31.625980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333992, 40.275040, 31.165325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162033, 40.460033, 31.475500>,  <41.058857, 40.571030, 31.661604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162033, 40.460033, 31.475500>,  <41.333992, 40.275040, 31.165325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162033, 40.460033, 31.475500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449019, 0.635596, -0.628012,
		-0.783308, -0.618166, -0.065578,
		-0.429897, 0.462481, 0.775436,
		41.033066, 40.598778, 31.708130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611568, 40.322144, 31.049805>,  <41.333992, 40.275040, 31.165325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611568, 40.322144, 31.049805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700497, 40.616554, 31.305569>,  <40.753853, 40.793201, 31.459026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700497, 40.616554, 31.305569>,  <40.611568, 40.322144, 31.049805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700497, 40.616554, 31.305569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430367, 0.662554, -0.613031,
		-0.874848, -0.138892, 0.464059,
		0.222319, 0.736024, 0.639408,
		40.767193, 40.837360, 31.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059494, 40.697617, 31.013821>,  <40.611568, 40.322144, 31.049805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059494, 40.697617, 31.013821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354759, 40.934700, 31.142706>,  <40.531918, 41.076950, 31.220037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354759, 40.934700, 31.142706>,  <40.059494, 40.697617, 31.013821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354759, 40.934700, 31.142706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205022, 0.652115, -0.729871,
		-0.642718, 0.472701, 0.602882,
		0.738159, 0.592705, 0.322212,
		40.576206, 41.112511, 31.239370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787766, 41.394478, 30.986084>,  <40.059494, 40.697617, 31.013821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787766, 41.394478, 30.986084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186188, 41.429985, 30.986391>,  <40.425240, 41.451290, 30.986576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186188, 41.429985, 30.986391>,  <39.787766, 41.394478, 30.986084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186188, 41.429985, 30.986391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054063, 0.613440, -0.787889,
		-0.070410, 0.784737, 0.615817,
		0.996052, 0.088768, 0.000767,
		40.485004, 41.456615, 30.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855541, 41.939423, 30.619419>,  <39.787766, 41.394478, 30.986084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855541, 41.939423, 30.619419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208069, 41.751488, 30.599295>,  <40.419586, 41.638725, 30.587221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208069, 41.751488, 30.599295>,  <39.855541, 41.939423, 30.619419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208069, 41.751488, 30.599295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078825, 0.251160, -0.964731,
		0.465903, 0.846269, 0.258387,
		0.881318, -0.469838, -0.050309,
		40.472466, 41.610535, 30.584202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458218, 42.382130, 30.398771>,  <39.855541, 41.939423, 30.619419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458218, 42.382130, 30.398771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491215, 41.999588, 30.286642>,  <40.511013, 41.770061, 30.219364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491215, 41.999588, 30.286642>,  <40.458218, 42.382130, 30.398771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491215, 41.999588, 30.286642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119530, 0.288744, -0.949915,
		0.989398, 0.044852, 0.138131,
		0.082490, -0.956355, -0.280322,
		40.515961, 41.712681, 30.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184032, 42.145061, 30.254681>,  <40.458218, 42.382130, 30.398771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184032, 42.145061, 30.254681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853664, 42.069653, 30.042150>,  <40.655441, 42.024406, 29.914633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853664, 42.069653, 30.042150>,  <41.184032, 42.145061, 30.254681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853664, 42.069653, 30.042150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287319, 0.670112, -0.684396,
		0.485073, -0.717920, -0.499296,
		-0.825925, -0.188525, -0.531324,
		40.605888, 42.013096, 29.882753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847847, 42.530716, 29.864506>,  <41.184032, 42.145061, 30.254681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847847, 42.530716, 29.864506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931725, 42.475765, 29.477278>,  <41.982052, 42.442795, 29.244942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931725, 42.475765, 29.477278>,  <41.847847, 42.530716, 29.864506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931725, 42.475765, 29.477278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603379, -0.760899, 0.238676,
		-0.769390, -0.634161, -0.076669,
		0.209696, -0.137375, -0.968068,
		41.994633, 42.434551, 29.186857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605347, 41.862621, 29.606148>,  <41.847847, 42.530716, 29.864506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605347, 41.862621, 29.606148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927658, 41.995331, 29.409925>,  <42.121044, 42.074955, 29.292192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927658, 41.995331, 29.409925>,  <41.605347, 41.862621, 29.606148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927658, 41.995331, 29.409925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511830, -0.806833, 0.295042,
		-0.297910, -0.488821, -0.819941,
		0.805779, 0.331775, -0.490557,
		42.169392, 42.094864, 29.262758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646297, 41.334339, 29.844944>,  <41.605347, 41.862621, 29.606148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646297, 41.334339, 29.844944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944901, 41.425529, 29.594900>,  <42.124062, 41.480244, 29.444874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944901, 41.425529, 29.594900>,  <41.646297, 41.334339, 29.844944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944901, 41.425529, 29.594900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365225, -0.925687, 0.098562,
		-0.556186, -0.301882, -0.774290,
		0.746504, 0.227971, -0.625109,
		42.168850, 41.493919, 29.407368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681644, 40.768017, 29.388113>,  <41.646297, 41.334339, 29.844944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681644, 40.768017, 29.388113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041504, 40.939053, 29.423422>,  <42.257420, 41.041676, 29.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041504, 40.939053, 29.423422>,  <41.681644, 40.768017, 29.388113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041504, 40.939053, 29.423422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416027, -0.900884, 0.123808,
		0.132463, -0.074660, -0.988372,
		0.899653, 0.427590, 0.088273,
		42.311401, 41.067329, 29.449903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180191, 40.351154, 29.085510>,  <41.681644, 40.768017, 29.388113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180191, 40.351154, 29.085510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400040, 40.585537, 29.323694>,  <42.531948, 40.726166, 29.466604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400040, 40.585537, 29.323694>,  <42.180191, 40.351154, 29.085510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400040, 40.585537, 29.323694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480411, -0.804813, 0.348541,
		0.683465, 0.094502, -0.723840,
		0.549618, 0.585957, 0.595461,
		42.564926, 40.761326, 29.502333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873062, 40.260876, 28.972618>,  <42.180191, 40.351154, 29.085510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873062, 40.260876, 28.972618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818336, 40.369122, 29.353785>,  <42.785500, 40.434067, 29.582485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818336, 40.369122, 29.353785>,  <42.873062, 40.260876, 28.972618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818336, 40.369122, 29.353785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408957, -0.860729, 0.303150,
		0.902239, 0.431178, 0.007094,
		-0.136818, 0.270613, 0.952916,
		42.777290, 40.450306, 29.639660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550076, 39.972340, 29.069532>,  <42.873062, 40.260876, 28.972618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550076, 39.972340, 29.069532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340111, 40.031849, 29.404755>,  <43.214130, 40.067554, 29.605888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340111, 40.031849, 29.404755>,  <43.550076, 39.972340, 29.069532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340111, 40.031849, 29.404755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297711, -0.890321, 0.344524,
		0.797393, 0.430342, 0.423048,
		-0.524912, 0.148775, 0.838054,
		43.182636, 40.076481, 29.656170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041134, 39.871929, 29.604830>,  <43.550076, 39.972340, 29.069532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041134, 39.871929, 29.604830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653488, 39.807621, 29.679626>,  <43.420898, 39.769035, 29.724504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653488, 39.807621, 29.679626>,  <44.041134, 39.871929, 29.604830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653488, 39.807621, 29.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239280, -0.796482, 0.555304,
		0.059659, 0.582897, 0.810353,
		-0.969116, -0.160773, 0.186993,
		43.362755, 39.759388, 29.735723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974010, 39.675953, 30.290998>,  <44.041134, 39.871929, 29.604830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974010, 39.675953, 30.290998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616646, 39.548462, 30.164368>,  <43.402225, 39.471966, 30.088390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616646, 39.548462, 30.164368>,  <43.974010, 39.675953, 30.290998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616646, 39.548462, 30.164368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136152, -0.863673, 0.485315,
		-0.428102, 0.390485, 0.815015,
		-0.893415, -0.318731, -0.316575,
		43.348621, 39.452843, 30.069395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607735, 39.529484, 30.825655>,  <43.974010, 39.675953, 30.290998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607735, 39.529484, 30.825655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453632, 39.300404, 30.536217>,  <43.361172, 39.162956, 30.362553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453632, 39.300404, 30.536217>,  <43.607735, 39.529484, 30.825655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453632, 39.300404, 30.536217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144092, -0.811838, 0.565824,
		-0.911491, 0.113723, 0.395286,
		-0.385255, -0.572701, -0.723596,
		43.338055, 39.128593, 30.319138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246269, 39.048107, 31.172031>,  <43.607735, 39.529484, 30.825655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246269, 39.048107, 31.172031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290802, 38.883236, 30.810322>,  <43.317520, 38.784313, 30.593296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290802, 38.883236, 30.810322>,  <43.246269, 39.048107, 31.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290802, 38.883236, 30.810322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334428, -0.841322, 0.424659,
		-0.935822, -0.349693, 0.044178,
		0.111333, -0.412179, -0.904275,
		43.324203, 38.759583, 30.539040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964111, 38.500729, 31.284149>,  <43.246269, 39.048107, 31.172031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964111, 38.500729, 31.284149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205292, 38.432076, 30.972511>,  <43.350002, 38.390884, 30.785528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205292, 38.432076, 30.972511>,  <42.964111, 38.500729, 31.284149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205292, 38.432076, 30.972511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521181, -0.654633, 0.547564,
		-0.604001, -0.736205, -0.305262,
		0.602954, -0.171633, -0.779095,
		43.386177, 38.380585, 30.738783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765896, 37.894859, 31.174999>,  <42.964111, 38.500729, 31.284149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765896, 37.894859, 31.174999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130547, 37.973686, 31.030718>,  <43.349335, 38.020981, 30.944149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130547, 37.973686, 31.030718>,  <42.765896, 37.894859, 31.174999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130547, 37.973686, 31.030718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361538, -0.801923, 0.475616,
		-0.195526, -0.563990, -0.802300,
		0.911625, 0.197067, -0.360701,
		43.404034, 38.032806, 30.922508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083836, 37.227203, 31.084820>,  <42.765896, 37.894859, 31.174999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083836, 37.227203, 31.084820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394093, 37.479622, 31.089911>,  <43.580246, 37.631073, 31.092966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394093, 37.479622, 31.089911>,  <43.083836, 37.227203, 31.084820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394093, 37.479622, 31.089911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461007, -0.580181, 0.671463,
		0.431111, -0.514945, -0.740929,
		0.775639, 0.631048, 0.012729,
		43.626785, 37.668938, 31.093729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571049, 36.803886, 30.789862>,  <43.083836, 37.227203, 31.084820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571049, 36.803886, 30.789862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766159, 37.109814, 30.958202>,  <43.883224, 37.293373, 31.059208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766159, 37.109814, 30.958202>,  <43.571049, 36.803886, 30.789862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766159, 37.109814, 30.958202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427013, -0.629523, 0.649123,
		0.761401, -0.136919, -0.633658,
		0.487779, 0.764823, 0.420853,
		43.912495, 37.339260, 31.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204102, 36.536098, 30.844273>,  <43.571049, 36.803886, 30.789862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204102, 36.536098, 30.844273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160645, 36.837360, 31.103796>,  <44.134571, 37.018120, 31.259510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160645, 36.837360, 31.103796>,  <44.204102, 36.536098, 30.844273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160645, 36.837360, 31.103796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557796, -0.494055, 0.666914,
		0.822837, 0.434356, -0.366434,
		-0.108640, 0.753157, 0.648808,
		44.128052, 37.063309, 31.298439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790497, 36.476337, 31.304028>,  <44.204102, 36.536098, 30.844273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790497, 36.476337, 31.304028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550629, 36.707058, 31.525913>,  <44.406708, 36.845490, 31.659044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550629, 36.707058, 31.525913>,  <44.790497, 36.476337, 31.304028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550629, 36.707058, 31.525913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271255, -0.505631, 0.818998,
		0.752876, 0.641594, 0.146751,
		-0.599666, 0.576797, 0.554713,
		44.370728, 36.880096, 31.692327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112282, 36.611549, 31.883875>,  <44.790497, 36.476337, 31.304028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112282, 36.611549, 31.883875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730492, 36.685829, 31.977242>,  <44.501415, 36.730396, 32.033260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730492, 36.685829, 31.977242>,  <45.112282, 36.611549, 31.883875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730492, 36.685829, 31.977242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140147, -0.411587, 0.900531,
		0.263300, 0.892251, 0.366826,
		-0.954480, 0.185700, 0.233417,
		44.444149, 36.741539, 32.047268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093906, 37.013325, 32.543888>,  <45.112282, 36.611549, 31.883875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093906, 37.013325, 32.543888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730473, 36.849232, 32.512413>,  <44.512413, 36.750774, 32.493530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730473, 36.849232, 32.512413>,  <45.093906, 37.013325, 32.543888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730473, 36.849232, 32.512413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047549, -0.288723, 0.956231,
		-0.414995, 0.865072, 0.281834,
		-0.908580, -0.410232, -0.078685,
		44.457897, 36.726162, 32.488808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618607, 37.230389, 33.093224>,  <45.093906, 37.013325, 32.543888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618607, 37.230389, 33.093224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472027, 36.877132, 32.976067>,  <44.384079, 36.665180, 32.905773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472027, 36.877132, 32.976067>,  <44.618607, 37.230389, 33.093224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472027, 36.877132, 32.976067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311238, -0.180304, 0.933071,
		-0.876838, 0.433083, -0.208794,
		-0.366451, -0.883137, -0.292889,
		44.362091, 36.612190, 32.888199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134861, 37.090580, 33.568020>,  <44.618607, 37.230389, 33.093224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134861, 37.090580, 33.568020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165802, 36.735901, 33.385685>,  <44.184368, 36.523094, 33.276283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165802, 36.735901, 33.385685>,  <44.134861, 37.090580, 33.568020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165802, 36.735901, 33.385685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181195, -0.462099, 0.868120,
		-0.980400, 0.015442, -0.196410,
		0.077356, -0.886694, -0.455840,
		44.189011, 36.469894, 33.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604027, 36.564877, 33.843254>,  <44.134861, 37.090580, 33.568020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604027, 36.564877, 33.843254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889393, 36.340588, 33.675140>,  <44.060612, 36.206017, 33.574272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889393, 36.340588, 33.675140>,  <43.604027, 36.564877, 33.843254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889393, 36.340588, 33.675140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005901, -0.594936, 0.803752,
		-0.700720, -0.575886, -0.421125,
		0.713412, -0.560720, -0.420282,
		44.103416, 36.172371, 33.549057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434032, 35.913357, 34.104584>,  <43.604027, 36.564877, 33.843254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434032, 35.913357, 34.104584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783218, 35.858223, 33.917419>,  <43.992729, 35.825142, 33.805122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783218, 35.858223, 33.917419>,  <43.434032, 35.913357, 34.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783218, 35.858223, 33.917419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299936, -0.604802, 0.737735,
		-0.384673, -0.784358, -0.486629,
		0.872963, -0.137829, -0.467909,
		44.045109, 35.816875, 33.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576904, 35.191864, 33.939201>,  <43.434032, 35.913357, 34.104584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576904, 35.191864, 33.939201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941715, 35.350182, 33.982212>,  <44.160603, 35.445171, 34.008018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941715, 35.350182, 33.982212>,  <43.576904, 35.191864, 33.939201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941715, 35.350182, 33.982212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207035, -0.670595, 0.712347,
		0.354049, -0.627415, -0.693542,
		0.912023, 0.395793, 0.107526,
		44.215321, 35.468918, 34.014469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122005, 34.685841, 34.053154>,  <43.576904, 35.191864, 33.939201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122005, 34.685841, 34.053154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361111, 34.985706, 34.166771>,  <44.504574, 35.165627, 34.234943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361111, 34.985706, 34.166771>,  <44.122005, 34.685841, 34.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361111, 34.985706, 34.166771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310577, -0.543207, 0.780044,
		0.739065, -0.378065, -0.557539,
		0.597766, 0.749662, 0.284047,
		44.540440, 35.210606, 34.251984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753361, 34.382954, 34.305046>,  <44.122005, 34.685841, 34.053154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753361, 34.382954, 34.305046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727093, 34.750626, 34.460377>,  <44.711330, 34.971230, 34.553574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727093, 34.750626, 34.460377>,  <44.753361, 34.382954, 34.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727093, 34.750626, 34.460377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278342, -0.356841, 0.891734,
		0.958235, 0.166646, -0.232413,
		-0.065669, 0.919181, 0.388322,
		44.707394, 35.026379, 34.576874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283146, 34.420567, 34.720619>,  <44.753361, 34.382954, 34.305046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283146, 34.420567, 34.720619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047642, 34.706017, 34.872463>,  <44.906338, 34.877285, 34.963570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047642, 34.706017, 34.872463>,  <45.283146, 34.420567, 34.720619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047642, 34.706017, 34.872463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135416, -0.375918, 0.916705,
		0.796882, 0.591127, 0.124691,
		-0.588763, 0.713620, 0.379611,
		44.871014, 34.920101, 34.986347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544765, 34.697269, 35.238918>,  <45.283146, 34.420567, 34.720619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544765, 34.697269, 35.238918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161880, 34.757740, 35.337620>,  <44.932148, 34.794022, 35.396843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161880, 34.757740, 35.337620>,  <45.544765, 34.697269, 35.238918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161880, 34.757740, 35.337620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163418, -0.421341, 0.892057,
		0.238825, 0.894214, 0.378609,
		-0.957213, 0.151174, 0.246758,
		44.874718, 34.803093, 35.411648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139660, 34.416603, 34.684204>,  <45.544765, 34.697269, 35.238918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139660, 34.416603, 34.684204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373425, 34.679089, 34.493271>,  <46.513683, 34.836578, 34.378712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373425, 34.679089, 34.493271>,  <46.139660, 34.416603, 34.684204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373425, 34.679089, 34.493271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487114, 0.186768, 0.853134,
		0.648989, -0.731096, -0.210502,
		0.584408, 0.656213, -0.477338,
		46.548748, 34.875954, 34.350071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763371, 34.370945, 34.968067>,  <46.139660, 34.416603, 34.684204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763371, 34.370945, 34.968067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869228, 34.712227, 34.788288>,  <46.932743, 34.916996, 34.680420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869228, 34.712227, 34.788288>,  <46.763371, 34.370945, 34.968067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869228, 34.712227, 34.788288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692925, 0.155901, 0.703953,
		0.670686, -0.497730, -0.549950,
		0.264641, 0.853206, -0.449450,
		46.948620, 34.968189, 34.653454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406078, 34.366955, 34.713745>,  <46.763371, 34.370945, 34.968067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406078, 34.366955, 34.713745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294445, 34.742313, 34.795254>,  <47.227463, 34.967529, 34.844158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294445, 34.742313, 34.795254>,  <47.406078, 34.366955, 34.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294445, 34.742313, 34.795254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837320, 0.133927, 0.530055,
		0.470113, 0.318550, -0.823116,
		-0.279086, 0.938397, 0.203767,
		47.210720, 35.023834, 34.856384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.893833, 34.963028, 34.385391>,  <47.406078, 34.366955, 34.713745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.893833, 34.963028, 34.385391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754086, 34.981930, 34.759708>,  <47.670235, 34.993271, 34.984299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754086, 34.981930, 34.759708>,  <47.893833, 34.963028, 34.385391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754086, 34.981930, 34.759708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935991, 0.063557, 0.346239,
		-0.043115, 0.996859, -0.066432,
		-0.349374, 0.047252, 0.935791,
		47.649273, 34.996105, 35.040447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.854492, 36.901783, 47.990589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518047, 36.708912, 47.892578>,  <34.316181, 36.593189, 47.833771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518047, 36.708912, 47.892578>,  <34.854492, 36.901783, 47.990589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518047, 36.708912, 47.892578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149177, 0.228644, -0.962012,
		0.519888, -0.845709, -0.120384,
		-0.841108, -0.482181, -0.245030,
		34.265717, 36.564259, 47.819069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987659, 36.628952, 47.278847>,  <34.854492, 36.901783, 47.990589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987659, 36.628952, 47.278847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592262, 36.599342, 47.331612>,  <34.355022, 36.581577, 47.363270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592262, 36.599342, 47.331612>,  <34.987659, 36.628952, 47.278847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592262, 36.599342, 47.331612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132861, 0.008045, -0.991102,
		0.072306, -0.997224, -0.017787,
		-0.988494, -0.074026, 0.131911,
		34.295715, 36.577137, 47.371185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736065, 36.006264, 46.868885>,  <34.987659, 36.628952, 47.278847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736065, 36.006264, 46.868885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450958, 36.280003, 46.930374>,  <34.279896, 36.444248, 46.967270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450958, 36.280003, 46.930374>,  <34.736065, 36.006264, 46.868885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450958, 36.280003, 46.930374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192175, 0.020243, -0.981152,
		-0.674564, -0.728872, 0.117087,
		-0.712764, 0.684351, 0.153727,
		34.237129, 36.485310, 46.976494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233410, 35.741764, 46.443893>,  <34.736065, 36.006264, 46.868885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233410, 35.741764, 46.443893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150978, 36.126030, 46.518364>,  <34.101521, 36.356590, 46.563046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150978, 36.126030, 46.518364>,  <34.233410, 35.741764, 46.443893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150978, 36.126030, 46.518364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272663, 0.126346, -0.953777,
		-0.939780, -0.247317, 0.235900,
		-0.206080, 0.960662, 0.186172,
		34.089153, 36.414230, 46.574215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516705, 35.845917, 46.225380>,  <34.233410, 35.741764, 46.443893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516705, 35.845917, 46.225380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715553, 36.192566, 46.242508>,  <33.834862, 36.400555, 46.252785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715553, 36.192566, 46.242508>,  <33.516705, 35.845917, 46.225380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715553, 36.192566, 46.242508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308406, 0.222605, -0.924842,
		-0.811022, 0.446553, 0.377934,
		0.497121, 0.866624, 0.042818,
		33.864689, 36.452553, 46.255352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108501, 36.454224, 46.012062>,  <33.516705, 35.845917, 46.225380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108501, 36.454224, 46.012062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483624, 36.582626, 45.959179>,  <33.708698, 36.659668, 45.927448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483624, 36.582626, 45.959179>,  <33.108501, 36.454224, 46.012062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483624, 36.582626, 45.959179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221086, 0.258624, -0.940338,
		-0.267659, 0.911083, 0.313508,
		0.937806, 0.321002, -0.132205,
		33.764965, 36.678928, 45.919518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140514, 36.931835, 45.458916>,  <33.108501, 36.454224, 46.012062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140514, 36.931835, 45.458916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533817, 36.888363, 45.517422>,  <33.769798, 36.862282, 45.552525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533817, 36.888363, 45.517422>,  <33.140514, 36.931835, 45.458916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533817, 36.888363, 45.517422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164760, 0.187363, -0.968374,
		0.077836, 0.976260, 0.202132,
		0.983258, -0.108678, 0.146265,
		33.828796, 36.855759, 45.561302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458939, 37.473530, 45.115791>,  <33.140514, 36.931835, 45.458916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458939, 37.473530, 45.115791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766327, 37.223629, 45.171116>,  <33.950760, 37.073689, 45.204311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766327, 37.223629, 45.171116>,  <33.458939, 37.473530, 45.115791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766327, 37.223629, 45.171116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351512, 0.231559, -0.907094,
		0.534684, 0.745696, 0.397555,
		0.768474, -0.624754, 0.138310,
		33.996868, 37.036201, 45.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041782, 37.831238, 44.781288>,  <33.458939, 37.473530, 45.115791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041782, 37.831238, 44.781288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127876, 37.440987, 44.798397>,  <34.179531, 37.206837, 44.808662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127876, 37.440987, 44.798397>,  <34.041782, 37.831238, 44.781288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127876, 37.440987, 44.798397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311874, 0.027167, -0.949735,
		0.925423, 0.217756, 0.310120,
		0.215235, -0.975625, 0.042772,
		34.192448, 37.148300, 44.811230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706272, 37.769283, 44.316116>,  <34.041782, 37.831238, 44.781288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706272, 37.769283, 44.316116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570198, 37.396088, 44.363113>,  <34.488552, 37.172169, 44.391312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570198, 37.396088, 44.363113>,  <34.706272, 37.769283, 44.316116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570198, 37.396088, 44.363113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234885, -0.205290, -0.950097,
		0.910551, -0.295612, 0.288982,
		-0.340186, -0.932989, 0.117492,
		34.468143, 37.116192, 44.398361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225304, 37.273579, 44.015221>,  <34.706272, 37.769283, 44.316116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225304, 37.273579, 44.015221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852886, 37.127899, 44.006195>,  <34.629436, 37.040493, 44.000778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852886, 37.127899, 44.006195>,  <35.225304, 37.273579, 44.015221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852886, 37.127899, 44.006195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117839, -0.241575, -0.963201,
		0.345345, -0.899445, 0.267835,
		-0.931048, -0.364198, -0.022563,
		34.573570, 37.018639, 43.999428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308647, 36.782425, 43.539955>,  <35.225304, 37.273579, 44.015221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308647, 36.782425, 43.539955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912754, 36.794586, 43.595821>,  <34.675217, 36.801884, 43.629341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912754, 36.794586, 43.595821>,  <35.308647, 36.782425, 43.539955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912754, 36.794586, 43.595821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138064, -0.456375, -0.879011,
		0.037018, -0.889268, 0.455886,
		-0.989731, 0.030402, 0.139670,
		34.615833, 36.803707, 43.637722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003418, 36.060558, 43.297165>,  <35.308647, 36.782425, 43.539955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003418, 36.060558, 43.297165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732319, 36.354572, 43.304981>,  <34.569660, 36.530979, 43.309669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732319, 36.354572, 43.304981>,  <35.003418, 36.060558, 43.297165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732319, 36.354572, 43.304981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264411, -0.218833, -0.939254,
		-0.686110, -0.641742, 0.342665,
		-0.677746, 0.735036, 0.019540,
		34.528996, 36.575085, 43.310844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326126, 35.754696, 42.997578>,  <35.003418, 36.060558, 43.297165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326126, 35.754696, 42.997578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 36.152462, 42.956017>,  <34.337914, 36.391121, 42.931080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 36.152462, 42.956017>,  <34.326126, 35.754696, 42.997578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333492, 36.152462, 42.956017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307368, -0.093255, -0.947010,
		-0.951413, 0.049380, 0.303934,
		0.018420, 0.994417, -0.103902,
		34.339020, 36.450787, 42.924847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738499, 35.921757, 42.588684>,  <34.326126, 35.754696, 42.997578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738499, 35.921757, 42.588684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965370, 36.249672, 42.557034>,  <34.101494, 36.446419, 42.538044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965370, 36.249672, 42.557034>,  <33.738499, 35.921757, 42.588684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965370, 36.249672, 42.557034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115179, -0.016177, -0.993213,
		-0.815501, 0.572443, 0.085247,
		0.567179, 0.819785, -0.079126,
		34.135525, 36.495609, 42.533295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462372, 36.249390, 41.994110>,  <33.738499, 35.921757, 42.588684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462372, 36.249390, 41.994110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816887, 36.428806, 42.040253>,  <34.029594, 36.536457, 42.067940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816887, 36.428806, 42.040253>,  <33.462372, 36.249390, 41.994110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816887, 36.428806, 42.040253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083202, 0.090823, -0.992385,
		-0.455599, 0.889137, 0.043176,
		0.886288, 0.448537, 0.115357,
		34.082775, 36.563366, 42.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454582, 36.856644, 41.513706>,  <33.462372, 36.249390, 41.994110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454582, 36.856644, 41.513706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842266, 36.809860, 41.600372>,  <34.074879, 36.781788, 41.652370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842266, 36.809860, 41.600372>,  <33.454582, 36.856644, 41.513706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842266, 36.809860, 41.600372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223321, 0.047015, -0.973610,
		0.103689, 0.992023, 0.071688,
		0.969214, -0.116962, 0.216665,
		34.133030, 36.774773, 41.665371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830662, 37.426552, 41.226860>,  <33.454582, 36.856644, 41.513706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830662, 37.426552, 41.226860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081417, 37.116688, 41.260120>,  <34.231869, 36.930767, 41.280075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081417, 37.116688, 41.260120>,  <33.830662, 37.426552, 41.226860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081417, 37.116688, 41.260120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327090, 0.164814, -0.930510,
		0.707126, 0.610520, 0.356704,
		0.626885, -0.774662, 0.083151,
		34.269482, 36.884289, 41.285065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380028, 37.627705, 40.842884>,  <33.830662, 37.426552, 41.226860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380028, 37.627705, 40.842884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471142, 37.242264, 40.898865>,  <34.525810, 37.011002, 40.932453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471142, 37.242264, 40.898865>,  <34.380028, 37.627705, 40.842884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471142, 37.242264, 40.898865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516744, -0.002193, -0.856137,
		0.825281, 0.267338, 0.497435,
		0.227787, -0.963601, 0.139955,
		34.539478, 36.953182, 40.940853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181835, 37.475437, 40.693855>,  <34.380028, 37.627705, 40.842884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181835, 37.475437, 40.693855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952702, 37.156509, 40.617805>,  <34.815220, 36.965153, 40.572178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952702, 37.156509, 40.617805>,  <35.181835, 37.475437, 40.693855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952702, 37.156509, 40.617805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554855, -0.206464, -0.805921,
		0.603321, -0.567150, 0.560664,
		-0.572836, -0.797316, -0.190122,
		34.780849, 36.917316, 40.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637375, 36.990448, 40.294441>,  <35.181835, 37.475437, 40.693855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637375, 36.990448, 40.294441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277767, 36.834896, 40.213905>,  <35.062004, 36.741566, 40.165585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277767, 36.834896, 40.213905>,  <35.637375, 36.990448, 40.294441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277767, 36.834896, 40.213905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278915, -0.154047, -0.947880,
		0.337599, -0.908317, 0.246956,
		-0.899018, -0.388883, -0.201337,
		35.008060, 36.718231, 40.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709465, 36.280499, 39.961853>,  <35.637375, 36.990448, 40.294441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709465, 36.280499, 39.961853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379486, 36.485825, 39.867229>,  <35.181499, 36.609020, 39.810455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379486, 36.485825, 39.867229>,  <35.709465, 36.280499, 39.961853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379486, 36.485825, 39.867229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142396, -0.216274, -0.965893,
		-0.546973, -0.830499, 0.105321,
		-0.824951, 0.513320, -0.236556,
		35.132000, 36.639820, 39.796265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211147, 35.672028, 40.048943>,  <35.709465, 36.280499, 39.961853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211147, 35.672028, 40.048943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452885, 35.925270, 39.855469>,  <36.597927, 36.077213, 39.739384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452885, 35.925270, 39.855469>,  <36.211147, 35.672028, 40.048943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452885, 35.925270, 39.855469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327152, 0.356350, 0.875206,
		0.726456, -0.687163, 0.008237,
		0.604345, 0.633104, -0.483680,
		36.634190, 36.115200, 39.710365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873074, 35.522064, 40.366283>,  <36.211147, 35.672028, 40.048943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873074, 35.522064, 40.366283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898849, 35.896534, 40.228050>,  <36.914314, 36.121216, 40.145111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898849, 35.896534, 40.228050>,  <36.873074, 35.522064, 40.366283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898849, 35.896534, 40.228050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465192, 0.278198, 0.840358,
		0.882862, -0.214914, -0.417574,
		0.064436, 0.936172, -0.345587,
		36.918179, 36.177387, 40.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443726, 35.722256, 40.634121>,  <36.873074, 35.522064, 40.366283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443726, 35.722256, 40.634121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230831, 36.055439, 40.573589>,  <37.103096, 36.255348, 40.537270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230831, 36.055439, 40.573589>,  <37.443726, 35.722256, 40.634121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230831, 36.055439, 40.573589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327910, 0.367623, 0.870246,
		0.780513, 0.413554, -0.468798,
		-0.532235, 0.832962, -0.151327,
		37.071159, 36.305328, 40.528191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790501, 36.236931, 40.967365>,  <37.443726, 35.722256, 40.634121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790501, 36.236931, 40.967365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449669, 36.438915, 40.912258>,  <37.245171, 36.560104, 40.879192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449669, 36.438915, 40.912258>,  <37.790501, 36.236931, 40.967365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449669, 36.438915, 40.912258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196552, 0.552633, 0.809916,
		0.485113, 0.663032, -0.570136,
		-0.852076, 0.504962, -0.137769,
		37.194046, 36.590405, 40.870926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956932, 36.991722, 40.828156>,  <37.790501, 36.236931, 40.967365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956932, 36.991722, 40.828156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581577, 36.956291, 40.961777>,  <37.356365, 36.935032, 41.041950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581577, 36.956291, 40.961777>,  <37.956932, 36.991722, 40.828156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581577, 36.956291, 40.961777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195710, 0.660471, 0.724897,
		-0.284837, 0.745609, -0.602441,
		-0.938385, -0.088573, 0.334050,
		37.300060, 36.929718, 41.061993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784969, 37.608322, 41.066490>,  <37.956932, 36.991722, 40.828156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784969, 37.608322, 41.066490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502377, 37.384319, 41.239590>,  <37.332821, 37.249916, 41.343449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502377, 37.384319, 41.239590>,  <37.784969, 37.608322, 41.066490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502377, 37.384319, 41.239590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002015, 0.613048, 0.790043,
		-0.707724, 0.557283, -0.434239,
		-0.706486, -0.560007, 0.432746,
		37.290432, 37.216316, 41.369415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565151, 38.095852, 41.437267>,  <37.784969, 37.608322, 41.066490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565151, 38.095852, 41.437267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416264, 37.756924, 41.588795>,  <37.326931, 37.553566, 41.679710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416264, 37.756924, 41.588795>,  <37.565151, 38.095852, 41.437267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416264, 37.756924, 41.588795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131947, 0.355696, 0.925241,
		-0.918719, 0.394375, -0.020596,
		-0.372218, -0.847318, 0.378821,
		37.304600, 37.502728, 41.702442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859341, 38.281322, 41.847569>,  <37.565151, 38.095852, 41.437267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859341, 38.281322, 41.847569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996086, 37.930370, 41.982224>,  <37.078133, 37.719799, 42.063015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996086, 37.930370, 41.982224>,  <36.859341, 38.281322, 41.847569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996086, 37.930370, 41.982224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046623, 0.341944, 0.938563,
		-0.938592, -0.336557, 0.075992,
		0.341865, -0.877385, 0.336637,
		37.098644, 37.667156, 42.083214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421452, 38.110847, 42.343174>,  <36.859341, 38.281322, 41.847569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421452, 38.110847, 42.343174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747448, 37.892826, 42.421883>,  <36.943047, 37.762012, 42.469109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747448, 37.892826, 42.421883>,  <36.421452, 38.110847, 42.343174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747448, 37.892826, 42.421883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074595, 0.238063, 0.968381,
		-0.574659, -0.803895, 0.153360,
		0.814986, -0.545049, 0.196772,
		36.991943, 37.729313, 42.480915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235771, 37.752602, 43.055531>,  <36.421452, 38.110847, 42.343174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235771, 37.752602, 43.055531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628788, 37.751366, 42.981133>,  <36.864597, 37.750622, 42.936493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628788, 37.751366, 42.981133>,  <36.235771, 37.752602, 43.055531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628788, 37.751366, 42.981133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183353, 0.184751, 0.965530,
		0.031374, -0.982781, 0.182094,
		0.982546, -0.003095, -0.185992,
		36.923553, 37.750439, 42.925335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503998, 37.218647, 43.410210>,  <36.235771, 37.752602, 43.055531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503998, 37.218647, 43.410210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823509, 37.443752, 43.325127>,  <37.015217, 37.578815, 43.274078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823509, 37.443752, 43.325127>,  <36.503998, 37.218647, 43.410210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823509, 37.443752, 43.325127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253342, 0.006034, 0.967358,
		0.545678, -0.826595, -0.137752,
		0.798782, 0.562764, -0.212704,
		37.063145, 37.612583, 43.261314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124531, 36.868362, 43.781788>,  <36.503998, 37.218647, 43.410210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124531, 36.868362, 43.781788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201500, 37.254807, 43.712952>,  <37.247681, 37.486671, 43.671650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201500, 37.254807, 43.712952>,  <37.124531, 36.868362, 43.781788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201500, 37.254807, 43.712952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229586, 0.126176, 0.965075,
		0.954078, -0.225208, -0.197526,
		0.192420, 0.966106, -0.172087,
		37.259228, 37.544640, 43.661327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862514, 36.989193, 44.043655>,  <37.124531, 36.868362, 43.781788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862514, 36.989193, 44.043655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649021, 37.327438, 44.040291>,  <37.520927, 37.530384, 44.038273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649021, 37.327438, 44.040291>,  <37.862514, 36.989193, 44.043655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649021, 37.327438, 44.040291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086507, 0.064492, 0.994162,
		0.841219, 0.529886, -0.107572,
		-0.533730, 0.845613, -0.008413,
		37.488903, 37.581123, 44.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098736, 37.277401, 44.576508>,  <37.862514, 36.989193, 44.043655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098736, 37.277401, 44.576508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767147, 37.497269, 44.535179>,  <37.568195, 37.629189, 44.510380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767147, 37.497269, 44.535179>,  <38.098736, 37.277401, 44.576508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767147, 37.497269, 44.535179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137733, -0.021578, 0.990234,
		0.542068, 0.835106, 0.093595,
		-0.828970, 0.549666, -0.103325,
		37.518456, 37.662167, 44.504181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124924, 37.593616, 45.176937>,  <38.098736, 37.277401, 44.576508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124924, 37.593616, 45.176937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.747871, 37.661861, 45.062160>,  <37.521641, 37.702808, 44.993294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.747871, 37.661861, 45.062160>,  <38.124924, 37.593616, 45.176937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747871, 37.661861, 45.062160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302568, -0.073412, 0.950297,
		0.141071, 0.982599, 0.120824,
		-0.942630, 0.170617, -0.286946,
		37.465084, 37.713047, 44.976078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836464, 38.009983, 45.687271>,  <38.124924, 37.593616, 45.176937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836464, 38.009983, 45.687271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509663, 37.863472, 45.509129>,  <37.313580, 37.775566, 45.402245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509663, 37.863472, 45.509129>,  <37.836464, 38.009983, 45.687271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509663, 37.863472, 45.509129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415510, -0.161557, 0.895126,
		-0.399813, 0.916374, -0.020197,
		-0.817007, -0.366275, -0.445355,
		37.264561, 37.753590, 45.375523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170933, 38.365398, 45.962605>,  <37.836464, 38.009983, 45.687271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170933, 38.365398, 45.962605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052032, 38.002659, 45.843094>,  <36.980694, 37.785015, 45.771389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052032, 38.002659, 45.843094>,  <37.170933, 38.365398, 45.962605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052032, 38.002659, 45.843094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422133, -0.155856, 0.893036,
		-0.856416, 0.391576, -0.336483,
		-0.297248, -0.906851, -0.298774,
		36.962856, 37.730602, 45.753460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550148, 38.275646, 46.236572>,  <37.170933, 38.365398, 45.962605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550148, 38.275646, 46.236572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616390, 37.887871, 46.164169>,  <36.656136, 37.655205, 46.120728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616390, 37.887871, 46.164169>,  <36.550148, 38.275646, 46.236572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616390, 37.887871, 46.164169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353631, -0.229709, 0.906741,
		-0.920608, -0.086152, -0.380865,
		0.165606, -0.969439, -0.181006,
		36.666073, 37.597038, 46.109867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.924160, 37.843719, 46.526146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218304, 37.574287, 46.496391>,  <36.394791, 37.412628, 46.478539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218304, 37.574287, 46.496391>,  <35.924160, 37.843719, 46.526146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218304, 37.574287, 46.496391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056142, -0.169943, 0.983853,
		-0.675350, -0.719308, -0.162785,
		0.735357, -0.673584, -0.074388,
		36.438911, 37.372211, 46.474075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733624, 37.290310, 46.916275>,  <35.924160, 37.843719, 46.526146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733624, 37.290310, 46.916275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122982, 37.208569, 46.874836>,  <36.356598, 37.159523, 46.849972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122982, 37.208569, 46.874836>,  <35.733624, 37.290310, 46.916275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122982, 37.208569, 46.874836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035599, -0.311760, 0.949494,
		-0.226327, -0.927926, -0.296193,
		0.973401, -0.204352, -0.103592,
		36.415001, 37.147263, 46.843758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737362, 36.656193, 47.068779>,  <35.733624, 37.290310, 46.916275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737362, 36.656193, 47.068779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109882, 36.788887, 47.128956>,  <36.333393, 36.868504, 47.165062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109882, 36.788887, 47.128956>,  <35.737362, 36.656193, 47.068779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109882, 36.788887, 47.128956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003923, -0.422113, 0.906535,
		0.364236, -0.843664, -0.394414,
		0.931299, 0.331740, 0.150439,
		36.389271, 36.888409, 47.174088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139088, 36.029652, 47.426624>,  <35.737362, 36.656193, 47.068779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139088, 36.029652, 47.426624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296841, 36.388329, 47.507030>,  <36.391491, 36.603535, 47.555275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296841, 36.388329, 47.507030>,  <36.139088, 36.029652, 47.426624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296841, 36.388329, 47.507030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168865, -0.285738, 0.943312,
		0.903299, -0.338078, -0.264109,
		0.394379, 0.896692, 0.201018,
		36.415154, 36.657337, 47.567337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670212, 35.777611, 47.763649>,  <36.139088, 36.029652, 47.426624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670212, 35.777611, 47.763649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622784, 36.163895, 47.856037>,  <36.594326, 36.395664, 47.911469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622784, 36.163895, 47.856037>,  <36.670212, 35.777611, 47.763649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622784, 36.163895, 47.856037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322488, -0.182550, 0.928804,
		0.939119, 0.184610, -0.289785,
		-0.118566, 0.965710, 0.230971,
		36.587215, 36.453606, 47.925327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076824, 35.899578, 48.437000>,  <36.670212, 35.777611, 47.763649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076824, 35.899578, 48.437000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875095, 36.242069, 48.392242>,  <36.754059, 36.447563, 48.365387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875095, 36.242069, 48.392242>,  <37.076824, 35.899578, 48.437000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875095, 36.242069, 48.392242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096788, 0.184819, 0.977995,
		0.858072, 0.482398, -0.176082,
		-0.504326, 0.856233, -0.111898,
		36.723797, 36.498940, 48.358673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501305, 36.342758, 48.765205>,  <37.076824, 35.899578, 48.437000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501305, 36.342758, 48.765205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126919, 36.483559, 48.761967>,  <36.902287, 36.568039, 48.760025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126919, 36.483559, 48.761967>,  <37.501305, 36.342758, 48.765205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126919, 36.483559, 48.761967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001612, 0.018712, 0.999824,
		0.352087, 0.935814, -0.016946,
		-0.935966, 0.351998, -0.008097,
		36.846130, 36.589157, 48.759537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455261, 36.775299, 49.303017>,  <37.501305, 36.342758, 48.765205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455261, 36.775299, 49.303017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067154, 36.700676, 49.241337>,  <36.834290, 36.655903, 49.204330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067154, 36.700676, 49.241337>,  <37.455261, 36.775299, 49.303017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067154, 36.700676, 49.241337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176961, 0.112146, 0.977808,
		-0.165124, 0.976022, -0.141825,
		-0.970267, -0.186557, -0.154200,
		36.776073, 36.644711, 49.195076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173809, 37.225441, 49.644707>,  <37.455261, 36.775299, 49.303017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173809, 37.225441, 49.644707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896278, 36.938938, 49.614834>,  <36.729759, 36.767036, 49.596909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896278, 36.938938, 49.614834>,  <37.173809, 37.225441, 49.644707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896278, 36.938938, 49.614834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262500, 0.154972, 0.952406,
		-0.670594, 0.680410, -0.295542,
		-0.693828, -0.716258, -0.074684,
		36.688129, 36.724060, 49.592430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544189, 37.570076, 49.798626>,  <37.173809, 37.225441, 49.644707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544189, 37.570076, 49.798626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512062, 37.177540, 49.868496>,  <36.492786, 36.942017, 49.910416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512062, 37.177540, 49.868496>,  <36.544189, 37.570076, 49.798626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512062, 37.177540, 49.868496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082781, 0.181201, 0.979956,
		-0.993326, 0.064252, -0.095791,
		-0.080322, -0.981345, 0.174673,
		36.487965, 36.883137, 49.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217834, 37.584450, 50.429138>,  <36.544189, 37.570076, 49.798626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217834, 37.584450, 50.429138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296631, 37.194553, 50.387043>,  <36.343910, 36.960617, 50.361786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296631, 37.194553, 50.387043>,  <36.217834, 37.584450, 50.429138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296631, 37.194553, 50.387043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305997, -0.163112, 0.937955,
		-0.931429, -0.152566, -0.330399,
		0.196992, -0.974740, -0.105243,
		36.355728, 36.902130, 50.355469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641342, 37.153191, 50.691589>,  <36.217834, 37.584450, 50.429138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641342, 37.153191, 50.691589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978447, 36.940414, 50.724552>,  <36.180710, 36.812748, 50.744328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978447, 36.940414, 50.724552>,  <35.641342, 37.153191, 50.691589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978447, 36.940414, 50.724552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235755, -0.227138, 0.944896,
		-0.483911, -0.815750, -0.316831,
		0.842763, -0.531940, 0.082403,
		36.231277, 36.780834, 50.749271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492725, 36.447594, 51.033932>,  <35.641342, 37.153191, 50.691589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492725, 36.447594, 51.033932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881176, 36.523792, 51.091385>,  <36.114246, 36.569511, 51.125858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881176, 36.523792, 51.091385>,  <35.492725, 36.447594, 51.033932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881176, 36.523792, 51.091385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089227, -0.268349, 0.959180,
		0.221260, -0.944299, -0.243603,
		0.971124, 0.190493, 0.143632,
		36.172512, 36.580940, 51.134476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847618, 35.871094, 51.278210>,  <35.492725, 36.447594, 51.033932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847618, 35.871094, 51.278210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108967, 36.140594, 51.416294>,  <36.265774, 36.302296, 51.499146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108967, 36.140594, 51.416294>,  <35.847618, 35.871094, 51.278210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108967, 36.140594, 51.416294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035228, -0.428446, 0.902880,
		0.756219, -0.602076, -0.256199,
		0.653370, 0.673750, 0.345209,
		36.304977, 36.342720, 51.519855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281754, 35.512104, 51.720589>,  <35.847618, 35.871094, 51.278210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281754, 35.512104, 51.720589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393147, 35.882668, 51.821957>,  <36.459980, 36.105003, 51.882778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393147, 35.882668, 51.821957>,  <36.281754, 35.512104, 51.720589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393147, 35.882668, 51.821957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092538, -0.288512, 0.952994,
		0.955974, -0.241937, -0.166072,
		0.278478, 0.926406, 0.253422,
		36.476688, 36.160587, 51.897984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867527, 35.387886, 52.223240>,  <36.281754, 35.512104, 51.720589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867527, 35.387886, 52.223240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735779, 35.761623, 52.277660>,  <36.656731, 35.985867, 52.310314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735779, 35.761623, 52.277660>,  <36.867527, 35.387886, 52.223240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735779, 35.761623, 52.277660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295233, -0.034958, 0.954786,
		0.896857, 0.354646, -0.264336,
		-0.329370, 0.934347, 0.136055,
		36.636967, 36.041927, 52.318478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444427, 35.727474, 52.422699>,  <36.867527, 35.387886, 52.223240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444427, 35.727474, 52.422699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124409, 35.936832, 52.539982>,  <36.932396, 36.062447, 52.610352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124409, 35.936832, 52.539982>,  <37.444427, 35.727474, 52.422699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124409, 35.936832, 52.539982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302440, -0.070215, 0.950579,
		0.518121, 0.849189, -0.102121,
		-0.800051, 0.523400, 0.293209,
		36.884392, 36.093853, 52.627945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647591, 36.207325, 52.875164>,  <37.444427, 35.727474, 52.422699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647591, 36.207325, 52.875164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256699, 36.177288, 52.954544>,  <37.022163, 36.159267, 53.002171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256699, 36.177288, 52.954544>,  <37.647591, 36.207325, 52.875164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256699, 36.177288, 52.954544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208546, -0.167630, 0.963540,
		-0.039085, 0.982986, 0.179472,
		-0.977231, -0.075088, 0.198446,
		36.963528, 36.154762, 53.014076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509529, 36.699600, 53.433735>,  <37.647591, 36.207325, 52.875164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509529, 36.699600, 53.433735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220627, 36.423851, 53.456024>,  <37.047283, 36.258400, 53.469398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220627, 36.423851, 53.456024>,  <37.509529, 36.699600, 53.433735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220627, 36.423851, 53.456024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246910, -0.181754, 0.951841,
		-0.646049, 0.701232, 0.301487,
		-0.722258, -0.689376, 0.055719,
		37.003948, 36.217037, 53.472740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011642, 36.885639, 53.923668>,  <37.509529, 36.699600, 53.433735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011642, 36.885639, 53.923668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987057, 36.487965, 53.888294>,  <36.972305, 36.249359, 53.867069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987057, 36.487965, 53.888294>,  <37.011642, 36.885639, 53.923668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987057, 36.487965, 53.888294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215893, -0.099744, 0.971309,
		-0.974480, 0.040612, 0.220768,
		-0.061467, -0.994184, -0.088431,
		36.968616, 36.189709, 53.861767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601204, 36.695797, 54.514236>,  <37.011642, 36.885639, 53.923668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601204, 36.695797, 54.514236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775173, 36.350918, 54.410343>,  <36.879555, 36.143990, 54.348007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775173, 36.350918, 54.410343>,  <36.601204, 36.695797, 54.514236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775173, 36.350918, 54.410343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192254, -0.192875, 0.962204,
		-0.879703, -0.468421, 0.081874,
		0.434925, -0.862195, -0.259729,
		36.905651, 36.092258, 54.332424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431847, 36.207611, 54.970333>,  <36.601204, 36.695797, 54.514236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431847, 36.207611, 54.970333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757164, 36.042572, 54.806229>,  <36.952354, 35.943550, 54.707767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757164, 36.042572, 54.806229>,  <36.431847, 36.207611, 54.970333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757164, 36.042572, 54.806229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324568, -0.263503, 0.908417,
		-0.482918, -0.871968, -0.080388,
		0.813293, -0.412600, -0.410263,
		37.001152, 35.918793, 54.683151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851284, 36.653042, 54.702454>,  <36.431847, 36.207611, 54.970333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851284, 36.653042, 54.702454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581802, 36.579884, 54.416050>,  <35.420113, 36.535988, 54.244209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581802, 36.579884, 54.416050>,  <35.851284, 36.653042, 54.702454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581802, 36.579884, 54.416050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278551, -0.960274, -0.016804,
		-0.684491, -0.210766, 0.697889,
		-0.673707, -0.182895, -0.716008,
		35.379692, 36.525017, 54.201248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248554, 36.006573, 54.857395>,  <35.851284, 36.653042, 54.702454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248554, 36.006573, 54.857395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378605, 36.063110, 54.483376>,  <35.456635, 36.097034, 54.258965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378605, 36.063110, 54.483376>,  <35.248554, 36.006573, 54.857395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378605, 36.063110, 54.483376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474265, -0.879803, 0.031910,
		-0.818147, -0.453835, -0.353083,
		0.325126, 0.141348, -0.935048,
		35.476143, 36.105515, 54.202862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763824, 35.493183, 55.142982>,  <35.248554, 36.006573, 54.857395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763824, 35.493183, 55.142982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366627, 35.463387, 55.179665>,  <34.128307, 35.445507, 55.201675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366627, 35.463387, 55.179665>,  <34.763824, 35.493183, 55.142982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366627, 35.463387, 55.179665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045024, -0.479036, -0.876640,
		0.109238, -0.874628, 0.472327,
		-0.992995, -0.074496, 0.091708,
		34.068729, 35.441036, 55.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641476, 34.826458, 55.091976>,  <34.763824, 35.493183, 55.142982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641476, 34.826458, 55.091976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308109, 35.015953, 54.978146>,  <34.108089, 35.129650, 54.909847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308109, 35.015953, 54.978146>,  <34.641476, 34.826458, 55.091976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308109, 35.015953, 54.978146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059704, -0.434748, -0.898571,
		-0.549411, -0.765874, 0.334042,
		-0.833417, 0.473741, -0.284581,
		34.058083, 35.158073, 54.892773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357113, 34.279884, 54.612835>,  <34.641476, 34.826458, 55.091976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357113, 34.279884, 54.612835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166267, 34.624985, 54.545860>,  <34.051762, 34.832043, 54.505676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166267, 34.624985, 54.545860>,  <34.357113, 34.279884, 54.612835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166267, 34.624985, 54.545860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034156, -0.208574, -0.977410,
		-0.878180, -0.460613, 0.128981,
		-0.477110, 0.862747, -0.167432,
		34.023136, 34.883808, 54.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952103, 33.982265, 54.162613>,  <34.357113, 34.279884, 54.612835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952103, 33.982265, 54.162613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944111, 34.376259, 54.094017>,  <33.939316, 34.612656, 54.052860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944111, 34.376259, 54.094017>,  <33.952103, 33.982265, 54.162613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944111, 34.376259, 54.094017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109030, -0.172652, -0.978930,
		-0.993838, -0.000858, 0.110841,
		-0.019977, 0.984983, -0.171494,
		33.938118, 34.671753, 54.042568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347057, 34.041073, 53.674210>,  <33.952103, 33.982265, 54.162613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347057, 34.041073, 53.674210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589558, 34.358585, 53.654724>,  <33.735058, 34.549091, 53.643032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589558, 34.358585, 53.654724>,  <33.347057, 34.041073, 53.674210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589558, 34.358585, 53.654724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081909, -0.123250, -0.988990,
		-0.791043, 0.595587, -0.139738,
		0.606252, 0.793779, -0.048712,
		33.771435, 34.596718, 53.640110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088154, 34.402294, 53.145481>,  <33.347057, 34.041073, 53.674210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088154, 34.402294, 53.145481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456863, 34.553692, 53.179127>,  <33.678089, 34.644531, 53.199314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456863, 34.553692, 53.179127>,  <33.088154, 34.402294, 53.145481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456863, 34.553692, 53.179127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122408, -0.078225, -0.989392,
		-0.367898, 0.922293, -0.118436,
		0.921774, 0.378493, 0.084117,
		33.733395, 34.667240, 53.204361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158268, 34.878132, 52.672771>,  <33.088154, 34.402294, 53.145481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158268, 34.878132, 52.672771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550777, 34.830326, 52.733200>,  <33.786282, 34.801643, 52.769455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550777, 34.830326, 52.733200>,  <33.158268, 34.878132, 52.672771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550777, 34.830326, 52.733200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147446, -0.038651, -0.988315,
		0.123958, 0.992080, -0.020305,
		0.981272, -0.119516, 0.151069,
		33.845158, 34.794472, 52.778522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488560, 35.392136, 52.270397>,  <33.158268, 34.878132, 52.672771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488560, 35.392136, 52.270397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778687, 35.133873, 52.365925>,  <33.952763, 34.978916, 52.423241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778687, 35.133873, 52.365925>,  <33.488560, 35.392136, 52.270397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778687, 35.133873, 52.365925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276930, -0.043954, -0.959884,
		0.630256, 0.762359, 0.146922,
		0.725318, -0.645660, 0.238822,
		33.996281, 34.940174, 52.437572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074574, 35.708324, 52.125854>,  <33.488560, 35.392136, 52.270397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074574, 35.708324, 52.125854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121250, 35.311695, 52.103340>,  <34.149258, 35.073719, 52.089832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121250, 35.311695, 52.103340>,  <34.074574, 35.708324, 52.125854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121250, 35.311695, 52.103340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296934, 0.088918, -0.950749,
		0.947741, 0.094234, 0.304807,
		0.116696, -0.991571, -0.056290,
		34.156258, 35.014225, 52.086452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780411, 35.502048, 51.980167>,  <34.074574, 35.708324, 52.125854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780411, 35.502048, 51.980167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537800, 35.204441, 51.868046>,  <34.392235, 35.025879, 51.800774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537800, 35.204441, 51.868046>,  <34.780411, 35.502048, 51.980167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537800, 35.204441, 51.868046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195599, 0.202087, -0.959636,
		0.770630, -0.636869, 0.022959,
		-0.606523, -0.744016, -0.280305,
		34.355843, 34.981236, 51.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073399, 35.309792, 51.406628>,  <34.780411, 35.502048, 51.980167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073399, 35.309792, 51.406628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727531, 35.111141, 51.376419>,  <34.520012, 34.991951, 51.358292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727531, 35.111141, 51.376419>,  <35.073399, 35.309792, 51.406628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727531, 35.111141, 51.376419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024618, 0.108272, -0.993816,
		0.501736, -0.861183, -0.081393,
		-0.864670, -0.496630, -0.075525,
		34.468132, 34.962151, 51.353760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201847, 34.846458, 50.871040>,  <35.073399, 35.309792, 51.406628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201847, 34.846458, 50.871040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806992, 34.888802, 50.918968>,  <34.570080, 34.914207, 50.947723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806992, 34.888802, 50.918968>,  <35.201847, 34.846458, 50.871040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806992, 34.888802, 50.918968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086156, 0.279111, -0.956386,
		-0.134681, -0.954407, -0.266400,
		-0.987136, 0.105855, 0.119819,
		34.510849, 34.920559, 50.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900112, 34.501381, 50.308037>,  <35.201847, 34.846458, 50.871040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900112, 34.501381, 50.308037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595516, 34.728504, 50.433083>,  <34.412758, 34.864777, 50.508110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595516, 34.728504, 50.433083>,  <34.900112, 34.501381, 50.308037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595516, 34.728504, 50.433083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116647, 0.354374, -0.927800,
		-0.637594, -0.742976, -0.203619,
		-0.761490, 0.567808, 0.312612,
		34.367069, 34.898846, 50.526867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472931, 34.471119, 49.800331>,  <34.900112, 34.501381, 50.308037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472931, 34.471119, 49.800331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342564, 34.792816, 49.999115>,  <34.264343, 34.985836, 50.118385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342564, 34.792816, 49.999115>,  <34.472931, 34.471119, 49.800331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342564, 34.792816, 49.999115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314170, 0.403648, -0.859282,
		-0.891669, -0.436186, 0.121112,
		-0.325920, 0.804245, 0.496957,
		34.244789, 35.034088, 50.148201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683262, 34.628468, 49.565826>,  <34.472931, 34.471119, 49.800331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683262, 34.628468, 49.565826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828323, 34.970978, 49.712948>,  <33.915359, 35.176483, 49.801220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828323, 34.970978, 49.712948>,  <33.683262, 34.628468, 49.565826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828323, 34.970978, 49.712948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253337, 0.470392, -0.845312,
		-0.896828, 0.213380, 0.387516,
		0.362657, 0.856272, 0.367804,
		33.937119, 35.227859, 49.823288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168507, 35.196674, 49.396069>,  <33.683262, 34.628468, 49.565826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168507, 35.196674, 49.396069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514244, 35.388008, 49.458160>,  <33.721687, 35.502808, 49.495415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514244, 35.388008, 49.458160>,  <33.168507, 35.196674, 49.396069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514244, 35.388008, 49.458160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124740, 0.502955, -0.855264,
		-0.487178, 0.719882, 0.494396,
		0.864348, 0.478337, 0.155231,
		33.773548, 35.531509, 49.504730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074436, 35.842728, 49.299995>,  <33.168507, 35.196674, 49.396069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074436, 35.842728, 49.299995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467678, 35.794079, 49.245266>,  <33.703621, 35.764889, 49.212429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467678, 35.794079, 49.245266>,  <33.074436, 35.842728, 49.299995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467678, 35.794079, 49.245266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060182, 0.491136, -0.869001,
		0.172883, 0.862551, 0.475518,
		0.983102, -0.121618, -0.136819,
		33.762608, 35.757595, 49.204220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303001, 36.506775, 49.143288>,  <33.074436, 35.842728, 49.299995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303001, 36.506775, 49.143288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597404, 36.268719, 49.014229>,  <33.774048, 36.125885, 48.936794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597404, 36.268719, 49.014229>,  <33.303001, 36.506775, 49.143288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597404, 36.268719, 49.014229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051272, 0.524236, -0.850028,
		0.675026, 0.609087, 0.416357,
		0.736010, -0.595139, -0.322644,
		33.818207, 36.090176, 48.917435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680470, 36.931129, 48.872143>,  <33.303001, 36.506775, 49.143288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680470, 36.931129, 48.872143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827560, 36.590672, 48.722301>,  <33.915817, 36.386398, 48.632397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827560, 36.590672, 48.722301>,  <33.680470, 36.931129, 48.872143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827560, 36.590672, 48.722301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098929, 0.436352, -0.894321,
		0.924655, 0.291811, 0.244663,
		0.367732, -0.851142, -0.374607,
		33.937881, 36.335327, 48.609921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352200, 37.057526, 48.510944>,  <33.680470, 36.931129, 48.872143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352200, 37.057526, 48.510944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198460, 36.726871, 48.346531>,  <34.106216, 36.528481, 48.247883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198460, 36.726871, 48.346531>,  <34.352200, 37.057526, 48.510944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198460, 36.726871, 48.346531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228745, 0.346080, -0.909893,
		0.894401, -0.443737, 0.056074,
		-0.384346, -0.826636, -0.411037,
		34.083157, 36.478882, 48.223221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.743065, 41.659023, 30.965832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346523, 41.628822, 31.008749>,  <41.108597, 41.610703, 31.034498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346523, 41.628822, 31.008749>,  <41.743065, 41.659023, 30.965832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346523, 41.628822, 31.008749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129104, -0.415966, 0.900169,
		-0.023337, 0.906240, 0.422118,
		-0.991356, -0.075505, 0.107292,
		41.049118, 41.606171, 31.040937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513466, 41.853149, 31.706366>,  <41.743065, 41.659023, 30.965832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513466, 41.853149, 31.706366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223236, 41.618462, 31.562534>,  <41.049099, 41.477650, 31.476234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223236, 41.618462, 31.562534>,  <41.513466, 41.853149, 31.706366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223236, 41.618462, 31.562534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027054, -0.497811, 0.866864,
		-0.687613, 0.638701, 0.345325,
		-0.725574, -0.586724, -0.359580,
		41.005566, 41.442444, 31.454660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204411, 41.763836, 32.299480>,  <41.513466, 41.853149, 31.706366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204411, 41.763836, 32.299480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091164, 41.472755, 32.049587>,  <41.023216, 41.298107, 31.899652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091164, 41.472755, 32.049587>,  <41.204411, 41.763836, 32.299480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091164, 41.472755, 32.049587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135011, -0.614657, 0.777154,
		-0.949534, 0.304374, 0.075774,
		-0.283120, -0.727704, -0.624731,
		41.006229, 41.254444, 31.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604183, 41.408371, 32.596748>,  <41.204411, 41.763836, 32.299480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604183, 41.408371, 32.596748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760731, 41.145744, 32.338833>,  <40.854660, 40.988167, 32.184086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760731, 41.145744, 32.338833>,  <40.604183, 41.408371, 32.596748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760731, 41.145744, 32.338833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016780, -0.705651, 0.708360,
		-0.920080, -0.266413, -0.287189,
		0.391372, -0.656567, -0.644785,
		40.878143, 40.948772, 32.145397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231964, 40.814083, 32.689983>,  <40.604183, 41.408371, 32.596748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231964, 40.814083, 32.689983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550774, 40.681919, 32.487762>,  <40.742062, 40.602623, 32.366432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550774, 40.681919, 32.487762>,  <40.231964, 40.814083, 32.689983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550774, 40.681919, 32.487762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094522, -0.758522, 0.644756,
		-0.596501, -0.561673, -0.573332,
		0.797027, -0.330405, -0.505550,
		40.789883, 40.582798, 32.336098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118179, 40.040016, 32.577553>,  <40.231964, 40.814083, 32.689983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118179, 40.040016, 32.577553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510899, 40.109489, 32.546799>,  <40.746529, 40.151173, 32.528347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510899, 40.109489, 32.546799>,  <40.118179, 40.040016, 32.577553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510899, 40.109489, 32.546799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187883, -0.828664, 0.527272,
		0.027867, -0.532118, -0.846211,
		0.981796, 0.173682, -0.076884,
		40.805439, 40.161594, 32.523735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421043, 39.381062, 32.572361>,  <40.118179, 40.040016, 32.577553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421043, 39.381062, 32.572361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759224, 39.591785, 32.607433>,  <40.962132, 39.718220, 32.628475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759224, 39.591785, 32.607433>,  <40.421043, 39.381062, 32.572361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759224, 39.591785, 32.607433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363861, -0.688383, 0.627483,
		0.390919, -0.498603, -0.773678,
		0.845451, 0.526806, 0.087680,
		41.012859, 39.749828, 32.633736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043621, 38.894154, 32.358105>,  <40.421043, 39.381062, 32.572361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043621, 38.894154, 32.358105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145916, 39.204262, 32.589123>,  <41.207291, 39.390327, 32.727734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145916, 39.204262, 32.589123>,  <41.043621, 38.894154, 32.358105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145916, 39.204262, 32.589123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487426, -0.619317, 0.615519,
		0.834875, 0.124099, -0.536268,
		0.255734, 0.775272, 0.577541,
		41.222637, 39.436844, 32.762386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628845, 38.716255, 32.505478>,  <41.043621, 38.894154, 32.358105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628845, 38.716255, 32.505478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586845, 39.001022, 32.783226>,  <41.561646, 39.171883, 32.949875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586845, 39.001022, 32.783226>,  <41.628845, 38.716255, 32.505478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586845, 39.001022, 32.783226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395175, -0.610870, 0.686057,
		0.912586, 0.346431, -0.217193,
		-0.104995, 0.711915, 0.694373,
		41.555347, 39.214596, 32.991539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281502, 38.878731, 32.814381>,  <41.628845, 38.716255, 32.505478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281502, 38.878731, 32.814381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989296, 38.958237, 33.075714>,  <41.813972, 39.005939, 33.232513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989296, 38.958237, 33.075714>,  <42.281502, 38.878731, 32.814381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989296, 38.958237, 33.075714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399915, -0.650981, 0.645207,
		0.553553, 0.732609, 0.396060,
		-0.730512, 0.198766, 0.653334,
		41.770142, 39.017868, 33.271713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688763, 39.038635, 33.401741>,  <42.281502, 38.878731, 32.814381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688763, 39.038635, 33.401741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321472, 38.978111, 33.548149>,  <42.101097, 38.941795, 33.635994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321472, 38.978111, 33.548149>,  <42.688763, 39.038635, 33.401741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321472, 38.978111, 33.548149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364145, -0.686002, 0.629921,
		0.155775, 0.711692, 0.685002,
		-0.918223, -0.151314, 0.366021,
		42.046005, 38.932716, 33.657955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645191, 39.009453, 34.157551>,  <42.688763, 39.038635, 33.401741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645191, 39.009453, 34.157551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300304, 38.810062, 34.121532>,  <42.093372, 38.690430, 34.099922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300304, 38.810062, 34.121532>,  <42.645191, 39.009453, 34.157551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300304, 38.810062, 34.121532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342050, -0.704067, 0.622327,
		-0.373616, 0.505778, 0.777560,
		-0.862214, -0.498475, -0.090049,
		42.041641, 38.660519, 34.094517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408646, 38.699669, 34.837219>,  <42.645191, 39.009453, 34.157551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408646, 38.699669, 34.837219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208805, 38.476482, 34.572166>,  <42.088902, 38.342571, 34.413136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208805, 38.476482, 34.572166>,  <42.408646, 38.699669, 34.837219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208805, 38.476482, 34.572166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108547, -0.799228, 0.591145,
		-0.859430, 0.223408, 0.459858,
		-0.499597, -0.557964, -0.662630,
		42.058926, 38.309093, 34.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899406, 38.326664, 35.270443>,  <42.408646, 38.699669, 34.837219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899406, 38.326664, 35.270443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933960, 38.130768, 34.923412>,  <41.954693, 38.013229, 34.715195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933960, 38.130768, 34.923412>,  <41.899406, 38.326664, 35.270443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933960, 38.130768, 34.923412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100002, -0.870700, 0.481542,
		-0.991230, 0.045163, -0.124188,
		0.086382, -0.489738, -0.867580,
		41.959873, 37.983845, 34.663139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346451, 37.819889, 35.224113>,  <41.899406, 38.326664, 35.270443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346451, 37.819889, 35.224113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609131, 37.676979, 34.958454>,  <41.766739, 37.591232, 34.799057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609131, 37.676979, 34.958454>,  <41.346451, 37.819889, 35.224113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609131, 37.676979, 34.958454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101659, -0.914563, 0.391459,
		-0.747267, -0.189555, -0.636915,
		0.656702, -0.357273, -0.664152,
		41.806141, 37.569798, 34.759209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066078, 37.156960, 35.140545>,  <41.346451, 37.819889, 35.224113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066078, 37.156960, 35.140545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447754, 37.168491, 35.021420>,  <41.676758, 37.175411, 34.949944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447754, 37.168491, 35.021420>,  <41.066078, 37.156960, 35.140545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447754, 37.168491, 35.021420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158134, -0.893574, 0.420143,
		-0.254005, -0.447990, -0.857197,
		0.954188, 0.028834, -0.297814,
		41.734009, 37.177143, 34.932076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159477, 36.634071, 34.769386>,  <41.066078, 37.156960, 35.140545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159477, 36.634071, 34.769386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.524734, 36.740524, 34.892899>,  <41.743889, 36.804398, 34.967007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.524734, 36.740524, 34.892899>,  <41.159477, 36.634071, 34.769386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524734, 36.740524, 34.892899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106238, -0.886670, 0.450034,
		0.393558, -0.378140, -0.837928,
		0.913141, 0.266134, 0.308783,
		41.798676, 36.820366, 34.985535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599094, 35.974213, 34.659241>,  <41.159477, 36.634071, 34.769386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599094, 35.974213, 34.659241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826462, 36.207722, 34.891144>,  <41.962883, 36.347828, 35.030285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826462, 36.207722, 34.891144>,  <41.599094, 35.974213, 34.659241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826462, 36.207722, 34.891144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342146, -0.808563, 0.478708,
		0.748225, -0.073744, -0.659334,
		0.568415, 0.583770, 0.579756,
		41.996986, 36.382854, 35.065071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278004, 35.610992, 34.689781>,  <41.599094, 35.974213, 34.659241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278004, 35.610992, 34.689781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266331, 35.836288, 35.020092>,  <42.259327, 35.971466, 35.218277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266331, 35.836288, 35.020092>,  <42.278004, 35.610992, 34.689781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266331, 35.836288, 35.020092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293573, -0.784864, 0.545714,
		0.955491, 0.258349, -0.142450,
		-0.029181, 0.563245, 0.825775,
		42.257576, 36.005260, 35.267826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822620, 35.357372, 35.028355>,  <42.278004, 35.610992, 34.689781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822620, 35.357372, 35.028355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582771, 35.540554, 35.290874>,  <42.438862, 35.650463, 35.448387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582771, 35.540554, 35.290874>,  <42.822620, 35.357372, 35.028355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582771, 35.540554, 35.290874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104007, -0.768533, 0.631300,
		0.793496, 0.446801, 0.413198,
		-0.599622, 0.457958, 0.656298,
		42.402885, 35.677940, 35.487762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174091, 35.302696, 35.672543>,  <42.822620, 35.357372, 35.028355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174091, 35.302696, 35.672543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797188, 35.385056, 35.778183>,  <42.571045, 35.434471, 35.841568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797188, 35.385056, 35.778183>,  <43.174091, 35.302696, 35.672543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797188, 35.385056, 35.778183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015006, -0.761898, 0.647523,
		0.334544, 0.614098, 0.714817,
		-0.942260, 0.205899, 0.264104,
		42.514511, 35.446827, 35.857414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865429, 35.067749, 35.317837>,  <43.174091, 35.302696, 35.672543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865429, 35.067749, 35.317837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223389, 35.166779, 35.466354>,  <44.438164, 35.226196, 35.555466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223389, 35.166779, 35.466354>,  <43.865429, 35.067749, 35.317837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223389, 35.166779, 35.466354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299966, 0.282296, -0.911224,
		-0.330412, 0.926830, 0.178363,
		0.894901, 0.247577, 0.371291,
		44.491859, 35.241051, 35.577744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004093, 35.737404, 35.339752>,  <43.865429, 35.067749, 35.317837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004093, 35.737404, 35.339752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345467, 35.543293, 35.263695>,  <44.550289, 35.426826, 35.218060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345467, 35.543293, 35.263695>,  <44.004093, 35.737404, 35.339752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345467, 35.543293, 35.263695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030076, 0.410071, -0.911558,
		0.520333, 0.772236, 0.364563,
		0.853434, -0.485278, -0.190148,
		44.601498, 35.397709, 35.206650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592800, 36.204781, 35.248131>,  <44.004093, 35.737404, 35.339752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592800, 36.204781, 35.248131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625626, 35.867348, 35.035851>,  <44.645321, 35.664890, 34.908482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625626, 35.867348, 35.035851>,  <44.592800, 36.204781, 35.248131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625626, 35.867348, 35.035851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081366, 0.525047, -0.847175,
		0.993300, 0.112700, -0.025554,
		0.082060, -0.843578, -0.530700,
		44.650242, 35.614273, 34.876640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061733, 36.297924, 34.738556>,  <44.592800, 36.204781, 35.248131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061733, 36.297924, 34.738556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886971, 35.970276, 34.589878>,  <44.782112, 35.773685, 34.500671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886971, 35.970276, 34.589878>,  <45.061733, 36.297924, 34.738556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886971, 35.970276, 34.589878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011624, 0.408044, -0.912888,
		0.899433, -0.403165, -0.168754,
		-0.436904, -0.819120, -0.371695,
		44.755898, 35.724541, 34.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394436, 36.051212, 34.141350>,  <45.061733, 36.297924, 34.738556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394436, 36.051212, 34.141350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041737, 35.865986, 34.105381>,  <44.830116, 35.754848, 34.083801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041737, 35.865986, 34.105381>,  <45.394436, 36.051212, 34.141350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041737, 35.865986, 34.105381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093655, 0.358681, -0.928750,
		0.462328, -0.810503, -0.359635,
		-0.881749, -0.463069, -0.089920,
		44.777210, 35.727066, 34.078403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320606, 35.765373, 33.486832>,  <45.394436, 36.051212, 34.141350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320606, 35.765373, 33.486832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930275, 35.766613, 33.574245>,  <44.696075, 35.767357, 33.626694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930275, 35.766613, 33.574245>,  <45.320606, 35.765373, 33.486832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930275, 35.766613, 33.574245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202160, 0.367195, -0.907909,
		-0.083061, -0.930139, -0.357691,
		-0.975824, 0.003101, 0.218537,
		44.637527, 35.767544, 33.639805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998138, 35.482204, 32.894386>,  <45.320606, 35.765373, 33.486832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998138, 35.482204, 32.894386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710583, 35.687054, 33.082397>,  <44.538048, 35.809963, 33.195206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710583, 35.687054, 33.082397>,  <44.998138, 35.482204, 32.894386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710583, 35.687054, 33.082397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324789, 0.350365, -0.878497,
		-0.614580, -0.784203, -0.085542,
		-0.718891, 0.512124, 0.470028,
		44.494915, 35.840691, 33.223404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355091, 35.378895, 32.511475>,  <44.998138, 35.482204, 32.894386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355091, 35.378895, 32.511475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312553, 35.705067, 32.739075>,  <44.287029, 35.900768, 32.875637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312553, 35.705067, 32.739075>,  <44.355091, 35.378895, 32.511475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312553, 35.705067, 32.739075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466188, 0.464567, -0.752892,
		-0.878270, -0.345332, 0.330737,
		-0.106348, 0.815428, 0.569005,
		44.280647, 35.949696, 32.909775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688400, 35.595470, 32.379139>,  <44.355091, 35.378895, 32.511475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688400, 35.595470, 32.379139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904476, 35.903168, 32.515648>,  <44.034122, 36.087784, 32.597553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904476, 35.903168, 32.515648>,  <43.688400, 35.595470, 32.379139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904476, 35.903168, 32.515648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415271, 0.596379, -0.686937,
		-0.731947, 0.229355, 0.641600,
		0.540189, 0.769239, 0.341273,
		44.066532, 36.133938, 32.618031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272835, 36.263954, 32.356518>,  <43.688400, 35.595470, 32.379139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272835, 36.263954, 32.356518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649746, 36.395611, 32.381126>,  <43.875893, 36.474606, 32.395893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649746, 36.395611, 32.381126>,  <43.272835, 36.263954, 32.356518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649746, 36.395611, 32.381126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200710, 0.702274, -0.683028,
		-0.268019, 0.631251, 0.727796,
		0.942275, 0.329140, 0.061524,
		43.932426, 36.494354, 32.399582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196945, 36.928822, 32.265289>,  <43.272835, 36.263954, 32.356518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196945, 36.928822, 32.265289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588184, 36.871490, 32.204922>,  <43.822929, 36.837090, 32.168701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588184, 36.871490, 32.204922>,  <43.196945, 36.928822, 32.265289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588184, 36.871490, 32.204922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021643, 0.791217, -0.611153,
		0.207010, 0.594502, 0.776991,
		0.978099, -0.143331, -0.150923,
		43.881615, 36.828491, 32.159645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429508, 37.539291, 32.357159>,  <43.196945, 36.928822, 32.265289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429508, 37.539291, 32.357159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714031, 37.344631, 32.154293>,  <43.884747, 37.227837, 32.032574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714031, 37.344631, 32.154293>,  <43.429508, 37.539291, 32.357159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714031, 37.344631, 32.154293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075590, 0.770327, -0.633153,
		0.698801, 0.412033, 0.584727,
		0.711311, -0.486647, -0.507160,
		43.927425, 37.198635, 32.002144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068031, 38.063583, 32.194859>,  <43.429508, 37.539291, 32.357159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068031, 38.063583, 32.194859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.093845, 37.772278, 31.921959>,  <44.109333, 37.597492, 31.758219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.093845, 37.772278, 31.921959>,  <44.068031, 38.063583, 32.194859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093845, 37.772278, 31.921959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127758, 0.672018, -0.729431,
		0.989703, 0.134237, -0.049673,
		0.064536, -0.728267, -0.682248,
		44.113205, 37.553799, 31.717285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534176, 38.334881, 31.661575>,  <44.068031, 38.063583, 32.194859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534176, 38.334881, 31.661575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337055, 38.025196, 31.502707>,  <44.218784, 37.839386, 31.407385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337055, 38.025196, 31.502707>,  <44.534176, 38.334881, 31.661575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337055, 38.025196, 31.502707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350304, 0.594342, -0.723909,
		0.796515, -0.217610, -0.564101,
		-0.492799, -0.774211, -0.397173,
		44.189217, 37.792934, 31.383554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764179, 38.285229, 30.932562>,  <44.534176, 38.334881, 31.661575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764179, 38.285229, 30.932562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408741, 38.108864, 30.983147>,  <44.195477, 38.003044, 31.013496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408741, 38.108864, 30.983147>,  <44.764179, 38.285229, 30.932562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408741, 38.108864, 30.983147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394246, 0.593230, -0.701889,
		0.234453, -0.673552, -0.700970,
		-0.888595, -0.440915, 0.126461,
		44.142162, 37.976589, 31.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577358, 38.152039, 30.285597>,  <44.764179, 38.285229, 30.932562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577358, 38.152039, 30.285597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225674, 38.116158, 30.472761>,  <44.014664, 38.094631, 30.585060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225674, 38.116158, 30.472761>,  <44.577358, 38.152039, 30.285597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225674, 38.116158, 30.472761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425950, 0.587954, -0.687660,
		-0.213428, -0.803905, -0.555144,
		-0.879213, -0.089698, 0.467909,
		43.961910, 38.089249, 30.613134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113010, 38.066410, 29.740995>,  <44.577358, 38.152039, 30.285597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113010, 38.066410, 29.740995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862942, 38.164074, 30.037521>,  <43.712902, 38.222672, 30.215437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862942, 38.164074, 30.037521>,  <44.113010, 38.066410, 29.740995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862942, 38.164074, 30.037521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522359, 0.574832, -0.629848,
		-0.579916, -0.780995, -0.231829,
		-0.625171, 0.244161, 0.741314,
		43.675392, 38.237324, 30.259916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431221, 38.189251, 29.389114>,  <44.113010, 38.066410, 29.740995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431221, 38.189251, 29.389114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399246, 38.354481, 29.751987>,  <43.380062, 38.453617, 29.969711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399246, 38.354481, 29.751987>,  <43.431221, 38.189251, 29.389114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399246, 38.354481, 29.751987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503951, 0.768472, -0.394316,
		-0.860025, -0.488695, 0.146741,
		-0.079934, 0.413072, 0.907183,
		43.375267, 38.478401, 30.024143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804676, 38.528091, 29.313210>,  <43.431221, 38.189251, 29.389114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804676, 38.528091, 29.313210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965763, 38.707439, 29.632404>,  <43.062416, 38.815048, 29.823921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965763, 38.707439, 29.632404>,  <42.804676, 38.528091, 29.313210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965763, 38.707439, 29.632404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407750, 0.868406, -0.282154,
		-0.819487, -0.211751, 0.532544,
		0.402718, 0.448366, 0.797989,
		43.086578, 38.841949, 29.871801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296478, 38.850925, 29.524282>,  <42.804676, 38.528091, 29.313210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296478, 38.850925, 29.524282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612358, 39.031719, 29.690214>,  <42.801888, 39.140194, 29.789774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612358, 39.031719, 29.690214>,  <42.296478, 38.850925, 29.524282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612358, 39.031719, 29.690214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287452, 0.869965, -0.400665,
		-0.541982, 0.197161, 0.816935,
		0.789700, 0.451983, 0.414831,
		42.849270, 39.167313, 29.814663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088467, 39.535255, 29.802473>,  <42.296478, 38.850925, 29.524282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088467, 39.535255, 29.802473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483532, 39.595547, 29.785498>,  <42.720570, 39.631721, 29.775312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483532, 39.595547, 29.785498>,  <42.088467, 39.535255, 29.802473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483532, 39.595547, 29.785498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155224, 0.906687, -0.392205,
		-0.020638, 0.393954, 0.918898,
		0.987664, 0.150729, -0.042438,
		42.779831, 39.640766, 29.772766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.492142, 38.803844, 43.388813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407425, 38.424168, 43.481915>,  <37.356594, 38.196362, 43.537773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407425, 38.424168, 43.481915>,  <37.492142, 38.803844, 43.388813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407425, 38.424168, 43.481915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043417, -0.228780, -0.972510,
		0.976350, -0.216076, 0.007243,
		-0.211793, -0.949195, 0.232750,
		37.343887, 38.139408, 43.551739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015873, 38.434135, 43.011330>,  <37.492142, 38.803844, 43.388813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015873, 38.434135, 43.011330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726433, 38.170658, 43.093811>,  <37.552769, 38.012569, 43.143299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726433, 38.170658, 43.093811>,  <38.015873, 38.434135, 43.011330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726433, 38.170658, 43.093811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001009, -0.299757, -0.954015,
		0.690218, -0.690118, 0.217569,
		-0.723601, -0.658698, 0.206201,
		37.509354, 37.973049, 43.155670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192139, 37.783733, 42.790222>,  <38.015873, 38.434135, 43.011330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192139, 37.783733, 42.790222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801525, 37.722309, 42.850632>,  <37.567158, 37.685455, 42.886879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801525, 37.722309, 42.850632>,  <38.192139, 37.783733, 42.790222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801525, 37.722309, 42.850632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026074, -0.611745, -0.790625,
		0.213796, -0.776007, 0.593383,
		-0.976530, -0.153561, 0.151023,
		37.508568, 37.676243, 42.895939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116989, 37.008736, 42.688690>,  <38.192139, 37.783733, 42.790222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116989, 37.008736, 42.688690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781013, 37.219223, 42.635624>,  <37.579430, 37.345516, 42.603786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781013, 37.219223, 42.635624>,  <38.116989, 37.008736, 42.688690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781013, 37.219223, 42.635624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209252, -0.539596, -0.815506,
		-0.500715, -0.657216, 0.563340,
		-0.839939, 0.526216, -0.132660,
		37.529034, 37.377087, 42.595825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782887, 36.588760, 42.394890>,  <38.116989, 37.008736, 42.688690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782887, 36.588760, 42.394890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551323, 36.905254, 42.316086>,  <37.412384, 37.095150, 42.268803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551323, 36.905254, 42.316086>,  <37.782887, 36.588760, 42.394890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551323, 36.905254, 42.316086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317926, -0.441527, -0.839034,
		-0.750855, -0.423092, 0.507158,
		-0.578912, 0.791232, -0.197011,
		37.377647, 37.142624, 42.256981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059757, 36.376961, 42.315357>,  <37.782887, 36.588760, 42.394890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059757, 36.376961, 42.315357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123009, 36.720253, 42.120037>,  <37.160957, 36.926228, 42.002846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123009, 36.720253, 42.120037>,  <37.059757, 36.376961, 42.315357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123009, 36.720253, 42.120037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300957, -0.429107, -0.851640,
		-0.940437, 0.281624, 0.190437,
		0.158125, 0.858228, -0.488305,
		37.170444, 36.977722, 41.973545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458794, 36.512070, 42.026062>,  <37.059757, 36.376961, 42.315357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458794, 36.512070, 42.026062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726555, 36.712238, 41.806435>,  <36.887211, 36.832340, 41.674656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726555, 36.712238, 41.806435>,  <36.458794, 36.512070, 42.026062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726555, 36.712238, 41.806435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395130, -0.386051, -0.833569,
		-0.629106, 0.774946, -0.060690,
		0.669401, 0.500423, -0.549072,
		36.927376, 36.862366, 41.641712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045296, 36.681805, 41.362652>,  <36.458794, 36.512070, 42.026062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045296, 36.681805, 41.362652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432121, 36.757153, 41.294189>,  <36.664219, 36.802361, 41.253113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432121, 36.757153, 41.294189>,  <36.045296, 36.681805, 41.362652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432121, 36.757153, 41.294189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108926, -0.301453, -0.947239,
		-0.230030, 0.934688, -0.271007,
		0.967068, 0.188373, -0.171155,
		36.722240, 36.813663, 41.242844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047596, 37.123135, 40.869705>,  <36.045296, 36.681805, 41.362652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047596, 37.123135, 40.869705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403847, 36.942558, 40.847866>,  <36.617596, 36.834213, 40.834763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403847, 36.942558, 40.847866>,  <36.047596, 37.123135, 40.869705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403847, 36.942558, 40.847866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110763, -0.098911, -0.988913,
		0.441038, 0.886800, -0.138097,
		0.890627, -0.451444, -0.054601,
		36.671036, 36.807125, 40.831486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349285, 37.397377, 40.299210>,  <36.047596, 37.123135, 40.869705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349285, 37.397377, 40.299210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576256, 37.073154, 40.357204>,  <36.712437, 36.878620, 40.392002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576256, 37.073154, 40.357204>,  <36.349285, 37.397377, 40.299210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576256, 37.073154, 40.357204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000311, -0.176294, -0.984338,
		0.823426, 0.558491, -0.100285,
		0.567424, -0.810560, 0.144991,
		36.746483, 36.829987, 40.400703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937271, 37.400208, 39.802662>,  <36.349285, 37.397377, 40.299210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937271, 37.400208, 39.802662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880398, 37.014008, 39.889923>,  <36.846275, 36.782288, 39.942280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880398, 37.014008, 39.889923>,  <36.937271, 37.400208, 39.802662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880398, 37.014008, 39.889923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202496, -0.187362, -0.961193,
		0.968907, -0.180837, -0.168871,
		-0.142179, -0.965502, 0.218155,
		36.837746, 36.724358, 39.955368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354122, 37.049950, 39.164452>,  <36.937271, 37.400208, 39.802662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354122, 37.049950, 39.164452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114971, 36.774643, 39.328808>,  <36.971481, 36.609459, 39.427422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114971, 36.774643, 39.328808>,  <37.354122, 37.049950, 39.164452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114971, 36.774643, 39.328808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168802, -0.392996, -0.903913,
		0.783614, -0.609787, 0.118782,
		-0.597875, -0.688269, 0.410891,
		36.935608, 36.568161, 39.452076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592873, 36.345459, 38.941853>,  <37.354122, 37.049950, 39.164452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592873, 36.345459, 38.941853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206284, 36.321320, 39.041691>,  <36.974331, 36.306835, 39.101593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206284, 36.321320, 39.041691>,  <37.592873, 36.345459, 38.941853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206284, 36.321320, 39.041691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200359, -0.430733, -0.879958,
		0.160611, -0.900460, 0.404198,
		-0.966468, -0.060346, 0.249596,
		36.916344, 36.303215, 39.116570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398388, 35.767357, 38.620937>,  <37.592873, 36.345459, 38.941853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398388, 35.767357, 38.620937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069744, 35.982929, 38.695244>,  <36.872559, 36.112274, 38.739830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069744, 35.982929, 38.695244>,  <37.398388, 35.767357, 38.620937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069744, 35.982929, 38.695244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360506, -0.238788, -0.901674,
		-0.441583, -0.807794, 0.390479,
		-0.821608, 0.538933, 0.185770,
		36.823261, 36.144608, 38.750977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056591, 35.314262, 38.583027>,  <37.398388, 35.767357, 38.620937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056591, 35.314262, 38.583027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377617, 35.075687, 38.578072>,  <38.570232, 34.932541, 38.575096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377617, 35.075687, 38.578072>,  <38.056591, 35.314262, 38.583027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377617, 35.075687, 38.578072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284921, -0.401469, 0.870427,
		-0.524132, -0.695041, -0.492142,
		0.802562, -0.596440, -0.012390,
		38.618385, 34.896755, 38.574356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945328, 34.657211, 38.815819>,  <38.056591, 35.314262, 38.583027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945328, 34.657211, 38.815819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333241, 34.679638, 38.910793>,  <38.565990, 34.693092, 38.967777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333241, 34.679638, 38.910793>,  <37.945328, 34.657211, 38.815819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333241, 34.679638, 38.910793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198584, -0.383928, 0.901756,
		0.141712, -0.921660, -0.361194,
		0.969785, 0.056063, 0.237434,
		38.624176, 34.696457, 38.982025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062531, 34.152115, 39.237450>,  <37.945328, 34.657211, 38.815819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062531, 34.152115, 39.237450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421803, 34.319843, 39.290279>,  <38.637367, 34.420479, 39.321976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421803, 34.319843, 39.290279>,  <38.062531, 34.152115, 39.237450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421803, 34.319843, 39.290279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009897, -0.281056, 0.959640,
		0.439514, -0.863238, -0.248290,
		0.898181, 0.419318, 0.132072,
		38.691257, 34.445641, 39.329903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443405, 33.651859, 39.484547>,  <38.062531, 34.152115, 39.237450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443405, 33.651859, 39.484547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638443, 33.979092, 39.606525>,  <38.755466, 34.175430, 39.679714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638443, 33.979092, 39.606525>,  <38.443405, 33.651859, 39.484547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638443, 33.979092, 39.606525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112409, -0.405200, 0.907291,
		0.865805, -0.408109, -0.289532,
		0.487592, 0.818083, 0.304950,
		38.784721, 34.224518, 39.698009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047806, 33.442131, 39.922688>,  <38.443405, 33.651859, 39.484547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047806, 33.442131, 39.922688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980270, 33.827244, 40.007107>,  <38.939751, 34.058311, 40.057758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980270, 33.827244, 40.007107>,  <39.047806, 33.442131, 39.922688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980270, 33.827244, 40.007107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148278, -0.186873, 0.971129,
		0.974427, 0.195255, -0.111209,
		-0.168836, 0.962784, 0.211046,
		38.929619, 34.116077, 40.070419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606789, 33.762871, 40.400028>,  <39.047806, 33.442131, 39.922688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606789, 33.762871, 40.400028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257481, 33.949635, 40.455738>,  <39.047897, 34.061691, 40.489162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257481, 33.949635, 40.455738>,  <39.606789, 33.762871, 40.400028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257481, 33.949635, 40.455738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064137, -0.173195, 0.982797,
		0.482999, 0.867178, 0.121300,
		-0.873269, 0.466910, 0.139271,
		38.995499, 34.089706, 40.497520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584606, 33.895191, 41.137207>,  <39.606789, 33.762871, 40.400028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584606, 33.895191, 41.137207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213169, 34.008373, 41.041157>,  <38.990307, 34.076283, 40.983528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213169, 34.008373, 41.041157>,  <39.584606, 33.895191, 41.137207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213169, 34.008373, 41.041157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311812, -0.244018, 0.918275,
		0.201238, 0.927572, 0.314822,
		-0.928589, 0.282957, -0.240123,
		38.934593, 34.093262, 40.969120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372074, 34.518871, 41.567799>,  <39.584606, 33.895191, 41.137207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372074, 34.518871, 41.567799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051239, 34.308319, 41.454967>,  <38.858738, 34.181988, 41.387268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051239, 34.308319, 41.454967>,  <39.372074, 34.518871, 41.567799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051239, 34.308319, 41.454967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296954, -0.058263, 0.953112,
		-0.518139, 0.848248, -0.109580,
		-0.802091, -0.526385, -0.282079,
		38.810612, 34.150402, 41.370342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785686, 34.881752, 41.920307>,  <39.372074, 34.518871, 41.567799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785686, 34.881752, 41.920307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679852, 34.514164, 41.803352>,  <38.616348, 34.293610, 41.733181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679852, 34.514164, 41.803352>,  <38.785686, 34.881752, 41.920307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679852, 34.514164, 41.803352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367015, -0.184415, 0.911752,
		-0.891791, 0.348551, -0.288481,
		-0.264591, -0.918969, -0.292383,
		38.600475, 34.238472, 41.715637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077209, 34.757957, 42.028816>,  <38.785686, 34.881752, 41.920307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077209, 34.757957, 42.028816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255928, 34.400230, 42.038433>,  <38.363159, 34.185596, 42.044205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255928, 34.400230, 42.038433>,  <38.077209, 34.757957, 42.028816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255928, 34.400230, 42.038433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512930, -0.234051, 0.825907,
		-0.732992, -0.381345, -0.563293,
		0.446795, -0.894313, 0.024046,
		38.389965, 34.131935, 42.045647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497128, 34.398766, 42.198814>,  <38.077209, 34.757957, 42.028816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497128, 34.398766, 42.198814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827896, 34.186047, 42.271896>,  <38.026360, 34.058414, 42.315746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827896, 34.186047, 42.271896>,  <37.497128, 34.398766, 42.198814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827896, 34.186047, 42.271896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364909, -0.260294, 0.893918,
		-0.427830, -0.805874, -0.409303,
		0.826924, -0.531803, 0.182709,
		38.075974, 34.026505, 42.326710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269634, 33.887394, 42.647663>,  <37.497128, 34.398766, 42.198814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269634, 33.887394, 42.647663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662487, 33.851730, 42.713951>,  <37.898201, 33.830334, 42.753723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662487, 33.851730, 42.713951>,  <37.269634, 33.887394, 42.647663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662487, 33.851730, 42.713951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187153, -0.370738, 0.909685,
		-0.019666, -0.924448, -0.380801,
		0.982134, -0.089158, 0.165722,
		37.957127, 33.824982, 42.763668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377457, 33.170002, 42.904675>,  <37.269634, 33.887394, 42.647663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377457, 33.170002, 42.904675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699181, 33.375126, 43.024746>,  <37.892216, 33.498199, 43.096790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699181, 33.375126, 43.024746>,  <37.377457, 33.170002, 42.904675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699181, 33.375126, 43.024746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160798, -0.298491, 0.940769,
		0.572035, -0.804942, -0.157622,
		0.804314, 0.512807, 0.300180,
		37.940475, 33.528969, 43.114799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607582, 32.789688, 43.468952>,  <37.377457, 33.170002, 42.904675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607582, 32.789688, 43.468952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790024, 33.140156, 43.531292>,  <37.899490, 33.350437, 43.568695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790024, 33.140156, 43.531292>,  <37.607582, 32.789688, 43.468952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790024, 33.140156, 43.531292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057804, -0.145589, 0.987655,
		0.888047, -0.459482, -0.015757,
		0.456103, 0.876174, 0.155850,
		37.926853, 33.403008, 43.578049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542061, 32.090347, 43.386326>,  <37.607582, 32.789688, 43.468952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542061, 32.090347, 43.386326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224789, 31.889175, 43.523685>,  <37.034424, 31.768473, 43.606102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224789, 31.889175, 43.523685>,  <37.542061, 32.090347, 43.386326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224789, 31.889175, 43.523685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422846, 0.049035, -0.904874,
		0.438246, -0.862937, -0.251554,
		-0.793184, -0.502926, 0.343400,
		36.986832, 31.738298, 43.626705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377796, 31.631550, 42.887524>,  <37.542061, 32.090347, 43.386326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377796, 31.631550, 42.887524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031773, 31.678698, 43.082573>,  <36.824158, 31.706987, 43.199600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031773, 31.678698, 43.082573>,  <37.377796, 31.631550, 42.887524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031773, 31.678698, 43.082573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497633, -0.078634, -0.863816,
		-0.063465, -0.989912, 0.126674,
		-0.865063, 0.117859, 0.487622,
		36.772255, 31.714058, 43.228859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945675, 31.084793, 42.666702>,  <37.377796, 31.631550, 42.887524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945675, 31.084793, 42.666702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708439, 31.366631, 42.822544>,  <36.566097, 31.535732, 42.916050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708439, 31.366631, 42.822544>,  <36.945675, 31.084793, 42.666702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708439, 31.366631, 42.822544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600664, -0.064993, -0.796856,
		-0.536137, -0.706630, 0.461770,
		-0.593094, 0.704592, 0.389602,
		36.530510, 31.578009, 42.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431194, 31.053532, 42.153397>,  <36.945675, 31.084793, 42.666702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431194, 31.053532, 42.153397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292542, 31.342176, 42.393105>,  <36.209351, 31.515364, 42.536930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292542, 31.342176, 42.393105>,  <36.431194, 31.053532, 42.153397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292542, 31.342176, 42.393105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774511, 0.140213, -0.616825,
		-0.529133, -0.677951, 0.510294,
		-0.346627, 0.721611, 0.599272,
		36.188553, 31.558661, 42.572887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698956, 30.888191, 42.235985>,  <36.431194, 31.053532, 42.153397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698956, 30.888191, 42.235985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774887, 31.279423, 42.270222>,  <35.820446, 31.514162, 42.290764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774887, 31.279423, 42.270222>,  <35.698956, 30.888191, 42.235985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774887, 31.279423, 42.270222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543426, 0.177271, -0.820526,
		-0.817713, 0.109244, 0.565165,
		0.189825, 0.978080, 0.085590,
		35.831833, 31.572847, 42.295898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090939, 31.251682, 42.252254>,  <35.698956, 30.888191, 42.235985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090939, 31.251682, 42.252254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362812, 31.520325, 42.134285>,  <35.525936, 31.681511, 42.063503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362812, 31.520325, 42.134285>,  <35.090939, 31.251682, 42.252254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362812, 31.520325, 42.134285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617159, 0.306314, -0.724767,
		-0.396419, 0.674624, 0.622683,
		0.679682, 0.671606, -0.294921,
		35.566715, 31.721806, 42.045807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678978, 31.963430, 42.134922>,  <35.090939, 31.251682, 42.252254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678978, 31.963430, 42.134922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020580, 31.986984, 41.928154>,  <35.225540, 32.001118, 41.804092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020580, 31.986984, 41.928154>,  <34.678978, 31.963430, 42.134922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020580, 31.986984, 41.928154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501181, 0.359750, -0.787018,
		0.139618, 0.931188, 0.336741,
		0.854005, 0.058887, -0.516922,
		35.276783, 32.004650, 41.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668110, 32.597210, 41.876019>,  <34.678978, 31.963430, 42.134922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668110, 32.597210, 41.876019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932823, 32.422737, 41.632122>,  <35.091652, 32.318054, 41.485783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932823, 32.422737, 41.632122>,  <34.668110, 32.597210, 41.876019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932823, 32.422737, 41.632122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361723, 0.526610, -0.769311,
		0.656655, 0.729676, 0.190725,
		0.661786, -0.436182, -0.609742,
		35.131359, 32.291882, 41.449200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025837, 33.172390, 41.404758>,  <34.668110, 32.597210, 41.876019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025837, 33.172390, 41.404758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102364, 32.832119, 41.208904>,  <35.148281, 32.627956, 41.091393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102364, 32.832119, 41.208904>,  <35.025837, 33.172390, 41.404758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102364, 32.832119, 41.208904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283677, 0.429639, -0.857285,
		0.939641, 0.302911, -0.159121,
		0.191317, -0.850679, -0.489636,
		35.159760, 32.576916, 41.062012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357410, 33.425312, 40.750858>,  <35.025837, 33.172390, 41.404758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357410, 33.425312, 40.750858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240051, 33.057251, 40.647144>,  <35.169636, 32.836414, 40.584915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240051, 33.057251, 40.647144>,  <35.357410, 33.425312, 40.750858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240051, 33.057251, 40.647144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132353, 0.307709, -0.942230,
		0.946783, -0.242133, -0.212068,
		-0.293400, -0.920156, -0.259287,
		35.152031, 32.781204, 40.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768681, 33.126064, 40.127430>,  <35.357410, 33.425312, 40.750858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768681, 33.126064, 40.127430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389732, 32.998016, 40.128754>,  <35.162361, 32.921188, 40.129547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389732, 32.998016, 40.128754>,  <35.768681, 33.126064, 40.127430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389732, 32.998016, 40.128754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022193, 0.055351, -0.998220,
		0.319363, -0.945760, -0.059543,
		-0.947372, -0.320116, 0.003312,
		35.105522, 32.901981, 40.129745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648544, 32.688198, 39.459530>,  <35.768681, 33.126064, 40.127430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648544, 32.688198, 39.459530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296486, 32.791882, 39.618607>,  <35.085251, 32.854092, 39.714054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296486, 32.791882, 39.618607>,  <35.648544, 32.688198, 39.459530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296486, 32.791882, 39.618607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391540, 0.077304, -0.916908,
		-0.268417, -0.962722, 0.033454,
		-0.880141, 0.259212, 0.397694,
		35.032444, 32.869644, 39.737915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.268578, 30.870461, 47.261986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879379, 30.960552, 47.282215>,  <37.645863, 31.014608, 47.294353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879379, 30.960552, 47.282215>,  <38.268578, 30.870461, 47.261986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879379, 30.960552, 47.282215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032390, 0.083706, -0.995964,
		-0.228556, -0.970703, -0.074150,
		-0.972992, 0.225231, 0.050573,
		37.587482, 31.028122, 47.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904217, 30.400618, 46.838108>,  <38.268578, 30.870461, 47.261986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904217, 30.400618, 46.838108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672337, 30.723940, 46.879265>,  <37.533207, 30.917933, 46.903957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672337, 30.723940, 46.879265>,  <37.904217, 30.400618, 46.838108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672337, 30.723940, 46.879265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048609, 0.091745, -0.994596,
		-0.813377, -0.581571, -0.013894,
		-0.579703, 0.808306, 0.102892,
		37.498425, 30.966431, 46.910133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384895, 30.211620, 46.393295>,  <37.904217, 30.400618, 46.838108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384895, 30.211620, 46.393295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356136, 30.606808, 46.448063>,  <37.338882, 30.843920, 46.480923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356136, 30.606808, 46.448063>,  <37.384895, 30.211620, 46.393295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356136, 30.606808, 46.448063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087915, 0.130467, -0.987547,
		-0.993530, -0.083037, 0.077477,
		-0.071894, 0.987969, 0.136923,
		37.334568, 30.903198, 46.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033283, 30.355808, 45.804806>,  <37.384895, 30.211620, 46.393295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033283, 30.355808, 45.804806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103745, 30.726376, 45.937901>,  <37.146023, 30.948717, 46.017757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103745, 30.726376, 45.937901>,  <37.033283, 30.355808, 45.804806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103745, 30.726376, 45.937901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160782, 0.360563, -0.918773,
		-0.971142, 0.108350, 0.212468,
		0.176157, 0.926420, 0.332737,
		37.156593, 31.004301, 46.037724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479511, 30.807386, 45.615471>,  <37.033283, 30.355808, 45.804806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479511, 30.807386, 45.615471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815651, 31.021101, 45.652027>,  <37.017334, 31.149330, 45.673962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815651, 31.021101, 45.652027>,  <36.479511, 30.807386, 45.615471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815651, 31.021101, 45.652027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101746, 0.321080, -0.941571,
		-0.532413, 0.781949, 0.324181,
		0.840348, 0.534288, 0.091386,
		37.067757, 31.181387, 45.679443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300068, 31.605629, 45.494972>,  <36.479511, 30.807386, 45.615471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300068, 31.605629, 45.494972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684116, 31.517586, 45.426025>,  <36.914547, 31.464760, 45.384655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684116, 31.517586, 45.426025>,  <36.300068, 31.605629, 45.494972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684116, 31.517586, 45.426025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043382, 0.491794, -0.869630,
		0.276182, 0.842432, 0.462636,
		0.960126, -0.220106, -0.172371,
		36.972153, 31.451553, 45.374313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669827, 32.164440, 45.138222>,  <36.300068, 31.605629, 45.494972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669827, 32.164440, 45.138222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898220, 31.861595, 45.011250>,  <37.035255, 31.679888, 44.935066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898220, 31.861595, 45.011250>,  <36.669827, 32.164440, 45.138222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898220, 31.861595, 45.011250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068115, 0.341632, -0.937362,
		0.818134, 0.556836, 0.143494,
		0.570979, -0.757114, -0.317430,
		37.069515, 31.634460, 44.916019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065464, 32.436760, 44.655628>,  <36.669827, 32.164440, 45.138222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065464, 32.436760, 44.655628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083836, 32.048065, 44.563007>,  <37.094860, 31.814848, 44.507435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083836, 32.048065, 44.563007>,  <37.065464, 32.436760, 44.655628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083836, 32.048065, 44.563007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232671, 0.215013, -0.948490,
		0.971470, 0.097438, -0.216220,
		0.045929, -0.971738, -0.231550,
		37.097614, 31.756544, 44.493542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322540, 32.416286, 44.027645>,  <37.065464, 32.436760, 44.655628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322540, 32.416286, 44.027645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174244, 32.046864, 44.066811>,  <37.085266, 31.825209, 44.090309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174244, 32.046864, 44.066811>,  <37.322540, 32.416286, 44.027645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174244, 32.046864, 44.066811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348754, 0.040732, -0.936329,
		0.860769, -0.381280, -0.337197,
		-0.370738, -0.923562, 0.097912,
		37.063023, 31.769794, 44.096184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072041, 32.576691, 44.000664>,  <37.322540, 32.416286, 44.027645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072041, 32.576691, 44.000664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033276, 32.974598, 44.013569>,  <38.010017, 33.213345, 44.021313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033276, 32.974598, 44.013569>,  <38.072041, 32.576691, 44.000664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033276, 32.974598, 44.013569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086737, -0.040735, 0.995398,
		0.991506, 0.093668, 0.090231,
		-0.096912, 0.994770, 0.032264,
		38.004204, 33.273029, 44.023247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344788, 32.830734, 44.572670>,  <38.072041, 32.576691, 44.000664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344788, 32.830734, 44.572670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165642, 33.175789, 44.478634>,  <38.058155, 33.382824, 44.422211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165642, 33.175789, 44.478634>,  <38.344788, 32.830734, 44.572670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165642, 33.175789, 44.478634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028444, 0.249060, 0.968070,
		0.893648, 0.440254, -0.087009,
		-0.447867, 0.862639, -0.235095,
		38.031281, 33.434582, 44.408104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786812, 33.393761, 44.740067>,  <38.344788, 32.830734, 44.572670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786812, 33.393761, 44.740067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396069, 33.478077, 44.754616>,  <38.161625, 33.528667, 44.763344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396069, 33.478077, 44.754616>,  <38.786812, 33.393761, 44.740067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396069, 33.478077, 44.754616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093140, 0.266092, 0.959437,
		0.192566, 0.940617, -0.279566,
		-0.976854, 0.210793, 0.036369,
		38.103012, 33.541313, 44.765526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677505, 34.068855, 45.012409>,  <38.786812, 33.393761, 44.740067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677505, 34.068855, 45.012409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342960, 33.871304, 45.107555>,  <38.142235, 33.752773, 45.164642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342960, 33.871304, 45.107555>,  <38.677505, 34.068855, 45.012409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342960, 33.871304, 45.107555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082299, 0.315882, 0.945223,
		-0.541962, 0.810126, -0.223546,
		-0.836363, -0.493877, 0.237868,
		38.092052, 33.723141, 45.178917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321461, 34.431091, 45.591610>,  <38.677505, 34.068855, 45.012409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321461, 34.431091, 45.591610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105469, 34.095181, 45.569008>,  <37.975872, 33.893635, 45.555447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105469, 34.095181, 45.569008>,  <38.321461, 34.431091, 45.591610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105469, 34.095181, 45.569008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201119, 0.063544, 0.977504,
		-0.817297, 0.539196, -0.203208,
		-0.539979, -0.839780, -0.056508,
		37.943474, 33.843246, 45.552055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695900, 34.621414, 45.956207>,  <38.321461, 34.431091, 45.591610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695900, 34.621414, 45.956207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721466, 34.222427, 45.943748>,  <37.736805, 33.983036, 45.936275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721466, 34.222427, 45.943748>,  <37.695900, 34.621414, 45.956207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721466, 34.222427, 45.943748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145113, -0.040164, 0.988600,
		-0.987349, -0.058663, -0.147313,
		0.063911, -0.997469, -0.031143,
		37.740639, 33.923187, 45.934406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105942, 34.380657, 46.212822>,  <37.695900, 34.621414, 45.956207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105942, 34.380657, 46.212822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357368, 34.073856, 46.264385>,  <37.508224, 33.889774, 46.295322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357368, 34.073856, 46.264385>,  <37.105942, 34.380657, 46.212822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357368, 34.073856, 46.264385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278542, -0.067250, 0.958066,
		-0.726170, -0.638111, -0.255913,
		0.628563, -0.767002, 0.128906,
		37.545937, 33.843758, 46.303059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752861, 34.012619, 46.658722>,  <37.105942, 34.380657, 46.212822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752861, 34.012619, 46.658722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127735, 33.877926, 46.695175>,  <37.352657, 33.797112, 46.717049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127735, 33.877926, 46.695175>,  <36.752861, 34.012619, 46.658722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127735, 33.877926, 46.695175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164264, -0.195498, 0.966849,
		-0.307751, -0.921082, -0.238530,
		0.937180, -0.336731, 0.091136,
		37.408890, 33.776909, 46.722515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655655, 33.351929, 47.066414>,  <36.752861, 34.012619, 46.658722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655655, 33.351929, 47.066414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.039894, 33.454250, 47.109909>,  <37.270435, 33.515644, 47.136005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.039894, 33.454250, 47.109909>,  <36.655655, 33.351929, 47.066414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039894, 33.454250, 47.109909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077690, -0.128509, 0.988661,
		0.266873, -0.958150, -0.103572,
		0.960595, 0.255800, 0.108734,
		37.328072, 33.530991, 47.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912071, 32.929504, 47.565224>,  <36.655655, 33.351929, 47.066414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912071, 32.929504, 47.565224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193623, 33.213631, 47.564571>,  <37.362553, 33.384106, 47.564178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193623, 33.213631, 47.564571>,  <36.912071, 32.929504, 47.565224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193623, 33.213631, 47.564571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065545, 0.067236, 0.995582,
		0.707291, -0.700660, 0.093884,
		0.703877, 0.710320, -0.001631,
		37.404785, 33.426727, 47.564083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569710, 32.688225, 47.880272>,  <36.912071, 32.929504, 47.565224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569710, 32.688225, 47.880272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576298, 33.086487, 47.916950>,  <37.580250, 33.325443, 47.938957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576298, 33.086487, 47.916950>,  <37.569710, 32.688225, 47.880272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576298, 33.086487, 47.916950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172538, -0.087500, 0.981109,
		0.984865, -0.031983, 0.170346,
		0.016474, 0.995651, 0.091694,
		37.581242, 33.385181, 47.944458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163025, 32.853577, 48.312508>,  <37.569710, 32.688225, 47.880272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163025, 32.853577, 48.312508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935768, 33.181915, 48.335949>,  <37.799416, 33.378918, 48.350014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935768, 33.181915, 48.335949>,  <38.163025, 32.853577, 48.312508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935768, 33.181915, 48.335949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027112, -0.089848, 0.995587,
		0.822485, 0.564044, 0.073301,
		-0.568140, 0.820842, 0.058606,
		37.765327, 33.428169, 48.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461174, 33.191082, 48.841484>,  <38.163025, 32.853577, 48.312508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461174, 33.191082, 48.841484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115570, 33.383366, 48.781620>,  <37.908207, 33.498737, 48.745701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115570, 33.383366, 48.781620>,  <38.461174, 33.191082, 48.841484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115570, 33.383366, 48.781620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120532, 0.091116, 0.988519,
		0.488828, 0.872133, -0.020785,
		-0.864013, 0.480711, -0.149661,
		37.856365, 33.527580, 48.736721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458080, 33.881359, 49.030491>,  <38.461174, 33.191082, 48.841484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458080, 33.881359, 49.030491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.085583, 33.742260, 49.074062>,  <37.862083, 33.658802, 49.100204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.085583, 33.742260, 49.074062>,  <38.458080, 33.881359, 49.030491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085583, 33.742260, 49.074062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065027, 0.135547, 0.988635,
		-0.358557, 0.927740, -0.103614,
		-0.931240, -0.347745, 0.108929,
		37.806210, 33.637936, 49.106743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.928068, 34.381096, 49.415298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189575, 34.123474, 49.256413>,  <32.346478, 33.968899, 49.161083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189575, 34.123474, 49.256413>,  <31.928068, 34.381096, 49.415298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189575, 34.123474, 49.256413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041508, 0.554663, -0.831039,
		0.755557, 0.526818, 0.389353,
		0.653767, -0.644059, -0.397212,
		32.385704, 33.930256, 49.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597794, 34.737503, 49.106525>,  <31.928068, 34.381096, 49.415298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597794, 34.737503, 49.106525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563358, 34.388863, 48.913486>,  <32.542698, 34.179676, 48.797665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563358, 34.388863, 48.913486>,  <32.597794, 34.737503, 49.106525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563358, 34.388863, 48.913486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064123, 0.478540, -0.875721,
		0.994222, -0.106334, 0.014694,
		-0.086087, -0.871604, -0.482593,
		32.537533, 34.127380, 48.768707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014301, 34.890488, 48.513615>,  <32.597794, 34.737503, 49.106525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014301, 34.890488, 48.513615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783703, 34.575401, 48.426758>,  <32.645344, 34.386349, 48.374645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783703, 34.575401, 48.426758>,  <33.014301, 34.890488, 48.513615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783703, 34.575401, 48.426758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083012, 0.320834, -0.943491,
		0.812870, -0.525897, -0.250351,
		-0.576500, -0.787717, -0.217141,
		32.610752, 34.339085, 48.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393089, 34.463799, 47.895355>,  <33.014301, 34.890488, 48.513615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393089, 34.463799, 47.895355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001297, 34.390133, 47.928085>,  <32.766220, 34.345932, 47.947723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001297, 34.390133, 47.928085>,  <33.393089, 34.463799, 47.895355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001297, 34.390133, 47.928085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128710, 0.259239, -0.957199,
		0.155068, -0.948092, -0.277624,
		-0.979483, -0.184164, 0.081830,
		32.707451, 34.334885, 47.952633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212811, 34.071037, 47.321831>,  <33.393089, 34.463799, 47.895355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212811, 34.071037, 47.321831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860394, 34.227665, 47.427986>,  <32.648941, 34.321644, 47.491680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860394, 34.227665, 47.427986>,  <33.212811, 34.071037, 47.321831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860394, 34.227665, 47.427986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213846, 0.170734, -0.961832,
		-0.421937, -0.904169, -0.066688,
		-0.881044, 0.391572, 0.265392,
		32.596081, 34.345135, 47.507603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692944, 33.837811, 46.798126>,  <33.212811, 34.071037, 47.321831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692944, 33.837811, 46.798126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538200, 34.171539, 46.955227>,  <32.445354, 34.371777, 47.049488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538200, 34.171539, 46.955227>,  <32.692944, 33.837811, 46.798126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538200, 34.171539, 46.955227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277211, 0.300990, -0.912447,
		-0.879486, -0.461862, 0.114842,
		-0.386858, 0.834319, 0.392750,
		32.422142, 34.421837, 47.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039085, 33.982765, 46.436134>,  <32.692944, 33.837811, 46.798126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039085, 33.982765, 46.436134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.128109, 34.329845, 46.613930>,  <32.181522, 34.538094, 46.720608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.128109, 34.329845, 46.613930>,  <32.039085, 33.982765, 46.436134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128109, 34.329845, 46.613930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370606, 0.496995, -0.784632,
		-0.901732, 0.009894, 0.432183,
		0.222556, 0.867697, 0.444490,
		32.194874, 34.590153, 46.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451315, 34.367008, 46.360298>,  <32.039085, 33.982765, 46.436134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451315, 34.367008, 46.360298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775854, 34.599735, 46.382919>,  <31.970577, 34.739372, 46.396492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775854, 34.599735, 46.382919>,  <31.451315, 34.367008, 46.360298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775854, 34.599735, 46.382919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170226, 0.327709, -0.929317,
		-0.559226, 0.744375, 0.364928,
		0.811350, 0.581818, 0.056552,
		32.019260, 34.774281, 46.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249992, 34.924358, 46.013924>,  <31.451315, 34.367008, 46.360298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249992, 34.924358, 46.013924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.641863, 35.003036, 46.029675>,  <31.876986, 35.050243, 46.039124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.641863, 35.003036, 46.029675>,  <31.249992, 34.924358, 46.013924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641863, 35.003036, 46.029675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045253, 0.407941, -0.911886,
		-0.195426, 0.891569, 0.408551,
		0.979674, 0.196694, 0.039376,
		31.935764, 35.062046, 46.041489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271872, 35.497551, 45.755505>,  <31.249992, 34.924358, 46.013924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271872, 35.497551, 45.755505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645977, 35.368587, 45.697083>,  <31.870440, 35.291210, 45.662029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645977, 35.368587, 45.697083>,  <31.271872, 35.497551, 45.755505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645977, 35.368587, 45.697083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047852, 0.293674, -0.954707,
		0.350701, 0.899892, 0.259235,
		0.935264, -0.322412, -0.146053,
		31.926556, 35.271862, 45.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594353, 36.018406, 45.415062>,  <31.271872, 35.497551, 45.755505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594353, 36.018406, 45.415062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812763, 35.693565, 45.332748>,  <31.943810, 35.498661, 45.283360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812763, 35.693565, 45.332748>,  <31.594353, 36.018406, 45.415062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812763, 35.693565, 45.332748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134575, 0.157422, -0.978319,
		0.826889, 0.561881, -0.023332,
		0.546026, -0.812101, -0.205785,
		31.976570, 35.449936, 45.271011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047779, 36.268528, 44.900040>,  <31.594353, 36.018406, 45.415062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047779, 36.268528, 44.900040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046444, 35.868824, 44.884731>,  <32.045643, 35.629002, 44.875546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046444, 35.868824, 44.884731>,  <32.047779, 36.268528, 44.900040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046444, 35.868824, 44.884731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123039, 0.037566, -0.991691,
		0.992396, -0.008021, 0.122823,
		-0.003341, -0.999262, -0.038268,
		32.045441, 35.569046, 44.873253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617340, 36.355762, 44.452190>,  <32.047779, 36.268528, 44.900040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617340, 36.355762, 44.452190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446678, 35.994541, 44.472023>,  <32.344280, 35.777809, 44.483925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446678, 35.994541, 44.472023>,  <32.617340, 36.355762, 44.452190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446678, 35.994541, 44.472023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252636, -0.171645, -0.952215,
		0.868413, -0.393740, 0.301377,
		-0.426655, -0.903054, 0.049586,
		32.318680, 35.723625, 44.486900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091537, 35.858521, 44.291737>,  <32.617340, 36.355762, 44.452190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091537, 35.858521, 44.291737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723862, 35.758011, 44.170441>,  <32.503258, 35.697704, 44.097664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723862, 35.758011, 44.170441>,  <33.091537, 35.858521, 44.291737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723862, 35.758011, 44.170441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336260, -0.099943, -0.936451,
		0.204999, -0.962742, 0.176360,
		-0.919187, -0.251274, -0.303243,
		32.448105, 35.682629, 44.079468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804680, 36.043884, 44.434723>,  <33.091537, 35.858521, 44.291737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804680, 36.043884, 44.434723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023571, 36.378181, 44.416523>,  <34.154903, 36.578762, 44.405602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023571, 36.378181, 44.416523>,  <33.804680, 36.043884, 44.434723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023571, 36.378181, 44.416523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288096, -0.137040, 0.947745,
		0.785840, -0.531739, -0.315767,
		0.547225, 0.835747, -0.045501,
		34.187740, 36.628906, 44.402874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535194, 35.920128, 44.766293>,  <33.804680, 36.043884, 44.434723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535194, 35.920128, 44.766293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379234, 36.287998, 44.784977>,  <34.285660, 36.508720, 44.796188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379234, 36.287998, 44.784977>,  <34.535194, 35.920128, 44.766293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379234, 36.287998, 44.784977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124693, 0.002472, 0.992192,
		0.912375, 0.392681, -0.115641,
		-0.389901, 0.919671, 0.046709,
		34.262264, 36.563900, 44.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036526, 36.286934, 45.178715>,  <34.535194, 35.920128, 44.766293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036526, 36.286934, 45.178715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673862, 36.454002, 45.202446>,  <34.456264, 36.554245, 45.216686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673862, 36.454002, 45.202446>,  <35.036526, 36.286934, 45.178715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673862, 36.454002, 45.202446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119061, 0.118412, 0.985801,
		0.404715, 0.900849, -0.157087,
		-0.906659, 0.417671, 0.059333,
		34.401863, 36.579304, 45.220245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161606, 36.792168, 45.693104>,  <35.036526, 36.286934, 45.178715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161606, 36.792168, 45.693104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762733, 36.797073, 45.663498>,  <34.523411, 36.800018, 45.645737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762733, 36.797073, 45.663498>,  <35.161606, 36.792168, 45.693104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762733, 36.797073, 45.663498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070623, 0.179400, 0.981238,
		0.025312, 0.983700, -0.178028,
		-0.997182, 0.012264, -0.074012,
		34.463577, 36.800751, 45.641293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971619, 37.252762, 46.142792>,  <35.161606, 36.792168, 45.693104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971619, 37.252762, 46.142792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614563, 37.089310, 46.066669>,  <34.400330, 36.991238, 46.020996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614563, 37.089310, 46.066669>,  <34.971619, 37.252762, 46.142792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614563, 37.089310, 46.066669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292524, 0.203913, 0.934264,
		-0.342964, 0.889629, -0.301555,
		-0.892640, -0.408631, -0.190303,
		34.346771, 36.966721, 46.009579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488472, 37.633942, 46.477543>,  <34.971619, 37.252762, 46.142792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488472, 37.633942, 46.477543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298149, 37.289314, 46.406769>,  <34.183956, 37.082539, 46.364304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298149, 37.289314, 46.406769>,  <34.488472, 37.633942, 46.477543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298149, 37.289314, 46.406769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259397, -0.054757, 0.964217,
		-0.840427, 0.504680, -0.197435,
		-0.475811, -0.861568, -0.176931,
		34.155407, 37.030846, 46.353691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782532, 37.623333, 46.876225>,  <34.488472, 37.633942, 46.477543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782532, 37.623333, 46.876225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872959, 37.251205, 46.760712>,  <33.927216, 37.027927, 46.691402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872959, 37.251205, 46.760712>,  <33.782532, 37.623333, 46.876225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872959, 37.251205, 46.760712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313731, -0.350201, 0.882571,
		-0.922206, -0.108924, -0.371041,
		0.226072, -0.930320, -0.288785,
		33.940781, 36.972111, 46.674076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239330, 37.294220, 47.041084>,  <33.782532, 37.623333, 46.876225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239330, 37.294220, 47.041084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542263, 37.033924, 47.019203>,  <33.724022, 36.877747, 47.006073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542263, 37.033924, 47.019203>,  <33.239330, 37.294220, 47.041084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542263, 37.033924, 47.019203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174093, -0.281926, 0.943509,
		-0.629398, -0.705025, -0.326800,
		0.757331, -0.650736, -0.054704,
		33.769463, 36.838703, 47.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034393, 36.757057, 47.597965>,  <33.239330, 37.294220, 47.041084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034393, 36.757057, 47.597965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418949, 36.675217, 47.524349>,  <33.649681, 36.626114, 47.480179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418949, 36.675217, 47.524349>,  <33.034393, 36.757057, 47.597965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418949, 36.675217, 47.524349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093049, -0.387711, 0.917073,
		-0.258988, -0.898788, -0.353703,
		0.961388, -0.204599, -0.184044,
		33.707367, 36.613838, 47.469135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168293, 35.985031, 47.471260>,  <33.034393, 36.757057, 47.597965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168293, 35.985031, 47.471260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506481, 36.161846, 47.591118>,  <33.709393, 36.267937, 47.663033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506481, 36.161846, 47.591118>,  <33.168293, 35.985031, 47.471260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506481, 36.161846, 47.591118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031643, -0.601580, 0.798185,
		0.533085, -0.665360, -0.522605,
		0.845469, 0.442038, 0.299640,
		33.760120, 36.294456, 47.681011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726776, 35.450089, 47.564358>,  <33.168293, 35.985031, 47.471260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726776, 35.450089, 47.564358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796272, 35.771740, 47.791756>,  <33.837971, 35.964733, 47.928196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796272, 35.771740, 47.791756>,  <33.726776, 35.450089, 47.564358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796272, 35.771740, 47.791756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044881, -0.583139, 0.811131,
		0.983768, -0.115415, -0.137408,
		0.173745, 0.804132, 0.568494,
		33.848396, 36.012978, 47.962303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105976, 35.149426, 48.154068>,  <33.726776, 35.450089, 47.564358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105976, 35.149426, 48.154068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083969, 35.530453, 48.273792>,  <34.070766, 35.759068, 48.345627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083969, 35.530453, 48.273792>,  <34.105976, 35.149426, 48.154068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083969, 35.530453, 48.273792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341320, -0.263765, 0.902180,
		0.938336, 0.151792, -0.310620,
		-0.055013, 0.952569, 0.299310,
		34.067467, 35.816223, 48.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687252, 35.196651, 48.527634>,  <34.105976, 35.149426, 48.154068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687252, 35.196651, 48.527634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437172, 35.489407, 48.636047>,  <34.287125, 35.665058, 48.701096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437172, 35.489407, 48.636047>,  <34.687252, 35.196651, 48.527634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437172, 35.489407, 48.636047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232123, -0.157188, 0.959901,
		0.745143, 0.663049, -0.071613,
		-0.625205, 0.731887, 0.271036,
		34.249611, 35.708973, 48.717358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029335, 35.681095, 49.051910>,  <34.687252, 35.196651, 48.527634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029335, 35.681095, 49.051910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632843, 35.681187, 49.104763>,  <34.394947, 35.681240, 49.136475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632843, 35.681187, 49.104763>,  <35.029335, 35.681095, 49.051910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632843, 35.681187, 49.104763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131590, -0.088417, 0.987353,
		0.011908, 0.996083, 0.087611,
		-0.991233, 0.000229, 0.132127,
		34.335472, 35.681255, 49.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576653, 36.263054, 48.885044>,  <35.029335, 35.681095, 49.051910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576653, 36.263054, 48.885044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.943096, 36.385303, 48.988838>,  <36.162964, 36.458652, 49.051113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.943096, 36.385303, 48.988838>,  <35.576653, 36.263054, 48.885044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943096, 36.385303, 48.988838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235926, 0.112331, -0.965257,
		-0.324152, 0.945503, 0.030803,
		0.916114, 0.305623, 0.259482,
		36.217930, 36.476990, 49.066681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572678, 36.957970, 48.712650>,  <35.576653, 36.263054, 48.885044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572678, 36.957970, 48.712650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.963081, 36.871552, 48.723495>,  <36.197323, 36.819702, 48.730003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.963081, 36.871552, 48.723495>,  <35.572678, 36.957970, 48.712650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963081, 36.871552, 48.723495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116653, 0.413684, -0.902916,
		0.183854, 0.884416, 0.428960,
		0.976007, -0.216045, 0.027112,
		36.255882, 36.806740, 48.731628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816383, 37.428810, 48.274437>,  <35.572678, 36.957970, 48.712650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816383, 37.428810, 48.274437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105808, 37.155731, 48.315193>,  <36.279465, 36.991886, 48.339649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105808, 37.155731, 48.315193>,  <35.816383, 37.428810, 48.274437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105808, 37.155731, 48.315193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324069, 0.205649, -0.923411,
		0.609452, 0.701169, 0.370040,
		0.723566, -0.682693, 0.101894,
		36.322880, 36.950924, 48.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519955, 37.751877, 48.248386>,  <35.816383, 37.428810, 48.274437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519955, 37.751877, 48.248386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.550346, 37.369766, 48.134068>,  <36.568581, 37.140499, 48.065475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.550346, 37.369766, 48.134068>,  <36.519955, 37.751877, 48.248386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550346, 37.369766, 48.134068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326450, 0.294664, -0.898111,
		0.942156, -0.025063, 0.334237,
		0.075979, -0.955272, -0.285801,
		36.573139, 37.083183, 48.048328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127781, 37.763397, 47.777313>,  <36.519955, 37.751877, 48.248386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127781, 37.763397, 47.777313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926079, 37.423725, 47.714542>,  <36.805058, 37.219921, 47.676880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926079, 37.423725, 47.714542>,  <37.127781, 37.763397, 47.777313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926079, 37.423725, 47.714542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245199, 0.033447, -0.968896,
		0.828015, -0.527045, 0.191352,
		-0.504251, -0.849179, -0.156926,
		36.774803, 37.168972, 47.667465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575718, 37.401974, 47.269176>,  <37.127781, 37.763397, 47.777313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575718, 37.401974, 47.269176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210152, 37.240295, 47.254341>,  <36.990810, 37.143288, 47.245438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210152, 37.240295, 47.254341>,  <37.575718, 37.401974, 47.269176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210152, 37.240295, 47.254341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094987, -0.124130, -0.987709,
		0.394626, -0.906209, 0.151838,
		-0.913919, -0.404198, -0.037093,
		36.935974, 37.119038, 47.243214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667221, 36.819508, 46.781181>,  <37.575718, 37.401974, 47.269176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667221, 36.819508, 46.781181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280918, 36.922722, 46.791977>,  <37.049137, 36.984650, 46.798454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280918, 36.922722, 46.791977>,  <37.667221, 36.819508, 46.781181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280918, 36.922722, 46.791977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010462, 0.142674, -0.989715,
		-0.259230, -0.955543, -0.140488,
		-0.965759, 0.258033, 0.026988,
		36.991192, 37.000130, 46.800072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451000, 36.612198, 46.199406>,  <37.667221, 36.819508, 46.781181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451000, 36.612198, 46.199406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132534, 36.835186, 46.293518>,  <36.941456, 36.968979, 46.349983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132534, 36.835186, 46.293518>,  <37.451000, 36.612198, 46.199406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132534, 36.835186, 46.293518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074202, 0.295946, -0.952318,
		-0.600518, -0.775657, -0.194256,
		-0.796161, 0.557470, 0.235276,
		36.893684, 37.002426, 46.364101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886471, 36.374939, 45.784966>,  <37.451000, 36.612198, 46.199406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886471, 36.374939, 45.784966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792122, 36.748295, 45.893143>,  <36.735512, 36.972309, 45.958050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792122, 36.748295, 45.893143>,  <36.886471, 36.374939, 45.784966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792122, 36.748295, 45.893143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210202, 0.222701, -0.951955,
		-0.948777, -0.281389, 0.143672,
		-0.235874, 0.933394, 0.270442,
		36.721359, 37.028313, 45.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414749, 36.671539, 45.310417>,  <36.886471, 36.374939, 45.784966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414749, 36.671539, 45.310417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596897, 36.999378, 45.449501>,  <36.706184, 37.196083, 45.532951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596897, 36.999378, 45.449501>,  <36.414749, 36.671539, 45.310417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596897, 36.999378, 45.449501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172605, 0.301868, -0.937594,
		-0.873413, 0.486964, -0.004006,
		0.455366, 0.819599, 0.347708,
		36.733505, 37.245258, 45.553814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282207, 37.151089, 44.779285>,  <36.414749, 36.671539, 45.310417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282207, 37.151089, 44.779285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571739, 37.356476, 44.963642>,  <36.745457, 37.479710, 45.074257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571739, 37.356476, 44.963642>,  <36.282207, 37.151089, 44.779285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571739, 37.356476, 44.963642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245245, 0.432903, -0.867439,
		-0.644924, 0.740909, 0.187423,
		0.723829, 0.513467, 0.460894,
		36.788887, 37.510517, 45.101910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256710, 37.847324, 44.547920>,  <36.282207, 37.151089, 44.779285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256710, 37.847324, 44.547920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631233, 37.791706, 44.676914>,  <36.855946, 37.758335, 44.754311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631233, 37.791706, 44.676914>,  <36.256710, 37.847324, 44.547920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631233, 37.791706, 44.676914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347139, 0.505432, -0.789958,
		-0.053159, 0.851590, 0.521505,
		0.936306, -0.139041, 0.322488,
		36.912125, 37.749992, 44.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492092, 38.457867, 44.282818>,  <36.256710, 37.847324, 44.547920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492092, 38.457867, 44.282818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806816, 38.219879, 44.348480>,  <36.995651, 38.077087, 44.387878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806816, 38.219879, 44.348480>,  <36.492092, 38.457867, 44.282818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806816, 38.219879, 44.348480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391057, 0.274793, -0.878387,
		0.477502, 0.755316, 0.448875,
		0.786807, -0.594968, 0.164157,
		37.042858, 38.041389, 44.397728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968201, 38.796227, 43.893997>,  <36.492092, 38.457867, 44.282818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968201, 38.796227, 43.893997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107090, 38.426254, 43.955898>,  <37.190422, 38.204273, 43.993038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107090, 38.426254, 43.955898>,  <36.968201, 38.796227, 43.893997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107090, 38.426254, 43.955898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140645, -0.111789, -0.983729,
		0.927177, 0.363335, 0.091271,
		0.347220, -0.924928, 0.154749,
		37.211254, 38.148777, 44.002323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.186956, 28.960238, 33.007874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255793, 29.354269, 33.007744>,  <25.297094, 29.590689, 33.007664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255793, 29.354269, 33.007744>,  <25.186956, 28.960238, 33.007874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255793, 29.354269, 33.007744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934300, -0.163114, 0.316981,
		0.312199, -0.054855, -0.948432,
		0.172090, 0.985081, -0.000327,
		25.307419, 29.649794, 33.007645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858355, 29.234367, 32.607071>,  <25.186956, 28.960238, 33.007874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858355, 29.234367, 32.607071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784908, 29.499557, 32.897381>,  <25.740841, 29.658670, 33.071568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784908, 29.499557, 32.897381>,  <25.858355, 29.234367, 32.607071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784908, 29.499557, 32.897381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913289, -0.158027, 0.375407,
		0.363577, 0.731774, -0.576471,
		-0.183615, 0.662974, 0.725776,
		25.729824, 29.698450, 33.115112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183138, 28.568724, 32.280811>,  <25.858355, 29.234367, 32.607071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183138, 28.568724, 32.280811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517338, 28.455263, 32.092564>,  <26.717857, 28.387186, 31.979616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517338, 28.455263, 32.092564>,  <26.183138, 28.568724, 32.280811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517338, 28.455263, 32.092564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516195, 0.698758, 0.495258,
		0.188367, -0.656718, 0.730232,
		0.835501, -0.283652, -0.470617,
		26.767988, 28.370167, 31.951378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656410, 28.584280, 32.804928>,  <26.183138, 28.568724, 32.280811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656410, 28.584280, 32.804928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882317, 28.608696, 32.475731>,  <27.017860, 28.623344, 32.278214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882317, 28.608696, 32.475731>,  <26.656410, 28.584280, 32.804928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882317, 28.608696, 32.475731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513988, 0.754200, 0.408654,
		0.645643, -0.653802, 0.394574,
		0.564767, 0.061038, -0.822990,
		27.051746, 28.627008, 32.228832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301569, 28.676870, 33.028061>,  <26.656410, 28.584280, 32.804928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301569, 28.676870, 33.028061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300358, 28.816236, 32.653126>,  <27.299631, 28.899857, 32.428165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300358, 28.816236, 32.653126>,  <27.301569, 28.676870, 33.028061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300358, 28.816236, 32.653126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497891, 0.813422, 0.300748,
		0.867234, -0.465780, -0.175936,
		-0.003028, 0.348416, -0.937335,
		27.299450, 28.920761, 32.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081268, 28.838615, 32.906601>,  <27.301569, 28.676870, 33.028061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081268, 28.838615, 32.906601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882496, 29.047844, 32.629627>,  <27.763233, 29.173380, 32.463444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882496, 29.047844, 32.629627>,  <28.081268, 28.838615, 32.906601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882496, 29.047844, 32.629627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438275, 0.839957, 0.319981,
		0.748983, -0.144467, -0.646648,
		-0.496929, 0.523070, -0.692430,
		27.733418, 29.204765, 32.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585964, 29.237896, 32.652370>,  <28.081268, 28.838615, 32.906601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585964, 29.237896, 32.652370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236582, 29.412920, 32.566944>,  <28.026953, 29.517935, 32.515686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236582, 29.412920, 32.566944>,  <28.585964, 29.237896, 32.652370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236582, 29.412920, 32.566944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383692, 0.888600, 0.251337,
		0.299752, 0.137588, -0.944044,
		-0.873458, 0.437561, -0.213569,
		27.974545, 29.544188, 32.502872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934132, 29.832956, 32.521217>,  <28.585964, 29.237896, 32.652370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934132, 29.832956, 32.521217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542908, 29.916227, 32.518147>,  <28.308174, 29.966190, 32.516304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542908, 29.916227, 32.518147>,  <28.934132, 29.832956, 32.521217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542908, 29.916227, 32.518147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203297, 0.961868, 0.182976,
		0.045474, 0.177401, -0.983087,
		-0.978061, 0.208180, -0.007675,
		28.249489, 29.978682, 32.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863745, 30.414352, 32.066303>,  <28.934132, 29.832956, 32.521217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863745, 30.414352, 32.066303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580187, 30.408669, 32.348370>,  <28.410051, 30.405258, 32.517609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580187, 30.408669, 32.348370>,  <28.863745, 30.414352, 32.066303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580187, 30.408669, 32.348370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223474, 0.943761, 0.243669,
		-0.668974, 0.330323, -0.665853,
		-0.708896, -0.014208, 0.705170,
		28.367517, 30.404406, 32.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515181, 31.015409, 32.052330>,  <28.863745, 30.414352, 32.066303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515181, 31.015409, 32.052330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405315, 30.885221, 32.414242>,  <28.339396, 30.807110, 32.631390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405315, 30.885221, 32.414242>,  <28.515181, 31.015409, 32.052330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405315, 30.885221, 32.414242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176539, 0.907906, 0.380185,
		-0.945195, 0.264153, -0.191912,
		-0.274665, -0.325469, 0.904781,
		28.322916, 30.787580, 32.685677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833168, 31.471098, 32.291050>,  <28.515181, 31.015409, 32.052330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833168, 31.471098, 32.291050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982363, 31.288759, 32.614304>,  <28.071878, 31.179356, 32.808258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982363, 31.288759, 32.614304>,  <27.833168, 31.471098, 32.291050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982363, 31.288759, 32.614304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019663, 0.874678, 0.484304,
		-0.927629, -0.164748, 0.335206,
		0.372985, -0.455846, 0.808137,
		28.094259, 31.152006, 32.856747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512329, 31.772760, 32.825947>,  <27.833168, 31.471098, 32.291050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512329, 31.772760, 32.825947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827850, 31.599680, 33.000561>,  <28.017164, 31.495832, 33.105328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827850, 31.599680, 33.000561>,  <27.512329, 31.772760, 32.825947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827850, 31.599680, 33.000561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094484, 0.787138, 0.609497,
		-0.607339, -0.439528, 0.661781,
		0.788804, -0.432699, 0.436531,
		28.064491, 31.469870, 33.131519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490978, 32.074081, 33.489506>,  <27.512329, 31.772760, 32.825947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490978, 32.074081, 33.489506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865330, 31.950500, 33.421772>,  <28.089941, 31.876350, 33.381130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865330, 31.950500, 33.421772>,  <27.490978, 32.074081, 33.489506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865330, 31.950500, 33.421772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348644, 0.881379, 0.318776,
		0.050763, -0.357375, 0.932580,
		0.935880, -0.308956, -0.169338,
		28.146093, 31.857813, 33.370972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888210, 31.900906, 34.111786>,  <27.490978, 32.074081, 33.489506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888210, 31.900906, 34.111786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160170, 31.987360, 33.831493>,  <28.323345, 32.039234, 33.663319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160170, 31.987360, 33.831493>,  <27.888210, 31.900906, 34.111786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160170, 31.987360, 33.831493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265673, 0.818054, 0.510104,
		0.683485, -0.532984, 0.498774,
		0.679901, 0.216138, -0.700727,
		28.364140, 32.052200, 33.621277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528048, 32.057785, 34.425217>,  <27.888210, 31.900906, 34.111786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528048, 32.057785, 34.425217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606573, 32.209660, 34.063599>,  <28.653688, 32.300785, 33.846626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606573, 32.209660, 34.063599>,  <28.528048, 32.057785, 34.425217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606573, 32.209660, 34.063599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399767, 0.810889, 0.427371,
		0.895348, -0.445306, 0.007399,
		0.196311, 0.379688, -0.904046,
		28.665466, 32.323566, 33.792385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130527, 32.280693, 34.504410>,  <28.528048, 32.057785, 34.425217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130527, 32.280693, 34.504410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015226, 32.474785, 34.174206>,  <28.946045, 32.591240, 33.976082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015226, 32.474785, 34.174206>,  <29.130527, 32.280693, 34.504410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015226, 32.474785, 34.174206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415803, 0.840009, 0.348558,
		0.862565, -0.242777, -0.443893,
		-0.288252, 0.485226, -0.825510,
		28.928751, 32.620354, 33.926552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564394, 32.790413, 34.471672>,  <29.130527, 32.280693, 34.504410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564394, 32.790413, 34.471672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292007, 32.937325, 34.218250>,  <29.128574, 33.025471, 34.066196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292007, 32.937325, 34.218250>,  <29.564394, 32.790413, 34.471672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292007, 32.937325, 34.218250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216580, 0.927444, 0.304862,
		0.699555, 0.070387, -0.711104,
		-0.680967, 0.367279, -0.633553,
		29.087717, 33.047508, 34.028183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912930, 33.323902, 33.971806>,  <29.564394, 32.790413, 34.471672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912930, 33.323902, 33.971806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521284, 33.398300, 34.004646>,  <29.286297, 33.442940, 34.024349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521284, 33.398300, 34.004646>,  <29.912930, 33.323902, 33.971806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521284, 33.398300, 34.004646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201693, 0.939383, 0.277272,
		-0.025551, 0.288040, -0.957277,
		-0.979115, 0.185992, 0.082098,
		29.227549, 33.454098, 34.029274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156437, 34.034626, 34.243649>,  <29.912930, 33.323902, 33.971806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156437, 34.034626, 34.243649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482693, 34.024940, 34.474869>,  <30.678446, 34.019131, 34.613602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482693, 34.024940, 34.474869>,  <30.156437, 34.034626, 34.243649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482693, 34.024940, 34.474869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018528, -0.997519, -0.067920,
		0.578265, 0.066108, -0.813166,
		0.815639, -0.024209, 0.578055,
		30.727385, 34.017677, 34.648285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657320, 33.455860, 34.143620>,  <30.156437, 34.034626, 34.243649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657320, 33.455860, 34.143620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.810659, 33.564552, 34.496712>,  <30.902662, 33.629768, 34.708565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.810659, 33.564552, 34.496712>,  <30.657320, 33.455860, 34.143620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810659, 33.564552, 34.496712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162534, -0.920979, 0.354091,
		0.909191, -0.279212, -0.308888,
		0.383346, 0.271732, 0.882728,
		30.925663, 33.646072, 34.761532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280327, 33.068733, 34.239452>,  <30.657320, 33.455860, 34.143620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280327, 33.068733, 34.239452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121693, 33.179306, 34.589607>,  <31.026512, 33.245651, 34.799702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121693, 33.179306, 34.589607>,  <31.280327, 33.068733, 34.239452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121693, 33.179306, 34.589607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013695, -0.955260, 0.295450,
		0.917896, 0.105182, 0.382627,
		-0.396584, 0.276433, 0.875389,
		31.002718, 33.262238, 34.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696318, 32.722267, 34.641796>,  <31.280327, 33.068733, 34.239452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696318, 32.722267, 34.641796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392275, 32.807201, 34.887447>,  <31.209850, 32.858162, 35.034840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392275, 32.807201, 34.887447>,  <31.696318, 32.722267, 34.641796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392275, 32.807201, 34.887447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011130, -0.949220, 0.314418,
		0.649705, 0.232155, 0.723870,
		-0.760105, 0.212335, 0.614129,
		31.164244, 32.870903, 35.071686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884165, 32.578140, 35.326256>,  <31.696318, 32.722267, 34.641796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884165, 32.578140, 35.326256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485859, 32.597157, 35.357735>,  <31.246876, 32.608566, 35.376621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485859, 32.597157, 35.357735>,  <31.884165, 32.578140, 35.326256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485859, 32.597157, 35.357735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018664, -0.942659, 0.333236,
		0.090030, 0.330355, 0.939553,
		-0.995764, 0.047537, 0.078701,
		31.187130, 32.611416, 35.381344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867380, 32.202866, 35.959381>,  <31.884165, 32.578140, 35.326256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867380, 32.202866, 35.959381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537457, 32.219254, 35.733810>,  <31.339502, 32.229088, 35.598469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537457, 32.219254, 35.733810>,  <31.867380, 32.202866, 35.959381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537457, 32.219254, 35.733810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081773, -0.995529, 0.047278,
		-0.559467, 0.085109, 0.824471,
		-0.824809, 0.040969, -0.563926,
		31.290014, 32.231544, 35.564632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475880, 31.698036, 36.232918>,  <31.867380, 32.202866, 35.959381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475880, 31.698036, 36.232918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275843, 31.760237, 35.892159>,  <31.155821, 31.797558, 35.687702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275843, 31.760237, 35.892159>,  <31.475880, 31.698036, 36.232918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275843, 31.760237, 35.892159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425862, -0.900732, 0.085577,
		-0.754023, 0.405587, 0.516671,
		-0.500091, 0.155504, -0.851897,
		31.125816, 31.806889, 35.636589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062777, 31.256456, 36.345451>,  <31.475880, 31.698036, 36.232918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062777, 31.256456, 36.345451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040821, 31.302416, 35.948708>,  <31.027649, 31.329990, 35.710663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040821, 31.302416, 35.948708>,  <31.062777, 31.256456, 36.345451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040821, 31.302416, 35.948708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205106, -0.973472, -0.101417,
		-0.977200, 0.197870, 0.076996,
		-0.054886, 0.114897, -0.991860,
		31.024355, 31.336885, 35.651150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412838, 30.998592, 36.150471>,  <31.062777, 31.256456, 36.345451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412838, 30.998592, 36.150471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670282, 30.984278, 35.844666>,  <30.824749, 30.975689, 35.661182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670282, 30.984278, 35.844666>,  <30.412838, 30.998592, 36.150471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670282, 30.984278, 35.844666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265820, -0.947174, -0.179445,
		-0.717707, 0.318717, -0.619125,
		0.643612, -0.035787, -0.764515,
		30.863365, 30.973541, 35.615311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116709, 30.650606, 35.576973>,  <30.412838, 30.998592, 36.150471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116709, 30.650606, 35.576973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503609, 30.644838, 35.475605>,  <30.735748, 30.641378, 35.414783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503609, 30.644838, 35.475605>,  <30.116709, 30.650606, 35.576973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503609, 30.644838, 35.475605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123418, -0.899140, -0.419900,
		-0.221809, 0.437425, -0.871470,
		0.967248, -0.014418, -0.253423,
		30.793783, 30.640512, 35.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139986, 30.365675, 34.809086>,  <30.116709, 30.650606, 35.576973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139986, 30.365675, 34.809086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504230, 30.315218, 34.966503>,  <30.722776, 30.284945, 35.060955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504230, 30.315218, 34.966503>,  <30.139986, 30.365675, 34.809086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504230, 30.315218, 34.966503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045178, -0.916188, -0.398194,
		0.410793, 0.380378, -0.828590,
		0.910609, -0.126141, 0.393548,
		30.777412, 30.277376, 35.084568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531593, 29.924534, 34.300034>,  <30.139986, 30.365675, 34.809086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531593, 29.924534, 34.300034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735096, 29.881647, 34.641716>,  <30.857199, 29.855915, 34.846725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735096, 29.881647, 34.641716>,  <30.531593, 29.924534, 34.300034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735096, 29.881647, 34.641716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150247, -0.965930, -0.210724,
		0.847697, 0.235549, -0.475316,
		0.508758, -0.107216, 0.854207,
		30.887724, 29.849482, 34.897980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119308, 29.592474, 34.147026>,  <30.531593, 29.924534, 34.300034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119308, 29.592474, 34.147026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032757, 29.526424, 34.531925>,  <30.980825, 29.486795, 34.762863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032757, 29.526424, 34.531925>,  <31.119308, 29.592474, 34.147026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032757, 29.526424, 34.531925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047374, -0.982657, -0.179280,
		0.975159, -0.084378, 0.204806,
		-0.216381, -0.165124, 0.962244,
		30.967842, 29.476887, 34.820599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560879, 29.108200, 34.311703>,  <31.119308, 29.592474, 34.147026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560879, 29.108200, 34.311703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267136, 29.071535, 34.580723>,  <31.090891, 29.049536, 34.742134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267136, 29.071535, 34.580723>,  <31.560879, 29.108200, 34.311703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267136, 29.071535, 34.580723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038630, -0.983590, -0.176233,
		0.677664, -0.155398, 0.718765,
		-0.734356, -0.091661, 0.672547,
		31.046829, 29.044037, 34.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770948, 28.555220, 34.785439>,  <31.560879, 29.108200, 34.311703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770948, 28.555220, 34.785439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375095, 28.602770, 34.817688>,  <31.137585, 28.631300, 34.837036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375095, 28.602770, 34.817688>,  <31.770948, 28.555220, 34.785439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375095, 28.602770, 34.817688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118021, -0.992893, 0.015305,
		0.081868, 0.005632, 0.996627,
		-0.989631, 0.118876, 0.080621,
		31.078207, 28.638433, 34.841873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554464, 27.990211, 35.159142>,  <31.770948, 28.555220, 34.785439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554464, 27.990211, 35.159142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196856, 28.127995, 35.044548>,  <30.982290, 28.210665, 34.975792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196856, 28.127995, 35.044548>,  <31.554464, 27.990211, 35.159142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196856, 28.127995, 35.044548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360264, -0.932846, 0.002639,
		-0.266334, 0.105569, 0.958082,
		-0.894022, 0.344460, -0.286481,
		30.928648, 28.231333, 34.958603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099861, 27.426069, 35.441639>,  <31.554464, 27.990211, 35.159142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099861, 27.426069, 35.441639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840719, 27.618690, 35.205544>,  <30.685234, 27.734264, 35.063885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840719, 27.618690, 35.205544>,  <31.099861, 27.426069, 35.441639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840719, 27.618690, 35.205544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393384, -0.875021, -0.282111,
		-0.652327, 0.049425, 0.756325,
		-0.647857, 0.481555, -0.590243,
		30.646362, 27.763157, 35.028469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394701, 27.214890, 35.601501>,  <31.099861, 27.426069, 35.441639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394701, 27.214890, 35.601501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407188, 27.359095, 35.228607>,  <30.414680, 27.445618, 35.004871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407188, 27.359095, 35.228607>,  <30.394701, 27.214890, 35.601501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407188, 27.359095, 35.228607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557450, -0.767876, -0.315620,
		-0.829623, 0.529526, 0.176996,
		0.031218, 0.360513, -0.932232,
		30.416553, 27.467249, 34.948936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633949, 27.133034, 35.431602>,  <30.394701, 27.214890, 35.601501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633949, 27.133034, 35.431602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860703, 27.164841, 35.103622>,  <29.996756, 27.183926, 34.906834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860703, 27.164841, 35.103622>,  <29.633949, 27.133034, 35.431602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860703, 27.164841, 35.103622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529686, -0.727122, -0.436722,
		-0.630932, 0.681887, -0.370075,
		0.566884, 0.079518, -0.819951,
		30.030767, 27.188696, 34.857635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210005, 27.330370, 34.769615>,  <29.633949, 27.133034, 35.431602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210005, 27.330370, 34.769615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545118, 27.124802, 34.695862>,  <29.746187, 27.001461, 34.651608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545118, 27.124802, 34.695862>,  <29.210005, 27.330370, 34.769615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545118, 27.124802, 34.695862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520968, -0.651335, -0.551684,
		0.163425, 0.558253, -0.813416,
		0.837786, -0.513922, -0.184387,
		29.796453, 26.970625, 34.640545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152466, 27.057629, 34.071365>,  <29.210005, 27.330370, 34.769615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152466, 27.057629, 34.071365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449011, 26.826834, 34.208462>,  <29.626938, 26.688356, 34.290718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449011, 26.826834, 34.208462>,  <29.152466, 27.057629, 34.071365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449011, 26.826834, 34.208462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415118, -0.795545, -0.441345,
		0.527315, 0.184918, -0.829303,
		0.741360, -0.576986, 0.342740,
		29.671419, 26.653738, 34.311283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253168, 26.659830, 33.551033>,  <29.152466, 27.057629, 34.071365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253168, 26.659830, 33.551033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436121, 26.461607, 33.846390>,  <29.545893, 26.342672, 34.023605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436121, 26.461607, 33.846390>,  <29.253168, 26.659830, 33.551033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436121, 26.461607, 33.846390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465819, -0.840816, -0.275755,
		0.757505, -0.217831, -0.615416,
		0.457383, -0.495557, 0.738392,
		29.573336, 26.312941, 34.067909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658836, 26.116482, 33.231865>,  <29.253168, 26.659830, 33.551033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658836, 26.116482, 33.231865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610298, 26.024408, 33.618084>,  <29.581175, 25.969164, 33.849815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610298, 26.024408, 33.618084>,  <29.658836, 26.116482, 33.231865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610298, 26.024408, 33.618084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205922, -0.945740, -0.251342,
		0.971015, -0.229328, 0.067362,
		-0.121347, -0.230186, 0.965551,
		29.573895, 25.955353, 33.907749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075665, 25.555002, 33.378510>,  <29.658836, 26.116482, 33.231865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075665, 25.555002, 33.378510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770742, 25.570517, 33.636932>,  <29.587790, 25.579824, 33.791985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770742, 25.570517, 33.636932>,  <30.075665, 25.555002, 33.378510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770742, 25.570517, 33.636932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182844, -0.970447, -0.157484,
		0.620856, -0.238179, 0.746866,
		-0.762303, 0.038785, 0.646057,
		29.542051, 25.582151, 33.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.249756, 34.497463, 49.470474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995491, 34.188713, 49.465675>,  <37.842934, 34.003464, 49.462795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995491, 34.188713, 49.465675>,  <38.249756, 34.497463, 49.470474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995491, 34.188713, 49.465675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122795, 0.085754, 0.988720,
		-0.762141, 0.629963, -0.149292,
		-0.635659, -0.771877, -0.012000,
		37.804794, 33.957150, 49.462074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701775, 34.740524, 49.910343>,  <38.249756, 34.497463, 49.470474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701775, 34.740524, 49.910343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703987, 34.340549, 49.906448>,  <37.705315, 34.100563, 49.904114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703987, 34.340549, 49.906448>,  <37.701775, 34.740524, 49.910343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703987, 34.340549, 49.906448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001370, -0.009726, 0.999952,
		-0.999984, -0.005542, 0.001316,
		0.005529, -0.999938, -0.009734,
		37.705647, 34.040569, 49.903530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137398, 34.550491, 50.383575>,  <37.701775, 34.740524, 49.910343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137398, 34.550491, 50.383575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359386, 34.220078, 50.344246>,  <37.492580, 34.021828, 50.320648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359386, 34.220078, 50.344246>,  <37.137398, 34.550491, 50.383575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359386, 34.220078, 50.344246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015491, -0.107915, 0.994039,
		-0.831724, -0.553189, -0.047094,
		0.554974, -0.826036, -0.098325,
		37.525879, 33.972267, 50.314747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826084, 34.085262, 50.817287>,  <37.137398, 34.550491, 50.383575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826084, 34.085262, 50.817287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205139, 33.962830, 50.780872>,  <37.432571, 33.889370, 50.759026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205139, 33.962830, 50.780872>,  <36.826084, 34.085262, 50.817287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205139, 33.962830, 50.780872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011346, -0.252622, 0.967498,
		-0.319136, -0.917874, -0.235922,
		0.947641, -0.306087, -0.091036,
		37.489433, 33.871006, 50.753563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855923, 33.542534, 51.276028>,  <36.826084, 34.085262, 50.817287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855923, 33.542534, 51.276028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246563, 33.576935, 51.197182>,  <37.480946, 33.597576, 51.149876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246563, 33.576935, 51.197182>,  <36.855923, 33.542534, 51.276028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246563, 33.576935, 51.197182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214591, -0.449904, 0.866912,
		-0.014126, -0.888927, -0.457832,
		0.976602, 0.086001, -0.197111,
		37.539543, 33.602734, 51.138050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128769, 32.913097, 51.476955>,  <36.855923, 33.542534, 51.276028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128769, 32.913097, 51.476955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447647, 33.154339, 51.487873>,  <37.638973, 33.299084, 51.494423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447647, 33.154339, 51.487873>,  <37.128769, 32.913097, 51.476955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447647, 33.154339, 51.487873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286798, -0.418104, 0.861937,
		0.531248, -0.679306, -0.506280,
		0.797197, 0.603103, 0.027294,
		37.686806, 33.335270, 51.496059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728306, 32.532883, 51.554600>,  <37.128769, 32.913097, 51.476955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728306, 32.532883, 51.554600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852211, 32.894405, 51.672703>,  <37.926556, 33.111320, 51.743565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852211, 32.894405, 51.672703>,  <37.728306, 32.532883, 51.554600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852211, 32.894405, 51.672703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425477, -0.409467, 0.807035,
		0.850303, -0.124365, -0.511388,
		0.309764, 0.903808, 0.295257,
		37.945141, 33.165546, 51.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400566, 32.425816, 51.772400>,  <37.728306, 32.532883, 51.554600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400566, 32.425816, 51.772400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.284378, 32.762390, 51.954655>,  <38.214664, 32.964336, 52.064007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.284378, 32.762390, 51.954655>,  <38.400566, 32.425816, 51.772400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284378, 32.762390, 51.954655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414157, -0.318701, 0.852586,
		0.862612, 0.436357, -0.255915,
		-0.290472, 0.841440, 0.455636,
		38.197235, 33.014824, 52.091347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006260, 32.698410, 52.130951>,  <38.400566, 32.425816, 51.772400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006260, 32.698410, 52.130951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670341, 32.840229, 52.295410>,  <38.468792, 32.925320, 52.394085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670341, 32.840229, 52.295410>,  <39.006260, 32.698410, 52.130951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670341, 32.840229, 52.295410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375515, -0.167605, 0.911535,
		0.392092, 0.919894, 0.007616,
		-0.839793, 0.354546, 0.411151,
		38.418404, 32.946594, 52.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264084, 33.011307, 52.654495>,  <39.006260, 32.698410, 52.130951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264084, 33.011307, 52.654495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876602, 33.015034, 52.753719>,  <38.644115, 33.017269, 52.813251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876602, 33.015034, 52.753719>,  <39.264084, 33.011307, 52.654495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876602, 33.015034, 52.753719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245132, -0.121537, 0.961842,
		0.039114, 0.992543, 0.115448,
		-0.968700, 0.009321, 0.248057,
		38.585991, 33.017830, 52.828136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101772, 33.505608, 53.223351>,  <39.264084, 33.011307, 52.654495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101772, 33.505608, 53.223351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804882, 33.238850, 53.249722>,  <38.626747, 33.078796, 53.265545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804882, 33.238850, 53.249722>,  <39.101772, 33.505608, 53.223351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804882, 33.238850, 53.249722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220112, -0.149686, 0.963921,
		-0.632967, 0.729962, 0.257893,
		-0.742229, -0.666895, 0.065927,
		38.582214, 33.038780, 53.269501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639618, 33.778542, 53.723961>,  <39.101772, 33.505608, 53.223351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639618, 33.778542, 53.723961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574867, 33.383984, 53.712555>,  <38.536015, 33.147247, 53.705711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574867, 33.383984, 53.712555>,  <38.639618, 33.778542, 53.723961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574867, 33.383984, 53.712555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112183, -0.047107, 0.992570,
		-0.980413, 0.157477, 0.118283,
		-0.161879, -0.986398, -0.028518,
		38.526302, 33.088062, 53.703999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021255, 33.528034, 54.032959>,  <38.639618, 33.778542, 53.723961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021255, 33.528034, 54.032959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297791, 33.239738, 54.053352>,  <38.463711, 33.066761, 54.065590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297791, 33.239738, 54.053352>,  <38.021255, 33.528034, 54.032959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297791, 33.239738, 54.053352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100517, -0.026056, 0.994594,
		-0.715511, -0.692721, -0.090459,
		0.691333, -0.720735, 0.050987,
		38.505192, 33.023518, 54.068649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431187, 34.080166, 54.352257>,  <38.021255, 33.528034, 54.032959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431187, 34.080166, 54.352257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498871, 34.294006, 54.683456>,  <38.539482, 34.422310, 54.882175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498871, 34.294006, 54.683456>,  <38.431187, 34.080166, 54.352257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498871, 34.294006, 54.683456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907798, 0.411655, -0.080269,
		-0.383759, -0.738070, 0.554961,
		0.169209, 0.534597, 0.827995,
		38.549633, 34.454384, 54.931854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091141, 34.738689, 54.106583>,  <38.431187, 34.080166, 54.352257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091141, 34.738689, 54.106583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237419, 34.933655, 54.423744>,  <38.325188, 35.050632, 54.614040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237419, 34.933655, 54.423744>,  <38.091141, 34.738689, 54.106583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237419, 34.933655, 54.423744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321180, -0.733493, 0.599025,
		0.873561, -0.473727, -0.111690,
		0.365698, 0.487412, 0.792902,
		38.347130, 35.079880, 54.661613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392216, 34.936428, 53.942814>,  <38.091141, 34.738689, 54.106583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392216, 34.936428, 53.942814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196156, 35.258728, 54.075790>,  <37.078522, 35.452106, 54.155579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196156, 35.258728, 54.075790>,  <37.392216, 34.936428, 53.942814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196156, 35.258728, 54.075790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503511, 0.049595, -0.862564,
		-0.711499, -0.590175, 0.381395,
		-0.490148, 0.805750, 0.332446,
		37.049110, 35.500454, 54.175526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676235, 34.976097, 53.669514>,  <37.392216, 34.936428, 53.942814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676235, 34.976097, 53.669514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752823, 35.357590, 53.762238>,  <36.798775, 35.586487, 53.817871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752823, 35.357590, 53.762238>,  <36.676235, 34.976097, 53.669514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752823, 35.357590, 53.762238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377061, 0.289526, -0.879773,
		-0.906182, 0.081041, 0.415049,
		0.191465, 0.953733, 0.231806,
		36.810261, 35.643711, 53.831779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049721, 35.301746, 53.544552>,  <36.676235, 34.976097, 53.669514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049721, 35.301746, 53.544552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326599, 35.589401, 53.520222>,  <36.492725, 35.761993, 53.505623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326599, 35.589401, 53.520222>,  <36.049721, 35.301746, 53.544552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326599, 35.589401, 53.520222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431961, 0.345307, -0.833170,
		-0.578163, 0.602992, 0.549662,
		0.692197, 0.719141, -0.060825,
		36.534260, 35.805145, 53.501976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736267, 36.065907, 53.312359>,  <36.049721, 35.301746, 53.544552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736267, 36.065907, 53.312359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122402, 36.099365, 53.213470>,  <36.354084, 36.119442, 53.154137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122402, 36.099365, 53.213470>,  <35.736267, 36.065907, 53.312359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122402, 36.099365, 53.213470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254517, 0.511338, -0.820825,
		0.057750, 0.855299, 0.514907,
		0.965342, 0.083650, -0.247218,
		36.412006, 36.124458, 53.139305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873722, 36.754131, 53.076897>,  <35.736267, 36.065907, 53.312359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873722, 36.754131, 53.076897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178688, 36.541019, 52.930000>,  <36.361668, 36.413151, 52.841862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178688, 36.541019, 52.930000>,  <35.873722, 36.754131, 53.076897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178688, 36.541019, 52.930000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127260, 0.432995, -0.892368,
		0.634448, 0.727092, 0.262321,
		0.762417, -0.532778, -0.367243,
		36.407413, 36.381187, 52.819828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197945, 37.191601, 52.618282>,  <35.873722, 36.754131, 53.076897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197945, 37.191601, 52.618282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355812, 36.837467, 52.519962>,  <36.450531, 36.624985, 52.460972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355812, 36.837467, 52.519962>,  <36.197945, 37.191601, 52.618282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355812, 36.837467, 52.519962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158189, 0.328990, -0.930990,
		0.905104, 0.328550, 0.269893,
		0.394669, -0.885336, -0.245797,
		36.474213, 36.571865, 52.446224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743416, 37.408905, 52.181297>,  <36.197945, 37.191601, 52.618282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743416, 37.408905, 52.181297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662956, 37.024929, 52.103264>,  <36.614681, 36.794544, 52.056446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662956, 37.024929, 52.103264>,  <36.743416, 37.408905, 52.181297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662956, 37.024929, 52.103264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138613, 0.169254, -0.975776,
		0.969705, -0.223314, 0.099015,
		-0.201145, -0.959940, -0.195081,
		36.602612, 36.736946, 52.044739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156048, 37.243706, 51.632423>,  <36.743416, 37.408905, 52.181297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156048, 37.243706, 51.632423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887142, 36.947643, 51.638622>,  <36.725800, 36.770008, 51.642342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887142, 36.947643, 51.638622>,  <37.156048, 37.243706, 51.632423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887142, 36.947643, 51.638622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020662, -0.002167, -0.999784,
		0.740026, -0.672437, -0.013836,
		-0.672261, -0.740152, 0.015498,
		36.685463, 36.725597, 51.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397305, 36.668182, 51.171455>,  <37.156048, 37.243706, 51.632423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397305, 36.668182, 51.171455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001404, 36.613174, 51.186802>,  <36.763863, 36.580170, 51.196011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001404, 36.613174, 51.186802>,  <37.397305, 36.668182, 51.171455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001404, 36.613174, 51.186802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010788, -0.195894, -0.980566,
		0.142360, -0.970935, 0.192403,
		-0.989756, -0.137518, 0.038362,
		36.704475, 36.571918, 51.198311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296329, 35.987556, 50.700035>,  <37.397305, 36.668182, 51.171455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296329, 35.987556, 50.700035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960121, 36.201508, 50.734512>,  <36.758396, 36.329880, 50.755199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960121, 36.201508, 50.734512>,  <37.296329, 35.987556, 50.700035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960121, 36.201508, 50.734512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097789, 0.006704, -0.995185,
		-0.532881, -0.844902, 0.046670,
		-0.840521, 0.534879, 0.086195,
		36.707966, 36.361973, 50.760372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780293, 35.700745, 50.218037>,  <37.296329, 35.987556, 50.700035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780293, 35.700745, 50.218037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625824, 36.066658, 50.265442>,  <36.533142, 36.286205, 50.293884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625824, 36.066658, 50.265442>,  <36.780293, 35.700745, 50.218037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625824, 36.066658, 50.265442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319433, -0.012096, -0.947532,
		-0.865352, -0.403766, 0.296883,
		-0.386172, 0.914782, 0.118509,
		36.509972, 36.341091, 50.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121178, 35.634411, 49.951801>,  <36.780293, 35.700745, 50.218037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121178, 35.634411, 49.951801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238960, 36.016575, 49.942936>,  <36.309631, 36.245872, 49.937614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238960, 36.016575, 49.942936>,  <36.121178, 35.634411, 49.951801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238960, 36.016575, 49.942936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172196, 0.030226, -0.984599,
		-0.940023, 0.293740, 0.173418,
		0.294458, 0.955407, -0.022168,
		36.327297, 36.303196, 49.936287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677353, 35.921608, 49.510944>,  <36.121178, 35.634411, 49.951801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677353, 35.921608, 49.510944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984547, 36.176945, 49.531811>,  <36.168861, 36.330147, 49.544331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984547, 36.176945, 49.531811>,  <35.677353, 35.921608, 49.510944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984547, 36.176945, 49.531811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042118, 0.131609, -0.990407,
		-0.639088, 0.758415, 0.127959,
		0.767980, 0.638346, 0.052167,
		36.214939, 36.368450, 49.547462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893856, 36.087059, 49.714405>,  <35.677353, 35.921608, 49.510944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893856, 36.087059, 49.714405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551857, 35.890026, 49.649475>,  <34.346657, 35.771809, 49.610516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551857, 35.890026, 49.649475>,  <34.893856, 36.087059, 49.714405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551857, 35.890026, 49.649475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071288, -0.198406, 0.977524,
		-0.513714, 0.847350, 0.134521,
		-0.854994, -0.492578, -0.162329,
		34.295357, 35.742252, 49.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627525, 36.241993, 50.337517>,  <34.893856, 36.087059, 49.714405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627525, 36.241993, 50.337517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419098, 35.936829, 50.184441>,  <34.294041, 35.753731, 50.092594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419098, 35.936829, 50.184441>,  <34.627525, 36.241993, 50.337517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419098, 35.936829, 50.184441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052723, -0.418741, 0.906574,
		-0.851886, 0.492562, 0.177968,
		-0.521066, -0.762915, -0.382689,
		34.262779, 35.707954, 50.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941933, 36.102669, 50.778732>,  <34.627525, 36.241993, 50.337517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941933, 36.102669, 50.778732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042404, 35.775719, 50.571342>,  <34.102688, 35.579548, 50.446907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042404, 35.775719, 50.571342>,  <33.941933, 36.102669, 50.778732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042404, 35.775719, 50.571342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123782, -0.558373, 0.820304,
		-0.959995, -0.141861, -0.241424,
		0.251174, -0.817371, -0.518475,
		34.117756, 35.530506, 50.415798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384117, 35.652050, 50.849827>,  <33.941933, 36.102669, 50.778732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384117, 35.652050, 50.849827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711304, 35.437256, 50.767288>,  <33.907616, 35.308380, 50.717766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711304, 35.437256, 50.767288>,  <33.384117, 35.652050, 50.849827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711304, 35.437256, 50.767288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139039, -0.532597, 0.834870,
		-0.558219, -0.654201, -0.510306,
		0.817961, -0.536993, -0.206346,
		33.956692, 35.276161, 50.705387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269035, 35.072872, 51.168385>,  <33.384117, 35.652050, 50.849827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269035, 35.072872, 51.168385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654152, 35.019554, 51.074360>,  <33.885223, 34.987564, 51.017944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654152, 35.019554, 51.074360>,  <33.269035, 35.072872, 51.168385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654152, 35.019554, 51.074360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117854, -0.575667, 0.809147,
		-0.243176, -0.806747, -0.538540,
		0.962796, -0.133296, -0.235066,
		33.942989, 34.979565, 51.003841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328186, 34.363159, 51.224609>,  <33.269035, 35.072872, 51.168385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328186, 34.363159, 51.224609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682056, 34.541611, 51.278744>,  <33.894379, 34.648682, 51.311222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682056, 34.541611, 51.278744>,  <33.328186, 34.363159, 51.224609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682056, 34.541611, 51.278744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114871, -0.489930, 0.864160,
		0.451834, -0.748956, -0.484677,
		0.884676, 0.446133, 0.135334,
		33.947460, 34.675449, 51.319344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781307, 33.804504, 51.532986>,  <33.328186, 34.363159, 51.224609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781307, 33.804504, 51.532986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908463, 34.176640, 51.606113>,  <33.984756, 34.399921, 51.649990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908463, 34.176640, 51.606113>,  <33.781307, 33.804504, 51.532986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908463, 34.176640, 51.606113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013135, -0.197120, 0.980291,
		0.948036, -0.309225, -0.074883,
		0.317892, 0.930335, 0.182815,
		34.003830, 34.455742, 51.660957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951733, 33.117107, 51.195427>,  <33.781307, 33.804504, 51.532986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951733, 33.117107, 51.195427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571968, 33.046883, 51.299580>,  <33.344109, 33.004749, 51.362072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571968, 33.046883, 51.299580>,  <33.951733, 33.117107, 51.195427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571968, 33.046883, 51.299580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280002, 0.097797, -0.955005,
		0.142205, -0.979597, -0.142009,
		-0.949409, -0.175570, 0.260381,
		33.287144, 32.994213, 51.377693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617199, 32.891869, 50.592884>,  <33.951733, 33.117107, 51.195427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617199, 32.891869, 50.592884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286373, 32.970417, 50.803558>,  <33.087875, 33.017548, 50.929962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286373, 32.970417, 50.803558>,  <33.617199, 32.891869, 50.592884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286373, 32.970417, 50.803558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506413, 0.146307, -0.849788,
		-0.243933, -0.969552, -0.021560,
		-0.827069, 0.196373, 0.526683,
		33.038254, 33.029327, 50.961563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029720, 32.365726, 50.357712>,  <33.617199, 32.891869, 50.592884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029720, 32.365726, 50.357712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877892, 32.695934, 50.524776>,  <32.786797, 32.894058, 50.625015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877892, 32.695934, 50.524776>,  <33.029720, 32.365726, 50.357712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877892, 32.695934, 50.524776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567696, 0.148643, -0.809708,
		-0.730513, -0.544447, 0.412224,
		-0.379568, 0.825520, 0.417666,
		32.764023, 32.943592, 50.650078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305237, 32.264477, 50.251564>,  <33.029720, 32.365726, 50.357712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305237, 32.264477, 50.251564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391582, 32.650211, 50.312836>,  <32.443390, 32.881653, 50.349598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391582, 32.650211, 50.312836>,  <32.305237, 32.264477, 50.251564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391582, 32.650211, 50.312836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505370, 0.244573, -0.827517,
		-0.835467, 0.101214, 0.540139,
		0.215860, 0.964334, 0.153183,
		32.456341, 32.939510, 50.358791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763184, 32.531193, 50.030880>,  <32.305237, 32.264477, 50.251564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763184, 32.531193, 50.030880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044903, 32.815151, 50.032593>,  <32.213936, 32.985527, 50.033623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044903, 32.815151, 50.032593>,  <31.763184, 32.531193, 50.030880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044903, 32.815151, 50.032593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257485, 0.261072, -0.930346,
		-0.661564, 0.654136, 0.366658,
		0.704297, 0.709893, 0.004286,
		32.256191, 33.028118, 50.033878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444906, 33.051716, 49.670773>,  <31.763184, 32.531193, 50.030880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444906, 33.051716, 49.670773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824537, 33.176868, 49.656017>,  <32.052315, 33.251961, 49.647163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824537, 33.176868, 49.656017>,  <31.444906, 33.051716, 49.670773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824537, 33.176868, 49.656017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169854, 0.409550, -0.896336,
		-0.265337, 0.856957, 0.441838,
		0.949076, 0.312879, -0.036889,
		32.109261, 33.270733, 49.644951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399723, 33.696953, 49.355682>,  <31.444906, 33.051716, 49.670773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399723, 33.696953, 49.355682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757660, 33.523659, 49.312664>,  <31.972422, 33.419682, 49.286854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757660, 33.523659, 49.312664>,  <31.399723, 33.696953, 49.355682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757660, 33.523659, 49.312664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015103, 0.211405, -0.977282,
		0.446131, 0.876136, 0.182630,
		0.894840, -0.433237, -0.107547,
		32.026112, 33.393688, 49.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.403362, 29.647928, 53.795715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599693, 29.996349, 53.803219>,  <36.717491, 30.205402, 53.807720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599693, 29.996349, 53.803219>,  <36.403362, 29.647928, 53.795715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599693, 29.996349, 53.803219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140238, -0.057735, -0.988433,
		-0.859894, 0.487785, -0.150493,
		0.490831, 0.871053, 0.018760,
		36.746944, 30.257666, 53.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114120, 30.170132, 53.394009>,  <36.403362, 29.647928, 53.795715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114120, 30.170132, 53.394009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495972, 30.287514, 53.414307>,  <36.725082, 30.357943, 53.426487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495972, 30.287514, 53.414307>,  <36.114120, 30.170132, 53.394009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495972, 30.287514, 53.414307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068013, -0.048922, -0.996484,
		-0.289943, 0.954720, -0.066661,
		0.954624, 0.293457, 0.050749,
		36.782360, 30.375551, 53.429531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223030, 30.778276, 52.869858>,  <36.114120, 30.170132, 53.394009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223030, 30.778276, 52.869858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577881, 30.612238, 52.950554>,  <36.790791, 30.512615, 52.998974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577881, 30.612238, 52.950554>,  <36.223030, 30.778276, 52.869858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577881, 30.612238, 52.950554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271821, 0.116659, -0.955251,
		0.372988, 0.902266, 0.216324,
		0.887127, -0.415098, 0.201742,
		36.844017, 30.487709, 53.011078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715870, 31.259438, 52.816540>,  <36.223030, 30.778276, 52.869858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715870, 31.259438, 52.816540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.904366, 30.908493, 52.780384>,  <37.017464, 30.697926, 52.758690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.904366, 30.908493, 52.780384>,  <36.715870, 31.259438, 52.816540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904366, 30.908493, 52.780384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229856, 0.221097, -0.947778,
		0.851528, 0.425854, 0.305857,
		0.471239, -0.877362, -0.090385,
		37.045738, 30.645285, 52.753269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303051, 31.404852, 52.397758>,  <36.715870, 31.259438, 52.816540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303051, 31.404852, 52.397758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.258041, 31.009226, 52.359615>,  <37.231037, 30.771851, 52.336731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.258041, 31.009226, 52.359615>,  <37.303051, 31.404852, 52.397758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258041, 31.009226, 52.359615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260418, 0.063258, -0.963421,
		0.958917, -0.133238, 0.250452,
		-0.112521, -0.989063, -0.095357,
		37.224285, 30.712507, 52.331009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831268, 31.162201, 51.912041>,  <37.303051, 31.404852, 52.397758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831268, 31.162201, 51.912041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.597107, 30.839617, 51.945320>,  <37.456608, 30.646067, 51.965286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.597107, 30.839617, 51.945320>,  <37.831268, 31.162201, 51.912041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597107, 30.839617, 51.945320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073137, -0.154732, -0.985246,
		0.807434, -0.570684, 0.149563,
		-0.585407, -0.806460, 0.083198,
		37.421486, 30.597679, 51.970280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183407, 30.694252, 51.480553>,  <37.831268, 31.162201, 51.912041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183407, 30.694252, 51.480553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.793140, 30.610790, 51.507496>,  <37.558979, 30.560713, 51.523663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.793140, 30.610790, 51.507496>,  <38.183407, 30.694252, 51.480553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793140, 30.610790, 51.507496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038669, -0.138644, -0.989587,
		0.215822, -0.968112, 0.127202,
		-0.975667, -0.208656, 0.067359,
		37.500439, 30.548193, 51.527702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132561, 30.064083, 51.238586>,  <38.183407, 30.694252, 51.480553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132561, 30.064083, 51.238586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762779, 30.214323, 51.212315>,  <37.540909, 30.304466, 51.196552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762779, 30.214323, 51.212315>,  <38.132561, 30.064083, 51.238586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762779, 30.214323, 51.212315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009978, -0.196021, -0.980549,
		-0.381168, -0.905815, 0.184959,
		-0.924452, 0.375599, -0.065679,
		37.485443, 30.327002, 51.192612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698822, 29.637503, 50.758465>,  <38.132561, 30.064083, 51.238586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698822, 29.637503, 50.758465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.496788, 29.982563, 50.769169>,  <37.375568, 30.189600, 50.775589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.496788, 29.982563, 50.769169>,  <37.698822, 29.637503, 50.758465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496788, 29.982563, 50.769169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214017, -0.095154, -0.972184,
		-0.836111, -0.496766, 0.232684,
		-0.505089, 0.862653, 0.026757,
		37.345261, 30.241360, 50.777195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115597, 29.496172, 50.359470>,  <37.698822, 29.637503, 50.758465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115597, 29.496172, 50.359470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120682, 29.894447, 50.396221>,  <37.123734, 30.133413, 50.418270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120682, 29.894447, 50.396221>,  <37.115597, 29.496172, 50.359470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120682, 29.894447, 50.396221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215688, 0.092447, -0.972076,
		-0.976380, -0.007460, 0.215933,
		0.012711, 0.995690, 0.091872,
		37.124496, 30.193153, 50.423782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524273, 29.694550, 50.030323>,  <37.115597, 29.496172, 50.359470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524273, 29.694550, 50.030323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761112, 30.016895, 50.031116>,  <36.903214, 30.210302, 50.031593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761112, 30.016895, 50.031116>,  <36.524273, 29.694550, 50.030323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761112, 30.016895, 50.031116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212121, 0.158226, -0.964349,
		-0.777449, 0.570567, 0.264626,
		0.592096, 0.805865, 0.001983,
		36.938740, 30.258656, 50.031712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196560, 30.126341, 49.649246>,  <36.524273, 29.694550, 50.030323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196560, 30.126341, 49.649246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.570641, 30.267117, 49.633533>,  <36.795090, 30.351582, 49.624107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.570641, 30.267117, 49.633533>,  <36.196560, 30.126341, 49.649246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570641, 30.267117, 49.633533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158088, 0.315655, -0.935612,
		-0.316880, 0.881192, 0.350837,
		0.935198, 0.351940, -0.039281,
		36.851200, 30.372698, 49.621750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582726, 30.543795, 49.601322>,  <36.196560, 30.126341, 49.649246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582726, 30.543795, 49.601322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331921, 30.237314, 49.545044>,  <35.181438, 30.053427, 49.511276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331921, 30.237314, 49.545044>,  <35.582726, 30.543795, 49.601322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331921, 30.237314, 49.545044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234054, -0.357553, 0.904088,
		-0.743021, 0.533939, 0.403521,
		-0.627008, -0.766202, -0.140699,
		35.143818, 30.007454, 49.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520924, 30.436947, 50.155979>,  <35.582726, 30.543795, 49.601322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520924, 30.436947, 50.155979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309490, 30.124090, 50.024006>,  <35.182632, 29.936377, 49.944824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309490, 30.124090, 50.024006>,  <35.520924, 30.436947, 50.155979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309490, 30.124090, 50.024006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007724, -0.393078, 0.919473,
		-0.848848, 0.483468, 0.213815,
		-0.528581, -0.782144, -0.329929,
		35.150917, 29.889446, 49.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965755, 30.437069, 50.598248>,  <35.520924, 30.436947, 50.155979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965755, 30.437069, 50.598248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.047710, 30.071741, 50.457470>,  <35.096886, 29.852545, 50.373005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.047710, 30.071741, 50.457470>,  <34.965755, 30.437069, 50.598248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047710, 30.071741, 50.457470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031259, -0.365493, 0.930289,
		-0.978285, -0.179607, -0.103436,
		0.204891, -0.913322, -0.351942,
		35.109177, 29.797745, 50.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464142, 29.997847, 50.932632>,  <34.965755, 30.437069, 50.598248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464142, 29.997847, 50.932632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718967, 29.719866, 50.799252>,  <34.871864, 29.553078, 50.719223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718967, 29.719866, 50.799252>,  <34.464142, 29.997847, 50.932632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718967, 29.719866, 50.799252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060626, -0.476438, 0.877115,
		-0.768422, -0.538564, -0.345655,
		0.637066, -0.694950, -0.333454,
		34.910088, 29.511381, 50.699215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146301, 29.387365, 51.014374>,  <34.464142, 29.997847, 50.932632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146301, 29.387365, 51.014374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523472, 29.260740, 50.973038>,  <34.749775, 29.184765, 50.948235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523472, 29.260740, 50.973038>,  <34.146301, 29.387365, 51.014374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523472, 29.260740, 50.973038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091597, -0.544920, 0.833470,
		-0.320161, -0.776434, -0.542815,
		0.942925, -0.316565, -0.103343,
		34.806351, 29.165771, 50.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233150, 28.584942, 51.050640>,  <34.146301, 29.387365, 51.014374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233150, 28.584942, 51.050640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568943, 28.761232, 51.177784>,  <34.770416, 28.867006, 51.254070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568943, 28.761232, 51.177784>,  <34.233150, 28.584942, 51.050640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568943, 28.761232, 51.177784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129791, -0.405396, 0.904880,
		0.527663, -0.800884, -0.283119,
		0.839480, 0.440726, 0.317860,
		34.820786, 28.893450, 51.273144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485443, 28.045128, 51.486794>,  <34.233150, 28.584942, 51.050640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485443, 28.045128, 51.486794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.666874, 28.389376, 51.579395>,  <34.775734, 28.595924, 51.634956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.666874, 28.389376, 51.579395>,  <34.485443, 28.045128, 51.486794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666874, 28.389376, 51.579395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001202, -0.260358, 0.965511,
		0.891215, -0.437658, -0.119127,
		0.453579, 0.860621, 0.231509,
		34.802948, 28.647562, 51.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923233, 27.943735, 52.021072>,  <34.485443, 28.045128, 51.486794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923233, 27.943735, 52.021072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874901, 28.339024, 52.058643>,  <34.845901, 28.576197, 52.081188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874901, 28.339024, 52.058643>,  <34.923233, 27.943735, 52.021072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874901, 28.339024, 52.058643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065534, -0.102358, 0.992587,
		0.990507, 0.113780, 0.077130,
		-0.120831, 0.988219, 0.093929,
		34.838650, 28.635489, 52.086823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161755, 28.101768, 52.698715>,  <34.923233, 27.943735, 52.021072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161755, 28.101768, 52.698715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969830, 28.441257, 52.609772>,  <34.854675, 28.644951, 52.556404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969830, 28.441257, 52.609772>,  <35.161755, 28.101768, 52.698715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969830, 28.441257, 52.609772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095967, 0.201153, 0.974847,
		0.872104, 0.489088, -0.015068,
		-0.479817, 0.848723, -0.222363,
		34.825886, 28.695875, 52.543064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337967, 28.568918, 53.108627>,  <35.161755, 28.101768, 52.698715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337967, 28.568918, 53.108627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976940, 28.705841, 53.004166>,  <34.760323, 28.787994, 52.941486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976940, 28.705841, 53.004166>,  <35.337967, 28.568918, 53.108627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976940, 28.705841, 53.004166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168493, 0.277369, 0.945873,
		0.396214, 0.897716, -0.192668,
		-0.902565, 0.342305, -0.261157,
		34.706169, 28.808533, 52.925819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318542, 29.219793, 53.400146>,  <35.337967, 28.568918, 53.108627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318542, 29.219793, 53.400146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934021, 29.192465, 53.293396>,  <34.703308, 29.176067, 53.229347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934021, 29.192465, 53.293396>,  <35.318542, 29.219793, 53.400146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934021, 29.192465, 53.293396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272109, 0.386629, 0.881178,
		0.042978, 0.919701, -0.390260,
		-0.961306, -0.068322, -0.266875,
		34.645630, 29.171968, 53.213333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948639, 29.811140, 53.590427>,  <35.318542, 29.219793, 53.400146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948639, 29.811140, 53.590427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.655865, 29.542414, 53.544952>,  <34.480198, 29.381178, 53.517666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.655865, 29.542414, 53.544952>,  <34.948639, 29.811140, 53.590427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655865, 29.542414, 53.544952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338091, 0.213226, 0.916640,
		-0.591573, 0.709363, -0.383204,
		-0.731940, -0.671817, -0.113691,
		34.436283, 29.340868, 53.510845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382572, 30.185053, 53.701141>,  <34.948639, 29.811140, 53.590427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382572, 30.185053, 53.701141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270596, 29.809692, 53.782173>,  <34.203411, 29.584476, 53.830791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270596, 29.809692, 53.782173>,  <34.382572, 30.185053, 53.701141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270596, 29.809692, 53.782173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421491, 0.309727, 0.852299,
		-0.862543, 0.153205, -0.482232,
		-0.279937, -0.938401, 0.202578,
		34.186615, 29.528172, 53.842945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734570, 30.269983, 53.894386>,  <34.382572, 30.185053, 53.701141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734570, 30.269983, 53.894386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859074, 29.918156, 54.038319>,  <33.933777, 29.707060, 54.124680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859074, 29.918156, 54.038319>,  <33.734570, 30.269983, 53.894386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859074, 29.918156, 54.038319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161629, 0.324126, 0.932104,
		-0.936479, -0.348285, -0.041277,
		0.311259, -0.879568, 0.359830,
		33.952450, 29.654285, 54.146267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116356, 30.613676, 53.521206>,  <33.734570, 30.269983, 53.894386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116356, 30.613676, 53.521206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217369, 30.948961, 53.714546>,  <33.277977, 31.150133, 53.830551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217369, 30.948961, 53.714546>,  <33.116356, 30.613676, 53.521206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217369, 30.948961, 53.714546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318699, 0.543719, -0.776402,
		-0.913596, 0.042026, 0.404445,
		0.252534, 0.838214, 0.483346,
		33.293129, 31.200426, 53.859550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489109, 31.081652, 53.510273>,  <33.116356, 30.613676, 53.521206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489109, 31.081652, 53.510273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811169, 31.309185, 53.577408>,  <33.004406, 31.445705, 53.617687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811169, 31.309185, 53.577408>,  <32.489109, 31.081652, 53.510273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811169, 31.309185, 53.577408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201120, 0.528097, -0.825023,
		-0.557931, 0.630511, 0.539600,
		0.805148, 0.568831, 0.167833,
		33.052711, 31.479834, 53.627758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317123, 31.793585, 53.492172>,  <32.489109, 31.081652, 53.510273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317123, 31.793585, 53.492172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706825, 31.841335, 53.415676>,  <32.940647, 31.869986, 53.369778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706825, 31.841335, 53.415676>,  <32.317123, 31.793585, 53.492172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706825, 31.841335, 53.415676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225422, 0.504332, -0.833567,
		-0.003059, 0.855218, 0.518259,
		0.974256, 0.119377, -0.191242,
		32.999104, 31.877148, 53.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476685, 32.571426, 53.506348>,  <32.317123, 31.793585, 53.492172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476685, 32.571426, 53.506348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770565, 32.397854, 53.297764>,  <32.946892, 32.293709, 53.172615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770565, 32.397854, 53.297764>,  <32.476685, 32.571426, 53.506348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770565, 32.397854, 53.297764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064618, 0.720410, -0.690531,
		0.675305, 0.541030, 0.501247,
		0.734702, -0.433930, -0.521457,
		32.990974, 32.267673, 53.141327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824203, 33.067600, 53.171799>,  <32.476685, 32.571426, 53.506348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824203, 33.067600, 53.171799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954235, 32.783138, 52.922455>,  <33.032253, 32.612461, 52.772850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954235, 32.783138, 52.922455>,  <32.824203, 33.067600, 53.171799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954235, 32.783138, 52.922455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148996, 0.612412, -0.776371,
		0.933875, 0.345260, 0.093123,
		0.325080, -0.711159, -0.623359,
		33.051758, 32.569790, 52.735447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998837, 33.478271, 52.706638>,  <32.824203, 33.067600, 53.171799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998837, 33.478271, 52.706638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048504, 33.129025, 52.518070>,  <33.078304, 32.919476, 52.404930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048504, 33.129025, 52.518070>,  <32.998837, 33.478271, 52.706638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048504, 33.129025, 52.518070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205480, 0.442177, -0.873074,
		0.970753, 0.205276, -0.124505,
		0.124168, -0.873122, -0.471425,
		33.085754, 32.867088, 52.376644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515526, 33.539631, 52.246727>,  <32.998837, 33.478271, 52.706638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515526, 33.539631, 52.246727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.279541, 33.253082, 52.097725>,  <33.137951, 33.081154, 52.008324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.279541, 33.253082, 52.097725>,  <33.515526, 33.539631, 52.246727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279541, 33.253082, 52.097725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304407, 0.624640, -0.719139,
		0.747850, -0.310873, -0.586582,
		-0.589964, -0.716367, -0.372505,
		33.102551, 33.038174, 51.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220913, 33.710922, 52.209003>,  <33.515526, 33.539631, 52.246727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220913, 33.710922, 52.209003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233662, 34.107777, 52.160603>,  <34.241310, 34.345890, 52.131561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233662, 34.107777, 52.160603>,  <34.220913, 33.710922, 52.209003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233662, 34.107777, 52.160603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143452, 0.115268, 0.982922,
		0.989144, -0.048685, -0.138651,
		0.031871, 0.992141, -0.121001,
		34.243221, 34.405418, 52.124302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760384, 33.962467, 52.652962>,  <34.220913, 33.710922, 52.209003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760384, 33.962467, 52.652962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.536995, 34.286541, 52.581738>,  <34.402962, 34.480988, 52.539001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.536995, 34.286541, 52.581738>,  <34.760384, 33.962467, 52.652962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536995, 34.286541, 52.581738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046011, 0.244580, 0.968537,
		0.828248, 0.532705, -0.173868,
		-0.558469, 0.810189, -0.178063,
		34.369453, 34.529598, 52.528320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029968, 34.511520, 53.078007>,  <34.760384, 33.962467, 52.652962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029968, 34.511520, 53.078007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660328, 34.635517, 52.988609>,  <34.438545, 34.709915, 52.934971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660328, 34.635517, 52.988609>,  <35.029968, 34.511520, 53.078007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660328, 34.635517, 52.988609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105516, 0.355129, 0.928843,
		0.367300, 0.881925, -0.295465,
		-0.924098, 0.309988, -0.223496,
		34.383099, 34.728512, 52.921562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925926, 35.203114, 53.387897>,  <35.029968, 34.511520, 53.078007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925926, 35.203114, 53.387897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558140, 35.059238, 53.324406>,  <34.337467, 34.972912, 53.286308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558140, 35.059238, 53.324406>,  <34.925926, 35.203114, 53.387897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558140, 35.059238, 53.324406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302826, 0.390444, 0.869396,
		-0.250739, 0.847452, -0.467926,
		-0.919470, -0.359692, -0.158731,
		34.282299, 34.951332, 53.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423992, 35.753971, 53.564205>,  <34.925926, 35.203114, 53.387897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423992, 35.753971, 53.564205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220268, 35.410770, 53.590836>,  <34.098034, 35.204849, 53.606815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220268, 35.410770, 53.590836>,  <34.423992, 35.753971, 53.564205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220268, 35.410770, 53.590836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270988, 0.233328, 0.933876,
		-0.816801, 0.457593, -0.351345,
		-0.509314, -0.858002, 0.066580,
		34.067474, 35.153370, 53.610809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881325, 35.970211, 53.883289>,  <34.423992, 35.753971, 53.564205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881325, 35.970211, 53.883289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895462, 35.572357, 53.922188>,  <33.903946, 35.333645, 53.945526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895462, 35.572357, 53.922188>,  <33.881325, 35.970211, 53.883289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895462, 35.572357, 53.922188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121796, 0.092290, 0.988255,
		-0.991925, -0.046775, -0.117880,
		0.035347, -0.994633, 0.097242,
		33.906067, 35.273968, 53.951359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287643, 35.847656, 54.151257>,  <33.881325, 35.970211, 53.883289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287643, 35.847656, 54.151257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505459, 35.536640, 54.277058>,  <33.636150, 35.350033, 54.352539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505459, 35.536640, 54.277058>,  <33.287643, 35.847656, 54.151257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505459, 35.536640, 54.277058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128272, 0.293363, 0.947356,
		-0.828868, -0.556216, 0.060012,
		0.544540, -0.777536, 0.314506,
		33.668819, 35.303379, 54.371410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927826, 35.773472, 54.674500>,  <33.287643, 35.847656, 54.151257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927826, 35.773472, 54.674500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274078, 35.578514, 54.720341>,  <33.481831, 35.461540, 54.747845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274078, 35.578514, 54.720341>,  <32.927826, 35.773472, 54.674500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274078, 35.578514, 54.720341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002705, 0.224330, 0.974509,
		-0.500682, -0.843872, 0.192868,
		0.865627, -0.487397, 0.114601,
		33.533768, 35.432297, 54.754723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860291, 35.125927, 55.114429>,  <32.927826, 35.773472, 54.674500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860291, 35.125927, 55.114429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234341, 35.265102, 55.141201>,  <33.458771, 35.348610, 55.157265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234341, 35.265102, 55.141201>,  <32.860291, 35.125927, 55.114429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234341, 35.265102, 55.141201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092986, 0.058709, 0.993935,
		0.341901, -0.935676, 0.087254,
		0.935124, 0.347941, 0.066932,
		33.514877, 35.369484, 55.161282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.977348, 36.741341, 39.562927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312943, 36.541817, 39.649914>,  <34.514301, 36.422104, 39.702106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312943, 36.541817, 39.649914>,  <33.977348, 36.741341, 39.562927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312943, 36.541817, 39.649914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286975, -0.066048, 0.955658,
		-0.462325, -0.864193, -0.198558,
		0.838988, -0.498806, 0.217466,
		34.564640, 36.392174, 39.715153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832306, 36.082413, 39.984566>,  <33.977348, 36.741341, 39.562927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832306, 36.082413, 39.984566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185860, 36.260414, 40.042130>,  <34.397991, 36.367214, 40.076668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185860, 36.260414, 40.042130>,  <33.832306, 36.082413, 39.984566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185860, 36.260414, 40.042130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194306, 0.069504, 0.978476,
		0.425426, -0.892826, 0.147901,
		0.883888, 0.445007, 0.143912,
		34.451027, 36.393917, 40.085304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095631, 35.749153, 40.550407>,  <33.832306, 36.082413, 39.984566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095631, 35.749153, 40.550407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307083, 36.088509, 40.539219>,  <34.433956, 36.292122, 40.532505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307083, 36.088509, 40.539219>,  <34.095631, 35.749153, 40.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307083, 36.088509, 40.539219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090451, 0.089062, 0.991911,
		0.844018, -0.521826, 0.123819,
		0.528633, 0.848390, -0.027970,
		34.465672, 36.343025, 40.530827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629486, 35.655285, 41.003494>,  <34.095631, 35.749153, 40.550407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629486, 35.655285, 41.003494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565346, 36.048088, 40.963600>,  <34.526863, 36.283772, 40.939663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565346, 36.048088, 40.963600>,  <34.629486, 35.655285, 41.003494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565346, 36.048088, 40.963600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168486, 0.126788, 0.977516,
		0.972574, 0.139942, -0.185785,
		-0.160351, 0.982009, -0.099733,
		34.517242, 36.342690, 40.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204842, 35.913139, 41.276646>,  <34.629486, 35.655285, 41.003494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204842, 35.913139, 41.276646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927761, 36.200924, 41.296791>,  <34.761513, 36.373596, 41.308880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927761, 36.200924, 41.296791>,  <35.204842, 35.913139, 41.276646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927761, 36.200924, 41.296791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158875, 0.084100, 0.983710,
		0.703510, 0.689417, -0.172561,
		-0.692699, 0.719466, 0.050366,
		34.719952, 36.416763, 41.311901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285038, 36.228119, 41.954735>,  <35.204842, 35.913139, 41.276646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285038, 36.228119, 41.954735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954811, 36.426552, 41.847157>,  <34.756676, 36.545612, 41.782608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954811, 36.426552, 41.847157>,  <35.285038, 36.228119, 41.954735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954811, 36.426552, 41.847157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105299, 0.332802, 0.937099,
		0.554388, 0.801961, -0.222514,
		-0.825570, 0.496086, -0.268947,
		34.707142, 36.575378, 41.766472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316978, 36.965881, 42.192730>,  <35.285038, 36.228119, 41.954735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316978, 36.965881, 42.192730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936543, 36.852211, 42.144272>,  <34.708282, 36.784008, 42.115196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936543, 36.852211, 42.144272>,  <35.316978, 36.965881, 42.192730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936543, 36.852211, 42.144272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195580, 0.250339, 0.948197,
		-0.239128, 0.925512, -0.293674,
		-0.951087, -0.284178, -0.121149,
		34.651215, 36.766956, 42.107925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850395, 37.585617, 42.349388>,  <35.316978, 36.965881, 42.192730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850395, 37.585617, 42.349388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626637, 37.259754, 42.410580>,  <34.492382, 37.064236, 42.447292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626637, 37.259754, 42.410580>,  <34.850395, 37.585617, 42.349388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626637, 37.259754, 42.410580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159912, 0.287152, 0.944443,
		-0.813329, 0.503855, -0.290906,
		-0.559397, -0.814662, 0.152976,
		34.458817, 37.015354, 42.456474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259274, 37.745411, 42.736069>,  <34.850395, 37.585617, 42.349388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259274, 37.745411, 42.736069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294773, 37.351887, 42.798351>,  <34.316074, 37.115772, 42.835720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294773, 37.351887, 42.798351>,  <34.259274, 37.745411, 42.736069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294773, 37.351887, 42.798351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089159, 0.147849, 0.984983,
		-0.992055, -0.101301, -0.074594,
		0.088751, -0.983808, 0.155707,
		34.321400, 37.056744, 42.845062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687321, 37.558784, 43.301113>,  <34.259274, 37.745411, 42.736069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687321, 37.558784, 43.301113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956558, 37.263050, 43.293900>,  <34.118103, 37.085609, 43.289570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956558, 37.263050, 43.293900>,  <33.687321, 37.558784, 43.301113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956558, 37.263050, 43.293900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133777, -0.145703, 0.980242,
		-0.727354, -0.657385, -0.196978,
		0.673097, -0.739335, -0.018035,
		34.158485, 37.041248, 43.288490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350590, 36.981365, 43.622993>,  <33.687321, 37.558784, 43.301113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350590, 36.981365, 43.622993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746700, 36.927353, 43.636345>,  <33.984367, 36.894947, 43.644356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746700, 36.927353, 43.636345>,  <33.350590, 36.981365, 43.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746700, 36.927353, 43.636345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041210, -0.055653, 0.997599,
		-0.132852, -0.989277, -0.060677,
		0.990279, -0.135033, 0.033375,
		34.043785, 36.886845, 43.646358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401165, 36.526112, 44.100712>,  <33.350590, 36.981365, 43.622993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401165, 36.526112, 44.100712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769974, 36.677502, 44.068119>,  <33.991257, 36.768333, 44.048565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769974, 36.677502, 44.068119>,  <33.401165, 36.526112, 44.100712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769974, 36.677502, 44.068119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135384, -0.118027, 0.983738,
		0.362700, -0.918057, -0.160063,
		0.922020, 0.378472, -0.081482,
		34.046581, 36.791042, 44.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183800, 35.998981, 43.517715>,  <33.401165, 36.526112, 44.100712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183800, 35.998981, 43.517715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817013, 35.842709, 43.550037>,  <32.596939, 35.748943, 43.569431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817013, 35.842709, 43.550037>,  <33.183800, 35.998981, 43.517715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817013, 35.842709, 43.550037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017133, -0.240919, -0.970394,
		0.398586, -0.888439, 0.227609,
		-0.916971, -0.390685, 0.080805,
		32.541920, 35.725502, 43.574280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079605, 35.302715, 43.187248>,  <33.183800, 35.998981, 43.517715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079605, 35.302715, 43.187248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716812, 35.468613, 43.157959>,  <32.499134, 35.568153, 43.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716812, 35.468613, 43.157959>,  <33.079605, 35.302715, 43.187248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716812, 35.468613, 43.157959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051098, -0.280933, -0.958366,
		-0.418050, -0.865483, 0.275995,
		-0.906986, 0.414748, -0.073219,
		32.444717, 35.593037, 43.135994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634670, 34.827202, 42.889935>,  <33.079605, 35.302715, 43.187248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634670, 34.827202, 42.889935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418404, 35.159046, 42.834179>,  <32.288643, 35.358150, 42.800728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418404, 35.159046, 42.834179>,  <32.634670, 34.827202, 42.889935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418404, 35.159046, 42.834179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179947, -0.275913, -0.944188,
		-0.821763, -0.485412, 0.298463,
		-0.540670, 0.829607, -0.139386,
		32.256203, 35.407928, 42.792362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091412, 34.613335, 42.540611>,  <32.634670, 34.827202, 42.889935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091412, 34.613335, 42.540611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071445, 35.006737, 42.471077>,  <32.059467, 35.242779, 42.429356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071445, 35.006737, 42.471077>,  <32.091412, 34.613335, 42.540611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071445, 35.006737, 42.471077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245555, -0.180799, -0.952373,
		-0.968097, -0.004849, 0.250530,
		-0.049914, 0.983508, -0.173840,
		32.056473, 35.301788, 42.418926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423204, 34.798687, 42.366699>,  <32.091412, 34.613335, 42.540611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423204, 34.798687, 42.366699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673008, 35.057579, 42.191849>,  <31.822891, 35.212914, 42.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673008, 35.057579, 42.191849>,  <31.423204, 34.798687, 42.366699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673008, 35.057579, 42.191849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346724, -0.271761, -0.897735,
		-0.699835, 0.712208, 0.054692,
		0.624511, 0.647229, -0.437128,
		31.860361, 35.251747, 42.060711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090658, 34.983593, 41.755093>,  <31.423204, 34.798687, 42.366699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090658, 34.983593, 41.755093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463181, 35.114952, 41.692066>,  <31.686693, 35.193768, 41.654251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463181, 35.114952, 41.692066>,  <31.090658, 34.983593, 41.755093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463181, 35.114952, 41.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106179, -0.169032, -0.979875,
		-0.348417, 0.929293, -0.122552,
		0.931306, 0.328393, -0.157565,
		31.742573, 35.213470, 41.644798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024958, 35.526569, 41.268478>,  <31.090658, 34.983593, 41.755093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024958, 35.526569, 41.268478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391541, 35.369289, 41.238800>,  <31.611490, 35.274921, 41.220993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391541, 35.369289, 41.238800>,  <31.024958, 35.526569, 41.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391541, 35.369289, 41.238800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161172, -0.193012, -0.967869,
		0.366243, 0.898967, -0.240260,
		0.916455, -0.393198, -0.074199,
		31.666477, 35.251331, 41.216541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197847, 35.733498, 40.567669>,  <31.024958, 35.526569, 41.268478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197847, 35.733498, 40.567669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431534, 35.418839, 40.647541>,  <31.571747, 35.230042, 40.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431534, 35.418839, 40.647541>,  <31.197847, 35.733498, 40.567669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431534, 35.418839, 40.647541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041828, -0.274896, -0.960564,
		0.810518, 0.552827, -0.193503,
		0.584218, -0.786648, 0.199684,
		31.606800, 35.182842, 40.707447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722609, 35.647369, 40.037212>,  <31.197847, 35.733498, 40.567669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722609, 35.647369, 40.037212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735195, 35.277130, 40.188091>,  <31.742748, 35.054985, 40.278618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735195, 35.277130, 40.188091>,  <31.722609, 35.647369, 40.037212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735195, 35.277130, 40.188091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030780, -0.376308, -0.925983,
		0.999031, 0.040749, 0.016648,
		0.031468, -0.925598, 0.377198,
		31.744635, 34.999451, 40.301250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204502, 35.319759, 39.643471>,  <31.722609, 35.647369, 40.037212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204502, 35.319759, 39.643471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994379, 35.021240, 39.806976>,  <31.868305, 34.842129, 39.905079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994379, 35.021240, 39.806976>,  <32.204502, 35.319759, 39.643471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994379, 35.021240, 39.806976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035236, -0.499053, -0.865855,
		0.850181, -0.440439, 0.288454,
		-0.525310, -0.746297, 0.408766,
		31.836786, 34.797352, 39.929607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548576, 34.686104, 39.472713>,  <32.204502, 35.319759, 39.643471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548576, 34.686104, 39.472713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186691, 34.544487, 39.567497>,  <31.969561, 34.459518, 39.624367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186691, 34.544487, 39.567497>,  <32.548576, 34.686104, 39.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186691, 34.544487, 39.567497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105021, -0.724390, -0.681344,
		0.412872, -0.591536, 0.692547,
		-0.904714, -0.354040, 0.236957,
		31.915277, 34.438274, 39.638584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559078, 33.922195, 39.462547>,  <32.548576, 34.686104, 39.472713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559078, 33.922195, 39.462547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167583, 33.995312, 39.425316>,  <31.932688, 34.039181, 39.402977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167583, 33.995312, 39.425316>,  <32.559078, 33.922195, 39.462547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167583, 33.995312, 39.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059154, -0.686003, -0.725190,
		-0.196414, -0.704263, 0.682228,
		-0.978735, 0.182794, -0.093081,
		31.873962, 34.050152, 39.397392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274891, 33.221909, 39.341644>,  <32.559078, 33.922195, 39.462547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274891, 33.221909, 39.341644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041309, 33.507660, 39.187416>,  <31.901161, 33.679111, 39.094879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041309, 33.507660, 39.187416>,  <32.274891, 33.221909, 39.341644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041309, 33.507660, 39.187416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113971, -0.398108, -0.910231,
		-0.803748, -0.575474, 0.151057,
		-0.583952, 0.714380, -0.385566,
		31.866123, 33.721973, 39.071747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837767, 32.808022, 39.024624>,  <32.274891, 33.221909, 39.341644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837767, 32.808022, 39.024624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798395, 33.176537, 38.874134>,  <31.774773, 33.397644, 38.783840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798395, 33.176537, 38.874134>,  <31.837767, 32.808022, 39.024624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798395, 33.176537, 38.874134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184080, -0.354684, -0.916686,
		-0.977970, -0.159485, -0.134678,
		-0.098430, 0.921284, -0.376228,
		31.768866, 33.452923, 38.761265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305279, 32.312416, 39.185020>,  <31.837767, 32.808022, 39.024624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305279, 32.312416, 39.185020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354317, 31.944326, 39.036339>,  <32.383739, 31.723473, 38.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354317, 31.944326, 39.036339>,  <32.305279, 32.312416, 39.185020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354317, 31.944326, 39.036339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961033, -0.016577, -0.275936,
		0.247760, 0.391049, -0.886395,
		0.122598, -0.920221, -0.371704,
		32.391094, 31.668261, 38.924828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821190, 31.705969, 39.295422>,  <32.305279, 32.312416, 39.185020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821190, 31.705969, 39.295422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217712, 31.653500, 39.299454>,  <32.455627, 31.622019, 39.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217712, 31.653500, 39.299454>,  <31.821190, 31.705969, 39.295422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217712, 31.653500, 39.299454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003850, 0.047698, 0.998854,
		-0.131503, -0.990212, 0.046778,
		0.991308, -0.131173, 0.010084,
		32.515106, 31.614147, 39.302479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950239, 31.264997, 39.772125>,  <31.821190, 31.705969, 39.295422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950239, 31.264997, 39.772125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300392, 31.456823, 39.747711>,  <32.510483, 31.571918, 39.733063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300392, 31.456823, 39.747711>,  <31.950239, 31.264997, 39.772125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300392, 31.456823, 39.747711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155504, -0.159782, 0.974827,
		0.457738, -0.862838, -0.214444,
		0.875382, 0.479563, -0.061037,
		32.563007, 31.600693, 39.729401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497124, 30.754221, 39.908455>,  <31.950239, 31.264997, 39.772125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497124, 30.754221, 39.908455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671215, 31.104847, 39.990635>,  <32.775669, 31.315222, 40.039944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671215, 31.104847, 39.990635>,  <32.497124, 30.754221, 39.908455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671215, 31.104847, 39.990635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232550, -0.329908, 0.914922,
		0.869767, -0.350424, -0.347431,
		0.435231, 0.876563, 0.205452,
		32.801785, 31.367817, 40.052269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183441, 30.647474, 40.154881>,  <32.497124, 30.754221, 39.908455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183441, 30.647474, 40.154881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077076, 31.011187, 40.282940>,  <33.013256, 31.229414, 40.359776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077076, 31.011187, 40.282940>,  <33.183441, 30.647474, 40.154881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077076, 31.011187, 40.282940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138665, -0.292572, 0.946136,
		0.953971, 0.295987, -0.048286,
		-0.265917, 0.909282, 0.320148,
		32.997299, 31.283972, 40.378983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651001, 30.800123, 40.600491>,  <33.183441, 30.647474, 40.154881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651001, 30.800123, 40.600491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361576, 31.060989, 40.690948>,  <33.187923, 31.217508, 40.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361576, 31.060989, 40.690948>,  <33.651001, 30.800123, 40.600491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361576, 31.060989, 40.690948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115994, -0.208084, 0.971209,
		0.680445, 0.728960, 0.074914,
		-0.723560, 0.652165, 0.226145,
		33.144508, 31.256639, 40.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957802, 31.335346, 41.052979>,  <33.651001, 30.800123, 40.600491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957802, 31.335346, 41.052979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562920, 31.320761, 41.115082>,  <33.325993, 31.312010, 41.152344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562920, 31.320761, 41.115082>,  <33.957802, 31.335346, 41.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562920, 31.320761, 41.115082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159071, -0.155314, 0.974974,
		-0.011436, 0.987192, 0.159126,
		-0.987201, -0.036462, 0.155257,
		33.266758, 31.309822, 41.161659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881405, 31.729111, 41.659309>,  <33.957802, 31.335346, 41.052979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881405, 31.729111, 41.659309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561188, 31.490734, 41.634052>,  <33.369057, 31.347708, 41.618896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561188, 31.490734, 41.634052>,  <33.881405, 31.729111, 41.659309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561188, 31.490734, 41.634052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046282, -0.166537, 0.984948,
		-0.597486, 0.785571, 0.160902,
		-0.800543, -0.595939, -0.063146,
		33.321026, 31.311953, 41.615108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415028, 31.879875, 42.260738>,  <33.881405, 31.729111, 41.659309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415028, 31.879875, 42.260738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288513, 31.521252, 42.136707>,  <33.212605, 31.306078, 42.062290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288513, 31.521252, 42.136707>,  <33.415028, 31.879875, 42.260738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288513, 31.521252, 42.136707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205480, -0.254350, 0.945031,
		-0.926144, 0.362613, -0.103778,
		-0.316285, -0.896559, -0.310075,
		33.193626, 31.252285, 42.043686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867699, 31.890020, 42.693886>,  <33.415028, 31.879875, 42.260738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867699, 31.890020, 42.693886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902081, 31.516167, 42.555862>,  <32.922710, 31.291855, 42.473049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902081, 31.516167, 42.555862>,  <32.867699, 31.890020, 42.693886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902081, 31.516167, 42.555862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401906, -0.349440, 0.846382,
		-0.911637, 0.065929, -0.405673,
		0.085958, -0.934636, -0.345060,
		32.927868, 31.235775, 42.452343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224834, 31.521296, 42.842682>,  <32.867699, 31.890020, 42.693886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224834, 31.521296, 42.842682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524345, 31.259979, 42.797890>,  <32.704052, 31.103189, 42.771015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524345, 31.259979, 42.797890>,  <32.224834, 31.521296, 42.842682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524345, 31.259979, 42.797890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146700, -0.328106, 0.933180,
		-0.646380, -0.682319, -0.341517,
		0.748780, -0.653290, -0.111985,
		32.748978, 31.063992, 42.764294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129776, 30.998899, 43.247795>,  <32.224834, 31.521296, 42.842682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129776, 30.998899, 43.247795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515884, 30.909637, 43.193470>,  <32.747551, 30.856079, 43.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515884, 30.909637, 43.193470>,  <32.129776, 30.998899, 43.247795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515884, 30.909637, 43.193470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027315, -0.430830, 0.902020,
		-0.259804, -0.874407, -0.409774,
		0.965275, -0.223155, -0.135816,
		32.805466, 30.842691, 43.152725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262527, 30.250805, 43.496845>,  <32.129776, 30.998899, 43.247795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262527, 30.250805, 43.496845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620903, 30.428446, 43.493557>,  <32.835930, 30.535030, 43.491585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620903, 30.428446, 43.493557>,  <32.262527, 30.250805, 43.496845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620903, 30.428446, 43.493557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183298, -0.352806, 0.917568,
		0.404596, -0.823590, -0.397495,
		0.895938, 0.444104, -0.008219,
		32.889683, 30.561676, 43.491093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703247, 29.713934, 43.792160>,  <32.262527, 30.250805, 43.496845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703247, 29.713934, 43.792160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878353, 30.072865, 43.814678>,  <32.983418, 30.288223, 43.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878353, 30.072865, 43.814678>,  <32.703247, 29.713934, 43.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878353, 30.072865, 43.814678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225925, -0.170390, 0.959127,
		0.870242, -0.407151, -0.277319,
		0.437762, 0.897327, 0.056294,
		33.009682, 30.342062, 43.831566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370449, 29.586424, 44.205345>,  <32.703247, 29.713934, 43.792160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370449, 29.586424, 44.205345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322758, 29.983412, 44.216595>,  <33.294144, 30.221603, 44.223343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322758, 29.983412, 44.216595>,  <33.370449, 29.586424, 44.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322758, 29.983412, 44.216595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289396, 0.007641, 0.957179,
		0.949755, 0.122261, -0.288127,
		-0.119228, 0.992468, 0.028125,
		33.286991, 30.281153, 44.225033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013050, 29.882986, 44.511944>,  <33.370449, 29.586424, 44.205345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013050, 29.882986, 44.511944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750813, 30.182159, 44.553497>,  <33.593468, 30.361664, 44.578430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750813, 30.182159, 44.553497>,  <34.013050, 29.882986, 44.511944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750813, 30.182159, 44.553497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259363, 0.093837, 0.961210,
		0.709172, 0.657109, -0.255505,
		-0.655596, 0.747932, 0.103884,
		33.554134, 30.406540, 44.584663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310394, 30.392439, 44.876549>,  <34.013050, 29.882986, 44.511944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310394, 30.392439, 44.876549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921749, 30.468220, 44.933220>,  <33.688560, 30.513689, 44.967224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921749, 30.468220, 44.933220>,  <34.310394, 30.392439, 44.876549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921749, 30.468220, 44.933220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179638, 0.201141, 0.962950,
		0.153934, 0.961067, -0.229464,
		-0.971614, 0.189452, 0.141682,
		33.630264, 30.525055, 44.975723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320679, 31.054142, 45.158520>,  <34.310394, 30.392439, 44.876549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320679, 31.054142, 45.158520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980316, 30.872557, 45.264256>,  <33.776100, 30.763605, 45.327698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980316, 30.872557, 45.264256>,  <34.320679, 31.054142, 45.158520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980316, 30.872557, 45.264256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229851, 0.130741, 0.964404,
		-0.472362, 0.881378, -0.006905,
		-0.850907, -0.453961, 0.264342,
		33.725044, 30.736368, 45.343559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227421, 31.416155, 45.787212>,  <34.320679, 31.054142, 45.158520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227421, 31.416155, 45.787212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979782, 31.102230, 45.798405>,  <33.831200, 30.913876, 45.805122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979782, 31.102230, 45.798405>,  <34.227421, 31.416155, 45.787212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979782, 31.102230, 45.798405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198907, -0.122236, 0.972365,
		-0.759705, 0.607557, 0.231781,
		-0.619099, -0.784814, 0.027985,
		33.794052, 30.866785, 45.806801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797756, 31.556551, 46.362946>,  <34.227421, 31.416155, 45.787212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797756, 31.556551, 46.362946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792633, 31.161987, 46.297428>,  <33.789558, 30.925249, 46.258118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792633, 31.161987, 46.297428>,  <33.797756, 31.556551, 46.362946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792633, 31.161987, 46.297428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316164, -0.159399, 0.935218,
		-0.948618, -0.039803, 0.313910,
		-0.012812, -0.986411, -0.163794,
		33.788788, 30.866064, 46.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467442, 31.192806, 46.858704>,  <33.797756, 31.556551, 46.362946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467442, 31.192806, 46.858704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677723, 30.883650, 46.716564>,  <33.803894, 30.698156, 46.631283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677723, 30.883650, 46.716564>,  <33.467442, 31.192806, 46.858704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677723, 30.883650, 46.716564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300249, -0.222252, 0.927607,
		-0.795916, -0.594341, 0.115221,
		0.525706, -0.772892, -0.355345,
		33.835434, 30.651783, 46.609962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322441, 30.685244, 47.340878>,  <33.467442, 31.192806, 46.858704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322441, 30.685244, 47.340878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 30.531557, 47.139530>,  <33.817772, 30.439344, 47.018723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 30.531557, 47.139530>,  <33.322441, 30.685244, 47.340878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632023, 30.531557, 47.139530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340818, -0.417213, 0.842482,
		-0.533706, -0.823597, -0.191955,
		0.773951, -0.384216, -0.503366,
		33.864208, 30.416292, 46.988522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490875, 29.929173, 47.405914>,  <33.322441, 30.685244, 47.340878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490875, 29.929173, 47.405914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848675, 30.073868, 47.300835>,  <34.063354, 30.160685, 47.237785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848675, 30.073868, 47.300835>,  <33.490875, 29.929173, 47.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848675, 30.073868, 47.300835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399109, -0.381375, 0.833825,
		0.201442, -0.850703, -0.485515,
		0.894501, 0.361741, -0.262699,
		34.117023, 30.182390, 47.222027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908894, 29.442684, 47.641159>,  <33.490875, 29.929173, 47.405914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908894, 29.442684, 47.641159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115147, 29.783735, 47.607330>,  <34.238899, 29.988365, 47.587032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115147, 29.783735, 47.607330>,  <33.908894, 29.442684, 47.641159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115147, 29.783735, 47.607330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567554, -0.265945, 0.779202,
		0.641877, -0.449780, -0.621041,
		0.515633, 0.852626, -0.084570,
		34.269836, 30.039522, 47.581959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550529, 29.188784, 47.696365>,  <33.908894, 29.442684, 47.641159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550529, 29.188784, 47.696365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521126, 29.575516, 47.794209>,  <34.503483, 29.807556, 47.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521126, 29.575516, 47.794209>,  <34.550529, 29.188784, 47.696365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521126, 29.575516, 47.794209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353647, -0.204061, 0.912848,
		0.932486, 0.153605, -0.326918,
		-0.073507, 0.966832, 0.244606,
		34.499073, 29.865566, 47.867592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087902, 29.278685, 48.060566>,  <34.550529, 29.188784, 47.696365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087902, 29.278685, 48.060566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854362, 29.580704, 48.179913>,  <34.714237, 29.761915, 48.251522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854362, 29.580704, 48.179913>,  <35.087902, 29.278685, 48.060566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854362, 29.580704, 48.179913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370460, -0.079245, 0.925462,
		0.722413, 0.650861, -0.233449,
		-0.583848, 0.755050, 0.298366,
		34.679207, 29.807219, 48.269421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588287, 29.645929, 48.436363>,  <35.087902, 29.278685, 48.060566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588287, 29.645929, 48.436363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228802, 29.785988, 48.541977>,  <35.013111, 29.870022, 48.605347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228802, 29.785988, 48.541977>,  <35.588287, 29.645929, 48.436363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228802, 29.785988, 48.541977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316537, 0.101246, 0.943161,
		0.303510, 0.931208, -0.201825,
		-0.898713, 0.350144, 0.264033,
		34.959187, 29.891031, 48.621185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713974, 30.262007, 48.838287>,  <35.588287, 29.645929, 48.436363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713974, 30.262007, 48.838287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358322, 30.113642, 48.945530>,  <35.144932, 30.024624, 49.009876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358322, 30.113642, 48.945530>,  <35.713974, 30.262007, 48.838287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358322, 30.113642, 48.945530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322979, -0.093480, 0.941778,
		-0.324253, 0.923952, 0.202912,
		-0.889126, -0.370911, 0.268106,
		35.091583, 30.002369, 49.025963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288864, 30.762737, 49.162258>,  <35.713974, 30.262007, 48.838287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288864, 30.762737, 49.162258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673595, 30.733063, 49.267616>,  <36.904434, 30.715258, 49.330833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673595, 30.733063, 49.267616>,  <36.288864, 30.762737, 49.162258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673595, 30.733063, 49.267616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273643, 0.255455, -0.927288,
		0.001503, 0.963971, 0.266005,
		0.961830, -0.074184, 0.263400,
		36.962143, 30.710808, 49.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664955, 31.406422, 49.066280>,  <36.288864, 30.762737, 49.162258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664955, 31.406422, 49.066280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931934, 31.113846, 49.010410>,  <37.092121, 30.938301, 48.976887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931934, 31.113846, 49.010410>,  <36.664955, 31.406422, 49.066280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931934, 31.113846, 49.010410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167389, 0.330144, -0.928970,
		0.725598, 0.596660, 0.342789,
		0.667449, -0.731438, -0.139677,
		37.132168, 30.894415, 48.968506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231312, 31.774269, 48.809582>,  <36.664955, 31.406422, 49.066280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231312, 31.774269, 48.809582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294025, 31.395821, 48.696247>,  <37.331654, 31.168753, 48.628246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294025, 31.395821, 48.696247>,  <37.231312, 31.774269, 48.809582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294025, 31.395821, 48.696247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032139, 0.291615, -0.955996,
		0.987110, 0.140776, 0.076127,
		0.156781, -0.946120, -0.283332,
		37.341061, 31.111984, 48.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790863, 31.805233, 48.417683>,  <37.231312, 31.774269, 48.809582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790863, 31.805233, 48.417683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616558, 31.466085, 48.296864>,  <37.511974, 31.262598, 48.224373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616558, 31.466085, 48.296864>,  <37.790863, 31.805233, 48.417683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616558, 31.466085, 48.296864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201270, 0.235299, -0.950855,
		0.877271, -0.475137, 0.068116,
		-0.435759, -0.847867, -0.302052,
		37.485832, 31.211725, 48.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148109, 31.437521, 47.922291>,  <37.790863, 31.805233, 48.417683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148109, 31.437521, 47.922291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785324, 31.291325, 47.838551>,  <37.567654, 31.203608, 47.788307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785324, 31.291325, 47.838551>,  <38.148109, 31.437521, 47.922291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785324, 31.291325, 47.838551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105297, 0.284498, -0.952876,
		0.407829, -0.886271, -0.219545,
		-0.906966, -0.365493, -0.209348,
		37.513233, 31.181677, 47.775745>
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
