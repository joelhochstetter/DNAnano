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
	<24.348389, 34.847080, 34.485191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307226, 34.875225, 34.882072>,  <24.282528, 34.892113, 35.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307226, 34.875225, 34.882072>,  <24.348389, 34.847080, 34.485191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307226, 34.875225, 34.882072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990719, 0.096310, 0.095922,
		-0.088809, 0.992861, -0.079619,
		-0.102906, 0.070362, 0.992199,
		24.276354, 34.896332, 35.179733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906397, 35.236855, 34.658825>,  <24.348389, 34.847080, 34.485191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906397, 35.236855, 34.658825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781685, 35.096004, 35.011826>,  <24.706858, 35.011494, 35.223625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781685, 35.096004, 35.011826>,  <24.906397, 35.236855, 34.658825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781685, 35.096004, 35.011826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948869, -0.163678, 0.269921,
		0.049400, 0.921531, 0.385150,
		-0.311781, -0.352122, 0.882498,
		24.688150, 34.990368, 35.276573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237551, 35.533215, 35.240402>,  <24.906397, 35.236855, 34.658825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237551, 35.533215, 35.240402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167194, 35.149475, 35.328678>,  <25.124981, 34.919231, 35.381645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167194, 35.149475, 35.328678>,  <25.237551, 35.533215, 35.240402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167194, 35.149475, 35.328678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968180, -0.128050, 0.215013,
		-0.178014, 0.251488, 0.951349,
		-0.175893, -0.959352, 0.220691,
		25.114426, 34.861668, 35.394886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433321, 35.332306, 35.946495>,  <25.237551, 35.533215, 35.240402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433321, 35.332306, 35.946495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471060, 34.999447, 35.727905>,  <25.493704, 34.799732, 35.596752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471060, 34.999447, 35.727905>,  <25.433321, 35.332306, 35.946495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471060, 34.999447, 35.727905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933825, -0.116288, 0.338300,
		-0.345063, -0.542230, 0.766106,
		0.094348, -0.832144, -0.546475,
		25.499365, 34.749805, 35.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488272, 34.676968, 36.345814>,  <25.433321, 35.332306, 35.946495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488272, 34.676968, 36.345814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676310, 34.638344, 35.994888>,  <25.789131, 34.615170, 35.784332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676310, 34.638344, 35.994888>,  <25.488272, 34.676968, 36.345814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676310, 34.638344, 35.994888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858556, -0.180477, 0.479905,
		-0.204678, -0.978827, -0.001936,
		0.470093, -0.096564, -0.877318,
		25.817337, 34.609375, 35.731693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663172, 34.038063, 35.940704>,  <25.488272, 34.676968, 36.345814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663172, 34.038063, 35.940704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316603, 33.993893, 35.745926>,  <25.108662, 33.967392, 35.629059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316603, 33.993893, 35.745926>,  <25.663172, 34.038063, 35.940704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316603, 33.993893, 35.745926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477017, -0.471199, -0.741907,
		-0.147522, -0.875087, 0.460934,
		-0.866425, -0.110425, -0.486944,
		25.056675, 33.960766, 35.599842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533607, 33.411682, 35.895111>,  <25.663172, 34.038063, 35.940704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533607, 33.411682, 35.895111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346270, 33.595085, 35.593006>,  <25.233866, 33.705128, 35.411743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346270, 33.595085, 35.593006>,  <25.533607, 33.411682, 35.895111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346270, 33.595085, 35.593006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523354, -0.544753, -0.655244,
		-0.711865, -0.702152, 0.015173,
		-0.468347, 0.458504, -0.755265,
		25.205765, 33.732635, 35.366428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778835, 33.380901, 36.706013>,  <25.533607, 33.411682, 35.895111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778835, 33.380901, 36.706013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116703, 33.271343, 36.522049>,  <26.319424, 33.205608, 36.411671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116703, 33.271343, 36.522049>,  <25.778835, 33.380901, 36.706013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116703, 33.271343, 36.522049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477967, 0.772740, 0.417636,
		0.241003, -0.572586, 0.783621,
		0.844668, -0.273894, -0.459910,
		26.370104, 33.189175, 36.384075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376089, 33.283024, 37.183609>,  <25.778835, 33.380901, 36.706013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376089, 33.283024, 37.183609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600586, 33.291306, 36.852654>,  <26.735283, 33.296276, 36.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600586, 33.291306, 36.852654>,  <26.376089, 33.283024, 37.183609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600586, 33.291306, 36.852654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643377, 0.617956, 0.451881,
		0.520648, -0.785940, 0.333502,
		0.561242, 0.020703, -0.827393,
		26.768959, 33.297516, 36.604435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046160, 33.190849, 37.386562>,  <26.376089, 33.283024, 37.183609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046160, 33.190849, 37.386562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059195, 33.374352, 37.031376>,  <27.067017, 33.484451, 36.818264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059195, 33.374352, 37.031376>,  <27.046160, 33.190849, 37.386562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059195, 33.374352, 37.031376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633107, 0.677989, 0.373507,
		0.773378, -0.574349, -0.268345,
		0.032589, 0.458753, -0.887966,
		27.068972, 33.511978, 36.764988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772509, 33.173397, 37.102665>,  <27.046160, 33.190849, 37.386562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772509, 33.173397, 37.102665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544804, 33.486629, 37.002483>,  <27.408180, 33.674568, 36.942375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544804, 33.486629, 37.002483>,  <27.772509, 33.173397, 37.102665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544804, 33.486629, 37.002483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668012, 0.618130, 0.414337,
		0.479269, 0.068564, -0.874986,
		-0.569263, 0.783080, -0.250450,
		27.374025, 33.721554, 36.927349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232584, 33.752308, 36.891632>,  <27.772509, 33.173397, 37.102665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232584, 33.752308, 36.891632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897516, 33.883888, 37.066032>,  <27.696476, 33.962837, 37.170673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897516, 33.883888, 37.066032>,  <28.232584, 33.752308, 36.891632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897516, 33.883888, 37.066032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543767, 0.577207, 0.609220,
		-0.051261, 0.747410, -0.662382,
		-0.837669, 0.328952, 0.436006,
		27.646215, 33.982574, 37.196835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653948, 33.780281, 37.438385>,  <28.232584, 33.752308, 36.891632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653948, 33.780281, 37.438385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699490, 33.907154, 37.061783>,  <28.726814, 33.983280, 36.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699490, 33.907154, 37.061783>,  <28.653948, 33.780281, 37.438385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699490, 33.907154, 37.061783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922587, -0.385356, -0.018256,
		-0.368604, -0.866542, -0.336506,
		0.113855, 0.317186, -0.941504,
		28.733646, 34.002308, 36.779331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165539, 34.326145, 37.451138>,  <28.653948, 33.780281, 37.438385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165539, 34.326145, 37.451138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017498, 34.628204, 37.234703>,  <27.928673, 34.809441, 37.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017498, 34.628204, 37.234703>,  <28.165539, 34.326145, 37.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017498, 34.628204, 37.234703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577018, -0.643334, -0.503162,
		-0.728062, 0.125998, 0.673832,
		-0.370101, 0.755146, -0.541090,
		27.906467, 34.854748, 37.072376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355696, 34.316647, 37.622883>,  <28.165539, 34.326145, 37.451138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355696, 34.316647, 37.622883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485905, 34.430275, 37.262142>,  <27.564030, 34.498451, 37.045696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485905, 34.430275, 37.262142>,  <27.355696, 34.316647, 37.622883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485905, 34.430275, 37.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668848, -0.605003, -0.431990,
		-0.668340, 0.743824, -0.006940,
		0.325523, 0.284074, -0.901852,
		27.583561, 34.515499, 36.991585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726511, 34.554974, 37.113129>,  <27.355696, 34.316647, 37.622883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726511, 34.554974, 37.113129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064619, 34.437878, 36.934322>,  <27.267483, 34.367619, 36.827038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064619, 34.437878, 36.934322>,  <26.726511, 34.554974, 37.113129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064619, 34.437878, 36.934322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496667, -0.738997, -0.455198,
		-0.197089, 0.606782, -0.770046,
		0.845268, -0.292743, -0.447017,
		27.318199, 34.350056, 36.800217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530539, 34.457691, 36.300919>,  <26.726511, 34.554974, 37.113129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530539, 34.457691, 36.300919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836981, 34.258987, 36.464043>,  <27.020845, 34.139763, 36.561916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836981, 34.258987, 36.464043>,  <26.530539, 34.457691, 36.300919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836981, 34.258987, 36.464043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280922, -0.829504, -0.482707,
		0.578070, 0.255242, -0.775040,
		0.766106, -0.496764, 0.407808,
		27.066813, 34.109959, 36.586384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939955, 34.231865, 35.703308>,  <26.530539, 34.457691, 36.300919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939955, 34.231865, 35.703308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978191, 34.002247, 36.028599>,  <27.001133, 33.864475, 36.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978191, 34.002247, 36.028599>,  <26.939955, 34.231865, 35.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978191, 34.002247, 36.028599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188275, -0.812643, -0.551510,
		0.977453, -0.100391, -0.185759,
		0.095590, -0.574049, 0.813222,
		27.006868, 33.830032, 36.272564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283930, 33.565327, 35.431587>,  <26.939955, 34.231865, 35.703308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283930, 33.565327, 35.431587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135986, 33.480030, 35.793301>,  <27.047220, 33.428852, 36.010330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135986, 33.480030, 35.793301>,  <27.283930, 33.565327, 35.431587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135986, 33.480030, 35.793301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349290, -0.869990, -0.348016,
		0.860930, -0.444575, 0.247292,
		-0.369861, -0.213240, 0.904285,
		27.025028, 33.416058, 36.064587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398369, 32.865833, 35.627541>,  <27.283930, 33.565327, 35.431587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398369, 32.865833, 35.627541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094685, 32.946918, 35.874928>,  <26.912474, 32.995571, 36.023361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094685, 32.946918, 35.874928>,  <27.398369, 32.865833, 35.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094685, 32.946918, 35.874928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446279, -0.853828, -0.267979,
		0.473746, -0.479463, 0.738702,
		-0.759210, 0.202713, 0.618472,
		26.866922, 33.007732, 36.060471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233553, 32.246544, 36.100983>,  <27.398369, 32.865833, 35.627541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233553, 32.246544, 36.100983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901224, 32.469036, 36.093555>,  <26.701828, 32.602531, 36.089100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901224, 32.469036, 36.093555>,  <27.233553, 32.246544, 36.100983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901224, 32.469036, 36.093555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552885, -0.828722, -0.086818,
		-0.063677, -0.061865, 0.996051,
		-0.830821, 0.556230, -0.018567,
		26.651978, 32.635906, 36.087986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975384, 31.601006, 36.228363>,  <27.233553, 32.246544, 36.100983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975384, 31.601006, 36.228363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818798, 31.819275, 36.524738>,  <26.724848, 31.950237, 36.702564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818798, 31.819275, 36.524738>,  <26.975384, 31.601006, 36.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818798, 31.819275, 36.524738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559855, 0.780262, -0.278843,
		-0.730287, 0.305664, -0.610943,
		-0.391463, 0.545675, 0.740942,
		26.701359, 31.982977, 36.747021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556080, 31.311550, 35.828117>,  <26.975384, 31.601006, 36.228363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556080, 31.311550, 35.828117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697617, 31.117935, 35.507992>,  <27.782537, 31.001766, 35.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697617, 31.117935, 35.507992>,  <27.556080, 31.311550, 35.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697617, 31.117935, 35.507992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172415, 0.807253, -0.564461,
		0.919277, 0.337716, 0.202184,
		0.353841, -0.484036, -0.800316,
		27.803768, 30.972725, 35.267899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076447, 31.749754, 35.510956>,  <27.556080, 31.311550, 35.828117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076447, 31.749754, 35.510956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963884, 31.498005, 35.221210>,  <27.896347, 31.346954, 35.047363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963884, 31.498005, 35.221210>,  <28.076447, 31.749754, 35.510956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963884, 31.498005, 35.221210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183440, 0.705662, -0.684391,
		0.941893, -0.325467, -0.083123,
		-0.281403, -0.629375, -0.724361,
		27.879463, 31.309193, 35.003902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564648, 31.767120, 35.014942>,  <28.076447, 31.749754, 35.510956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564648, 31.767120, 35.014942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254118, 31.662251, 34.785652>,  <28.067801, 31.599329, 34.648079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254118, 31.662251, 34.785652>,  <28.564648, 31.767120, 35.014942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254118, 31.662251, 34.785652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126650, 0.825970, -0.549302,
		0.617477, -0.499036, -0.608018,
		-0.776326, -0.262176, -0.573220,
		28.021221, 31.583597, 34.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255081, 31.749634, 34.856136>,  <28.564648, 31.767120, 35.014942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255081, 31.749634, 34.856136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394123, 31.842054, 35.219627>,  <29.477549, 31.897507, 35.437721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394123, 31.842054, 35.219627>,  <29.255081, 31.749634, 34.856136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394123, 31.842054, 35.219627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170119, -0.937539, 0.303449,
		0.922080, -0.260072, -0.286585,
		0.347603, 0.231050, 0.908728,
		29.498404, 31.911369, 35.492245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788055, 31.264030, 35.108658>,  <29.255081, 31.749634, 34.856136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788055, 31.264030, 35.108658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542398, 31.411926, 35.387547>,  <29.395004, 31.500664, 35.554882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542398, 31.411926, 35.387547>,  <29.788055, 31.264030, 35.108658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542398, 31.411926, 35.387547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261678, -0.928887, 0.262095,
		0.744551, -0.021485, 0.667220,
		-0.614141, 0.369740, 0.697225,
		29.358156, 31.522848, 35.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945625, 31.159081, 35.707684>,  <29.788055, 31.264030, 35.108658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945625, 31.159081, 35.707684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546799, 31.183018, 35.688610>,  <29.307503, 31.197380, 35.677166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546799, 31.183018, 35.688610>,  <29.945625, 31.159081, 35.707684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546799, 31.183018, 35.688610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066199, -0.987161, 0.145367,
		-0.038377, 0.148098, 0.988228,
		-0.997068, 0.059841, -0.047688,
		29.247679, 31.200970, 35.674305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487972, 30.649477, 35.832874>,  <29.945625, 31.159081, 35.707684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487972, 30.649477, 35.832874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666529, 30.361694, 35.620041>,  <30.773663, 30.189024, 35.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666529, 30.361694, 35.620041>,  <30.487972, 30.649477, 35.832874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666529, 30.361694, 35.620041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117427, 0.542376, -0.831889,
		0.887100, 0.433829, 0.157628,
		0.446391, -0.719459, -0.532085,
		30.800446, 30.145857, 35.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108891, 30.849333, 35.416798>,  <30.487972, 30.649477, 35.832874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108891, 30.849333, 35.416798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933655, 30.529007, 35.253445>,  <30.828512, 30.336811, 35.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933655, 30.529007, 35.253445>,  <31.108891, 30.849333, 35.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933655, 30.529007, 35.253445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227410, 0.538250, -0.811524,
		0.869690, -0.262652, -0.417915,
		-0.438091, -0.800813, -0.408381,
		30.802227, 30.288763, 35.130932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978422, 31.591091, 35.149975>,  <31.108891, 30.849333, 35.416798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978422, 31.591091, 35.149975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955948, 31.989786, 35.173141>,  <30.942463, 32.229004, 35.187042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955948, 31.989786, 35.173141>,  <30.978422, 31.591091, 35.149975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955948, 31.989786, 35.173141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313800, 0.037441, -0.948751,
		-0.947825, -0.071479, 0.310673,
		-0.056184, 0.996739, 0.057917,
		30.939093, 32.288807, 35.190517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275166, 31.834145, 35.190319>,  <30.978422, 31.591091, 35.149975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275166, 31.834145, 35.190319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519503, 32.108894, 35.032803>,  <30.666105, 32.273743, 34.938293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519503, 32.108894, 35.032803>,  <30.275166, 31.834145, 35.190319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519503, 32.108894, 35.032803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510421, -0.038586, -0.859058,
		-0.605259, 0.725752, 0.327025,
		0.610845, 0.686873, -0.393794,
		30.702757, 32.314957, 34.914665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818283, 32.258507, 34.711937>,  <30.275166, 31.834145, 35.190319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818283, 32.258507, 34.711937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204191, 32.276875, 34.608318>,  <30.435736, 32.287895, 34.546146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204191, 32.276875, 34.608318>,  <29.818283, 32.258507, 34.711937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204191, 32.276875, 34.608318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254148, -0.091779, -0.962801,
		-0.067990, 0.994720, -0.076874,
		0.964773, 0.045923, -0.259046,
		30.493624, 32.290653, 34.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859283, 32.698627, 34.209156>,  <29.818283, 32.258507, 34.711937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859283, 32.698627, 34.209156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178459, 32.465538, 34.147549>,  <30.369965, 32.325684, 34.110584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178459, 32.465538, 34.147549>,  <29.859283, 32.698627, 34.209156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178459, 32.465538, 34.147549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267851, -0.113903, -0.956704,
		0.539954, 0.804646, -0.246971,
		0.797938, -0.582727, -0.154023,
		30.417841, 32.290718, 34.101341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311497, 32.939331, 33.654232>,  <29.859283, 32.698627, 34.209156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311497, 32.939331, 33.654232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323078, 32.540886, 33.687511>,  <30.330027, 32.301819, 33.707478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323078, 32.540886, 33.687511>,  <30.311497, 32.939331, 33.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323078, 32.540886, 33.687511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062207, -0.084868, -0.994448,
		0.997643, 0.023620, -0.064423,
		0.028956, -0.996112, 0.083199,
		30.331764, 32.242054, 33.712471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711153, 32.922752, 33.095032>,  <30.311497, 32.939331, 33.654232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711153, 32.922752, 33.095032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506668, 32.588531, 33.175552>,  <30.383978, 32.388000, 33.223866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506668, 32.588531, 33.175552>,  <30.711153, 32.922752, 33.095032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506668, 32.588531, 33.175552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541820, 0.131504, -0.830143,
		0.667153, -0.533448, -0.519943,
		-0.511213, -0.835547, 0.201300,
		30.353304, 32.337868, 33.235943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648951, 32.274128, 32.544216>,  <30.711153, 32.922752, 33.095032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648951, 32.274128, 32.544216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323055, 32.345497, 32.764893>,  <30.127518, 32.388317, 32.897301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323055, 32.345497, 32.764893>,  <30.648951, 32.274128, 32.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323055, 32.345497, 32.764893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534798, 0.136394, -0.833899,
		-0.224033, -0.974455, -0.015707,
		-0.814740, 0.178421, 0.551693,
		30.078632, 32.399025, 32.930401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227234, 32.407845, 31.948111>,  <30.648951, 32.274128, 32.544216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227234, 32.407845, 31.948111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330822, 32.043270, 32.075996>,  <30.392975, 31.824526, 32.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330822, 32.043270, 32.075996>,  <30.227234, 32.407845, 31.948111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330822, 32.043270, 32.075996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901175, -0.347116, -0.259603,
		0.347589, -0.220890, -0.911257,
		0.258969, -0.911437, 0.319714,
		30.408512, 31.769838, 32.171909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073126, 31.780262, 31.438774>,  <30.227234, 32.407845, 31.948111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073126, 31.780262, 31.438774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049314, 31.677412, 31.824591>,  <30.035027, 31.615702, 32.056080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049314, 31.677412, 31.824591>,  <30.073126, 31.780262, 31.438774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049314, 31.677412, 31.824591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911793, -0.379293, -0.157384,
		0.406311, -0.888833, -0.211864,
		-0.059530, -0.257123, 0.964543,
		30.031456, 31.600275, 32.113953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748594, 30.969303, 31.610788>,  <30.073126, 31.780262, 31.438774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748594, 30.969303, 31.610788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715031, 31.253616, 31.890144>,  <29.694893, 31.424204, 32.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715031, 31.253616, 31.890144>,  <29.748594, 30.969303, 31.610788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715031, 31.253616, 31.890144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986153, -0.159840, 0.044195,
		0.143043, -0.685009, 0.714354,
		-0.083909, 0.710784, 0.698388,
		29.689857, 31.466852, 32.099659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340311, 30.577379, 32.100872>,  <29.748594, 30.969303, 31.610788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340311, 30.577379, 32.100872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293070, 30.973154, 32.067249>,  <29.264725, 31.210619, 32.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293070, 30.973154, 32.067249>,  <29.340311, 30.577379, 32.100872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293070, 30.973154, 32.067249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924359, -0.078618, 0.373337,
		0.362784, 0.121793, 0.923880,
		-0.118104, 0.989437, -0.084059,
		29.257639, 31.269985, 32.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099949, 30.853176, 32.725780>,  <29.340311, 30.577379, 32.100872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099949, 30.853176, 32.725780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975254, 31.118280, 32.453438>,  <28.900438, 31.277344, 32.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975254, 31.118280, 32.453438>,  <29.099949, 30.853176, 32.725780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975254, 31.118280, 32.453438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925634, -0.050040, 0.375098,
		0.214530, 0.747157, 0.629073,
		-0.311736, 0.662761, -0.680859,
		28.881733, 31.317108, 32.249180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453199, 31.119287, 33.278492>,  <29.099949, 30.853176, 32.725780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453199, 31.119287, 33.278492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212606, 30.975767, 33.564003>,  <29.068251, 30.889654, 33.735310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212606, 30.975767, 33.564003>,  <29.453199, 31.119287, 33.278492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212606, 30.975767, 33.564003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798370, 0.302031, -0.520944,
		-0.028668, -0.883198, -0.468122,
		-0.601485, -0.358800, 0.713778,
		29.032162, 30.868128, 33.778137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820662, 31.713892, 33.228840>,  <29.453199, 31.119287, 33.278492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820662, 31.713892, 33.228840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183195, 31.763391, 33.067223>,  <30.400715, 31.793091, 32.970253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183195, 31.763391, 33.067223>,  <29.820662, 31.713892, 33.228840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183195, 31.763391, 33.067223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404700, 0.020877, 0.914211,
		0.121566, -0.992094, -0.031159,
		0.906333, 0.123747, -0.404039,
		30.455095, 31.800516, 32.946011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228346, 31.194569, 33.577484>,  <29.820662, 31.713892, 33.228840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228346, 31.194569, 33.577484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395439, 31.535290, 33.451035>,  <30.495695, 31.739723, 33.375164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395439, 31.535290, 33.451035>,  <30.228346, 31.194569, 33.577484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395439, 31.535290, 33.451035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511430, 0.067129, 0.856699,
		0.750959, -0.519544, -0.407595,
		0.417732, 0.851802, -0.316122,
		30.520760, 31.790831, 33.356197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937752, 31.203032, 33.744640>,  <30.228346, 31.194569, 33.577484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937752, 31.203032, 33.744640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819616, 31.584875, 33.729179>,  <30.748735, 31.813982, 33.719902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819616, 31.584875, 33.729179>,  <30.937752, 31.203032, 33.744640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819616, 31.584875, 33.729179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494540, 0.187366, 0.848719,
		0.817438, 0.231544, -0.527430,
		-0.295338, 0.954611, -0.038653,
		30.731014, 31.871258, 33.717583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499699, 31.542280, 34.018696>,  <30.937752, 31.203032, 33.744640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499699, 31.542280, 34.018696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163834, 31.757975, 34.044590>,  <30.962315, 31.887390, 34.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163834, 31.757975, 34.044590>,  <31.499699, 31.542280, 34.018696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163834, 31.757975, 34.044590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259753, 0.294045, 0.919818,
		0.476962, 0.789154, -0.386967,
		-0.839664, 0.539234, 0.064737,
		30.911934, 31.919744, 34.064011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738701, 32.253807, 34.102654>,  <31.499699, 31.542280, 34.018696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738701, 32.253807, 34.102654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362425, 32.234234, 34.236942>,  <31.136660, 32.222488, 34.317516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362425, 32.234234, 34.236942>,  <31.738701, 32.253807, 34.102654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362425, 32.234234, 34.236942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309267, 0.283150, 0.907844,
		-0.139486, 0.957826, -0.251222,
		-0.940690, -0.048936, 0.335720,
		31.080217, 32.219551, 34.337658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535419, 32.957859, 34.250633>,  <31.738701, 32.253807, 34.102654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535419, 32.957859, 34.250633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357616, 32.660374, 34.450352>,  <31.250935, 32.481880, 34.570183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357616, 32.660374, 34.450352>,  <31.535419, 32.957859, 34.250633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357616, 32.660374, 34.450352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310938, 0.394632, 0.864629,
		-0.840077, 0.539586, 0.055832,
		-0.444508, -0.743715, 0.499299,
		31.224264, 32.437260, 34.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063717, 33.296684, 34.824100>,  <31.535419, 32.957859, 34.250633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063717, 33.296684, 34.824100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148851, 32.923145, 34.939079>,  <31.199932, 32.699020, 35.008068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148851, 32.923145, 34.939079>,  <31.063717, 33.296684, 34.824100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148851, 32.923145, 34.939079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285305, 0.340766, 0.895812,
		-0.934507, -0.108649, 0.338958,
		0.212834, -0.933849, 0.287450,
		31.212702, 32.642990, 35.025314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934885, 33.302563, 35.577599>,  <31.063717, 33.296684, 34.824100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934885, 33.302563, 35.577599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154951, 32.977798, 35.499504>,  <31.286991, 32.782940, 35.452648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154951, 32.977798, 35.499504>,  <30.934885, 33.302563, 35.577599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154951, 32.977798, 35.499504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412654, 0.061074, 0.908838,
		-0.725971, -0.580579, 0.368639,
		0.550166, -0.811910, -0.195240,
		31.320002, 32.734226, 35.440933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853348, 32.591686, 36.020592>,  <30.934885, 33.302563, 35.577599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853348, 32.591686, 36.020592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226469, 32.583065, 35.876698>,  <31.450342, 32.577892, 35.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226469, 32.583065, 35.876698>,  <30.853348, 32.591686, 36.020592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226469, 32.583065, 35.876698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351552, -0.165241, 0.921470,
		-0.079298, -0.986018, -0.146563,
		0.932804, -0.021546, -0.359739,
		31.506310, 32.576599, 35.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345652, 31.985035, 36.351124>,  <30.853348, 32.591686, 36.020592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345652, 31.985035, 36.351124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560078, 32.293018, 36.212673>,  <31.688732, 32.477810, 36.129604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560078, 32.293018, 36.212673>,  <31.345652, 31.985035, 36.351124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560078, 32.293018, 36.212673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483420, 0.056139, 0.873587,
		0.692055, -0.635621, -0.342119,
		0.536064, 0.769957, -0.346123,
		31.720898, 32.524006, 36.108837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049606, 31.903925, 36.526463>,  <31.345652, 31.985035, 36.351124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049606, 31.903925, 36.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992153, 32.298676, 36.496941>,  <31.957682, 32.535526, 36.479225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992153, 32.298676, 36.496941>,  <32.049606, 31.903925, 36.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992153, 32.298676, 36.496941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276724, 0.111656, 0.954441,
		0.950155, 0.116661, -0.289129,
		-0.143629, 0.986875, -0.073808,
		31.949064, 32.594738, 36.474800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435627, 32.179001, 37.108574>,  <32.049606, 31.903925, 36.526463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435627, 32.179001, 37.108574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226124, 32.496914, 36.985943>,  <32.100422, 32.687664, 36.912365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226124, 32.496914, 36.985943>,  <32.435627, 32.179001, 37.108574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226124, 32.496914, 36.985943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010486, 0.353850, 0.935243,
		0.851802, 0.493056, -0.176998,
		-0.523759, 0.794786, -0.306580,
		32.068996, 32.735352, 36.893970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675507, 32.834248, 37.321041>,  <32.435627, 32.179001, 37.108574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675507, 32.834248, 37.321041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277489, 32.861694, 37.292252>,  <32.038677, 32.878162, 37.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277489, 32.861694, 37.292252>,  <32.675507, 32.834248, 37.321041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277489, 32.861694, 37.292252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019179, 0.577807, 0.815948,
		0.097576, 0.813284, -0.573627,
		-0.995043, 0.068615, -0.071978,
		31.978975, 32.882278, 37.270657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338104, 32.871754, 36.889446>,  <32.675507, 32.834248, 37.321041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338104, 32.871754, 36.889446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422775, 33.107174, 37.201550>,  <33.473579, 33.248425, 37.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422775, 33.107174, 37.201550>,  <33.338104, 32.871754, 36.889446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422775, 33.107174, 37.201550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543271, -0.592787, 0.594525,
		0.812433, -0.549741, 0.194260,
		0.211680, 0.588548, 0.780258,
		33.486279, 33.283737, 37.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645756, 32.612080, 37.401791>,  <33.338104, 32.871754, 36.889446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645756, 32.612080, 37.401791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386639, 32.882107, 37.543011>,  <33.231171, 33.044125, 37.627743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386639, 32.882107, 37.543011>,  <33.645756, 32.612080, 37.401791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386639, 32.882107, 37.543011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489052, -0.723835, 0.486715,
		0.584119, 0.142629, 0.799038,
		-0.647791, 0.675071, 0.353052,
		33.192303, 33.084629, 37.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087994, 33.086639, 37.023800>,  <33.645756, 32.612080, 37.401791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087994, 33.086639, 37.023800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856270, 32.927612, 36.739170>,  <33.717236, 32.832195, 36.568390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856270, 32.927612, 36.739170>,  <34.087994, 33.086639, 37.023800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856270, 32.927612, 36.739170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623316, 0.778609, 0.072427,
		0.525245, 0.485494, -0.698866,
		-0.579306, -0.397572, -0.711576,
		33.682480, 32.808342, 36.525696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483963, 33.017216, 37.682392>,  <34.087994, 33.086639, 37.023800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483963, 33.017216, 37.682392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781361, 33.141907, 37.919048>,  <34.959801, 33.216721, 38.061043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781361, 33.141907, 37.919048>,  <34.483963, 33.017216, 37.682392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781361, 33.141907, 37.919048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668627, -0.330401, -0.666163,
		-0.012181, 0.890877, -0.454081,
		0.743498, 0.311725, 0.591640,
		35.004410, 33.235424, 38.096539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875671, 33.427544, 37.279884>,  <34.483963, 33.017216, 37.682392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875671, 33.427544, 37.279884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095066, 33.232456, 37.551559>,  <35.226704, 33.115402, 37.714565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095066, 33.232456, 37.551559>,  <34.875671, 33.427544, 37.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095066, 33.232456, 37.551559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611284, -0.320340, -0.723681,
		0.570525, 0.812103, 0.122434,
		0.548483, -0.487720, 0.679187,
		35.259609, 33.086140, 37.755314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072754, 34.145218, 37.646255>,  <34.875671, 33.427544, 37.279884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072754, 34.145218, 37.646255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811295, 34.443275, 37.699177>,  <34.654419, 34.622112, 37.730930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811295, 34.443275, 37.699177>,  <35.072754, 34.145218, 37.646255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811295, 34.443275, 37.699177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659614, 0.646636, -0.383108,
		-0.371025, -0.163146, -0.914180,
		-0.653644, 0.745148, 0.132304,
		34.615200, 34.666821, 37.738869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010815, 34.463051, 36.993069>,  <35.072754, 34.145218, 37.646255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010815, 34.463051, 36.993069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975452, 34.697121, 37.315498>,  <34.954235, 34.837563, 37.508957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975452, 34.697121, 37.315498>,  <35.010815, 34.463051, 36.993069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975452, 34.697121, 37.315498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753120, 0.568902, -0.330394,
		-0.651915, 0.577863, -0.490999,
		-0.088408, 0.585171, 0.806076,
		34.948929, 34.872673, 37.557320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880241, 35.250755, 36.858109>,  <35.010815, 34.463051, 36.993069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880241, 35.250755, 36.858109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071545, 35.218811, 37.207939>,  <35.186329, 35.199642, 37.417839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071545, 35.218811, 37.207939>,  <34.880241, 35.250755, 36.858109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071545, 35.218811, 37.207939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749618, 0.555947, -0.359160,
		-0.457536, 0.827372, 0.325754,
		0.478261, -0.079863, 0.874579,
		35.215023, 35.194851, 37.470314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197960, 35.897797, 37.094719>,  <34.880241, 35.250755, 36.858109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197960, 35.897797, 37.094719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419640, 35.616535, 37.272907>,  <35.552647, 35.447781, 37.379818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419640, 35.616535, 37.272907>,  <35.197960, 35.897797, 37.094719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419640, 35.616535, 37.272907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826407, 0.400783, -0.395505,
		0.099564, 0.587326, 0.803203,
		0.554201, -0.703150, 0.445467,
		35.585899, 35.405590, 37.406548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830776, 36.267456, 37.508026>,  <35.197960, 35.897797, 37.094719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830776, 36.267456, 37.508026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865768, 35.885902, 37.393166>,  <35.886765, 35.656971, 37.324249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865768, 35.885902, 37.393166>,  <35.830776, 36.267456, 37.508026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865768, 35.885902, 37.393166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909393, 0.194140, -0.367850,
		0.406633, -0.228953, 0.884438,
		0.087484, -0.953882, -0.287152,
		35.892014, 35.599739, 37.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405704, 35.933662, 37.861858>,  <35.830776, 36.267456, 37.508026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405704, 35.933662, 37.861858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325752, 35.798027, 37.494148>,  <36.277782, 35.716644, 37.273521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325752, 35.798027, 37.494148>,  <36.405704, 35.933662, 37.861858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325752, 35.798027, 37.494148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891153, 0.327091, -0.314417,
		0.407302, -0.882060, 0.236802,
		-0.199879, -0.339090, -0.919275,
		36.265789, 35.696301, 37.218365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927948, 35.416481, 37.610355>,  <36.405704, 35.933662, 37.861858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927948, 35.416481, 37.610355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755367, 35.624336, 37.315376>,  <36.651817, 35.749050, 37.138390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755367, 35.624336, 37.315376>,  <36.927948, 35.416481, 37.610355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755367, 35.624336, 37.315376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900821, 0.292240, -0.321118,
		0.048646, -0.802855, -0.594187,
		-0.431456, 0.519635, -0.737445,
		36.625931, 35.780228, 37.094143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396198, 35.259281, 36.966301>,  <36.927948, 35.416481, 37.610355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396198, 35.259281, 36.966301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197102, 35.601250, 36.907837>,  <37.077644, 35.806431, 36.872757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197102, 35.601250, 36.907837>,  <37.396198, 35.259281, 36.966301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197102, 35.601250, 36.907837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817703, 0.406368, -0.407710,
		-0.289163, -0.322454, -0.901337,
		-0.497742, 0.854921, -0.146165,
		37.047779, 35.857727, 36.863987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483662, 35.424671, 36.287128>,  <37.396198, 35.259281, 36.966301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483662, 35.424671, 36.287128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363182, 35.763824, 36.461655>,  <37.290894, 35.967316, 36.566368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363182, 35.763824, 36.461655>,  <37.483662, 35.424671, 36.287128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363182, 35.763824, 36.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662126, 0.515235, -0.544171,
		-0.686198, 0.124989, -0.716596,
		-0.301200, 0.847886, 0.436312,
		37.272823, 36.018188, 36.592548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517799, 35.905193, 35.735874>,  <37.483662, 35.424671, 36.287128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517799, 35.905193, 35.735874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506626, 36.148308, 36.053318>,  <37.499924, 36.294178, 36.243786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506626, 36.148308, 36.053318>,  <37.517799, 35.905193, 35.735874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506626, 36.148308, 36.053318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639835, 0.620843, -0.452952,
		-0.768005, 0.495127, -0.406224,
		-0.027932, 0.607785, 0.793610,
		37.498245, 36.330643, 36.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235222, 36.579075, 35.548141>,  <37.517799, 35.905193, 35.735874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235222, 36.579075, 35.548141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469894, 36.619659, 35.869514>,  <37.610699, 36.644012, 36.062340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469894, 36.619659, 35.869514>,  <37.235222, 36.579075, 35.548141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469894, 36.619659, 35.869514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631438, 0.563868, -0.532297,
		-0.507042, 0.819608, 0.266741,
		0.586682, 0.101466, 0.803436,
		37.645901, 36.650101, 36.110546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430454, 37.235538, 35.496452>,  <37.235222, 36.579075, 35.548141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430454, 37.235538, 35.496452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684227, 37.101727, 35.775188>,  <37.836491, 37.021439, 35.942429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684227, 37.101727, 35.775188>,  <37.430454, 37.235538, 35.496452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684227, 37.101727, 35.775188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714602, 0.597509, -0.363767,
		-0.294677, 0.728749, 0.618134,
		0.634436, -0.334527, 0.696838,
		37.874557, 37.001369, 35.984241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724533, 37.763397, 35.718464>,  <37.430454, 37.235538, 35.496452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724533, 37.763397, 35.718464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007923, 37.491108, 35.792965>,  <38.177956, 37.327736, 35.837666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007923, 37.491108, 35.792965>,  <37.724533, 37.763397, 35.718464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007923, 37.491108, 35.792965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695517, 0.628697, -0.347845,
		0.119687, 0.375982, 0.918865,
		0.708471, -0.680718, 0.186254,
		38.220463, 37.286892, 35.848843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368320, 38.155987, 35.982334>,  <37.724533, 37.763397, 35.718464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368320, 38.155987, 35.982334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470829, 37.790951, 35.854900>,  <38.532333, 37.571930, 35.778439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470829, 37.790951, 35.854900>,  <38.368320, 38.155987, 35.982334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470829, 37.790951, 35.854900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721747, 0.399901, -0.564943,
		0.642966, -0.085159, 0.761145,
		0.256273, -0.912593, -0.318586,
		38.547710, 37.517174, 35.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147732, 38.128010, 35.861103>,  <38.368320, 38.155987, 35.982334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147732, 38.128010, 35.861103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003292, 37.818405, 35.653065>,  <38.916626, 37.632641, 35.528240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003292, 37.818405, 35.653065>,  <39.147732, 38.128010, 35.861103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003292, 37.818405, 35.653065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680382, 0.162731, -0.714562,
		0.637719, -0.611896, 0.467864,
		-0.361102, -0.774016, -0.520100,
		38.894962, 37.586201, 35.497036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795013, 37.953781, 35.418034>,  <39.147732, 38.128010, 35.861103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795013, 37.953781, 35.418034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477390, 37.770416, 35.258369>,  <39.286816, 37.660397, 35.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477390, 37.770416, 35.258369>,  <39.795013, 37.953781, 35.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477390, 37.770416, 35.258369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418732, 0.063471, -0.905889,
		0.440605, -0.886471, 0.141551,
		-0.794060, -0.458412, -0.399159,
		39.239174, 37.632893, 35.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963718, 37.582985, 34.912399>,  <39.795013, 37.953781, 35.418034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963718, 37.582985, 34.912399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580215, 37.621006, 34.805256>,  <39.350113, 37.643818, 34.740971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580215, 37.621006, 34.805256>,  <39.963718, 37.582985, 34.912399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580215, 37.621006, 34.805256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278735, 0.130165, -0.951506,
		-0.055579, -0.986925, -0.151292,
		-0.958758, 0.095054, -0.267856,
		39.292587, 37.649521, 34.724899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854435, 37.166641, 34.329685>,  <39.963718, 37.582985, 34.912399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854435, 37.166641, 34.329685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546669, 37.421665, 34.314091>,  <39.362011, 37.574680, 34.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546669, 37.421665, 34.314091>,  <39.854435, 37.166641, 34.329685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546669, 37.421665, 34.314091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154542, 0.126584, -0.979843,
		-0.619773, -0.759931, -0.195925,
		-0.769414, 0.637559, -0.038988,
		39.315845, 37.612934, 34.302395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491764, 36.946766, 33.725780>,  <39.854435, 37.166641, 34.329685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491764, 36.946766, 33.725780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329285, 37.307804, 33.782806>,  <39.231796, 37.524426, 33.817020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329285, 37.307804, 33.782806>,  <39.491764, 36.946766, 33.725780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329285, 37.307804, 33.782806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289467, 0.275077, -0.916811,
		-0.866723, -0.331143, -0.373008,
		-0.406202, 0.902594, 0.142561,
		39.207424, 37.578583, 33.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979424, 37.110882, 33.182541>,  <39.491764, 36.946766, 33.725780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979424, 37.110882, 33.182541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079250, 37.472454, 33.321468>,  <39.139149, 37.689396, 33.404823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079250, 37.472454, 33.321468>,  <38.979424, 37.110882, 33.182541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079250, 37.472454, 33.321468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130247, 0.324075, -0.937022,
		-0.959557, 0.279091, -0.036854,
		0.249571, 0.903927, 0.347320,
		39.154121, 37.743633, 33.425663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689182, 37.573418, 32.671703>,  <38.979424, 37.110882, 33.182541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689182, 37.573418, 32.671703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966351, 37.782494, 32.870361>,  <39.132652, 37.907940, 32.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966351, 37.782494, 32.870361>,  <38.689182, 37.573418, 32.671703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966351, 37.782494, 32.870361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296127, 0.421727, -0.857003,
		-0.657399, 0.740903, 0.137439,
		0.692918, 0.522694, 0.496644,
		39.174225, 37.939301, 33.019356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673130, 38.279690, 32.322517>,  <38.689182, 37.573418, 32.671703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673130, 38.279690, 32.322517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011486, 38.240898, 32.532303>,  <39.214500, 38.217625, 32.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011486, 38.240898, 32.532303>,  <38.673130, 38.279690, 32.322517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011486, 38.240898, 32.532303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507245, 0.450173, -0.734878,
		-0.164832, 0.887659, 0.429990,
		0.845892, -0.096979, 0.524464,
		39.265255, 38.211803, 32.689644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029713, 38.848026, 32.203358>,  <38.673130, 38.279690, 32.322517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029713, 38.848026, 32.203358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309612, 38.577312, 32.294849>,  <39.477551, 38.414883, 32.349743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309612, 38.577312, 32.294849>,  <39.029713, 38.848026, 32.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309612, 38.577312, 32.294849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568456, 0.333580, -0.752052,
		0.432677, 0.656269, 0.618143,
		0.699749, -0.676783, 0.228728,
		39.519535, 38.374279, 32.363468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629726, 39.230469, 32.307682>,  <39.029713, 38.848026, 32.203358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629726, 39.230469, 32.307682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776306, 38.859447, 32.278404>,  <39.864254, 38.636833, 32.260838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776306, 38.859447, 32.278404>,  <39.629726, 39.230469, 32.307682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776306, 38.859447, 32.278404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571035, 0.286311, -0.769380,
		0.734598, 0.240144, 0.634584,
		0.366450, -0.927554, -0.073193,
		39.886242, 38.581181, 32.256447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374760, 39.260143, 32.175472>,  <39.629726, 39.230469, 32.307682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374760, 39.260143, 32.175472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284008, 38.890556, 32.052303>,  <40.229557, 38.668804, 31.978401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284008, 38.890556, 32.052303>,  <40.374760, 39.260143, 32.175472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284008, 38.890556, 32.052303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555033, 0.137138, -0.820446,
		0.800291, -0.357046, 0.481718,
		-0.226875, -0.923965, -0.307923,
		40.215946, 38.613365, 31.959927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035667, 38.991356, 31.915190>,  <40.374760, 39.260143, 32.175472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035667, 38.991356, 31.915190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742249, 38.756947, 31.777506>,  <40.566196, 38.616299, 31.694895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742249, 38.756947, 31.777506>,  <41.035667, 38.991356, 31.915190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742249, 38.756947, 31.777506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463446, -0.060862, -0.884033,
		0.497117, -0.808003, 0.316237,
		-0.733548, -0.586027, -0.344210,
		40.522182, 38.581139, 31.674242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381821, 38.433952, 31.645178>,  <41.035667, 38.991356, 31.915190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381821, 38.433952, 31.645178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032475, 38.463741, 31.452641>,  <40.822868, 38.481613, 31.337118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032475, 38.463741, 31.452641>,  <41.381821, 38.433952, 31.645178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032475, 38.463741, 31.452641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480227, -0.033403, -0.876508,
		-0.081348, -0.996664, -0.006588,
		-0.873364, 0.074466, -0.481342,
		40.770466, 38.486080, 31.308237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504547, 38.175217, 30.961472>,  <41.381821, 38.433952, 31.645178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504547, 38.175217, 30.961472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141651, 38.331688, 30.899649>,  <40.923912, 38.425571, 30.862555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141651, 38.331688, 30.899649>,  <41.504547, 38.175217, 30.961472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141651, 38.331688, 30.899649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240047, 0.179819, -0.953962,
		-0.345378, -0.902576, -0.257041,
		-0.907244, 0.391179, -0.154555,
		40.869476, 38.449043, 30.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140533, 37.832207, 30.395262>,  <41.504547, 38.175217, 30.961472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140533, 37.832207, 30.395262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998692, 38.205112, 30.423922>,  <40.913586, 38.428856, 30.441116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998692, 38.205112, 30.423922>,  <41.140533, 37.832207, 30.395262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998692, 38.205112, 30.423922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089741, 0.110207, -0.989849,
		-0.930701, -0.344572, -0.122742,
		-0.354601, 0.932269, 0.071648,
		40.892311, 38.484795, 30.445415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835361, 38.007393, 29.761890>,  <41.140533, 37.832207, 30.395262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835361, 38.007393, 29.761890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917721, 38.363205, 29.925028>,  <40.967136, 38.576694, 30.022911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917721, 38.363205, 29.925028>,  <40.835361, 38.007393, 29.761890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917721, 38.363205, 29.925028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336998, 0.326827, -0.882959,
		-0.918715, 0.319243, -0.232477,
		0.205899, 0.889532, 0.407846,
		40.979492, 38.630066, 30.047382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558487, 38.523434, 29.335327>,  <40.835361, 38.007393, 29.761890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558487, 38.523434, 29.335327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835857, 38.721905, 29.544313>,  <41.002281, 38.840988, 29.669704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835857, 38.721905, 29.544313>,  <40.558487, 38.523434, 29.335327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835857, 38.721905, 29.544313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232740, 0.532001, -0.814130,
		-0.681902, 0.686138, 0.253425,
		0.693428, 0.496175, 0.522464,
		41.043884, 38.870758, 29.701052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482243, 39.176243, 29.153767>,  <40.558487, 38.523434, 29.335327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482243, 39.176243, 29.153767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848568, 39.151882, 29.312551>,  <41.068363, 39.137264, 29.407822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848568, 39.151882, 29.312551>,  <40.482243, 39.176243, 29.153767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848568, 39.151882, 29.312551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359733, 0.563851, -0.743413,
		-0.178549, 0.823627, 0.538292,
		0.915812, -0.060906, 0.396961,
		41.123310, 39.133610, 29.431641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699001, 39.842716, 29.186934>,  <40.482243, 39.176243, 29.153767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699001, 39.842716, 29.186934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007267, 39.587826, 29.188475>,  <41.192226, 39.434891, 29.189400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007267, 39.587826, 29.188475>,  <40.699001, 39.842716, 29.186934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007267, 39.587826, 29.188475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353122, 0.422020, -0.834987,
		0.530452, 0.644856, 0.550256,
		0.770666, -0.637228, 0.003851,
		41.238468, 39.396656, 29.189631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199070, 40.210922, 28.854143>,  <40.699001, 39.842716, 29.186934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199070, 40.210922, 28.854143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354397, 39.842606, 28.839453>,  <41.447594, 39.621616, 28.830639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354397, 39.842606, 28.839453>,  <41.199070, 40.210922, 28.854143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354397, 39.842606, 28.839453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379109, 0.195945, -0.904368,
		0.839934, 0.337256, 0.425170,
		0.388314, -0.920795, -0.036724,
		41.470890, 39.566368, 28.828436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777782, 40.351242, 28.497658>,  <41.199070, 40.210922, 28.854143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777782, 40.351242, 28.497658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699986, 39.959362, 28.478252>,  <41.653305, 39.724232, 28.466610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699986, 39.959362, 28.478252>,  <41.777782, 40.351242, 28.497658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699986, 39.959362, 28.478252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277435, -0.007506, -0.960715,
		0.940851, -0.200313, 0.273263,
		-0.194495, -0.979703, -0.048512,
		41.641636, 39.665451, 28.463699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355663, 40.189056, 28.182226>,  <41.777782, 40.351242, 28.497658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355663, 40.189056, 28.182226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085663, 39.899860, 28.123354>,  <41.923664, 39.726341, 28.088030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085663, 39.899860, 28.123354>,  <42.355663, 40.189056, 28.182226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085663, 39.899860, 28.123354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211363, 0.001641, -0.977406,
		0.706898, -0.690855, 0.151706,
		-0.674998, -0.722991, -0.147181,
		41.883163, 39.682964, 28.079199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617233, 39.780197, 27.785252>,  <42.355663, 40.189056, 28.182226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617233, 39.780197, 27.785252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231426, 39.685715, 27.738068>,  <41.999943, 39.629025, 27.709757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231426, 39.685715, 27.738068>,  <42.617233, 39.780197, 27.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231426, 39.685715, 27.738068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161875, -0.176098, -0.970972,
		0.208573, -0.955614, 0.208084,
		-0.964517, -0.236203, -0.117960,
		41.942070, 39.614853, 27.702679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603104, 39.249569, 27.306297>,  <42.617233, 39.780197, 27.785252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603104, 39.249569, 27.306297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236202, 39.407425, 27.284744>,  <42.016060, 39.502140, 27.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236202, 39.407425, 27.284744>,  <42.603104, 39.249569, 27.306297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236202, 39.407425, 27.284744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039578, -0.044300, -0.998234,
		-0.396329, -0.917768, 0.025015,
		-0.917255, 0.394639, -0.053881,
		41.961025, 39.525818, 27.268579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268986, 38.882248, 26.770000>,  <42.603104, 39.249569, 27.306297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268986, 38.882248, 26.770000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061638, 39.216900, 26.840803>,  <41.937229, 39.417690, 26.883286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061638, 39.216900, 26.840803>,  <42.268986, 38.882248, 26.770000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061638, 39.216900, 26.840803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036762, 0.228601, -0.972826,
		-0.854364, -0.497780, -0.149257,
		-0.518374, 0.836634, 0.177009,
		41.906124, 39.467892, 26.893906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873272, 38.939819, 26.188066>,  <42.268986, 38.882248, 26.770000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873272, 38.939819, 26.188066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854427, 39.306767, 26.346163>,  <41.843121, 39.526936, 26.441021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854427, 39.306767, 26.346163>,  <41.873272, 38.939819, 26.188066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854427, 39.306767, 26.346163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001993, 0.395764, -0.918350,
		-0.998888, -0.042476, -0.020473,
		-0.047111, 0.917369, 0.395239,
		41.840294, 39.581978, 26.464735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370758, 39.290497, 25.793921>,  <41.873272, 38.939819, 26.188066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370758, 39.290497, 25.793921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586586, 39.581055, 25.964195>,  <41.716084, 39.755390, 26.066360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586586, 39.581055, 25.964195>,  <41.370758, 39.290497, 25.793921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586586, 39.581055, 25.964195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047871, 0.478314, -0.876883,
		-0.840578, 0.493519, 0.223312,
		0.539571, 0.726399, 0.425686,
		41.748459, 39.798973, 26.091902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000233, 39.823406, 25.770811>,  <41.370758, 39.290497, 25.793921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000233, 39.823406, 25.770811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372547, 39.967445, 25.796017>,  <41.595936, 40.053867, 25.811140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372547, 39.967445, 25.796017>,  <41.000233, 39.823406, 25.770811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372547, 39.967445, 25.796017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093623, 0.401432, -0.911091,
		-0.353377, 0.842130, 0.407360,
		0.930784, 0.360097, 0.063014,
		41.651783, 40.075474, 25.814920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905918, 40.441853, 25.433844>,  <41.000233, 39.823406, 25.770811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905918, 40.441853, 25.433844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301731, 40.395840, 25.468706>,  <41.539219, 40.368233, 25.489624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301731, 40.395840, 25.468706>,  <40.905918, 40.441853, 25.433844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301731, 40.395840, 25.468706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131709, 0.472891, -0.871222,
		0.059007, 0.873580, 0.483091,
		0.989531, -0.115036, 0.087154,
		41.598591, 40.361328, 25.494852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311214, 41.073311, 25.320618>,  <40.905918, 40.441853, 25.433844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311214, 41.073311, 25.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593094, 40.799557, 25.245768>,  <41.762222, 40.635303, 25.200857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593094, 40.799557, 25.245768>,  <41.311214, 41.073311, 25.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593094, 40.799557, 25.245768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160544, 0.410707, -0.897522,
		0.691104, 0.602441, 0.399299,
		0.704699, -0.684386, -0.187123,
		41.804504, 40.594242, 25.189631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859253, 41.476292, 24.947870>,  <41.311214, 41.073311, 25.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859253, 41.476292, 24.947870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924671, 41.092499, 24.856092>,  <41.963921, 40.862225, 24.801025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924671, 41.092499, 24.856092>,  <41.859253, 41.476292, 24.947870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924671, 41.092499, 24.856092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247822, 0.265074, -0.931837,
		0.954902, 0.095535, 0.281132,
		0.163544, -0.959484, -0.229444,
		41.973736, 40.804653, 24.787260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541153, 41.414368, 24.836527>,  <41.859253, 41.476292, 24.947870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541153, 41.414368, 24.836527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374561, 41.093761, 24.664894>,  <42.274605, 40.901398, 24.561914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374561, 41.093761, 24.664894>,  <42.541153, 41.414368, 24.836527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374561, 41.093761, 24.664894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213947, 0.372302, -0.903116,
		0.883613, -0.467931, 0.016427,
		-0.416480, -0.801519, -0.429083,
		42.249619, 40.853306, 24.536169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062893, 41.063667, 24.425789>,  <42.541153, 41.414368, 24.836527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062893, 41.063667, 24.425789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716530, 40.948570, 24.262129>,  <42.508713, 40.879513, 24.163933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716530, 40.948570, 24.262129>,  <43.062893, 41.063667, 24.425789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716530, 40.948570, 24.262129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315709, 0.320066, -0.893244,
		0.387983, -0.902641, -0.186304,
		-0.865908, -0.287745, -0.409152,
		42.456757, 40.862247, 24.139383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266106, 40.757526, 23.807009>,  <43.062893, 41.063667, 24.425789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266106, 40.757526, 23.807009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879196, 40.834736, 23.741137>,  <42.647049, 40.881062, 23.701614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879196, 40.834736, 23.741137>,  <43.266106, 40.757526, 23.807009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879196, 40.834736, 23.741137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213357, 0.267523, -0.939633,
		-0.137315, -0.944020, -0.299951,
		-0.967276, 0.193022, -0.164679,
		42.589012, 40.892643, 23.691732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200798, 40.609329, 23.093889>,  <43.266106, 40.757526, 23.807009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200798, 40.609329, 23.093889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900272, 40.834225, 23.232119>,  <42.719959, 40.969162, 23.315056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900272, 40.834225, 23.232119>,  <43.200798, 40.609329, 23.093889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900272, 40.834225, 23.232119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094724, 0.610083, -0.786655,
		-0.653116, -0.558288, -0.511619,
		-0.751310, 0.562240, 0.345572,
		42.674881, 41.002895, 23.335791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840954, 40.908131, 22.490419>,  <43.200798, 40.609329, 23.093889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840954, 40.908131, 22.490419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749981, 41.135071, 22.806997>,  <42.695396, 41.271236, 22.996944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749981, 41.135071, 22.806997>,  <42.840954, 40.908131, 22.490419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749981, 41.135071, 22.806997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176735, 0.823296, -0.539397,
		-0.957622, 0.017200, -0.287515,
		-0.227432, 0.567352, 0.791446,
		42.681751, 41.305275, 23.044432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298206, 41.315258, 22.335005>,  <42.840954, 40.908131, 22.490419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298206, 41.315258, 22.335005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523712, 41.489868, 22.615465>,  <42.659016, 41.594635, 22.783741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523712, 41.489868, 22.615465>,  <42.298206, 41.315258, 22.335005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523712, 41.489868, 22.615465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036135, 0.835067, -0.548960,
		-0.825143, 0.334822, 0.455009,
		0.563767, 0.436529, 0.701149,
		42.692841, 41.620827, 22.825809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938751, 41.974091, 22.464405>,  <42.298206, 41.315258, 22.335005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938751, 41.974091, 22.464405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331242, 41.961418, 22.540493>,  <42.566738, 41.953815, 22.586145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331242, 41.961418, 22.540493>,  <41.938751, 41.974091, 22.464405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331242, 41.961418, 22.540493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107709, 0.908245, -0.404339,
		-0.159959, 0.417238, 0.894609,
		0.981230, -0.031680, 0.190222,
		42.625610, 41.951916, 22.597559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138126, 42.625134, 22.768553>,  <41.938751, 41.974091, 22.464405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138126, 42.625134, 22.768553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424358, 42.459431, 22.543577>,  <42.596096, 42.360008, 22.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424358, 42.459431, 22.543577>,  <42.138126, 42.625134, 22.768553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424358, 42.459431, 22.543577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153254, 0.878660, -0.452184,
		0.681513, 0.237378, 0.692237,
		0.715579, -0.414257, -0.562439,
		42.639030, 42.335155, 22.374846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801479, 43.036537, 22.802820>,  <42.138126, 42.625134, 22.768553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801479, 43.036537, 22.802820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711018, 42.831406, 22.471552>,  <42.656742, 42.708328, 22.272791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711018, 42.831406, 22.471552>,  <42.801479, 43.036537, 22.802820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711018, 42.831406, 22.471552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080680, 0.837413, -0.540583,
		0.970745, -0.189070, -0.148007,
		-0.226151, -0.512827, -0.828169,
		42.643173, 42.677559, 22.223101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079559, 43.380882, 22.939985>,  <42.801479, 43.036537, 22.802820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079559, 43.380882, 22.939985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856258, 43.685223, 22.807642>,  <41.722279, 43.867825, 22.728235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856258, 43.685223, 22.807642>,  <42.079559, 43.380882, 22.939985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856258, 43.685223, 22.807642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474134, -0.619809, -0.625327,
		-0.680851, -0.192214, 0.706750,
		-0.558247, 0.760849, -0.330862,
		41.688786, 43.913479, 22.708384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387268, 43.246464, 22.946754>,  <42.079559, 43.380882, 22.939985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387268, 43.246464, 22.946754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441425, 43.519218, 22.659229>,  <41.473919, 43.682873, 22.486713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441425, 43.519218, 22.659229>,  <41.387268, 43.246464, 22.946754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441425, 43.519218, 22.659229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391576, -0.629606, -0.671018,
		-0.910131, 0.372320, 0.181770,
		0.135390, 0.681891, -0.718815,
		41.482040, 43.723785, 22.443584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752151, 43.309380, 22.541092>,  <41.387268, 43.246464, 22.946754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752151, 43.309380, 22.541092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077217, 43.394886, 22.324249>,  <41.272259, 43.446190, 22.194143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077217, 43.394886, 22.324249>,  <40.752151, 43.309380, 22.541092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077217, 43.394886, 22.324249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362873, -0.542269, -0.757804,
		-0.455957, 0.812558, -0.363115,
		0.812666, 0.213762, -0.542107,
		41.321018, 43.459015, 22.161617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653206, 42.672489, 22.937952>,  <40.752151, 43.309380, 22.541092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653206, 42.672489, 22.937952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625965, 42.304512, 22.783518>,  <40.609623, 42.083725, 22.690857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625965, 42.304512, 22.783518>,  <40.653206, 42.672489, 22.937952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625965, 42.304512, 22.783518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925206, -0.086569, 0.369460,
		-0.373306, 0.382368, -0.845244,
		-0.068098, -0.919946, -0.386086,
		40.605537, 42.028530, 22.667692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067181, 42.575619, 22.648788>,  <40.653206, 42.672489, 22.937952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067181, 42.575619, 22.648788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170834, 42.198349, 22.731991>,  <40.233025, 41.971985, 22.781912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170834, 42.198349, 22.731991>,  <40.067181, 42.575619, 22.648788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170834, 42.198349, 22.731991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894121, -0.152821, 0.420942,
		-0.365236, -0.295062, -0.882916,
		0.259133, -0.943177, 0.208005,
		40.248573, 41.915398, 22.794394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461620, 42.135952, 22.567934>,  <40.067181, 42.575619, 22.648788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461620, 42.135952, 22.567934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665833, 41.875996, 22.793146>,  <39.788361, 41.720024, 22.928274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665833, 41.875996, 22.793146>,  <39.461620, 42.135952, 22.567934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665833, 41.875996, 22.793146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852829, -0.299137, 0.428019,
		-0.109741, -0.698686, -0.706962,
		0.510529, -0.649888, 0.563032,
		39.818993, 41.681030, 22.962055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235912, 41.459160, 22.479033>,  <39.461620, 42.135952, 22.567934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235912, 41.459160, 22.479033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401318, 41.470142, 22.843067>,  <39.500561, 41.476734, 23.061487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401318, 41.470142, 22.843067>,  <39.235912, 41.459160, 22.479033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401318, 41.470142, 22.843067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837021, -0.381914, 0.391838,
		0.358334, -0.923790, -0.134941,
		0.413512, 0.027460, 0.910084,
		39.525372, 41.478382, 23.116093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025581, 40.821651, 22.870440>,  <39.235912, 41.459160, 22.479033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025581, 40.821651, 22.870440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150940, 41.073963, 23.154383>,  <39.226154, 41.225349, 23.324749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150940, 41.073963, 23.154383>,  <39.025581, 40.821651, 22.870440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150940, 41.073963, 23.154383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663364, -0.389468, 0.638954,
		0.679507, -0.671139, 0.296381,
		0.313397, 0.630783, 0.709857,
		39.244961, 41.263199, 23.367340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947552, 40.471825, 23.503050>,  <39.025581, 40.821651, 22.870440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947552, 40.471825, 23.503050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955379, 40.860390, 23.597689>,  <38.960075, 41.093529, 23.654472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955379, 40.860390, 23.597689>,  <38.947552, 40.471825, 23.503050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955379, 40.860390, 23.597689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678228, -0.160968, 0.717005,
		0.734591, -0.174499, 0.655688,
		0.019572, 0.971411, 0.236596,
		38.961250, 41.151814, 23.668667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097523, 40.498447, 24.284481>,  <38.947552, 40.471825, 23.503050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097523, 40.498447, 24.284481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940853, 40.851776, 24.181467>,  <38.846851, 41.063774, 24.119658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940853, 40.851776, 24.181467>,  <39.097523, 40.498447, 24.284481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940853, 40.851776, 24.181467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629532, -0.053144, 0.775154,
		0.671027, 0.465739, 0.576897,
		-0.391678, 0.883325, -0.257537,
		38.823349, 41.116772, 24.104206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992260, 40.800797, 24.902847>,  <39.097523, 40.498447, 24.284481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992260, 40.800797, 24.902847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758968, 41.025654, 24.668295>,  <38.618996, 41.160568, 24.527563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758968, 41.025654, 24.668295>,  <38.992260, 40.800797, 24.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758968, 41.025654, 24.668295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664825, 0.084452, 0.742210,
		0.466750, 0.822716, 0.324473,
		-0.583226, 0.562145, -0.586380,
		38.584000, 41.194298, 24.492380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794552, 41.453308, 25.232765>,  <38.992260, 40.800797, 24.902847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794552, 41.453308, 25.232765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511436, 41.446098, 24.950287>,  <38.341568, 41.441772, 24.780800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511436, 41.446098, 24.950287>,  <38.794552, 41.453308, 25.232765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511436, 41.446098, 24.950287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703634, -0.070777, 0.707029,
		-0.062727, 0.997329, 0.037411,
		-0.707788, -0.018026, -0.706194,
		38.299099, 41.440689, 24.738428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303436, 42.000629, 25.516907>,  <38.794552, 41.453308, 25.232765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303436, 42.000629, 25.516907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117817, 41.773151, 25.245249>,  <38.006443, 41.636665, 25.082254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117817, 41.773151, 25.245249>,  <38.303436, 42.000629, 25.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117817, 41.773151, 25.245249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821122, -0.011436, 0.570638,
		-0.332287, 0.822467, -0.461664,
		-0.464051, -0.568698, -0.679146,
		37.978603, 41.602543, 25.041506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688606, 42.335339, 25.461937>,  <38.303436, 42.000629, 25.516907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688606, 42.335339, 25.461937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663345, 41.959404, 25.327642>,  <37.648190, 41.733845, 25.247065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663345, 41.959404, 25.327642>,  <37.688606, 42.335339, 25.461937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663345, 41.959404, 25.327642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779794, -0.163484, 0.604314,
		-0.622844, 0.299968, -0.722554,
		-0.063149, -0.939836, -0.335738,
		37.644402, 41.677452, 25.226921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030449, 42.272778, 25.416698>,  <37.688606, 42.335339, 25.461937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030449, 42.272778, 25.416698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162056, 41.895618, 25.437449>,  <37.241020, 41.669323, 25.449898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162056, 41.895618, 25.437449>,  <37.030449, 42.272778, 25.416698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162056, 41.895618, 25.437449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815343, -0.255937, 0.519338,
		-0.476407, -0.213166, -0.852993,
		0.329018, -0.942898, 0.051873,
		37.260761, 41.612747, 25.453011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440590, 41.848186, 25.240026>,  <37.030449, 42.272778, 25.416698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440590, 41.848186, 25.240026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710678, 41.622028, 25.429516>,  <36.872730, 41.486332, 25.543209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710678, 41.622028, 25.429516>,  <36.440590, 41.848186, 25.240026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710678, 41.622028, 25.429516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709346, -0.321615, 0.627210,
		-0.202264, -0.759536, -0.618219,
		0.675217, -0.565393, 0.473722,
		36.913242, 41.452412, 25.571632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173969, 41.091217, 25.314016>,  <36.440590, 41.848186, 25.240026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173969, 41.091217, 25.314016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456184, 41.173306, 25.585340>,  <36.625511, 41.222561, 25.748135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456184, 41.173306, 25.585340>,  <36.173969, 41.091217, 25.314016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456184, 41.173306, 25.585340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529673, -0.483185, 0.697122,
		0.470816, -0.851126, -0.232202,
		0.705535, 0.205225, 0.678310,
		36.667847, 41.234871, 25.788834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282509, 40.412121, 25.681984>,  <36.173969, 41.091217, 25.314016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282509, 40.412121, 25.681984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451195, 40.690319, 25.914688>,  <36.552406, 40.857239, 26.054310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451195, 40.690319, 25.914688>,  <36.282509, 40.412121, 25.681984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451195, 40.690319, 25.914688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171436, -0.568872, 0.804360,
		0.890373, -0.438947, -0.120671,
		0.421718, 0.695493, 0.581759,
		36.577709, 40.898968, 26.089216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795433, 40.063023, 26.197268>,  <36.282509, 40.412121, 25.681984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795433, 40.063023, 26.197268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717392, 40.413876, 26.372801>,  <36.670567, 40.624386, 26.478121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717392, 40.413876, 26.372801>,  <36.795433, 40.063023, 26.197268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717392, 40.413876, 26.372801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094347, -0.462139, 0.881775,
		0.976235, 0.130632, 0.172918,
		-0.195100, 0.877133, 0.438831,
		36.658863, 40.677017, 26.504450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255650, 40.037102, 26.677111>,  <36.795433, 40.063023, 26.197268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255650, 40.037102, 26.677111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988808, 40.299358, 26.818586>,  <36.828701, 40.456715, 26.903473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988808, 40.299358, 26.818586>,  <37.255650, 40.037102, 26.677111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988808, 40.299358, 26.818586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087742, -0.540626, 0.836675,
		0.739775, 0.527120, 0.418184,
		-0.667109, 0.655643, 0.353691,
		36.788673, 40.496052, 26.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370171, 40.215893, 27.379868>,  <37.255650, 40.037102, 26.677111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370171, 40.215893, 27.379868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981285, 40.306618, 27.356714>,  <36.747952, 40.361053, 27.342823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981285, 40.306618, 27.356714>,  <37.370171, 40.215893, 27.379868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981285, 40.306618, 27.356714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159490, -0.460854, 0.873027,
		0.171335, 0.858004, 0.484224,
		-0.972218, 0.226809, -0.057883,
		36.689621, 40.374660, 27.339350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248089, 40.384090, 28.022217>,  <37.370171, 40.215893, 27.379868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248089, 40.384090, 28.022217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875469, 40.318523, 27.892391>,  <36.651897, 40.279182, 27.814495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875469, 40.318523, 27.892391>,  <37.248089, 40.384090, 28.022217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875469, 40.318523, 27.892391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221966, -0.450640, 0.864670,
		-0.287998, 0.877528, 0.383410,
		-0.931552, -0.163919, -0.324565,
		36.596004, 40.269348, 27.795021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775097, 40.611736, 28.558607>,  <37.248089, 40.384090, 28.022217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775097, 40.611736, 28.558607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 40.367016, 28.324791>,  <36.434021, 40.220184, 28.184502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 40.367016, 28.324791>,  <36.775097, 40.611736, 28.558607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561924, 40.367016, 28.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418603, -0.409736, 0.810486,
		-0.735360, 0.676625, -0.037738,
		-0.532932, -0.611797, -0.584541,
		36.402046, 40.183475, 28.149429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138752, 40.541515, 28.856232>,  <36.775097, 40.611736, 28.558607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138752, 40.541515, 28.856232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183624, 40.200958, 28.651278>,  <36.210548, 39.996624, 28.528305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183624, 40.200958, 28.651278>,  <36.138752, 40.541515, 28.856232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183624, 40.200958, 28.651278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356268, -0.515820, 0.779104,
		-0.927626, 0.095150, -0.361188,
		0.112176, -0.851396, -0.512387,
		36.217278, 39.945538, 28.497561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548000, 40.146412, 28.998602>,  <36.138752, 40.541515, 28.856232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548000, 40.146412, 28.998602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820065, 39.892536, 28.851877>,  <35.983303, 39.740211, 28.763842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820065, 39.892536, 28.851877>,  <35.548000, 40.146412, 28.998602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820065, 39.892536, 28.851877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269383, -0.681773, 0.680161,
		-0.681773, -0.363806, -0.634690,
		-0.680161, 0.634690, 0.366811,
		36.024113, 39.702129, 28.741835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152893, 39.517567, 29.026302>,  <35.548000, 40.146412, 28.998602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152893, 39.517567, 29.026302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529030, 39.382832, 29.007126>,  <35.754711, 39.301991, 28.995621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529030, 39.382832, 29.007126>,  <35.152893, 39.517567, 29.026302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529030, 39.382832, 29.007126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242402, -0.762142, 0.600318,
		-0.238749, -0.552882, -0.798324,
		0.940341, -0.336840, -0.047941,
		35.811131, 39.281780, 28.992744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126709, 38.813038, 29.054474>,  <35.152893, 39.517567, 29.026302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126709, 38.813038, 29.054474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506374, 38.888416, 29.155327>,  <35.734173, 38.933643, 29.215839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506374, 38.888416, 29.155327>,  <35.126709, 38.813038, 29.054474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506374, 38.888416, 29.155327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044101, -0.713479, 0.699287,
		0.311673, -0.674859, -0.668899,
		0.949165, 0.188450, 0.252134,
		35.791122, 38.944950, 29.230967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387859, 38.099548, 29.160381>,  <35.126709, 38.813038, 29.054474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387859, 38.099548, 29.160381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630066, 38.357544, 29.346861>,  <35.775391, 38.512341, 29.458748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630066, 38.357544, 29.346861>,  <35.387859, 38.099548, 29.160381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630066, 38.357544, 29.346861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097443, -0.641477, 0.760928,
		0.789847, -0.415324, -0.451273,
		0.605513, 0.644991, 0.466198,
		35.811722, 38.551041, 29.486721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961170, 37.674408, 29.419998>,  <35.387859, 38.099548, 29.160381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961170, 37.674408, 29.419998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948788, 38.003765, 29.646650>,  <35.941360, 38.201378, 29.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948788, 38.003765, 29.646650>,  <35.961170, 37.674408, 29.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948788, 38.003765, 29.646650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108710, -0.560766, 0.820807,
		0.993591, 0.087004, -0.072154,
		-0.030952, 0.823391, 0.566630,
		35.939503, 38.250782, 29.816639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495037, 37.530430, 29.970182>,  <35.961170, 37.674408, 29.419998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495037, 37.530430, 29.970182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298714, 37.853283, 30.101421>,  <36.180920, 38.046993, 30.180164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298714, 37.853283, 30.101421>,  <36.495037, 37.530430, 29.970182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298714, 37.853283, 30.101421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011438, -0.382511, 0.923880,
		0.871192, 0.449696, 0.196972,
		-0.490809, 0.807130, 0.328097,
		36.151470, 38.095421, 30.199850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830223, 37.547920, 30.581059>,  <36.495037, 37.530430, 29.970182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830223, 37.547920, 30.581059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508938, 37.783714, 30.615364>,  <36.316166, 37.925190, 30.635948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508938, 37.783714, 30.615364>,  <36.830223, 37.547920, 30.581059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508938, 37.783714, 30.615364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002757, -0.140296, 0.990106,
		0.595690, 0.795499, 0.111062,
		-0.803210, 0.589490, 0.085766,
		36.267975, 37.960560, 30.641094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947090, 38.021225, 31.177925>,  <36.830223, 37.547920, 30.581059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947090, 38.021225, 31.177925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554588, 37.984222, 31.110304>,  <36.319088, 37.962021, 31.069731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554588, 37.984222, 31.110304>,  <36.947090, 38.021225, 31.177925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554588, 37.984222, 31.110304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130233, -0.328272, 0.935562,
		-0.142037, 0.940043, 0.310072,
		-0.981257, -0.092503, -0.169051,
		36.260212, 37.956470, 31.059589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528667, 38.341309, 31.723097>,  <36.947090, 38.021225, 31.177925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528667, 38.341309, 31.723097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259518, 38.081566, 31.581350>,  <36.098030, 37.925720, 31.496304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259518, 38.081566, 31.581350>,  <36.528667, 38.341309, 31.723097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259518, 38.081566, 31.581350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211676, -0.289990, 0.933327,
		-0.708828, 0.703019, 0.057672,
		-0.672871, -0.649361, -0.354365,
		36.057655, 37.886757, 31.475040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934891, 38.508217, 32.086235>,  <36.528667, 38.341309, 31.723097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934891, 38.508217, 32.086235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901478, 38.134003, 31.948950>,  <35.881428, 37.909473, 31.866579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901478, 38.134003, 31.948950>,  <35.934891, 38.508217, 32.086235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901478, 38.134003, 31.948950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377262, -0.289087, 0.879831,
		-0.922331, 0.202978, -0.328793,
		-0.083537, -0.935537, -0.343210,
		35.876415, 37.853340, 31.845987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548939, 38.318306, 32.617107>,  <35.934891, 38.508217, 32.086235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548939, 38.318306, 32.617107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621208, 37.984138, 32.409481>,  <35.664570, 37.783638, 32.284904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621208, 37.984138, 32.409481>,  <35.548939, 38.318306, 32.617107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621208, 37.984138, 32.409481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188802, -0.547399, 0.815296,
		-0.965252, -0.049302, -0.256630,
		0.180675, -0.835418, -0.519070,
		35.675411, 37.733513, 32.253761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929585, 37.925137, 32.680431>,  <35.548939, 38.318306, 32.617107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929585, 37.925137, 32.680431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248478, 37.695141, 32.606892>,  <35.439816, 37.557144, 32.562767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248478, 37.695141, 32.606892>,  <34.929585, 37.925137, 32.680431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248478, 37.695141, 32.606892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216624, -0.556761, 0.801930,
		-0.563495, -0.599478, -0.568419,
		0.797213, -0.575016, -0.183871,
		35.487648, 37.522644, 32.551735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716862, 37.338516, 32.758812>,  <34.929585, 37.925137, 32.680431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716862, 37.338516, 32.758812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109997, 37.317299, 32.829475>,  <35.345879, 37.304569, 32.871872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109997, 37.317299, 32.829475>,  <34.716862, 37.338516, 32.758812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109997, 37.317299, 32.829475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178472, -0.515368, 0.838179,
		0.046581, -0.855325, -0.515993,
		0.982841, -0.053047, 0.176658,
		35.404850, 37.301384, 32.882473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832764, 36.643936, 33.101158>,  <34.716862, 37.338516, 32.758812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832764, 36.643936, 33.101158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182835, 36.828938, 33.157936>,  <35.392879, 36.939938, 33.192005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182835, 36.828938, 33.157936>,  <34.832764, 36.643936, 33.101158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182835, 36.828938, 33.157936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068837, -0.409462, 0.909726,
		0.478873, -0.786404, -0.390191,
		0.875181, 0.462503, 0.141946,
		35.445389, 36.967690, 33.200520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214363, 36.131157, 33.457756>,  <34.832764, 36.643936, 33.101158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214363, 36.131157, 33.457756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384762, 36.485958, 33.529041>,  <35.487000, 36.698837, 33.571812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384762, 36.485958, 33.529041>,  <35.214363, 36.131157, 33.457756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384762, 36.485958, 33.529041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084207, -0.234994, 0.968342,
		0.900798, -0.397502, -0.174798,
		0.425995, 0.887000, 0.178210,
		35.512562, 36.752060, 33.582504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814465, 35.933678, 33.861481>,  <35.214363, 36.131157, 33.457756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814465, 35.933678, 33.861481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714527, 36.319714, 33.892941>,  <35.654564, 36.551334, 33.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714527, 36.319714, 33.892941>,  <35.814465, 35.933678, 33.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714527, 36.319714, 33.892941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107216, -0.053153, 0.992814,
		0.962333, 0.256477, -0.090193,
		-0.249840, 0.965088, 0.078650,
		35.639576, 36.609241, 33.916534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327713, 36.271309, 34.269241>,  <35.814465, 35.933678, 33.861481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327713, 36.271309, 34.269241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994507, 36.491024, 34.295670>,  <35.794582, 36.622852, 34.311527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994507, 36.491024, 34.295670>,  <36.327713, 36.271309, 34.269241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994507, 36.491024, 34.295670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122100, 0.066052, 0.990317,
		0.539606, 0.833018, -0.122090,
		-0.833017, 0.549289, 0.066069,
		35.744602, 36.655811, 34.315491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569004, 36.919193, 34.555656>,  <36.327713, 36.271309, 34.269241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569004, 36.919193, 34.555656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174953, 36.860359, 34.591190>,  <35.938522, 36.825058, 34.612511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174953, 36.860359, 34.591190>,  <36.569004, 36.919193, 34.555656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174953, 36.860359, 34.591190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074803, 0.098344, 0.992337,
		-0.154693, 0.984223, -0.085879,
		-0.985127, -0.147084, 0.088836,
		35.879414, 36.816235, 34.617840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440781, 37.229202, 35.204975>,  <36.569004, 36.919193, 34.555656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440781, 37.229202, 35.204975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142986, 36.973949, 35.126457>,  <35.964310, 36.820797, 35.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142986, 36.973949, 35.126457>,  <36.440781, 37.229202, 35.204975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142986, 36.973949, 35.126457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105553, -0.177815, 0.978387,
		-0.659246, 0.749111, 0.065023,
		-0.744482, -0.638134, -0.196294,
		35.919643, 36.782509, 35.067570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837315, 37.454628, 35.705173>,  <36.440781, 37.229202, 35.204975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837315, 37.454628, 35.705173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754528, 37.076988, 35.602539>,  <35.704857, 36.850403, 35.540958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754528, 37.076988, 35.602539>,  <35.837315, 37.454628, 35.705173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754528, 37.076988, 35.602539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198302, -0.297306, 0.933962,
		-0.958040, 0.142417, 0.248750,
		-0.206967, -0.944101, -0.256590,
		35.692436, 36.793758, 35.525562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102146, 37.646839, 35.583843>,  <35.837315, 37.454628, 35.705173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102146, 37.646839, 35.583843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937588, 37.931622, 35.811481>,  <34.838852, 38.102489, 35.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937588, 37.931622, 35.811481>,  <35.102146, 37.646839, 35.583843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937588, 37.931622, 35.811481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079122, 0.594130, -0.800468,
		-0.908016, -0.374339, -0.188092,
		-0.411397, 0.711955, 0.569098,
		34.814167, 38.145206, 35.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397205, 37.895527, 35.253017>,  <35.102146, 37.646839, 35.583843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397205, 37.895527, 35.253017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528793, 38.176739, 35.505219>,  <34.607746, 38.345467, 35.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528793, 38.176739, 35.505219>,  <34.397205, 37.895527, 35.253017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528793, 38.176739, 35.505219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202630, 0.704664, -0.679992,
		-0.922344, 0.095940, 0.374269,
		0.328972, 0.703025, 0.630502,
		34.627483, 38.387646, 35.694370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973392, 38.507591, 35.068089>,  <34.397205, 37.895527, 35.253017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973392, 38.507591, 35.068089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259689, 38.665363, 35.298615>,  <34.431469, 38.760025, 35.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259689, 38.665363, 35.298615>,  <33.973392, 38.507591, 35.068089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259689, 38.665363, 35.298615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083919, 0.867832, -0.489720,
		-0.693301, 0.302152, 0.654246,
		0.715745, 0.394427, 0.576313,
		34.474411, 38.783691, 35.471508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790264, 39.188744, 35.235653>,  <33.973392, 38.507591, 35.068089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790264, 39.188744, 35.235653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187443, 39.166668, 35.277637>,  <34.425751, 39.153423, 35.302830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187443, 39.166668, 35.277637>,  <33.790264, 39.188744, 35.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187443, 39.166668, 35.277637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103880, 0.831697, -0.545426,
		-0.057195, 0.552481, 0.831561,
		0.992944, -0.055187, 0.104960,
		34.485325, 39.150112, 35.309124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117924, 39.871380, 35.440620>,  <33.790264, 39.188744, 35.235653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117924, 39.871380, 35.440620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411812, 39.677254, 35.251030>,  <34.588146, 39.560780, 35.137276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411812, 39.677254, 35.251030>,  <34.117924, 39.871380, 35.440620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411812, 39.677254, 35.251030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219819, 0.831325, -0.510469,
		0.641763, 0.270866, 0.717476,
		0.734725, -0.485314, -0.473972,
		34.632229, 39.531658, 35.108837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733677, 40.431019, 35.349850>,  <34.117924, 39.871380, 35.440620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733677, 40.431019, 35.349850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793983, 40.133930, 35.088890>,  <34.830170, 39.955677, 34.932312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793983, 40.133930, 35.088890>,  <34.733677, 40.431019, 35.349850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793983, 40.133930, 35.088890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112274, 0.668541, -0.735152,
		0.982173, 0.037590, 0.184183,
		0.150768, -0.742725, -0.652402,
		34.839214, 39.911114, 34.893169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432865, 40.648510, 35.095085>,  <34.733677, 40.431019, 35.349850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432865, 40.648510, 35.095085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282856, 40.400223, 34.819675>,  <35.192852, 40.251251, 34.654430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282856, 40.400223, 34.819675>,  <35.432865, 40.648510, 35.095085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282856, 40.400223, 34.819675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234177, 0.655211, -0.718234,
		0.896951, -0.430589, -0.100359,
		-0.375020, -0.620719, -0.688526,
		35.170349, 40.214008, 34.613117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964718, 40.618309, 34.556664>,  <35.432865, 40.648510, 35.095085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964718, 40.618309, 34.556664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632565, 40.493282, 34.372154>,  <35.433273, 40.418266, 34.261448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632565, 40.493282, 34.372154>,  <35.964718, 40.618309, 34.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632565, 40.493282, 34.372154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272448, 0.494367, -0.825453,
		0.486014, -0.811124, -0.325372,
		-0.830399, -0.312535, -0.461259,
		35.383450, 40.399513, 34.233772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148693, 40.359402, 33.881477>,  <35.964718, 40.618309, 34.556664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148693, 40.359402, 33.881477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761169, 40.456474, 33.861420>,  <35.528656, 40.514717, 33.849384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761169, 40.456474, 33.861420>,  <36.148693, 40.359402, 33.881477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761169, 40.456474, 33.861420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158242, 0.450121, -0.878835,
		-0.190706, -0.859358, -0.474484,
		-0.968809, 0.242682, -0.050146,
		35.470528, 40.529278, 33.846375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902252, 40.171494, 33.162148>,  <36.148693, 40.359402, 33.881477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902252, 40.171494, 33.162148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618435, 40.417961, 33.298897>,  <35.448143, 40.565842, 33.380947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618435, 40.417961, 33.298897>,  <35.902252, 40.171494, 33.162148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618435, 40.417961, 33.298897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064743, 0.426104, -0.902355,
		-0.701678, -0.662396, -0.262447,
		-0.709546, 0.616171, 0.341873,
		35.405571, 40.602814, 33.401459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273643, 40.200909, 32.618774>,  <35.902252, 40.171494, 33.162148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273643, 40.200909, 32.618774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179707, 40.527794, 32.829300>,  <35.123344, 40.723927, 32.955616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179707, 40.527794, 32.829300>,  <35.273643, 40.200909, 32.618774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179707, 40.527794, 32.829300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169193, 0.498825, -0.850028,
		-0.957195, -0.288671, 0.021122,
		-0.234842, 0.817216, 0.526314,
		35.109253, 40.772961, 32.987194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640221, 40.448582, 32.387783>,  <35.273643, 40.200909, 32.618774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640221, 40.448582, 32.387783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 40.763416, 32.552952>,  <34.933495, 40.952316, 32.652054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 40.763416, 32.552952>,  <34.640221, 40.448582, 32.387783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823517, 40.763416, 32.552952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187631, 0.539760, -0.820642,
		-0.868796, 0.298578, 0.395024,
		0.458244, 0.787090, 0.412919,
		34.960991, 40.999542, 32.676826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269073, 41.010521, 32.194347>,  <34.640221, 40.448582, 32.387783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269073, 41.010521, 32.194347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631931, 41.152718, 32.284420>,  <34.849648, 41.238037, 32.338463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631931, 41.152718, 32.284420>,  <34.269073, 41.010521, 32.194347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631931, 41.152718, 32.284420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043668, 0.452702, -0.890592,
		-0.418540, 0.817732, 0.395144,
		0.907148, 0.355493, 0.225183,
		34.904076, 41.259365, 32.351974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212425, 41.595131, 31.776873>,  <34.269073, 41.010521, 32.194347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212425, 41.595131, 31.776873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601906, 41.556625, 31.859463>,  <34.835594, 41.533524, 31.909018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601906, 41.556625, 31.859463>,  <34.212425, 41.595131, 31.776873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601906, 41.556625, 31.859463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223904, 0.237178, -0.945311,
		0.042023, 0.966685, 0.252494,
		0.973705, -0.096260, 0.206477,
		34.894016, 41.527748, 31.921406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653637, 42.295631, 31.626554>,  <34.212425, 41.595131, 31.776873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653637, 42.295631, 31.626554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916294, 41.994240, 31.613363>,  <35.073891, 41.813404, 31.605448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916294, 41.994240, 31.613363>,  <34.653637, 42.295631, 31.626554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916294, 41.994240, 31.613363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369036, 0.359130, -0.857227,
		0.657746, 0.550723, 0.513882,
		0.656645, -0.753478, -0.032980,
		35.113289, 41.768196, 31.603470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227753, 42.588444, 31.427158>,  <34.653637, 42.295631, 31.626554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227753, 42.588444, 31.427158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296764, 42.202541, 31.347691>,  <35.338173, 41.971001, 31.300011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296764, 42.202541, 31.347691>,  <35.227753, 42.588444, 31.427158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296764, 42.202541, 31.347691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411709, 0.253864, -0.875242,
		0.894834, 0.069215, 0.441001,
		0.172534, -0.964760, -0.198670,
		35.348526, 41.913113, 31.288090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873726, 42.656734, 31.194658>,  <35.227753, 42.588444, 31.427158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873726, 42.656734, 31.194658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699619, 42.321381, 31.063416>,  <35.595154, 42.120167, 30.984671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699619, 42.321381, 31.063416>,  <35.873726, 42.656734, 31.194658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699619, 42.321381, 31.063416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238415, 0.244092, -0.939988,
		0.868160, -0.487371, 0.093638,
		-0.435267, -0.838385, -0.328107,
		35.569038, 42.069866, 30.964983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346622, 42.288353, 30.855343>,  <35.873726, 42.656734, 31.194658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346622, 42.288353, 30.855343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012318, 42.130867, 30.702244>,  <35.811737, 42.036377, 30.610384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012318, 42.130867, 30.702244>,  <36.346622, 42.288353, 30.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012318, 42.130867, 30.702244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298858, 0.258602, -0.918591,
		0.460643, -0.882107, -0.098464,
		-0.835759, -0.393715, -0.382747,
		35.761589, 42.012753, 30.587420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626766, 41.876289, 30.290524>,  <36.346622, 42.288353, 30.855343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626766, 41.876289, 30.290524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236122, 41.925549, 30.220024>,  <36.001736, 41.955105, 30.177725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236122, 41.925549, 30.220024>,  <36.626766, 41.876289, 30.290524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236122, 41.925549, 30.220024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186397, 0.076361, -0.979503,
		-0.107164, -0.989446, -0.097529,
		-0.976612, 0.123146, -0.176246,
		35.943138, 41.962494, 30.167150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485817, 41.573273, 29.577963>,  <36.626766, 41.876289, 30.290524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485817, 41.573273, 29.577963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171261, 41.809280, 29.651142>,  <35.982529, 41.950886, 29.695049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171261, 41.809280, 29.651142>,  <36.485817, 41.573273, 29.577963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171261, 41.809280, 29.651142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021193, 0.270219, -0.962566,
		-0.617372, -0.760826, -0.199992,
		-0.786386, 0.590022, 0.182950,
		35.935345, 41.986286, 29.706026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025051, 41.450409, 29.065536>,  <36.485817, 41.573273, 29.577963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025051, 41.450409, 29.065536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907967, 41.799202, 29.222492>,  <35.837715, 42.008476, 29.316666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907967, 41.799202, 29.222492>,  <36.025051, 41.450409, 29.065536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907967, 41.799202, 29.222492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101030, 0.379863, -0.919509,
		-0.950847, -0.308797, -0.023096,
		-0.292715, 0.871979, 0.392390,
		35.820152, 42.060795, 29.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568378, 41.693504, 28.617287>,  <36.025051, 41.450409, 29.065536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568378, 41.693504, 28.617287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 42.010345, 28.811043>,  <35.806080, 42.200451, 28.927296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 42.010345, 28.811043>,  <35.568378, 41.693504, 28.617287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716942, 42.010345, 28.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181074, 0.449897, -0.874531,
		-0.910643, 0.412517, 0.023666,
		0.371406, 0.792100, 0.484391,
		35.828365, 42.247974, 28.956360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368229, 42.248070, 28.138655>,  <35.568378, 41.693504, 28.617287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368229, 42.248070, 28.138655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642437, 42.424789, 28.370129>,  <35.806961, 42.530823, 28.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642437, 42.424789, 28.370129>,  <35.368229, 42.248070, 28.138655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642437, 42.424789, 28.370129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300910, 0.551843, -0.777768,
		-0.662962, 0.707306, 0.245357,
		0.685518, 0.441800, 0.578686,
		35.848091, 42.557331, 28.543734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340675, 42.942802, 27.903482>,  <35.368229, 42.248070, 28.138655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340675, 42.942802, 27.903482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687584, 42.895733, 28.096973>,  <35.895729, 42.867493, 28.213068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687584, 42.895733, 28.096973>,  <35.340675, 42.942802, 27.903482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687584, 42.895733, 28.096973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456788, 0.574455, -0.679225,
		-0.197953, 0.810034, 0.551960,
		0.867271, -0.117674, 0.483729,
		35.947765, 42.860432, 28.242092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739052, 43.664425, 27.841404>,  <35.340675, 42.942802, 27.903482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739052, 43.664425, 27.841404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007160, 43.378971, 27.922852>,  <36.168026, 43.207699, 27.971720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007160, 43.378971, 27.922852>,  <35.739052, 43.664425, 27.841404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007160, 43.378971, 27.922852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549608, 0.292981, -0.782364,
		0.498666, 0.636306, 0.588597,
		0.670271, -0.713636, 0.203620,
		36.208241, 43.164879, 27.983938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412067, 44.023582, 27.923965>,  <35.739052, 43.664425, 27.841404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412067, 44.023582, 27.923965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484657, 43.641273, 27.831387>,  <36.528210, 43.411888, 27.775839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484657, 43.641273, 27.831387>,  <36.412067, 44.023582, 27.923965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484657, 43.641273, 27.831387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646260, 0.293304, -0.704501,
		0.741226, -0.021727, 0.670903,
		0.181472, -0.955772, -0.231445,
		36.539101, 43.354542, 27.761953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037800, 43.966774, 28.032221>,  <36.412067, 44.023582, 27.923965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037800, 43.966774, 28.032221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973621, 43.673519, 27.767868>,  <36.935116, 43.497566, 27.609257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973621, 43.673519, 27.767868>,  <37.037800, 43.966774, 28.032221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973621, 43.673519, 27.767868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784786, 0.311332, -0.535895,
		0.598640, -0.604630, 0.525408,
		-0.160442, -0.733141, -0.660881,
		36.925488, 43.453575, 27.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660419, 43.524220, 28.003143>,  <37.037800, 43.966774, 28.032221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660419, 43.524220, 28.003143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437592, 43.460091, 27.677206>,  <37.303894, 43.421612, 27.481644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437592, 43.460091, 27.677206>,  <37.660419, 43.524220, 28.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437592, 43.460091, 27.677206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790197, 0.199492, -0.579476,
		0.255460, -0.966695, 0.015559,
		-0.557072, -0.160327, -0.814841,
		37.270470, 43.411995, 27.432755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112705, 43.289028, 27.503454>,  <37.660419, 43.524220, 28.003143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112705, 43.289028, 27.503454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798359, 43.366093, 27.268406>,  <37.609753, 43.412331, 27.127377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798359, 43.366093, 27.268406>,  <38.112705, 43.289028, 27.503454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798359, 43.366093, 27.268406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617501, 0.193279, -0.762454,
		-0.033323, -0.962042, -0.270861,
		-0.785864, 0.192664, -0.587621,
		37.562599, 43.423893, 27.092119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274944, 42.977486, 26.842012>,  <38.112705, 43.289028, 27.503454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274944, 42.977486, 26.842012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995937, 43.253605, 26.765114>,  <37.828533, 43.419277, 26.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995937, 43.253605, 26.765114>,  <38.274944, 42.977486, 26.842012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995937, 43.253605, 26.765114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615400, 0.439638, -0.654218,
		-0.367085, -0.574639, -0.731463,
		-0.697518, 0.690296, -0.192248,
		37.786682, 43.460693, 26.707439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139957, 43.028389, 26.091080>,  <38.274944, 42.977486, 26.842012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139957, 43.028389, 26.091080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997631, 43.382675, 26.210340>,  <37.912235, 43.595249, 26.281897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997631, 43.382675, 26.210340>,  <38.139957, 43.028389, 26.091080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997631, 43.382675, 26.210340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553041, 0.456735, -0.696806,
		-0.753351, -0.083046, -0.652354,
		-0.355820, 0.885718, 0.298154,
		37.890884, 43.648392, 26.299786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740200, 43.398998, 25.462597>,  <38.139957, 43.028389, 26.091080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740200, 43.398998, 25.462597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834671, 43.679359, 25.731804>,  <37.891354, 43.847576, 25.893328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834671, 43.679359, 25.731804>,  <37.740200, 43.398998, 25.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834671, 43.679359, 25.731804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313862, 0.600462, -0.735483,
		-0.919625, 0.384942, -0.078170,
		0.236180, 0.700903, 0.673019,
		37.905525, 43.889629, 25.933710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490486, 43.999451, 25.184130>,  <37.740200, 43.398998, 25.462597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490486, 43.999451, 25.184130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763947, 44.126995, 25.446714>,  <37.928024, 44.203522, 25.604265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763947, 44.126995, 25.446714>,  <37.490486, 43.999451, 25.184130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763947, 44.126995, 25.446714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236964, 0.753781, -0.612913,
		-0.690265, 0.574578, 0.439766,
		0.683654, 0.318864, 0.656462,
		37.969044, 44.222652, 25.643654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485474, 44.717083, 25.120693>,  <37.490486, 43.999451, 25.184130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485474, 44.717083, 25.120693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837463, 44.593945, 25.265398>,  <38.048656, 44.520061, 25.352221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837463, 44.593945, 25.265398>,  <37.485474, 44.717083, 25.120693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837463, 44.593945, 25.265398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466743, 0.701882, -0.538064,
		-0.088273, 0.642334, 0.761324,
		0.879977, -0.307846, 0.361762,
		38.101456, 44.501591, 25.373926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980686, 45.336353, 24.958521>,  <37.485474, 44.717083, 25.120693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980686, 45.336353, 24.958521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240429, 45.045708, 25.048294>,  <38.396275, 44.871323, 25.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240429, 45.045708, 25.048294>,  <37.980686, 45.336353, 24.958521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240429, 45.045708, 25.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618724, 0.333191, -0.711452,
		0.442170, 0.600850, 0.665932,
		0.649358, -0.726611, 0.224433,
		38.435238, 44.827724, 25.115623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597572, 45.746021, 25.062704>,  <37.980686, 45.336353, 24.958521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597572, 45.746021, 25.062704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733906, 45.372314, 25.020803>,  <38.815704, 45.148090, 24.995663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733906, 45.372314, 25.020803>,  <38.597572, 45.746021, 25.062704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733906, 45.372314, 25.020803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736348, 0.334566, -0.588096,
		0.584488, 0.123307, 0.801978,
		0.340831, -0.934270, -0.104753,
		38.836155, 45.092033, 24.989378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317394, 45.752518, 25.274113>,  <38.597572, 45.746021, 25.062704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317394, 45.752518, 25.274113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279888, 45.418320, 25.057539>,  <39.257385, 45.217800, 24.927595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279888, 45.418320, 25.057539>,  <39.317394, 45.752518, 25.274113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279888, 45.418320, 25.057539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804191, 0.257044, -0.535915,
		0.586928, -0.485666, 0.647799,
		-0.093762, -0.835498, -0.541435,
		39.251759, 45.167671, 24.895109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972645, 45.594467, 25.219906>,  <39.317394, 45.752518, 25.274113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972645, 45.594467, 25.219906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779503, 45.386723, 24.937881>,  <39.663620, 45.262074, 24.768667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779503, 45.386723, 24.937881>,  <39.972645, 45.594467, 25.219906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779503, 45.386723, 24.937881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812199, 0.035407, -0.582305,
		0.327393, -0.853819, 0.404730,
		-0.482853, -0.519364, -0.705063,
		39.634647, 45.230915, 24.726362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616302, 45.368366, 25.006460>,  <39.972645, 45.594467, 25.219906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616302, 45.368366, 25.006460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988503, 45.491894, 25.085253>,  <41.211823, 45.566010, 25.132528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988503, 45.491894, 25.085253>,  <40.616302, 45.368366, 25.006460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988503, 45.491894, 25.085253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114423, -0.265795, 0.957215,
		0.347964, -0.913227, -0.211985,
		0.930499, 0.308820, 0.196981,
		41.267651, 45.584541, 25.144348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854156, 44.838593, 25.379465>,  <40.616302, 45.368366, 25.006460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854156, 44.838593, 25.379465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085522, 45.149559, 25.478308>,  <41.224342, 45.336140, 25.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085522, 45.149559, 25.478308>,  <40.854156, 44.838593, 25.379465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085522, 45.149559, 25.478308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119318, -0.219032, 0.968395,
		0.806967, -0.589621, -0.033932,
		0.578418, 0.777414, 0.247105,
		41.259048, 45.382782, 25.552439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372711, 44.474152, 25.845940>,  <40.854156, 44.838593, 25.379465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372711, 44.474152, 25.845940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405922, 44.865292, 25.922789>,  <41.425850, 45.099976, 25.968897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405922, 44.865292, 25.922789>,  <41.372711, 44.474152, 25.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405922, 44.865292, 25.922789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063775, -0.187177, 0.980254,
		0.994505, -0.093641, 0.046821,
		0.083029, 0.977853, 0.192121,
		41.430832, 45.158646, 25.980425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939255, 44.565411, 26.222130>,  <41.372711, 44.474152, 25.845940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939255, 44.565411, 26.222130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711098, 44.883629, 26.303869>,  <41.574203, 45.074558, 26.352913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711098, 44.883629, 26.303869>,  <41.939255, 44.565411, 26.222130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711098, 44.883629, 26.303869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017437, -0.237004, 0.971352,
		0.821186, 0.557617, 0.121314,
		-0.570394, 0.795546, 0.204347,
		41.539978, 45.122292, 26.365173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072727, 44.784519, 26.922728>,  <41.939255, 44.565411, 26.222130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072727, 44.784519, 26.922728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712482, 44.923748, 26.818617>,  <41.496334, 45.007286, 26.756149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712482, 44.923748, 26.818617>,  <42.072727, 44.784519, 26.922728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712482, 44.923748, 26.818617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334760, -0.173603, 0.926174,
		0.277188, 0.921254, 0.272869,
		-0.900612, 0.348070, -0.260278,
		41.442299, 45.028168, 26.740534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917957, 45.080208, 27.531878>,  <42.072727, 44.784519, 26.922728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917957, 45.080208, 27.531878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577244, 45.048538, 27.324726>,  <41.372814, 45.029537, 27.200436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577244, 45.048538, 27.324726>,  <41.917957, 45.080208, 27.531878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577244, 45.048538, 27.324726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483646, -0.261133, 0.835402,
		-0.201378, 0.962050, 0.184135,
		-0.851783, -0.079176, -0.517878,
		41.321709, 45.024784, 27.169363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307812, 45.400936, 27.976126>,  <41.917957, 45.080208, 27.531878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307812, 45.400936, 27.976126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120392, 45.169128, 27.709406>,  <41.007938, 45.030045, 27.549374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120392, 45.169128, 27.709406>,  <41.307812, 45.400936, 27.976126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120392, 45.169128, 27.709406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613759, -0.329345, 0.717517,
		-0.635419, 0.745449, -0.201366,
		-0.468554, -0.579515, -0.666798,
		40.979824, 44.995274, 27.509367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610146, 45.415440, 28.198746>,  <41.307812, 45.400936, 27.976126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610146, 45.415440, 28.198746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625046, 45.104206, 27.947922>,  <40.633984, 44.917465, 27.797428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625046, 45.104206, 27.947922>,  <40.610146, 45.415440, 28.198746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625046, 45.104206, 27.947922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623842, -0.508306, 0.593672,
		-0.780662, 0.369074, -0.504332,
		0.037246, -0.778081, -0.627059,
		40.636219, 44.870781, 27.759804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943554, 45.235992, 27.901314>,  <40.610146, 45.415440, 28.198746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943554, 45.235992, 27.901314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145687, 44.892586, 27.866486>,  <40.266968, 44.686543, 27.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145687, 44.892586, 27.866486>,  <39.943554, 45.235992, 27.901314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145687, 44.892586, 27.866486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673745, -0.455585, 0.581816,
		-0.539170, -0.235346, -0.808646,
		0.505335, -0.858519, -0.087075,
		40.297287, 44.635029, 27.840364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476788, 44.769543, 27.728231>,  <39.943554, 45.235992, 27.901314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476788, 44.769543, 27.728231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758469, 44.554363, 27.913576>,  <39.927479, 44.425255, 28.024784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758469, 44.554363, 27.913576>,  <39.476788, 44.769543, 27.728231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758469, 44.554363, 27.913576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680343, -0.324640, 0.657071,
		-0.203043, -0.777960, -0.594602,
		0.704206, -0.537947, 0.463364,
		39.969730, 44.392979, 28.052586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123932, 44.281319, 27.928627>,  <39.476788, 44.769543, 27.728231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123932, 44.281319, 27.928627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455414, 44.179680, 28.128099>,  <39.654305, 44.118694, 28.247784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455414, 44.179680, 28.128099>,  <39.123932, 44.281319, 27.928627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455414, 44.179680, 28.128099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556690, -0.466296, 0.687506,
		0.057839, -0.847350, -0.527876,
		0.828704, -0.254099, 0.498682,
		39.704025, 44.103451, 28.277704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104874, 43.571190, 28.129316>,  <39.123932, 44.281319, 27.928627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104874, 43.571190, 28.129316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372555, 43.719112, 28.387125>,  <39.533165, 43.807865, 28.541811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372555, 43.719112, 28.387125>,  <39.104874, 43.571190, 28.129316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372555, 43.719112, 28.387125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398905, -0.553005, 0.731478,
		0.626931, -0.746611, -0.222555,
		0.669203, 0.369808, 0.644522,
		39.573315, 43.830055, 28.580482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341057, 43.004906, 28.490408>,  <39.104874, 43.571190, 28.129316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341057, 43.004906, 28.490408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434822, 43.328049, 28.706711>,  <39.491081, 43.521935, 28.836493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434822, 43.328049, 28.706711>,  <39.341057, 43.004906, 28.490408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434822, 43.328049, 28.706711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091146, -0.535544, 0.839574,
		0.967855, -0.246095, -0.051906,
		0.234413, 0.807855, 0.540759,
		39.505146, 43.570404, 28.868938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764191, 42.754230, 29.043503>,  <39.341057, 43.004906, 28.490408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764191, 42.754230, 29.043503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656464, 43.115108, 29.178270>,  <39.591827, 43.331635, 29.259130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656464, 43.115108, 29.178270>,  <39.764191, 42.754230, 29.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656464, 43.115108, 29.178270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217933, -0.397864, 0.891184,
		0.938070, 0.166583, 0.303769,
		-0.269315, 0.902194, 0.336920,
		39.575668, 43.385765, 29.279346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097000, 42.827209, 29.751232>,  <39.764191, 42.754230, 29.043503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097000, 42.827209, 29.751232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779026, 43.068569, 29.725975>,  <39.588242, 43.213383, 29.710821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779026, 43.068569, 29.725975>,  <40.097000, 42.827209, 29.751232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779026, 43.068569, 29.725975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366091, -0.394088, 0.843014,
		0.483788, 0.693259, 0.534173,
		-0.794938, 0.603396, -0.063141,
		39.540546, 43.249588, 29.707033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853340, 42.999092, 30.488726>,  <40.097000, 42.827209, 29.751232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853340, 42.999092, 30.488726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524044, 43.100052, 30.285328>,  <39.326466, 43.160625, 30.163290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524044, 43.100052, 30.285328>,  <39.853340, 42.999092, 30.488726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524044, 43.100052, 30.285328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552915, -0.153483, 0.818980,
		0.128662, 0.955374, 0.265907,
		-0.823244, 0.252395, -0.508493,
		39.277069, 43.175770, 30.132780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504406, 43.450214, 30.923389>,  <39.853340, 42.999092, 30.488726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504406, 43.450214, 30.923389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210388, 43.304646, 30.694559>,  <39.033978, 43.217304, 30.557261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210388, 43.304646, 30.694559>,  <39.504406, 43.450214, 30.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210388, 43.304646, 30.694559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521163, -0.236458, 0.820046,
		-0.433705, 0.900915, -0.015856,
		-0.735043, -0.363922, -0.572077,
		38.989876, 43.195469, 30.522936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853680, 43.860081, 31.046452>,  <39.504406, 43.450214, 30.923389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853680, 43.860081, 31.046452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719738, 43.511852, 30.902241>,  <38.639374, 43.302914, 30.815714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719738, 43.511852, 30.902241>,  <38.853680, 43.860081, 31.046452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719738, 43.511852, 30.902241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608493, -0.092347, 0.788168,
		-0.719448, 0.483301, -0.498812,
		-0.334859, -0.870570, -0.360525,
		38.619282, 43.250683, 30.794083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224438, 43.857933, 31.261406>,  <38.853680, 43.860081, 31.046452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224438, 43.857933, 31.261406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250713, 43.477089, 31.141954>,  <38.266479, 43.248585, 31.070284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250713, 43.477089, 31.141954>,  <38.224438, 43.857933, 31.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250713, 43.477089, 31.141954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544935, -0.284938, 0.788578,
		-0.835901, 0.110929, -0.537555,
		0.065693, -0.952106, -0.298629,
		38.270420, 43.191456, 31.052366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589123, 43.612732, 31.147671>,  <38.224438, 43.857933, 31.261406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589123, 43.612732, 31.147671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803848, 43.282490, 31.217186>,  <37.932686, 43.084343, 31.258894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803848, 43.282490, 31.217186>,  <37.589123, 43.612732, 31.147671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803848, 43.282490, 31.217186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596486, -0.225710, 0.770234,
		-0.596685, -0.517134, -0.613628,
		0.536816, -0.825607, 0.173786,
		37.964893, 43.034809, 31.269321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173111, 42.986782, 31.111227>,  <37.589123, 43.612732, 31.147671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173111, 42.986782, 31.111227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489674, 42.867310, 31.324570>,  <37.679611, 42.795628, 31.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489674, 42.867310, 31.324570>,  <37.173111, 42.986782, 31.111227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489674, 42.867310, 31.324570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610885, -0.354613, 0.707863,
		-0.022290, -0.886025, -0.463102,
		0.791406, -0.298680, 0.533355,
		37.727097, 42.777706, 31.484575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877525, 42.387886, 31.381264>,  <37.173111, 42.986782, 31.111227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877525, 42.387886, 31.381264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201542, 42.431870, 31.611654>,  <37.395950, 42.458260, 31.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201542, 42.431870, 31.611654>,  <36.877525, 42.387886, 31.381264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201542, 42.431870, 31.611654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508013, -0.358967, 0.782985,
		0.292854, -0.926850, -0.234915,
		0.810037, 0.109961, 0.575976,
		37.444553, 42.464859, 31.784447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938801, 41.751274, 31.828876>,  <36.877525, 42.387886, 31.381264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938801, 41.751274, 31.828876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166382, 42.022297, 32.015301>,  <37.302929, 42.184910, 32.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166382, 42.022297, 32.015301>,  <36.938801, 41.751274, 31.828876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166382, 42.022297, 32.015301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327703, -0.332991, 0.884153,
		0.754259, -0.655768, 0.032583,
		0.568949, 0.677559, 0.466059,
		37.337067, 42.225563, 32.155117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501644, 41.376865, 32.368408>,  <36.938801, 41.751274, 31.828876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501644, 41.376865, 32.368408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438175, 41.762062, 32.455563>,  <37.400093, 41.993179, 32.507854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438175, 41.762062, 32.455563>,  <37.501644, 41.376865, 32.368408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438175, 41.762062, 32.455563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284282, -0.255893, 0.923960,
		0.945520, 0.084664, 0.314364,
		-0.158669, 0.962990, 0.217884,
		37.390575, 42.050961, 32.520927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814896, 41.402695, 32.986530>,  <37.501644, 41.376865, 32.368408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814896, 41.402695, 32.986530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575626, 41.722878, 32.971272>,  <37.432064, 41.914989, 32.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575626, 41.722878, 32.971272>,  <37.814896, 41.402695, 32.986530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575626, 41.722878, 32.971272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044680, 0.014214, 0.998900,
		0.800123, 0.599216, 0.027262,
		-0.598170, 0.800461, -0.038146,
		37.396175, 41.963017, 32.959827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080563, 41.902225, 33.474346>,  <37.814896, 41.402695, 32.986530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080563, 41.902225, 33.474346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694313, 41.996155, 33.429741>,  <37.462563, 42.052513, 33.402977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694313, 41.996155, 33.429741>,  <38.080563, 41.902225, 33.474346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694313, 41.996155, 33.429741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117774, -0.012769, 0.992958,
		0.231745, 0.971954, 0.039986,
		-0.965621, 0.234822, -0.111512,
		37.404625, 42.066601, 33.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991970, 42.412426, 33.957996>,  <38.080563, 41.902225, 33.474346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991970, 42.412426, 33.957996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634720, 42.251274, 33.877987>,  <37.420368, 42.154583, 33.829979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634720, 42.251274, 33.877987>,  <37.991970, 42.412426, 33.957996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634720, 42.251274, 33.877987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232371, 0.032500, 0.972084,
		-0.385135, 0.914674, -0.122645,
		-0.893126, -0.402883, -0.200027,
		37.366783, 42.130409, 33.817978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510349, 42.826092, 34.282997>,  <37.991970, 42.412426, 33.957996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510349, 42.826092, 34.282997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320770, 42.477108, 34.235344>,  <37.207024, 42.267719, 34.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320770, 42.477108, 34.235344>,  <37.510349, 42.826092, 34.282997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320770, 42.477108, 34.235344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315987, 0.042230, 0.947823,
		-0.821903, 0.486865, -0.295700,
		-0.473949, -0.872456, -0.119135,
		37.178585, 42.215370, 34.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025349, 42.877457, 34.677608>,  <37.510349, 42.826092, 34.282997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025349, 42.877457, 34.677608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019123, 42.483143, 34.610691>,  <37.015388, 42.246555, 34.570541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019123, 42.483143, 34.610691>,  <37.025349, 42.877457, 34.677608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019123, 42.483143, 34.610691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315598, -0.153913, 0.936327,
		-0.948765, 0.067373, -0.308716,
		-0.015567, -0.985785, -0.167289,
		37.014454, 42.187408, 34.560505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432175, 42.668633, 34.900627>,  <37.025349, 42.877457, 34.677608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432175, 42.668633, 34.900627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628143, 42.321011, 34.928112>,  <36.745724, 42.112438, 34.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628143, 42.321011, 34.928112>,  <36.432175, 42.668633, 34.900627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628143, 42.321011, 34.928112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396381, -0.151864, 0.905439,
		-0.776439, -0.470834, -0.418878,
		0.489924, -0.869053, 0.068716,
		36.775120, 42.060295, 34.948727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901764, 42.159763, 35.063515>,  <36.432175, 42.668633, 34.900627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901764, 42.159763, 35.063515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257027, 42.019684, 35.182533>,  <36.470184, 41.935635, 35.253944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257027, 42.019684, 35.182533>,  <35.901764, 42.159763, 35.063515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257027, 42.019684, 35.182533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349317, -0.093808, 0.932297,
		-0.298579, -0.931965, -0.205647,
		0.888160, -0.350200, 0.297542,
		36.523476, 41.914623, 35.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745659, 41.613724, 35.503098>,  <35.901764, 42.159763, 35.063515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745659, 41.613724, 35.503098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109852, 41.750324, 35.596394>,  <36.328369, 41.832283, 35.652370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109852, 41.750324, 35.596394>,  <35.745659, 41.613724, 35.503098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109852, 41.750324, 35.596394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224009, -0.066815, 0.972294,
		0.347625, -0.937503, 0.015665,
		0.910482, 0.341502, 0.233235,
		36.382996, 41.852776, 35.666363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879341, 41.286293, 36.162220>,  <35.745659, 41.613724, 35.503098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879341, 41.286293, 36.162220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158455, 41.571705, 36.137005>,  <36.325924, 41.742950, 36.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158455, 41.571705, 36.137005>,  <35.879341, 41.286293, 36.162220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158455, 41.571705, 36.137005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058283, 0.031160, 0.997814,
		0.713934, -0.699932, -0.019844,
		0.697783, 0.713530, -0.063040,
		36.367790, 41.785763, 36.118092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273460, 41.092678, 36.731125>,  <35.879341, 41.286293, 36.162220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273460, 41.092678, 36.731125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390415, 41.458420, 36.619072>,  <36.460587, 41.677864, 36.551842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390415, 41.458420, 36.619072>,  <36.273460, 41.092678, 36.731125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390415, 41.458420, 36.619072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107623, 0.259607, 0.959699,
		0.950225, -0.310751, -0.022500,
		0.292386, 0.914351, -0.280129,
		36.478130, 41.732727, 36.535034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901741, 41.332039, 37.127148>,  <36.273460, 41.092678, 36.731125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901741, 41.332039, 37.127148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737133, 41.677662, 37.011177>,  <36.638367, 41.885036, 36.941593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737133, 41.677662, 37.011177>,  <36.901741, 41.332039, 37.127148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737133, 41.677662, 37.011177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116034, 0.365193, 0.923672,
		0.903983, 0.346471, -0.250546,
		-0.411523, 0.864055, -0.289926,
		36.613678, 41.936878, 36.924198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106491, 41.713928, 37.737000>,  <36.901741, 41.332039, 37.127148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106491, 41.713928, 37.737000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904842, 41.978310, 37.514648>,  <36.783852, 42.136940, 37.381237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904842, 41.978310, 37.514648>,  <37.106491, 41.713928, 37.737000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904842, 41.978310, 37.514648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010860, 0.638749, 0.769338,
		0.863564, 0.393877, -0.314829,
		-0.504122, 0.660954, -0.555879,
		36.753605, 42.176598, 37.347885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421413, 42.423294, 37.632423>,  <37.106491, 41.713928, 37.737000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421413, 42.423294, 37.632423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021690, 42.437485, 37.637001>,  <36.781857, 42.445999, 37.639748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021690, 42.437485, 37.637001>,  <37.421413, 42.423294, 37.632423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021690, 42.437485, 37.637001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028583, 0.532015, 0.846252,
		0.023934, 0.845991, -0.532659,
		-0.999305, 0.035479, 0.011448,
		36.721897, 42.448128, 37.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253120, 43.108704, 37.752464>,  <37.421413, 42.423294, 37.632423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253120, 43.108704, 37.752464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937111, 42.890888, 37.865139>,  <36.747505, 42.760197, 37.932743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937111, 42.890888, 37.865139>,  <37.253120, 43.108704, 37.752464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937111, 42.890888, 37.865139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024721, 0.430785, 0.902116,
		-0.612583, 0.719653, -0.326867,
		-0.790020, -0.544540, 0.281682,
		36.700104, 42.727528, 37.949642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027191, 43.549137, 38.236900>,  <37.253120, 43.108704, 37.752464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027191, 43.549137, 38.236900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816578, 43.213089, 38.289001>,  <36.690212, 43.011459, 38.320263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816578, 43.213089, 38.289001>,  <37.027191, 43.549137, 38.236900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816578, 43.213089, 38.289001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004144, 0.155745, 0.987789,
		-0.850147, 0.519559, -0.085486,
		-0.526529, -0.840120, 0.130253,
		36.658619, 42.961052, 38.328075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389324, 43.700500, 38.466557>,  <37.027191, 43.549137, 38.236900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389324, 43.700500, 38.466557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498234, 43.335846, 38.589703>,  <36.563580, 43.117054, 38.663589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498234, 43.335846, 38.589703>,  <36.389324, 43.700500, 38.466557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498234, 43.335846, 38.589703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063951, 0.302100, 0.951129,
		-0.960092, -0.278657, 0.023954,
		0.272275, -0.911639, 0.307864,
		36.579918, 43.062355, 38.682060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828686, 43.483654, 38.855980>,  <36.389324, 43.700500, 38.466557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828686, 43.483654, 38.855980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148457, 43.279049, 38.982010>,  <36.340321, 43.156284, 39.057629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148457, 43.279049, 38.982010>,  <35.828686, 43.483654, 38.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148457, 43.279049, 38.982010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236562, 0.214065, 0.947742,
		-0.552228, -0.832185, 0.050125,
		0.799426, -0.511512, 0.315076,
		36.388283, 43.125595, 39.076534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677593, 42.896770, 39.422966>,  <35.828686, 43.483654, 38.855980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677593, 42.896770, 39.422966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053307, 43.033730, 39.431946>,  <36.278736, 43.115906, 39.437336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053307, 43.033730, 39.431946>,  <35.677593, 42.896770, 39.422966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053307, 43.033730, 39.431946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061507, 0.103628, 0.992713,
		0.337578, -0.933822, 0.118396,
		0.939286, 0.342400, 0.022454,
		36.335091, 43.136448, 39.438683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963497, 42.516068, 40.020908>,  <35.677593, 42.896770, 39.422966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963497, 42.516068, 40.020908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093445, 42.893154, 39.990593>,  <36.171413, 43.119408, 39.972404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093445, 42.893154, 39.990593>,  <35.963497, 42.516068, 40.020908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093445, 42.893154, 39.990593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137817, 0.032090, 0.989938,
		0.935663, -0.332047, -0.119497,
		0.324871, 0.942717, -0.075787,
		36.190907, 43.175968, 39.967857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741436, 42.577251, 40.154491>,  <35.963497, 42.516068, 40.020908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741436, 42.577251, 40.154491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506737, 42.880188, 40.269146>,  <36.365917, 43.061951, 40.337940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506737, 42.880188, 40.269146>,  <36.741436, 42.577251, 40.154491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506737, 42.880188, 40.269146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499271, 0.059660, 0.864389,
		0.637537, 0.650289, -0.413124,
		-0.586750, 0.757341, 0.286635,
		36.330711, 43.107391, 40.355137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018688, 43.265800, 40.405876>,  <36.741436, 42.577251, 40.154491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018688, 43.265800, 40.405876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690895, 43.183277, 40.619751>,  <36.494221, 43.133762, 40.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690895, 43.183277, 40.619751>,  <37.018688, 43.265800, 40.405876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690895, 43.183277, 40.619751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437354, 0.377797, 0.816083,
		-0.370367, 0.902611, -0.219367,
		-0.819481, -0.206309, 0.534684,
		36.445049, 43.121384, 40.780155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780540, 43.879715, 40.783577>,  <37.018688, 43.265800, 40.405876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780540, 43.879715, 40.783577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699432, 43.542179, 40.982296>,  <36.650768, 43.339657, 41.101528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699432, 43.542179, 40.982296>,  <36.780540, 43.879715, 40.783577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699432, 43.542179, 40.982296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536856, 0.328498, 0.777094,
		-0.818944, 0.424283, 0.386413,
		-0.202772, -0.843844, 0.496801,
		36.638599, 43.289024, 41.131336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982300, 44.124245, 41.420513>,  <36.780540, 43.879715, 40.783577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982300, 44.124245, 41.420513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961395, 43.730583, 41.488293>,  <36.948853, 43.494385, 41.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961395, 43.730583, 41.488293>,  <36.982300, 44.124245, 41.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961395, 43.730583, 41.488293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551688, 0.112985, 0.826362,
		-0.832412, 0.136666, 0.537041,
		-0.052258, -0.984153, 0.169447,
		36.945717, 43.435337, 41.539127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832985, 43.903107, 42.192169>,  <36.982300, 44.124245, 41.420513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832985, 43.903107, 42.192169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026833, 43.610050, 42.001015>,  <37.143143, 43.434216, 41.886322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026833, 43.610050, 42.001015>,  <36.832985, 43.903107, 42.192169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026833, 43.610050, 42.001015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614788, -0.103352, 0.781891,
		-0.622237, -0.672722, 0.400333,
		0.484621, -0.732641, -0.477891,
		37.172218, 43.390259, 41.857647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937756, 43.125881, 42.561684>,  <36.832985, 43.903107, 42.192169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937756, 43.125881, 42.561684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247101, 43.185543, 42.315216>,  <37.432709, 43.221340, 42.167336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247101, 43.185543, 42.315216>,  <36.937756, 43.125881, 42.561684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247101, 43.185543, 42.315216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632545, -0.116464, 0.765717,
		0.042451, -0.981931, -0.184417,
		0.773359, 0.149158, -0.616171,
		37.479107, 43.230289, 42.130363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472538, 42.593391, 42.723557>,  <36.937756, 43.125881, 42.561684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472538, 42.593391, 42.723557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668278, 42.881275, 42.526558>,  <37.785721, 43.054005, 42.408360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668278, 42.881275, 42.526558>,  <37.472538, 42.593391, 42.723557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668278, 42.881275, 42.526558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749543, -0.058427, 0.659372,
		0.445785, -0.691807, -0.568048,
		0.489348, 0.719714, -0.492493,
		37.815083, 43.097191, 42.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796631, 42.195808, 43.248116>,  <37.472538, 42.593391, 42.723557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796631, 42.195808, 43.248116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973576, 42.553062, 43.280678>,  <38.079742, 42.767414, 43.300217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973576, 42.553062, 43.280678>,  <37.796631, 42.195808, 43.248116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973576, 42.553062, 43.280678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893293, 0.446856, -0.048462,
		-0.079661, -0.051285, 0.995502,
		0.442360, 0.893135, 0.081409,
		38.106285, 42.821003, 43.305099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532272, 42.389797, 43.813416>,  <37.796631, 42.195808, 43.248116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532272, 42.389797, 43.813416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645905, 42.715649, 43.611160>,  <37.714085, 42.911160, 43.489807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645905, 42.715649, 43.611160>,  <37.532272, 42.389797, 43.813416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645905, 42.715649, 43.611160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926076, 0.369732, 0.075379,
		0.248357, 0.446845, 0.859447,
		0.284083, 0.814633, -0.505637,
		37.731129, 42.960037, 43.459469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859005, 43.084145, 44.018913>,  <37.532272, 42.389797, 43.813416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859005, 43.084145, 44.018913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102890, 42.799534, 44.158619>,  <38.249222, 42.628769, 44.242443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102890, 42.799534, 44.158619>,  <37.859005, 43.084145, 44.018913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102890, 42.799534, 44.158619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578565, 0.098331, -0.809687,
		0.541769, 0.695747, 0.471616,
		0.609712, -0.711524, 0.349262,
		38.285805, 42.586075, 44.263397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541538, 43.358505, 43.929020>,  <37.859005, 43.084145, 44.018913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541538, 43.358505, 43.929020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519978, 42.960167, 43.958382>,  <38.507042, 42.721165, 43.975998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519978, 42.960167, 43.958382>,  <38.541538, 43.358505, 43.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519978, 42.960167, 43.958382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484049, -0.090351, -0.870364,
		0.873379, -0.011382, 0.486908,
		-0.053900, -0.995845, 0.073401,
		38.503807, 42.661415, 43.980400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230789, 43.100407, 43.969929>,  <38.541538, 43.358505, 43.929020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230789, 43.100407, 43.969929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940060, 42.881668, 43.803707>,  <38.765621, 42.750427, 43.703972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940060, 42.881668, 43.803707>,  <39.230789, 43.100407, 43.969929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940060, 42.881668, 43.803707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483863, 0.021718, -0.874874,
		0.487443, -0.836954, 0.248812,
		-0.726826, -0.546842, -0.415558,
		38.722012, 42.717617, 43.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496273, 42.557716, 43.561069>,  <39.230789, 43.100407, 43.969929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496273, 42.557716, 43.561069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134369, 42.645683, 43.415165>,  <38.917229, 42.698463, 43.327621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134369, 42.645683, 43.415165>,  <39.496273, 42.557716, 43.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134369, 42.645683, 43.415165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347222, -0.115174, -0.930684,
		-0.246687, -0.968695, 0.027844,
		-0.904756, 0.219919, -0.364764,
		38.862942, 42.711658, 43.305737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233532, 42.013371, 43.150761>,  <39.496273, 42.557716, 43.561069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233532, 42.013371, 43.150761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080582, 42.360329, 43.023373>,  <38.988811, 42.568504, 42.946941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080582, 42.360329, 43.023373>,  <39.233532, 42.013371, 43.150761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080582, 42.360329, 43.023373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358792, -0.178234, -0.916243,
		-0.851503, -0.464611, -0.243061,
		-0.382375, 0.867392, -0.318466,
		38.965870, 42.620544, 42.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824898, 41.965916, 42.587002>,  <39.233532, 42.013371, 43.150761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824898, 41.965916, 42.587002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996696, 42.327126, 42.583286>,  <39.099773, 42.543850, 42.581059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996696, 42.327126, 42.583286>,  <38.824898, 41.965916, 42.587002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996696, 42.327126, 42.583286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514228, -0.253003, -0.819487,
		-0.742365, 0.347188, -0.573022,
		0.429492, 0.903023, -0.009287,
		39.125546, 42.598034, 42.580502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768517, 42.230274, 41.851070>,  <38.824898, 41.965916, 42.587002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768517, 42.230274, 41.851070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057911, 42.418610, 42.053013>,  <39.231548, 42.531612, 42.174179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057911, 42.418610, 42.053013>,  <38.768517, 42.230274, 41.851070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057911, 42.418610, 42.053013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607393, -0.086598, -0.789667,
		-0.328088, 0.877958, -0.348637,
		0.723486, 0.470840, 0.504854,
		39.274956, 42.559860, 42.204468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068645, 42.802750, 41.380470>,  <38.768517, 42.230274, 41.851070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068645, 42.802750, 41.380470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337326, 42.703857, 41.659809>,  <39.498535, 42.644520, 41.827412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337326, 42.703857, 41.659809>,  <39.068645, 42.802750, 41.380470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337326, 42.703857, 41.659809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713887, -0.035839, -0.699343,
		0.197930, 0.968292, 0.152425,
		0.671706, -0.247235, 0.698345,
		39.538837, 42.629688, 41.869312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553673, 43.278740, 41.337261>,  <39.068645, 42.802750, 41.380470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553673, 43.278740, 41.337261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693737, 42.936161, 41.488987>,  <39.777775, 42.730614, 41.580021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693737, 42.936161, 41.488987>,  <39.553673, 43.278740, 41.337261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693737, 42.936161, 41.488987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576369, -0.122206, -0.808001,
		0.738367, 0.501555, 0.450840,
		0.350161, -0.856451, 0.379313,
		39.798786, 42.679226, 41.602779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333340, 43.266319, 41.335915>,  <39.553673, 43.278740, 41.337261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333340, 43.266319, 41.335915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180489, 42.898113, 41.303337>,  <40.088779, 42.677189, 41.283791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180489, 42.898113, 41.303337>,  <40.333340, 43.266319, 41.335915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180489, 42.898113, 41.303337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646219, -0.203180, -0.735608,
		0.660590, -0.333725, 0.672494,
		-0.382128, -0.920514, -0.081441,
		40.065849, 42.621960, 41.278904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841354, 42.604622, 41.482193>,  <40.333340, 43.266319, 41.335915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841354, 42.604622, 41.482193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537556, 42.561054, 41.225662>,  <40.355274, 42.534912, 41.071743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537556, 42.561054, 41.225662>,  <40.841354, 42.604622, 41.482193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537556, 42.561054, 41.225662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638735, -0.311588, -0.703513,
		-0.123204, -0.943954, 0.306220,
		-0.759499, -0.108917, -0.641325,
		40.309708, 42.528378, 41.033264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688347, 41.907539, 41.153362>,  <40.841354, 42.604622, 41.482193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688347, 41.907539, 41.153362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567493, 42.169621, 40.876404>,  <40.494980, 42.326870, 40.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567493, 42.169621, 40.876404>,  <40.688347, 41.907539, 41.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567493, 42.169621, 40.876404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589739, -0.442190, -0.675778,
		-0.748946, -0.612513, -0.252798,
		-0.302138, 0.655206, -0.692400,
		40.476852, 42.366184, 40.668682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239319, 41.631500, 40.610466>,  <40.688347, 41.907539, 41.153362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239319, 41.631500, 40.610466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431587, 41.951870, 40.467648>,  <40.546947, 42.144093, 40.381958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431587, 41.951870, 40.467648>,  <40.239319, 41.631500, 40.610466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431587, 41.951870, 40.467648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507061, -0.586053, -0.632005,
		-0.715432, 0.122745, -0.687816,
		0.480673, 0.800921, -0.357042,
		40.575790, 42.192146, 40.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233143, 41.560005, 39.934376>,  <40.239319, 41.631500, 40.610466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233143, 41.560005, 39.934376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535805, 41.814781, 39.993401>,  <40.717403, 41.967648, 40.028816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535805, 41.814781, 39.993401>,  <40.233143, 41.560005, 39.934376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535805, 41.814781, 39.993401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496205, -0.412476, -0.763966,
		-0.425736, 0.651282, -0.628156,
		0.756657, 0.636942, 0.147564,
		40.762802, 42.005863, 40.037670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565392, 41.693829, 39.241905>,  <40.233143, 41.560005, 39.934376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565392, 41.693829, 39.241905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819355, 41.760582, 39.543644>,  <40.971733, 41.800636, 39.724686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819355, 41.760582, 39.543644>,  <40.565392, 41.693829, 39.241905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819355, 41.760582, 39.543644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765927, -0.263870, -0.586283,
		0.101207, 0.950012, -0.295356,
		0.634911, 0.166885, 0.754345,
		41.009827, 41.810646, 39.769947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222622, 42.026096, 38.991280>,  <40.565392, 41.693829, 39.241905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222622, 42.026096, 38.991280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294926, 41.840801, 39.338322>,  <41.338310, 41.729622, 39.546547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294926, 41.840801, 39.338322>,  <41.222622, 42.026096, 38.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294926, 41.840801, 39.338322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874042, -0.328819, -0.357672,
		0.450973, 0.822973, 0.345455,
		0.180762, -0.463242, 0.867601,
		41.349155, 41.701828, 39.598602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967083, 41.974655, 39.010548>,  <41.222622, 42.026096, 38.991280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967083, 41.974655, 39.010548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851158, 41.701805, 39.279091>,  <41.781605, 41.538097, 39.440216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851158, 41.701805, 39.279091>,  <41.967083, 41.974655, 39.010548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851158, 41.701805, 39.279091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806182, -0.552042, -0.212884,
		0.515830, 0.479539, 0.709903,
		-0.289810, -0.682123, 0.671356,
		41.764214, 41.497169, 39.480499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511475, 41.852417, 39.436825>,  <41.967083, 41.974655, 39.010548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511475, 41.852417, 39.436825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251526, 41.549603, 39.409782>,  <42.095558, 41.367912, 39.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251526, 41.549603, 39.409782>,  <42.511475, 41.852417, 39.436825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251526, 41.549603, 39.409782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745652, -0.617802, -0.249648,
		0.147228, -0.212645, 0.965974,
		-0.649867, -0.757035, -0.067602,
		42.056564, 41.322491, 39.389503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651367, 41.264324, 39.881618>,  <42.511475, 41.852417, 39.436825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651367, 41.264324, 39.881618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519867, 41.180595, 39.513248>,  <42.440968, 41.130356, 39.292225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519867, 41.180595, 39.513248>,  <42.651367, 41.264324, 39.881618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519867, 41.180595, 39.513248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837737, -0.514841, -0.182030,
		-0.436027, -0.831337, 0.344615,
		-0.328750, -0.209327, -0.920927,
		42.421242, 41.117798, 39.236969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970047, 40.677391, 39.687630>,  <42.651367, 41.264324, 39.881618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970047, 40.677391, 39.687630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896374, 40.855293, 39.337025>,  <42.852169, 40.962032, 39.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896374, 40.855293, 39.337025>,  <42.970047, 40.677391, 39.687630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896374, 40.855293, 39.337025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735884, -0.528773, -0.422936,
		-0.651577, -0.722908, -0.229895,
		-0.184181, 0.444751, -0.876512,
		42.841118, 40.988720, 39.074070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842953, 40.175816, 39.258671>,  <42.970047, 40.677391, 39.687630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842953, 40.175816, 39.258671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977600, 40.482059, 39.039391>,  <43.058388, 40.665806, 38.907822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977600, 40.482059, 39.039391>,  <42.842953, 40.175816, 39.258671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977600, 40.482059, 39.039391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546284, -0.632972, -0.548563,
		-0.766984, -0.114819, -0.631310,
		0.336616, 0.765613, -0.548203,
		43.078587, 40.711742, 38.874931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744209, 40.104088, 38.488846>,  <42.842953, 40.175816, 39.258671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744209, 40.104088, 38.488846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068470, 40.321129, 38.576870>,  <43.263027, 40.451355, 38.629684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068470, 40.321129, 38.576870>,  <42.744209, 40.104088, 38.488846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068470, 40.321129, 38.576870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561096, -0.612440, -0.556856,
		-0.167381, 0.574889, -0.800928,
		0.810651, 0.542605, 0.220057,
		43.311665, 40.483910, 38.642887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096817, 40.238319, 37.845573>,  <42.744209, 40.104088, 38.488846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096817, 40.238319, 37.845573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325428, 40.182026, 38.168941>,  <43.462597, 40.148251, 38.362961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325428, 40.182026, 38.168941>,  <43.096817, 40.238319, 37.845573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325428, 40.182026, 38.168941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427191, -0.790122, -0.439562,
		0.700614, 0.596574, -0.391459,
		0.571531, -0.140735, 0.808422,
		43.496887, 40.139805, 38.411469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837749, 40.226696, 37.684158>,  <43.096817, 40.238319, 37.845573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837749, 40.226696, 37.684158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782490, 40.027611, 38.026665>,  <43.749332, 39.908161, 38.232170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782490, 40.027611, 38.026665>,  <43.837749, 40.226696, 37.684158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782490, 40.027611, 38.026665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552438, -0.756295, -0.350472,
		0.822027, 0.424618, 0.379436,
		-0.138149, -0.497712, 0.856270,
		43.741043, 39.878296, 38.283546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399384, 39.905472, 37.858685>,  <43.837749, 40.226696, 37.684158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399384, 39.905472, 37.858685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115715, 39.694687, 38.046036>,  <43.945515, 39.568214, 38.158447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115715, 39.694687, 38.046036>,  <44.399384, 39.905472, 37.858685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115715, 39.694687, 38.046036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427325, -0.849675, -0.308944,
		0.560773, -0.018945, 0.827753,
		-0.709174, -0.526967, 0.468379,
		43.902962, 39.536598, 38.186550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669044, 39.338406, 38.400257>,  <44.399384, 39.905472, 37.858685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669044, 39.338406, 38.400257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342827, 39.240578, 38.190468>,  <44.147095, 39.181881, 38.064594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342827, 39.240578, 38.190468>,  <44.669044, 39.338406, 38.400257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342827, 39.240578, 38.190468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498087, -0.758054, -0.421026,
		-0.294605, -0.604598, 0.740047,
		-0.815547, -0.244571, -0.524469,
		44.098164, 39.167206, 38.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317650, 38.660595, 38.510498>,  <44.669044, 39.338406, 38.400257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317650, 38.660595, 38.510498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288055, 38.779514, 38.129734>,  <44.270298, 38.850864, 37.901276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288055, 38.779514, 38.129734>,  <44.317650, 38.660595, 38.510498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288055, 38.779514, 38.129734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484736, -0.823463, -0.294855,
		-0.871525, -0.483243, -0.083182,
		-0.073990, 0.297295, -0.951914,
		44.265858, 38.868702, 37.844158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865993, 38.258720, 37.985439>,  <44.317650, 38.660595, 38.510498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865993, 38.258720, 37.985439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200405, 38.405529, 37.822296>,  <44.401054, 38.493614, 37.724411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200405, 38.405529, 37.822296>,  <43.865993, 38.258720, 37.985439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200405, 38.405529, 37.822296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364699, -0.927082, -0.086686,
		-0.409933, -0.076274, -0.908921,
		0.836032, 0.367018, -0.407858,
		44.451214, 38.515633, 37.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898621, 37.921734, 37.482716>,  <43.865993, 38.258720, 37.985439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898621, 37.921734, 37.482716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262535, 38.055786, 37.580673>,  <44.480885, 38.136219, 37.639446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262535, 38.055786, 37.580673>,  <43.898621, 37.921734, 37.482716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262535, 38.055786, 37.580673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362878, -0.928626, -0.077284,
		0.201516, 0.159179, -0.966464,
		0.909786, 0.335135, 0.244895,
		44.535469, 38.156326, 37.654140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479973, 37.474213, 37.278687>,  <43.898621, 37.921734, 37.482716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479973, 37.474213, 37.278687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634354, 37.707649, 37.564472>,  <44.726982, 37.847713, 37.735943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634354, 37.707649, 37.564472>,  <44.479973, 37.474213, 37.278687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634354, 37.707649, 37.564472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910801, -0.118019, -0.395618,
		-0.146560, 0.803424, -0.577088,
		0.385956, 0.583594, 0.714462,
		44.750141, 37.882729, 37.778812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393303, 37.015797, 37.900871>,  <44.479973, 37.474213, 37.278687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393303, 37.015797, 37.900871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297283, 36.716896, 38.148739>,  <44.239670, 36.537556, 38.297459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297283, 36.716896, 38.148739>,  <44.393303, 37.015797, 37.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297283, 36.716896, 38.148739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385040, -0.512678, -0.767401,
		0.891133, -0.422814, -0.164653,
		-0.240054, -0.747255, 0.619665,
		44.225266, 36.492722, 38.334637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660820, 36.389423, 37.626156>,  <44.393303, 37.015797, 37.900871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660820, 36.389423, 37.626156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346958, 36.309414, 37.860863>,  <44.158642, 36.261406, 38.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346958, 36.309414, 37.860863>,  <44.660820, 36.389423, 37.626156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346958, 36.309414, 37.860863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328348, -0.668749, -0.667055,
		0.525831, -0.716075, 0.459062,
		-0.784659, -0.200026, 0.586771,
		44.111561, 36.249405, 38.036896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436459, 35.677063, 37.643665>,  <44.660820, 36.389423, 37.626156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436459, 35.677063, 37.643665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094696, 35.874180, 37.709564>,  <43.889637, 35.992451, 37.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094696, 35.874180, 37.709564>,  <44.436459, 35.677063, 37.643665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094696, 35.874180, 37.709564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414101, -0.454262, -0.788775,
		-0.313862, -0.742160, 0.592191,
		-0.854407, 0.492793, 0.164753,
		43.838375, 36.022018, 37.758991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771835, 35.335114, 37.471558>,  <44.436459, 35.677063, 37.643665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771835, 35.335114, 37.471558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659061, 35.718719, 37.460167>,  <43.591396, 35.948883, 37.453335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659061, 35.718719, 37.460167>,  <43.771835, 35.335114, 37.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659061, 35.718719, 37.460167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413680, -0.148285, -0.898265,
		-0.865669, -0.241472, 0.438530,
		-0.281933, 0.959011, -0.028473,
		43.574482, 36.006424, 37.451626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936657, 35.392784, 37.273514>,  <43.771835, 35.335114, 37.471558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936657, 35.392784, 37.273514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172379, 35.697018, 37.164528>,  <43.313812, 35.879559, 37.099136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172379, 35.697018, 37.164528>,  <42.936657, 35.392784, 37.273514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172379, 35.697018, 37.164528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224391, -0.169891, -0.959576,
		-0.776123, 0.626623, 0.070549,
		0.589306, 0.760579, -0.272465,
		43.349171, 35.925190, 37.082787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482349, 35.890587, 37.035587>,  <42.936657, 35.392784, 37.273514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482349, 35.890587, 37.035587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824482, 35.900902, 36.828613>,  <43.029762, 35.907093, 36.704430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824482, 35.900902, 36.828613>,  <42.482349, 35.890587, 37.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824482, 35.900902, 36.828613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509160, -0.142665, -0.848765,
		-0.095709, 0.989435, -0.108895,
		0.855334, 0.025789, -0.517435,
		43.081081, 35.908638, 36.673382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450016, 36.122776, 36.275314>,  <42.482349, 35.890587, 37.035587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450016, 36.122776, 36.275314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797173, 35.925575, 36.250965>,  <43.005466, 35.807255, 36.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797173, 35.925575, 36.250965>,  <42.450016, 36.122776, 36.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797173, 35.925575, 36.250965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372252, -0.564337, -0.736853,
		0.328918, 0.662171, -0.673307,
		0.867895, -0.493004, -0.060874,
		43.057541, 35.777676, 36.232704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856213, 36.059940, 35.550201>,  <42.450016, 36.122776, 36.275314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856213, 36.059940, 35.550201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928856, 35.738110, 35.776363>,  <42.972443, 35.545013, 35.912060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928856, 35.738110, 35.776363>,  <42.856213, 36.059940, 35.550201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928856, 35.738110, 35.776363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298612, -0.592935, -0.747837,
		0.936936, -0.033019, -0.347939,
		0.181612, -0.804573, 0.565402,
		42.983341, 35.496738, 35.945984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427647, 35.637379, 35.291946>,  <42.856213, 36.059940, 35.550201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427647, 35.637379, 35.291946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169476, 35.372101, 35.443523>,  <43.014572, 35.212933, 35.534470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169476, 35.372101, 35.443523>,  <43.427647, 35.637379, 35.291946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169476, 35.372101, 35.443523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164700, -0.363600, -0.916880,
		0.745854, -0.654190, 0.125448,
		-0.645427, -0.663197, 0.378938,
		42.975849, 35.173141, 35.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557957, 34.866146, 35.141197>,  <43.427647, 35.637379, 35.291946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557957, 34.866146, 35.141197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166866, 34.938137, 35.184387>,  <42.932213, 34.981331, 35.210300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166866, 34.938137, 35.184387>,  <43.557957, 34.866146, 35.141197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166866, 34.938137, 35.184387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153028, -0.259206, -0.953622,
		-0.143645, -0.948904, 0.280975,
		-0.977726, 0.179980, 0.107975,
		42.873547, 34.992130, 35.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364971, 34.848892, 34.481548>,  <43.557957, 34.866146, 35.141197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364971, 34.848892, 34.481548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723072, 34.703259, 34.378811>,  <43.937931, 34.615879, 34.317169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723072, 34.703259, 34.378811>,  <43.364971, 34.848892, 34.481548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723072, 34.703259, 34.378811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274853, -0.002432, 0.961483,
		-0.350682, -0.931364, 0.097891,
		0.895253, -0.364081, -0.256841,
		43.991650, 34.594036, 34.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377724, 34.200726, 34.848919>,  <43.364971, 34.848892, 34.481548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377724, 34.200726, 34.848919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731701, 34.373062, 34.778210>,  <43.944088, 34.476463, 34.735786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731701, 34.373062, 34.778210>,  <43.377724, 34.200726, 34.848919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731701, 34.373062, 34.778210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235128, -0.085719, 0.968177,
		0.401976, -0.898349, -0.177159,
		0.884946, 0.430839, -0.176770,
		43.997185, 34.502316, 34.725178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728661, 33.785240, 35.273518>,  <43.377724, 34.200726, 34.848919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728661, 33.785240, 35.273518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873730, 34.150665, 35.199905>,  <43.960770, 34.369923, 35.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873730, 34.150665, 35.199905>,  <43.728661, 33.785240, 35.273518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873730, 34.150665, 35.199905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404468, 0.023602, 0.914248,
		0.839568, -0.406007, -0.360948,
		0.362672, 0.913565, -0.184032,
		43.982533, 34.424736, 35.144695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348644, 33.750877, 35.684559>,  <43.728661, 33.785240, 35.273518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348644, 33.750877, 35.684559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248096, 34.124382, 35.582657>,  <44.187767, 34.348484, 35.521515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248096, 34.124382, 35.582657>,  <44.348644, 33.750877, 35.684559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248096, 34.124382, 35.582657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414230, 0.341665, 0.843610,
		0.874773, 0.106530, -0.472677,
		-0.251367, 0.933764, -0.254752,
		44.172688, 34.404510, 35.506233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068134, 33.288555, 36.211353>,  <44.348644, 33.750877, 35.684559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068134, 33.288555, 36.211353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175476, 32.941700, 36.043522>,  <44.239883, 32.733585, 35.942822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175476, 32.941700, 36.043522>,  <44.068134, 33.288555, 36.211353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175476, 32.941700, 36.043522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962443, 0.259928, 0.078372,
		0.041101, -0.424855, 0.904328,
		0.268356, -0.867142, -0.419582,
		44.255981, 32.681557, 35.917648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586605, 32.936138, 36.780853>,  <44.068134, 33.288555, 36.211353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586605, 32.936138, 36.780853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621998, 32.828564, 36.397221>,  <44.643234, 32.764019, 36.167042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621998, 32.828564, 36.397221>,  <44.586605, 32.936138, 36.780853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621998, 32.828564, 36.397221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925772, 0.377527, -0.020455,
		0.367582, -0.886085, 0.282376,
		0.088480, -0.268935, -0.959086,
		44.648540, 32.747883, 36.109493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335251, 32.598507, 36.674927>,  <44.586605, 32.936138, 36.780853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335251, 32.598507, 36.674927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178963, 32.765865, 36.346954>,  <45.085190, 32.866280, 36.150173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178963, 32.765865, 36.346954>,  <45.335251, 32.598507, 36.674927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178963, 32.765865, 36.346954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880099, 0.430817, -0.199556,
		0.269747, -0.799589, -0.536558,
		-0.390721, 0.418394, -0.819929,
		45.061745, 32.891384, 36.100975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891930, 32.604328, 36.141380>,  <45.335251, 32.598507, 36.674927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891930, 32.604328, 36.141380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641640, 32.890255, 36.016479>,  <45.491467, 33.061810, 35.941540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641640, 32.890255, 36.016479>,  <45.891930, 32.604328, 36.141380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641640, 32.890255, 36.016479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760816, 0.470951, -0.446503,
		-0.172115, -0.516953, -0.838532,
		-0.625728, 0.714818, -0.312248,
		45.453922, 33.104702, 35.922806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819481, 32.715931, 35.398441>,  <45.891930, 32.604328, 36.141380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819481, 32.715931, 35.398441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758518, 33.072041, 35.570107>,  <45.721943, 33.285706, 35.673107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758518, 33.072041, 35.570107>,  <45.819481, 32.715931, 35.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758518, 33.072041, 35.570107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780128, 0.374963, -0.500803,
		-0.606773, 0.258479, -0.751675,
		-0.152403, 0.890276, 0.429164,
		45.712799, 33.339123, 35.698856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617496, 33.245964, 34.969067>,  <45.819481, 32.715931, 35.398441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617496, 33.245964, 34.969067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820477, 33.411118, 35.271595>,  <45.942265, 33.510208, 35.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820477, 33.411118, 35.271595>,  <45.617496, 33.245964, 34.969067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820477, 33.411118, 35.271595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688510, 0.333486, -0.644004,
		-0.518120, 0.847535, -0.115046,
		0.507450, 0.412882, 0.756322,
		45.972710, 33.534981, 35.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910862, 33.945450, 34.780178>,  <45.617496, 33.245964, 34.969067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910862, 33.945450, 34.780178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148300, 33.736698, 35.025223>,  <46.290764, 33.611446, 35.172249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148300, 33.736698, 35.025223>,  <45.910862, 33.945450, 34.780178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148300, 33.736698, 35.025223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734572, 0.040439, -0.677325,
		0.328707, 0.852061, 0.407361,
		0.593596, -0.521878, 0.612608,
		46.326378, 33.580135, 35.209003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500565, 34.111839, 34.505772>,  <45.910862, 33.945450, 34.780178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500565, 34.111839, 34.505772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622734, 33.804089, 34.730190>,  <46.696037, 33.619438, 34.864841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622734, 33.804089, 34.730190>,  <46.500565, 34.111839, 34.505772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622734, 33.804089, 34.730190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822600, -0.083589, -0.562443,
		0.479630, 0.633297, 0.607363,
		0.305424, -0.769381, 0.561042,
		46.714363, 33.573273, 34.898502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808613, 34.807266, 34.205841>,  <46.500565, 34.111839, 34.505772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808613, 34.807266, 34.205841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946110, 35.156960, 34.068691>,  <47.028606, 35.366776, 33.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946110, 35.156960, 34.068691>,  <46.808613, 34.807266, 34.205841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946110, 35.156960, 34.068691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715318, -0.007196, 0.698762,
		0.608411, -0.485458, -0.627827,
		0.343738, 0.874230, -0.342879,
		47.049232, 35.419228, 33.965828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157372, 34.389935, 34.704258>,  <46.808613, 34.807266, 34.205841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157372, 34.389935, 34.704258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131023, 33.990929, 34.714203>,  <47.115215, 33.751526, 34.720169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131023, 33.990929, 34.714203>,  <47.157372, 34.389935, 34.704258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131023, 33.990929, 34.714203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892562, -0.070039, -0.445451,
		0.446087, -0.007152, 0.894961,
		-0.065868, -0.997519, 0.024860,
		47.111263, 33.691673, 34.721661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.777252, 34.594715, 35.150650>,  <47.157372, 34.389935, 34.704258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.777252, 34.594715, 35.150650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652641, 34.917080, 34.949272>,  <47.577873, 35.110500, 34.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652641, 34.917080, 34.949272>,  <47.777252, 34.594715, 35.150650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652641, 34.917080, 34.949272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741199, 0.537624, 0.401977,
		0.594622, -0.247928, -0.764825,
		-0.311527, 0.805911, -0.503447,
		47.559185, 35.158852, 34.798237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.024014, 41.124187, 32.013702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.052807, 40.758179, 31.854931>,  <43.070084, 40.538574, 31.759668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.052807, 40.758179, 31.854931>,  <43.024014, 41.124187, 32.013702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052807, 40.758179, 31.854931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502762, -0.376990, 0.777887,
		-0.861422, 0.143562, -0.487177,
		0.071986, -0.915024, -0.396925,
		43.074402, 40.483673, 31.735853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399040, 40.938587, 32.034523>,  <43.024014, 41.124187, 32.013702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399040, 40.938587, 32.034523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.574993, 40.584312, 31.975111>,  <42.680565, 40.371746, 31.939463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.574993, 40.584312, 31.975111>,  <42.399040, 40.938587, 32.034523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574993, 40.584312, 31.975111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663575, -0.431995, 0.610777,
		-0.605125, -0.170103, -0.777746,
		0.439877, -0.885689, -0.148535,
		42.706955, 40.318607, 31.930552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831181, 40.461124, 32.046223>,  <42.399040, 40.938587, 32.034523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831181, 40.461124, 32.046223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155552, 40.239285, 32.120850>,  <42.350174, 40.106178, 32.165627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155552, 40.239285, 32.120850>,  <41.831181, 40.461124, 32.046223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155552, 40.239285, 32.120850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517619, -0.531218, 0.670730,
		-0.272881, -0.640486, -0.717854,
		0.810930, -0.554604, 0.186568,
		42.398830, 40.072903, 32.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664989, 39.716908, 31.912298>,  <41.831181, 40.461124, 32.046223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664989, 39.716908, 31.912298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.957905, 39.732121, 32.184273>,  <42.133652, 39.741249, 32.347458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.957905, 39.732121, 32.184273>,  <41.664989, 39.716908, 31.912298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957905, 39.732121, 32.184273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553403, -0.548626, 0.626701,
		0.396868, -0.835202, -0.380701,
		0.732285, 0.038037, 0.679936,
		42.177589, 39.743530, 32.388252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616772, 39.021873, 32.432293>,  <41.664989, 39.716908, 31.912298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616772, 39.021873, 32.432293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.858597, 39.277393, 32.622635>,  <42.003693, 39.430706, 32.736839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.858597, 39.277393, 32.622635>,  <41.616772, 39.021873, 32.432293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858597, 39.277393, 32.622635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540283, -0.110126, 0.834246,
		0.585322, -0.761449, 0.278556,
		0.604559, 0.638802, 0.475858,
		42.039963, 39.469032, 32.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589581, 38.735001, 33.065922>,  <41.616772, 39.021873, 32.432293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589581, 38.735001, 33.065922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754620, 39.092690, 33.135357>,  <41.853642, 39.307301, 33.177017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754620, 39.092690, 33.135357>,  <41.589581, 38.735001, 33.065922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754620, 39.092690, 33.135357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456501, 0.038074, 0.888908,
		0.788270, -0.446005, 0.423922,
		0.412597, 0.894221, 0.173589,
		41.878399, 39.360954, 33.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014725, 38.764610, 33.638569>,  <41.589581, 38.735001, 33.065922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014725, 38.764610, 33.638569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.859402, 39.131935, 33.607800>,  <41.766209, 39.352329, 33.589336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.859402, 39.131935, 33.607800>,  <42.014725, 38.764610, 33.638569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859402, 39.131935, 33.607800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442690, -0.112678, 0.889567,
		0.808233, 0.379480, 0.450282,
		-0.388310, 0.918313, -0.076922,
		41.742908, 39.407429, 33.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577000, 38.636990, 34.189362>,  <42.014725, 38.764610, 33.638569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577000, 38.636990, 34.189362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571815, 39.017895, 34.067356>,  <41.568703, 39.246437, 33.994152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571815, 39.017895, 34.067356>,  <41.577000, 38.636990, 34.189362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571815, 39.017895, 34.067356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652035, 0.223214, 0.724586,
		0.758078, 0.208275, 0.618012,
		-0.012965, 0.952259, -0.305016,
		41.567924, 39.303574, 33.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875103, 39.093037, 34.639347>,  <41.577000, 38.636990, 34.189362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875103, 39.093037, 34.639347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565891, 39.225121, 34.422684>,  <41.380363, 39.304371, 34.292686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565891, 39.225121, 34.422684>,  <41.875103, 39.093037, 34.639347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565891, 39.225121, 34.422684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502316, 0.202872, 0.840549,
		0.387442, 0.921850, 0.009042,
		-0.773025, 0.330205, -0.541661,
		41.333984, 39.324181, 34.260185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693962, 39.715881, 34.948887>,  <41.875103, 39.093037, 34.639347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693962, 39.715881, 34.948887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375565, 39.612118, 34.730125>,  <41.184525, 39.549858, 34.598869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375565, 39.612118, 34.730125>,  <41.693962, 39.715881, 34.948887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375565, 39.612118, 34.730125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605306, 0.339456, 0.719983,
		-0.001123, 0.904144, -0.427227,
		-0.795992, -0.259411, -0.546902,
		41.136768, 39.534294, 34.566055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272682, 40.171001, 35.222092>,  <41.693962, 39.715881, 34.948887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272682, 40.171001, 35.222092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039097, 39.911087, 35.027454>,  <40.898945, 39.755138, 34.910671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039097, 39.911087, 35.027454>,  <41.272682, 40.171001, 35.222092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039097, 39.911087, 35.027454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754103, 0.212310, 0.621492,
		-0.300528, 0.729867, -0.613985,
		-0.583961, -0.649784, -0.486590,
		40.863907, 39.716152, 34.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653942, 40.507381, 35.114216>,  <41.272682, 40.171001, 35.222092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653942, 40.507381, 35.114216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.597031, 40.111454, 35.116043>,  <40.562881, 39.873898, 35.117138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.597031, 40.111454, 35.116043>,  <40.653942, 40.507381, 35.114216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597031, 40.111454, 35.116043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640647, 0.095606, 0.761860,
		-0.754538, 0.105471, -0.647726,
		-0.142281, -0.989816, 0.004569,
		40.554348, 39.814510, 35.117413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928883, 40.444206, 35.120186>,  <40.653942, 40.507381, 35.114216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928883, 40.444206, 35.120186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078621, 40.087257, 35.221012>,  <40.168465, 39.873089, 35.281509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078621, 40.087257, 35.221012>,  <39.928883, 40.444206, 35.120186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078621, 40.087257, 35.221012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657356, -0.063659, 0.750886,
		-0.654023, -0.446789, -0.610437,
		0.374348, -0.892372, 0.252065,
		40.190926, 39.819546, 35.296631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343437, 40.003506, 35.196362>,  <39.928883, 40.444206, 35.120186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343437, 40.003506, 35.196362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650558, 39.848652, 35.400562>,  <39.834831, 39.755737, 35.523083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650558, 39.848652, 35.400562>,  <39.343437, 40.003506, 35.196362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650558, 39.848652, 35.400562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609721, -0.196785, 0.767800,
		-0.196785, -0.900778, -0.387137,
		-0.767800, 0.387137, -0.510499,
		39.880898, 39.732510, 35.553711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974983, 39.510166, 35.557652>,  <39.343437, 40.003506, 35.196362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974983, 39.510166, 35.557652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319866, 39.556126, 35.754993>,  <39.526794, 39.583702, 35.873398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319866, 39.556126, 35.754993>,  <38.974983, 39.510166, 35.557652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319866, 39.556126, 35.754993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500367, 0.041327, 0.864827,
		0.078977, -0.992517, 0.093123,
		0.862204, 0.114897, 0.493359,
		39.578526, 39.590595, 35.903000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961624, 39.016312, 36.103588>,  <38.974983, 39.510166, 35.557652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961624, 39.016312, 36.103588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225323, 39.301167, 36.200123>,  <39.383541, 39.472080, 36.258045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225323, 39.301167, 36.200123>,  <38.961624, 39.016312, 36.103588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225323, 39.301167, 36.200123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452870, 0.119827, 0.883487,
		0.600248, -0.691735, 0.401503,
		0.659250, 0.712140, 0.241341,
		39.423100, 39.514809, 36.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259533, 38.736713, 36.616943>,  <38.961624, 39.016312, 36.103588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259533, 38.736713, 36.616943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337807, 39.123940, 36.679623>,  <39.384773, 39.356274, 36.717228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337807, 39.123940, 36.679623>,  <39.259533, 38.736713, 36.616943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337807, 39.123940, 36.679623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396395, -0.068065, 0.915553,
		0.896982, -0.241276, 0.370417,
		0.195689, 0.968066, 0.156694,
		39.396515, 39.414360, 36.726631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538578, 38.793041, 37.360992>,  <39.259533, 38.736713, 36.616943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538578, 38.793041, 37.360992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428440, 39.159557, 37.244656>,  <39.362358, 39.379467, 37.174854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428440, 39.159557, 37.244656>,  <39.538578, 38.793041, 37.360992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428440, 39.159557, 37.244656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322734, 0.196872, 0.925788,
		0.905553, 0.348779, 0.241510,
		-0.275349, 0.916294, -0.290840,
		39.345837, 39.434444, 37.157402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726963, 39.149960, 37.872696>,  <39.538578, 38.793041, 37.360992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726963, 39.149960, 37.872696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444698, 39.370667, 37.694885>,  <39.275341, 39.503090, 37.588200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444698, 39.370667, 37.694885>,  <39.726963, 39.149960, 37.872696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444698, 39.370667, 37.694885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385467, 0.227467, 0.894245,
		0.594526, 0.802382, 0.052173,
		-0.705658, 0.551763, -0.444527,
		39.233002, 39.536194, 37.561527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635208, 39.816368, 38.153381>,  <39.726963, 39.149960, 37.872696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635208, 39.816368, 38.153381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283119, 39.766182, 37.970310>,  <39.071865, 39.736069, 37.860470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283119, 39.766182, 37.970310>,  <39.635208, 39.816368, 38.153381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283119, 39.766182, 37.970310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472816, 0.314471, 0.823136,
		0.040651, 0.940939, -0.336126,
		-0.880223, -0.125464, -0.457675,
		39.019051, 39.728542, 37.833008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286514, 40.130390, 38.631321>,  <39.635208, 39.816368, 38.153381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286514, 40.130390, 38.631321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995914, 39.976654, 38.403469>,  <38.821556, 39.884411, 38.266758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995914, 39.976654, 38.403469>,  <39.286514, 40.130390, 38.631321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995914, 39.976654, 38.403469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674008, 0.237102, 0.699639,
		-0.133839, 0.892224, -0.431303,
		-0.726498, -0.384341, -0.569633,
		38.777966, 39.861351, 38.232578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703506, 40.609688, 38.595585>,  <39.286514, 40.130390, 38.631321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703506, 40.609688, 38.595585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597843, 40.226681, 38.549301>,  <38.534447, 39.996876, 38.521530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597843, 40.226681, 38.549301>,  <38.703506, 40.609688, 38.595585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597843, 40.226681, 38.549301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758923, 0.132324, 0.637593,
		-0.595194, 0.256238, -0.761634,
		-0.264159, -0.957514, -0.115707,
		38.518597, 39.939426, 38.514587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996223, 41.290188, 38.579803>,  <38.703506, 40.609688, 38.595585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996223, 41.290188, 38.579803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721973, 41.581367, 38.578785>,  <38.557423, 41.756077, 38.578175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721973, 41.581367, 38.578785>,  <38.996223, 41.290188, 38.579803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721973, 41.581367, 38.578785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456034, 0.426784, -0.780953,
		-0.567409, -0.536601, -0.624585,
		-0.685623, 0.727952, -0.002547,
		38.516285, 41.799751, 38.578022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852455, 41.334045, 37.878902>,  <38.996223, 41.290188, 38.579803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852455, 41.334045, 37.878902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765141, 41.677532, 38.064354>,  <38.712753, 41.883625, 38.175625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765141, 41.677532, 38.064354>,  <38.852455, 41.334045, 37.878902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765141, 41.677532, 38.064354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637313, 0.485223, -0.598658,
		-0.739043, 0.164800, -0.653189,
		-0.218284, 0.858720, 0.463630,
		38.699654, 41.935146, 38.203442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727291, 41.836803, 37.295288>,  <38.852455, 41.334045, 37.878902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727291, 41.836803, 37.295288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805000, 42.032375, 37.635452>,  <38.851627, 42.149719, 37.839550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805000, 42.032375, 37.635452>,  <38.727291, 41.836803, 37.295288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805000, 42.032375, 37.635452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426938, 0.738369, -0.522048,
		-0.883166, 0.464494, -0.065300,
		0.194273, 0.488934, 0.850412,
		38.863281, 42.179054, 37.890575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698280, 42.528862, 37.015038>,  <38.727291, 41.836803, 37.295288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698280, 42.528862, 37.015038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890194, 42.536831, 37.365902>,  <39.005341, 42.541611, 37.576420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890194, 42.536831, 37.365902>,  <38.698280, 42.528862, 37.015038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890194, 42.536831, 37.365902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678145, 0.625928, -0.385142,
		-0.556710, 0.779627, 0.286803,
		0.479785, 0.019918, 0.877160,
		39.034130, 42.542805, 37.629051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926903, 43.140579, 37.039265>,  <38.698280, 42.528862, 37.015038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926903, 43.140579, 37.039265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152958, 42.952675, 37.310543>,  <39.288589, 42.839931, 37.473309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152958, 42.952675, 37.310543>,  <38.926903, 43.140579, 37.039265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152958, 42.952675, 37.310543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803180, 0.501091, -0.322195,
		-0.188484, 0.726797, 0.660484,
		0.565133, -0.469759, 0.678196,
		39.322498, 42.811749, 37.514004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297554, 43.630520, 37.456085>,  <38.926903, 43.140579, 37.039265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297554, 43.630520, 37.456085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504944, 43.289059, 37.475933>,  <39.629379, 43.084183, 37.487843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504944, 43.289059, 37.475933>,  <39.297554, 43.630520, 37.456085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504944, 43.289059, 37.475933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822513, 0.482018, -0.301879,
		0.233783, 0.197329, 0.952054,
		0.518477, -0.853651, 0.049618,
		39.660488, 43.032963, 37.490818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974640, 43.807526, 37.741169>,  <39.297554, 43.630520, 37.456085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974640, 43.807526, 37.741169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035084, 43.441975, 37.590443>,  <40.071350, 43.222645, 37.500008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035084, 43.441975, 37.590443>,  <39.974640, 43.807526, 37.741169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035084, 43.441975, 37.590443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730728, 0.359992, -0.580036,
		0.665733, -0.187698, 0.722197,
		0.151114, -0.913879, -0.376815,
		40.080418, 43.167812, 37.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678722, 43.626965, 37.826664>,  <39.974640, 43.807526, 37.741169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678722, 43.626965, 37.826664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557674, 43.389713, 37.528236>,  <40.485046, 43.247364, 37.349178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557674, 43.389713, 37.528236>,  <40.678722, 43.626965, 37.826664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557674, 43.389713, 37.528236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757305, 0.325653, -0.566073,
		0.578714, -0.736308, 0.350629,
		-0.302621, -0.593127, -0.746070,
		40.466888, 43.211777, 37.304417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270954, 43.184292, 37.583805>,  <40.678722, 43.626965, 37.826664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270954, 43.184292, 37.583805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.995323, 43.176682, 37.294029>,  <40.829945, 43.172115, 37.120163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.995323, 43.176682, 37.294029>,  <41.270954, 43.184292, 37.583805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995323, 43.176682, 37.294029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718471, 0.112769, -0.686355,
		0.094750, -0.993439, -0.064039,
		-0.689073, -0.019022, -0.724442,
		40.788601, 43.170975, 37.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520836, 42.733513, 37.029003>,  <41.270954, 43.184292, 37.583805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520836, 42.733513, 37.029003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269348, 42.967716, 36.824299>,  <41.118458, 43.108238, 36.701477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269348, 42.967716, 36.824299>,  <41.520836, 42.733513, 37.029003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269348, 42.967716, 36.824299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689327, 0.115027, -0.715261,
		-0.359921, -0.802468, -0.475923,
		-0.628717, 0.585504, -0.511762,
		41.080734, 43.143368, 36.670769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540920, 42.430119, 36.374500>,  <41.520836, 42.733513, 37.029003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540920, 42.430119, 36.374500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374855, 42.780762, 36.277180>,  <41.275215, 42.991150, 36.218788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374855, 42.780762, 36.277180>,  <41.540920, 42.430119, 36.374500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374855, 42.780762, 36.277180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574233, 0.045073, -0.817450,
		-0.705618, -0.479087, -0.522091,
		-0.415162, 0.876610, -0.243303,
		41.250305, 43.043743, 36.204189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309429, 42.293327, 35.683041>,  <41.540920, 42.430119, 36.374500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309429, 42.293327, 35.683041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.310162, 42.690285, 35.732285>,  <41.310600, 42.928459, 35.761833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.310162, 42.690285, 35.732285>,  <41.309429, 42.293327, 35.683041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310162, 42.690285, 35.732285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304438, 0.116718, -0.945354,
		-0.952531, 0.039210, -0.301908,
		0.001829, 0.992391, 0.123115,
		41.310711, 42.988003, 35.769218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987217, 42.613960, 35.019238>,  <41.309429, 42.293327, 35.683041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987217, 42.613960, 35.019238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.200165, 42.905319, 35.191753>,  <41.327934, 43.080135, 35.295261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.200165, 42.905319, 35.191753>,  <40.987217, 42.613960, 35.019238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200165, 42.905319, 35.191753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236681, 0.361090, -0.901996,
		-0.812749, 0.582276, 0.019836,
		0.532373, 0.728401, 0.431289,
		41.359879, 43.123840, 35.321140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849503, 43.224163, 34.626862>,  <40.987217, 42.613960, 35.019238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849503, 43.224163, 34.626862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194832, 43.304863, 34.811890>,  <41.402031, 43.353283, 34.922905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194832, 43.304863, 34.811890>,  <40.849503, 43.224163, 34.626862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194832, 43.304863, 34.811890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405017, 0.269827, -0.873587,
		-0.301058, 0.941537, 0.151236,
		0.863322, 0.201748, 0.462572,
		41.453827, 43.365387, 34.950661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113739, 43.892521, 34.423485>,  <40.849503, 43.224163, 34.626862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113739, 43.892521, 34.423485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.430965, 43.677029, 34.537201>,  <41.621300, 43.547733, 34.605431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.430965, 43.677029, 34.537201>,  <41.113739, 43.892521, 34.423485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430965, 43.677029, 34.537201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477833, 0.260741, -0.838862,
		0.377795, 0.801113, 0.464207,
		0.793061, -0.538732, 0.284292,
		41.668884, 43.515408, 34.622490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765785, 44.289566, 34.244492>,  <41.113739, 43.892521, 34.423485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765785, 44.289566, 34.244492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926380, 43.926552, 34.293770>,  <42.022739, 43.708744, 34.323338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926380, 43.926552, 34.293770>,  <41.765785, 44.289566, 34.244492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926380, 43.926552, 34.293770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516138, 0.113087, -0.849007,
		0.756576, 0.404455, 0.513819,
		0.401491, -0.907539, 0.123195,
		42.046829, 43.654289, 34.330727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463352, 44.267284, 33.944992>,  <41.765785, 44.289566, 34.244492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463352, 44.267284, 33.944992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.363922, 43.879951, 33.935654>,  <42.304264, 43.647552, 33.930050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.363922, 43.879951, 33.935654>,  <42.463352, 44.267284, 33.944992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363922, 43.879951, 33.935654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470592, -0.099669, -0.876704,
		0.846612, -0.228914, 0.480464,
		-0.248578, -0.968331, -0.023344,
		42.289349, 43.589451, 33.928650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064167, 43.916664, 33.740147>,  <42.463352, 44.267284, 33.944992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064167, 43.916664, 33.740147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.755733, 43.669605, 33.678242>,  <42.570675, 43.521370, 33.641098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.755733, 43.669605, 33.678242>,  <43.064167, 43.916664, 33.740147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755733, 43.669605, 33.678242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451826, -0.359498, -0.816464,
		0.448648, -0.699485, 0.556270,
		-0.771082, -0.617642, -0.154758,
		42.524410, 43.484314, 33.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.416924, 43.260284, 33.371330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.027988, 43.198349, 33.301376>,  <42.794628, 43.161186, 33.259403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.027988, 43.198349, 33.301376>,  <43.416924, 43.260284, 33.371330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027988, 43.198349, 33.301376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219014, -0.344043, -0.913054,
		0.081211, -0.926098, 0.368438,
		-0.972337, -0.154843, -0.174888,
		42.736286, 43.151897, 33.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384472, 42.616932, 33.170311>,  <43.416924, 43.260284, 33.371330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384472, 42.616932, 33.170311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.066223, 42.804451, 33.016834>,  <42.875275, 42.916962, 32.924747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.066223, 42.804451, 33.016834>,  <43.384472, 42.616932, 33.170311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066223, 42.804451, 33.016834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224362, -0.360305, -0.905451,
		-0.562719, -0.806480, 0.181486,
		-0.795619, 0.468796, -0.383694,
		42.827538, 42.945091, 32.901726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105991, 42.085720, 32.739281>,  <43.384472, 42.616932, 33.170311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105991, 42.085720, 32.739281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949135, 42.431122, 32.612419>,  <42.855019, 42.638363, 32.536301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949135, 42.431122, 32.612419>,  <43.105991, 42.085720, 32.739281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949135, 42.431122, 32.612419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156143, -0.277285, -0.948015,
		-0.906555, -0.421281, -0.026094,
		-0.392145, 0.863502, -0.317155,
		42.831490, 42.690174, 32.517273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671448, 41.859730, 32.179264>,  <43.105991, 42.085720, 32.739281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671448, 41.859730, 32.179264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.751125, 42.248165, 32.126637>,  <42.798931, 42.481228, 32.095062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.751125, 42.248165, 32.126637>,  <42.671448, 41.859730, 32.179264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751125, 42.248165, 32.126637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003974, -0.135056, -0.990830,
		-0.979952, 0.196847, -0.030762,
		0.199197, 0.971088, -0.131566,
		42.810883, 42.539490, 32.087166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214088, 42.041977, 31.652910>,  <42.671448, 41.859730, 32.179264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214088, 42.041977, 31.652910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498383, 42.323360, 31.652660>,  <42.668961, 42.492191, 31.652510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498383, 42.323360, 31.652660>,  <42.214088, 42.041977, 31.652910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498383, 42.323360, 31.652660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035921, -0.037183, -0.998663,
		-0.702540, 0.709764, -0.051696,
		0.710737, 0.703457, -0.000627,
		42.711605, 42.534397, 31.652472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004845, 42.628689, 31.184988>,  <42.214088, 42.041977, 31.652910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004845, 42.628689, 31.184988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398884, 42.673050, 31.237576>,  <42.635307, 42.699669, 31.269129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398884, 42.673050, 31.237576>,  <42.004845, 42.628689, 31.184988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398884, 42.673050, 31.237576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105593, 0.213412, -0.971239,
		-0.135774, 0.970647, 0.198520,
		0.985097, 0.110907, 0.131469,
		42.694412, 42.706322, 31.277016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157707, 43.344944, 30.878977>,  <42.004845, 42.628689, 31.184988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157707, 43.344944, 30.878977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492359, 43.127872, 30.908764>,  <42.693153, 42.997631, 30.926636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492359, 43.127872, 30.908764>,  <42.157707, 43.344944, 30.878977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492359, 43.127872, 30.908764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308248, 0.354060, -0.882963,
		0.452797, 0.761672, 0.463498,
		0.836635, -0.542676, 0.074467,
		42.743351, 42.965069, 30.931105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733765, 43.758244, 30.720636>,  <42.157707, 43.344944, 30.878977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733765, 43.758244, 30.720636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881847, 43.390419, 30.667944>,  <42.970695, 43.169724, 30.636330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881847, 43.390419, 30.667944>,  <42.733765, 43.758244, 30.720636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881847, 43.390419, 30.667944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444229, 0.299786, -0.844268,
		0.815848, 0.254036, 0.519479,
		0.370207, -0.919562, -0.131730,
		42.992908, 43.114552, 30.628426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472229, 43.885418, 30.702339>,  <42.733765, 43.758244, 30.720636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472229, 43.885418, 30.702339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429867, 43.526222, 30.531504>,  <43.404449, 43.310707, 30.429003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429867, 43.526222, 30.531504>,  <43.472229, 43.885418, 30.702339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429867, 43.526222, 30.531504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601625, 0.284107, -0.746546,
		0.791726, -0.336012, 0.510162,
		-0.105907, -0.897986, -0.427088,
		43.398094, 43.256824, 30.403378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145493, 43.598804, 30.550570>,  <43.472229, 43.885418, 30.702339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145493, 43.598804, 30.550570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891323, 43.425652, 30.294806>,  <43.738819, 43.321758, 30.141348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891323, 43.425652, 30.294806>,  <44.145493, 43.598804, 30.550570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891323, 43.425652, 30.294806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648467, 0.150386, -0.746240,
		0.419196, -0.888815, 0.185154,
		-0.635425, -0.432887, -0.639408,
		43.700695, 43.295784, 30.102983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565075, 43.135593, 29.984194>,  <44.145493, 43.598804, 30.550570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565075, 43.135593, 29.984194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208740, 43.203331, 29.815559>,  <43.994942, 43.243973, 29.714378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208740, 43.203331, 29.815559>,  <44.565075, 43.135593, 29.984194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208740, 43.203331, 29.815559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441020, 0.099376, -0.891978,
		-0.109155, -0.980534, -0.163211,
		-0.890835, 0.169343, -0.421588,
		43.941490, 43.254135, 29.689083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511467, 42.690163, 29.453257>,  <44.565075, 43.135593, 29.984194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511467, 42.690163, 29.453257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.234776, 42.965412, 29.365625>,  <44.068760, 43.130562, 29.313047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.234776, 42.965412, 29.365625>,  <44.511467, 42.690163, 29.453257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234776, 42.965412, 29.365625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380623, 0.089600, -0.920379,
		-0.613705, -0.720040, -0.323895,
		-0.691731, 0.688123, -0.219076,
		44.027256, 43.171848, 29.299902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274776, 42.530750, 28.722191>,  <44.511467, 42.690163, 29.453257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274776, 42.530750, 28.722191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.195663, 42.915512, 28.797691>,  <44.148197, 43.146370, 28.842991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.195663, 42.915512, 28.797691>,  <44.274776, 42.530750, 28.722191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195663, 42.915512, 28.797691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321993, 0.245623, -0.914325,
		-0.925852, -0.120062, -0.358305,
		-0.197784, 0.961901, 0.188751,
		44.136330, 43.204082, 28.854317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932377, 42.744614, 28.093710>,  <44.274776, 42.530750, 28.722191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932377, 42.744614, 28.093710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.008842, 43.094387, 28.272068>,  <44.054722, 43.304253, 28.379084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.008842, 43.094387, 28.272068>,  <43.932377, 42.744614, 28.093710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008842, 43.094387, 28.272068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050817, 0.444847, -0.894164,
		-0.980241, 0.193594, 0.040604,
		0.191167, 0.874433, 0.445895,
		44.066193, 43.356716, 28.405836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453007, 43.036289, 27.747978>,  <43.932377, 42.744614, 28.093710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453007, 43.036289, 27.747978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.704487, 43.302406, 27.909035>,  <43.855373, 43.462078, 28.005669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.704487, 43.302406, 27.909035>,  <43.453007, 43.036289, 27.747978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704487, 43.302406, 27.909035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018410, 0.530357, -0.847574,
		-0.777429, 0.525458, 0.345684,
		0.628701, 0.665293, 0.402641,
		43.893097, 43.501995, 28.029827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251869, 43.737984, 27.595690>,  <43.453007, 43.036289, 27.747978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251869, 43.737984, 27.595690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.638088, 43.820263, 27.659456>,  <43.869820, 43.869633, 27.697716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.638088, 43.820263, 27.659456>,  <43.251869, 43.737984, 27.595690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638088, 43.820263, 27.659456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034025, 0.507535, -0.860959,
		-0.258010, 0.836717, 0.483048,
		0.965543, 0.205700, 0.159418,
		43.927750, 43.881973, 27.707281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339054, 44.441406, 27.486620>,  <43.251869, 43.737984, 27.595690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339054, 44.441406, 27.486620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.714653, 44.305733, 27.463882>,  <43.940014, 44.224331, 27.450239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.714653, 44.305733, 27.463882>,  <43.339054, 44.441406, 27.486620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714653, 44.305733, 27.463882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096417, 0.418291, -0.903181,
		0.330120, 0.842608, 0.425479,
		0.939002, -0.339181, -0.056845,
		43.996353, 44.203979, 27.446829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758896, 44.958202, 27.228603>,  <43.339054, 44.441406, 27.486620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758896, 44.958202, 27.228603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993835, 44.642033, 27.159033>,  <44.134800, 44.452332, 27.117290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993835, 44.642033, 27.159033>,  <43.758896, 44.958202, 27.228603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993835, 44.642033, 27.159033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187147, 0.341720, -0.920980,
		0.787399, 0.508386, 0.348635,
		0.587349, -0.790424, -0.173927,
		44.170040, 44.404903, 27.106855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189163, 45.297009, 26.767570>,  <43.758896, 44.958202, 27.228603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189163, 45.297009, 26.767570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.238449, 44.902576, 26.722906>,  <44.268021, 44.665916, 26.696108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.238449, 44.902576, 26.722906>,  <44.189163, 45.297009, 26.767570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238449, 44.902576, 26.722906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285662, 0.142998, -0.947602,
		0.950377, 0.084858, 0.299304,
		0.123211, -0.986078, -0.111661,
		44.275414, 44.606754, 26.689407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846813, 45.142990, 26.497253>,  <44.189163, 45.297009, 26.767570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846813, 45.142990, 26.497253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.655403, 44.815701, 26.369806>,  <44.540558, 44.619328, 26.293339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.655403, 44.815701, 26.369806>,  <44.846813, 45.142990, 26.497253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655403, 44.815701, 26.369806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529401, 0.020646, -0.848120,
		0.700533, -0.574524, 0.423291,
		-0.478526, -0.818228, -0.318617,
		44.511845, 44.570232, 26.274221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362701, 44.620647, 26.212616>,  <44.846813, 45.142990, 26.497253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362701, 44.620647, 26.212616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.003487, 44.556664, 26.048691>,  <44.787956, 44.518272, 25.950336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.003487, 44.556664, 26.048691>,  <45.362701, 44.620647, 26.212616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003487, 44.556664, 26.048691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421019, -0.042357, -0.906063,
		0.127574, -0.986215, 0.105384,
		-0.898036, -0.159959, -0.409811,
		44.734077, 44.508675, 25.925747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390743, 44.068226, 25.822128>,  <45.362701, 44.620647, 26.212616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390743, 44.068226, 25.822128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.077431, 44.268108, 25.674204>,  <44.889442, 44.388039, 25.585449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.077431, 44.268108, 25.674204>,  <45.390743, 44.068226, 25.822128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077431, 44.268108, 25.674204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313697, -0.195873, -0.929101,
		-0.536717, -0.843756, -0.003333,
		-0.783281, 0.499710, -0.369812,
		44.842445, 44.418022, 25.563261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304752, 43.998367, 25.085472>,  <45.390743, 44.068226, 25.822128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304752, 43.998367, 25.085472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.205051, 43.649086, 25.252993>,  <45.145233, 43.439518, 25.353506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.205051, 43.649086, 25.252993>,  <45.304752, 43.998367, 25.085472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205051, 43.649086, 25.252993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055662, -0.444653, -0.893972,
		0.966838, -0.199510, 0.159434,
		-0.249249, -0.873201, 0.418802,
		45.130276, 43.387127, 25.378633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821598, 43.731823, 24.626749>,  <45.304752, 43.998367, 25.085472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821598, 43.731823, 24.626749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606529, 43.446327, 24.447201>,  <44.477486, 43.275032, 24.339472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606529, 43.446327, 24.447201>,  <44.821598, 43.731823, 24.626749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606529, 43.446327, 24.447201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331509, -0.668450, 0.665790,
		-0.775247, 0.209173, 0.596019,
		-0.537674, -0.713737, -0.448872,
		44.445229, 43.232204, 24.312540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472115, 43.454544, 25.151962>,  <44.821598, 43.731823, 24.626749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472115, 43.454544, 25.151962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.474277, 43.174633, 24.866224>,  <44.475574, 43.006687, 24.694782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.474277, 43.174633, 24.866224>,  <44.472115, 43.454544, 25.151962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474277, 43.174633, 24.866224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041061, -0.713908, 0.699035,
		-0.999142, 0.025554, -0.032591,
		0.005404, -0.699773, -0.714344,
		44.475899, 42.964703, 24.651920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871895, 43.033707, 25.298584>,  <44.472115, 43.454544, 25.151962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871895, 43.033707, 25.298584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.121639, 42.821220, 25.069506>,  <44.271488, 42.693729, 24.932058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.121639, 42.821220, 25.069506>,  <43.871895, 43.033707, 25.298584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121639, 42.821220, 25.069506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048127, -0.757928, 0.650561,
		-0.779653, -0.378622, -0.498786,
		0.624360, -0.531217, -0.572699,
		44.308949, 42.661858, 24.897697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527905, 42.427101, 25.402334>,  <43.871895, 43.033707, 25.298584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527905, 42.427101, 25.402334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900379, 42.382843, 25.263393>,  <44.123863, 42.356289, 25.180029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900379, 42.382843, 25.263393>,  <43.527905, 42.427101, 25.402334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900379, 42.382843, 25.263393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115870, -0.813589, 0.569778,
		-0.345642, -0.570816, -0.744782,
		0.931185, -0.110641, -0.347351,
		44.179733, 42.349651, 25.159187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580853, 41.824223, 25.079956>,  <43.527905, 42.427101, 25.402334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580853, 41.824223, 25.079956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.951057, 41.909569, 25.205112>,  <44.173180, 41.960777, 25.280207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.951057, 41.909569, 25.205112>,  <43.580853, 41.824223, 25.079956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951057, 41.909569, 25.205112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003698, -0.821054, 0.570838,
		0.378701, -0.529474, -0.759106,
		0.925511, 0.213370, 0.312892,
		44.228710, 41.973579, 25.298981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893238, 41.216175, 25.133677>,  <43.580853, 41.824223, 25.079956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893238, 41.216175, 25.133677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130272, 41.450260, 25.355080>,  <44.272491, 41.590710, 25.487923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130272, 41.450260, 25.355080>,  <43.893238, 41.216175, 25.133677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130272, 41.450260, 25.355080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062698, -0.718581, 0.692612,
		0.803063, -0.375728, -0.462512,
		0.592586, 0.585209, 0.553509,
		44.308048, 41.625824, 25.521132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303249, 40.740826, 25.416418>,  <43.893238, 41.216175, 25.133677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303249, 40.740826, 25.416418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.342781, 41.081078, 25.622978>,  <44.366501, 41.285229, 25.746914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.342781, 41.081078, 25.622978>,  <44.303249, 40.740826, 25.416418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342781, 41.081078, 25.622978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130652, -0.503354, 0.854145,
		0.986490, -0.151885, 0.061389,
		0.098832, 0.850626, 0.516398,
		44.372429, 41.336266, 25.777897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570160, 40.529396, 26.068785>,  <44.303249, 40.740826, 25.416418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570160, 40.529396, 26.068785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.470222, 40.906357, 26.157743>,  <44.410259, 41.132534, 26.211119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.470222, 40.906357, 26.157743>,  <44.570160, 40.529396, 26.068785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470222, 40.906357, 26.157743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158282, -0.266342, 0.950794,
		0.955262, 0.202347, 0.215708,
		-0.249843, 0.942400, 0.222398,
		44.395271, 41.189075, 26.224463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903919, 40.768135, 26.763813>,  <44.570160, 40.529396, 26.068785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903919, 40.768135, 26.763813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.568684, 40.980461, 26.713470>,  <44.367542, 41.107857, 26.683266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.568684, 40.980461, 26.713470>,  <44.903919, 40.768135, 26.763813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568684, 40.980461, 26.713470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162805, -0.023176, 0.986386,
		0.520671, 0.847171, 0.105842,
		-0.838091, 0.530815, -0.125857,
		44.317257, 41.139706, 26.675713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931053, 41.372448, 27.317186>,  <44.903919, 40.768135, 26.763813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931053, 41.372448, 27.317186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.552719, 41.312504, 27.201990>,  <44.325718, 41.276535, 27.132872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.552719, 41.312504, 27.201990>,  <44.931053, 41.372448, 27.317186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552719, 41.312504, 27.201990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268728, -0.136353, 0.953516,
		-0.182165, 0.979260, 0.088695,
		-0.945834, -0.149863, -0.287993,
		44.268970, 41.267544, 27.115593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585762, 41.683620, 27.818302>,  <44.931053, 41.372448, 27.317186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585762, 41.683620, 27.818302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.303829, 41.441399, 27.670511>,  <44.134670, 41.296066, 27.581837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.303829, 41.441399, 27.670511>,  <44.585762, 41.683620, 27.818302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303829, 41.441399, 27.670511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420601, -0.062670, 0.905078,
		-0.571229, 0.793333, -0.210525,
		-0.704835, -0.605554, -0.369475,
		44.092381, 41.259731, 27.559669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942757, 41.943367, 28.129629>,  <44.585762, 41.683620, 27.818302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942757, 41.943367, 28.129629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.901413, 41.566010, 28.003565>,  <43.876606, 41.339596, 27.927927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.901413, 41.566010, 28.003565>,  <43.942757, 41.943367, 28.129629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901413, 41.566010, 28.003565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428450, -0.243727, 0.870074,
		-0.897635, 0.224957, -0.379006,
		-0.103355, -0.943394, -0.315160,
		43.870407, 41.282990, 27.909018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262020, 41.745316, 28.263603>,  <43.942757, 41.943367, 28.129629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262020, 41.745316, 28.263603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.474705, 41.407436, 28.239027>,  <43.602314, 41.204708, 28.224281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.474705, 41.407436, 28.239027>,  <43.262020, 41.745316, 28.263603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474705, 41.407436, 28.239027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302154, -0.256966, 0.917971,
		-0.791192, -0.469532, -0.391859,
		0.531712, -0.844694, -0.061438,
		43.634216, 41.154030, 28.220596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756477, 41.320988, 28.592262>,  <43.262020, 41.745316, 28.263603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756477, 41.320988, 28.592262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.096359, 41.112576, 28.559948>,  <43.300289, 40.987526, 28.540560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.096359, 41.112576, 28.559948>,  <42.756477, 41.320988, 28.592262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096359, 41.112576, 28.559948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237358, -0.514809, 0.823792,
		-0.470805, -0.680809, -0.561108,
		0.849708, -0.521029, -0.080779,
		43.351273, 40.956264, 28.535713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533985, 40.720787, 28.858372>,  <42.756477, 41.320988, 28.592262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533985, 40.720787, 28.858372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.933914, 40.714470, 28.862337>,  <43.173874, 40.710678, 28.864716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.933914, 40.714470, 28.862337>,  <42.533985, 40.720787, 28.858372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933914, 40.714470, 28.862337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012932, -0.204398, 0.978803,
		-0.013432, -0.978761, -0.204566,
		0.999826, -0.015792, 0.009912,
		43.233864, 40.709732, 28.865311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694855, 40.165592, 29.208103>,  <42.533985, 40.720787, 28.858372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694855, 40.165592, 29.208103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028023, 40.384762, 29.239157>,  <43.227924, 40.516262, 29.257790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028023, 40.384762, 29.239157>,  <42.694855, 40.165592, 29.208103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028023, 40.384762, 29.239157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104444, 0.017877, 0.994370,
		0.543447, -0.836340, 0.072117,
		0.832920, 0.547920, 0.077636,
		43.277901, 40.549137, 29.262447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062080, 39.793274, 29.654324>,  <42.694855, 40.165592, 29.208103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062080, 39.793274, 29.654324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.234501, 40.153175, 29.681545>,  <43.337955, 40.369118, 29.697878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.234501, 40.153175, 29.681545>,  <43.062080, 39.793274, 29.654324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234501, 40.153175, 29.681545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055653, -0.048765, 0.997259,
		0.900608, -0.433661, 0.029053,
		0.431055, 0.899756, 0.068053,
		43.363819, 40.423103, 29.701962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630562, 39.742863, 30.057566>,  <43.062080, 39.793274, 29.654324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630562, 39.742863, 30.057566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.510220, 40.123955, 30.074480>,  <43.438015, 40.352612, 30.084629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.510220, 40.123955, 30.074480>,  <43.630562, 39.742863, 30.057566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510220, 40.123955, 30.074480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058942, -0.025680, 0.997931,
		0.951845, 0.302730, -0.048430,
		-0.300860, 0.952730, 0.042287,
		43.419960, 40.409775, 30.087166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180935, 39.991932, 30.497057>,  <43.630562, 39.742863, 30.057566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180935, 39.991932, 30.497057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.846584, 40.211479, 30.494318>,  <43.645973, 40.343208, 30.492674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.846584, 40.211479, 30.494318>,  <44.180935, 39.991932, 30.497057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846584, 40.211479, 30.494318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067208, -0.089954, 0.993676,
		0.544785, 0.831052, 0.112079,
		-0.835878, 0.548872, -0.006848,
		43.595821, 40.376141, 30.492264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214142, 40.355652, 31.140856>,  <44.180935, 39.991932, 30.497057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214142, 40.355652, 31.140856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.831089, 40.383850, 31.029165>,  <43.601257, 40.400768, 30.962151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.831089, 40.383850, 31.029165>,  <44.214142, 40.355652, 31.140856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831089, 40.383850, 31.029165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283865, -0.067575, 0.956480,
		0.048561, 0.995220, 0.084723,
		-0.957634, 0.070497, -0.279227,
		43.543800, 40.404999, 30.945396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047043, 40.841518, 31.573736>,  <44.214142, 40.355652, 31.140856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047043, 40.841518, 31.573736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.727863, 40.625435, 31.466814>,  <43.536358, 40.495785, 31.402660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.727863, 40.625435, 31.466814>,  <44.047043, 40.841518, 31.573736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727863, 40.625435, 31.466814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360677, 0.072649, 0.929857,
		-0.482901, 0.838387, -0.252812,
		-0.797947, -0.540212, -0.267305,
		43.488480, 40.463371, 31.386623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.435944, 44.249493, 36.023193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402672, 43.859509, 35.940704>,  <41.382710, 43.625519, 35.891212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402672, 43.859509, 35.940704>,  <41.435944, 44.249493, 36.023193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402672, 43.859509, 35.940704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604824, -0.115076, 0.788001,
		-0.792004, 0.190269, -0.580110,
		-0.083175, -0.974964, -0.206220,
		41.377720, 43.567020, 35.878838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636787, 44.158375, 35.961796>,  <41.435944, 44.249493, 36.023193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636787, 44.158375, 35.961796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839947, 43.824215, 36.045845>,  <40.961842, 43.623718, 36.096275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839947, 43.824215, 36.045845>,  <40.636787, 44.158375, 35.961796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839947, 43.824215, 36.045845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689180, -0.247737, 0.680924,
		-0.516787, -0.490651, -0.701565,
		0.507900, -0.835397, 0.210120,
		40.992317, 43.573597, 36.108879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172119, 43.626514, 35.961998>,  <40.636787, 44.158375, 35.961796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172119, 43.626514, 35.961998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463985, 43.476177, 36.190498>,  <40.639107, 43.385975, 36.327599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463985, 43.476177, 36.190498>,  <40.172119, 43.626514, 35.961998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463985, 43.476177, 36.190498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680335, -0.315016, 0.661747,
		-0.068759, -0.871497, -0.485556,
		0.729668, -0.375841, 0.571250,
		40.682884, 43.363426, 36.361874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923073, 42.943890, 36.121449>,  <40.172119, 43.626514, 35.961998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923073, 42.943890, 36.121449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186985, 43.039688, 36.406357>,  <40.345333, 43.097168, 36.577301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186985, 43.039688, 36.406357>,  <39.923073, 42.943890, 36.121449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186985, 43.039688, 36.406357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522361, -0.535227, 0.663831,
		0.540210, -0.810046, -0.228031,
		0.659782, 0.239494, 0.712272,
		40.384918, 43.111538, 36.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981785, 42.347713, 36.495022>,  <39.923073, 42.943890, 36.121449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981785, 42.347713, 36.495022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156265, 42.609798, 36.741737>,  <40.260952, 42.767048, 36.889767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156265, 42.609798, 36.741737>,  <39.981785, 42.347713, 36.495022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156265, 42.609798, 36.741737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297294, -0.542008, 0.786030,
		0.849320, -0.526234, -0.041634,
		0.436201, 0.655214, 0.616784,
		40.287125, 42.806362, 36.926773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347382, 42.018742, 36.939175>,  <39.981785, 42.347713, 36.495022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347382, 42.018742, 36.939175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.244022, 42.371983, 37.095818>,  <40.182007, 42.583927, 37.189804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.244022, 42.371983, 37.095818>,  <40.347382, 42.018742, 36.939175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244022, 42.371983, 37.095818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431112, -0.468185, 0.771327,
		0.864508, 0.030481, 0.501695,
		-0.258397, 0.883105, 0.391609,
		40.166504, 42.636913, 37.213299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454506, 42.062973, 37.700066>,  <40.347382, 42.018742, 36.939175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454506, 42.062973, 37.700066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185513, 42.349991, 37.627518>,  <40.024117, 42.522202, 37.583988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185513, 42.349991, 37.627518>,  <40.454506, 42.062973, 37.700066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185513, 42.349991, 37.627518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536918, -0.304318, 0.786835,
		0.509398, 0.626511, 0.589913,
		-0.672482, 0.717547, -0.181366,
		39.983768, 42.565254, 37.573109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202106, 42.314423, 38.331135>,  <40.454506, 42.062973, 37.700066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202106, 42.314423, 38.331135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921101, 42.444443, 38.077892>,  <39.752499, 42.522453, 37.925949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921101, 42.444443, 38.077892>,  <40.202106, 42.314423, 38.331135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921101, 42.444443, 38.077892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711646, -0.313522, 0.628700,
		0.005865, 0.892216, 0.451571,
		-0.702514, 0.325046, -0.633103,
		39.710346, 42.541958, 37.887962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699146, 42.454342, 38.747437>,  <40.202106, 42.314423, 38.331135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699146, 42.454342, 38.747437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475414, 42.487045, 38.417477>,  <39.341175, 42.506668, 38.219501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475414, 42.487045, 38.417477>,  <39.699146, 42.454342, 38.747437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475414, 42.487045, 38.417477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819899, -0.201158, 0.536004,
		-0.122114, 0.976141, 0.179546,
		-0.559333, 0.081756, -0.824902,
		39.307613, 42.511574, 38.170006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050045, 42.928242, 38.952354>,  <39.699146, 42.454342, 38.747437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050045, 42.928242, 38.952354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999325, 42.717487, 38.616184>,  <38.968895, 42.591034, 38.414482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999325, 42.717487, 38.616184>,  <39.050045, 42.928242, 38.952354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999325, 42.717487, 38.616184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863520, -0.358295, 0.354908,
		-0.488116, 0.770725, -0.409545,
		-0.126798, -0.526886, -0.840425,
		38.961285, 42.559422, 38.364056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332680, 43.036282, 38.706909>,  <39.050045, 42.928242, 38.952354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332680, 43.036282, 38.706909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468143, 42.686188, 38.568764>,  <38.549419, 42.476131, 38.485878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468143, 42.686188, 38.568764>,  <38.332680, 43.036282, 38.706909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468143, 42.686188, 38.568764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853570, -0.440215, 0.278620,
		-0.395892, 0.200435, -0.896156,
		0.338656, -0.875235, -0.345363,
		38.569740, 42.423618, 38.465157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676380, 42.790222, 38.387024>,  <38.332680, 43.036282, 38.706909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676380, 42.790222, 38.387024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929470, 42.487270, 38.451572>,  <38.081322, 42.305500, 38.490303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929470, 42.487270, 38.451572>,  <37.676380, 42.790222, 38.387024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929470, 42.487270, 38.451572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664831, -0.424438, 0.614697,
		-0.397063, -0.496220, -0.772079,
		0.632725, -0.757375, 0.161374,
		38.119286, 42.260056, 38.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252647, 42.132130, 38.471119>,  <37.676380, 42.790222, 38.387024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252647, 42.132130, 38.471119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607231, 42.106773, 38.654499>,  <37.819981, 42.091560, 38.764526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607231, 42.106773, 38.654499>,  <37.252647, 42.132130, 38.471119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607231, 42.106773, 38.654499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449905, -0.350308, 0.821505,
		0.108525, -0.934487, -0.339051,
		0.886458, -0.063387, 0.458447,
		37.873169, 42.087757, 38.792034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302357, 41.503521, 38.755768>,  <37.252647, 42.132130, 38.471119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302357, 41.503521, 38.755768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556404, 41.726189, 38.969963>,  <37.708832, 41.859787, 39.098480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556404, 41.726189, 38.969963>,  <37.302357, 41.503521, 38.755768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556404, 41.726189, 38.969963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386694, -0.370979, 0.844300,
		0.668646, -0.743302, -0.020357,
		0.635122, 0.556665, 0.535484,
		37.746941, 41.893188, 39.130608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710346, 41.801193, 38.906250>,  <37.302357, 41.503521, 38.755768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710346, 41.801193, 38.906250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659809, 42.194641, 38.854832>,  <36.629486, 42.430710, 38.823982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659809, 42.194641, 38.854832>,  <36.710346, 41.801193, 38.906250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659809, 42.194641, 38.854832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144834, -0.146482, -0.978553,
		-0.981357, -0.105012, 0.160968,
		-0.126339, 0.983624, -0.128541,
		36.621906, 42.489727, 38.816269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098064, 41.851757, 38.620956>,  <36.710346, 41.801193, 38.906250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098064, 41.851757, 38.620956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282021, 42.196198, 38.534237>,  <36.392395, 42.402863, 38.482204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282021, 42.196198, 38.534237>,  <36.098064, 41.851757, 38.620956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282021, 42.196198, 38.534237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173108, -0.152520, -0.973022,
		-0.870938, 0.485014, 0.078921,
		0.459892, 0.861103, -0.216795,
		36.419987, 42.454529, 38.469200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522038, 42.144051, 38.185539>,  <36.098064, 41.851757, 38.620956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522038, 42.144051, 38.185539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887009, 42.299046, 38.132896>,  <36.105991, 42.392044, 38.101311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887009, 42.299046, 38.132896>,  <35.522038, 42.144051, 38.185539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887009, 42.299046, 38.132896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044411, -0.225935, -0.973129,
		-0.406813, 0.893758, -0.188942,
		0.912431, 0.387491, -0.131606,
		36.160740, 42.415291, 38.093414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399712, 42.444592, 37.647846>,  <35.522038, 42.144051, 38.185539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399712, 42.444592, 37.647846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799187, 42.454582, 37.665737>,  <36.038872, 42.460575, 37.676472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799187, 42.454582, 37.665737>,  <35.399712, 42.444592, 37.647846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799187, 42.454582, 37.665737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050818, -0.373133, -0.926385,
		-0.006451, 0.927442, -0.373913,
		0.998687, 0.024978, 0.044724,
		36.098793, 42.462074, 37.679153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595657, 42.695866, 37.000919>,  <35.399712, 42.444592, 37.647846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595657, 42.695866, 37.000919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956276, 42.559834, 37.107918>,  <36.172649, 42.478214, 37.172115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956276, 42.559834, 37.107918>,  <35.595657, 42.695866, 37.000919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956276, 42.559834, 37.107918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205426, -0.207678, -0.956384,
		0.380799, 0.917178, -0.117371,
		0.901550, -0.340079, 0.267496,
		36.226742, 42.457809, 37.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025780, 42.908878, 36.415031>,  <35.595657, 42.695866, 37.000919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025780, 42.908878, 36.415031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260742, 42.640289, 36.595730>,  <36.401722, 42.479137, 36.704151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260742, 42.640289, 36.595730>,  <36.025780, 42.908878, 36.415031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260742, 42.640289, 36.595730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359760, -0.283360, -0.888977,
		0.724930, 0.684714, 0.075120,
		0.587409, -0.671471, 0.451749,
		36.436966, 42.438847, 36.731255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673828, 43.035728, 36.259460>,  <36.025780, 42.908878, 36.415031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673828, 43.035728, 36.259460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669899, 42.644676, 36.343491>,  <36.667542, 42.410046, 36.393909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669899, 42.644676, 36.343491>,  <36.673828, 43.035728, 36.259460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669899, 42.644676, 36.343491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365775, -0.199043, -0.909170,
		0.930652, 0.067909, 0.359550,
		-0.009825, -0.977635, 0.210079,
		36.666950, 42.351387, 36.406513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297398, 42.727020, 36.119308>,  <36.673828, 43.035728, 36.259460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297398, 42.727020, 36.119308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037811, 42.422844, 36.109657>,  <36.882061, 42.240337, 36.103867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037811, 42.422844, 36.109657>,  <37.297398, 42.727020, 36.119308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037811, 42.422844, 36.109657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399557, -0.313659, -0.861378,
		0.647456, -0.568643, 0.507391,
		-0.648964, -0.760437, -0.024125,
		36.843121, 42.194714, 36.102421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634823, 42.143658, 35.911350>,  <37.297398, 42.727020, 36.119308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634823, 42.143658, 35.911350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252060, 42.046112, 35.848274>,  <37.022404, 41.987583, 35.810429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252060, 42.046112, 35.848274>,  <37.634823, 42.143658, 35.911350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252060, 42.046112, 35.848274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243665, -0.378796, -0.892828,
		0.157996, -0.892773, 0.421892,
		-0.956904, -0.243864, -0.157689,
		36.964989, 41.972954, 35.800968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653233, 41.368336, 35.670753>,  <37.634823, 42.143658, 35.911350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653233, 41.368336, 35.670753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.316227, 41.548985, 35.553314>,  <37.114021, 41.657375, 35.482849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.316227, 41.548985, 35.553314>,  <37.653233, 41.368336, 35.670753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316227, 41.548985, 35.553314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149736, -0.327213, -0.933011,
		-0.517437, -0.830042, 0.208059,
		-0.842518, 0.451621, -0.293600,
		37.063473, 41.684471, 35.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282455, 40.912289, 35.128017>,  <37.653233, 41.368336, 35.670753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282455, 40.912289, 35.128017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145409, 41.279720, 35.049194>,  <37.063179, 41.500179, 35.001900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145409, 41.279720, 35.049194>,  <37.282455, 40.912289, 35.128017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145409, 41.279720, 35.049194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023492, -0.201314, -0.979245,
		-0.939180, -0.340138, 0.047395,
		-0.342619, 0.918574, -0.197060,
		37.042622, 41.555294, 34.990078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922642, 40.893353, 34.473431>,  <37.282455, 40.912289, 35.128017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922642, 40.893353, 34.473431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921307, 41.292244, 34.503139>,  <36.920506, 41.531578, 34.520966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921307, 41.292244, 34.503139>,  <36.922642, 40.893353, 34.473431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921307, 41.292244, 34.503139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032938, 0.074127, -0.996705,
		-0.999452, -0.005772, 0.032600,
		-0.003337, 0.997232, 0.074276,
		36.920307, 41.591415, 34.525421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461487, 41.129906, 34.015598>,  <36.922642, 40.893353, 34.473431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461487, 41.129906, 34.015598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669449, 41.467857, 34.066006>,  <36.794228, 41.670628, 34.096249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669449, 41.467857, 34.066006>,  <36.461487, 41.129906, 34.015598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669449, 41.467857, 34.066006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059728, 0.111206, -0.992001,
		-0.852132, 0.523275, 0.007354,
		0.519908, 0.844876, 0.126016,
		36.825420, 41.721321, 34.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150654, 41.663456, 33.470875>,  <36.461487, 41.129906, 34.015598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150654, 41.663456, 33.470875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495544, 41.830688, 33.585255>,  <36.702480, 41.931026, 33.653885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495544, 41.830688, 33.585255>,  <36.150654, 41.663456, 33.470875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495544, 41.830688, 33.585255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186018, 0.263734, -0.946489,
		-0.471123, 0.869284, 0.149629,
		0.862230, 0.418079, 0.285953,
		36.754215, 41.956112, 33.671040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470135, 42.031296, 33.310040>,  <36.150654, 41.663456, 33.470875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470135, 42.031296, 33.310040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.323826, 41.713848, 33.115559>,  <35.236042, 41.523380, 32.998871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.323826, 41.713848, 33.115559>,  <35.470135, 42.031296, 33.310040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323826, 41.713848, 33.115559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114058, -0.480239, 0.869691,
		-0.923691, 0.373560, 0.085138,
		-0.365768, -0.793614, -0.486199,
		35.214096, 41.475765, 32.969700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877693, 41.818615, 33.752697>,  <35.470135, 42.031296, 33.310040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877693, 41.818615, 33.752697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 41.511211, 33.514477>,  <35.027401, 41.326771, 33.371544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 41.511211, 33.514477>,  <34.877693, 41.818615, 33.752697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971260, 41.511211, 33.514477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225595, -0.638731, 0.735616,
		-0.945721, -0.037722, -0.322782,
		0.233920, -0.768506, -0.595551,
		35.041435, 41.280659, 33.335812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402569, 41.294563, 33.866280>,  <34.877693, 41.818615, 33.752697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402569, 41.294563, 33.866280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.703968, 41.081566, 33.712040>,  <34.884808, 40.953766, 33.619495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.703968, 41.081566, 33.712040>,  <34.402569, 41.294563, 33.866280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703968, 41.081566, 33.712040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174635, -0.727547, 0.663459,
		-0.633829, -0.432578, -0.641200,
		0.753501, -0.532495, -0.385598,
		34.930019, 40.921818, 33.596359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215099, 40.625443, 33.828369>,  <34.402569, 41.294563, 33.866280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215099, 40.625443, 33.828369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609440, 40.563156, 33.803532>,  <34.846043, 40.525784, 33.788631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609440, 40.563156, 33.803532>,  <34.215099, 40.625443, 33.828369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609440, 40.563156, 33.803532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109648, -0.879132, 0.463793,
		-0.126804, -0.450422, -0.883765,
		0.985849, -0.155714, -0.062089,
		34.905193, 40.516441, 33.784904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329063, 39.951130, 33.574020>,  <34.215099, 40.625443, 33.828369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329063, 39.951130, 33.574020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655590, 40.068329, 33.773132>,  <34.851505, 40.138649, 33.892597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655590, 40.068329, 33.773132>,  <34.329063, 39.951130, 33.574020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655590, 40.068329, 33.773132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078913, -0.797140, 0.598615,
		0.572189, -0.527940, -0.627597,
		0.816316, 0.292995, 0.497777,
		34.900486, 40.156227, 33.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699429, 39.432587, 33.644379>,  <34.329063, 39.951130, 33.574020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699429, 39.432587, 33.644379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836178, 39.663208, 33.941216>,  <34.918228, 39.801582, 34.119320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836178, 39.663208, 33.941216>,  <34.699429, 39.432587, 33.644379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836178, 39.663208, 33.941216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032396, -0.781975, 0.622467,
		0.939187, -0.236847, -0.248660,
		0.341876, 0.576557, 0.742094,
		34.938740, 39.836174, 34.163845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157391, 39.014271, 34.036453>,  <34.699429, 39.432587, 33.644379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157391, 39.014271, 34.036453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048767, 39.283466, 34.311653>,  <34.983593, 39.444984, 34.476772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048767, 39.283466, 34.311653>,  <35.157391, 39.014271, 34.036453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048767, 39.283466, 34.311653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008754, -0.716561, 0.697470,
		0.962383, 0.183379, 0.200478,
		-0.271556, 0.672988, 0.688001,
		34.967300, 39.485363, 34.518055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631470, 38.943283, 34.620445>,  <35.157391, 39.014271, 34.036453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631470, 38.943283, 34.620445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288288, 39.111244, 34.738831>,  <35.082378, 39.212021, 34.809860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288288, 39.111244, 34.738831>,  <35.631470, 38.943283, 34.620445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288288, 39.111244, 34.738831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002596, -0.572557, 0.819861,
		0.513718, 0.704172, 0.490139,
		-0.857955, 0.419905, 0.295961,
		35.030903, 39.237217, 34.827618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774406, 38.929516, 35.381168>,  <35.631470, 38.943283, 34.620445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774406, 38.929516, 35.381168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.385223, 39.017071, 35.351635>,  <35.151714, 39.069603, 35.333916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.385223, 39.017071, 35.351635>,  <35.774406, 38.929516, 35.381168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385223, 39.017071, 35.351635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202105, -0.651807, 0.730959,
		0.111872, 0.726110, 0.678416,
		-0.972953, 0.218885, -0.073831,
		35.093338, 39.082737, 35.329487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553467, 39.222397, 36.037838>,  <35.774406, 38.929516, 35.381168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553467, 39.222397, 36.037838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219360, 39.090481, 35.861855>,  <35.018898, 39.011330, 35.756264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219360, 39.090481, 35.861855>,  <35.553467, 39.222397, 36.037838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219360, 39.090481, 35.861855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094198, -0.702498, 0.705424,
		-0.541717, 0.630660, 0.555707,
		-0.835266, -0.329794, -0.439962,
		34.968781, 38.991543, 35.729866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000885, 39.343021, 36.435883>,  <35.553467, 39.222397, 36.037838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000885, 39.343021, 36.435883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920357, 39.018803, 36.215889>,  <34.872040, 38.824272, 36.083893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920357, 39.018803, 36.215889>,  <35.000885, 39.343021, 36.435883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920357, 39.018803, 36.215889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108804, -0.539501, 0.834926,
		-0.973463, 0.227929, 0.020422,
		-0.201322, -0.810547, -0.549984,
		34.859959, 38.775639, 36.050896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460888, 39.020470, 36.741802>,  <35.000885, 39.343021, 36.435883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460888, 39.020470, 36.741802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626511, 38.737663, 36.512482>,  <34.725883, 38.567978, 36.374889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626511, 38.737663, 36.512482>,  <34.460888, 39.020470, 36.741802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626511, 38.737663, 36.512482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194466, -0.684000, 0.703084,
		-0.889235, -0.179629, -0.420707,
		0.414058, -0.707020, -0.573305,
		34.750729, 38.525558, 36.340488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.321609, 43.187557, 29.774710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489540, 42.846703, 29.649734>,  <35.590298, 42.642189, 29.574749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489540, 42.846703, 29.649734>,  <35.321609, 43.187557, 29.774710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489540, 42.846703, 29.649734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519155, -0.507830, 0.687450,
		-0.744464, -0.126403, -0.655588,
		0.419823, -0.852133, -0.312438,
		35.615486, 42.591064, 29.556004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853939, 42.707802, 29.883068>,  <35.321609, 43.187557, 29.774710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853939, 42.707802, 29.883068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179974, 42.480869, 29.836149>,  <35.375595, 42.344707, 29.807997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179974, 42.480869, 29.836149>,  <34.853939, 42.707802, 29.883068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179974, 42.480869, 29.836149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280322, -0.563417, 0.777162,
		-0.507001, -0.600575, -0.618272,
		0.815089, -0.567337, -0.117299,
		35.424500, 42.310669, 29.800961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646267, 42.021702, 29.997181>,  <34.853939, 42.707802, 29.883068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646267, 42.021702, 29.997181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041801, 42.001526, 30.053253>,  <35.279121, 41.989422, 30.086897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041801, 42.001526, 30.053253>,  <34.646267, 42.021702, 29.997181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041801, 42.001526, 30.053253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147465, -0.465176, 0.872849,
		0.021186, -0.883780, -0.467423,
		0.988840, -0.050437, 0.140182,
		35.338455, 41.986393, 30.095308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846478, 41.336121, 29.970827>,  <34.646267, 42.021702, 29.997181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846478, 41.336121, 29.970827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119385, 41.545704, 30.174776>,  <35.283131, 41.671455, 30.297146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119385, 41.545704, 30.174776>,  <34.846478, 41.336121, 29.970827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119385, 41.545704, 30.174776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196027, -0.540766, 0.818013,
		0.704330, -0.658055, -0.266238,
		0.682270, 0.523962, 0.509874,
		35.324066, 41.702892, 30.327738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062057, 40.919979, 30.527224>,  <34.846478, 41.336121, 29.970827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062057, 40.919979, 30.527224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243927, 41.249306, 30.663118>,  <35.353050, 41.446903, 30.744656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243927, 41.249306, 30.663118>,  <35.062057, 40.919979, 30.527224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243927, 41.249306, 30.663118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117136, -0.322854, 0.939172,
		0.882921, -0.466813, -0.050354,
		0.454675, 0.823317, 0.339735,
		35.380329, 41.496300, 30.765039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687634, 40.690834, 30.926329>,  <35.062057, 40.919979, 30.527224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687634, 40.690834, 30.926329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564579, 41.057636, 31.027889>,  <35.490746, 41.277718, 31.088825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564579, 41.057636, 31.027889>,  <35.687634, 40.690834, 30.926329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564579, 41.057636, 31.027889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105750, -0.298141, 0.948646,
		0.945610, 0.264985, 0.188691,
		-0.307634, 0.917003, 0.253903,
		35.472290, 41.332737, 31.104061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066994, 40.891731, 31.589769>,  <35.687634, 40.690834, 30.926329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066994, 40.891731, 31.589769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765259, 41.153881, 31.574520>,  <35.584217, 41.311172, 31.565371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765259, 41.153881, 31.574520>,  <36.066994, 40.891731, 31.589769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765259, 41.153881, 31.574520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271309, -0.258346, 0.927172,
		0.597796, 0.709748, 0.372690,
		-0.754342, 0.655374, -0.038123,
		35.538956, 41.350494, 31.563084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165985, 41.397305, 32.110771>,  <36.066994, 40.891731, 31.589769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165985, 41.397305, 32.110771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771248, 41.409698, 32.047295>,  <35.534405, 41.417133, 32.009209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771248, 41.409698, 32.047295>,  <36.165985, 41.397305, 32.110771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771248, 41.409698, 32.047295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161650, -0.210809, 0.964069,
		-0.003586, 0.977036, 0.213043,
		-0.986842, 0.030982, -0.158694,
		35.475197, 41.418991, 31.999687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075287, 41.741486, 32.699089>,  <36.165985, 41.397305, 32.110771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075287, 41.741486, 32.699089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721607, 41.591003, 32.588341>,  <35.509399, 41.500713, 32.521893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721607, 41.591003, 32.588341>,  <36.075287, 41.741486, 32.699089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721607, 41.591003, 32.588341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143336, -0.345613, 0.927365,
		-0.444574, 0.859662, 0.251666,
		-0.884199, -0.376210, -0.276871,
		35.456348, 41.478142, 32.505280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228077, 42.403675, 33.209057>,  <36.075287, 41.741486, 32.699089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228077, 42.403675, 33.209057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608131, 42.302227, 33.281635>,  <36.836163, 42.241360, 33.325184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608131, 42.302227, 33.281635>,  <36.228077, 42.403675, 33.209057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608131, 42.302227, 33.281635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257009, 0.307331, -0.916239,
		0.176611, 0.917184, 0.357188,
		0.950134, -0.253618, 0.181447,
		36.893173, 42.226143, 33.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552231, 42.980217, 32.907310>,  <36.228077, 42.403675, 33.209057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552231, 42.980217, 32.907310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816986, 42.682995, 32.946857>,  <36.975838, 42.504662, 32.970585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816986, 42.682995, 32.946857>,  <36.552231, 42.980217, 32.907310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816986, 42.682995, 32.946857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396691, 0.235308, -0.887280,
		0.636034, 0.626499, 0.450511,
		0.661889, -0.743054, 0.098863,
		37.015553, 42.460079, 32.976517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210342, 43.371342, 32.778751>,  <36.552231, 42.980217, 32.907310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210342, 43.371342, 32.778751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272110, 42.979839, 32.724812>,  <37.309170, 42.744938, 32.692448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272110, 42.979839, 32.724812>,  <37.210342, 43.371342, 32.778751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272110, 42.979839, 32.724812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632795, 0.202796, -0.747291,
		0.758765, 0.030069, 0.650670,
		0.154423, -0.978759, -0.134847,
		37.318436, 42.686211, 32.684357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873066, 43.268181, 32.726849>,  <37.210342, 43.371342, 32.778751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873066, 43.268181, 32.726849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741692, 42.934647, 32.549377>,  <37.662868, 42.734528, 32.442894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741692, 42.934647, 32.549377>,  <37.873066, 43.268181, 32.726849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741692, 42.934647, 32.549377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632996, 0.154326, -0.758617,
		0.701033, -0.529999, 0.477130,
		-0.328433, -0.833837, -0.443675,
		37.643162, 42.684494, 32.416275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479214, 42.967693, 32.440754>,  <37.873066, 43.268181, 32.726849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479214, 42.967693, 32.440754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161209, 42.826557, 32.243385>,  <37.970406, 42.741875, 32.124966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161209, 42.826557, 32.243385>,  <38.479214, 42.967693, 32.440754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161209, 42.826557, 32.243385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521711, 0.017280, -0.852947,
		0.309478, -0.935525, 0.170341,
		-0.795010, -0.352837, -0.493422,
		37.922707, 42.720707, 32.095360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765656, 42.384396, 32.179806>,  <38.479214, 42.967693, 32.440754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765656, 42.384396, 32.179806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459229, 42.519978, 31.961359>,  <38.275372, 42.601326, 31.830290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459229, 42.519978, 31.961359>,  <38.765656, 42.384396, 32.179806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459229, 42.519978, 31.961359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598005, 0.064366, -0.798903,
		-0.235637, -0.938600, -0.252004,
		-0.766071, 0.338951, -0.546121,
		38.229408, 42.621662, 31.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787586, 41.955570, 31.496395>,  <38.765656, 42.384396, 32.179806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787586, 41.955570, 31.496395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564892, 42.284626, 31.450266>,  <38.431274, 42.482059, 31.422588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564892, 42.284626, 31.450266>,  <38.787586, 41.955570, 31.496395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564892, 42.284626, 31.450266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275562, 0.051932, -0.959879,
		-0.783650, -0.566181, -0.255602,
		-0.556739, 0.822643, -0.115322,
		38.397869, 42.531418, 31.415668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446152, 41.941772, 30.797827>,  <38.787586, 41.955570, 31.496395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446152, 41.941772, 30.797827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398724, 42.327194, 30.893747>,  <38.370266, 42.558449, 30.951300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398724, 42.327194, 30.893747>,  <38.446152, 41.941772, 30.797827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398724, 42.327194, 30.893747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227284, 0.261431, -0.938081,
		-0.966583, -0.056730, -0.250000,
		-0.118575, 0.963553, 0.239801,
		38.363152, 42.616261, 30.965687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163479, 42.216206, 30.146336>,  <38.446152, 41.941772, 30.797827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163479, 42.216206, 30.146336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324413, 42.522511, 30.347027>,  <38.420975, 42.706295, 30.467442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324413, 42.522511, 30.347027>,  <38.163479, 42.216206, 30.146336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324413, 42.522511, 30.347027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334920, 0.386937, -0.859133,
		-0.852030, 0.513698, -0.100791,
		0.402335, 0.765764, 0.501730,
		38.445114, 42.752239, 30.497545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977921, 42.781017, 29.746418>,  <38.163479, 42.216206, 30.146336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977921, 42.781017, 29.746418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291302, 42.892967, 29.968363>,  <38.479328, 42.960136, 30.101530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291302, 42.892967, 29.968363>,  <37.977921, 42.781017, 29.746418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291302, 42.892967, 29.968363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379319, 0.491877, -0.783693,
		-0.492263, 0.824455, 0.279198,
		0.783450, 0.279878, 0.554864,
		38.526337, 42.976929, 30.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130714, 43.470551, 29.506172>,  <37.977921, 42.781017, 29.746418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130714, 43.470551, 29.506172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472885, 43.382919, 29.693895>,  <38.678188, 43.330341, 29.806530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472885, 43.382919, 29.693895>,  <38.130714, 43.470551, 29.506172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472885, 43.382919, 29.693895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492768, 0.623224, -0.607266,
		-0.159447, 0.750731, 0.641076,
		0.855428, -0.219075, 0.469307,
		38.729515, 43.317196, 29.834688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494488, 44.103291, 29.684301>,  <38.130714, 43.470551, 29.506172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494488, 44.103291, 29.684301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800705, 43.845963, 29.680622>,  <38.984436, 43.691566, 29.678415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800705, 43.845963, 29.680622>,  <38.494488, 44.103291, 29.684301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800705, 43.845963, 29.680622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447368, 0.542522, -0.711008,
		0.462398, 0.540189, 0.703124,
		0.765539, -0.643324, -0.009198,
		39.030365, 43.652966, 29.677862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092728, 44.518810, 29.583874>,  <38.494488, 44.103291, 29.684301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092728, 44.518810, 29.583874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235836, 44.157658, 29.488535>,  <39.321701, 43.940968, 29.431332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235836, 44.157658, 29.488535>,  <39.092728, 44.518810, 29.583874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235836, 44.157658, 29.488535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681620, 0.426962, -0.594220,
		0.638274, 0.050134, 0.768175,
		0.357773, -0.902879, -0.238346,
		39.343166, 43.886795, 29.417030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778133, 44.570755, 29.659828>,  <39.092728, 44.518810, 29.583874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778133, 44.570755, 29.659828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699451, 44.262123, 29.417847>,  <39.652241, 44.076942, 29.272657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699451, 44.262123, 29.417847>,  <39.778133, 44.570755, 29.659828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699451, 44.262123, 29.417847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779610, 0.251081, -0.573730,
		0.594572, -0.584484, 0.552144,
		-0.196703, -0.771581, -0.604955,
		39.640442, 44.030647, 29.236361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.964741, 38.382130, 28.762615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799503, 38.745956, 28.780731>,  <41.700359, 38.964252, 28.791601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799503, 38.745956, 28.780731>,  <41.964741, 38.382130, 28.762615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799503, 38.745956, 28.780731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010730, -0.044868, 0.998935,
		0.910626, 0.413138, 0.008775,
		-0.413092, 0.909562, 0.045291,
		41.675575, 39.018826, 28.794319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333679, 38.655186, 29.386545>,  <41.964741, 38.382130, 28.762615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333679, 38.655186, 29.386545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.997128, 38.859917, 29.317131>,  <41.795197, 38.982758, 29.275482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.997128, 38.859917, 29.317131>,  <42.333679, 38.655186, 29.386545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997128, 38.859917, 29.317131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162924, 0.065946, 0.984432,
		0.515306, 0.856552, 0.027903,
		-0.841377, 0.511830, -0.173535,
		41.744713, 39.013466, 29.265070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340736, 39.151577, 29.940722>,  <42.333679, 38.655186, 29.386545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340736, 39.151577, 29.940722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.970791, 39.135475, 29.789454>,  <41.748825, 39.125813, 29.698692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.970791, 39.135475, 29.789454>,  <42.340736, 39.151577, 29.940722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970791, 39.135475, 29.789454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371603, -0.115866, 0.921133,
		-0.080899, 0.992449, 0.092201,
		-0.924860, -0.040257, -0.378170,
		41.693333, 39.123398, 29.676003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880917, 39.499630, 30.431221>,  <42.340736, 39.151577, 29.940722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880917, 39.499630, 30.431221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624634, 39.303707, 30.194717>,  <41.470863, 39.186153, 30.052816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624634, 39.303707, 30.194717>,  <41.880917, 39.499630, 30.431221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624634, 39.303707, 30.194717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645375, -0.073591, 0.760313,
		-0.415919, 0.868719, -0.268960,
		-0.640705, -0.489809, -0.591257,
		41.432423, 39.156765, 30.017340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270626, 39.819157, 30.484821>,  <41.880917, 39.499630, 30.431221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270626, 39.819157, 30.484821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173107, 39.453423, 30.355476>,  <41.114597, 39.233982, 30.277870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173107, 39.453423, 30.355476>,  <41.270626, 39.819157, 30.484821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173107, 39.453423, 30.355476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604519, -0.117456, 0.787884,
		-0.758368, 0.387561, -0.524095,
		-0.243795, -0.914331, -0.323362,
		41.099968, 39.179123, 30.258467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433704, 39.714947, 30.555796>,  <41.270626, 39.819157, 30.484821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433704, 39.714947, 30.555796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576950, 39.342239, 30.531958>,  <40.662899, 39.118614, 30.517654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576950, 39.342239, 30.531958>,  <40.433704, 39.714947, 30.555796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576950, 39.342239, 30.531958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619401, -0.284853, 0.731575,
		-0.698637, -0.225075, -0.679152,
		0.358118, -0.931773, -0.059597,
		40.684387, 39.062706, 30.514078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827099, 39.230270, 30.687263>,  <40.433704, 39.714947, 30.555796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827099, 39.230270, 30.687263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127003, 38.967892, 30.722126>,  <40.306946, 38.810463, 30.743044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127003, 38.967892, 30.722126>,  <39.827099, 39.230270, 30.687263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127003, 38.967892, 30.722126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430228, -0.383155, 0.817372,
		-0.502758, -0.650328, -0.569480,
		0.749758, -0.655947, 0.087155,
		40.351929, 38.771107, 30.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526566, 38.638920, 30.831497>,  <39.827099, 39.230270, 30.687263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526566, 38.638920, 30.831497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903614, 38.591301, 30.956264>,  <40.129845, 38.562729, 31.031126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903614, 38.591301, 30.956264>,  <39.526566, 38.638920, 30.831497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903614, 38.591301, 30.956264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332704, -0.412813, 0.847876,
		0.027830, -0.903003, -0.428732,
		0.942621, -0.119044, 0.311921,
		40.186401, 38.555588, 31.049841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545597, 38.021431, 31.081139>,  <39.526566, 38.638920, 30.831497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545597, 38.021431, 31.081139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858429, 38.188168, 31.266434>,  <40.046127, 38.288212, 31.377611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858429, 38.188168, 31.266434>,  <39.545597, 38.021431, 31.081139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858429, 38.188168, 31.266434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325072, -0.361313, 0.873946,
		0.531673, -0.834082, -0.147072,
		0.782082, 0.416845, 0.463237,
		40.093052, 38.313221, 31.405405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802971, 37.508682, 31.468725>,  <39.545597, 38.021431, 31.081139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802971, 37.508682, 31.468725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944599, 37.843304, 31.635965>,  <40.029575, 38.044075, 31.736309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944599, 37.843304, 31.635965>,  <39.802971, 37.508682, 31.468725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944599, 37.843304, 31.635965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217953, -0.360940, 0.906763,
		0.909466, -0.412187, 0.054530,
		0.354074, 0.836555, 0.418100,
		40.050823, 38.094269, 31.761395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160549, 37.315369, 32.076885>,  <39.802971, 37.508682, 31.468725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160549, 37.315369, 32.076885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086430, 37.703663, 32.137997>,  <40.041958, 37.936638, 32.174664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086430, 37.703663, 32.137997>,  <40.160549, 37.315369, 32.076885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086430, 37.703663, 32.137997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131412, -0.178551, 0.975115,
		0.973855, 0.160612, 0.160652,
		-0.185300, 0.970733, 0.152777,
		40.030838, 37.994884, 32.183830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498779, 37.516834, 32.713963>,  <40.160549, 37.315369, 32.076885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498779, 37.516834, 32.713963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197006, 37.758373, 32.611050>,  <40.015942, 37.903297, 32.549301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197006, 37.758373, 32.611050>,  <40.498779, 37.516834, 32.713963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197006, 37.758373, 32.611050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393531, -0.102416, 0.913589,
		0.525319, 0.790492, 0.314899,
		-0.754436, 0.603848, -0.257282,
		39.970676, 37.939529, 32.533867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445072, 38.013794, 33.215641>,  <40.498779, 37.516834, 32.713963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445072, 38.013794, 33.215641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.085381, 38.049610, 33.044353>,  <39.869564, 38.071098, 32.941582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.085381, 38.049610, 33.044353>,  <40.445072, 38.013794, 33.215641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085381, 38.049610, 33.044353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434298, -0.064887, 0.898429,
		0.052661, 0.993867, 0.097236,
		-0.899229, 0.089541, -0.428218,
		39.815613, 38.076473, 32.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144417, 38.647697, 33.525787>,  <40.445072, 38.013794, 33.215641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144417, 38.647697, 33.525787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857033, 38.409981, 33.381214>,  <39.684601, 38.267353, 33.294472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857033, 38.409981, 33.381214>,  <40.144417, 38.647697, 33.525787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857033, 38.409981, 33.381214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440797, -0.012949, 0.897513,
		-0.538062, 0.804148, -0.252657,
		-0.718462, -0.594288, -0.361433,
		39.641495, 38.231693, 33.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060265, 39.292904, 33.893784>,  <40.144417, 38.647697, 33.525787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060265, 39.292904, 33.893784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.386600, 39.386799, 34.105183>,  <40.582401, 39.443134, 34.232021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.386600, 39.386799, 34.105183>,  <40.060265, 39.292904, 33.893784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386600, 39.386799, 34.105183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497016, 0.182539, -0.848325,
		-0.295602, 0.954766, 0.032256,
		0.815840, 0.234735, 0.528493,
		40.631351, 39.457218, 34.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370674, 39.951588, 33.674500>,  <40.060265, 39.292904, 33.893784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370674, 39.951588, 33.674500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673801, 39.737041, 33.823112>,  <40.855679, 39.608315, 33.912281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673801, 39.737041, 33.823112>,  <40.370674, 39.951588, 33.674500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673801, 39.737041, 33.823112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556435, 0.233906, -0.797288,
		0.340732, 0.810927, 0.475708,
		0.757814, -0.536363, 0.371529,
		40.901146, 39.576134, 33.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945648, 40.309574, 33.513718>,  <40.370674, 39.951588, 33.674500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945648, 40.309574, 33.513718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.215065, 40.053555, 33.661598>,  <41.376713, 39.899940, 33.750324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.215065, 40.053555, 33.661598>,  <40.945648, 40.309574, 33.513718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215065, 40.053555, 33.661598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626327, 0.228615, -0.745285,
		0.392504, 0.733530, 0.554864,
		0.673539, -0.640053, 0.369697,
		41.417126, 39.861538, 33.772507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614655, 40.669514, 33.583466>,  <40.945648, 40.309574, 33.513718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614655, 40.669514, 33.583466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669357, 40.274212, 33.556160>,  <41.702179, 40.037033, 33.539776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669357, 40.274212, 33.556160>,  <41.614655, 40.669514, 33.583466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669357, 40.274212, 33.556160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676967, 0.143541, -0.721880,
		0.723197, 0.052509, 0.688643,
		0.136754, -0.988250, -0.068261,
		41.710384, 39.977737, 33.535683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285744, 40.546741, 33.434284>,  <41.614655, 40.669514, 33.583466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285744, 40.546741, 33.434284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.175087, 40.170364, 33.356220>,  <42.108692, 39.944538, 33.309380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.175087, 40.170364, 33.356220>,  <42.285744, 40.546741, 33.434284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175087, 40.170364, 33.356220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730438, -0.073924, -0.678966,
		0.624444, -0.330384, 0.707754,
		-0.276640, -0.940947, -0.195163,
		42.092094, 39.888081, 33.297672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883335, 40.195271, 33.392895>,  <42.285744, 40.546741, 33.434284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883335, 40.195271, 33.392895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.611320, 39.988152, 33.185268>,  <42.448112, 39.863880, 33.060692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.611320, 39.988152, 33.185268>,  <42.883335, 40.195271, 33.392895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611320, 39.988152, 33.185268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653835, -0.107959, -0.748896,
		0.331741, -0.848661, 0.411973,
		-0.680035, -0.517802, -0.519070,
		42.407310, 39.832809, 33.029549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197659, 39.564133, 33.075195>,  <42.883335, 40.195271, 33.392895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197659, 39.564133, 33.075195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.873756, 39.645832, 32.855167>,  <42.679417, 39.694851, 32.723148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.873756, 39.645832, 32.855167>,  <43.197659, 39.564133, 33.075195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873756, 39.645832, 32.855167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561278, -0.003688, -0.827619,
		-0.171067, -0.978912, -0.111653,
		-0.809755, 0.204247, -0.550073,
		42.630829, 39.707108, 32.690147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347443, 39.295124, 32.520840>,  <43.197659, 39.564133, 33.075195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347443, 39.295124, 32.520840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.040760, 39.516769, 32.391151>,  <42.856750, 39.649757, 32.313339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.040760, 39.516769, 32.391151>,  <43.347443, 39.295124, 32.520840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040760, 39.516769, 32.391151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491914, 0.182541, -0.851293,
		-0.412532, -0.812179, -0.412533,
		-0.766706, 0.554116, -0.324218,
		42.810749, 39.683002, 32.293884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258041, 39.154510, 31.761786>,  <43.347443, 39.295124, 32.520840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258041, 39.154510, 31.761786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.082676, 39.508110, 31.826702>,  <42.977455, 39.720268, 31.865652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.082676, 39.508110, 31.826702>,  <43.258041, 39.154510, 31.761786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082676, 39.508110, 31.826702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407511, 0.356459, -0.840757,
		-0.801077, -0.302467, -0.516516,
		-0.438418, 0.883997, 0.162292,
		42.951149, 39.773308, 31.875389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977959, 39.275558, 31.201696>,  <43.258041, 39.154510, 31.761786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977959, 39.275558, 31.201696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.022522, 39.638592, 31.363623>,  <43.049259, 39.856411, 31.460779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.022522, 39.638592, 31.363623>,  <42.977959, 39.275558, 31.201696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022522, 39.638592, 31.363623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291750, 0.359531, -0.886352,
		-0.949984, 0.216853, -0.224733,
		0.111410, 0.907586, 0.404815,
		43.055946, 39.910866, 31.485067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485374, 39.751617, 30.858881>,  <42.977959, 39.275558, 31.201696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485374, 39.751617, 30.858881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.793091, 39.950859, 31.018917>,  <42.977722, 40.070404, 31.114939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.793091, 39.950859, 31.018917>,  <42.485374, 39.751617, 30.858881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793091, 39.950859, 31.018917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175424, 0.437475, -0.881953,
		-0.614338, 0.748668, 0.249168,
		0.769295, 0.498108, 0.400092,
		43.023880, 40.100292, 31.138945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267387, 40.352684, 30.717821>,  <42.485374, 39.751617, 30.858881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267387, 40.352684, 30.717821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660736, 40.366493, 30.789145>,  <42.896744, 40.374779, 30.831938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660736, 40.366493, 30.789145>,  <42.267387, 40.352684, 30.717821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660736, 40.366493, 30.789145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145023, 0.441765, -0.885332,
		-0.109336, 0.896467, 0.429411,
		0.983369, 0.034525, 0.178309,
		42.955746, 40.376850, 30.842638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454525, 41.032917, 30.547768>,  <42.267387, 40.352684, 30.717821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454525, 41.032917, 30.547768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.813602, 40.856709, 30.551451>,  <43.029049, 40.750984, 30.553659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.813602, 40.856709, 30.551451>,  <42.454525, 41.032917, 30.547768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813602, 40.856709, 30.551451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196524, 0.381607, -0.903191,
		0.394358, 0.812601, 0.429140,
		0.897697, -0.440517, 0.009206,
		43.082912, 40.724552, 30.554213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904320, 41.557240, 30.352201>,  <42.454525, 41.032917, 30.547768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904320, 41.557240, 30.352201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.051220, 41.199211, 30.251026>,  <43.139362, 40.984394, 30.190321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.051220, 41.199211, 30.251026>,  <42.904320, 41.557240, 30.352201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051220, 41.199211, 30.251026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080737, 0.301592, -0.950013,
		0.926610, 0.328475, 0.183026,
		0.367255, -0.895068, -0.252938,
		43.161396, 40.930691, 30.175144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554520, 41.981949, 30.548767>,  <42.904320, 41.557240, 30.352201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554520, 41.981949, 30.548767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363445, 42.333359, 30.550695>,  <43.248802, 42.544205, 30.551851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363445, 42.333359, 30.550695>,  <43.554520, 41.981949, 30.548767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363445, 42.333359, 30.550695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155026, -0.089690, 0.983831,
		0.864747, 0.469210, 0.179037,
		-0.477681, 0.878520, 0.004819,
		43.220142, 42.596916, 30.552141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888920, 42.324028, 31.088875>,  <43.554520, 41.981949, 30.548767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888920, 42.324028, 31.088875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.539524, 42.506809, 31.021702>,  <43.329887, 42.616478, 30.981398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.539524, 42.506809, 31.021702>,  <43.888920, 42.324028, 31.088875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539524, 42.506809, 31.021702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124201, 0.124365, 0.984433,
		0.470727, 0.880753, -0.051878,
		-0.873493, 0.456955, -0.167932,
		43.277477, 42.643894, 30.971323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976654, 43.009926, 31.507988>,  <43.888920, 42.324028, 31.088875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976654, 43.009926, 31.507988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596268, 42.911102, 31.433552>,  <43.368038, 42.851810, 31.388889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596268, 42.911102, 31.433552>,  <43.976654, 43.009926, 31.507988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596268, 42.911102, 31.433552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221423, 0.123684, 0.967303,
		-0.215962, 0.961075, -0.172323,
		-0.950964, -0.247056, -0.186093,
		43.310978, 42.836987, 31.377724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589348, 43.439625, 31.917280>,  <43.976654, 43.009926, 31.507988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589348, 43.439625, 31.917280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.318096, 43.169582, 31.801094>,  <43.155346, 43.007557, 31.731382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.318096, 43.169582, 31.801094>,  <43.589348, 43.439625, 31.917280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318096, 43.169582, 31.801094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495205, 0.127688, 0.859341,
		-0.543058, 0.726586, -0.420905,
		-0.678129, -0.675107, -0.290467,
		43.114658, 42.967049, 31.713953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948090, 43.801559, 32.033360>,  <43.589348, 43.439625, 31.917280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948090, 43.801559, 32.033360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.896450, 43.404911, 32.034988>,  <42.865467, 43.166920, 32.035965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.896450, 43.404911, 32.034988>,  <42.948090, 43.801559, 32.033360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896450, 43.404911, 32.034988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543722, 0.074220, 0.835978,
		-0.829277, 0.105713, -0.548749,
		-0.129102, -0.991623, 0.004071,
		42.857719, 43.107426, 32.036209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233025, 43.852455, 32.187805>,  <42.948090, 43.801559, 32.033360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233025, 43.852455, 32.187805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.428867, 43.511066, 32.259212>,  <42.546371, 43.306232, 32.302059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.428867, 43.511066, 32.259212>,  <42.233025, 43.852455, 32.187805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428867, 43.511066, 32.259212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453097, -0.074104, 0.888376,
		-0.744976, -0.515841, -0.422988,
		0.489606, -0.853473, 0.178520,
		42.575748, 43.255024, 32.312767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741901, 43.529465, 32.438473>,  <42.233025, 43.852455, 32.187805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741901, 43.529465, 32.438473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058048, 43.327267, 32.576920>,  <42.247734, 43.205948, 32.659988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058048, 43.327267, 32.576920>,  <41.741901, 43.529465, 32.438473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058048, 43.327267, 32.576920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407776, -0.012444, 0.912997,
		-0.457212, -0.862737, -0.215966,
		0.790364, -0.505499, 0.346113,
		42.295158, 43.175617, 32.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474148, 43.206322, 32.936256>,  <41.741901, 43.529465, 32.438473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474148, 43.206322, 32.936256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.861919, 43.176121, 33.029640>,  <42.094582, 43.158001, 33.085670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.861919, 43.176121, 33.029640>,  <41.474148, 43.206322, 32.936256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861919, 43.176121, 33.029640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234576, -0.006106, 0.972079,
		-0.071973, -0.997127, -0.023631,
		0.969429, -0.075506, 0.233463,
		42.152748, 43.153469, 33.099678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627571, 42.646362, 33.373222>,  <41.474148, 43.206322, 32.936256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627571, 42.646362, 33.373222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894119, 42.931862, 33.459480>,  <42.054050, 43.103161, 33.511234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894119, 42.931862, 33.459480>,  <41.627571, 42.646362, 33.373222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894119, 42.931862, 33.459480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209498, -0.098328, 0.972853,
		0.715581, -0.693460, 0.084007,
		0.666375, 0.713754, 0.215640,
		42.094032, 43.145988, 33.524174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970909, 42.364098, 33.909088>,  <41.627571, 42.646362, 33.373222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970909, 42.364098, 33.909088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085613, 42.746941, 33.925636>,  <42.154434, 42.976646, 33.935566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085613, 42.746941, 33.925636>,  <41.970909, 42.364098, 33.909088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085613, 42.746941, 33.925636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097018, -0.013948, 0.995185,
		0.953077, -0.289393, 0.088857,
		0.286760, 0.957109, 0.041369,
		42.171642, 43.034073, 33.938046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404587, 42.436115, 34.435570>,  <41.970909, 42.364098, 33.909088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404587, 42.436115, 34.435570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.311012, 42.824585, 34.417278>,  <42.254868, 43.057667, 34.406303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.311012, 42.824585, 34.417278>,  <42.404587, 42.436115, 34.435570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311012, 42.824585, 34.417278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297982, -0.026844, 0.954194,
		0.925463, 0.236845, 0.295673,
		-0.233932, 0.971177, -0.045733,
		42.240833, 43.115936, 34.403557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665043, 42.826832, 34.955853>,  <42.404587, 42.436115, 34.435570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665043, 42.826832, 34.955853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370724, 43.088150, 34.884518>,  <42.194134, 43.244942, 34.841717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370724, 43.088150, 34.884518>,  <42.665043, 42.826832, 34.955853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370724, 43.088150, 34.884518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275291, -0.047944, 0.960165,
		0.618720, 0.755584, 0.215123,
		-0.735799, 0.653295, -0.178342,
		42.149982, 43.284138, 34.831017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601868, 43.334469, 35.584103>,  <42.665043, 42.826832, 34.955853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601868, 43.334469, 35.584103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.251556, 43.362881, 35.393120>,  <42.041370, 43.379929, 35.278530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.251556, 43.362881, 35.393120>,  <42.601868, 43.334469, 35.584103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251556, 43.362881, 35.393120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478801, -0.002170, 0.877921,
		0.061323, 0.997472, 0.035910,
		-0.875779, 0.071030, -0.477457,
		41.988823, 43.384190, 35.249882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215752, 43.973572, 35.758202>,  <42.601868, 43.334469, 35.584103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215752, 43.973572, 35.758202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.967579, 43.669724, 35.680183>,  <41.818676, 43.487415, 35.633373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.967579, 43.669724, 35.680183>,  <42.215752, 43.973572, 35.758202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967579, 43.669724, 35.680183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607358, 0.308047, 0.732273,
		-0.496163, 0.572791, -0.652482,
		-0.620434, -0.759617, -0.195047,
		41.781448, 43.441837, 35.621670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.422894, 44.350616, 29.369135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.170494, 44.169659, 29.117046>,  <40.019054, 44.061085, 28.965794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.170494, 44.169659, 29.117046>,  <40.422894, 44.350616, 29.369135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170494, 44.169659, 29.117046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545466, 0.318936, -0.775078,
		0.551640, -0.832839, 0.045516,
		-0.630999, -0.452391, -0.630224,
		39.981194, 44.033943, 28.927979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798809, 43.824875, 28.985237>,  <40.422894, 44.350616, 29.369135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798809, 43.824875, 28.985237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470966, 43.924801, 28.779001>,  <40.274261, 43.984756, 28.655260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470966, 43.924801, 28.779001>,  <40.798809, 43.824875, 28.985237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470966, 43.924801, 28.779001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554022, 0.116347, -0.824332,
		-0.145941, -0.961279, -0.233760,
		-0.819610, 0.249812, -0.515590,
		40.225082, 43.999744, 28.624325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918961, 43.509254, 28.339319>,  <40.798809, 43.824875, 28.985237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918961, 43.509254, 28.339319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.627644, 43.772533, 28.263039>,  <40.452854, 43.930500, 28.217270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.627644, 43.772533, 28.263039>,  <40.918961, 43.509254, 28.339319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627644, 43.772533, 28.263039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505243, 0.327750, -0.798316,
		-0.462946, -0.677759, -0.571247,
		-0.728292, 0.658196, -0.190702,
		40.409157, 43.969994, 28.205828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895866, 43.543304, 27.672226>,  <40.918961, 43.509254, 28.339319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895866, 43.543304, 27.672226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695290, 43.880352, 27.750771>,  <40.574944, 44.082581, 27.797897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695290, 43.880352, 27.750771>,  <40.895866, 43.543304, 27.672226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695290, 43.880352, 27.750771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422875, 0.436693, -0.794025,
		-0.754808, -0.315119, -0.575296,
		-0.501440, 0.842615, 0.196363,
		40.544857, 44.133137, 27.809679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681747, 43.805298, 26.970816>,  <40.895866, 43.543304, 27.672226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681747, 43.805298, 26.970816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672211, 44.122791, 27.213936>,  <40.666489, 44.313286, 27.359808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672211, 44.122791, 27.213936>,  <40.681747, 43.805298, 26.970816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672211, 44.122791, 27.213936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332199, 0.579718, -0.744024,
		-0.942908, 0.184172, -0.277498,
		-0.023842, 0.793730, 0.607803,
		40.665058, 44.360909, 27.396276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343704, 44.321438, 26.621284>,  <40.681747, 43.805298, 26.970816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343704, 44.321438, 26.621284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541409, 44.538464, 26.892969>,  <40.660030, 44.668678, 27.055979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541409, 44.538464, 26.892969>,  <40.343704, 44.321438, 26.621284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541409, 44.538464, 26.892969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388443, 0.561137, -0.730916,
		-0.777699, 0.625100, 0.066594,
		0.494264, 0.542564, 0.679211,
		40.689690, 44.701233, 27.096733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209946, 44.967564, 26.510521>,  <40.343704, 44.321438, 26.621284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209946, 44.967564, 26.510521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548611, 44.980061, 26.723005>,  <40.751812, 44.987556, 26.850496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548611, 44.980061, 26.723005>,  <40.209946, 44.967564, 26.510521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548611, 44.980061, 26.723005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428284, 0.552445, -0.715107,
		-0.315804, 0.832964, 0.454356,
		0.846665, 0.031240, 0.531209,
		40.802608, 44.989433, 26.882368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359756, 45.663151, 26.538012>,  <40.209946, 44.967564, 26.510521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359756, 45.663151, 26.538012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.699451, 45.466221, 26.614336>,  <40.903271, 45.348064, 26.660131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.699451, 45.466221, 26.614336>,  <40.359756, 45.663151, 26.538012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699451, 45.466221, 26.614336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450267, 0.486510, -0.748711,
		0.275776, 0.721751, 0.634841,
		0.849239, -0.492324, 0.190813,
		40.954224, 45.318523, 26.671579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810192, 46.183590, 26.605415>,  <40.359756, 45.663151, 26.538012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810192, 46.183590, 26.605415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036110, 45.862434, 26.529116>,  <41.171661, 45.669743, 26.483335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036110, 45.862434, 26.529116>,  <40.810192, 46.183590, 26.605415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036110, 45.862434, 26.529116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332352, 0.432873, -0.837952,
		0.755350, 0.409872, 0.511323,
		0.564791, -0.802886, -0.190749,
		41.205547, 45.621567, 26.471891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341366, 46.420708, 26.275806>,  <40.810192, 46.183590, 26.605415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341366, 46.420708, 26.275806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364628, 46.032883, 26.180676>,  <41.378586, 45.800186, 26.123596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364628, 46.032883, 26.180676>,  <41.341366, 46.420708, 26.275806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364628, 46.032883, 26.180676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372911, 0.242085, -0.895730,
		0.926043, -0.036594, 0.375641,
		0.058159, -0.969565, -0.237827,
		41.382076, 45.742012, 26.109327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090492, 46.290424, 25.935181>,  <41.341366, 46.420708, 26.275806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090492, 46.290424, 25.935181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829189, 46.015076, 25.809069>,  <41.672409, 45.849865, 25.733402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829189, 46.015076, 25.809069>,  <42.090492, 46.290424, 25.935181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829189, 46.015076, 25.809069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345147, 0.099879, -0.933219,
		0.673894, -0.718446, 0.172344,
		-0.653253, -0.688375, -0.315278,
		41.633213, 45.808563, 25.714485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449421, 45.831272, 25.421001>,  <42.090492, 46.290424, 25.935181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449421, 45.831272, 25.421001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.055370, 45.821789, 25.352934>,  <41.818939, 45.816097, 25.312094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.055370, 45.821789, 25.352934>,  <42.449421, 45.831272, 25.421001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055370, 45.821789, 25.352934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153062, 0.328810, -0.931910,
		0.078050, -0.944099, -0.320291,
		-0.985130, -0.023711, -0.170169,
		41.759830, 45.814674, 25.301884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153301, 46.164394, 25.498329>,  <42.449421, 45.831272, 25.421001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153301, 46.164394, 25.498329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.504501, 46.052101, 25.653406>,  <43.715221, 45.984726, 25.746452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.504501, 46.052101, 25.653406>,  <43.153301, 46.164394, 25.498329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504501, 46.052101, 25.653406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477357, -0.573270, 0.665952,
		0.035299, -0.769774, -0.637340,
		0.878000, -0.280731, 0.387693,
		43.767902, 45.967880, 25.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260292, 45.392673, 25.526735>,  <43.153301, 46.164394, 25.498329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260292, 45.392673, 25.526735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.491905, 45.537346, 25.819014>,  <43.630871, 45.624149, 25.994381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.491905, 45.537346, 25.819014>,  <43.260292, 45.392673, 25.526735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491905, 45.537346, 25.819014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436555, -0.619382, 0.652523,
		0.688582, -0.696818, -0.200748,
		0.579029, 0.361678, 0.730695,
		43.665615, 45.645851, 26.038221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605404, 44.763287, 25.281355>,  <43.260292, 45.392673, 25.526735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605404, 44.763287, 25.281355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.985416, 44.652771, 25.339466>,  <44.213425, 44.586460, 25.374332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.985416, 44.652771, 25.339466>,  <43.605404, 44.763287, 25.281355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985416, 44.652771, 25.339466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248653, -0.388444, 0.887290,
		-0.188717, -0.879076, -0.437734,
		0.950030, -0.276291, 0.145279,
		44.270424, 44.569885, 25.383049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586201, 44.122997, 25.459517>,  <43.605404, 44.763287, 25.281355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586201, 44.122997, 25.459517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929501, 44.260101, 25.612318>,  <44.135479, 44.342361, 25.703999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929501, 44.260101, 25.612318>,  <43.586201, 44.122997, 25.459517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929501, 44.260101, 25.612318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333359, -0.193642, 0.922700,
		0.390233, -0.919250, -0.051932,
		0.858248, 0.342756, 0.382005,
		44.186974, 44.362926, 25.726919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711311, 43.612564, 25.983253>,  <43.586201, 44.122997, 25.459517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711311, 43.612564, 25.983253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941143, 43.927673, 26.072042>,  <44.079041, 44.116741, 26.125315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941143, 43.927673, 26.072042>,  <43.711311, 43.612564, 25.983253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941143, 43.927673, 26.072042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056382, -0.308662, 0.949499,
		0.816507, -0.533044, -0.221767,
		0.574576, 0.787776, 0.221970,
		44.113518, 44.164005, 26.138634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068005, 43.354214, 26.548027>,  <43.711311, 43.612564, 25.983253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068005, 43.354214, 26.548027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182220, 43.737350, 26.560705>,  <44.250748, 43.967232, 26.568312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182220, 43.737350, 26.560705>,  <44.068005, 43.354214, 26.548027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182220, 43.737350, 26.560705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178742, -0.085719, 0.980155,
		0.941552, -0.274206, -0.195683,
		0.285538, 0.957843, 0.031697,
		44.267883, 44.024704, 26.570213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826660, 43.378197, 26.745852>,  <44.068005, 43.354214, 26.548027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826660, 43.378197, 26.745852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.613693, 43.698231, 26.856413>,  <44.485912, 43.890251, 26.922749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.613693, 43.698231, 26.856413>,  <44.826660, 43.378197, 26.745852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613693, 43.698231, 26.856413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219059, -0.185176, 0.957979,
		0.817646, 0.570593, -0.076674,
		-0.532418, 0.800083, 0.276402,
		44.453968, 43.938255, 26.939333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179440, 43.754471, 27.191109>,  <44.826660, 43.378197, 26.745852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179440, 43.754471, 27.191109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.812233, 43.892696, 27.268908>,  <44.591908, 43.975632, 27.315586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.812233, 43.892696, 27.268908>,  <45.179440, 43.754471, 27.191109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812233, 43.892696, 27.268908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127352, -0.207572, 0.969894,
		0.375537, 0.915148, 0.146546,
		-0.918016, 0.345568, 0.194497,
		44.536827, 43.996368, 27.327257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166508, 44.183540, 27.857729>,  <45.179440, 43.754471, 27.191109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166508, 44.183540, 27.857729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.783047, 44.078327, 27.814272>,  <44.552971, 44.015198, 27.788197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.783047, 44.078327, 27.814272>,  <45.166508, 44.183540, 27.857729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783047, 44.078327, 27.814272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035123, -0.269487, 0.962363,
		-0.282412, 0.926386, 0.249105,
		-0.958650, -0.263034, -0.108644,
		44.495453, 43.999416, 27.781679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817879, 44.416889, 28.411478>,  <45.166508, 44.183540, 27.857729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817879, 44.416889, 28.411478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.545887, 44.151276, 28.287106>,  <44.382690, 43.991905, 28.212482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.545887, 44.151276, 28.287106>,  <44.817879, 44.416889, 28.411478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545887, 44.151276, 28.287106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296490, -0.138832, 0.944891,
		-0.670611, 0.734696, -0.102478,
		-0.679981, -0.664038, -0.310933,
		44.341892, 43.952065, 28.193827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311916, 44.503483, 28.761919>,  <44.817879, 44.416889, 28.411478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311916, 44.503483, 28.761919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.209175, 44.128708, 28.667114>,  <44.147530, 43.903843, 28.610231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.209175, 44.128708, 28.667114>,  <44.311916, 44.503483, 28.761919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209175, 44.128708, 28.667114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338508, -0.142489, 0.930112,
		-0.905229, 0.319132, -0.280562,
		-0.256852, -0.936937, -0.237013,
		44.132118, 43.847626, 28.596010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671803, 44.423946, 29.015591>,  <44.311916, 44.503483, 28.761919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671803, 44.423946, 29.015591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786003, 44.045639, 28.953596>,  <43.854523, 43.818657, 28.916399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786003, 44.045639, 28.953596>,  <43.671803, 44.423946, 29.015591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786003, 44.045639, 28.953596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505845, -0.286060, 0.813813,
		-0.814010, -0.153944, -0.560080,
		0.285498, -0.945765, -0.154984,
		43.871651, 43.761909, 28.907101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056000, 44.004757, 29.155682>,  <43.671803, 44.423946, 29.015591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056000, 44.004757, 29.155682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.366566, 43.754906, 29.189178>,  <43.552906, 43.604996, 29.209276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.366566, 43.754906, 29.189178>,  <43.056000, 44.004757, 29.155682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366566, 43.754906, 29.189178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436839, -0.437627, 0.785910,
		-0.454268, -0.646766, -0.612646,
		0.776410, -0.624641, 0.083733,
		43.599491, 43.567516, 29.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787457, 43.326687, 29.112354>,  <43.056000, 44.004757, 29.155682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787457, 43.326687, 29.112354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141373, 43.311344, 29.298117>,  <43.353722, 43.302139, 29.409575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141373, 43.311344, 29.298117>,  <42.787457, 43.326687, 29.112354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141373, 43.311344, 29.298117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433587, -0.432898, 0.790318,
		0.170725, -0.900627, -0.399656,
		0.884791, -0.038358, 0.464406,
		43.406811, 43.299835, 29.437439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886040, 42.586842, 29.272688>,  <42.787457, 43.326687, 29.112354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886040, 42.586842, 29.272688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.114567, 42.798462, 29.523672>,  <43.251682, 42.925434, 29.674263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.114567, 42.798462, 29.523672>,  <42.886040, 42.586842, 29.272688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114567, 42.798462, 29.523672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395171, -0.492742, 0.775271,
		0.719331, -0.690879, -0.072447,
		0.571316, 0.529048, 0.627460,
		43.285961, 42.957176, 29.711910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238228, 42.114861, 29.783417>,  <42.886040, 42.586842, 29.272688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238228, 42.114861, 29.783417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.263512, 42.466476, 29.972431>,  <43.278683, 42.677444, 30.085840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.263512, 42.466476, 29.972431>,  <43.238228, 42.114861, 29.783417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263512, 42.466476, 29.972431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405205, -0.410095, 0.817087,
		0.912038, -0.243126, 0.330268,
		0.063214, 0.879040, 0.472538,
		43.282475, 42.730190, 30.114193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784893, 41.641788, 29.733068>,  <43.238228, 42.114861, 29.783417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784893, 41.641788, 29.733068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.651596, 41.265045, 29.715889>,  <43.571617, 41.038998, 29.705582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.651596, 41.265045, 29.715889>,  <43.784893, 41.641788, 29.733068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651596, 41.265045, 29.715889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008310, 0.048486, -0.998789,
		0.942803, -0.332486, -0.023985,
		-0.333246, -0.941861, -0.042950,
		43.551620, 40.982487, 29.703005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258007, 41.375294, 29.294628>,  <43.784893, 41.641788, 29.733068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258007, 41.375294, 29.294628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947124, 41.123604, 29.296431>,  <43.760593, 40.972591, 29.297512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947124, 41.123604, 29.296431>,  <44.258007, 41.375294, 29.294628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947124, 41.123604, 29.296431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128994, -0.166333, -0.977596,
		0.615877, -0.759216, 0.210442,
		-0.777210, -0.629225, 0.004506,
		43.713963, 40.934837, 29.297783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534245, 40.799511, 29.090542>,  <44.258007, 41.375294, 29.294628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534245, 40.799511, 29.090542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.142582, 40.803516, 29.009394>,  <43.907585, 40.805920, 28.960705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.142582, 40.803516, 29.009394>,  <44.534245, 40.799511, 29.090542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142582, 40.803516, 29.009394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202861, -0.001811, -0.979206,
		-0.010201, -0.999948, -0.000264,
		-0.979154, 0.010043, -0.202869,
		43.848835, 40.806522, 28.948532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559967, 40.333313, 28.678909>,  <44.534245, 40.799511, 29.090542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559967, 40.333313, 28.678909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.206890, 40.515388, 28.632170>,  <43.995045, 40.624634, 28.604126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.206890, 40.515388, 28.632170>,  <44.559967, 40.333313, 28.678909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206890, 40.515388, 28.632170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112494, -0.036754, -0.992972,
		-0.456284, -0.889636, -0.018763,
		-0.882694, 0.455188, -0.116849,
		43.942081, 40.651943, 28.597115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168713, 40.013973, 28.133776>,  <44.559967, 40.333313, 28.678909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168713, 40.013973, 28.133776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.003212, 40.377373, 28.157269>,  <43.903912, 40.595413, 28.171364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.003212, 40.377373, 28.157269>,  <44.168713, 40.013973, 28.133776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003212, 40.377373, 28.157269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035628, 0.048303, -0.998197,
		-0.909694, -0.415094, 0.012382,
		-0.413748, 0.908495, 0.058730,
		43.879089, 40.649921, 28.174887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694084, 40.127220, 27.464170>,  <44.168713, 40.013973, 28.133776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694084, 40.127220, 27.464170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.746368, 40.486076, 27.632959>,  <43.777737, 40.701389, 27.734232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.746368, 40.486076, 27.632959>,  <43.694084, 40.127220, 27.464170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746368, 40.486076, 27.632959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071024, 0.433004, -0.898589,
		-0.988874, 0.087483, 0.120316,
		0.130709, 0.897137, 0.421973,
		43.785580, 40.755219, 27.759552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145985, 40.513821, 27.080561>,  <43.694084, 40.127220, 27.464170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145985, 40.513821, 27.080561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.414658, 40.773407, 27.223494>,  <43.575863, 40.929157, 27.309254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.414658, 40.773407, 27.223494>,  <43.145985, 40.513821, 27.080561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414658, 40.773407, 27.223494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210399, 0.295372, -0.931927,
		-0.710333, 0.701143, 0.061855,
		0.671684, 0.648964, 0.357332,
		43.616161, 40.968098, 27.330694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500702, 40.673203, 26.755766>,  <43.145985, 40.513821, 27.080561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500702, 40.673203, 26.755766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.291233, 40.407028, 26.542992>,  <42.165550, 40.247322, 26.415327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.291233, 40.407028, 26.542992>,  <42.500702, 40.673203, 26.755766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291233, 40.407028, 26.542992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275241, -0.458755, 0.844859,
		-0.806229, 0.588843, 0.057084,
		-0.523676, -0.665438, -0.531936,
		42.134129, 40.207397, 26.383411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846050, 40.707535, 27.020128>,  <42.500702, 40.673203, 26.755766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846050, 40.707535, 27.020128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870682, 40.345352, 26.852148>,  <41.885460, 40.128044, 26.751360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870682, 40.345352, 26.852148>,  <41.846050, 40.707535, 27.020128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870682, 40.345352, 26.852148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466350, -0.398102, 0.789957,
		-0.882454, 0.147197, -0.446775,
		0.061583, -0.905454, -0.419952,
		41.889156, 40.073715, 26.726162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135971, 40.448265, 27.053009>,  <41.846050, 40.707535, 27.020128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135971, 40.448265, 27.053009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385181, 40.139908, 27.000011>,  <41.534706, 39.954891, 26.968214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385181, 40.139908, 27.000011>,  <41.135971, 40.448265, 27.053009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385181, 40.139908, 27.000011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456824, -0.496100, 0.738374,
		-0.634940, -0.399501, -0.661248,
		0.623027, -0.770898, -0.132492,
		41.572090, 39.908638, 26.960264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701611, 39.839481, 27.222092>,  <41.135971, 40.448265, 27.053009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701611, 39.839481, 27.222092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089005, 39.740345, 27.232065>,  <41.321442, 39.680862, 27.238049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089005, 39.740345, 27.232065>,  <40.701611, 39.839481, 27.222092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089005, 39.740345, 27.232065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129672, -0.416191, 0.899984,
		-0.212671, -0.874850, -0.435210,
		0.968482, -0.247836, 0.024932,
		41.379547, 39.665993, 27.239544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667023, 39.304550, 27.611364>,  <40.701611, 39.839481, 27.222092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667023, 39.304550, 27.611364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.059834, 39.378208, 27.627949>,  <41.295521, 39.422405, 27.637899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.059834, 39.378208, 27.627949>,  <40.667023, 39.304550, 27.611364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059834, 39.378208, 27.627949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023000, -0.101275, 0.994593,
		0.187351, -0.977667, -0.095219,
		0.982024, 0.184148, 0.041460,
		41.354439, 39.433453, 27.640387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931446, 38.781250, 27.820641>,  <40.667023, 39.304550, 27.611364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931446, 38.781250, 27.820641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218609, 39.045673, 27.907927>,  <41.390907, 39.204327, 27.960299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218609, 39.045673, 27.907927>,  <40.931446, 38.781250, 27.820641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218609, 39.045673, 27.907927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042906, -0.270849, 0.961665,
		0.694820, -0.699745, -0.166080,
		0.717903, 0.661058, 0.218214,
		41.433979, 39.243992, 27.973391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480061, 38.417599, 28.184418>,  <40.931446, 38.781250, 27.820641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480061, 38.417599, 28.184418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.511658, 38.805466, 28.276945>,  <41.530617, 39.038185, 28.332462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.511658, 38.805466, 28.276945>,  <41.480061, 38.417599, 28.184418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511658, 38.805466, 28.276945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001284, -0.231945, 0.972728,
		0.996874, -0.077139, -0.017078,
		0.078997, 0.969666, 0.231319,
		41.535358, 39.096367, 28.346340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.734924, 44.963928, 23.753620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033112, 44.996689, 24.018215>,  <39.212025, 45.016346, 24.176973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033112, 44.996689, 24.018215>,  <38.734924, 44.963928, 23.753620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033112, 44.996689, 24.018215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567661, -0.442124, 0.694469,
		0.349336, -0.893207, -0.283100,
		0.745470, 0.081898, 0.661489,
		39.256752, 45.021259, 24.216661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863899, 44.225773, 24.097164>,  <38.734924, 44.963928, 23.753620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863899, 44.225773, 24.097164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994102, 44.509453, 24.347309>,  <39.072224, 44.679661, 24.497396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994102, 44.509453, 24.347309>,  <38.863899, 44.225773, 24.097164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994102, 44.509453, 24.347309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549104, -0.396647, 0.735633,
		0.769760, -0.582843, 0.260314,
		0.325506, 0.709201, 0.625364,
		39.091755, 44.722214, 24.534918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245384, 43.903793, 24.648472>,  <38.863899, 44.225773, 24.097164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245384, 43.903793, 24.648472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131958, 44.266605, 24.772982>,  <39.063904, 44.484291, 24.847687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131958, 44.266605, 24.772982>,  <39.245384, 43.903793, 24.648472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131958, 44.266605, 24.772982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415753, -0.408785, 0.812431,
		0.864142, 0.100963, 0.493016,
		-0.283563, 0.907029, 0.311272,
		39.046890, 44.538715, 24.866364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282619, 43.895027, 25.335873>,  <39.245384, 43.903793, 24.648472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282619, 43.895027, 25.335873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038311, 44.208237, 25.288822>,  <38.891727, 44.396164, 25.260592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038311, 44.208237, 25.288822>,  <39.282619, 43.895027, 25.335873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038311, 44.208237, 25.288822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524314, -0.288626, 0.801118,
		0.593343, 0.550972, 0.586834,
		-0.610769, 0.783023, -0.117628,
		38.855080, 44.443142, 25.253534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212254, 44.142113, 25.938143>,  <39.282619, 43.895027, 25.335873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212254, 44.142113, 25.938143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877781, 44.271145, 25.760721>,  <38.677097, 44.348564, 25.654268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877781, 44.271145, 25.760721>,  <39.212254, 44.142113, 25.938143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877781, 44.271145, 25.760721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524707, -0.235157, 0.818159,
		0.159615, 0.916867, 0.365893,
		-0.836185, 0.322577, -0.443552,
		38.626926, 44.367920, 25.627655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933117, 44.500340, 26.463341>,  <39.212254, 44.142113, 25.938143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933117, 44.500340, 26.463341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.653412, 44.408005, 26.192715>,  <38.485588, 44.352604, 26.030338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.653412, 44.408005, 26.192715>,  <38.933117, 44.500340, 26.463341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653412, 44.408005, 26.192715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565757, -0.399820, 0.721153,
		-0.436972, 0.887051, 0.148985,
		-0.699267, -0.230835, -0.676566,
		38.443630, 44.338753, 25.989744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301849, 44.716652, 26.855392>,  <38.933117, 44.500340, 26.463341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301849, 44.716652, 26.855392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179417, 44.470730, 26.564646>,  <38.105957, 44.323177, 26.390198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179417, 44.470730, 26.564646>,  <38.301849, 44.716652, 26.855392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179417, 44.470730, 26.564646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725216, -0.344054, 0.596396,
		-0.616746, 0.709681, -0.340555,
		-0.306082, -0.614801, -0.726866,
		38.087593, 44.286289, 26.346586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535698, 44.750813, 26.825253>,  <38.301849, 44.716652, 26.855392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535698, 44.750813, 26.825253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630524, 44.398258, 26.661808>,  <37.687420, 44.186726, 26.563742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630524, 44.398258, 26.661808>,  <37.535698, 44.750813, 26.825253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630524, 44.398258, 26.661808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662605, -0.454279, 0.595470,
		-0.710462, 0.129587, -0.691701,
		0.237060, -0.881384, -0.408614,
		37.701641, 44.133842, 26.539225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943310, 44.461926, 26.550436>,  <37.535698, 44.750813, 26.825253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943310, 44.461926, 26.550436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180523, 44.145161, 26.608658>,  <37.322853, 43.955101, 26.643591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180523, 44.145161, 26.608658>,  <36.943310, 44.461926, 26.550436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180523, 44.145161, 26.608658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710324, -0.429433, 0.557698,
		-0.379139, -0.434128, -0.817182,
		0.593037, -0.791909, 0.145557,
		37.358433, 43.907589, 26.652323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497410, 43.895039, 26.486500>,  <36.943310, 44.461926, 26.550436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497410, 43.895039, 26.486500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823898, 43.739372, 26.657303>,  <37.019791, 43.645973, 26.759785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823898, 43.739372, 26.657303>,  <36.497410, 43.895039, 26.486500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823898, 43.739372, 26.657303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571414, -0.434685, 0.696085,
		-0.085276, -0.812158, -0.577172,
		0.816219, -0.389164, 0.427011,
		37.068764, 43.622623, 26.785406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470520, 43.184734, 26.475641>,  <36.497410, 43.895039, 26.486500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470520, 43.184734, 26.475641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724564, 43.283535, 26.768385>,  <36.876991, 43.342815, 26.944031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724564, 43.283535, 26.768385>,  <36.470520, 43.184734, 26.475641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724564, 43.283535, 26.768385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580877, -0.471793, 0.663320,
		0.509131, -0.846404, -0.156161,
		0.635112, 0.247006, 0.731861,
		36.915096, 43.357635, 26.987944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571709, 42.494766, 26.793879>,  <36.470520, 43.184734, 26.475641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571709, 42.494766, 26.793879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671608, 42.797653, 27.035292>,  <36.731548, 42.979385, 27.180140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671608, 42.797653, 27.035292>,  <36.571709, 42.494766, 26.793879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671608, 42.797653, 27.035292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420266, -0.476755, 0.772063,
		0.872355, -0.446465, 0.199163,
		0.249747, 0.757214, 0.603534,
		36.746532, 43.024818, 27.216352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136089, 41.815868, 26.820284>,  <36.571709, 42.494766, 26.793879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136089, 41.815868, 26.820284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.957718, 41.534054, 26.599459>,  <36.850697, 41.364964, 26.466963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.957718, 41.534054, 26.599459>,  <37.136089, 41.815868, 26.820284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957718, 41.534054, 26.599459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605591, 0.216693, -0.765705,
		0.659097, -0.675772, 0.330034,
		-0.445926, -0.704540, -0.552063,
		36.823940, 41.322693, 26.433840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626099, 41.309185, 26.693663>,  <37.136089, 41.815868, 26.820284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626099, 41.309185, 26.693663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.343643, 41.285904, 26.411392>,  <37.174168, 41.271935, 26.242029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.343643, 41.285904, 26.411392>,  <37.626099, 41.309185, 26.693663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343643, 41.285904, 26.411392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707552, -0.019815, -0.706384,
		0.027128, -0.998108, 0.055171,
		-0.706140, -0.058199, -0.705676,
		37.131802, 41.268444, 26.199690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844933, 40.715820, 26.196451>,  <37.626099, 41.309185, 26.693663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844933, 40.715820, 26.196451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554241, 40.923279, 26.016285>,  <37.379826, 41.047752, 25.908186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554241, 40.923279, 26.016285>,  <37.844933, 40.715820, 26.196451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554241, 40.923279, 26.016285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512817, -0.026640, -0.858085,
		-0.457040, -0.854575, -0.246610,
		-0.726728, 0.518645, -0.450416,
		37.336224, 41.078873, 25.881161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914333, 40.511528, 25.541185>,  <37.844933, 40.715820, 26.196451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914333, 40.511528, 25.541185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.686996, 40.835320, 25.482216>,  <37.550594, 41.029594, 25.446835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.686996, 40.835320, 25.482216>,  <37.914333, 40.511528, 25.541185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686996, 40.835320, 25.482216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446918, 0.153276, -0.881346,
		-0.690831, -0.566794, -0.448883,
		-0.568345, 0.809476, -0.147423,
		37.516495, 41.078163, 25.437988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450649, 40.449608, 24.907387>,  <37.914333, 40.511528, 25.541185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450649, 40.449608, 24.907387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.504749, 40.833221, 25.006956>,  <37.537209, 41.063389, 25.066698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.504749, 40.833221, 25.006956>,  <37.450649, 40.449608, 24.907387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504749, 40.833221, 25.006956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426800, 0.170335, -0.888160,
		-0.894175, 0.226366, -0.386277,
		0.135252, 0.959033, 0.248922,
		37.545326, 41.120930, 25.081633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428379, 40.722431, 24.184177>,  <37.450649, 40.449608, 24.907387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428379, 40.722431, 24.184177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585812, 40.997486, 24.428226>,  <37.680271, 41.162521, 24.574656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585812, 40.997486, 24.428226>,  <37.428379, 40.722431, 24.184177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585812, 40.997486, 24.428226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638504, 0.272999, -0.719572,
		-0.661370, 0.672771, -0.331615,
		0.393577, 0.687641, 0.610121,
		37.703884, 41.203777, 24.611263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400696, 41.397118, 23.842045>,  <37.428379, 40.722431, 24.184177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400696, 41.397118, 23.842045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685596, 41.396843, 24.122814>,  <37.856537, 41.396679, 24.291275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685596, 41.396843, 24.122814>,  <37.400696, 41.397118, 23.842045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685596, 41.396843, 24.122814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652908, 0.367780, -0.662155,
		-0.257696, 0.929913, 0.262403,
		0.712252, -0.000690, 0.701923,
		37.899273, 41.396637, 24.333391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894302, 41.979527, 23.675287>,  <37.400696, 41.397118, 23.842045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894302, 41.979527, 23.675287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.107162, 41.730068, 23.904333>,  <38.234879, 41.580395, 24.041761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.107162, 41.730068, 23.904333>,  <37.894302, 41.979527, 23.675287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107162, 41.730068, 23.904333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765381, 0.065214, -0.640265,
		0.361955, 0.778984, 0.512028,
		0.532148, -0.623643, 0.572615,
		38.266808, 41.542976, 24.076118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479473, 42.376503, 24.007788>,  <37.894302, 41.979527, 23.675287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479473, 42.376503, 24.007788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.563885, 41.985664, 24.018721>,  <38.614532, 41.751160, 24.025280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.563885, 41.985664, 24.018721>,  <38.479473, 42.376503, 24.007788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563885, 41.985664, 24.018721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838883, 0.166685, -0.518161,
		0.501738, 0.132277, 0.854846,
		0.211031, -0.977097, 0.027332,
		38.627193, 41.692535, 24.026920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121418, 42.338135, 24.114059>,  <38.479473, 42.376503, 24.007788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121418, 42.338135, 24.114059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071739, 41.963593, 23.982721>,  <39.041931, 41.738865, 23.903919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071739, 41.963593, 23.982721>,  <39.121418, 42.338135, 24.114059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071739, 41.963593, 23.982721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878147, 0.050346, -0.475734,
		0.461988, -0.347418, 0.816007,
		-0.124196, -0.936358, -0.328344,
		39.034481, 41.682686, 23.884218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672241, 41.941578, 24.386522>,  <39.121418, 42.338135, 24.114059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672241, 41.941578, 24.386522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.533787, 41.753689, 24.061672>,  <39.450714, 41.640957, 23.866762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.533787, 41.753689, 24.061672>,  <39.672241, 41.941578, 24.386522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533787, 41.753689, 24.061672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888210, 0.114675, -0.444895,
		0.302108, -0.875333, 0.377521,
		-0.346140, -0.469724, -0.812124,
		39.429943, 41.612770, 23.818035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131798, 41.377026, 24.265387>,  <39.672241, 41.941578, 24.386522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131798, 41.377026, 24.265387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963314, 41.439426, 23.908007>,  <39.862225, 41.476868, 23.693579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963314, 41.439426, 23.908007>,  <40.131798, 41.377026, 24.265387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963314, 41.439426, 23.908007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897505, -0.070215, -0.435378,
		-0.130652, -0.985258, -0.110435,
		-0.421206, 0.156000, -0.893448,
		39.836952, 41.486225, 23.639973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563042, 41.000256, 23.808201>,  <40.131798, 41.377026, 24.265387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563042, 41.000256, 23.808201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342728, 41.215893, 23.553324>,  <40.210537, 41.345276, 23.400398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342728, 41.215893, 23.553324>,  <40.563042, 41.000256, 23.808201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342728, 41.215893, 23.553324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786168, 0.078698, -0.612982,
		-0.280307, -0.838564, -0.467161,
		-0.550789, 0.539090, -0.637192,
		40.177490, 41.377621, 23.362165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695965, 40.783222, 23.200193>,  <40.563042, 41.000256, 23.808201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695965, 40.783222, 23.200193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.548168, 41.139778, 23.095198>,  <40.459492, 41.353710, 23.032200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.548168, 41.139778, 23.095198>,  <40.695965, 40.783222, 23.200193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548168, 41.139778, 23.095198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752633, 0.121408, -0.647151,
		-0.544995, -0.436674, -0.715748,
		-0.369491, 0.891390, -0.262489,
		40.437321, 41.407196, 23.016451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331722, 41.161900, 23.439581>,  <40.695965, 40.783222, 23.200193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331722, 41.161900, 23.439581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707306, 41.050865, 23.520876>,  <41.932655, 40.984245, 23.569653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707306, 41.050865, 23.520876>,  <41.331722, 41.161900, 23.439581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707306, 41.050865, 23.520876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338338, -0.638022, 0.691705,
		-0.062338, -0.718244, -0.692993,
		0.938957, -0.277586, 0.203236,
		41.988995, 40.967590, 23.581846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274658, 40.436943, 23.700619>,  <41.331722, 41.161900, 23.439581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274658, 40.436943, 23.700619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.633831, 40.569038, 23.817003>,  <41.849335, 40.648296, 23.886833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.633831, 40.569038, 23.817003>,  <41.274658, 40.436943, 23.700619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633831, 40.569038, 23.817003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053433, -0.574391, 0.816835,
		0.436880, -0.749009, -0.498118,
		0.897932, 0.330243, 0.290961,
		41.903210, 40.668110, 23.904291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594818, 39.875324, 23.966244>,  <41.274658, 40.436943, 23.700619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594818, 39.875324, 23.966244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.792755, 40.174400, 24.143372>,  <41.911518, 40.353848, 24.249649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.792755, 40.174400, 24.143372>,  <41.594818, 39.875324, 23.966244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792755, 40.174400, 24.143372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153618, -0.576828, 0.802291,
		0.855295, -0.328986, -0.400299,
		0.494846, 0.747689, 0.442820,
		41.941208, 40.398708, 24.276217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248371, 39.566952, 24.378330>,  <41.594818, 39.875324, 23.966244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248371, 39.566952, 24.378330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176960, 39.935322, 24.516911>,  <42.134113, 40.156345, 24.600058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176960, 39.935322, 24.516911>,  <42.248371, 39.566952, 24.378330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176960, 39.935322, 24.516911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060261, -0.341211, 0.938053,
		0.982089, 0.188342, 0.005418,
		-0.178524, 0.920925, 0.346449,
		42.123402, 40.211597, 24.620846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626026, 39.612835, 25.057928>,  <42.248371, 39.566952, 24.378330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626026, 39.612835, 25.057928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363403, 39.914280, 25.070614>,  <42.205830, 40.095146, 25.078226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363403, 39.914280, 25.070614>,  <42.626026, 39.612835, 25.057928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363403, 39.914280, 25.070614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163375, -0.183131, 0.969418,
		0.736373, 0.631294, 0.243357,
		-0.656554, 0.753612, 0.031715,
		42.166435, 40.140362, 25.080128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915405, 40.107552, 25.543142>,  <42.626026, 39.612835, 25.057928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915405, 40.107552, 25.543142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.521221, 40.170544, 25.517609>,  <42.284710, 40.208340, 25.502289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.521221, 40.170544, 25.517609>,  <42.915405, 40.107552, 25.543142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521221, 40.170544, 25.517609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081850, -0.110715, 0.990476,
		0.148917, 0.981295, 0.121995,
		-0.985456, 0.157484, -0.063832,
		42.225586, 40.217789, 25.498459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764576, 40.660954, 26.070196>,  <42.915405, 40.107552, 25.543142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764576, 40.660954, 26.070196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.439098, 40.442944, 25.989344>,  <42.243813, 40.312138, 25.940832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.439098, 40.442944, 25.989344>,  <42.764576, 40.660954, 26.070196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439098, 40.442944, 25.989344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174902, -0.102068, 0.979281,
		-0.554360, 0.832187, -0.012273,
		-0.813692, -0.545021, -0.202133,
		42.194992, 40.279438, 25.928703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055843, 41.130264, 26.658125>,  <42.764576, 40.660954, 26.070196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055843, 41.130264, 26.658125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429398, 41.159683, 26.798094>,  <43.653530, 41.177334, 26.882076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429398, 41.159683, 26.798094>,  <43.055843, 41.130264, 26.658125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429398, 41.159683, 26.798094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275591, 0.475476, -0.835447,
		-0.227829, 0.876648, 0.423771,
		0.933886, 0.073552, 0.349923,
		43.709564, 41.181747, 26.903070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259991, 41.768459, 26.375446>,  <43.055843, 41.130264, 26.658125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259991, 41.768459, 26.375446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.597565, 41.575363, 26.469030>,  <43.800110, 41.459503, 26.525181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.597565, 41.575363, 26.469030>,  <43.259991, 41.768459, 26.375446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597565, 41.575363, 26.469030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397652, 0.270217, -0.876844,
		0.360070, 0.833032, 0.420009,
		0.843933, -0.482743, 0.233960,
		43.850746, 41.430542, 26.539219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759647, 42.314041, 26.446781>,  <43.259991, 41.768459, 26.375446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759647, 42.314041, 26.446781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.983288, 41.987652, 26.388002>,  <44.117474, 41.791817, 26.352736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.983288, 41.987652, 26.388002>,  <43.759647, 42.314041, 26.446781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983288, 41.987652, 26.388002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503658, 0.475047, -0.721567,
		0.658586, 0.329418, 0.676571,
		0.559100, -0.815974, -0.146946,
		44.151016, 41.742859, 26.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533859, 42.378944, 26.613998>,  <43.759647, 42.314041, 26.446781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533859, 42.378944, 26.613998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489948, 42.090073, 26.340824>,  <44.463600, 41.916748, 26.176920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489948, 42.090073, 26.340824>,  <44.533859, 42.378944, 26.613998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489948, 42.090073, 26.340824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535485, 0.535882, -0.652753,
		0.837379, -0.437362, 0.327887,
		-0.109780, -0.722180, -0.682938,
		44.457016, 41.873417, 26.135942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196400, 42.387985, 26.174746>,  <44.533859, 42.378944, 26.613998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196400, 42.387985, 26.174746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.914364, 42.177979, 25.984083>,  <44.745140, 42.051975, 25.869686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.914364, 42.177979, 25.984083>,  <45.196400, 42.387985, 26.174746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914364, 42.177979, 25.984083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256204, 0.438164, -0.861610,
		0.661214, -0.729635, -0.174434,
		-0.705092, -0.525018, -0.476656,
		44.702835, 42.020473, 25.841087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518261, 42.092876, 25.552338>,  <45.196400, 42.387985, 26.174746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518261, 42.092876, 25.552338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.121792, 42.104874, 25.500690>,  <44.883911, 42.112072, 25.469702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.121792, 42.104874, 25.500690>,  <45.518261, 42.092876, 25.552338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121792, 42.104874, 25.500690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131270, 0.357473, -0.924652,
		0.018421, -0.933442, -0.358256,
		-0.991176, 0.029995, -0.129117,
		44.824440, 42.113873, 25.461956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442944, 42.168610, 24.799864>,  <45.518261, 42.092876, 25.552338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442944, 42.168610, 24.799864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.055470, 42.189053, 24.897055>,  <44.822987, 42.201317, 24.955370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.055470, 42.189053, 24.897055>,  <45.442944, 42.168610, 24.799864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055470, 42.189053, 24.897055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220523, 0.272633, -0.936505,
		-0.114104, -0.960760, -0.252826,
		-0.968685, 0.051105, 0.242978,
		44.764866, 42.204384, 24.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980968, 41.845650, 24.212206>,  <45.442944, 42.168610, 24.799864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980968, 41.845650, 24.212206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.754517, 42.101513, 24.420181>,  <44.618645, 42.255032, 24.544966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.754517, 42.101513, 24.420181>,  <44.980968, 41.845650, 24.212206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754517, 42.101513, 24.420181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082490, 0.583625, -0.807823,
		-0.820177, -0.500224, -0.277643,
		-0.566132, 0.639655, 0.519939,
		44.584679, 42.293407, 24.576162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513126, 42.025177, 23.751818>,  <44.980968, 41.845650, 24.212206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513126, 42.025177, 23.751818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.519531, 42.316017, 24.026354>,  <44.523373, 42.490520, 24.191076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.519531, 42.316017, 24.026354>,  <44.513126, 42.025177, 23.751818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519531, 42.316017, 24.026354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119178, 0.682923, -0.720703,
		-0.992744, -0.070256, 0.097590,
		0.016013, 0.727104, 0.686341,
		44.524334, 42.534149, 24.232256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.473503, 39.543343, 38.335720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791904, 39.772991, 38.259029>,  <37.982944, 39.910782, 38.213013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791904, 39.772991, 38.259029>,  <37.473503, 39.543343, 38.335720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791904, 39.772991, 38.259029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276155, -0.626336, -0.729000,
		-0.538621, 0.527341, -0.657114,
		0.796006, 0.574120, -0.191730,
		38.030704, 39.945229, 38.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644173, 39.378273, 37.699551>,  <37.473503, 39.543343, 38.335720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644173, 39.378273, 37.699551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990170, 39.536510, 37.823029>,  <38.197769, 39.631451, 37.897118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990170, 39.536510, 37.823029>,  <37.644173, 39.378273, 37.699551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990170, 39.536510, 37.823029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459388, -0.376829, -0.804340,
		-0.201861, 0.837562, -0.507684,
		0.864994, 0.395589, 0.308699,
		38.249668, 39.655186, 37.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936172, 39.643791, 37.091335>,  <37.644173, 39.378273, 37.699551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936172, 39.643791, 37.091335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262360, 39.672672, 37.321045>,  <38.458073, 39.690002, 37.458870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262360, 39.672672, 37.321045>,  <37.936172, 39.643791, 37.091335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262360, 39.672672, 37.321045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576120, -0.196576, -0.793375,
		0.055602, 0.977826, -0.201901,
		0.815472, 0.072206, 0.574275,
		38.507000, 39.694336, 37.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444702, 40.129795, 36.777161>,  <37.936172, 39.643791, 37.091335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444702, 40.129795, 36.777161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678574, 39.936211, 37.037601>,  <38.818897, 39.820061, 37.193867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678574, 39.936211, 37.037601>,  <38.444702, 40.129795, 36.777161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678574, 39.936211, 37.037601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736414, -0.020104, -0.676232,
		0.340362, 0.874856, 0.344644,
		0.584677, -0.483965, 0.651100,
		38.853977, 39.791019, 37.232933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979206, 40.607746, 36.691326>,  <38.444702, 40.129795, 36.777161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979206, 40.607746, 36.691326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078297, 40.241962, 36.819321>,  <39.137753, 40.022491, 36.896118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078297, 40.241962, 36.819321>,  <38.979206, 40.607746, 36.691326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078297, 40.241962, 36.819321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716072, -0.049644, -0.696258,
		0.652587, 0.401615, 0.642523,
		0.247731, -0.914462, 0.319982,
		39.152615, 39.967625, 36.915314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787415, 40.641464, 36.951740>,  <38.979206, 40.607746, 36.691326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787415, 40.641464, 36.951740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637119, 40.281090, 36.864895>,  <39.546940, 40.064865, 36.812786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637119, 40.281090, 36.864895>,  <39.787415, 40.641464, 36.951740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637119, 40.281090, 36.864895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700676, -0.122849, -0.702824,
		0.606524, -0.416209, 0.677421,
		-0.375742, -0.900932, -0.217117,
		39.524395, 40.010811, 36.799759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336067, 40.266834, 36.785343>,  <39.787415, 40.641464, 36.951740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336067, 40.266834, 36.785343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054630, 40.038200, 36.616467>,  <39.885769, 39.901020, 36.515141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054630, 40.038200, 36.616467>,  <40.336067, 40.266834, 36.785343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054630, 40.038200, 36.616467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653536, -0.287217, -0.700283,
		0.279011, -0.768632, 0.575636,
		-0.703593, -0.571586, -0.422193,
		39.843552, 39.866726, 36.489807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704006, 39.748123, 36.518200>,  <40.336067, 40.266834, 36.785343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704006, 39.748123, 36.518200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354595, 39.676880, 36.336990>,  <40.144951, 39.634132, 36.228264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354595, 39.676880, 36.336990>,  <40.704006, 39.748123, 36.518200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354595, 39.676880, 36.336990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486690, -0.337644, -0.805686,
		-0.009461, -0.924269, 0.381624,
		-0.873523, -0.178111, -0.453027,
		40.092537, 39.623447, 36.201080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834476, 39.097477, 36.212963>,  <40.704006, 39.748123, 36.518200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834476, 39.097477, 36.212963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542217, 39.289196, 36.018467>,  <40.366863, 39.404228, 35.901768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542217, 39.289196, 36.018467>,  <40.834476, 39.097477, 36.212963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542217, 39.289196, 36.018467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425761, -0.236891, -0.873276,
		-0.533744, -0.845078, -0.030982,
		-0.730647, 0.479297, -0.486240,
		40.323025, 39.432983, 35.872597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550980, 38.617664, 35.704441>,  <40.834476, 39.097477, 36.212963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550980, 38.617664, 35.704441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.464481, 38.993771, 35.599270>,  <40.412582, 39.219437, 35.536167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.464481, 38.993771, 35.599270>,  <40.550980, 38.617664, 35.704441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464481, 38.993771, 35.599270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463098, -0.138303, -0.875450,
		-0.859523, -0.311071, -0.405530,
		-0.216241, 0.940269, -0.262931,
		40.399609, 39.275852, 35.520390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173176, 38.534218, 35.085674>,  <40.550980, 38.617664, 35.704441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173176, 38.534218, 35.085674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297054, 38.914501, 35.091805>,  <40.371384, 39.142673, 35.095482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297054, 38.914501, 35.091805>,  <40.173176, 38.534218, 35.085674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297054, 38.914501, 35.091805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397508, -0.114811, -0.910388,
		-0.863756, 0.288039, -0.413472,
		0.309698, 0.950711, 0.015329,
		40.389965, 39.199715, 35.096405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090290, 38.783432, 34.427910>,  <40.173176, 38.534218, 35.085674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090290, 38.783432, 34.427910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333706, 39.069511, 34.565418>,  <40.479755, 39.241158, 34.647923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333706, 39.069511, 34.565418>,  <40.090290, 38.783432, 34.427910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333706, 39.069511, 34.565418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339985, 0.156452, -0.927326,
		-0.717003, 0.681189, -0.147948,
		0.608537, 0.715195, 0.343771,
		40.516266, 39.284069, 34.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468445, 38.899235, 33.941113>,  <40.090290, 38.783432, 34.427910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468445, 38.899235, 33.941113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360638, 38.549126, 33.780483>,  <39.295952, 38.339062, 33.684105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360638, 38.549126, 33.780483>,  <39.468445, 38.899235, 33.941113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360638, 38.549126, 33.780483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368414, -0.291561, 0.882759,
		-0.889736, 0.385866, -0.243880,
		-0.269521, -0.875271, -0.401571,
		39.279781, 38.286545, 33.660011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799747, 38.810829, 34.120033>,  <39.468445, 38.899235, 33.941113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799747, 38.810829, 34.120033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908558, 38.438961, 34.020664>,  <38.973846, 38.215839, 33.961040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908558, 38.438961, 34.020664>,  <38.799747, 38.810829, 34.120033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908558, 38.438961, 34.020664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457132, -0.352017, 0.816771,
		-0.846776, -0.108623, -0.520741,
		0.272029, -0.929669, -0.248425,
		38.990166, 38.160061, 33.946136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195656, 38.251839, 34.182316>,  <38.799747, 38.810829, 34.120033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195656, 38.251839, 34.182316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547009, 38.064274, 34.219318>,  <38.757820, 37.951733, 34.241520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547009, 38.064274, 34.219318>,  <38.195656, 38.251839, 34.182316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547009, 38.064274, 34.219318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322742, -0.439171, 0.838431,
		-0.352525, -0.766322, -0.537100,
		0.878387, -0.468912, 0.092506,
		38.810524, 37.923599, 34.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980415, 37.753384, 34.594730>,  <38.195656, 38.251839, 34.182316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980415, 37.753384, 34.594730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376488, 37.698257, 34.604134>,  <38.614132, 37.665184, 34.609776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376488, 37.698257, 34.604134>,  <37.980415, 37.753384, 34.594730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376488, 37.698257, 34.604134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072359, -0.361351, 0.929618,
		-0.119620, -0.922189, -0.367775,
		0.990179, -0.137812, 0.023504,
		38.673542, 37.656914, 34.611183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129944, 37.138355, 34.669407>,  <37.980415, 37.753384, 34.594730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129944, 37.138355, 34.669407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.466827, 37.293499, 34.819202>,  <38.668957, 37.386585, 34.909081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.466827, 37.293499, 34.819202>,  <38.129944, 37.138355, 34.669407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466827, 37.293499, 34.819202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193290, -0.431210, 0.881304,
		0.503311, -0.814628, -0.288199,
		0.842210, 0.387864, 0.374493,
		38.719490, 37.409859, 34.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475998, 36.519356, 34.924015>,  <38.129944, 37.138355, 34.669407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475998, 36.519356, 34.924015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595341, 36.866219, 35.083523>,  <38.666946, 37.074337, 35.179226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595341, 36.866219, 35.083523>,  <38.475998, 36.519356, 34.924015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595341, 36.866219, 35.083523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238114, -0.336962, 0.910911,
		0.924275, -0.366731, 0.105946,
		0.298360, 0.867159, 0.398769,
		38.684849, 37.126366, 35.203152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940811, 36.330585, 35.419483>,  <38.475998, 36.519356, 34.924015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940811, 36.330585, 35.419483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839420, 36.690037, 35.562714>,  <38.778584, 36.905708, 35.648651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839420, 36.690037, 35.562714>,  <38.940811, 36.330585, 35.419483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839420, 36.690037, 35.562714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295090, -0.424351, 0.856066,
		0.921233, 0.111332, 0.372740,
		-0.253480, 0.898628, 0.358073,
		38.763378, 36.959625, 35.670135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055298, 36.410797, 36.160728>,  <38.940811, 36.330585, 35.419483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055298, 36.410797, 36.160728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.779228, 36.685383, 36.069145>,  <38.613586, 36.850136, 36.014194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.779228, 36.685383, 36.069145>,  <39.055298, 36.410797, 36.160728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779228, 36.685383, 36.069145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551386, -0.293956, 0.780746,
		0.468652, 0.665096, 0.581389,
		-0.690173, 0.686468, -0.228961,
		38.572178, 36.891323, 36.000458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804821, 36.627136, 36.770943>,  <39.055298, 36.410797, 36.160728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804821, 36.627136, 36.770943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507416, 36.736565, 36.526859>,  <38.328972, 36.802219, 36.380409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507416, 36.736565, 36.526859>,  <38.804821, 36.627136, 36.770943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507416, 36.736565, 36.526859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666505, -0.377462, 0.642879,
		-0.054459, 0.884694, 0.462981,
		-0.743509, 0.273569, -0.610209,
		38.284363, 36.818634, 36.343796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314861, 36.911121, 37.203045>,  <38.804821, 36.627136, 36.770943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314861, 36.911121, 37.203045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107841, 36.822060, 36.872574>,  <37.983627, 36.768623, 36.674294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107841, 36.822060, 36.872574>,  <38.314861, 36.911121, 37.203045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107841, 36.822060, 36.872574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751139, -0.344202, 0.563307,
		-0.409793, 0.912113, 0.010899,
		-0.517552, -0.222653, -0.826176,
		37.952576, 36.755264, 36.624722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642704, 37.010113, 37.413956>,  <38.314861, 36.911121, 37.203045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642704, 37.010113, 37.413956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602150, 36.814400, 37.067471>,  <37.577816, 36.696972, 36.859581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602150, 36.814400, 37.067471>,  <37.642704, 37.010113, 37.413956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602150, 36.814400, 37.067471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834121, -0.432719, 0.342050,
		-0.542185, 0.757205, -0.364247,
		-0.101385, -0.489280, -0.866214,
		37.571735, 36.667614, 36.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894302, 37.163036, 37.180904>,  <37.642704, 37.010113, 37.413956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894302, 37.163036, 37.180904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015678, 36.832130, 36.991779>,  <37.088505, 36.633587, 36.878304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015678, 36.832130, 36.991779>,  <36.894302, 37.163036, 37.180904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015678, 36.832130, 36.991779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919322, -0.384649, 0.083016,
		-0.250543, 0.409477, -0.877244,
		0.303437, -0.827268, -0.472813,
		37.106709, 36.583950, 36.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344189, 36.999527, 36.630989>,  <36.894302, 37.163036, 37.180904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344189, 36.999527, 36.630989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551964, 36.669136, 36.718575>,  <36.676628, 36.470901, 36.771126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551964, 36.669136, 36.718575>,  <36.344189, 36.999527, 36.630989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551964, 36.669136, 36.718575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835463, -0.544702, -0.072812,
		0.179412, -0.145117, -0.973012,
		0.519435, -0.825979, 0.218966,
		36.707794, 36.421341, 36.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103233, 36.493134, 36.147263>,  <36.344189, 36.999527, 36.630989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103233, 36.493134, 36.147263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252991, 36.279484, 36.450459>,  <36.342846, 36.151295, 36.632374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252991, 36.279484, 36.450459>,  <36.103233, 36.493134, 36.147263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252991, 36.279484, 36.450459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883191, -0.454438, 0.116018,
		0.282490, -0.712883, -0.641870,
		0.374398, -0.534120, 0.757986,
		36.365311, 36.119247, 36.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132248, 35.680275, 35.976387>,  <36.103233, 36.493134, 36.147263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132248, 35.680275, 35.976387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084850, 35.790607, 36.357937>,  <36.056412, 35.856808, 36.586868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084850, 35.790607, 36.357937>,  <36.132248, 35.680275, 35.976387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084850, 35.790607, 36.357937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799786, -0.595836, 0.072951,
		0.588475, -0.754251, 0.291210,
		-0.118490, 0.275835, 0.953874,
		36.049305, 35.873360, 36.644100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196125, 35.682594, 35.291000>,  <36.132248, 35.680275, 35.976387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196125, 35.682594, 35.291000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954159, 35.907345, 35.516697>,  <35.808979, 36.042194, 35.652115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954159, 35.907345, 35.516697>,  <36.196125, 35.682594, 35.291000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954159, 35.907345, 35.516697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302079, 0.493692, -0.815486,
		-0.736763, -0.663748, -0.128912,
		-0.604920, 0.561878, 0.564238,
		35.772682, 36.075909, 35.685966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507877, 35.593250, 35.007710>,  <36.196125, 35.682594, 35.291000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507877, 35.593250, 35.007710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558113, 35.957260, 35.165737>,  <35.588257, 36.175667, 35.260555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558113, 35.957260, 35.165737>,  <35.507877, 35.593250, 35.007710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558113, 35.957260, 35.165737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316392, 0.414168, -0.853441,
		-0.940278, -0.017810, 0.339942,
		0.125593, 0.910026, 0.395068,
		35.595791, 36.230267, 35.284256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884377, 36.031559, 34.928619>,  <35.507877, 35.593250, 35.007710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884377, 36.031559, 34.928619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193508, 36.282959, 34.963791>,  <35.378986, 36.433800, 34.984894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193508, 36.282959, 34.963791>,  <34.884377, 36.031559, 34.928619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193508, 36.282959, 34.963791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230400, 0.406970, -0.883907,
		-0.591318, 0.662847, 0.459323,
		0.772825, 0.628498, 0.087929,
		35.425354, 36.471508, 34.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563320, 36.709915, 34.823071>,  <34.884377, 36.031559, 34.928619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563320, 36.709915, 34.823071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959045, 36.740803, 34.773605>,  <35.196480, 36.759335, 34.743927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959045, 36.740803, 34.773605>,  <34.563320, 36.709915, 34.823071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959045, 36.740803, 34.773605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141525, 0.305053, -0.941761,
		-0.034998, 0.949200, 0.312722,
		0.989316, 0.077218, -0.123659,
		35.255840, 36.763969, 34.736507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681908, 37.373554, 34.455616>,  <34.563320, 36.709915, 34.823071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681908, 37.373554, 34.455616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002895, 37.140167, 34.405636>,  <35.195488, 37.000134, 34.375648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002895, 37.140167, 34.405636>,  <34.681908, 37.373554, 34.455616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002895, 37.140167, 34.405636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174391, 0.429590, -0.886025,
		0.570642, 0.689217, 0.446483,
		0.802468, -0.583466, -0.124949,
		35.243637, 36.965126, 34.368153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341206, 37.803802, 34.351868>,  <34.681908, 37.373554, 34.455616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341206, 37.803802, 34.351868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389557, 37.444603, 34.182640>,  <35.418568, 37.229084, 34.081104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389557, 37.444603, 34.182640>,  <35.341206, 37.803802, 34.351868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389557, 37.444603, 34.182640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278949, 0.439748, -0.853703,
		0.952668, -0.014823, 0.303650,
		0.120875, -0.897999, -0.423069,
		35.425819, 37.175201, 34.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009022, 37.867931, 33.913723>,  <35.341206, 37.803802, 34.351868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009022, 37.867931, 33.913723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840763, 37.523273, 33.800144>,  <35.739807, 37.316479, 33.731998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840763, 37.523273, 33.800144>,  <36.009022, 37.867931, 33.913723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840763, 37.523273, 33.800144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039534, 0.295279, -0.954593,
		0.906361, -0.412776, -0.090146,
		-0.420651, -0.861642, -0.283948,
		35.714569, 37.264782, 33.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533092, 37.658508, 33.460846>,  <36.009022, 37.867931, 33.913723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533092, 37.658508, 33.460846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203979, 37.444283, 33.384735>,  <36.006512, 37.315746, 33.339069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203979, 37.444283, 33.384735>,  <36.533092, 37.658508, 33.460846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203979, 37.444283, 33.384735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123825, 0.157833, -0.979671,
		0.554710, -0.829614, -0.063546,
		-0.822778, -0.535564, -0.190278,
		35.957146, 37.283615, 33.327652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703274, 37.159389, 32.959297>,  <36.533092, 37.658508, 33.460846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703274, 37.159389, 32.959297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305111, 37.191093, 32.937847>,  <36.066212, 37.210117, 32.924976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305111, 37.191093, 32.937847>,  <36.703274, 37.159389, 32.959297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305111, 37.191093, 32.937847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053234, -0.007047, -0.998557,
		-0.079526, -0.996829, 0.002795,
		-0.995410, 0.079262, -0.053626,
		36.006489, 37.214870, 32.921761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598484, 36.797462, 32.391403>,  <36.703274, 37.159389, 32.959297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598484, 36.797462, 32.391403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257938, 37.003105, 32.433117>,  <36.053612, 37.126492, 32.458145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257938, 37.003105, 32.433117>,  <36.598484, 36.797462, 32.391403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257938, 37.003105, 32.433117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004230, 0.192066, -0.981373,
		-0.524557, -0.835947, -0.161343,
		-0.851365, 0.514104, 0.104286,
		36.002529, 37.157337, 32.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172874, 36.646420, 31.889111>,  <36.598484, 36.797462, 32.391403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172874, 36.646420, 31.889111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012749, 36.997410, 31.994780>,  <35.916672, 37.208004, 32.058182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012749, 36.997410, 31.994780>,  <36.172874, 36.646420, 31.889111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012749, 36.997410, 31.994780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237282, 0.179195, -0.954770,
		-0.885125, -0.444892, 0.136474,
		-0.400314, 0.877474, 0.264175,
		35.892654, 37.260651, 32.074032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 36.647377, 31.492374>,  <36.172874, 36.646420, 31.889111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582424, 36.647377, 31.492374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681366, 37.018681, 31.603481>,  <35.740730, 37.241463, 31.670145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681366, 37.018681, 31.603481>,  <35.582424, 36.647377, 31.492374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681366, 37.018681, 31.603481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276065, 0.342312, -0.898115,
		-0.928764, 0.145472, 0.340932,
		0.247356, 0.928257, 0.277767,
		35.755573, 37.297157, 31.686811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111649, 37.064365, 31.162670>,  <35.582424, 36.647377, 31.492374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111649, 37.064365, 31.162670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420818, 37.303978, 31.246342>,  <35.606319, 37.447746, 31.296545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420818, 37.303978, 31.246342>,  <35.111649, 37.064365, 31.162670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420818, 37.303978, 31.246342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049412, 0.385504, -0.921383,
		-0.632573, 0.701822, 0.327564,
		0.772923, 0.599027, 0.209181,
		35.652695, 37.483685, 31.309095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940361, 37.769062, 30.890385>,  <35.111649, 37.064365, 31.162670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940361, 37.769062, 30.890385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336521, 37.811638, 30.925652>,  <35.574219, 37.837185, 30.946812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336521, 37.811638, 30.925652>,  <34.940361, 37.769062, 30.890385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336521, 37.811638, 30.925652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005006, 0.665106, -0.746732,
		-0.138124, 0.739124, 0.659256,
		0.990402, 0.106442, 0.088167,
		35.633640, 37.843571, 30.952103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160496, 38.565987, 30.843979>,  <34.940361, 37.769062, 30.890385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160496, 38.565987, 30.843979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497604, 38.366249, 30.763592>,  <35.699871, 38.246407, 30.715359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497604, 38.366249, 30.763592>,  <35.160496, 38.565987, 30.843979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497604, 38.366249, 30.763592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131516, 0.553072, -0.822688,
		0.521956, 0.666908, 0.531786,
		0.842773, -0.499345, -0.200970,
		35.750435, 38.216446, 30.703300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579952, 39.104950, 30.795059>,  <35.160496, 38.565987, 30.843979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579952, 39.104950, 30.795059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742142, 38.804527, 30.586636>,  <35.839455, 38.624271, 30.461580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742142, 38.804527, 30.586636>,  <35.579952, 39.104950, 30.795059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742142, 38.804527, 30.586636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222245, 0.633914, -0.740783,
		0.886680, 0.184562, 0.423953,
		0.405470, -0.751059, -0.521061,
		35.863781, 38.579208, 30.430317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168404, 39.339901, 30.502354>,  <35.579952, 39.104950, 30.795059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168404, 39.339901, 30.502354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103291, 39.012600, 30.281822>,  <36.064224, 38.816219, 30.149504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103291, 39.012600, 30.281822>,  <36.168404, 39.339901, 30.502354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103291, 39.012600, 30.281822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132828, 0.535522, -0.834010,
		0.977680, -0.208993, 0.021513,
		-0.162782, -0.818253, -0.551330,
		36.054455, 38.767124, 30.116423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722240, 39.341389, 30.018227>,  <36.168404, 39.339901, 30.502354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722240, 39.341389, 30.018227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441723, 39.097843, 29.869923>,  <36.273411, 38.951714, 29.780941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441723, 39.097843, 29.869923>,  <36.722240, 39.341389, 30.018227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441723, 39.097843, 29.869923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093305, 0.437224, -0.894500,
		0.706736, -0.661905, -0.249814,
		-0.701298, -0.608866, -0.370760,
		36.231335, 38.915184, 29.758694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022560, 39.240883, 29.476427>,  <36.722240, 39.341389, 30.018227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022560, 39.240883, 29.476427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645691, 39.144867, 29.382883>,  <36.419571, 39.087257, 29.326757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645691, 39.144867, 29.382883>,  <37.022560, 39.240883, 29.476427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645691, 39.144867, 29.382883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148203, 0.327437, -0.933178,
		0.300571, -0.913875, -0.272929,
		-0.942175, -0.240037, -0.233857,
		36.363041, 39.072853, 29.312725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110989, 38.987484, 28.842731>,  <37.022560, 39.240883, 29.476427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110989, 38.987484, 28.842731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722115, 39.072792, 28.881454>,  <36.488789, 39.123978, 28.904688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722115, 39.072792, 28.881454>,  <37.110989, 38.987484, 28.842731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722115, 39.072792, 28.881454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001779, 0.420045, -0.907502,
		-0.234206, -0.882088, -0.408741,
		-0.972185, 0.213269, 0.096808,
		36.430458, 39.136772, 28.910496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860939, 38.775093, 28.210609>,  <37.110989, 38.987484, 28.842731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860939, 38.775093, 28.210609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613419, 39.046165, 28.369524>,  <36.464909, 39.208809, 28.464872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613419, 39.046165, 28.369524>,  <36.860939, 38.775093, 28.210609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613419, 39.046165, 28.369524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052828, 0.468699, -0.881777,
		-0.783771, -0.566630, -0.254230,
		-0.618799, 0.677681, 0.397287,
		36.427780, 39.249470, 28.488710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306797, 38.834023, 27.751799>,  <36.860939, 38.775093, 28.210609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306797, 38.834023, 27.751799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300713, 39.170139, 27.968565>,  <36.297062, 39.371811, 28.098625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300713, 39.170139, 27.968565>,  <36.306797, 38.834023, 27.751799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300713, 39.170139, 27.968565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053392, 0.540522, -0.839634,
		-0.998458, -0.041709, 0.036641,
		-0.015215, 0.840296, 0.541915,
		36.296146, 39.422230, 28.131140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905758, 39.276642, 27.407806>,  <36.306797, 38.834023, 27.751799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905758, 39.276642, 27.407806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049118, 39.558323, 27.652966>,  <36.135136, 39.727333, 27.800060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049118, 39.558323, 27.652966>,  <35.905758, 39.276642, 27.407806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049118, 39.558323, 27.652966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078040, 0.676812, -0.732008,
		-0.930300, 0.214522, 0.297527,
		0.358402, 0.704206, 0.612897,
		36.156639, 39.769585, 27.836834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478260, 39.933563, 27.281624>,  <35.905758, 39.276642, 27.407806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478260, 39.933563, 27.281624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828053, 40.041714, 27.442707>,  <36.037930, 40.106606, 27.539356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828053, 40.041714, 27.442707>,  <35.478260, 39.933563, 27.281624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828053, 40.041714, 27.442707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224760, 0.509849, -0.830383,
		-0.429840, 0.816669, 0.385084,
		0.874483, 0.270381, 0.402708,
		36.090397, 40.122829, 27.563520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417099, 40.655525, 27.276499>,  <35.478260, 39.933563, 27.281624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417099, 40.655525, 27.276499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806026, 40.562138, 27.280169>,  <36.039383, 40.506104, 27.282370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806026, 40.562138, 27.280169>,  <35.417099, 40.655525, 27.276499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806026, 40.562138, 27.280169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167107, 0.667414, -0.725695,
		0.163308, 0.707141, 0.687955,
		0.972320, -0.233473, 0.009174,
		36.097721, 40.492096, 27.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798729, 41.322861, 27.226570>,  <35.417099, 40.655525, 27.276499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798729, 41.322861, 27.226570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082745, 41.058441, 27.129536>,  <36.253155, 40.899788, 27.071314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082745, 41.058441, 27.129536>,  <35.798729, 41.322861, 27.226570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082745, 41.058441, 27.129536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359050, 0.636246, -0.682843,
		0.605740, 0.397747, 0.689113,
		0.710043, -0.661052, -0.242588,
		36.295757, 40.860126, 27.056759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400578, 41.703609, 27.126438>,  <35.798729, 41.322861, 27.226570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400578, 41.703609, 27.126438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462891, 41.374920, 26.907164>,  <36.500278, 41.177708, 26.775599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462891, 41.374920, 26.907164>,  <36.400578, 41.703609, 27.126438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462891, 41.374920, 26.907164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412926, 0.558319, -0.719563,
		0.897343, -0.114266, 0.426285,
		0.155781, -0.821719, -0.548187,
		36.509624, 41.128403, 26.742708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926193, 42.179134, 27.489149>,  <36.400578, 41.703609, 27.126438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926193, 42.179134, 27.489149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788639, 42.546558, 27.567104>,  <36.706108, 42.767014, 27.613878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788639, 42.546558, 27.567104>,  <36.926193, 42.179134, 27.489149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788639, 42.546558, 27.567104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308875, -0.306652, 0.900311,
		0.886757, 0.249407, 0.389175,
		-0.343886, 0.918564, 0.194890,
		36.685474, 42.822128, 27.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036522, 42.196659, 28.188959>,  <36.926193, 42.179134, 27.489149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036522, 42.196659, 28.188959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789661, 42.506790, 28.135302>,  <36.641544, 42.692867, 28.103107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789661, 42.506790, 28.135302>,  <37.036522, 42.196659, 28.188959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789661, 42.506790, 28.135302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456325, -0.213789, 0.863749,
		0.641010, 0.594275, 0.485741,
		-0.617150, 0.775327, -0.134142,
		36.604515, 42.739388, 28.095058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079727, 42.623714, 28.763802>,  <37.036522, 42.196659, 28.188959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079727, 42.623714, 28.763802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722389, 42.701611, 28.601807>,  <36.507988, 42.748348, 28.504610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722389, 42.701611, 28.601807>,  <37.079727, 42.623714, 28.763802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722389, 42.701611, 28.601807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433749, -0.138083, 0.890390,
		0.117476, 0.971086, 0.207825,
		-0.893343, 0.194744, -0.404986,
		36.454388, 42.760033, 28.480310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763245, 43.011887, 29.307169>,  <37.079727, 42.623714, 28.763802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763245, 43.011887, 29.307169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476421, 42.870628, 29.066795>,  <36.304329, 42.785873, 28.922571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476421, 42.870628, 29.066795>,  <36.763245, 43.011887, 29.307169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476421, 42.870628, 29.066795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517247, -0.308303, 0.798376,
		-0.467210, 0.883312, 0.038409,
		-0.717057, -0.353142, -0.600933,
		36.261303, 42.764687, 28.886515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107929, 43.385368, 29.518967>,  <36.763245, 43.011887, 29.307169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107929, 43.385368, 29.518967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044884, 43.022438, 29.363062>,  <36.007057, 42.804680, 29.269520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044884, 43.022438, 29.363062>,  <36.107929, 43.385368, 29.518967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044884, 43.022438, 29.363062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629854, -0.211618, 0.747330,
		-0.760554, 0.363281, -0.538130,
		-0.157613, -0.907328, -0.389761,
		35.997601, 42.750240, 29.246134>
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
