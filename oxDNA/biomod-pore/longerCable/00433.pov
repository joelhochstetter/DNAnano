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
	<24.218985, 35.619068, 35.225555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409887, 35.306385, 35.064976>,  <24.524429, 35.118774, 34.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409887, 35.306385, 35.064976>,  <24.218985, 35.619068, 35.225555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409887, 35.306385, 35.064976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591212, -0.052358, 0.804815,
		-0.650150, -0.621442, 0.437167,
		0.477256, -0.781709, -0.401444,
		24.553064, 35.071873, 34.944542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251747, 34.990036, 35.721279>,  <24.218985, 35.619068, 35.225555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251747, 34.990036, 35.721279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557032, 34.971413, 35.463493>,  <24.740202, 34.960239, 35.308823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557032, 34.971413, 35.463493>,  <24.251747, 34.990036, 35.721279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557032, 34.971413, 35.463493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614533, -0.255861, 0.746247,
		-0.199640, -0.965592, -0.166664,
		0.763212, -0.046560, -0.644468,
		24.785995, 34.957443, 35.270153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581802, 34.230743, 35.750992>,  <24.251747, 34.990036, 35.721279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581802, 34.230743, 35.750992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829111, 34.530762, 35.657036>,  <24.977495, 34.710773, 35.600662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829111, 34.530762, 35.657036>,  <24.581802, 34.230743, 35.750992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829111, 34.530762, 35.657036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590675, -0.246262, 0.768413,
		0.518503, -0.613828, -0.595290,
		0.618270, 0.750047, -0.234885,
		25.014593, 34.755775, 35.586571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278164, 33.993652, 35.577957>,  <24.581802, 34.230743, 35.750992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278164, 33.993652, 35.577957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293016, 34.365932, 35.723515>,  <25.301928, 34.589302, 35.810848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293016, 34.365932, 35.723515>,  <25.278164, 33.993652, 35.577957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293016, 34.365932, 35.723515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543013, -0.324483, 0.774498,
		0.838903, 0.168841, -0.517430,
		0.037131, 0.930700, 0.363893,
		25.304155, 34.645142, 35.832684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024067, 34.238029, 35.716030>,  <25.278164, 33.993652, 35.577957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024067, 34.238029, 35.716030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739685, 34.394646, 35.949692>,  <25.569056, 34.488613, 36.089890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739685, 34.394646, 35.949692>,  <26.024067, 34.238029, 35.716030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739685, 34.394646, 35.949692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361648, -0.508846, 0.781208,
		0.603119, 0.766664, 0.220168,
		-0.710955, 0.391538, 0.584158,
		25.526398, 34.512108, 36.124939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374302, 34.628143, 36.191586>,  <26.024067, 34.238029, 35.716030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374302, 34.628143, 36.191586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033033, 34.464272, 36.320747>,  <25.828272, 34.365948, 36.398243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033033, 34.464272, 36.320747>,  <26.374302, 34.628143, 36.191586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033033, 34.464272, 36.320747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506547, -0.502902, 0.700356,
		-0.124531, 0.761088, 0.636582,
		-0.853172, -0.409675, 0.322900,
		25.777082, 34.341370, 36.417618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546038, 34.579075, 36.888329>,  <26.374302, 34.628143, 36.191586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546038, 34.579075, 36.888329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235271, 34.335888, 36.822868>,  <26.048813, 34.189976, 36.783592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235271, 34.335888, 36.822868>,  <26.546038, 34.579075, 36.888329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235271, 34.335888, 36.822868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364106, -0.645907, 0.670993,
		-0.513646, 0.461716, 0.723178,
		-0.776914, -0.607966, -0.163654,
		26.002197, 34.153500, 36.773773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249767, 34.491482, 37.536289>,  <26.546038, 34.579075, 36.888329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249767, 34.491482, 37.536289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228039, 34.189983, 37.274323>,  <26.215002, 34.009083, 37.117142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228039, 34.189983, 37.274323>,  <26.249767, 34.491482, 37.536289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228039, 34.189983, 37.274323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531076, -0.577230, 0.620293,
		-0.845581, -0.314113, 0.431654,
		-0.054321, -0.753750, -0.654913,
		26.211742, 33.963860, 37.077850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882710, 33.936237, 37.850922>,  <26.249767, 34.491482, 37.536289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882710, 33.936237, 37.850922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132549, 33.797718, 37.570934>,  <26.282454, 33.714607, 37.402943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132549, 33.797718, 37.570934>,  <25.882710, 33.936237, 37.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132549, 33.797718, 37.570934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498743, -0.512831, 0.698756,
		-0.600942, -0.785546, -0.147600,
		0.624599, -0.346298, -0.699967,
		26.319929, 33.693829, 37.360943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905375, 33.173172, 37.940544>,  <25.882710, 33.936237, 37.850922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905375, 33.173172, 37.940544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233671, 33.228901, 37.718922>,  <26.430649, 33.262337, 37.585949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233671, 33.228901, 37.718922>,  <25.905375, 33.173172, 37.940544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233671, 33.228901, 37.718922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540728, -0.502433, 0.674666,
		-0.184380, -0.853317, -0.487701,
		0.820741, 0.139319, -0.554052,
		26.479895, 33.270695, 37.552708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339743, 32.514652, 37.854855>,  <25.905375, 33.173172, 37.940544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339743, 32.514652, 37.854855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585903, 32.824760, 37.797947>,  <26.733599, 33.010826, 37.763802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585903, 32.824760, 37.797947>,  <26.339743, 32.514652, 37.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585903, 32.824760, 37.797947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575628, -0.318741, 0.753032,
		0.538455, -0.545310, -0.642420,
		0.615401, 0.775269, -0.142268,
		26.770523, 33.057343, 37.755268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061403, 32.295292, 37.982868>,  <26.339743, 32.514652, 37.854855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061403, 32.295292, 37.982868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034672, 32.690559, 38.038090>,  <27.018633, 32.927719, 38.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034672, 32.690559, 38.038090>,  <27.061403, 32.295292, 37.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034672, 32.690559, 38.038090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471386, -0.090680, 0.877253,
		0.879391, 0.123706, -0.459748,
		-0.066831, 0.988167, 0.138057,
		27.014622, 32.987011, 38.079506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539928, 32.384647, 38.461945>,  <27.061403, 32.295292, 37.982868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539928, 32.384647, 38.461945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340269, 32.731144, 38.453232>,  <27.220474, 32.939041, 38.448006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340269, 32.731144, 38.453232>,  <27.539928, 32.384647, 38.461945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340269, 32.731144, 38.453232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208671, 0.144559, 0.967243,
		0.841016, 0.478253, -0.252916,
		-0.499148, 0.866243, -0.021779,
		27.190525, 32.991016, 38.446697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610491, 33.001743, 38.964561>,  <27.539928, 32.384647, 38.461945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610491, 33.001743, 38.964561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855101, 33.028545, 38.649208>,  <28.001867, 33.044628, 38.459995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855101, 33.028545, 38.649208>,  <27.610491, 33.001743, 38.964561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855101, 33.028545, 38.649208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580754, 0.714729, -0.389727,
		0.537364, 0.696184, 0.475991,
		0.611527, 0.067008, -0.788381,
		28.038559, 33.048649, 38.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400980, 33.721439, 38.736984>,  <27.610491, 33.001743, 38.964561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400980, 33.721439, 38.736984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542002, 33.429802, 38.502331>,  <27.626614, 33.254822, 38.361538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542002, 33.429802, 38.502331>,  <27.400980, 33.721439, 38.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542002, 33.429802, 38.502331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684209, 0.226832, -0.693112,
		0.638407, 0.645737, -0.418879,
		0.352553, -0.729089, -0.586631,
		27.647768, 33.211075, 38.326340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491114, 34.006897, 38.138798>,  <27.400980, 33.721439, 38.736984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491114, 34.006897, 38.138798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441196, 33.620800, 38.046936>,  <27.411247, 33.389141, 37.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441196, 33.620800, 38.046936>,  <27.491114, 34.006897, 38.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441196, 33.620800, 38.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554998, 0.259775, -0.790250,
		0.822438, 0.028842, -0.568123,
		-0.124791, -0.965238, -0.229656,
		27.403759, 33.331230, 37.978039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767906, 33.924095, 37.539211>,  <27.491114, 34.006897, 38.138798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767906, 33.924095, 37.539211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490269, 33.639652, 37.584042>,  <27.323687, 33.468987, 37.610939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490269, 33.639652, 37.584042>,  <27.767906, 33.924095, 37.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490269, 33.639652, 37.584042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422130, 0.275929, -0.863521,
		0.583130, -0.646676, -0.491700,
		-0.694093, -0.711107, 0.112079,
		27.282040, 33.426319, 37.617664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608889, 33.619267, 36.914322>,  <27.767906, 33.924095, 37.539211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608889, 33.619267, 36.914322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280096, 33.524616, 37.121532>,  <27.082821, 33.467827, 37.245861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280096, 33.524616, 37.121532>,  <27.608889, 33.619267, 36.914322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280096, 33.524616, 37.121532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554915, 0.128128, -0.821981,
		0.128128, -0.963115, -0.236626,
		0.821981, 0.236626, -0.518030,
		27.033503, 33.453629, 37.276943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127707, 33.124195, 36.468781>,  <27.608889, 33.619267, 36.914322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127707, 33.124195, 36.468781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896919, 33.316795, 36.732677>,  <26.758446, 33.432358, 36.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896919, 33.316795, 36.732677>,  <27.127707, 33.124195, 36.468781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896919, 33.316795, 36.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594367, 0.306501, -0.743495,
		-0.560208, -0.821103, 0.109349,
		-0.576971, 0.481505, 0.659741,
		26.723827, 33.461246, 36.930599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376379, 33.027164, 36.239075>,  <27.127707, 33.124195, 36.468781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376379, 33.027164, 36.239075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324322, 33.335007, 36.489120>,  <26.293087, 33.519711, 36.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324322, 33.335007, 36.489120>,  <26.376379, 33.027164, 36.239075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324322, 33.335007, 36.489120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706784, 0.370159, -0.602859,
		-0.695356, -0.520282, 0.495770,
		-0.130143, 0.769604, 0.625119,
		26.285278, 33.565887, 36.676655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785376, 33.073437, 36.490501>,  <26.376379, 33.027164, 36.239075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785376, 33.073437, 36.490501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924416, 33.447880, 36.469028>,  <26.007839, 33.672546, 36.456146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924416, 33.447880, 36.469028>,  <25.785376, 33.073437, 36.490501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924416, 33.447880, 36.469028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792876, 0.262891, -0.549761,
		-0.500522, 0.233657, 0.833596,
		0.347600, 0.936105, -0.053678,
		26.028696, 33.728710, 36.452927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070658, 33.232597, 36.726517>,  <25.785376, 33.073437, 36.490501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070658, 33.232597, 36.726517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329470, 33.537262, 36.740513>,  <25.484756, 33.720058, 36.748909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329470, 33.537262, 36.740513>,  <25.070658, 33.232597, 36.726517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329470, 33.537262, 36.740513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586110, 0.526204, -0.616104,
		-0.487673, 0.378132, 0.786887,
		0.647032, 0.761660, 0.034988,
		25.523579, 33.765759, 36.751011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649406, 33.777454, 36.702881>,  <25.070658, 33.232597, 36.726517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649406, 33.777454, 36.702881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015018, 33.912075, 36.612301>,  <25.234386, 33.992847, 36.557953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015018, 33.912075, 36.612301>,  <24.649406, 33.777454, 36.702881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015018, 33.912075, 36.612301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391209, 0.583735, -0.711484,
		-0.107264, 0.738908, 0.665214,
		0.914030, 0.336554, -0.226453,
		25.289227, 34.013042, 36.544365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651270, 34.521053, 36.838657>,  <24.649406, 33.777454, 36.702881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651270, 34.521053, 36.838657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909813, 34.394115, 36.561092>,  <25.064939, 34.317951, 36.394554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909813, 34.394115, 36.561092>,  <24.651270, 34.521053, 36.838657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909813, 34.394115, 36.561092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481981, 0.535211, -0.693717,
		0.591536, 0.782842, 0.192984,
		0.646358, -0.317344, -0.693912,
		25.103720, 34.298912, 36.352921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316006, 34.603600, 37.063259>,  <24.651270, 34.521053, 36.838657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316006, 34.603600, 37.063259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577814, 34.686172, 36.772331>,  <25.734900, 34.735714, 36.597775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577814, 34.686172, 36.772331>,  <25.316006, 34.603600, 37.063259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577814, 34.686172, 36.772331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716449, 0.476590, -0.509474,
		0.241461, 0.854546, 0.459834,
		0.654521, 0.206429, -0.727317,
		25.774170, 34.748100, 36.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247967, 35.325420, 36.795399>,  <25.316006, 34.603600, 37.063259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247967, 35.325420, 36.795399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412970, 35.112053, 36.500019>,  <25.511971, 34.984032, 36.322792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412970, 35.112053, 36.500019>,  <25.247967, 35.325420, 36.795399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412970, 35.112053, 36.500019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595963, 0.455060, -0.661625,
		0.688960, 0.713012, -0.130182,
		0.412506, -0.533418, -0.738447,
		25.536722, 34.952026, 36.278484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419823, 35.832993, 36.277737>,  <25.247967, 35.325420, 36.795399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419823, 35.832993, 36.277737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386347, 35.459057, 36.139706>,  <25.366262, 35.234695, 36.056889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386347, 35.459057, 36.139706>,  <25.419823, 35.832993, 36.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386347, 35.459057, 36.139706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332696, 0.352632, -0.874622,
		0.939313, 0.041609, -0.340528,
		-0.083688, -0.934837, -0.345075,
		25.361240, 35.178604, 36.036182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683632, 35.887478, 35.628746>,  <25.419823, 35.832993, 36.277737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683632, 35.887478, 35.628746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497414, 35.534103, 35.607555>,  <25.385683, 35.322079, 35.594841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497414, 35.534103, 35.607555>,  <25.683632, 35.887478, 35.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497414, 35.534103, 35.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206773, 0.166774, -0.964070,
		0.860531, -0.437864, -0.260311,
		-0.465544, -0.883437, -0.052976,
		25.357750, 35.269073, 35.591663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961723, 35.412113, 35.081020>,  <25.683632, 35.887478, 35.628746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961723, 35.412113, 35.081020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572950, 35.336853, 35.137512>,  <25.339687, 35.291695, 35.171406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572950, 35.336853, 35.137512>,  <25.961723, 35.412113, 35.081020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572950, 35.336853, 35.137512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163703, 0.109770, -0.980383,
		0.168963, -0.975985, -0.137491,
		-0.971933, -0.188157, 0.141225,
		25.281370, 35.280407, 35.179878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611605, 34.849445, 34.658398>,  <25.961723, 35.412113, 35.081020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611605, 34.849445, 34.658398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284172, 35.069263, 34.725246>,  <25.087713, 35.201153, 34.765358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284172, 35.069263, 34.725246>,  <25.611605, 34.849445, 34.658398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284172, 35.069263, 34.725246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081599, 0.176749, -0.980868,
		-0.568566, -0.816556, -0.099841,
		-0.818580, 0.549541, 0.167124,
		25.038597, 35.234127, 34.775383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049103, 34.940952, 34.034035>,  <25.611605, 34.849445, 34.658398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049103, 34.940952, 34.034035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325878, 34.739292, 33.827324>,  <26.491943, 34.618298, 33.703297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325878, 34.739292, 33.827324>,  <26.049103, 34.940952, 34.034035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325878, 34.739292, 33.827324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720651, -0.525374, -0.452377,
		-0.043435, 0.685431, -0.726841,
		0.691936, -0.504149, -0.516776,
		26.533459, 34.588047, 33.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858717, 34.938385, 33.307251>,  <26.049103, 34.940952, 34.034035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858717, 34.938385, 33.307251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100922, 34.629784, 33.385368>,  <26.246244, 34.444622, 33.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100922, 34.629784, 33.385368>,  <25.858717, 34.938385, 33.307251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100922, 34.629784, 33.385368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643798, -0.619113, -0.449692,
		0.467849, 0.146563, -0.871572,
		0.605510, -0.771504, 0.195294,
		26.282574, 34.398331, 33.443958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990578, 34.641514, 32.665672>,  <25.858717, 34.938385, 33.307251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990578, 34.641514, 32.665672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070080, 34.355701, 32.933983>,  <26.117781, 34.184212, 33.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070080, 34.355701, 32.933983>,  <25.990578, 34.641514, 32.665672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070080, 34.355701, 32.933983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537517, -0.651780, -0.535032,
		0.819495, -0.254212, -0.513618,
		0.198754, -0.714534, 0.670774,
		26.129705, 34.141342, 33.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383966, 34.071648, 32.352966>,  <25.990578, 34.641514, 32.665672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383966, 34.071648, 32.352966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203264, 33.918736, 32.675404>,  <26.094843, 33.826988, 32.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203264, 33.918736, 32.675404>,  <26.383966, 34.071648, 32.352966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203264, 33.918736, 32.675404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404780, -0.717363, -0.567048,
		0.795029, -0.582456, 0.169334,
		-0.451754, -0.382277, 0.806091,
		26.067738, 33.804054, 32.917233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099630, 33.629536, 31.824362>,  <26.383966, 34.071648, 32.352966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099630, 33.629536, 31.824362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234577, 33.615971, 31.448057>,  <26.315546, 33.607830, 31.222275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234577, 33.615971, 31.448057>,  <26.099630, 33.629536, 31.824362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234577, 33.615971, 31.448057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918140, 0.208798, -0.336782,
		0.207852, 0.977370, 0.039302,
		0.337367, -0.033916, -0.940762,
		26.335787, 33.605797, 31.165829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779192, 33.336636, 32.329445>,  <26.099630, 33.629536, 31.824362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779192, 33.336636, 32.329445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808548, 33.714668, 32.456841>,  <25.826160, 33.941486, 32.533279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808548, 33.714668, 32.456841>,  <25.779192, 33.336636, 32.329445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808548, 33.714668, 32.456841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526608, -0.234481, 0.817130,
		0.846934, -0.227689, 0.480479,
		0.073388, 0.945080, 0.318493,
		25.830564, 33.998192, 32.552387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419058, 32.837227, 32.467155>,  <25.779192, 33.336636, 32.329445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419058, 32.837227, 32.467155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140646, 33.021202, 32.687702>,  <25.973598, 33.131588, 32.820030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140646, 33.021202, 32.687702>,  <26.419058, 32.837227, 32.467155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140646, 33.021202, 32.687702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712680, -0.535962, -0.452584,
		0.087351, -0.707958, 0.700832,
		-0.696030, 0.459935, 0.551364,
		25.931837, 33.159184, 32.853111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995300, 32.274464, 32.834000>,  <26.419058, 32.837227, 32.467155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995300, 32.274464, 32.834000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773798, 32.605453, 32.796822>,  <25.640898, 32.804047, 32.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773798, 32.605453, 32.796822>,  <25.995300, 32.274464, 32.834000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773798, 32.605453, 32.796822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653851, -0.501231, -0.566786,
		-0.515596, -0.253077, 0.818604,
		-0.553750, 0.827477, -0.092957,
		25.607672, 32.853695, 32.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270300, 32.008209, 32.840740>,  <25.995300, 32.274464, 32.834000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270300, 32.008209, 32.840740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246174, 32.388908, 32.720383>,  <25.231699, 32.617329, 32.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246174, 32.388908, 32.720383>,  <25.270300, 32.008209, 32.840740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246174, 32.388908, 32.720383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779586, -0.233174, -0.581271,
		-0.623385, 0.199518, 0.756032,
		-0.060313, 0.951747, -0.300899,
		25.228081, 32.674431, 32.630112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398657, 32.331200, 32.205105>,  <25.270300, 32.008209, 32.840740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398657, 32.331200, 32.205105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438631, 31.942545, 32.119381>,  <25.462616, 31.709351, 32.067947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438631, 31.942545, 32.119381>,  <25.398657, 32.331200, 32.205105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438631, 31.942545, 32.119381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547597, -0.126124, 0.827182,
		-0.830753, -0.200020, 0.519463,
		0.099936, -0.971640, -0.214308,
		25.468613, 31.651052, 32.055088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862213, 32.008156, 31.627762>,  <25.398657, 32.331200, 32.205105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862213, 32.008156, 31.627762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594507, 32.300678, 31.575182>,  <24.433884, 32.476192, 31.543634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594507, 32.300678, 31.575182>,  <24.862213, 32.008156, 31.627762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594507, 32.300678, 31.575182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484294, 0.563509, 0.669266,
		0.563509, 0.384257, -0.731303,
		-0.669266, 0.731303, -0.131449,
		24.393728, 32.520069, 31.535748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211044, 32.669563, 31.372725>,  <24.862213, 32.008156, 31.627762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211044, 32.669563, 31.372725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888275, 32.717560, 31.604061>,  <24.694614, 32.746357, 31.742863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888275, 32.717560, 31.604061>,  <25.211044, 32.669563, 31.372725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888275, 32.717560, 31.604061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516659, 0.617916, 0.592658,
		-0.286251, 0.777034, -0.560606,
		-0.806922, 0.119994, 0.578341,
		24.646198, 32.753559, 31.777563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265652, 33.310017, 31.570745>,  <25.211044, 32.669563, 31.372725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265652, 33.310017, 31.570745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075928, 33.106480, 31.858110>,  <24.962093, 32.984360, 32.030529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075928, 33.106480, 31.858110>,  <25.265652, 33.310017, 31.570745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075928, 33.106480, 31.858110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528329, 0.488232, 0.694620,
		-0.704202, 0.709022, 0.037262,
		-0.474308, -0.508839, 0.718411,
		24.933636, 32.953827, 32.073635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998442, 33.763020, 32.018612>,  <25.265652, 33.310017, 31.570745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998442, 33.763020, 32.018612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074495, 33.432617, 32.230862>,  <25.120129, 33.234375, 32.358212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074495, 33.432617, 32.230862>,  <24.998442, 33.763020, 32.018612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074495, 33.432617, 32.230862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457407, 0.552769, 0.696581,
		-0.868693, 0.110266, 0.482923,
		0.190135, -0.826007, 0.530623,
		25.131536, 33.184814, 32.390049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883617, 33.930225, 32.761799>,  <24.998442, 33.763020, 32.018612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883617, 33.930225, 32.761799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107752, 33.599045, 32.770866>,  <25.242233, 33.400337, 32.776306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107752, 33.599045, 32.770866>,  <24.883617, 33.930225, 32.761799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107752, 33.599045, 32.770866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660904, 0.463444, 0.590275,
		-0.499227, -0.315770, 0.806884,
		0.560337, -0.827954, 0.022670,
		25.275852, 33.350658, 32.777668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951126, 33.685337, 33.464573>,  <24.883617, 33.930225, 32.761799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951126, 33.685337, 33.464573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270866, 33.542629, 33.271183>,  <25.462711, 33.457005, 33.155148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270866, 33.542629, 33.271183>,  <24.951126, 33.685337, 33.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270866, 33.542629, 33.271183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600861, 0.472919, 0.644448,
		-0.001273, -0.805645, 0.592398,
		0.799352, -0.356770, -0.483479,
		25.510672, 33.435600, 33.126141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422644, 33.450386, 33.930695>,  <24.951126, 33.685337, 33.464573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422644, 33.450386, 33.930695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653522, 33.515259, 33.610561>,  <25.792049, 33.554180, 33.418480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653522, 33.515259, 33.610561>,  <25.422644, 33.450386, 33.930695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653522, 33.515259, 33.610561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596616, 0.585446, 0.548911,
		0.557575, -0.794324, 0.241161,
		0.577200, 0.162179, -0.800336,
		25.826683, 33.563911, 33.370461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138994, 33.244789, 34.067738>,  <25.422644, 33.450386, 33.930695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138994, 33.244789, 34.067738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174040, 33.504585, 33.765614>,  <26.195068, 33.660461, 33.584339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174040, 33.504585, 33.765614>,  <26.138994, 33.244789, 34.067738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174040, 33.504585, 33.765614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747417, 0.458395, 0.480876,
		0.658553, -0.606660, -0.445277,
		0.087616, 0.649490, -0.755305,
		26.200325, 33.699432, 33.539021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828362, 33.333927, 33.832718>,  <26.138994, 33.244789, 34.067738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828362, 33.333927, 33.832718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640800, 33.676163, 33.744999>,  <26.528265, 33.881504, 33.692368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640800, 33.676163, 33.744999>,  <26.828362, 33.333927, 33.832718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640800, 33.676163, 33.744999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710946, 0.512938, 0.481093,
		0.524107, 0.069675, -0.848798,
		-0.468901, 0.855593, -0.219300,
		26.500130, 33.932842, 33.679211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259596, 33.833149, 33.542686>,  <26.828362, 33.333927, 33.832718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259596, 33.833149, 33.542686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957874, 33.970230, 33.766682>,  <26.776842, 34.052479, 33.901077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957874, 33.970230, 33.766682>,  <27.259596, 33.833149, 33.542686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957874, 33.970230, 33.766682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651999, 0.491020, 0.577751,
		-0.076968, 0.800909, -0.593819,
		-0.754303, 0.342701, 0.559985,
		26.731583, 34.073040, 33.934677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254297, 34.580654, 33.625469>,  <27.259596, 33.833149, 33.542686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254297, 34.580654, 33.625469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077927, 34.418800, 33.945934>,  <26.972103, 34.321690, 34.138214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077927, 34.418800, 33.945934>,  <27.254297, 34.580654, 33.625469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077927, 34.418800, 33.945934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788316, 0.252170, 0.561220,
		-0.429116, 0.879024, 0.207790,
		-0.440928, -0.404633, 0.801159,
		26.945648, 34.297409, 34.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286892, 35.101257, 34.192642>,  <27.254297, 34.580654, 33.625469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286892, 35.101257, 34.192642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287291, 34.724571, 34.327206>,  <27.287529, 34.498558, 34.407944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287291, 34.724571, 34.327206>,  <27.286892, 35.101257, 34.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287291, 34.724571, 34.327206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876904, 0.162521, 0.452357,
		-0.480665, 0.294547, 0.825956,
		0.000995, -0.941716, 0.336407,
		27.287588, 34.442055, 34.428127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595190, 35.685585, 34.385006>,  <27.286892, 35.101257, 34.192642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595190, 35.685585, 34.385006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918428, 35.566967, 34.588589>,  <28.112371, 35.495796, 34.710739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918428, 35.566967, 34.588589>,  <27.595190, 35.685585, 34.385006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918428, 35.566967, 34.588589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271158, -0.579767, -0.768338,
		0.522927, 0.758900, -0.388096,
		0.808097, -0.296549, 0.508957,
		28.160858, 35.478001, 34.741276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203749, 35.568279, 33.959572>,  <27.595190, 35.685585, 34.385006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203749, 35.568279, 33.959572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319298, 35.359386, 34.280529>,  <28.388626, 35.234051, 34.473103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319298, 35.359386, 34.280529>,  <28.203749, 35.568279, 33.959572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319298, 35.359386, 34.280529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500238, -0.632274, -0.591601,
		0.816282, 0.572282, 0.078593,
		0.288871, -0.522228, 0.802391,
		28.405958, 35.202717, 34.521248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838230, 35.308357, 33.748138>,  <28.203749, 35.568279, 33.959572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838230, 35.308357, 33.748138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654093, 35.066429, 34.008068>,  <28.543612, 34.921272, 34.164024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654093, 35.066429, 34.008068>,  <28.838230, 35.308357, 33.748138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654093, 35.066429, 34.008068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264040, -0.792154, -0.550249,
		0.847566, -0.081723, 0.524360,
		-0.460342, -0.604825, 0.649825,
		28.515989, 34.884983, 34.203014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339199, 34.779541, 34.198288>,  <28.838230, 35.308357, 33.748138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339199, 34.779541, 34.198288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974998, 34.640873, 34.108128>,  <28.756477, 34.557671, 34.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974998, 34.640873, 34.108128>,  <29.339199, 34.779541, 34.198288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974998, 34.640873, 34.108128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413498, -0.765711, -0.492652,
		-0.001802, -0.541763, 0.840529,
		-0.910503, -0.346669, -0.225398,
		28.701847, 34.536873, 34.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133175, 34.110420, 34.594322>,  <29.339199, 34.779541, 34.198288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133175, 34.110420, 34.594322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016590, 34.206089, 34.223843>,  <28.946640, 34.263493, 34.001556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016590, 34.206089, 34.223843>,  <29.133175, 34.110420, 34.594322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016590, 34.206089, 34.223843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528546, -0.766750, -0.364326,
		-0.797302, -0.595726, 0.097063,
		-0.291461, 0.239176, -0.926200,
		28.929152, 34.277840, 33.945984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866928, 33.581966, 34.214901>,  <29.133175, 34.110420, 34.594322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866928, 33.581966, 34.214901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082125, 33.832802, 33.989571>,  <29.211243, 33.983303, 33.854374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082125, 33.832802, 33.989571>,  <28.866928, 33.581966, 34.214901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082125, 33.832802, 33.989571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644399, -0.736770, -0.204744,
		-0.543432, -0.252855, -0.800466,
		0.537989, 0.627084, -0.563323,
		29.243521, 34.020927, 33.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800816, 33.487625, 33.411835>,  <28.866928, 33.581966, 34.214901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800816, 33.487625, 33.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166021, 33.605801, 33.524349>,  <29.385145, 33.676708, 33.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166021, 33.605801, 33.524349>,  <28.800816, 33.487625, 33.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166021, 33.605801, 33.524349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400342, -0.781320, -0.478816,
		0.078309, 0.549775, -0.831634,
		0.913014, 0.295443, 0.281282,
		29.439926, 33.694435, 33.608734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191917, 33.025822, 33.034245>,  <28.800816, 33.487625, 33.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191917, 33.025822, 33.034245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457851, 33.216988, 33.263885>,  <29.617411, 33.331688, 33.401672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457851, 33.216988, 33.263885>,  <29.191917, 33.025822, 33.034245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457851, 33.216988, 33.263885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745130, -0.478512, -0.464552,
		0.052703, 0.736633, -0.674236,
		0.664834, 0.477910, 0.574106,
		29.657301, 33.360359, 33.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525148, 33.332676, 32.491608>,  <29.191917, 33.025822, 33.034245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525148, 33.332676, 32.491608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735016, 33.248363, 32.821526>,  <29.860937, 33.197777, 33.019478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735016, 33.248363, 32.821526>,  <29.525148, 33.332676, 32.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735016, 33.248363, 32.821526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581659, -0.618686, -0.528110,
		0.621606, 0.756836, -0.202005,
		0.524670, -0.210778, 0.824799,
		29.892416, 33.185131, 33.068966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259541, 33.401356, 32.252972>,  <29.525148, 33.332676, 32.491608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259541, 33.401356, 32.252972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252890, 33.201916, 32.599640>,  <30.248899, 33.082253, 32.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252890, 33.201916, 32.599640>,  <30.259541, 33.401356, 32.252972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252890, 33.201916, 32.599640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623294, -0.682930, -0.380935,
		0.781811, 0.533857, 0.322132,
		-0.016629, -0.498602, 0.866672,
		30.247900, 33.052334, 32.859642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887684, 33.307320, 32.352299>,  <30.259541, 33.401356, 32.252972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887684, 33.307320, 32.352299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751541, 33.002663, 32.572865>,  <30.669855, 32.819870, 32.705204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751541, 33.002663, 32.572865>,  <30.887684, 33.307320, 32.352299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751541, 33.002663, 32.572865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629567, -0.620168, -0.468013,
		0.698429, 0.187862, 0.690583,
		-0.340356, -0.761643, 0.551415,
		30.649435, 32.774170, 32.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389648, 33.233875, 32.756893>,  <30.887684, 33.307320, 32.352299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389648, 33.233875, 32.756893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174515, 32.900654, 32.705112>,  <31.045435, 32.700722, 32.674042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174515, 32.900654, 32.705112>,  <31.389648, 33.233875, 32.756893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174515, 32.900654, 32.705112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782980, -0.436662, -0.443023,
		0.312533, -0.339633, 0.887115,
		-0.537835, -0.833052, -0.129454,
		31.013165, 32.650738, 32.666275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680037, 32.632759, 33.071480>,  <31.389648, 33.233875, 32.756893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680037, 32.632759, 33.071480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496416, 32.571564, 32.721424>,  <31.386244, 32.534847, 32.511391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496416, 32.571564, 32.721424>,  <31.680037, 32.632759, 33.071480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496416, 32.571564, 32.721424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796456, -0.507301, -0.329097,
		-0.393610, -0.848081, 0.354726,
		-0.459053, -0.152988, -0.875137,
		31.358700, 32.525669, 32.458881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167034, 32.108929, 32.880444>,  <31.680037, 32.632759, 33.071480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167034, 32.108929, 32.880444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945751, 32.192589, 32.557899>,  <31.812981, 32.242783, 32.364372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945751, 32.192589, 32.557899>,  <32.167034, 32.108929, 32.880444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945751, 32.192589, 32.557899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687961, -0.431134, -0.583809,
		-0.469752, -0.877713, 0.094621,
		-0.553211, 0.209150, -0.806358,
		31.779787, 32.255333, 32.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931896, 31.536526, 32.425606>,  <32.167034, 32.108929, 32.880444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931896, 31.536526, 32.425606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977825, 31.865553, 32.202824>,  <32.005383, 32.062969, 32.069153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977825, 31.865553, 32.202824>,  <31.931896, 31.536526, 32.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977825, 31.865553, 32.202824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788213, -0.416672, -0.452885,
		-0.604596, -0.386997, -0.696202,
		0.114823, 0.822568, -0.556954,
		32.012272, 32.112324, 32.035736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970587, 31.359310, 31.712412>,  <31.931896, 31.536526, 32.425606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970587, 31.359310, 31.712412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172401, 31.694622, 31.795092>,  <32.293491, 31.895809, 31.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172401, 31.694622, 31.795092>,  <31.970587, 31.359310, 31.712412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172401, 31.694622, 31.795092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847640, -0.435411, -0.303187,
		-0.164156, 0.328177, -0.930243,
		0.504538, 0.838282, 0.206701,
		32.323761, 31.946106, 31.857101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303295, 31.606936, 31.114855>,  <31.970587, 31.359310, 31.712412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303295, 31.606936, 31.114855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501949, 31.729807, 31.439568>,  <32.621143, 31.803530, 31.634396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501949, 31.729807, 31.439568>,  <32.303295, 31.606936, 31.114855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501949, 31.729807, 31.439568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808843, -0.503054, -0.304483,
		0.314840, 0.807823, -0.498294,
		0.496638, 0.307178, 0.811784,
		32.650940, 31.821960, 31.683104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901669, 31.705742, 30.838291>,  <32.303295, 31.606936, 31.114855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901669, 31.705742, 30.838291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972694, 31.679182, 31.231037>,  <33.015312, 31.663246, 31.466684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972694, 31.679182, 31.231037>,  <32.901669, 31.705742, 30.838291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972694, 31.679182, 31.231037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784810, -0.592411, -0.181994,
		0.593753, 0.802895, -0.053083,
		0.177569, -0.066400, 0.981866,
		33.025967, 31.659262, 31.525597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567890, 31.751844, 30.883541>,  <32.901669, 31.705742, 30.838291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567890, 31.751844, 30.883541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491821, 31.592779, 31.242584>,  <33.446178, 31.497339, 31.458010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491821, 31.592779, 31.242584>,  <33.567890, 31.751844, 30.883541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491821, 31.592779, 31.242584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816134, -0.572214, -0.080593,
		0.545672, 0.717240, 0.433369,
		-0.190175, -0.397665, 0.897606,
		33.434769, 31.473480, 31.511866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196186, 31.840912, 31.310246>,  <33.567890, 31.751844, 30.883541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196186, 31.840912, 31.310246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994942, 31.532116, 31.465633>,  <33.874195, 31.346838, 31.558867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994942, 31.532116, 31.465633>,  <34.196186, 31.840912, 31.310246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994942, 31.532116, 31.465633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842972, -0.537434, 0.023731,
		0.190458, 0.339409, 0.921155,
		-0.503115, -0.771988, 0.388471,
		33.844006, 31.300520, 31.582174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713867, 31.503748, 31.706594>,  <34.196186, 31.840912, 31.310246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713867, 31.503748, 31.706594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421375, 31.242941, 31.626425>,  <34.245880, 31.086456, 31.578323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421375, 31.242941, 31.626425>,  <34.713867, 31.503748, 31.706594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421375, 31.242941, 31.626425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680057, -0.719713, -0.139769,
		-0.053116, -0.238504, 0.969688,
		-0.731233, -0.652019, -0.200424,
		34.202007, 31.047335, 31.566298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117390, 30.923346, 31.875614>,  <34.713867, 31.503748, 31.706594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117390, 30.923346, 31.875614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777580, 30.792517, 31.710047>,  <34.573692, 30.714020, 31.610706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777580, 30.792517, 31.710047>,  <35.117390, 30.923346, 31.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777580, 30.792517, 31.710047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488449, -0.784084, -0.382923,
		-0.199305, -0.527481, 0.825858,
		-0.849527, -0.327071, -0.413920,
		34.522724, 30.694395, 31.585871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963951, 30.228867, 32.113365>,  <35.117390, 30.923346, 31.875614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963951, 30.228867, 32.113365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799160, 30.280468, 31.752558>,  <34.700283, 30.311428, 31.536074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799160, 30.280468, 31.752558>,  <34.963951, 30.228867, 32.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799160, 30.280468, 31.752558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411684, -0.856777, -0.310563,
		-0.812888, -0.499291, 0.299869,
		-0.411982, 0.129002, -0.902014,
		34.675564, 30.319168, 31.481953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985065, 29.547403, 31.847855>,  <34.963951, 30.228867, 32.113365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985065, 29.547403, 31.847855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900303, 29.760780, 31.520309>,  <34.849445, 29.888807, 31.323782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900303, 29.760780, 31.520309>,  <34.985065, 29.547403, 31.847855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900303, 29.760780, 31.520309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473452, -0.676967, -0.563524,
		-0.854950, -0.507104, -0.109109,
		-0.211902, 0.533443, -0.818863,
		34.836731, 29.920813, 31.274651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608604, 29.188454, 31.286394>,  <34.985065, 29.547403, 31.847855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608604, 29.188454, 31.286394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 29.493933, 31.117550>,  <34.921215, 29.677219, 31.016243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 29.493933, 31.117550>,  <34.608604, 29.188454, 31.286394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803986, 29.493933, 31.117550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459675, -0.636385, -0.619446,
		-0.741693, 0.108539, -0.661899,
		0.488457, 0.763697, -0.422110,
		34.950523, 29.723042, 30.990917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628990, 29.072908, 30.562298>,  <34.608604, 29.188454, 31.286394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628990, 29.072908, 30.562298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921730, 29.341612, 30.608137>,  <35.097374, 29.502834, 30.635641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921730, 29.341612, 30.608137>,  <34.628990, 29.072908, 30.562298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921730, 29.341612, 30.608137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550656, -0.483881, -0.680174,
		-0.401459, 0.560893, -0.724037,
		0.731853, 0.671758, 0.114601,
		35.141285, 29.543139, 30.642517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939602, 28.944977, 29.854822>,  <34.628990, 29.072908, 30.562298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939602, 28.944977, 29.854822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178684, 29.180906, 30.072025>,  <35.322132, 29.322464, 30.202347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178684, 29.180906, 30.072025>,  <34.939602, 28.944977, 29.854822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178684, 29.180906, 30.072025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763744, -0.212920, -0.609393,
		-0.243818, 0.778955, -0.577738,
		0.597702, 0.589825, 0.543009,
		35.357994, 29.357853, 30.234928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318935, 29.445061, 29.392580>,  <34.939602, 28.944977, 29.854822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318935, 29.445061, 29.392580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532024, 29.432125, 29.730848>,  <35.659878, 29.424364, 29.933809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532024, 29.432125, 29.730848>,  <35.318935, 29.445061, 29.392580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532024, 29.432125, 29.730848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845660, -0.018250, -0.533410,
		0.032685, 0.999310, 0.017627,
		0.532721, -0.032341, 0.845673,
		35.691841, 29.422422, 29.984550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797291, 29.971407, 29.291327>,  <35.318935, 29.445061, 29.392580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797291, 29.971407, 29.291327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947227, 29.763536, 29.598423>,  <36.037189, 29.638815, 29.782681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947227, 29.763536, 29.598423>,  <35.797291, 29.971407, 29.291327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947227, 29.763536, 29.598423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908409, 0.040487, -0.416117,
		0.185162, 0.853404, 0.487254,
		0.374844, -0.519675, 0.767743,
		36.059681, 29.607634, 29.828747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242874, 30.397865, 29.519180>,  <35.797291, 29.971407, 29.291327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242874, 30.397865, 29.519180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340122, 30.029766, 29.641844>,  <36.398472, 29.808907, 29.715443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340122, 30.029766, 29.641844>,  <36.242874, 30.397865, 29.519180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340122, 30.029766, 29.641844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922329, 0.121429, -0.366829,
		0.300335, 0.372025, 0.878292,
		0.243120, -0.920246, 0.306660,
		36.413059, 29.753693, 29.733841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849171, 30.516386, 29.875061>,  <36.242874, 30.397865, 29.519180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849171, 30.516386, 29.875061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858322, 30.138344, 29.744675>,  <36.863811, 29.911518, 29.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858322, 30.138344, 29.744675>,  <36.849171, 30.516386, 29.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858322, 30.138344, 29.744675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988216, 0.070736, -0.135741,
		0.151347, -0.319018, 0.935586,
		0.022876, -0.945105, -0.325965,
		36.865185, 29.854813, 29.646885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523369, 30.257929, 30.136982>,  <36.849171, 30.516386, 29.875061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523369, 30.257929, 30.136982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419079, 30.012074, 29.839193>,  <37.356503, 29.864561, 29.660521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419079, 30.012074, 29.839193>,  <37.523369, 30.257929, 30.136982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419079, 30.012074, 29.839193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932874, 0.038120, -0.358180,
		0.248531, -0.787887, 0.563442,
		-0.260727, -0.614639, -0.744473,
		37.340862, 29.827682, 29.615850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147045, 29.653986, 30.054962>,  <37.523369, 30.257929, 30.136982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147045, 29.653986, 30.054962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952103, 29.613400, 29.708048>,  <37.835136, 29.589048, 29.499899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952103, 29.613400, 29.708048>,  <38.147045, 29.653986, 30.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952103, 29.613400, 29.708048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873098, -0.071944, -0.482208,
		-0.013469, -0.992235, 0.123651,
		-0.487359, -0.101465, -0.867287,
		37.805893, 29.582960, 29.447863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525520, 29.108601, 29.730736>,  <38.147045, 29.653986, 30.054962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525520, 29.108601, 29.730736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322021, 29.301855, 29.445709>,  <38.199921, 29.417809, 29.274693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322021, 29.301855, 29.445709>,  <38.525520, 29.108601, 29.730736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322021, 29.301855, 29.445709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770812, -0.113011, -0.626959,
		-0.383435, -0.868220, -0.314914,
		-0.508749, 0.483138, -0.712567,
		38.169395, 29.446796, 29.231939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461441, 28.668764, 29.139774>,  <38.525520, 29.108601, 29.730736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461441, 28.668764, 29.139774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436050, 29.049044, 29.018353>,  <38.420815, 29.277210, 28.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436050, 29.049044, 29.018353>,  <38.461441, 28.668764, 29.139774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436050, 29.049044, 29.018353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569377, -0.215307, -0.793380,
		-0.819622, -0.223200, -0.527637,
		-0.063479, 0.950697, -0.303555,
		38.417007, 29.334253, 28.927286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697479, 28.503864, 28.517864>,  <38.461441, 28.668764, 29.139774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697479, 28.503864, 28.517864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657726, 28.900543, 28.485210>,  <38.633877, 29.138550, 28.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657726, 28.900543, 28.485210>,  <38.697479, 28.503864, 28.517864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657726, 28.900543, 28.485210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416026, -0.033114, -0.908750,
		-0.903906, -0.124273, -0.409280,
		-0.099380, 0.991695, -0.081633,
		38.627911, 29.198051, 28.460720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170815, 28.700583, 27.958752>,  <38.697479, 28.503864, 28.517864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170815, 28.700583, 27.958752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446095, 28.986580, 28.008007>,  <38.611263, 29.158178, 28.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446095, 28.986580, 28.008007>,  <38.170815, 28.700583, 27.958752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446095, 28.986580, 28.008007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142523, 0.033183, -0.989235,
		-0.711383, 0.698343, -0.079067,
		0.688201, 0.714994, 0.123136,
		38.652554, 29.201078, 28.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124302, 29.068859, 27.354721>,  <38.170815, 28.700583, 27.958752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124302, 29.068859, 27.354721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478706, 29.157366, 27.517710>,  <38.691349, 29.210470, 27.615503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478706, 29.157366, 27.517710>,  <38.124302, 29.068859, 27.354721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478706, 29.157366, 27.517710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455037, -0.246134, -0.855780,
		-0.089064, 0.943641, -0.318761,
		0.886007, 0.221268, 0.407470,
		38.744507, 29.223745, 27.639952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398037, 29.462463, 26.895004>,  <38.124302, 29.068859, 27.354721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398037, 29.462463, 26.895004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702736, 29.335226, 27.120768>,  <38.885555, 29.258883, 27.256226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702736, 29.335226, 27.120768>,  <38.398037, 29.462463, 26.895004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702736, 29.335226, 27.120768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571020, -0.081912, -0.816839,
		0.306064, 0.944513, 0.119242,
		0.761748, -0.318095, 0.564407,
		38.931259, 29.239798, 27.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015148, 29.872690, 26.748598>,  <38.398037, 29.462463, 26.895004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015148, 29.872690, 26.748598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160954, 29.541458, 26.918970>,  <39.248436, 29.342720, 27.021193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160954, 29.541458, 26.918970>,  <39.015148, 29.872690, 26.748598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160954, 29.541458, 26.918970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648309, -0.102662, -0.754424,
		0.668449, 0.551132, 0.499429,
		0.364515, -0.828078, 0.425929,
		39.270309, 29.293036, 27.046749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718410, 29.917049, 26.557800>,  <39.015148, 29.872690, 26.748598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718410, 29.917049, 26.557800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683842, 29.533579, 26.666222>,  <39.663101, 29.303497, 26.731274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683842, 29.533579, 26.666222>,  <39.718410, 29.917049, 26.557800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683842, 29.533579, 26.666222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660688, -0.258788, -0.704641,
		0.745669, 0.118185, 0.655752,
		-0.086423, -0.958677, 0.271054,
		39.657913, 29.245975, 26.747538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434708, 29.599234, 26.637924>,  <39.718410, 29.917049, 26.557800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434708, 29.599234, 26.637924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193672, 29.282011, 26.602276>,  <40.049049, 29.091677, 26.580887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193672, 29.282011, 26.602276>,  <40.434708, 29.599234, 26.637924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193672, 29.282011, 26.602276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632376, -0.406386, -0.659508,
		0.486810, -0.453773, 0.746396,
		-0.602592, -0.793058, -0.089123,
		40.012894, 29.044094, 26.575539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882496, 28.935970, 26.734730>,  <40.434708, 29.599234, 26.637924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882496, 28.935970, 26.734730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548038, 28.819269, 26.548933>,  <40.347366, 28.749249, 26.437454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548038, 28.819269, 26.548933>,  <40.882496, 28.935970, 26.734730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548038, 28.819269, 26.548933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548196, -0.473461, -0.689431,
		-0.018777, -0.831093, 0.555816,
		-0.836139, -0.291751, -0.464492,
		40.297195, 28.731745, 26.409586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005539, 28.310478, 26.632830>,  <40.882496, 28.935970, 26.734730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005539, 28.310478, 26.632830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734497, 28.400852, 26.352886>,  <40.571873, 28.455076, 26.184919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734497, 28.400852, 26.352886>,  <41.005539, 28.310478, 26.632830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734497, 28.400852, 26.352886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605494, -0.368728, -0.705278,
		-0.417404, -0.901661, 0.113050,
		-0.677606, 0.225935, -0.699859,
		40.531216, 28.468632, 26.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042713, 27.714485, 26.216902>,  <41.005539, 28.310478, 26.632830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042713, 27.714485, 26.216902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871540, 27.993240, 25.986694>,  <40.768837, 28.160494, 25.848570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871540, 27.993240, 25.986694>,  <41.042713, 27.714485, 26.216902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871540, 27.993240, 25.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632822, -0.223610, -0.741306,
		-0.645300, -0.681428, -0.345318,
		-0.427930, 0.696889, -0.575518,
		40.743160, 28.202307, 25.814039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201382, 27.411716, 25.634329>,  <41.042713, 27.714485, 26.216902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201382, 27.411716, 25.634329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107216, 27.781893, 25.515575>,  <41.050716, 28.003998, 25.444323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107216, 27.781893, 25.515575>,  <41.201382, 27.411716, 25.634329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107216, 27.781893, 25.515575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701841, -0.049432, -0.710617,
		-0.672309, -0.375654, -0.637875,
		-0.235415, 0.925441, -0.296883,
		41.036591, 28.059525, 25.426510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047192, 27.421770, 24.924265>,  <41.201382, 27.411716, 25.634329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047192, 27.421770, 24.924265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152012, 27.803854, 24.979263>,  <41.214905, 28.033104, 25.012262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152012, 27.803854, 24.979263>,  <41.047192, 27.421770, 24.924265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152012, 27.803854, 24.979263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650876, -0.069746, -0.755973,
		-0.712522, 0.287599, -0.639999,
		0.262055, 0.955208, 0.137496,
		41.230629, 28.090416, 25.020512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061516, 27.617096, 24.243139>,  <41.047192, 27.421770, 24.924265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061516, 27.617096, 24.243139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253540, 27.900026, 24.450689>,  <41.368755, 28.069784, 24.575220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253540, 27.900026, 24.450689>,  <41.061516, 27.617096, 24.243139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253540, 27.900026, 24.450689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646640, 0.114372, -0.754172,
		-0.592792, 0.697572, -0.402481,
		0.480057, 0.707328, 0.518877,
		41.397556, 28.112225, 24.606352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152615, 28.144142, 23.779343>,  <41.061516, 27.617096, 24.243139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152615, 28.144142, 23.779343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437832, 28.197811, 24.054607>,  <41.608963, 28.230013, 24.219767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437832, 28.197811, 24.054607>,  <41.152615, 28.144142, 23.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437832, 28.197811, 24.054607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685378, 0.073413, -0.724477,
		-0.147724, 0.988235, -0.039611,
		0.713046, 0.134171, 0.688160,
		41.651745, 28.238062, 24.261055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571571, 28.677908, 23.552172>,  <41.152615, 28.144142, 23.779343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571571, 28.677908, 23.552172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814995, 28.461159, 23.784046>,  <41.961048, 28.331110, 23.923170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814995, 28.461159, 23.784046>,  <41.571571, 28.677908, 23.552172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814995, 28.461159, 23.784046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707679, 0.040149, -0.705393,
		0.358958, 0.839502, 0.407903,
		0.608556, -0.541871, 0.579686,
		41.997562, 28.298597, 23.957952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206829, 29.025404, 23.564743>,  <41.571571, 28.677908, 23.552172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206829, 29.025404, 23.564743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292671, 28.645393, 23.655424>,  <42.344177, 28.417387, 23.709833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292671, 28.645393, 23.655424>,  <42.206829, 29.025404, 23.564743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292671, 28.645393, 23.655424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880178, 0.087503, -0.466509,
		0.423359, 0.299651, 0.854971,
		0.214602, -0.950028, 0.226701,
		42.357052, 28.360386, 23.723434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895077, 29.082701, 23.682144>,  <42.206829, 29.025404, 23.564743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895077, 29.082701, 23.682144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833199, 28.693544, 23.613382>,  <42.796074, 28.460051, 23.572124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833199, 28.693544, 23.613382>,  <42.895077, 29.082701, 23.682144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833199, 28.693544, 23.613382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807422, -0.024226, -0.589477,
		0.569333, -0.229989, 0.789281,
		-0.154694, -0.972892, -0.171906,
		42.786789, 28.401676, 23.561811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444439, 28.828163, 23.938763>,  <42.895077, 29.082701, 23.682144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444439, 28.828163, 23.938763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289856, 28.595446, 23.652500>,  <43.197105, 28.455814, 23.480743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289856, 28.595446, 23.652500>,  <43.444439, 28.828163, 23.938763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289856, 28.595446, 23.652500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846837, 0.083577, -0.525245,
		0.365397, -0.809029, 0.460387,
		-0.386461, -0.581795, -0.715655,
		43.173916, 28.420906, 23.437803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050400, 28.502785, 23.686806>,  <43.444439, 28.828163, 23.938763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050400, 28.502785, 23.686806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776047, 28.417339, 23.408545>,  <43.611435, 28.366072, 23.241589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776047, 28.417339, 23.408545>,  <44.050400, 28.502785, 23.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776047, 28.417339, 23.408545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726745, -0.151810, -0.669922,
		0.037496, -0.965051, 0.259365,
		-0.685884, -0.213612, -0.695654,
		43.570282, 28.353256, 23.199848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344345, 28.022745, 23.263451>,  <44.050400, 28.502785, 23.686806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344345, 28.022745, 23.263451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049385, 28.137812, 23.018993>,  <43.872410, 28.206852, 22.872320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049385, 28.137812, 23.018993>,  <44.344345, 28.022745, 23.263451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049385, 28.137812, 23.018993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645552, 0.033892, -0.762964,
		-0.198766, -0.957131, -0.210695,
		-0.737397, 0.287665, -0.611141,
		43.828167, 28.224112, 22.835651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363060, 27.561331, 22.652317>,  <44.344345, 28.022745, 23.263451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363060, 27.561331, 22.652317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157379, 27.878191, 22.520809>,  <44.033970, 28.068308, 22.441904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157379, 27.878191, 22.520809>,  <44.363060, 27.561331, 22.652317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157379, 27.878191, 22.520809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599811, 0.058141, -0.798027,
		-0.613044, -0.607547, -0.505038,
		-0.514202, 0.792153, -0.328770,
		44.003117, 28.115837, 22.422178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104237, 27.370188, 21.983664>,  <44.363060, 27.561331, 22.652317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104237, 27.370188, 21.983664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132462, 27.768604, 22.005289>,  <44.149395, 28.007654, 22.018265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132462, 27.768604, 22.005289>,  <44.104237, 27.370188, 21.983664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132462, 27.768604, 22.005289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420500, 0.019445, -0.907084,
		-0.904544, 0.086739, -0.417463,
		0.070562, 0.996041, 0.054063,
		44.153629, 28.067417, 22.021507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000240, 27.566406, 21.360680>,  <44.104237, 27.370188, 21.983664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000240, 27.566406, 21.360680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165714, 27.898405, 21.510328>,  <44.264999, 28.097605, 21.600117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165714, 27.898405, 21.510328>,  <44.000240, 27.566406, 21.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165714, 27.898405, 21.510328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494058, 0.140494, -0.858002,
		-0.764702, 0.539781, -0.351947,
		0.413687, 0.829999, 0.374119,
		44.289822, 28.147404, 21.622564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808002, 28.164358, 20.909460>,  <44.000240, 27.566406, 21.360680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808002, 28.164358, 20.909460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172050, 28.190401, 21.073139>,  <44.390480, 28.206026, 21.171347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172050, 28.190401, 21.073139>,  <43.808002, 28.164358, 20.909460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172050, 28.190401, 21.073139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392177, 0.183329, -0.901436,
		-0.133706, 0.980893, 0.141319,
		0.910121, 0.065105, 0.409196,
		44.445087, 28.209932, 21.195898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228386, 28.832670, 20.681728>,  <43.808002, 28.164358, 20.909460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228386, 28.832670, 20.681728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447399, 28.515001, 20.787178>,  <44.578808, 28.324400, 20.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447399, 28.515001, 20.787178>,  <44.228386, 28.832670, 20.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447399, 28.515001, 20.787178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516787, 0.073148, -0.852983,
		0.658131, 0.603276, 0.450469,
		0.547535, -0.794171, 0.263624,
		44.611660, 28.276751, 20.866264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781685, 28.943472, 20.296999>,  <44.228386, 28.832670, 20.681728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781685, 28.943472, 20.296999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850647, 28.568829, 20.419010>,  <44.892025, 28.344042, 20.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850647, 28.568829, 20.419010>,  <44.781685, 28.943472, 20.296999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850647, 28.568829, 20.419010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761943, -0.069454, -0.643909,
		0.624276, 0.343425, 0.701668,
		0.172401, -0.936608, 0.305029,
		44.902367, 28.287846, 20.510519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525887, 28.795828, 20.165403>,  <44.781685, 28.943472, 20.296999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525887, 28.795828, 20.165403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359344, 28.439465, 20.237988>,  <45.259418, 28.225647, 20.281538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359344, 28.439465, 20.237988>,  <45.525887, 28.795828, 20.165403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359344, 28.439465, 20.237988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695549, -0.440642, -0.567491,
		0.585542, -0.110064, 0.803135,
		-0.416355, -0.890910, 0.181460,
		45.234436, 28.172192, 20.292425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795578, 29.427223, 20.529984>,  <45.525887, 28.795828, 20.165403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795578, 29.427223, 20.529984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024754, 29.373293, 20.853357>,  <46.162258, 29.340935, 21.047380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024754, 29.373293, 20.853357>,  <45.795578, 29.427223, 20.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024754, 29.373293, 20.853357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481074, 0.743264, 0.464894,
		-0.663559, -0.655271, 0.360983,
		0.572938, -0.134826, 0.808433,
		46.196636, 29.332846, 21.095888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423115, 29.082098, 21.168896>,  <45.795578, 29.427223, 20.529984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423115, 29.082098, 21.168896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704346, 29.357080, 21.241650>,  <45.873085, 29.522070, 21.285301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704346, 29.357080, 21.241650>,  <45.423115, 29.082098, 21.168896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704346, 29.357080, 21.241650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700793, 0.626425, 0.341293,
		0.120687, -0.367419, 0.922192,
		0.703082, 0.687455, 0.181883,
		45.915272, 29.563316, 21.296215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387127, 29.324635, 21.869646>,  <45.423115, 29.082098, 21.168896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387127, 29.324635, 21.869646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542782, 29.615364, 21.643267>,  <45.636177, 29.789803, 21.507439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542782, 29.615364, 21.643267>,  <45.387127, 29.324635, 21.869646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542782, 29.615364, 21.643267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704720, 0.630550, 0.325232,
		0.593244, 0.272272, 0.757582,
		0.389142, 0.726824, -0.565946,
		45.659523, 29.833412, 21.473482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325848, 29.936472, 22.228731>,  <45.387127, 29.324635, 21.869646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325848, 29.936472, 22.228731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368752, 30.053988, 21.848799>,  <45.394493, 30.124496, 21.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368752, 30.053988, 21.848799>,  <45.325848, 29.936472, 22.228731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368752, 30.053988, 21.848799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668786, 0.728223, 0.149723,
		0.735677, 0.619176, 0.274590,
		0.107258, 0.293789, -0.949834,
		45.400928, 30.142124, 21.563848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593639, 30.723885, 22.156225>,  <45.325848, 29.936472, 22.228731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593639, 30.723885, 22.156225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392258, 30.616648, 21.827673>,  <45.271431, 30.552305, 21.630543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392258, 30.616648, 21.827673>,  <45.593639, 30.723885, 22.156225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392258, 30.616648, 21.827673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797495, 0.509988, 0.322357,
		0.332472, 0.817337, -0.470555,
		-0.503452, -0.268091, -0.821379,
		45.241222, 30.536221, 21.581259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160534, 31.335833, 21.769442>,  <45.593639, 30.723885, 22.156225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160534, 31.335833, 21.769442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010025, 30.966686, 21.736591>,  <44.919720, 30.745199, 21.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010025, 30.966686, 21.736591>,  <45.160534, 31.335833, 21.769442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010025, 30.966686, 21.736591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897780, 0.341262, 0.278443,
		-0.228938, 0.178502, -0.956935,
		-0.376268, -0.922863, -0.082128,
		44.897144, 30.689827, 21.711952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496433, 31.361193, 21.526726>,  <45.160534, 31.335833, 21.769442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496433, 31.361193, 21.526726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546970, 31.045736, 21.767418>,  <44.577293, 30.856462, 21.911833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546970, 31.045736, 21.767418>,  <44.496433, 31.361193, 21.526726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546970, 31.045736, 21.767418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806611, 0.271414, 0.525084,
		-0.577422, -0.551703, -0.601837,
		0.126344, -0.788643, 0.601730,
		44.584873, 30.809143, 21.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897060, 31.088291, 21.551741>,  <44.496433, 31.361193, 21.526726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897060, 31.088291, 21.551741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063763, 30.941074, 21.884212>,  <44.163784, 30.852745, 22.083696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063763, 30.941074, 21.884212>,  <43.897060, 31.088291, 21.551741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063763, 30.941074, 21.884212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814595, 0.254595, 0.521168,
		-0.403426, -0.894275, -0.193701,
		0.416753, -0.368040, 0.831182,
		44.188789, 30.830662, 22.133568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402565, 30.707453, 21.829914>,  <43.897060, 31.088291, 21.551741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402565, 30.707453, 21.829914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651283, 30.728968, 22.142447>,  <43.800514, 30.741877, 22.329966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651283, 30.728968, 22.142447>,  <43.402565, 30.707453, 21.829914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651283, 30.728968, 22.142447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779892, 0.133868, 0.611431,
		-0.071711, -0.989539, 0.125184,
		0.621793, 0.053784, 0.781333,
		43.837822, 30.745104, 22.376846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140934, 30.287518, 22.342632>,  <43.402565, 30.707453, 21.829914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140934, 30.287518, 22.342632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379482, 30.558475, 22.514900>,  <43.522610, 30.721050, 22.618261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379482, 30.558475, 22.514900>,  <43.140934, 30.287518, 22.342632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379482, 30.558475, 22.514900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733061, 0.241005, 0.636033,
		0.327054, -0.695017, 0.640302,
		0.596370, 0.677398, 0.430669,
		43.558392, 30.761694, 22.644102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120831, 30.075941, 23.065767>,  <43.140934, 30.287518, 22.342632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120831, 30.075941, 23.065767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232868, 30.459005, 23.039141>,  <43.300091, 30.688845, 23.023165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232868, 30.459005, 23.039141>,  <43.120831, 30.075941, 23.065767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232868, 30.459005, 23.039141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731503, 0.257822, 0.631215,
		0.621653, -0.128103, 0.772746,
		0.280092, 0.957663, -0.066568,
		43.316895, 30.746304, 23.019171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247105, 30.219364, 23.796055>,  <43.120831, 30.075941, 23.065767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247105, 30.219364, 23.796055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188931, 30.545607, 23.572042>,  <43.154026, 30.741352, 23.437635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188931, 30.545607, 23.572042>,  <43.247105, 30.219364, 23.796055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188931, 30.545607, 23.572042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730832, 0.292979, 0.616481,
		0.666883, 0.498947, 0.553461,
		-0.145439, 0.815607, -0.560029,
		43.145298, 30.790289, 23.404034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341171, 30.740335, 24.269892>,  <43.247105, 30.219364, 23.796055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341171, 30.740335, 24.269892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132465, 30.899094, 23.967836>,  <43.007240, 30.994349, 23.786604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132465, 30.899094, 23.967836>,  <43.341171, 30.740335, 24.269892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132465, 30.899094, 23.967836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604936, 0.451998, 0.655553,
		0.601507, 0.798856, 0.004259,
		-0.521768, 0.396896, -0.755137,
		42.975933, 31.018162, 23.741295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878624, 31.174112, 24.581312>,  <43.341171, 30.740335, 24.269892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878624, 31.174112, 24.581312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721111, 31.251190, 24.221800>,  <42.626606, 31.297438, 24.006092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721111, 31.251190, 24.221800>,  <42.878624, 31.174112, 24.581312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721111, 31.251190, 24.221800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768252, 0.467874, 0.436901,
		0.504705, 0.862533, -0.036201,
		-0.393779, 0.192695, -0.898781,
		42.602978, 31.308998, 23.952166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657627, 31.865168, 24.510733>,  <42.878624, 31.174112, 24.581312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657627, 31.865168, 24.510733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436577, 31.660595, 24.247507>,  <42.303947, 31.537851, 24.089573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436577, 31.660595, 24.247507>,  <42.657627, 31.865168, 24.510733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436577, 31.660595, 24.247507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831694, 0.389369, 0.395826,
		0.053792, 0.766049, -0.640527,
		-0.552623, -0.511430, -0.658063,
		42.270790, 31.507166, 24.050089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110268, 32.254059, 24.236187>,  <42.657627, 31.865168, 24.510733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110268, 32.254059, 24.236187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971378, 31.887180, 24.158028>,  <41.888046, 31.667053, 24.111132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971378, 31.887180, 24.158028>,  <42.110268, 32.254059, 24.236187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971378, 31.887180, 24.158028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901865, 0.269480, 0.337667,
		-0.257052, 0.293470, -0.920761,
		-0.347221, -0.917200, -0.195400,
		41.867210, 31.612020, 24.099407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501591, 32.407951, 23.894768>,  <42.110268, 32.254059, 24.236187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501591, 32.407951, 23.894768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449551, 32.046066, 24.057037>,  <41.418327, 31.828936, 24.154400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449551, 32.046066, 24.057037>,  <41.501591, 32.407951, 23.894768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449551, 32.046066, 24.057037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911159, 0.270434, 0.310894,
		-0.390977, -0.329187, -0.859519,
		-0.130101, -0.904711, 0.405675,
		41.410519, 31.774652, 24.178740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779514, 32.234066, 23.857397>,  <41.501591, 32.407951, 23.894768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779514, 32.234066, 23.857397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914215, 31.986423, 24.141174>,  <40.995033, 31.837839, 24.311441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914215, 31.986423, 24.141174>,  <40.779514, 32.234066, 23.857397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914215, 31.986423, 24.141174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818984, 0.179196, 0.545119,
		-0.464614, -0.764592, -0.446691,
		0.336749, -0.619103, 0.709445,
		41.015240, 31.800694, 24.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226406, 31.779057, 24.019075>,  <40.779514, 32.234066, 23.857397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226406, 31.779057, 24.019075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472332, 31.780781, 24.334539>,  <40.619888, 31.781815, 24.523817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472332, 31.780781, 24.334539>,  <40.226406, 31.779057, 24.019075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472332, 31.780781, 24.334539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764498, 0.248937, 0.594620,
		-0.193765, -0.968510, 0.156345,
		0.614816, 0.004309, 0.788659,
		40.656776, 31.782074, 24.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984825, 31.376387, 24.590914>,  <40.226406, 31.779057, 24.019075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984825, 31.376387, 24.590914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246666, 31.632380, 24.751869>,  <40.403770, 31.785976, 24.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246666, 31.632380, 24.751869>,  <39.984825, 31.376387, 24.590914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246666, 31.632380, 24.751869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631344, 0.170032, 0.756633,
		0.415815, -0.749339, 0.515353,
		0.654601, 0.639984, 0.402389,
		40.443047, 31.824375, 24.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889359, 31.239342, 25.319338>,  <39.984825, 31.376387, 24.590914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889359, 31.239342, 25.319338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037144, 31.611019, 25.315384>,  <40.125816, 31.834024, 25.313011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037144, 31.611019, 25.315384>,  <39.889359, 31.239342, 25.319338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037144, 31.611019, 25.315384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716442, 0.291615, 0.633775,
		0.591781, -0.227077, 0.773454,
		0.369466, 0.929192, -0.009885,
		40.147984, 31.889776, 25.312418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041622, 31.356894, 26.104464>,  <39.889359, 31.239342, 25.319338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041622, 31.356894, 26.104464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028889, 31.710331, 25.917595>,  <40.021248, 31.922394, 25.805473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028889, 31.710331, 25.917595>,  <40.041622, 31.356894, 26.104464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028889, 31.710331, 25.917595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510026, 0.387617, 0.767871,
		0.859570, 0.262712, 0.438317,
		-0.031830, 0.883592, -0.467174,
		40.019341, 31.975409, 25.777443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990005, 31.876341, 26.577877>,  <40.041622, 31.356894, 26.104464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990005, 31.876341, 26.577877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855091, 32.083054, 26.263128>,  <39.774143, 32.207081, 26.074278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855091, 32.083054, 26.263128>,  <39.990005, 31.876341, 26.577877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855091, 32.083054, 26.263128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632457, 0.494734, 0.596018,
		0.697305, 0.698694, 0.159974,
		-0.337290, 0.516783, -0.786874,
		39.753902, 32.238087, 26.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930027, 32.571228, 26.791796>,  <39.990005, 31.876341, 26.577877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930027, 32.571228, 26.791796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685818, 32.549088, 26.475771>,  <39.539291, 32.535805, 26.286156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685818, 32.549088, 26.475771>,  <39.930027, 32.571228, 26.791796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685818, 32.549088, 26.475771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715824, 0.465427, 0.520552,
		0.338902, 0.883354, -0.323777,
		-0.610526, -0.055351, -0.790060,
		39.502659, 32.532482, 26.238752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595470, 33.201073, 26.781565>,  <39.930027, 32.571228, 26.791796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595470, 33.201073, 26.781565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357121, 33.010090, 26.523273>,  <39.214111, 32.895500, 26.368298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357121, 33.010090, 26.523273>,  <39.595470, 33.201073, 26.781565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357121, 33.010090, 26.523273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796466, 0.454325, 0.399038,
		0.102846, 0.752078, -0.651001,
		-0.595874, -0.477460, -0.645730,
		39.178360, 32.866852, 26.329556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205643, 33.723797, 26.460632>,  <39.595470, 33.201073, 26.781565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205643, 33.723797, 26.460632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006348, 33.377575, 26.440350>,  <38.886772, 33.169842, 26.428181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006348, 33.377575, 26.440350>,  <39.205643, 33.723797, 26.460632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006348, 33.377575, 26.440350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732080, 0.388629, 0.559487,
		-0.464562, 0.315879, -0.827286,
		-0.498237, -0.865557, -0.050707,
		38.856876, 33.117908, 26.425137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508156, 33.910351, 26.259304>,  <39.205643, 33.723797, 26.460632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508156, 33.910351, 26.259304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477791, 33.551266, 26.432898>,  <38.459572, 33.335815, 26.537054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477791, 33.551266, 26.432898>,  <38.508156, 33.910351, 26.259304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477791, 33.551266, 26.432898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606458, 0.387048, 0.694552,
		-0.791484, -0.210471, -0.573808,
		-0.075908, -0.897717, 0.433984,
		38.455017, 33.281952, 26.563093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783566, 33.801483, 26.415722>,  <38.508156, 33.910351, 26.259304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783566, 33.801483, 26.415722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959064, 33.526558, 26.647274>,  <38.064365, 33.361603, 26.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959064, 33.526558, 26.647274>,  <37.783566, 33.801483, 26.415722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959064, 33.526558, 26.647274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678928, 0.168475, 0.714614,
		-0.588689, -0.706554, -0.392716,
		0.438751, -0.687311, 0.578879,
		38.090691, 33.320366, 26.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208504, 33.295746, 26.610670>,  <37.783566, 33.801483, 26.415722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208504, 33.295746, 26.610670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502949, 33.302197, 26.881338>,  <37.679615, 33.306065, 27.043739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502949, 33.302197, 26.881338>,  <37.208504, 33.295746, 26.610670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502949, 33.302197, 26.881338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674430, 0.102126, 0.731241,
		-0.057316, -0.994641, 0.086049,
		0.736110, 0.016122, 0.676669,
		37.723782, 33.307034, 27.084339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982079, 32.780724, 27.036572>,  <37.208504, 33.295746, 26.610670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982079, 32.780724, 27.036572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232571, 33.003777, 27.254517>,  <37.382866, 33.137608, 27.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232571, 33.003777, 27.254517>,  <36.982079, 32.780724, 27.036572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232571, 33.003777, 27.254517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619774, -0.067918, 0.781836,
		0.472987, -0.827302, 0.303076,
		0.626230, 0.557637, 0.544864,
		37.420441, 33.171066, 27.417976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972565, 32.497082, 27.645435>,  <36.982079, 32.780724, 27.036572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972565, 32.497082, 27.645435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132809, 32.854530, 27.726387>,  <37.228954, 33.069000, 27.774958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132809, 32.854530, 27.726387>,  <36.972565, 32.497082, 27.645435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132809, 32.854530, 27.726387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616912, 0.099756, 0.780684,
		0.677447, -0.437596, 0.591248,
		0.400605, 0.893621, 0.202379,
		37.252991, 33.122616, 27.787100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220806, 32.450489, 28.250597>,  <36.972565, 32.497082, 27.645435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220806, 32.450489, 28.250597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149921, 32.840687, 28.198442>,  <37.107391, 33.074806, 28.167149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149921, 32.840687, 28.198442>,  <37.220806, 32.450489, 28.250597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149921, 32.840687, 28.198442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629312, -0.010457, 0.777083,
		0.756678, 0.219764, 0.615745,
		-0.177213, 0.975497, -0.130387,
		37.096756, 33.133335, 28.159327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949184, 32.662567, 28.926851>,  <37.220806, 32.450489, 28.250597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949184, 32.662567, 28.926851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890396, 32.995029, 28.712345>,  <36.855122, 33.194508, 28.583641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890396, 32.995029, 28.712345>,  <36.949184, 32.662567, 28.926851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890396, 32.995029, 28.712345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675704, 0.311573, 0.668091,
		0.722373, 0.460545, 0.515824,
		-0.146970, 0.831156, -0.536264,
		36.846306, 33.244377, 28.551466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193871, 33.261234, 29.298901>,  <36.949184, 32.662567, 28.926851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193871, 33.261234, 29.298901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890717, 33.333233, 29.048073>,  <36.708824, 33.376431, 28.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890717, 33.333233, 29.048073>,  <37.193871, 33.261234, 29.298901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890717, 33.333233, 29.048073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562841, 0.305632, 0.767984,
		0.329885, 0.934982, -0.130325,
		-0.757883, 0.179994, -0.627069,
		36.663353, 33.387230, 28.859953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983192, 33.862305, 29.526613>,  <37.193871, 33.261234, 29.298901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983192, 33.862305, 29.526613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662796, 33.771172, 29.305162>,  <36.470558, 33.716492, 29.172293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662796, 33.771172, 29.305162>,  <36.983192, 33.862305, 29.526613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662796, 33.771172, 29.305162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594692, 0.409264, 0.691986,
		0.068925, 0.883514, -0.463306,
		-0.800994, -0.227829, -0.553627,
		36.422497, 33.702824, 29.139074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623287, 34.462238, 29.387602>,  <36.983192, 33.862305, 29.526613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623287, 34.462238, 29.387602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351765, 34.171326, 29.347042>,  <36.188850, 33.996777, 29.322706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351765, 34.171326, 29.347042>,  <36.623287, 34.462238, 29.387602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351765, 34.171326, 29.347042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617948, 0.491167, 0.613918,
		-0.396686, 0.479393, -0.782830,
		-0.678808, -0.727281, -0.101401,
		36.148121, 33.953140, 29.316622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011433, 34.792889, 29.523642>,  <36.623287, 34.462238, 29.387602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011433, 34.792889, 29.523642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906078, 34.407116, 29.532532>,  <35.842865, 34.175652, 29.537867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906078, 34.407116, 29.532532>,  <36.011433, 34.792889, 29.523642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906078, 34.407116, 29.532532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664224, 0.198010, 0.720832,
		-0.699597, 0.175091, -0.692754,
		-0.263383, -0.964435, 0.022227,
		35.827065, 34.117786, 29.539200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326801, 34.813435, 29.326471>,  <36.011433, 34.792889, 29.523642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326801, 34.813435, 29.326471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408375, 34.497612, 29.557993>,  <35.457321, 34.308117, 29.696905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408375, 34.497612, 29.557993>,  <35.326801, 34.813435, 29.326471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408375, 34.497612, 29.557993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796761, 0.209674, 0.566753,
		-0.568842, -0.576749, -0.586326,
		0.203937, -0.789555, 0.578802,
		35.469555, 34.260746, 29.731634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674065, 34.555218, 29.351582>,  <35.326801, 34.813435, 29.326471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674065, 34.555218, 29.351582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888752, 34.366001, 29.631058>,  <35.017563, 34.252472, 29.798744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888752, 34.366001, 29.631058>,  <34.674065, 34.555218, 29.351582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888752, 34.366001, 29.631058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748146, 0.116083, 0.653301,
		-0.390143, -0.873361, -0.291598,
		0.536717, -0.473039, 0.698691,
		35.049767, 34.224091, 29.840666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282051, 33.983307, 29.562477>,  <34.674065, 34.555218, 29.351582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282051, 33.983307, 29.562477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533802, 34.080051, 29.857878>,  <34.684853, 34.138100, 30.035118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533802, 34.080051, 29.857878>,  <34.282051, 33.983307, 29.562477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533802, 34.080051, 29.857878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726391, -0.154561, 0.669677,
		0.276115, -0.957921, 0.078411,
		0.629378, 0.241864, 0.738502,
		34.722614, 34.152611, 30.079428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200859, 33.457073, 30.033659>,  <34.282051, 33.983307, 29.562477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200859, 33.457073, 30.033659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369263, 33.743717, 30.256088>,  <34.470303, 33.915703, 30.389545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369263, 33.743717, 30.256088>,  <34.200859, 33.457073, 30.033659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369263, 33.743717, 30.256088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742820, -0.079436, 0.664762,
		0.520550, -0.692932, 0.498871,
		0.421007, 0.716613, 0.556074,
		34.495564, 33.958702, 30.422911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973614, 33.267372, 30.659771>,  <34.200859, 33.457073, 30.033659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973614, 33.267372, 30.659771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144627, 33.614552, 30.760868>,  <34.247234, 33.822861, 30.821526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144627, 33.614552, 30.760868>,  <33.973614, 33.267372, 30.659771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144627, 33.614552, 30.760868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640836, 0.093792, 0.761927,
		0.637610, -0.487712, 0.596314,
		0.427531, 0.867951, 0.252741,
		34.272884, 33.874935, 30.836691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240379, 33.268925, 31.449629>,  <33.973614, 33.267372, 30.659771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240379, 33.268925, 31.449629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200382, 33.652203, 31.342394>,  <34.176384, 33.882168, 31.278053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200382, 33.652203, 31.342394>,  <34.240379, 33.268925, 31.449629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200382, 33.652203, 31.342394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490558, 0.186939, 0.851121,
		0.865652, 0.216622, 0.451355,
		-0.099996, 0.958190, -0.268090,
		34.170383, 33.939659, 31.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371025, 33.764015, 32.064648>,  <34.240379, 33.268925, 31.449629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371025, 33.764015, 32.064648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 33.984200, 31.811457>,  <34.022636, 34.116310, 31.659540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 33.984200, 31.811457>,  <34.371025, 33.764015, 32.064648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153282, 33.984200, 31.811457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658810, 0.186562, 0.728810,
		0.519273, 0.813748, 0.261094,
		-0.544358, 0.550462, -0.632981,
		33.989975, 34.149338, 31.621563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374397, 34.411491, 32.348347>,  <34.371025, 33.764015, 32.064648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374397, 34.411491, 32.348347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057404, 34.384892, 32.105843>,  <33.867207, 34.368931, 31.960340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057404, 34.384892, 32.105843>,  <34.374397, 34.411491, 32.348347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057404, 34.384892, 32.105843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606970, 0.183197, 0.773322,
		0.059635, 0.980824, -0.185547,
		-0.792484, -0.066504, -0.606256,
		33.819660, 34.364941, 31.923965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978432, 34.713890, 32.486404>,  <34.374397, 34.411491, 32.348347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978432, 34.713890, 32.486404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159363, 35.034248, 32.643356>,  <35.267921, 35.226463, 32.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159363, 35.034248, 32.643356>,  <34.978432, 34.713890, 32.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159363, 35.034248, 32.643356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693276, -0.038990, -0.719617,
		-0.561041, 0.597530, -0.572879,
		0.452329, 0.800898, 0.392378,
		35.295063, 35.274517, 32.761070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202419, 35.171799, 31.961210>,  <34.978432, 34.713890, 32.486404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202419, 35.171799, 31.961210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 35.219635, 32.272854>,  <35.596260, 35.248337, 32.459839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 35.219635, 32.272854>,  <35.202419, 35.171799, 31.961210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448570, 35.219635, 32.272854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778545, 0.062295, -0.624489,
		-0.123221, 0.990866, -0.054776,
		0.615373, 0.119595, 0.779110,
		35.633183, 35.255512, 32.506588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612717, 35.638248, 31.769518>,  <35.202419, 35.171799, 31.961210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612717, 35.638248, 31.769518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824188, 35.487328, 32.073662>,  <35.951073, 35.396774, 32.256149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824188, 35.487328, 32.073662>,  <35.612717, 35.638248, 31.769518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824188, 35.487328, 32.073662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827758, 0.030848, -0.560237,
		0.187920, 0.925578, 0.328620,
		0.528680, -0.377298, 0.760358,
		35.982792, 35.374138, 32.301769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138401, 36.073685, 31.803564>,  <35.612717, 35.638248, 31.769518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138401, 36.073685, 31.803564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281246, 35.755154, 31.998840>,  <36.366951, 35.564034, 32.116005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281246, 35.755154, 31.998840>,  <36.138401, 36.073685, 31.803564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281246, 35.755154, 31.998840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840522, 0.045989, -0.539822,
		0.407424, 0.603112, 0.685756,
		0.357110, -0.796329, 0.488192,
		36.388378, 35.516254, 32.145298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848358, 36.207634, 32.199226>,  <36.138401, 36.073685, 31.803564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848358, 36.207634, 32.199226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821926, 35.816429, 32.120110>,  <36.806065, 35.581707, 32.072639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821926, 35.816429, 32.120110>,  <36.848358, 36.207634, 32.199226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821926, 35.816429, 32.120110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850247, 0.048552, -0.524141,
		0.522220, -0.202808, 0.828345,
		-0.066082, -0.978014, -0.197792,
		36.802101, 35.523026, 32.060772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535969, 36.027603, 32.226597>,  <36.848358, 36.207634, 32.199226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535969, 36.027603, 32.226597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355724, 35.736141, 32.020290>,  <37.247578, 35.561264, 31.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355724, 35.736141, 32.020290>,  <37.535969, 36.027603, 32.226597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355724, 35.736141, 32.020290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844483, -0.160574, -0.510946,
		0.289484, -0.665792, 0.687692,
		-0.450609, -0.728654, -0.515766,
		37.220543, 35.517544, 31.865561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076443, 35.438484, 32.028351>,  <37.535969, 36.027603, 32.226597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076443, 35.438484, 32.028351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772312, 35.361671, 31.780149>,  <37.589832, 35.315582, 31.631227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772312, 35.361671, 31.780149>,  <38.076443, 35.438484, 32.028351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772312, 35.361671, 31.780149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646709, -0.312909, -0.695598,
		-0.060584, -0.930168, 0.362102,
		-0.760327, -0.192033, -0.620505,
		37.544212, 35.304062, 31.593998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259377, 34.776409, 31.707952>,  <38.076443, 35.438484, 32.028351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259377, 34.776409, 31.707952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987541, 34.927765, 31.456562>,  <37.824440, 35.018578, 31.305729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987541, 34.927765, 31.456562>,  <38.259377, 34.776409, 31.707952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987541, 34.927765, 31.456562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478659, -0.420495, -0.770759,
		-0.555919, -0.824624, 0.104643,
		-0.679588, 0.378391, -0.628474,
		37.783665, 35.041283, 31.268021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168404, 34.221764, 31.315529>,  <38.259377, 34.776409, 31.707952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168404, 34.221764, 31.315529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029091, 34.536530, 31.111776>,  <37.945503, 34.725388, 30.989525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029091, 34.536530, 31.111776>,  <38.168404, 34.221764, 31.315529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029091, 34.536530, 31.111776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170287, -0.481248, -0.859885,
		-0.921795, -0.386219, 0.033607,
		-0.348277, 0.786915, -0.509380,
		37.924606, 34.772606, 30.958961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878681, 33.985065, 30.571630>,  <38.168404, 34.221764, 31.315529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878681, 33.985065, 30.571630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951157, 34.374798, 30.518177>,  <37.994640, 34.608635, 30.486105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951157, 34.374798, 30.518177>,  <37.878681, 33.985065, 30.571630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951157, 34.374798, 30.518177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424103, -0.200007, -0.883252,
		-0.887304, 0.103359, -0.449454,
		0.181187, 0.974327, -0.133632,
		38.005512, 34.667095, 30.478086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755859, 34.066219, 29.906990>,  <37.878681, 33.985065, 30.571630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755859, 34.066219, 29.906990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955338, 34.405598, 29.977919>,  <38.075024, 34.609222, 30.020475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955338, 34.405598, 29.977919>,  <37.755859, 34.066219, 29.906990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955338, 34.405598, 29.977919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409348, -0.050210, -0.910996,
		-0.764025, 0.526899, -0.372349,
		0.498698, 0.848444, 0.177323,
		38.104946, 34.660130, 30.031116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708195, 34.546986, 29.309193>,  <37.755859, 34.066219, 29.906990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708195, 34.546986, 29.309193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046333, 34.646988, 29.498037>,  <38.249218, 34.706989, 29.611343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046333, 34.646988, 29.498037>,  <37.708195, 34.546986, 29.309193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046333, 34.646988, 29.498037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486654, 0.004146, -0.873585,
		-0.220358, 0.968236, -0.118161,
		0.845346, 0.250005, 0.472110,
		38.299938, 34.721989, 29.639669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037991, 34.875633, 28.804504>,  <37.708195, 34.546986, 29.309193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037991, 34.875633, 28.804504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342167, 34.839508, 29.061745>,  <38.524673, 34.817833, 29.216089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342167, 34.839508, 29.061745>,  <38.037991, 34.875633, 28.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342167, 34.839508, 29.061745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649398, 0.111890, -0.752172,
		-0.004028, 0.989608, 0.143732,
		0.760438, -0.090309, 0.643101,
		38.570297, 34.812416, 29.254675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418583, 35.448330, 28.650217>,  <38.037991, 34.875633, 28.804504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418583, 35.448330, 28.650217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655361, 35.167736, 28.808973>,  <38.797428, 34.999378, 28.904228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655361, 35.167736, 28.808973>,  <38.418583, 35.448330, 28.650217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655361, 35.167736, 28.808973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544270, -0.015288, -0.838771,
		0.594452, 0.712521, 0.372747,
		0.591943, -0.701484, 0.396892,
		38.832943, 34.957291, 28.928041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106667, 35.654137, 28.560011>,  <38.418583, 35.448330, 28.650217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106667, 35.654137, 28.560011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 35.264828, 28.642653>,  <39.170841, 35.031242, 28.692238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 35.264828, 28.642653>,  <39.106667, 35.654137, 28.560011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146774, 35.264828, 28.642653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695994, -0.079777, -0.713602,
		0.711012, 0.215350, 0.669392,
		0.100272, -0.973273, 0.206605,
		39.176857, 34.972847, 28.704634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844479, 35.584175, 28.547148>,  <39.106667, 35.654137, 28.560011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844479, 35.584175, 28.547148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695621, 35.215031, 28.507490>,  <39.606308, 34.993542, 28.483696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695621, 35.215031, 28.507490>,  <39.844479, 35.584175, 28.547148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695621, 35.215031, 28.507490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686474, -0.201770, -0.698601,
		0.624709, -0.328041, 0.708610,
		-0.372146, -0.922864, -0.099144,
		39.583977, 34.938171, 28.477747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537521, 35.054119, 28.753412>,  <39.844479, 35.584175, 28.547148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537521, 35.054119, 28.753412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269390, 34.857059, 28.531435>,  <40.108513, 34.738823, 28.398249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269390, 34.857059, 28.531435>,  <40.537521, 35.054119, 28.753412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269390, 34.857059, 28.531435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736106, -0.346855, -0.581239,
		0.093862, -0.798116, 0.595147,
		-0.670326, -0.492648, -0.554942,
		40.068291, 34.709267, 28.364952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886169, 34.528568, 28.480536>,  <40.537521, 35.054119, 28.753412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886169, 34.528568, 28.480536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578804, 34.522282, 28.224632>,  <40.394386, 34.518509, 28.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578804, 34.522282, 28.224632>,  <40.886169, 34.528568, 28.480536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578804, 34.522282, 28.224632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596360, -0.380236, -0.706948,
		-0.232149, -0.924756, 0.301552,
		-0.768415, -0.015717, -0.639759,
		40.348278, 34.517567, 28.032705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945564, 33.846630, 28.132206>,  <40.886169, 34.528568, 28.480536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945564, 33.846630, 28.132206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737270, 34.094547, 27.897364>,  <40.612293, 34.243298, 27.756458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737270, 34.094547, 27.897364>,  <40.945564, 33.846630, 28.132206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737270, 34.094547, 27.897364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512724, -0.322818, -0.795552,
		-0.682605, -0.715294, -0.149681,
		-0.520734, 0.619793, -0.587106,
		40.581051, 34.280483, 27.721231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625557, 33.505486, 27.598948>,  <40.945564, 33.846630, 28.132206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625557, 33.505486, 27.598948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669498, 33.873135, 27.447605>,  <40.695862, 34.093723, 27.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669498, 33.873135, 27.447605>,  <40.625557, 33.505486, 27.598948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669498, 33.873135, 27.447605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465994, -0.383855, -0.797186,
		-0.877942, -0.088739, -0.470471,
		0.109851, 0.919120, -0.378354,
		40.702454, 34.148872, 27.334099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377205, 33.428539, 26.843933>,  <40.625557, 33.505486, 27.598948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377205, 33.428539, 26.843933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608776, 33.751160, 26.891794>,  <40.747719, 33.944733, 26.920511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608776, 33.751160, 26.891794>,  <40.377205, 33.428539, 26.843933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608776, 33.751160, 26.891794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631039, -0.350261, -0.692175,
		-0.516368, 0.476221, -0.711742,
		0.578924, 0.806555, 0.119651,
		40.782452, 33.993126, 26.927689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425133, 33.737190, 26.140989>,  <40.377205, 33.428539, 26.843933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425133, 33.737190, 26.140989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712753, 33.896084, 26.369085>,  <40.885326, 33.991421, 26.505943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712753, 33.896084, 26.369085>,  <40.425133, 33.737190, 26.140989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712753, 33.896084, 26.369085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693902, -0.455636, -0.557581,
		0.038334, 0.796620, -0.603264,
		0.719048, 0.397232, 0.570242,
		40.928467, 34.015255, 26.540157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936035, 33.869644, 25.667110>,  <40.425133, 33.737190, 26.140989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936035, 33.869644, 25.667110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135582, 33.910084, 26.011415>,  <41.255310, 33.934349, 26.217999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135582, 33.910084, 26.011415>,  <40.936035, 33.869644, 25.667110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135582, 33.910084, 26.011415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775697, -0.495063, -0.391416,
		0.386561, 0.862955, -0.325390,
		0.498863, 0.101098, 0.860764,
		41.285240, 33.940414, 26.269646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680149, 34.110538, 25.545586>,  <40.936035, 33.869644, 25.667110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680149, 34.110538, 25.545586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689251, 33.929329, 25.902067>,  <41.694714, 33.820602, 26.115957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689251, 33.929329, 25.902067>,  <41.680149, 34.110538, 25.545586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689251, 33.929329, 25.902067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752630, -0.578999, -0.313542,
		0.658051, 0.677883, 0.327786,
		0.022757, -0.453028, 0.891206,
		41.696079, 33.793419, 26.169430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368572, 34.078281, 25.755381>,  <41.680149, 34.110538, 25.545586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368572, 34.078281, 25.755381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196697, 33.784004, 25.964806>,  <42.093571, 33.607437, 26.090460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196697, 33.784004, 25.964806>,  <42.368572, 34.078281, 25.755381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196697, 33.784004, 25.964806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801916, -0.577442, -0.153269,
		0.415086, 0.353993, 0.838089,
		-0.429691, -0.735697, 0.523561,
		42.067791, 33.563293, 26.121874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848309, 33.886135, 26.350658>,  <42.368572, 34.078281, 25.755381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848309, 33.886135, 26.350658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604378, 33.579796, 26.269091>,  <42.458019, 33.395992, 26.220150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604378, 33.579796, 26.269091>,  <42.848309, 33.886135, 26.350658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604378, 33.579796, 26.269091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792525, -0.590377, -0.152840,
		-0.003338, -0.254818, 0.966983,
		-0.609831, -0.765848, -0.203920,
		42.421429, 33.350040, 26.207914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020100, 33.257877, 26.736164>,  <42.848309, 33.886135, 26.350658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020100, 33.257877, 26.736164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782856, 33.061890, 26.480618>,  <42.640511, 32.944298, 26.327290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782856, 33.061890, 26.480618>,  <43.020100, 33.257877, 26.736164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782856, 33.061890, 26.480618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698534, -0.707722, -0.105731,
		-0.400335, -0.508980, 0.762018,
		-0.593112, -0.489968, -0.638866,
		42.604923, 32.914898, 26.288958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148895, 32.562088, 26.871176>,  <43.020100, 33.257877, 26.736164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148895, 32.562088, 26.871176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014595, 32.551968, 26.494532>,  <42.934013, 32.545895, 26.268545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014595, 32.551968, 26.494532>,  <43.148895, 32.562088, 26.871176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014595, 32.551968, 26.494532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653546, -0.726145, -0.213521,
		-0.678343, -0.687075, 0.260341,
		-0.335750, -0.025305, -0.941611,
		42.913872, 32.544376, 26.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214027, 31.876360, 26.687159>,  <43.148895, 32.562088, 26.871176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214027, 31.876360, 26.687159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141209, 32.040905, 26.329916>,  <43.097519, 32.139633, 26.115570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141209, 32.040905, 26.329916>,  <43.214027, 31.876360, 26.687159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141209, 32.040905, 26.329916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628247, -0.650056, -0.427472,
		-0.756416, -0.638912, -0.140096,
		-0.182047, 0.411362, -0.893107,
		43.086594, 32.164314, 26.061983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968388, 31.316734, 26.215405>,  <43.214027, 31.876360, 26.687159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968388, 31.316734, 26.215405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119797, 31.625759, 26.011496>,  <43.210644, 31.811174, 25.889151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119797, 31.625759, 26.011496>,  <42.968388, 31.316734, 26.215405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119797, 31.625759, 26.011496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685316, -0.604117, -0.406674,
		-0.622144, -0.195420, -0.758122,
		0.378522, 0.772563, -0.509772,
		43.233353, 31.857529, 25.858564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245350, 30.946457, 25.710192>,  <42.968388, 31.316734, 26.215405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245350, 30.946457, 25.710192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436363, 31.296207, 25.675709>,  <43.550972, 31.506058, 25.655020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436363, 31.296207, 25.675709>,  <43.245350, 30.946457, 25.710192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436363, 31.296207, 25.675709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739224, -0.452863, -0.498461,
		-0.474881, 0.174306, -0.862616,
		0.477531, 0.874376, -0.086205,
		43.579624, 31.558519, 25.649847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589996, 30.955778, 25.081675>,  <43.245350, 30.946457, 25.710192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589996, 30.955778, 25.081675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781837, 31.229418, 25.301489>,  <43.896942, 31.393602, 25.433378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781837, 31.229418, 25.301489>,  <43.589996, 30.955778, 25.081675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781837, 31.229418, 25.301489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873120, -0.309635, -0.376547,
		-0.087440, 0.660403, -0.745803,
		0.479600, 0.684100, 0.549537,
		43.925716, 31.434649, 25.466351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124001, 31.298830, 24.578770>,  <43.589996, 30.955778, 25.081675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124001, 31.298830, 24.578770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259121, 31.362766, 24.949789>,  <44.340195, 31.401129, 25.172400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259121, 31.362766, 24.949789>,  <44.124001, 31.298830, 24.578770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259121, 31.362766, 24.949789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928085, -0.220618, -0.299977,
		0.156684, 0.962174, -0.222871,
		0.337799, 0.159841, 0.927546,
		44.360462, 31.410719, 25.228052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636406, 31.790375, 24.500330>,  <44.124001, 31.298830, 24.578770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636406, 31.790375, 24.500330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697086, 31.531181, 24.798887>,  <44.733494, 31.375666, 24.978022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697086, 31.531181, 24.798887>,  <44.636406, 31.790375, 24.500330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697086, 31.531181, 24.798887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892279, -0.235092, -0.385448,
		0.425235, 0.724465, 0.542517,
		0.151702, -0.647983, 0.746395,
		44.742596, 31.336786, 25.022806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322460, 31.742830, 24.463812>,  <44.636406, 31.790375, 24.500330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322460, 31.742830, 24.463812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230293, 31.464355, 24.735762>,  <45.174992, 31.297270, 24.898932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230293, 31.464355, 24.735762>,  <45.322460, 31.742830, 24.463812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230293, 31.464355, 24.735762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885610, -0.439553, -0.149958,
		0.403240, 0.567551, 0.717833,
		-0.230417, -0.696189, 0.679874,
		45.161167, 31.255499, 24.939724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810707, 31.665436, 24.973648>,  <45.322460, 31.742830, 24.463812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810707, 31.665436, 24.973648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651352, 31.298565, 24.977160>,  <45.555740, 31.078442, 24.979265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651352, 31.298565, 24.977160>,  <45.810707, 31.665436, 24.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651352, 31.298565, 24.977160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889101, -0.388505, -0.242000,
		0.225367, -0.088605, 0.970237,
		-0.398384, -0.917177, 0.008778,
		45.531837, 31.023413, 24.979794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302063, 31.168442, 25.352184>,  <45.810707, 31.665436, 24.973648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302063, 31.168442, 25.352184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058628, 30.954220, 25.117987>,  <45.912567, 30.825687, 24.977468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058628, 30.954220, 25.117987>,  <46.302063, 31.168442, 25.352184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058628, 30.954220, 25.117987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771286, -0.572583, -0.277969,
		-0.186376, -0.620751, 0.761533,
		-0.608590, -0.535553, -0.585492,
		45.876053, 30.793554, 24.942339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465126, 30.493347, 25.500935>,  <46.302063, 31.168442, 25.352184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465126, 30.493347, 25.500935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297913, 30.510223, 25.137953>,  <46.197586, 30.520350, 24.920164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297913, 30.510223, 25.137953>,  <46.465126, 30.493347, 25.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297913, 30.510223, 25.137953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750893, -0.546164, -0.371302,
		-0.511284, -0.836615, 0.196633,
		-0.418031, 0.042190, -0.907453,
		46.172504, 30.522881, 24.865717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334465, 29.915670, 25.140480>,  <46.465126, 30.493347, 25.500935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334465, 29.915670, 25.140480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560078, 29.674379, 25.366039>,  <46.695446, 29.529604, 25.501375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560078, 29.674379, 25.366039>,  <46.334465, 29.915670, 25.140480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560078, 29.674379, 25.366039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641883, 0.109313, 0.758971,
		-0.519475, -0.790041, -0.325547,
		0.564032, -0.603230, 0.563899,
		46.729286, 29.493410, 25.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893246, 29.544199, 25.505816>,  <46.334465, 29.915670, 25.140480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893246, 29.544199, 25.505816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210308, 29.477674, 25.740437>,  <46.400543, 29.437759, 25.881208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210308, 29.477674, 25.740437>,  <45.893246, 29.544199, 25.505816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210308, 29.477674, 25.740437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581115, 0.084912, 0.809380,
		-0.184413, -0.982411, -0.029340,
		0.792653, -0.166310, 0.586552,
		46.448105, 29.427782, 25.916403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559776, 29.167252, 26.090588>,  <45.893246, 29.544199, 25.505816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559776, 29.167252, 26.090588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908401, 29.319235, 26.214535>,  <46.117577, 29.410425, 26.288902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908401, 29.319235, 26.214535>,  <45.559776, 29.167252, 26.090588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908401, 29.319235, 26.214535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405175, 0.202293, 0.891578,
		0.276074, -0.902614, 0.330258,
		0.871560, 0.379954, 0.309869,
		46.169868, 29.433222, 26.307495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510433, 28.906372, 26.730236>,  <45.559776, 29.167252, 26.090588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510433, 28.906372, 26.730236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783997, 29.198103, 26.722702>,  <45.948135, 29.373140, 26.718182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783997, 29.198103, 26.722702>,  <45.510433, 28.906372, 26.730236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783997, 29.198103, 26.722702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390949, 0.388153, 0.834564,
		0.615979, -0.563401, 0.550590,
		0.683907, 0.729326, -0.018833,
		45.989170, 29.416901, 26.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931602, 28.848152, 27.348948>,  <45.510433, 28.906372, 26.730236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931602, 28.848152, 27.348948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960735, 29.224232, 27.215847>,  <45.978214, 29.449879, 27.135986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960735, 29.224232, 27.215847>,  <45.931602, 28.848152, 27.348948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960735, 29.224232, 27.215847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164239, 0.340386, 0.925831,
		0.983728, -0.012777, 0.179207,
		0.072829, 0.940199, -0.332749,
		45.982582, 29.506290, 27.116022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035053, 29.207659, 27.946501>,  <45.931602, 28.848152, 27.348948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035053, 29.207659, 27.946501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938427, 29.503115, 27.694769>,  <45.880451, 29.680387, 27.543730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938427, 29.503115, 27.694769>,  <46.035053, 29.207659, 27.946501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938427, 29.503115, 27.694769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332254, 0.546379, 0.768815,
		0.911731, 0.394817, 0.113430,
		-0.241566, 0.738640, -0.629330,
		45.865959, 29.724707, 27.505970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326542, 29.810036, 28.273937>,  <46.035053, 29.207659, 27.946501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326542, 29.810036, 28.273937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028736, 29.935205, 28.038048>,  <45.850052, 30.010307, 27.896515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028736, 29.935205, 28.038048>,  <46.326542, 29.810036, 28.273937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028736, 29.935205, 28.038048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370929, 0.540552, 0.755126,
		0.555074, 0.780948, -0.286376,
		-0.744516, 0.312926, -0.589723,
		45.805382, 30.029083, 27.861132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249561, 30.432842, 28.566618>,  <46.326542, 29.810036, 28.273937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249561, 30.432842, 28.566618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941982, 30.389641, 28.314569>,  <45.757435, 30.363720, 28.163340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941982, 30.389641, 28.314569>,  <46.249561, 30.432842, 28.566618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941982, 30.389641, 28.314569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523716, 0.671699, 0.523968,
		0.366662, 0.732909, -0.573064,
		-0.768948, -0.108004, -0.630122,
		45.711296, 30.357241, 28.125532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025208, 31.116869, 28.365282>,  <46.249561, 30.432842, 28.566618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025208, 31.116869, 28.365282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721413, 30.861523, 28.315214>,  <45.539135, 30.708315, 28.285173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721413, 30.861523, 28.315214>,  <46.025208, 31.116869, 28.365282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721413, 30.861523, 28.315214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638769, 0.695418, 0.329193,
		-0.123101, 0.329972, -0.935930,
		-0.759487, -0.638367, -0.125169,
		45.493568, 30.670013, 28.277664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490726, 31.454735, 27.868444>,  <46.025208, 31.116869, 28.365282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490726, 31.454735, 27.868444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298824, 31.158470, 28.056593>,  <45.183681, 30.980711, 28.169481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298824, 31.158470, 28.056593>,  <45.490726, 31.454735, 27.868444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298824, 31.158470, 28.056593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705469, 0.644378, 0.295110,
		-0.521674, -0.190251, -0.831661,
		-0.479760, -0.740663, 0.470372,
		45.154896, 30.936272, 28.197704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864063, 31.409662, 27.574461>,  <45.490726, 31.454735, 27.868444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864063, 31.409662, 27.574461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850361, 31.276052, 27.951239>,  <44.842140, 31.195887, 28.177305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850361, 31.276052, 27.951239>,  <44.864063, 31.409662, 27.574461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850361, 31.276052, 27.951239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745839, 0.635903, 0.198372,
		-0.665245, -0.695741, -0.270914,
		-0.034260, -0.334024, 0.941942,
		44.840084, 31.175846, 28.233822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198120, 31.355673, 27.701302>,  <44.864063, 31.409662, 27.574461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198120, 31.355673, 27.701302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343868, 31.351330, 28.073778>,  <44.431316, 31.348724, 28.297264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343868, 31.351330, 28.073778>,  <44.198120, 31.355673, 27.701302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343868, 31.351330, 28.073778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689440, 0.669049, 0.277572,
		-0.626027, -0.743139, 0.236295,
		0.364368, -0.010857, 0.931192,
		44.453178, 31.348072, 28.353136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690899, 31.173481, 28.022196>,  <44.198120, 31.355673, 27.701302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690899, 31.173481, 28.022196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906532, 31.322575, 28.324310>,  <44.035912, 31.412031, 28.505579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906532, 31.322575, 28.324310>,  <43.690899, 31.173481, 28.022196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906532, 31.322575, 28.324310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817168, 0.448688, 0.361823,
		-0.204026, -0.812249, 0.546465,
		0.539083, 0.372733, 0.755288,
		44.068256, 31.434395, 28.550898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374920, 31.040804, 28.732187>,  <43.690899, 31.173481, 28.022196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374920, 31.040804, 28.732187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615646, 31.357916, 28.770788>,  <43.760082, 31.548183, 28.793949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615646, 31.357916, 28.770788>,  <43.374920, 31.040804, 28.732187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615646, 31.357916, 28.770788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662215, 0.427816, 0.615179,
		0.446418, -0.434130, 0.782459,
		0.601816, 0.792782, 0.096503,
		43.796192, 31.595751, 28.799738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299122, 31.186604, 29.426977>,  <43.374920, 31.040804, 28.732187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299122, 31.186604, 29.426977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424309, 31.523193, 29.250805>,  <43.499420, 31.725147, 29.145102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424309, 31.523193, 29.250805>,  <43.299122, 31.186604, 29.426977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424309, 31.523193, 29.250805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692924, 0.519438, 0.500040,
		0.649546, 0.148691, 0.745641,
		0.312963, 0.841472, -0.440430,
		43.518196, 31.775635, 29.118675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327614, 31.639986, 29.909502>,  <43.299122, 31.186604, 29.426977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327614, 31.639986, 29.909502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307003, 31.890736, 29.598537>,  <43.294636, 32.041187, 29.411959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307003, 31.890736, 29.598537>,  <43.327614, 31.639986, 29.909502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307003, 31.890736, 29.598537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757095, 0.483135, 0.439759,
		0.651270, 0.611234, 0.449712,
		-0.051524, 0.626876, -0.777413,
		43.291546, 32.078800, 29.365313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105339, 32.188229, 30.195501>,  <43.327614, 31.639986, 29.909502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105339, 32.188229, 30.195501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043324, 32.279312, 29.810978>,  <43.006115, 32.333961, 29.580265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043324, 32.279312, 29.810978>,  <43.105339, 32.188229, 30.195501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043324, 32.279312, 29.810978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755132, 0.600095, 0.263935,
		0.636976, 0.766834, 0.078911,
		-0.155040, 0.227709, -0.961307,
		42.996811, 32.347626, 29.522585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065742, 32.918526, 30.182917>,  <43.105339, 32.188229, 30.195501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065742, 32.918526, 30.182917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881821, 32.797623, 29.848917>,  <42.771469, 32.725082, 29.648518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881821, 32.797623, 29.848917>,  <43.065742, 32.918526, 30.182917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881821, 32.797623, 29.848917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765453, 0.611582, 0.200121,
		0.450182, 0.731168, -0.512571,
		-0.459802, -0.302258, -0.834998,
		42.743881, 32.706944, 29.598417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891548, 33.511364, 29.809486>,  <43.065742, 32.918526, 30.182917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891548, 33.511364, 29.809486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646717, 33.243713, 29.640898>,  <42.499817, 33.083122, 29.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646717, 33.243713, 29.640898>,  <42.891548, 33.511364, 29.809486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646717, 33.243713, 29.640898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785004, 0.578503, 0.221590,
		0.095551, 0.466486, -0.879352,
		-0.612077, -0.669123, -0.421471,
		42.463093, 33.042976, 29.514456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387585, 33.890816, 29.418221>,  <42.891548, 33.511364, 29.809486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387585, 33.890816, 29.418221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222427, 33.535889, 29.500383>,  <42.123333, 33.322933, 29.549681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222427, 33.535889, 29.500383>,  <42.387585, 33.890816, 29.418221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222427, 33.535889, 29.500383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842154, 0.457832, 0.284898,
		-0.346836, -0.055353, -0.936291,
		-0.412894, -0.887314, 0.205408,
		42.098560, 33.269695, 29.562006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551723, 33.955112, 29.304493>,  <42.387585, 33.890816, 29.418221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551723, 33.955112, 29.304493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600372, 33.648335, 29.556526>,  <41.629562, 33.464268, 29.707747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600372, 33.648335, 29.556526>,  <41.551723, 33.955112, 29.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600372, 33.648335, 29.556526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920925, 0.149615, 0.359879,
		-0.370277, -0.624029, -0.688101,
		0.121624, -0.766944, 0.630083,
		41.636860, 33.418251, 29.745552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785358, 33.652908, 29.344198>,  <41.551723, 33.955112, 29.304493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785358, 33.652908, 29.344198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972469, 33.511791, 29.668350>,  <41.084736, 33.427120, 29.862843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972469, 33.511791, 29.668350>,  <40.785358, 33.652908, 29.344198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972469, 33.511791, 29.668350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830241, 0.139056, 0.539782,
		-0.303121, -0.925310, -0.227858,
		0.467780, -0.352796, 0.810381,
		41.112804, 33.405952, 29.911465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315758, 33.132500, 29.757647>,  <40.785358, 33.652908, 29.344198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315758, 33.132500, 29.757647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585312, 33.265152, 30.021736>,  <40.747044, 33.344746, 30.180191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585312, 33.265152, 30.021736>,  <40.315758, 33.132500, 29.757647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585312, 33.265152, 30.021736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691732, -0.030767, 0.721499,
		0.259589, -0.942905, 0.208671,
		0.673885, 0.331637, 0.660225,
		40.787479, 33.364643, 30.219803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113544, 32.747608, 30.313946>,  <40.315758, 33.132500, 29.757647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113544, 32.747608, 30.313946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329369, 33.055836, 30.449652>,  <40.458862, 33.240772, 30.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329369, 33.055836, 30.449652>,  <40.113544, 32.747608, 30.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329369, 33.055836, 30.449652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642255, 0.116141, 0.757641,
		0.544412, -0.626685, 0.557567,
		0.539559, 0.770570, 0.339263,
		40.491238, 33.287006, 30.551430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145210, 32.736710, 31.094687>,  <40.113544, 32.747608, 30.313946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145210, 32.736710, 31.094687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276958, 33.108955, 31.030844>,  <40.356007, 33.332302, 30.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276958, 33.108955, 31.030844>,  <40.145210, 32.736710, 31.094687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276958, 33.108955, 31.030844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497873, 0.314810, 0.808095,
		0.802269, -0.186701, 0.567017,
		0.329375, 0.930611, -0.159609,
		40.375771, 33.388138, 30.982962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355061, 33.012817, 31.733385>,  <40.145210, 32.736710, 31.094687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355061, 33.012817, 31.733385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325317, 33.356205, 31.530403>,  <40.307472, 33.562237, 31.408615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325317, 33.356205, 31.530403>,  <40.355061, 33.012817, 31.733385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325317, 33.356205, 31.530403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279610, 0.470503, 0.836926,
		0.957230, 0.204117, 0.205052,
		-0.074353, 0.858466, -0.507453,
		40.303013, 33.613743, 31.378168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837147, 33.595806, 31.872467>,  <40.355061, 33.012817, 31.733385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837147, 33.595806, 31.872467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529720, 33.793453, 31.709915>,  <40.345264, 33.912041, 31.612383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529720, 33.793453, 31.709915>,  <40.837147, 33.595806, 31.872467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529720, 33.793453, 31.709915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154732, 0.472779, 0.867490,
		0.620772, 0.729607, -0.286907,
		-0.768570, 0.494119, -0.406381,
		40.299149, 33.941689, 31.588001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845573, 34.207245, 32.186371>,  <40.837147, 33.595806, 31.872467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845573, 34.207245, 32.186371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469013, 34.180244, 32.054180>,  <40.243076, 34.164043, 31.974865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469013, 34.180244, 32.054180>,  <40.845573, 34.207245, 32.186371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469013, 34.180244, 32.054180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329869, 0.388795, 0.860247,
		0.070417, 0.918848, -0.388278,
		-0.941396, -0.067505, -0.330478,
		40.186596, 34.159992, 31.955036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574219, 34.621555, 32.596893>,  <40.845573, 34.207245, 32.186371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574219, 34.621555, 32.596893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260818, 34.427311, 32.441814>,  <40.072781, 34.310764, 32.348766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260818, 34.427311, 32.441814>,  <40.574219, 34.621555, 32.596893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260818, 34.427311, 32.441814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520721, 0.172635, 0.836090,
		-0.339086, 0.856958, -0.388128,
		-0.783499, -0.485613, -0.387698,
		40.025768, 34.281628, 32.325504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062454, 35.017937, 32.672657>,  <40.574219, 34.621555, 32.596893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062454, 35.017937, 32.672657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874744, 34.665630, 32.647263>,  <39.762119, 34.454247, 32.632027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874744, 34.665630, 32.647263>,  <40.062454, 35.017937, 32.672657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874744, 34.665630, 32.647263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512255, 0.212957, 0.832012,
		-0.719287, 0.422968, -0.551113,
		-0.469277, -0.880765, -0.063491,
		39.733963, 34.401402, 32.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395264, 35.139484, 33.003468>,  <40.062454, 35.017937, 32.672657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395264, 35.139484, 33.003468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373287, 34.743088, 32.954605>,  <39.360100, 34.505249, 32.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373287, 34.743088, 32.954605>,  <39.395264, 35.139484, 33.003468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373287, 34.743088, 32.954605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655212, -0.056536, 0.753327,
		-0.753445, 0.121427, -0.646201,
		-0.054941, -0.990989, -0.122157,
		39.356804, 34.445789, 32.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626152, 34.861557, 32.867443>,  <39.395264, 35.139484, 33.003468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626152, 34.861557, 32.867443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825302, 34.541172, 33.000458>,  <38.944794, 34.348942, 33.080265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825302, 34.541172, 33.000458>,  <38.626152, 34.861557, 32.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825302, 34.541172, 33.000458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566226, -0.009786, 0.824192,
		-0.656891, -0.598638, -0.458396,
		0.497879, -0.800960, 0.332536,
		38.974667, 34.300884, 33.100220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128914, 34.450150, 33.025822>,  <38.626152, 34.861557, 32.867443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128914, 34.450150, 33.025822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434994, 34.333900, 33.255604>,  <38.618641, 34.264149, 33.393475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434994, 34.333900, 33.255604>,  <38.128914, 34.450150, 33.025822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434994, 34.333900, 33.255604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635105, -0.194706, 0.747484,
		-0.105387, -0.936817, -0.333567,
		0.765203, -0.290625, 0.574457,
		38.664555, 34.246712, 33.427940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903278, 33.916946, 33.385433>,  <38.128914, 34.450150, 33.025822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903278, 33.916946, 33.385433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218788, 34.031094, 33.603207>,  <38.408092, 34.099583, 33.733871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218788, 34.031094, 33.603207>,  <37.903278, 33.916946, 33.385433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218788, 34.031094, 33.603207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480591, -0.265905, 0.835660,
		0.383239, -0.920792, -0.072592,
		0.788771, 0.285371, 0.544429,
		38.455421, 34.116703, 33.766537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142735, 33.364624, 34.003986>,  <37.903278, 33.916946, 33.385433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142735, 33.364624, 34.003986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314766, 33.707596, 34.117020>,  <38.417984, 33.913380, 34.184837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314766, 33.707596, 34.117020>,  <38.142735, 33.364624, 34.003986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314766, 33.707596, 34.117020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307826, -0.154973, 0.938737,
		0.848692, -0.490714, 0.197288,
		0.430077, 0.857428, 0.282579,
		38.443790, 33.964825, 34.201794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346287, 33.238300, 34.596203>,  <38.142735, 33.364624, 34.003986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346287, 33.238300, 34.596203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363079, 33.637939, 34.598827>,  <38.373154, 33.877724, 34.600403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363079, 33.637939, 34.598827>,  <38.346287, 33.238300, 34.596203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363079, 33.637939, 34.598827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369486, 0.009428, 0.929189,
		0.928288, -0.041433, 0.369548,
		0.041983, 0.999097, 0.006557,
		38.375675, 33.937668, 34.600796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738525, 33.449776, 35.194660>,  <38.346287, 33.238300, 34.596203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738525, 33.449776, 35.194660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515148, 33.763004, 35.085155>,  <38.381123, 33.950943, 35.019455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515148, 33.763004, 35.085155>,  <38.738525, 33.449776, 35.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515148, 33.763004, 35.085155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292795, 0.122707, 0.948269,
		0.776155, 0.609706, 0.160755,
		-0.558440, 0.783072, -0.273758,
		38.347618, 33.997925, 35.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832428, 33.894779, 35.718319>,  <38.738525, 33.449776, 35.194660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832428, 33.894779, 35.718319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482601, 33.977352, 35.542809>,  <38.272705, 34.026894, 35.437504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482601, 33.977352, 35.542809>,  <38.832428, 33.894779, 35.718319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482601, 33.977352, 35.542809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413877, 0.153729, 0.897259,
		0.252674, 0.966310, -0.049009,
		-0.874564, 0.206430, -0.438777,
		38.220234, 34.039280, 35.411175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534184, 34.387486, 36.139156>,  <38.832428, 33.894779, 35.718319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534184, 34.387486, 36.139156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232376, 34.248501, 35.916458>,  <38.051292, 34.165112, 35.782837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232376, 34.248501, 35.916458>,  <38.534184, 34.387486, 36.139156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232376, 34.248501, 35.916458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572629, -0.065889, 0.817163,
		-0.320614, 0.935378, -0.149250,
		-0.754521, -0.347459, -0.556749,
		38.006020, 34.144264, 35.749432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937187, 34.775665, 36.306778>,  <38.534184, 34.387486, 36.139156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937187, 34.775665, 36.306778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798294, 34.440739, 36.137859>,  <37.714958, 34.239784, 36.036507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798294, 34.440739, 36.137859>,  <37.937187, 34.775665, 36.306778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798294, 34.440739, 36.137859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769694, -0.002784, 0.638407,
		-0.535723, 0.546715, -0.643509,
		-0.347235, -0.837314, -0.422295,
		37.694122, 34.189545, 36.011169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415825, 35.288136, 36.223022>,  <37.937187, 34.775665, 36.306778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415825, 35.288136, 36.223022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734215, 35.411636, 36.014751>,  <38.925247, 35.485737, 35.889790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734215, 35.411636, 36.014751>,  <38.415825, 35.288136, 36.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734215, 35.411636, 36.014751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373094, 0.927571, -0.020321,
		0.476689, 0.210436, 0.853513,
		0.795970, 0.308754, -0.520675,
		38.973007, 35.504261, 35.858547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768578, 35.905743, 36.636024>,  <38.415825, 35.288136, 36.223022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768578, 35.905743, 36.636024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886497, 35.921825, 36.254139>,  <38.957249, 35.931477, 36.025009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886497, 35.921825, 36.254139>,  <38.768578, 35.905743, 36.636024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886497, 35.921825, 36.254139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126457, 0.991968, 0.002729,
		0.947155, 0.119926, 0.297515,
		0.294798, 0.040208, -0.954713,
		38.974937, 35.933887, 35.967724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162724, 36.500092, 36.592266>,  <38.768578, 35.905743, 36.636024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162724, 36.500092, 36.592266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 36.446480, 36.205193>,  <39.026009, 36.414314, 35.972950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 36.446480, 36.205193>,  <39.162724, 36.500092, 36.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077278, 36.446480, 36.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095471, 0.988666, -0.115862,
		0.972241, 0.067636, -0.223990,
		-0.213615, -0.134030, -0.967680,
		39.013195, 36.406269, 35.914890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374451, 37.090569, 36.364082>,  <39.162724, 36.500092, 36.592266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374451, 37.090569, 36.364082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145615, 36.952751, 36.066357>,  <39.008312, 36.870060, 35.887722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145615, 36.952751, 36.066357>,  <39.374451, 37.090569, 36.364082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145615, 36.952751, 36.066357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260454, 0.936834, -0.233467,
		0.777740, 0.060297, -0.625687,
		-0.572087, -0.344539, -0.744318,
		38.973988, 36.849388, 35.843060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523315, 37.528343, 35.755280>,  <39.374451, 37.090569, 36.364082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523315, 37.528343, 35.755280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156715, 37.371204, 35.725094>,  <38.936756, 37.276920, 35.706982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156715, 37.371204, 35.725094>,  <39.523315, 37.528343, 35.755280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156715, 37.371204, 35.725094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373584, 0.908004, -0.189639,
		0.143023, -0.145611, -0.978949,
		-0.916504, -0.392842, -0.075467,
		38.881763, 37.253353, 35.702454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241863, 37.772251, 35.101795>,  <39.523315, 37.528343, 35.755280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241863, 37.772251, 35.101795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920315, 37.683121, 35.322392>,  <38.727386, 37.629642, 35.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920315, 37.683121, 35.322392>,  <39.241863, 37.772251, 35.101795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920315, 37.683121, 35.322392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303025, 0.951256, -0.057346,
		-0.511832, -0.213215, -0.832206,
		-0.803868, -0.222828, 0.551492,
		38.679153, 37.616272, 35.487839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616318, 37.932816, 34.745266>,  <39.241863, 37.772251, 35.101795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616318, 37.932816, 34.745266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543190, 37.934647, 35.138519>,  <38.499313, 37.935745, 35.374474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543190, 37.934647, 35.138519>,  <38.616318, 37.932816, 34.745266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543190, 37.934647, 35.138519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344301, 0.936366, -0.068383,
		-0.920888, -0.350996, -0.169607,
		-0.182817, 0.004577, 0.983136,
		38.488346, 37.936020, 35.433460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942455, 38.336628, 34.767830>,  <38.616318, 37.932816, 34.745266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942455, 38.336628, 34.767830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072742, 38.330746, 35.145969>,  <38.150913, 38.327217, 35.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072742, 38.330746, 35.145969>,  <37.942455, 38.336628, 34.767830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072742, 38.330746, 35.145969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430019, 0.888170, 0.161982,
		-0.842016, -0.459280, 0.282968,
		0.325719, -0.014709, 0.945352,
		38.170460, 38.326332, 35.429577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436459, 38.612217, 35.126408>,  <37.942455, 38.336628, 34.767830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436459, 38.612217, 35.126408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749924, 38.658611, 35.370510>,  <37.938004, 38.686447, 35.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749924, 38.658611, 35.370510>,  <37.436459, 38.612217, 35.126408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749924, 38.658611, 35.370510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423027, 0.819050, 0.387564,
		-0.454880, -0.561876, 0.690927,
		0.783666, 0.115985, 0.610258,
		37.985023, 38.693405, 35.553589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158894, 38.724575, 35.705196>,  <37.436459, 38.612217, 35.126408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158894, 38.724575, 35.705196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522217, 38.856812, 35.807716>,  <37.740211, 38.936153, 35.869228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522217, 38.856812, 35.807716>,  <37.158894, 38.724575, 35.705196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522217, 38.856812, 35.807716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415924, 0.779007, 0.469207,
		-0.044546, -0.532786, 0.845077,
		0.908307, 0.330587, 0.256300,
		37.794708, 38.955986, 35.884605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987083, 39.013622, 36.413765>,  <37.158894, 38.724575, 35.705196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987083, 39.013622, 36.413765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333557, 39.166924, 36.285488>,  <37.541443, 39.258904, 36.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333557, 39.166924, 36.285488>,  <36.987083, 39.013622, 36.413765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333557, 39.166924, 36.285488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240586, 0.882290, 0.404577,
		0.437995, -0.273286, 0.856432,
		0.866186, 0.383248, -0.320689,
		37.593414, 39.281898, 36.189281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201042, 39.455864, 36.894543>,  <36.987083, 39.013622, 36.413765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201042, 39.455864, 36.894543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400082, 39.584160, 36.572170>,  <37.519505, 39.661137, 36.378746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400082, 39.584160, 36.572170>,  <37.201042, 39.455864, 36.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400082, 39.584160, 36.572170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253087, 0.942382, 0.218779,
		0.829664, 0.095106, 0.550103,
		0.497600, 0.320736, -0.805929,
		37.549362, 39.680382, 36.330391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648155, 39.971596, 37.155075>,  <37.201042, 39.455864, 36.894543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648155, 39.971596, 37.155075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578831, 40.032001, 36.765785>,  <37.537235, 40.068245, 36.532211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578831, 40.032001, 36.765785>,  <37.648155, 39.971596, 37.155075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578831, 40.032001, 36.765785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258093, 0.946675, 0.192856,
		0.950448, 0.284605, -0.125093,
		-0.173311, 0.151014, -0.973220,
		37.526836, 40.077305, 36.473820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017166, 40.578098, 36.970917>,  <37.648155, 39.971596, 37.155075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017166, 40.578098, 36.970917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734398, 40.524891, 36.693050>,  <37.564735, 40.492966, 36.526329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734398, 40.524891, 36.693050>,  <38.017166, 40.578098, 36.970917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734398, 40.524891, 36.693050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391108, 0.891853, 0.227228,
		0.589315, 0.432323, -0.682499,
		-0.706925, -0.133023, -0.694667,
		37.522320, 40.484985, 36.484650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955818, 41.240837, 36.650318>,  <38.017166, 40.578098, 36.970917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955818, 41.240837, 36.650318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615463, 41.064232, 36.536438>,  <37.411251, 40.958267, 36.468109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615463, 41.064232, 36.536438>,  <37.955818, 41.240837, 36.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615463, 41.064232, 36.536438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498324, 0.849896, 0.171319,
		0.166324, 0.287645, -0.943184,
		-0.850887, -0.441517, -0.284698,
		37.360195, 40.931778, 36.451027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549397, 41.660065, 36.291985>,  <37.955818, 41.240837, 36.650318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549397, 41.660065, 36.291985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235931, 41.432098, 36.390839>,  <37.047852, 41.295319, 36.450153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235931, 41.432098, 36.390839>,  <37.549397, 41.660065, 36.291985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235931, 41.432098, 36.390839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549515, 0.821536, 0.152027,
		-0.289676, -0.016670, -0.956980,
		-0.783659, -0.569913, 0.247139,
		37.000835, 41.261124, 36.464981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880219, 42.043530, 36.130486>,  <37.549397, 41.660065, 36.291985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880219, 42.043530, 36.130486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764301, 41.785625, 36.413414>,  <36.694752, 41.630882, 36.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764301, 41.785625, 36.413414>,  <36.880219, 42.043530, 36.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764301, 41.785625, 36.413414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589714, 0.702373, 0.398633,
		-0.753828, -0.301599, -0.583765,
		-0.289794, -0.644756, 0.707326,
		36.677364, 41.592197, 36.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165924, 41.987144, 35.989895>,  <36.880219, 42.043530, 36.130486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165924, 41.987144, 35.989895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223289, 41.876198, 36.369896>,  <36.257710, 41.809628, 36.597897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223289, 41.876198, 36.369896>,  <36.165924, 41.987144, 35.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223289, 41.876198, 36.369896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614715, 0.727327, 0.305157,
		-0.775602, -0.627742, -0.066195,
		0.143414, -0.277371, 0.949999,
		36.266315, 41.792988, 36.654896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502598, 42.089554, 36.272770>,  <36.165924, 41.987144, 35.989895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502598, 42.089554, 36.272770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750156, 42.053013, 36.584827>,  <35.898693, 42.031090, 36.772060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750156, 42.053013, 36.584827>,  <35.502598, 42.089554, 36.272770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750156, 42.053013, 36.584827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382925, 0.832101, 0.401218,
		-0.685807, -0.547049, 0.480007,
		0.618900, -0.091351, 0.780140,
		35.935825, 42.025608, 36.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095303, 42.101528, 36.913036>,  <35.502598, 42.089554, 36.272770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095303, 42.101528, 36.913036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455616, 42.255016, 36.994370>,  <35.671803, 42.347111, 37.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455616, 42.255016, 36.994370>,  <35.095303, 42.101528, 36.913036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455616, 42.255016, 36.994370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430489, 0.850639, 0.301815,
		-0.057148, -0.359402, 0.931431,
		0.900785, 0.383723, 0.203332,
		35.725853, 42.370132, 37.055370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925266, 42.572876, 37.377766>,  <35.095303, 42.101528, 36.913036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925266, 42.572876, 37.377766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293339, 42.677689, 37.261421>,  <35.514183, 42.740578, 37.191616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293339, 42.677689, 37.261421>,  <34.925266, 42.572876, 37.377766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293339, 42.677689, 37.261421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197253, 0.952090, 0.233700,
		0.338161, -0.157674, 0.927785,
		0.920184, 0.262036, -0.290859,
		35.569393, 42.756298, 37.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286980, 42.898281, 37.967522>,  <34.925266, 42.572876, 37.377766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286980, 42.898281, 37.967522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363216, 43.012127, 37.591721>,  <35.408958, 43.080433, 37.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363216, 43.012127, 37.591721>,  <35.286980, 42.898281, 37.967522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363216, 43.012127, 37.591721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090041, 0.958082, 0.271978,
		0.977531, 0.032757, 0.208230,
		0.190593, 0.284616, -0.939504,
		35.420395, 43.097511, 37.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837971, 43.405376, 38.030331>,  <35.286980, 42.898281, 37.967522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837971, 43.405376, 38.030331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603931, 43.442139, 37.708035>,  <35.463509, 43.464195, 37.514656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603931, 43.442139, 37.708035>,  <35.837971, 43.405376, 38.030331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603931, 43.442139, 37.708035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119349, 0.972980, 0.197650,
		0.802133, 0.211809, -0.558319,
		-0.585097, 0.091907, -0.805738,
		35.428402, 43.469711, 37.466312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204102, 43.885010, 37.529739>,  <35.837971, 43.405376, 38.030331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204102, 43.885010, 37.529739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804436, 43.875294, 37.516598>,  <35.564636, 43.869465, 37.508713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804436, 43.875294, 37.516598>,  <36.204102, 43.885010, 37.529739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804436, 43.875294, 37.516598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030479, 0.978623, 0.203393,
		0.027215, 0.204224, -0.978546,
		-0.999165, -0.024290, -0.032858,
		35.504684, 43.868008, 37.506741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169006, 43.276253, 37.139244>,  <36.204102, 43.885010, 37.529739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169006, 43.276253, 37.139244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011356, 42.980843, 37.358055>,  <35.916767, 42.803596, 37.489342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011356, 42.980843, 37.358055>,  <36.169006, 43.276253, 37.139244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011356, 42.980843, 37.358055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389672, -0.673344, -0.628302,
		0.832357, -0.034470, 0.553167,
		-0.394129, -0.738525, 0.547030,
		35.893116, 42.759285, 37.522163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657539, 42.795631, 37.500370>,  <36.169006, 43.276253, 37.139244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657539, 42.795631, 37.500370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326424, 42.577911, 37.445942>,  <36.127754, 42.447281, 37.413284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326424, 42.577911, 37.445942>,  <36.657539, 42.795631, 37.500370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326424, 42.577911, 37.445942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549841, -0.738806, -0.389668,
		0.111568, -0.397377, 0.910848,
		-0.827785, -0.544296, -0.136066,
		36.078087, 42.414623, 37.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782269, 42.115585, 37.796043>,  <36.657539, 42.795631, 37.500370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782269, 42.115585, 37.796043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501427, 42.069710, 37.514935>,  <36.332920, 42.042183, 37.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501427, 42.069710, 37.514935>,  <36.782269, 42.115585, 37.796043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501427, 42.069710, 37.514935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441105, -0.844826, -0.302812,
		-0.558990, -0.522604, 0.643751,
		-0.702108, -0.114693, -0.702773,
		36.290794, 42.035301, 37.304104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619797, 41.433701, 37.861942>,  <36.782269, 42.115585, 37.796043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619797, 41.433701, 37.861942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504791, 41.546650, 37.495861>,  <36.435787, 41.614422, 37.276211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504791, 41.546650, 37.495861>,  <36.619797, 41.433701, 37.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504791, 41.546650, 37.495861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343386, -0.861635, -0.373727,
		-0.894104, -0.421720, 0.150769,
		-0.287516, 0.282379, -0.915204,
		36.418537, 41.631363, 37.221298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262756, 40.863934, 37.588734>,  <36.619797, 41.433701, 37.861942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262756, 40.863934, 37.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389954, 41.089565, 37.283920>,  <36.466274, 41.224945, 37.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389954, 41.089565, 37.283920>,  <36.262756, 40.863934, 37.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389954, 41.089565, 37.283920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374761, -0.813084, -0.445476,
		-0.870880, -0.143921, -0.469952,
		0.317997, 0.564076, -0.762034,
		36.485352, 41.258789, 37.055309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287025, 40.365669, 36.984402>,  <36.262756, 40.863934, 37.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287025, 40.365669, 36.984402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450500, 40.674507, 36.789738>,  <36.548584, 40.859810, 36.672939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450500, 40.674507, 36.789738>,  <36.287025, 40.365669, 36.984402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450500, 40.674507, 36.789738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589463, -0.630392, -0.505114,
		-0.696787, -0.080438, -0.712754,
		0.408684, 0.772098, -0.486664,
		36.573105, 40.906136, 36.643738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201431, 40.312927, 36.281132>,  <36.287025, 40.365669, 36.984402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201431, 40.312927, 36.281132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554028, 40.498028, 36.318737>,  <36.765587, 40.609089, 36.341301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554028, 40.498028, 36.318737>,  <36.201431, 40.312927, 36.281132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554028, 40.498028, 36.318737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450463, -0.764356, -0.461349,
		-0.141630, 0.449024, -0.882224,
		0.881490, 0.462750, 0.094013,
		36.818474, 40.636852, 36.346939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279972, 39.629364, 35.948425>,  <36.201431, 40.312927, 36.281132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279972, 39.629364, 35.948425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453426, 39.647243, 36.308418>,  <36.557499, 39.657970, 36.524414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453426, 39.647243, 36.308418>,  <36.279972, 39.629364, 35.948425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453426, 39.647243, 36.308418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887894, 0.149105, -0.435215,
		-0.153646, 0.987810, 0.024966,
		0.433633, 0.044702, 0.899980,
		36.583515, 39.660652, 36.578411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593044, 40.266304, 35.610714>,  <36.279972, 39.629364, 35.948425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593044, 40.266304, 35.610714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890594, 40.344330, 35.866402>,  <37.069126, 40.391144, 36.019814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890594, 40.344330, 35.866402>,  <36.593044, 40.266304, 35.610714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890594, 40.344330, 35.866402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557003, -0.709496, -0.431698,
		0.369314, 0.677176, -0.636427,
		0.743878, 0.195060, 0.639216,
		37.113758, 40.402847, 36.058167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232719, 40.294895, 35.229240>,  <36.593044, 40.266304, 35.610714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232719, 40.294895, 35.229240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318638, 40.234627, 35.615227>,  <37.370190, 40.198467, 35.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318638, 40.234627, 35.615227>,  <37.232719, 40.294895, 35.229240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318638, 40.234627, 35.615227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508226, -0.826474, -0.242171,
		0.834009, 0.542438, -0.100946,
		0.214792, -0.150670, 0.964968,
		37.383076, 40.189426, 35.904716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016151, 40.014824, 35.228130>,  <37.232719, 40.294895, 35.229240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016151, 40.014824, 35.228130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866684, 39.913673, 35.585102>,  <37.777004, 39.852985, 35.799286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866684, 39.913673, 35.585102>,  <38.016151, 40.014824, 35.228130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866684, 39.913673, 35.585102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368982, -0.923244, -0.107109,
		0.851013, 0.289266, 0.438295,
		-0.373670, -0.252874, 0.892427,
		37.754581, 39.837811, 35.852829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695297, 39.826221, 35.658283>,  <38.016151, 40.014824, 35.228130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695297, 39.826221, 35.658283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369301, 39.657955, 35.817696>,  <38.173702, 39.556995, 35.913342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369301, 39.657955, 35.817696>,  <38.695297, 39.826221, 35.658283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369301, 39.657955, 35.817696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452651, -0.891555, -0.015395,
		0.361788, 0.167848, 0.917026,
		-0.814995, -0.420662, 0.398530,
		38.124802, 39.531757, 35.937256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922604, 39.356247, 36.190506>,  <38.695297, 39.826221, 35.658283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922604, 39.356247, 36.190506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560616, 39.244434, 36.062202>,  <38.343422, 39.177345, 35.985222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560616, 39.244434, 36.062202>,  <38.922604, 39.356247, 36.190506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560616, 39.244434, 36.062202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281723, -0.958637, 0.040589,
		-0.318836, -0.053633, 0.946291,
		-0.904973, -0.279533, -0.320758,
		38.289124, 39.160576, 35.965977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642525, 38.943611, 36.666321>,  <38.922604, 39.356247, 36.190506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642525, 38.943611, 36.666321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504051, 38.848278, 36.303364>,  <38.420967, 38.791077, 36.085590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504051, 38.848278, 36.303364>,  <38.642525, 38.943611, 36.666321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504051, 38.848278, 36.303364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221977, -0.960538, 0.167608,
		-0.911528, -0.143397, 0.385427,
		-0.346183, -0.238335, -0.907388,
		38.400196, 38.776779, 36.031147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559277, 38.183174, 36.662376>,  <38.642525, 38.943611, 36.666321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559277, 38.183174, 36.662376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419079, 38.245380, 36.292950>,  <38.334961, 38.282703, 36.071293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419079, 38.245380, 36.292950>,  <38.559277, 38.183174, 36.662376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419079, 38.245380, 36.292950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053748, -0.981153, -0.185607,
		-0.935023, -0.114694, 0.335527,
		-0.350491, 0.155513, -0.923565,
		38.313931, 38.292034, 36.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974434, 37.721767, 36.586792>,  <38.559277, 38.183174, 36.662376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974434, 37.721767, 36.586792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137814, 37.797127, 36.229542>,  <38.235840, 37.842342, 36.015190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137814, 37.797127, 36.229542>,  <37.974434, 37.721767, 36.586792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137814, 37.797127, 36.229542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248241, -0.964515, -0.089931,
		-0.878376, -0.184978, -0.440725,
		0.408450, 0.188399, -0.893126,
		38.260349, 37.853645, 35.961605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735336, 37.149136, 36.250263>,  <37.974434, 37.721767, 36.586792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735336, 37.149136, 36.250263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035480, 37.293682, 36.028858>,  <38.215569, 37.380409, 35.896015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035480, 37.293682, 36.028858>,  <37.735336, 37.149136, 36.250263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035480, 37.293682, 36.028858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158214, -0.911190, -0.380396,
		-0.641815, 0.197861, -0.740894,
		0.750361, 0.361364, -0.553511,
		38.260590, 37.402092, 35.862804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678699, 36.772163, 35.572445>,  <37.735336, 37.149136, 36.250263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678699, 36.772163, 35.572445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049713, 36.912300, 35.624512>,  <38.272320, 36.996380, 35.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049713, 36.912300, 35.624512>,  <37.678699, 36.772163, 35.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049713, 36.912300, 35.624512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371076, -0.904767, -0.209046,
		0.044534, 0.242199, -0.969204,
		0.927534, 0.350338, 0.130167,
		38.327972, 37.017403, 35.663563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103802, 36.459309, 35.046230>,  <37.678699, 36.772163, 35.572445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103802, 36.459309, 35.046230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383915, 36.573162, 35.308094>,  <38.551983, 36.641476, 35.465214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383915, 36.573162, 35.308094>,  <38.103802, 36.459309, 35.046230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383915, 36.573162, 35.308094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516347, -0.835220, -0.189188,
		0.492937, 0.470519, -0.731864,
		0.700285, 0.284638, 0.654662,
		38.594002, 36.658554, 35.504494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682308, 36.363102, 34.706688>,  <38.103802, 36.459309, 35.046230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682308, 36.363102, 34.706688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784237, 36.354324, 35.093384>,  <38.845394, 36.349056, 35.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784237, 36.354324, 35.093384>,  <38.682308, 36.363102, 34.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784237, 36.354324, 35.093384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447203, -0.883732, -0.137937,
		0.857365, 0.467478, -0.215381,
		0.254822, -0.021943, 0.966739,
		38.860683, 36.347740, 35.383404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372402, 35.989517, 34.749599>,  <38.682308, 36.363102, 34.706688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372402, 35.989517, 34.749599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259094, 36.001587, 35.133026>,  <39.191109, 36.008827, 35.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259094, 36.001587, 35.133026>,  <39.372402, 35.989517, 34.749599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259094, 36.001587, 35.133026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629191, -0.748486, 0.209494,
		0.723795, 0.662463, 0.193035,
		-0.283266, 0.030175, 0.958567,
		39.174114, 36.010639, 35.420597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033127, 35.892567, 35.112366>,  <39.372402, 35.989517, 34.749599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033127, 35.892567, 35.112366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717548, 35.786678, 35.334175>,  <39.528202, 35.723145, 35.467258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717548, 35.786678, 35.334175>,  <40.033127, 35.892567, 35.112366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717548, 35.786678, 35.334175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459775, -0.853016, 0.246925,
		0.407650, 0.449764, 0.794691,
		-0.788942, -0.264720, 0.554522,
		39.480865, 35.707264, 35.500530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326824, 35.823841, 35.813847>,  <40.033127, 35.892567, 35.112366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326824, 35.823841, 35.813847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984367, 35.627426, 35.749458>,  <39.778893, 35.509579, 35.710823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984367, 35.627426, 35.749458>,  <40.326824, 35.823841, 35.813847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984367, 35.627426, 35.749458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481594, -0.871128, 0.095934,
		-0.187335, 0.004609, 0.982285,
		-0.856138, -0.491034, -0.160974,
		39.727528, 35.480118, 35.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184837, 35.567364, 36.587303>,  <40.326824, 35.823841, 35.813847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184837, 35.567364, 36.587303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127228, 35.366520, 36.246212>,  <40.092663, 35.246014, 36.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127228, 35.366520, 36.246212>,  <40.184837, 35.567364, 36.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127228, 35.366520, 36.246212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537576, -0.763173, 0.358580,
		-0.830824, -0.406760, 0.379839,
		-0.144027, -0.502109, -0.852727,
		40.084019, 35.215889, 35.990395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982864, 34.861336, 36.813011>,  <40.184837, 35.567364, 36.587303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982864, 34.861336, 36.813011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119705, 34.866573, 36.437183>,  <40.201809, 34.869717, 36.211685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119705, 34.866573, 36.437183>,  <39.982864, 34.861336, 36.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119705, 34.866573, 36.437183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501330, -0.848249, 0.170710,
		-0.794757, -0.529435, -0.296750,
		0.342098, 0.013096, -0.939573,
		40.222336, 34.870502, 36.155312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829002, 34.184402, 36.446133>,  <39.982864, 34.861336, 36.813011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829002, 34.184402, 36.446133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165062, 34.364368, 36.324989>,  <40.366699, 34.472347, 36.252304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165062, 34.364368, 36.324989>,  <39.829002, 34.184402, 36.446133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165062, 34.364368, 36.324989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517511, -0.832101, 0.199473,
		-0.162259, -0.324318, -0.931928,
		0.840151, 0.449917, -0.302855,
		40.417107, 34.499344, 36.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205425, 33.874874, 35.847538>,  <39.829002, 34.184402, 36.446133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205425, 33.874874, 35.847538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466778, 34.031788, 36.106525>,  <40.623589, 34.125935, 36.261917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466778, 34.031788, 36.106525>,  <40.205425, 33.874874, 35.847538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466778, 34.031788, 36.106525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569954, -0.817804, -0.079677,
		0.498243, 0.421084, -0.757920,
		0.653381, 0.392281, 0.647464,
		40.662792, 34.149471, 36.300766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828030, 33.515953, 35.593746>,  <40.205425, 33.874874, 35.847538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828030, 33.515953, 35.593746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897911, 33.655941, 35.961876>,  <40.939838, 33.739933, 36.182755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897911, 33.655941, 35.961876>,  <40.828030, 33.515953, 35.593746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897911, 33.655941, 35.961876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589966, -0.785540, 0.186728,
		0.788302, 0.510339, -0.343707,
		0.174701, 0.349973, 0.920325,
		40.950321, 33.760933, 36.237972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589931, 33.425484, 35.728859>,  <40.828030, 33.515953, 35.593746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589931, 33.425484, 35.728859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556236, 33.026936, 35.723881>,  <41.536018, 32.787807, 35.720894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556236, 33.026936, 35.723881>,  <41.589931, 33.425484, 35.728859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556236, 33.026936, 35.723881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707749, 0.051034, 0.704619,
		-0.701424, 0.068162, -0.709477,
		-0.084235, -0.996368, -0.012445,
		41.530964, 32.728024, 35.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926220, 33.128174, 35.206554>,  <41.589931, 33.425484, 35.728859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926220, 33.128174, 35.206554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151550, 32.853832, 35.022259>,  <42.286747, 32.689228, 34.911682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151550, 32.853832, 35.022259>,  <41.926220, 33.128174, 35.206554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151550, 32.853832, 35.022259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527108, -0.727730, 0.438823,
		-0.636257, -0.004342, -0.771465,
		0.563324, -0.685850, -0.460735,
		42.320545, 32.648079, 34.884037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203415, 33.765854, 35.445641>,  <41.926220, 33.128174, 35.206554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203415, 33.765854, 35.445641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302387, 33.424438, 35.629051>,  <42.361771, 33.219589, 35.739098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302387, 33.424438, 35.629051>,  <42.203415, 33.765854, 35.445641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302387, 33.424438, 35.629051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913028, -0.363788, -0.184498,
		0.324282, -0.372996, -0.869319,
		0.247430, -0.853541, 0.458525,
		42.376617, 33.168377, 35.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911591, 33.998428, 35.192722>,  <42.203415, 33.765854, 35.445641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911591, 33.998428, 35.192722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951893, 33.603325, 35.145084>,  <42.976074, 33.366264, 35.116501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951893, 33.603325, 35.145084>,  <42.911591, 33.998428, 35.192722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951893, 33.603325, 35.145084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096457, 0.128841, -0.986963,
		0.990225, 0.087952, 0.108257,
		0.100753, -0.987757, -0.119098,
		42.982121, 33.306999, 35.109356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512352, 33.980488, 34.687489>,  <42.911591, 33.998428, 35.192722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512352, 33.980488, 34.687489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297939, 33.643044, 34.674873>,  <43.169292, 33.440578, 34.667305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297939, 33.643044, 34.674873>,  <43.512352, 33.980488, 34.687489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297939, 33.643044, 34.674873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042104, 0.064030, -0.997059,
		0.843146, -0.533130, -0.069842,
		-0.536034, -0.843607, -0.031540,
		43.137131, 33.389961, 34.665413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862995, 33.482365, 34.354355>,  <43.512352, 33.980488, 34.687489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862995, 33.482365, 34.354355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465649, 33.463692, 34.312313>,  <43.227242, 33.452488, 34.287086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465649, 33.463692, 34.312313>,  <43.862995, 33.482365, 34.354355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465649, 33.463692, 34.312313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110096, -0.121737, -0.986437,
		0.033258, -0.991464, 0.126070,
		-0.993364, -0.046686, -0.105108,
		43.167641, 33.449688, 34.280781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012421, 32.881203, 34.799500>,  <43.862995, 33.482365, 34.354355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012421, 32.881203, 34.799500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327393, 32.637814, 34.838940>,  <44.516376, 32.491779, 34.862602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327393, 32.637814, 34.838940>,  <44.012421, 32.881203, 34.799500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327393, 32.637814, 34.838940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577738, -0.672766, 0.462174,
		-0.214882, -0.420895, -0.881290,
		0.787429, -0.608468, 0.098602,
		44.563622, 32.455273, 34.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660690, 33.001942, 34.678371>,  <44.012421, 32.881203, 34.799500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660690, 33.001942, 34.678371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812050, 32.892864, 34.324547>,  <44.902866, 32.827419, 34.112251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812050, 32.892864, 34.324547>,  <44.660690, 33.001942, 34.678371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812050, 32.892864, 34.324547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459958, 0.884685, -0.075970,
		0.803276, -0.378115, 0.460191,
		0.378398, -0.272694, -0.884564,
		44.925568, 32.811058, 34.059177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380592, 33.114033, 34.655811>,  <44.660690, 33.001942, 34.678371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380592, 33.114033, 34.655811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171406, 33.192406, 34.323997>,  <45.045895, 33.239429, 34.124908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171406, 33.192406, 34.323997>,  <45.380592, 33.114033, 34.655811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171406, 33.192406, 34.323997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332098, 0.943150, 0.013408,
		0.784999, -0.268473, -0.558301,
		-0.522961, 0.195936, -0.829530,
		45.014519, 33.251186, 34.075138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718830, 33.721310, 34.435284>,  <45.380592, 33.114033, 34.655811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718830, 33.721310, 34.435284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399399, 33.678596, 34.198349>,  <45.207741, 33.652969, 34.056187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399399, 33.678596, 34.198349>,  <45.718830, 33.721310, 34.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399399, 33.678596, 34.198349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120865, 0.992540, -0.015987,
		0.589627, 0.058826, -0.805530,
		-0.798581, -0.106787, -0.592339,
		45.159824, 33.646561, 34.020649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225639, 33.633549, 33.785782>,  <45.718830, 33.721310, 34.435284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225639, 33.633549, 33.785782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102245, 34.014011, 33.790489>,  <46.028210, 34.242290, 33.793312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102245, 34.014011, 33.790489>,  <46.225639, 33.633549, 33.785782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102245, 34.014011, 33.790489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493444, 0.149436, 0.856844,
		0.813234, 0.270131, -0.515441,
		-0.308486, 0.951156, 0.011768,
		46.009701, 34.299358, 33.794018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818680, 34.132114, 34.081135>,  <46.225639, 33.633549, 33.785782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818680, 34.132114, 34.081135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453907, 34.277931, 34.156490>,  <46.235043, 34.365421, 34.201702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453907, 34.277931, 34.156490>,  <46.818680, 34.132114, 34.081135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453907, 34.277931, 34.156490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298824, 0.275337, 0.913725,
		0.281226, 0.889548, -0.360023,
		-0.911930, 0.364546, 0.188386,
		46.180328, 34.387295, 34.213005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973564, 34.797428, 34.312027>,  <46.818680, 34.132114, 34.081135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973564, 34.797428, 34.312027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649368, 34.600849, 34.439518>,  <46.454853, 34.482903, 34.516014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649368, 34.600849, 34.439518>,  <46.973564, 34.797428, 34.312027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649368, 34.600849, 34.439518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367472, -0.002860, 0.930030,
		-0.456151, 0.870901, 0.182912,
		-0.810488, -0.491449, 0.318727,
		46.406223, 34.453415, 34.535137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659718, 34.537815, 34.543980>,  <46.973564, 34.797428, 34.312027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659718, 34.537815, 34.543980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349434, 34.367847, 34.730625>,  <47.163265, 34.265865, 34.842613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349434, 34.367847, 34.730625>,  <47.659718, 34.537815, 34.543980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349434, 34.367847, 34.730625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581660, 0.768232, -0.267378,
		-0.244852, -0.478816, -0.843079,
		-0.775705, -0.424918, 0.466612,
		47.116722, 34.240372, 34.870609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854843, 34.687771, 35.193489>,  <47.659718, 34.537815, 34.543980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854843, 34.687771, 35.193489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617615, 34.836697, 34.907932>,  <47.475277, 34.926052, 34.736599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617615, 34.836697, 34.907932>,  <47.854843, 34.687771, 35.193489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.617615, 34.836697, 34.907932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748715, 0.071082, 0.659070,
		0.296128, 0.925379, 0.236602,
		-0.593072, 0.372317, -0.713895,
		47.439693, 34.948391, 34.693764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.133457, 26.966175, 29.260714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.848637, 26.845669, 29.007030>,  <40.677742, 26.773365, 28.854820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.848637, 26.845669, 29.007030>,  <41.133457, 26.966175, 29.260714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848637, 26.845669, 29.007030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699976, 0.375196, 0.607669,
		0.054881, 0.876622, -0.478039,
		-0.712055, -0.301266, -0.634206,
		40.635021, 26.755289, 28.816769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692356, 27.463076, 29.410458>,  <41.133457, 26.966175, 29.260714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692356, 27.463076, 29.410458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466888, 27.193754, 29.219069>,  <40.331608, 27.032162, 29.104235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466888, 27.193754, 29.219069>,  <40.692356, 27.463076, 29.410458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466888, 27.193754, 29.219069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802199, 0.308187, 0.511368,
		-0.196846, 0.672076, -0.713839,
		-0.563674, -0.673302, -0.478474,
		40.297787, 26.991764, 29.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022945, 27.814173, 29.290506>,  <40.692356, 27.463076, 29.410458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022945, 27.814173, 29.290506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939022, 27.424700, 29.254896>,  <39.888668, 27.191017, 29.233530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939022, 27.424700, 29.254896>,  <40.022945, 27.814173, 29.290506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939022, 27.424700, 29.254896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871131, 0.144810, 0.469212,
		-0.443972, 0.175996, -0.878587,
		-0.209808, -0.973681, -0.089024,
		39.876080, 27.132595, 29.228189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340652, 27.892117, 29.134212>,  <40.022945, 27.814173, 29.290506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340652, 27.892117, 29.134212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374718, 27.513824, 29.259651>,  <39.395157, 27.286850, 29.334915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374718, 27.513824, 29.259651>,  <39.340652, 27.892117, 29.134212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374718, 27.513824, 29.259651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797329, 0.124063, 0.590656,
		-0.597506, -0.300341, -0.743493,
		0.085158, -0.945729, 0.313599,
		39.400265, 27.230106, 29.353731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631519, 27.576078, 29.081121>,  <39.340652, 27.892117, 29.134212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631519, 27.576078, 29.081121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.823582, 27.348263, 29.347977>,  <38.938820, 27.211575, 29.508089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.823582, 27.348263, 29.347977>,  <38.631519, 27.576078, 29.081121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823582, 27.348263, 29.347977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757273, 0.114694, 0.642948,
		-0.442700, -0.813924, -0.376224,
		0.480160, -0.569538, 0.667138,
		38.967628, 27.177402, 29.548119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105808, 27.220516, 29.363205>,  <38.631519, 27.576078, 29.081121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105808, 27.220516, 29.363205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392433, 27.180841, 29.639381>,  <38.564407, 27.157036, 29.805086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392433, 27.180841, 29.639381>,  <38.105808, 27.220516, 29.363205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392433, 27.180841, 29.639381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674445, 0.154015, 0.722083,
		-0.177959, -0.983077, 0.043465,
		0.716558, -0.099187, 0.690440,
		38.607399, 27.151085, 29.846514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949528, 26.680115, 29.950827>,  <38.105808, 27.220516, 29.363205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949528, 26.680115, 29.950827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196445, 26.963160, 30.088366>,  <38.344597, 27.132986, 30.170889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196445, 26.963160, 30.088366>,  <37.949528, 26.680115, 29.950827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196445, 26.963160, 30.088366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635334, 0.190606, 0.748345,
		0.463997, -0.680410, 0.567230,
		0.617298, 0.707610, 0.343847,
		38.381634, 27.175442, 30.191519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826370, 26.659508, 30.584951>,  <37.949528, 26.680115, 29.950827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826370, 26.659508, 30.584951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013569, 27.012949, 30.578907>,  <38.125889, 27.225014, 30.575279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013569, 27.012949, 30.578907>,  <37.826370, 26.659508, 30.584951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013569, 27.012949, 30.578907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602161, 0.331357, 0.726364,
		0.646824, -0.330835, 0.687144,
		0.467996, 0.883601, -0.015114,
		38.153969, 27.278028, 30.574373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964325, 26.804153, 31.350166>,  <37.826370, 26.659508, 30.584951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964325, 26.804153, 31.350166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958702, 27.152451, 31.153551>,  <37.955330, 27.361429, 31.035582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958702, 27.152451, 31.153551>,  <37.964325, 26.804153, 31.350166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958702, 27.152451, 31.153551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585406, 0.391364, 0.710024,
		0.810619, 0.297727, 0.504238,
		-0.014053, 0.870743, -0.491538,
		37.954487, 27.413673, 31.006090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113522, 27.234861, 31.873699>,  <37.964325, 26.804153, 31.350166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113522, 27.234861, 31.873699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961624, 27.465628, 31.584435>,  <37.870487, 27.604088, 31.410875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961624, 27.465628, 31.584435>,  <38.113522, 27.234861, 31.873699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961624, 27.465628, 31.584435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301577, 0.661813, 0.686334,
		0.874557, 0.478718, -0.077332,
		-0.379740, 0.576916, -0.723163,
		37.847702, 27.638702, 31.367485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259735, 27.976532, 32.048260>,  <38.113522, 27.234861, 31.873699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259735, 27.976532, 32.048260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969280, 27.997353, 31.774027>,  <37.795010, 28.009846, 31.609488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969280, 27.997353, 31.774027>,  <38.259735, 27.976532, 32.048260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969280, 27.997353, 31.774027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466982, 0.694517, 0.547333,
		0.504637, 0.717591, -0.480005,
		-0.726133, 0.052051, -0.685581,
		37.751442, 28.012968, 31.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190811, 28.673895, 31.836605>,  <38.259735, 27.976532, 32.048260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190811, 28.673895, 31.836605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845772, 28.497074, 31.738205>,  <37.638748, 28.390982, 31.679165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845772, 28.497074, 31.738205>,  <38.190811, 28.673895, 31.836605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845772, 28.497074, 31.738205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500435, 0.674398, 0.542911,
		-0.074093, 0.591420, -0.802952,
		-0.862598, -0.442051, -0.245999,
		37.586994, 28.364458, 31.664406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743084, 29.197355, 31.642391>,  <38.190811, 28.673895, 31.836605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743084, 29.197355, 31.642391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478809, 28.909071, 31.726362>,  <37.320244, 28.736101, 31.776745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478809, 28.909071, 31.726362>,  <37.743084, 29.197355, 31.642391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478809, 28.909071, 31.726362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525886, 0.643948, 0.555676,
		-0.535663, 0.256731, -0.804459,
		-0.660689, -0.720708, 0.209928,
		37.280602, 28.692858, 31.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074516, 29.418728, 31.472300>,  <37.743084, 29.197355, 31.642391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074516, 29.418728, 31.472300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016338, 29.115910, 31.727087>,  <36.981430, 28.934219, 31.879959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016338, 29.115910, 31.727087>,  <37.074516, 29.418728, 31.472300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016338, 29.115910, 31.727087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534433, 0.601921, 0.593357,
		-0.832602, -0.254116, -0.492137,
		-0.145446, -0.757044, 0.636969,
		36.972706, 28.888796, 31.918179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429729, 29.558296, 31.727785>,  <37.074516, 29.418728, 31.472300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429729, 29.558296, 31.727785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561981, 29.271229, 31.972940>,  <36.641335, 29.098988, 32.120033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561981, 29.271229, 31.972940>,  <36.429729, 29.558296, 31.727785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561981, 29.271229, 31.972940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615034, 0.328722, 0.716712,
		-0.715832, -0.613916, -0.332705,
		0.330633, -0.717670, 0.612889,
		36.661171, 29.055927, 32.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904606, 29.051828, 31.913668>,  <36.429729, 29.558296, 31.727785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904606, 29.051828, 31.913668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182556, 29.037401, 32.200958>,  <36.349327, 29.028746, 32.373333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182556, 29.037401, 32.200958>,  <35.904606, 29.051828, 31.913668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182556, 29.037401, 32.200958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659749, 0.365435, 0.656649,
		-0.286149, -0.930138, 0.230136,
		0.694875, -0.036067, 0.718227,
		36.391018, 29.026581, 32.416428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601963, 28.711042, 32.445900>,  <35.904606, 29.051828, 31.913668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601963, 28.711042, 32.445900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895630, 28.925661, 32.612331>,  <36.071831, 29.054432, 32.712193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895630, 28.925661, 32.612331>,  <35.601963, 28.711042, 32.445900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895630, 28.925661, 32.612331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632911, 0.318930, 0.705484,
		0.245824, -0.781282, 0.573732,
		0.734162, 0.536546, 0.416081,
		36.115879, 29.086624, 32.737156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463505, 28.629158, 33.197708>,  <35.601963, 28.711042, 32.445900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463505, 28.629158, 33.197708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729908, 28.926683, 33.175167>,  <35.889751, 29.105198, 33.161640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729908, 28.926683, 33.175167>,  <35.463505, 28.629158, 33.197708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729908, 28.926683, 33.175167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400283, 0.420120, 0.814415,
		0.629450, -0.519848, 0.577539,
		0.666008, 0.743813, -0.056358,
		35.929710, 29.149828, 33.158260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658630, 28.788799, 33.848766>,  <35.463505, 28.629158, 33.197708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658630, 28.788799, 33.848766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781860, 29.110077, 33.644817>,  <35.855797, 29.302843, 33.522449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781860, 29.110077, 33.644817>,  <35.658630, 28.788799, 33.848766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781860, 29.110077, 33.644817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408965, 0.595699, 0.691296,
		0.858976, -0.004450, 0.511997,
		0.308072, 0.803195, -0.509871,
		35.874283, 29.351036, 33.491856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834648, 29.231634, 34.397572>,  <35.658630, 28.788799, 33.848766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834648, 29.231634, 34.397572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736176, 29.427933, 34.063251>,  <35.677090, 29.545712, 33.862659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736176, 29.427933, 34.063251>,  <35.834648, 29.231634, 34.397572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736176, 29.427933, 34.063251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519526, 0.661174, 0.541241,
		0.818221, 0.567464, 0.092186,
		-0.246184, 0.490748, -0.835799,
		35.662319, 29.575157, 33.812511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942245, 29.988821, 34.517162>,  <35.834648, 29.231634, 34.397572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942245, 29.988821, 34.517162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679428, 29.956957, 34.217308>,  <35.521740, 29.937840, 34.037395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679428, 29.956957, 34.217308>,  <35.942245, 29.988821, 34.517162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679428, 29.956957, 34.217308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597140, 0.661951, 0.453039,
		0.460133, 0.745302, -0.482497,
		-0.657040, -0.079659, -0.749635,
		35.482315, 29.933060, 33.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823616, 30.643600, 34.279587>,  <35.942245, 29.988821, 34.517162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823616, 30.643600, 34.279587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507168, 30.463591, 34.113884>,  <35.317299, 30.355585, 34.014462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507168, 30.463591, 34.113884>,  <35.823616, 30.643600, 34.279587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507168, 30.463591, 34.113884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605197, 0.674118, 0.423440,
		0.088700, 0.585699, -0.805661,
		-0.791119, -0.450025, -0.414257,
		35.269833, 30.328583, 33.989605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766605, 31.084702, 35.002026>,  <35.823616, 30.643600, 34.279587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766605, 31.084702, 35.002026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063152, 31.212896, 35.237877>,  <36.241081, 31.289812, 35.379387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063152, 31.212896, 35.237877>,  <35.766605, 31.084702, 35.002026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063152, 31.212896, 35.237877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657173, -0.168673, -0.734625,
		-0.135983, 0.932115, -0.335664,
		0.741372, 0.320486, 0.589624,
		36.285564, 31.309042, 35.414764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225693, 31.394289, 34.512154>,  <35.766605, 31.084702, 35.002026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225693, 31.394289, 34.512154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453022, 31.362659, 34.839752>,  <36.589420, 31.343681, 35.036312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453022, 31.362659, 34.839752>,  <36.225693, 31.394289, 34.512154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453022, 31.362659, 34.839752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800449, -0.177310, -0.572575,
		0.190491, 0.980973, -0.037476,
		0.568325, -0.079073, 0.818995,
		36.623520, 31.338938, 35.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767010, 31.860987, 34.448029>,  <36.225693, 31.394289, 34.512154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767010, 31.860987, 34.448029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864464, 31.555626, 34.687313>,  <36.922935, 31.372410, 34.830883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864464, 31.555626, 34.687313>,  <36.767010, 31.860987, 34.448029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864464, 31.555626, 34.687313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791853, -0.199573, -0.577182,
		0.560009, 0.614319, 0.555879,
		0.243636, -0.763402, 0.598213,
		36.937553, 31.326605, 34.866776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467903, 32.088184, 34.685120>,  <36.767010, 31.860987, 34.448029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467903, 32.088184, 34.685120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431240, 31.691492, 34.721039>,  <37.409241, 31.453476, 34.742592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431240, 31.691492, 34.721039>,  <37.467903, 32.088184, 34.685120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431240, 31.691492, 34.721039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808759, -0.126752, -0.574320,
		0.580954, 0.019981, 0.813691,
		-0.091661, -0.991733, 0.089796,
		37.403740, 31.393972, 34.747978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160770, 31.832724, 34.748199>,  <37.467903, 32.088184, 34.685120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160770, 31.832724, 34.748199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943970, 31.513559, 34.642693>,  <37.813889, 31.322060, 34.579388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943970, 31.513559, 34.642693>,  <38.160770, 31.832724, 34.748199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943970, 31.513559, 34.642693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683285, -0.235685, -0.691067,
		0.489244, -0.554788, 0.672942,
		-0.541998, -0.797912, -0.263771,
		37.781372, 31.274185, 34.563560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671185, 31.332794, 34.901558>,  <38.160770, 31.832724, 34.748199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671185, 31.332794, 34.901558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381592, 31.181988, 34.670486>,  <38.207836, 31.091503, 34.531841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381592, 31.181988, 34.670486>,  <38.671185, 31.332794, 34.901558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381592, 31.181988, 34.670486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689224, -0.360426, -0.628541,
		0.028759, -0.853201, 0.520788,
		-0.723978, -0.377016, -0.577681,
		38.164398, 31.068884, 34.497181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935261, 30.735252, 34.668781>,  <38.671185, 31.332794, 34.901558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935261, 30.735252, 34.668781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650974, 30.819885, 34.400417>,  <38.480404, 30.870665, 34.239399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650974, 30.819885, 34.400417>,  <38.935261, 30.735252, 34.668781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650974, 30.819885, 34.400417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608361, -0.294029, -0.737186,
		-0.353243, -0.932083, 0.080252,
		-0.710715, 0.211583, -0.670907,
		38.437759, 30.883360, 34.199146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898930, 30.151552, 34.302048>,  <38.935261, 30.735252, 34.668781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898930, 30.151552, 34.302048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736355, 30.432524, 34.068329>,  <38.638809, 30.601107, 33.928097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736355, 30.432524, 34.068329>,  <38.898930, 30.151552, 34.302048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736355, 30.432524, 34.068329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606449, -0.270925, -0.747543,
		-0.683395, -0.658176, -0.315872,
		-0.406437, 0.702427, -0.584299,
		38.614422, 30.643251, 33.893040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657284, 29.825377, 33.703259>,  <38.898930, 30.151552, 34.302048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657284, 29.825377, 33.703259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693565, 30.196571, 33.558697>,  <38.715332, 30.419289, 33.471958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693565, 30.196571, 33.558697>,  <38.657284, 29.825377, 33.703259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693565, 30.196571, 33.558697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572756, -0.345486, -0.743364,
		-0.814692, -0.139574, -0.562846,
		0.090701, 0.927986, -0.361406,
		38.720776, 30.474968, 33.450275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400471, 29.713657, 33.058208>,  <38.657284, 29.825377, 33.703259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400471, 29.713657, 33.058208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.639141, 30.034496, 33.048225>,  <38.782341, 30.226999, 33.042236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.639141, 30.034496, 33.048225>,  <38.400471, 29.713657, 33.058208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639141, 30.034496, 33.048225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537892, -0.422825, -0.729309,
		-0.595529, 0.421733, -0.683729,
		0.596672, 0.802097, -0.024958,
		38.818142, 30.275126, 33.040737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415363, 30.076748, 32.377853>,  <38.400471, 29.713657, 33.058208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415363, 30.076748, 32.377853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767731, 30.201908, 32.519886>,  <38.979149, 30.277004, 32.605106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767731, 30.201908, 32.519886>,  <38.415363, 30.076748, 32.377853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767731, 30.201908, 32.519886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413118, -0.142323, -0.899488,
		-0.230916, 0.939061, -0.254640,
		0.880915, 0.312902, 0.355078,
		39.032005, 30.295778, 32.626408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883572, 30.259722, 31.786821>,  <38.415363, 30.076748, 32.377853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883572, 30.259722, 31.786821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149113, 30.313509, 32.081089>,  <39.308437, 30.345781, 32.257648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149113, 30.313509, 32.081089>,  <38.883572, 30.259722, 31.786821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149113, 30.313509, 32.081089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744453, -0.025030, -0.667206,
		-0.071305, 0.990602, -0.116722,
		0.663857, 0.134469, 0.735671,
		39.348270, 30.353849, 32.301792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354687, 30.840000, 31.565834>,  <38.883572, 30.259722, 31.786821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354687, 30.840000, 31.565834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527611, 30.567909, 31.802610>,  <39.631367, 30.404654, 31.944677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527611, 30.567909, 31.802610>,  <39.354687, 30.840000, 31.565834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527611, 30.567909, 31.802610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713701, -0.143099, -0.685678,
		0.551124, 0.718896, 0.423616,
		0.432312, -0.680229, 0.591942,
		39.657303, 30.363840, 31.980192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188286, 30.886068, 31.399910>,  <39.354687, 30.840000, 31.565834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188286, 30.886068, 31.399910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156921, 30.552174, 31.617926>,  <40.138103, 30.351837, 31.748735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156921, 30.552174, 31.617926>,  <40.188286, 30.886068, 31.399910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156921, 30.552174, 31.617926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710228, -0.430437, -0.557046,
		0.699591, 0.343426, 0.626602,
		-0.078409, -0.834735, 0.545041,
		40.133400, 30.301754, 31.781439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865120, 30.655712, 31.513449>,  <40.188286, 30.886068, 31.399910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865120, 30.655712, 31.513449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639950, 30.327765, 31.555269>,  <40.504848, 30.130997, 31.580360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639950, 30.327765, 31.555269>,  <40.865120, 30.655712, 31.513449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639950, 30.327765, 31.555269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637390, -0.511162, -0.576582,
		0.526164, -0.257934, 0.810322,
		-0.562926, -0.819868, 0.104550,
		40.471073, 30.081804, 31.586634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337662, 30.129671, 31.472031>,  <40.865120, 30.655712, 31.513449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337662, 30.129671, 31.472031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.005100, 29.907583, 31.463125>,  <40.805565, 29.774330, 31.457783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.005100, 29.907583, 31.463125>,  <41.337662, 30.129671, 31.472031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005100, 29.907583, 31.463125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468948, -0.679597, -0.564124,
		0.298083, -0.479456, 0.825390,
		-0.831405, -0.555221, -0.022263,
		40.755680, 29.741016, 31.456446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510521, 29.436703, 31.641399>,  <41.337662, 30.129671, 31.472031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510521, 29.436703, 31.641399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.171844, 29.408697, 31.430418>,  <40.968639, 29.391893, 31.303829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.171844, 29.408697, 31.430418>,  <41.510521, 29.436703, 31.641399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171844, 29.408697, 31.430418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420376, -0.695721, -0.582458,
		-0.326177, -0.714892, 0.618497,
		-0.846695, -0.070016, -0.527451,
		40.917835, 29.387691, 31.272182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341053, 28.736691, 31.541368>,  <41.510521, 29.436703, 31.641399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341053, 28.736691, 31.541368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172230, 28.939932, 31.241051>,  <41.070934, 29.061876, 31.060860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172230, 28.939932, 31.241051>,  <41.341053, 28.736691, 31.541368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172230, 28.939932, 31.241051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547665, -0.517068, -0.657802,
		-0.722445, -0.688817, -0.060037,
		-0.422062, 0.508106, -0.750794,
		41.045612, 29.092363, 31.015812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.256584, 28.265955, 30.969440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.198143, 28.613417, 30.780088>,  <41.163078, 28.821894, 30.666477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.198143, 28.613417, 30.780088>,  <41.256584, 28.265955, 30.969440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198143, 28.613417, 30.780088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516398, -0.341183, -0.785448,
		-0.843794, -0.359207, -0.398725,
		-0.146100, 0.868657, -0.473382,
		41.154312, 28.874014, 30.638073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116386, 28.081444, 30.317230>,  <41.256584, 28.265955, 30.969440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116386, 28.081444, 30.317230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223442, 28.466457, 30.299789>,  <41.287674, 28.697466, 30.289326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223442, 28.466457, 30.299789>,  <41.116386, 28.081444, 30.317230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223442, 28.466457, 30.299789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558444, -0.191838, -0.807055,
		-0.785181, 0.191652, -0.588864,
		0.267640, 0.962532, -0.043601,
		41.303734, 28.755217, 30.286709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972576, 28.301666, 29.634619>,  <41.116386, 28.081444, 30.317230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972576, 28.301666, 29.634619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249851, 28.558088, 29.766403>,  <41.416214, 28.711941, 29.845474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249851, 28.558088, 29.766403>,  <40.972576, 28.301666, 29.634619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249851, 28.558088, 29.766403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545708, -0.168183, -0.820925,
		-0.470848, 0.748842, -0.466410,
		0.693185, 0.641054, 0.329460,
		41.457806, 28.750404, 29.865242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223991, 28.515177, 29.005209>,  <40.972576, 28.301666, 29.634619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223991, 28.515177, 29.005209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511997, 28.635225, 29.255489>,  <41.684799, 28.707254, 29.405659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511997, 28.635225, 29.255489>,  <41.223991, 28.515177, 29.005209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511997, 28.635225, 29.255489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681109, -0.132923, -0.720016,
		-0.132923, 0.944594, -0.300123,
		0.720016, 0.300123, 0.625703,
		41.728001, 28.725262, 29.443201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709431, 28.904402, 28.588615>,  <41.223991, 28.515177, 29.005209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709431, 28.904402, 28.588615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914722, 28.803623, 28.916790>,  <42.037899, 28.743156, 29.113695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914722, 28.803623, 28.916790>,  <41.709431, 28.904402, 28.588615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914722, 28.803623, 28.916790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766326, -0.295900, -0.570252,
		0.386439, 0.921394, 0.041207,
		0.513234, -0.251946, 0.820436,
		42.068691, 28.728039, 29.162920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403381, 29.106791, 28.405788>,  <41.709431, 28.904402, 28.588615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403381, 29.106791, 28.405788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448986, 28.832352, 28.693195>,  <42.476349, 28.667688, 28.865641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448986, 28.832352, 28.693195>,  <42.403381, 29.106791, 28.405788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448986, 28.832352, 28.693195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834928, -0.325793, -0.443570,
		0.538422, 0.650482, 0.535700,
		0.114007, -0.686099, 0.718519,
		42.483189, 28.626522, 28.908751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170254, 29.043036, 28.523535>,  <42.403381, 29.106791, 28.405788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170254, 29.043036, 28.523535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028851, 28.720934, 28.713945>,  <42.944008, 28.527674, 28.828192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028851, 28.720934, 28.713945>,  <43.170254, 29.043036, 28.523535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028851, 28.720934, 28.713945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827650, -0.506396, -0.241989,
		0.435919, 0.308436, 0.845483,
		-0.353511, -0.805252, 0.476024,
		42.922798, 28.479359, 28.856752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713699, 28.850286, 28.878489>,  <43.170254, 29.043036, 28.523535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713699, 28.850286, 28.878489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466496, 28.537973, 28.841732>,  <43.318172, 28.350586, 28.819677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466496, 28.537973, 28.841732>,  <43.713699, 28.850286, 28.878489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466496, 28.537973, 28.841732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729009, -0.525385, -0.438767,
		0.294304, -0.338152, 0.893890,
		-0.618006, -0.780784, -0.091893,
		43.281094, 28.303738, 28.814163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965096, 28.224409, 29.216812>,  <43.713699, 28.850286, 28.878489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965096, 28.224409, 29.216812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.717907, 28.090868, 28.932095>,  <43.569595, 28.010742, 28.761263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.717907, 28.090868, 28.932095>,  <43.965096, 28.224409, 29.216812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717907, 28.090868, 28.932095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756613, -0.498577, -0.423033,
		-0.213653, -0.799976, 0.560706,
		-0.617972, -0.333855, -0.711795,
		43.532516, 27.990711, 28.718555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141987, 27.505766, 29.042912>,  <43.965096, 28.224409, 29.216812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141987, 27.505766, 29.042912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960167, 27.630188, 28.709055>,  <43.851074, 27.704842, 28.508741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960167, 27.630188, 28.709055>,  <44.141987, 27.505766, 29.042912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960167, 27.630188, 28.709055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671170, -0.496433, -0.550532,
		-0.585591, -0.810431, 0.016881,
		-0.454548, 0.311056, -0.834644,
		43.823803, 27.723505, 28.458662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227093, 26.925755, 28.626114>,  <44.141987, 27.505766, 29.042912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227093, 26.925755, 28.626114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.135250, 27.215649, 28.366255>,  <44.080147, 27.389585, 28.210340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.135250, 27.215649, 28.366255>,  <44.227093, 26.925755, 28.626114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135250, 27.215649, 28.366255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675416, -0.361951, -0.642500,
		-0.700782, -0.586301, -0.406393,
		-0.229604, 0.724736, -0.649645,
		44.066368, 27.433069, 28.171362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046028, 26.537622, 28.081335>,  <44.227093, 26.925755, 28.626114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046028, 26.537622, 28.081335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.166668, 26.901485, 27.967098>,  <44.239052, 27.119802, 27.898556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.166668, 26.901485, 27.967098>,  <44.046028, 26.537622, 28.081335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166668, 26.901485, 27.967098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663196, -0.415360, -0.622612,
		-0.684986, -0.001621, -0.728554,
		0.301603, 0.909655, -0.285591,
		44.257149, 27.174381, 27.881420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231419, 26.402201, 27.358685>,  <44.046028, 26.537622, 28.081335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231419, 26.402201, 27.358685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.393654, 26.751814, 27.465693>,  <44.490993, 26.961582, 27.529898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.393654, 26.751814, 27.465693>,  <44.231419, 26.402201, 27.358685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393654, 26.751814, 27.465693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727957, -0.131866, -0.672822,
		-0.552792, 0.467631, -0.689741,
		0.405586, 0.874032, 0.267521,
		44.515331, 27.014023, 27.545948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361000, 26.803797, 26.700237>,  <44.231419, 26.402201, 27.358685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361000, 26.803797, 26.700237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.589729, 26.977226, 26.978815>,  <44.726967, 27.081284, 27.145962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.589729, 26.977226, 26.978815>,  <44.361000, 26.803797, 26.700237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589729, 26.977226, 26.978815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766549, 0.020064, -0.641872,
		-0.292272, 0.900895, -0.320882,
		0.571821, 0.433573, 0.696444,
		44.761276, 27.107298, 27.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562607, 27.397732, 26.435106>,  <44.361000, 26.803797, 26.700237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562607, 27.397732, 26.435106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.827068, 27.329241, 26.727285>,  <44.985744, 27.288147, 26.902594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.827068, 27.329241, 26.727285>,  <44.562607, 27.397732, 26.435106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827068, 27.329241, 26.727285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750247, 0.149714, -0.643983,
		0.000910, 0.973790, 0.227447,
		0.661156, -0.171227, 0.730447,
		45.025414, 27.277872, 26.946419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025963, 27.918938, 26.503180>,  <44.562607, 27.397732, 26.435106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025963, 27.918938, 26.503180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.210365, 27.605587, 26.669935>,  <45.321007, 27.417578, 26.769989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.210365, 27.605587, 26.669935>,  <45.025963, 27.918938, 26.503180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210365, 27.605587, 26.669935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823428, 0.202496, -0.530057,
		0.330816, 0.587637, 0.738406,
		0.461006, -0.783376, 0.416888,
		45.348667, 27.370575, 26.795002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724079, 28.167965, 26.590853>,  <45.025963, 27.918938, 26.503180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724079, 28.167965, 26.590853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.716328, 27.768555, 26.611137>,  <45.711678, 27.528908, 26.623308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.716328, 27.768555, 26.611137>,  <45.724079, 28.167965, 26.590853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716328, 27.768555, 26.611137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720156, -0.049122, -0.692071,
		0.693541, 0.023110, 0.720046,
		-0.019377, -0.998525, 0.050711,
		45.710514, 27.468998, 26.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413559, 27.929995, 26.493008>,  <45.724079, 28.167965, 26.590853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413559, 27.929995, 26.493008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.234447, 27.578064, 26.429260>,  <46.126980, 27.366905, 26.391012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.234447, 27.578064, 26.429260>,  <46.413559, 27.929995, 26.493008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234447, 27.578064, 26.429260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662599, -0.206831, -0.719850,
		0.600381, -0.427930, 0.675587,
		-0.447778, -0.879827, -0.159369,
		46.100113, 27.314116, 26.381449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907299, 27.600506, 26.351189>,  <46.413559, 27.929995, 26.493008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907299, 27.600506, 26.351189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.635326, 27.354225, 26.191887>,  <46.472145, 27.206457, 26.096306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.635326, 27.354225, 26.191887>,  <46.907299, 27.600506, 26.351189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635326, 27.354225, 26.191887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637056, -0.227041, -0.736622,
		0.363121, -0.754560, 0.546610,
		-0.679928, -0.615704, -0.398254,
		46.431347, 27.169514, 26.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294308, 26.975529, 26.230078>,  <46.907299, 27.600506, 26.351189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294308, 26.975529, 26.230078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.970367, 26.988604, 25.995789>,  <46.776001, 26.996449, 25.855215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.970367, 26.988604, 25.995789>,  <47.294308, 26.975529, 26.230078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970367, 26.988604, 25.995789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586536, 0.026900, -0.809476,
		-0.010707, -0.999103, -0.040960,
		-0.809852, 0.032692, -0.585722,
		46.727413, 26.998409, 25.820072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338505, 26.385025, 25.845989>,  <47.294308, 26.975529, 26.230078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338505, 26.385025, 25.845989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.112549, 26.646191, 25.644156>,  <46.976974, 26.802891, 25.523056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.112549, 26.646191, 25.644156>,  <47.338505, 26.385025, 25.845989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112549, 26.646191, 25.644156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605484, -0.087474, -0.791036,
		-0.560617, -0.752364, -0.345916,
		-0.564888, 0.652915, -0.504583,
		46.943081, 26.842066, 25.492781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191811, 25.979887, 25.264765>,  <47.338505, 26.385025, 25.845989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191811, 25.979887, 25.264765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.149002, 26.374233, 25.213211>,  <47.123318, 26.610842, 25.182280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.149002, 26.374233, 25.213211>,  <47.191811, 25.979887, 25.264765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149002, 26.374233, 25.213211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499711, -0.058733, -0.864199,
		-0.859556, -0.156892, -0.486363,
		-0.107020, 0.985868, -0.128884,
		47.116898, 26.669994, 25.174545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695534, 26.285061, 24.616755>,  <47.191811, 25.979887, 25.264765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695534, 26.285061, 24.616755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.009598, 26.497295, 24.744509>,  <47.198036, 26.624636, 24.821161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.009598, 26.497295, 24.744509>,  <46.695534, 26.285061, 24.616755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009598, 26.497295, 24.744509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461293, -0.156970, -0.873252,
		-0.413200, 0.832971, -0.368002,
		0.785159, 0.530584, 0.319384,
		47.245144, 26.656471, 24.840324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261105, 26.292732, 24.113043>,  <46.695534, 26.285061, 24.616755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261105, 26.292732, 24.113043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.195534, 26.275465, 23.718832>,  <47.156193, 26.265104, 23.482306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.195534, 26.275465, 23.718832>,  <47.261105, 26.292732, 24.113043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195534, 26.275465, 23.718832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972329, -0.161493, 0.168806,
		-0.166443, 0.985929, -0.015501,
		-0.163928, -0.043169, -0.985527,
		47.146355, 26.262514, 23.423174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710144, 25.947231, 23.703524>,  <47.261105, 26.292732, 24.113043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710144, 25.947231, 23.703524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.418583, 25.859703, 23.444042>,  <46.243645, 25.807186, 23.288353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.418583, 25.859703, 23.444042>,  <46.710144, 25.947231, 23.703524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418583, 25.859703, 23.444042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679680, 0.344895, 0.647366,
		0.082076, 0.912778, -0.400124,
		-0.728902, -0.218823, -0.648705,
		46.199913, 25.794056, 23.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346863, 26.525356, 23.612215>,  <46.710144, 25.947231, 23.703524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346863, 26.525356, 23.612215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.081718, 26.245398, 23.505808>,  <45.922634, 26.077423, 23.441963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.081718, 26.245398, 23.505808>,  <46.346863, 26.525356, 23.612215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081718, 26.245398, 23.505808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696001, 0.444977, 0.563540,
		-0.276049, 0.558694, -0.782086,
		-0.662857, -0.699898, -0.266016,
		45.882862, 26.035429, 23.426003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729916, 26.919558, 23.450228>,  <46.346863, 26.525356, 23.612215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729916, 26.919558, 23.450228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.627361, 26.538822, 23.517477>,  <45.565830, 26.310381, 23.557827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.627361, 26.538822, 23.517477>,  <45.729916, 26.919558, 23.450228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627361, 26.538822, 23.517477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820329, 0.306270, 0.482970,
		-0.511202, -0.014092, -0.859345,
		-0.256386, -0.951840, 0.168126,
		45.550446, 26.253269, 23.567915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903336, 26.881744, 23.305412>,  <45.729916, 26.919558, 23.450228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903336, 26.881744, 23.305412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.986572, 26.559002, 23.526566>,  <45.036514, 26.365356, 23.659258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.986572, 26.559002, 23.526566>,  <44.903336, 26.881744, 23.305412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986572, 26.559002, 23.526566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865386, 0.111563, 0.488528,
		-0.455853, -0.580118, -0.675026,
		0.208096, -0.806856, 0.552883,
		45.049000, 26.316946, 23.692430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375435, 26.365805, 23.258423>,  <44.903336, 26.881744, 23.305412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375435, 26.365805, 23.258423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.549679, 26.279219, 23.607910>,  <44.654228, 26.227266, 23.817602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.549679, 26.279219, 23.607910>,  <44.375435, 26.365805, 23.258423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549679, 26.279219, 23.607910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889723, 0.043653, 0.454409,
		-0.136505, -0.975313, -0.173581,
		0.435614, -0.216468, 0.873717,
		44.680363, 26.214279, 23.870026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921043, 25.828360, 23.556862>,  <44.375435, 26.365805, 23.258423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921043, 25.828360, 23.556862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138756, 26.036196, 23.820312>,  <44.269382, 26.160898, 23.978382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138756, 26.036196, 23.820312>,  <43.921043, 25.828360, 23.556862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138756, 26.036196, 23.820312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801713, 0.090991, 0.590743,
		0.247016, -0.849556, 0.466087,
		0.544279, 0.519591, 0.658624,
		44.302040, 26.192072, 24.017900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783550, 25.487078, 24.262854>,  <43.921043, 25.828360, 23.556862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783550, 25.487078, 24.262854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.898514, 25.861006, 24.346285>,  <43.967491, 26.085363, 24.396343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.898514, 25.861006, 24.346285>,  <43.783550, 25.487078, 24.262854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898514, 25.861006, 24.346285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746565, 0.082220, 0.660212,
		0.600031, -0.345468, 0.721536,
		0.287407, 0.934822, 0.208580,
		43.984737, 26.141453, 24.408859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521496, 25.446426, 25.029316>,  <43.783550, 25.487078, 24.262854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521496, 25.446426, 25.029316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.641953, 25.813292, 24.924913>,  <43.714226, 26.033411, 24.862272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.641953, 25.813292, 24.924913>,  <43.521496, 25.446426, 25.029316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641953, 25.813292, 24.924913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530249, 0.388550, 0.753568,
		0.792560, -0.088530, 0.603333,
		0.301139, 0.917165, -0.261006,
		43.732296, 26.088442, 24.846611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813446, 25.675692, 25.624454>,  <43.521496, 25.446426, 25.029316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813446, 25.675692, 25.624454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692371, 25.979885, 25.394655>,  <43.619724, 26.162401, 25.256777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692371, 25.979885, 25.394655>,  <43.813446, 25.675692, 25.624454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692371, 25.979885, 25.394655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465872, 0.407801, 0.785278,
		0.831470, 0.505337, 0.230851,
		-0.302688, 0.760482, -0.574497,
		43.601566, 26.208029, 25.222305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908085, 26.227175, 26.050766>,  <43.813446, 25.675692, 25.624454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908085, 26.227175, 26.050766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643188, 26.335754, 25.771410>,  <43.484249, 26.400902, 25.603796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643188, 26.335754, 25.771410>,  <43.908085, 26.227175, 26.050766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643188, 26.335754, 25.771410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647406, 0.261955, 0.715713,
		0.377227, 0.926118, 0.002260,
		-0.662242, 0.271449, -0.698391,
		43.444515, 26.417189, 25.561893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767090, 26.899975, 26.298166>,  <43.908085, 26.227175, 26.050766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767090, 26.899975, 26.298166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.471016, 26.799557, 26.048656>,  <43.293369, 26.739305, 25.898951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.471016, 26.799557, 26.048656>,  <43.767090, 26.899975, 26.298166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471016, 26.799557, 26.048656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671327, 0.223556, 0.706642,
		-0.037952, 0.941806, -0.334008,
		-0.740189, -0.251047, -0.623775,
		43.248959, 26.724243, 25.861525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320724, 27.497112, 26.308035>,  <43.767090, 26.899975, 26.298166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320724, 27.497112, 26.308035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.147694, 27.150429, 26.208681>,  <43.043877, 26.942419, 26.149069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.147694, 27.150429, 26.208681>,  <43.320724, 27.497112, 26.308035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147694, 27.150429, 26.208681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712778, 0.160046, 0.682886,
		-0.552110, 0.472444, -0.687002,
		-0.432577, -0.866707, -0.248385,
		43.017921, 26.890417, 26.134165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568981, 27.640911, 26.261705>,  <43.320724, 27.497112, 26.308035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568981, 27.640911, 26.261705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581367, 27.244123, 26.310757>,  <42.588799, 27.006050, 26.340187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581367, 27.244123, 26.310757>,  <42.568981, 27.640911, 26.261705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581367, 27.244123, 26.310757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730125, 0.061341, 0.680555,
		-0.682612, -0.110605, -0.722362,
		0.030963, -0.991970, 0.122628,
		42.590656, 26.946533, 26.347546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883762, 27.478365, 26.305107>,  <42.568981, 27.640911, 26.261705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883762, 27.478365, 26.305107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077496, 27.156397, 26.442236>,  <42.193733, 26.963215, 26.524513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077496, 27.156397, 26.442236>,  <41.883762, 27.478365, 26.305107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077496, 27.156397, 26.442236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745451, -0.174560, 0.643298,
		-0.457962, -0.567123, -0.684574,
		0.484328, -0.804923, 0.342820,
		42.222794, 26.914921, 26.545082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367424, 26.983528, 26.205399>,  <41.883762, 27.478365, 26.305107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367424, 26.983528, 26.205399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647629, 26.895027, 26.476789>,  <41.815754, 26.841927, 26.639624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647629, 26.895027, 26.476789>,  <41.367424, 26.983528, 26.205399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647629, 26.895027, 26.476789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710422, -0.306363, 0.633594,
		0.067678, -0.925846, -0.371792,
		0.700514, -0.221250, 0.678475,
		41.857784, 26.828651, 26.680332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110012, 26.383127, 26.516016>,  <41.367424, 26.983528, 26.205399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110012, 26.383127, 26.516016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388538, 26.520609, 26.768051>,  <41.555653, 26.603098, 26.919273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388538, 26.520609, 26.768051>,  <41.110012, 26.383127, 26.516016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388538, 26.520609, 26.768051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507051, -0.385763, 0.770770,
		0.507982, -0.856186, -0.094337,
		0.696315, 0.343704, 0.630090,
		41.597431, 26.623720, 26.957079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188332, 25.825966, 26.998035>,  <41.110012, 26.383127, 26.516016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188332, 25.825966, 26.998035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337990, 26.143188, 27.190317>,  <41.427784, 26.333523, 27.305687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337990, 26.143188, 27.190317>,  <41.188332, 25.825966, 26.998035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337990, 26.143188, 27.190317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621865, -0.169986, 0.764453,
		0.687967, -0.584950, 0.429574,
		0.374146, 0.793056, 0.480705,
		41.450233, 26.381105, 27.334528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243050, 25.551434, 27.726898>,  <41.188332, 25.825966, 26.998035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243050, 25.551434, 27.726898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250668, 25.951284, 27.734711>,  <41.255238, 26.191195, 27.739399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250668, 25.951284, 27.734711>,  <41.243050, 25.551434, 27.726898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250668, 25.951284, 27.734711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573015, -0.005096, 0.819529,
		0.819323, -0.026797, 0.572705,
		0.019042, 0.999628, 0.019531,
		41.256382, 26.251173, 27.740570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239525, 25.713230, 28.442692>,  <41.243050, 25.551434, 27.726898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239525, 25.713230, 28.442692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125164, 26.056137, 28.271414>,  <41.056549, 26.261881, 28.168648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125164, 26.056137, 28.271414>,  <41.239525, 25.713230, 28.442692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125164, 26.056137, 28.271414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601508, 0.187297, 0.776601,
		0.745955, 0.479595, 0.462105,
		-0.285903, 0.857268, -0.428195,
		41.039394, 26.313318, 28.142956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332493, 26.254416, 28.966011>,  <41.239525, 25.713230, 28.442692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332493, 26.254416, 28.966011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085663, 26.425917, 28.702074>,  <40.937565, 26.528816, 28.543711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085663, 26.425917, 28.702074>,  <41.332493, 26.254416, 28.966011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085663, 26.425917, 28.702074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578723, 0.320912, 0.749730,
		0.533200, 0.844504, 0.050103,
		-0.617072, 0.428752, -0.659844,
		40.900543, 26.554543, 28.504120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.244579, 30.326797, 33.191544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952023, 30.290852, 32.921139>,  <39.776489, 30.269283, 32.758896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952023, 30.290852, 32.921139>,  <40.244579, 30.326797, 33.191544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952023, 30.290852, 32.921139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625452, 0.483478, 0.612421,
		0.271800, 0.870731, -0.409819,
		-0.731392, -0.089866, -0.676010,
		39.732605, 30.263891, 32.718334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961437, 30.946423, 33.196785>,  <40.244579, 30.326797, 33.191544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961437, 30.946423, 33.196785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682350, 30.720919, 33.019989>,  <39.514896, 30.585615, 32.913910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682350, 30.720919, 33.019989>,  <39.961437, 30.946423, 33.196785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682350, 30.720919, 33.019989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708959, 0.454897, 0.538931,
		-0.102768, 0.689377, -0.717076,
		-0.697722, -0.563762, -0.441991,
		39.473034, 30.551790, 32.887390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401539, 31.463560, 33.027081>,  <39.961437, 30.946423, 33.196785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401539, 31.463560, 33.027081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225712, 31.104280, 33.028637>,  <39.120216, 30.888712, 33.029572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225712, 31.104280, 33.028637>,  <39.401539, 31.463560, 33.027081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225712, 31.104280, 33.028637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691450, 0.341147, 0.636801,
		-0.573302, 0.277229, -0.771018,
		-0.439570, -0.898200, 0.003891,
		39.093842, 30.834820, 33.029804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693214, 31.613882, 32.884502>,  <39.401539, 31.463560, 33.027081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693214, 31.613882, 32.884502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695412, 31.256025, 33.063202>,  <38.696728, 31.041311, 33.170422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695412, 31.256025, 33.063202>,  <38.693214, 31.613882, 32.884502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695412, 31.256025, 33.063202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731526, 0.301008, 0.611771,
		-0.681791, -0.330168, -0.652801,
		0.005489, -0.894641, 0.446752,
		38.697060, 30.987633, 33.197227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026772, 31.535572, 33.132008>,  <38.693214, 31.613882, 32.884502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026772, 31.535572, 33.132008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202000, 31.253786, 33.355370>,  <38.307137, 31.084715, 33.489388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202000, 31.253786, 33.355370>,  <38.026772, 31.535572, 33.132008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202000, 31.253786, 33.355370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633920, 0.198343, 0.747533,
		-0.637367, -0.681462, -0.359685,
		0.438074, -0.704464, 0.558410,
		38.333424, 31.042446, 33.522892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567238, 30.914289, 33.287018>,  <38.026772, 31.535572, 33.132008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567238, 30.914289, 33.287018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840626, 30.943438, 33.577549>,  <38.004658, 30.960926, 33.751869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840626, 30.943438, 33.577549>,  <37.567238, 30.914289, 33.287018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840626, 30.943438, 33.577549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721993, -0.079265, 0.687345,
		0.107661, -0.994187, -0.001562,
		0.683473, 0.072873, 0.726330,
		38.045666, 30.965300, 33.795448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161625, 30.596338, 33.802628>,  <37.567238, 30.914289, 33.287018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161625, 30.596338, 33.802628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471970, 30.723564, 34.020573>,  <37.658176, 30.799900, 34.151340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471970, 30.723564, 34.020573>,  <37.161625, 30.596338, 33.802628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471970, 30.723564, 34.020573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587151, 0.047993, 0.808053,
		0.230864, -0.946854, 0.223988,
		0.775858, 0.318065, 0.544866,
		37.704727, 30.818983, 34.184032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184105, 30.164417, 34.447060>,  <37.161625, 30.596338, 33.802628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184105, 30.164417, 34.447060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.364124, 30.519526, 34.485672>,  <37.472137, 30.732590, 34.508839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.364124, 30.519526, 34.485672>,  <37.184105, 30.164417, 34.447060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364124, 30.519526, 34.485672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508912, 0.166155, 0.844631,
		0.733799, -0.429252, 0.526575,
		0.450053, 0.887770, 0.096527,
		37.499142, 30.785856, 34.514629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369514, 30.156734, 35.049915>,  <37.184105, 30.164417, 34.447060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369514, 30.156734, 35.049915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356388, 30.544588, 34.952976>,  <37.348511, 30.777300, 34.894814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356388, 30.544588, 34.952976>,  <37.369514, 30.156734, 35.049915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356388, 30.544588, 34.952976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601530, 0.174480, 0.779563,
		0.798176, 0.171364, 0.577537,
		-0.032821, 0.969635, -0.242346,
		37.346542, 30.835478, 34.880272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583817, 30.569584, 35.624031>,  <37.369514, 30.156734, 35.049915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583817, 30.569584, 35.624031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362961, 30.816473, 35.399826>,  <37.230446, 30.964607, 35.265301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362961, 30.816473, 35.399826>,  <37.583817, 30.569584, 35.624031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362961, 30.816473, 35.399826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514516, 0.276760, 0.811589,
		0.656060, 0.736504, 0.164761,
		-0.552140, 0.617224, -0.560514,
		37.197319, 31.001640, 35.231670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306847, 30.939018, 36.123779>,  <37.583817, 30.569584, 35.624031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306847, 30.939018, 36.123779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118847, 31.074133, 35.797588>,  <37.006046, 31.155203, 35.601875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118847, 31.074133, 35.797588>,  <37.306847, 30.939018, 36.123779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118847, 31.074133, 35.797588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612885, 0.539959, 0.576902,
		0.635193, 0.770938, -0.046756,
		-0.470002, 0.337788, -0.815474,
		36.977848, 31.175468, 35.552948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246399, 31.705841, 36.150948>,  <37.306847, 30.939018, 36.123779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246399, 31.705841, 36.150948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952892, 31.579935, 35.910110>,  <36.776791, 31.504391, 35.765610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952892, 31.579935, 35.910110>,  <37.246399, 31.705841, 36.150948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952892, 31.579935, 35.910110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667519, 0.499051, 0.552600,
		0.126535, 0.807385, -0.576297,
		-0.733762, -0.314766, -0.602092,
		36.732765, 31.485506, 35.729485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940758, 32.216389, 35.847301>,  <37.246399, 31.705841, 36.150948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940758, 32.216389, 35.847301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670696, 31.922531, 35.874023>,  <36.508659, 31.746218, 35.890057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670696, 31.922531, 35.874023>,  <36.940758, 32.216389, 35.847301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670696, 31.922531, 35.874023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566857, 0.574636, 0.590310,
		-0.472053, 0.360686, -0.804407,
		-0.675158, -0.734642, 0.066802,
		36.468147, 31.702139, 35.894066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381153, 33.008430, 36.062363>,  <36.940758, 32.216389, 35.847301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381153, 33.008430, 36.062363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259426, 33.389442, 36.058735>,  <37.186390, 33.618050, 36.056557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259426, 33.389442, 36.058735>,  <37.381153, 33.008430, 36.062363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259426, 33.389442, 36.058735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668767, 0.206860, -0.714115,
		-0.678336, -0.223388, -0.699970,
		-0.304321, 0.952527, -0.009074,
		37.168129, 33.675201, 36.056011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258945, 33.114929, 35.406467>,  <37.381153, 33.008430, 36.062363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258945, 33.114929, 35.406467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351788, 33.463577, 35.579166>,  <37.407494, 33.672768, 35.682785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351788, 33.463577, 35.579166>,  <37.258945, 33.114929, 35.406467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351788, 33.463577, 35.579166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624745, 0.206617, -0.752996,
		-0.745532, 0.444507, -0.496583,
		0.232110, 0.871621, 0.431743,
		37.421421, 33.725063, 35.708691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933380, 33.720547, 35.087124>,  <37.258945, 33.114929, 35.406467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933380, 33.720547, 35.087124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262653, 33.837429, 35.281845>,  <37.460217, 33.907558, 35.398678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262653, 33.837429, 35.281845>,  <36.933380, 33.720547, 35.087124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262653, 33.837429, 35.281845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415040, 0.275370, -0.867129,
		-0.387434, 0.915852, 0.105402,
		0.823187, 0.292210, 0.486803,
		37.509609, 33.925091, 35.427887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069366, 34.415871, 34.858219>,  <36.933380, 33.720547, 35.087124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069366, 34.415871, 34.858219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416679, 34.277782, 35.000717>,  <37.625065, 34.194927, 35.086216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416679, 34.277782, 35.000717>,  <37.069366, 34.415871, 34.858219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416679, 34.277782, 35.000717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481437, 0.413250, -0.772945,
		0.119621, 0.842642, 0.525020,
		0.868280, -0.345224, 0.356246,
		37.677162, 34.174213, 35.107590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592896, 35.026482, 34.614025>,  <37.069366, 34.415871, 34.858219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592896, 35.026482, 34.614025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813862, 34.713158, 34.728046>,  <37.946442, 34.525162, 34.796459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813862, 34.713158, 34.728046>,  <37.592896, 35.026482, 34.614025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813862, 34.713158, 34.728046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633393, 0.172147, -0.754440,
		0.541892, 0.597316, 0.591242,
		0.552419, -0.783313, 0.285051,
		37.979588, 34.478165, 34.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345837, 35.209885, 34.602211>,  <37.592896, 35.026482, 34.614025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345837, 35.209885, 34.602211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344994, 34.810982, 34.572598>,  <38.344486, 34.571640, 34.554829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344994, 34.810982, 34.572598>,  <38.345837, 35.209885, 34.602211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344994, 34.810982, 34.572598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654021, 0.054631, -0.754501,
		0.756474, -0.050010, 0.652110,
		-0.002107, -0.997253, -0.074034,
		38.344360, 34.511806, 34.550388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961525, 35.082729, 34.512798>,  <38.345837, 35.209885, 34.602211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961525, 35.082729, 34.512798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789577, 34.737682, 34.406143>,  <38.686409, 34.530655, 34.342152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789577, 34.737682, 34.406143>,  <38.961525, 35.082729, 34.512798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789577, 34.737682, 34.406143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647339, -0.088587, -0.757037,
		0.629415, -0.498034, 0.596489,
		-0.429871, -0.862621, -0.266639,
		38.660618, 34.478897, 34.326153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436691, 34.515255, 34.457958>,  <38.961525, 35.082729, 34.512798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436691, 34.515255, 34.457958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.129738, 34.404671, 34.226547>,  <38.945568, 34.338318, 34.087700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.129738, 34.404671, 34.226547>,  <39.436691, 34.515255, 34.457958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129738, 34.404671, 34.226547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640512, -0.288975, -0.711504,
		0.029526, -0.916548, 0.398833,
		-0.767380, -0.276465, -0.578528,
		38.899525, 34.321732, 34.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712055, 33.922928, 34.085953>,  <39.436691, 34.515255, 34.457958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712055, 33.922928, 34.085953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380169, 34.013359, 33.881809>,  <39.181038, 34.067619, 33.759323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380169, 34.013359, 33.881809>,  <39.712055, 33.922928, 34.085953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380169, 34.013359, 33.881809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444075, -0.286611, -0.848912,
		-0.338192, -0.930991, 0.137411,
		-0.829713, 0.226075, -0.510359,
		39.131256, 34.081184, 33.728703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645969, 33.383698, 33.655582>,  <39.712055, 33.922928, 34.085953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645969, 33.383698, 33.655582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420414, 33.672192, 33.494659>,  <39.285080, 33.845287, 33.398106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420414, 33.672192, 33.494659>,  <39.645969, 33.383698, 33.655582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420414, 33.672192, 33.494659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394613, -0.192621, -0.898431,
		-0.725475, -0.665366, -0.175994,
		-0.563886, 0.721238, -0.402304,
		39.251247, 33.888561, 33.373970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393551, 33.185757, 33.020733>,  <39.645969, 33.383698, 33.655582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393551, 33.185757, 33.020733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383152, 33.583870, 32.983341>,  <39.376915, 33.822739, 32.960907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383152, 33.583870, 32.983341>,  <39.393551, 33.185757, 33.020733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383152, 33.583870, 32.983341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251071, -0.084014, -0.964316,
		-0.967620, -0.048535, -0.247702,
		-0.025993, 0.995282, -0.093479,
		39.375355, 33.882454, 32.955299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153057, 33.298733, 32.385040>,  <39.393551, 33.185757, 33.020733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153057, 33.298733, 32.385040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.316040, 33.651287, 32.480656>,  <39.413830, 33.862820, 32.538025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.316040, 33.651287, 32.480656>,  <39.153057, 33.298733, 32.385040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316040, 33.651287, 32.480656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303687, 0.116085, -0.945674,
		-0.861253, 0.457911, -0.220366,
		0.407454, 0.881386, 0.239040,
		39.438274, 33.915703, 32.552368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932896, 33.658325, 31.888012>,  <39.153057, 33.298733, 32.385040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932896, 33.658325, 31.888012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262558, 33.845856, 32.015114>,  <39.460354, 33.958374, 32.091373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262558, 33.845856, 32.015114>,  <38.932896, 33.658325, 31.888012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262558, 33.845856, 32.015114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327837, 0.062589, -0.942659,
		-0.461834, 0.881069, -0.102116,
		0.824156, 0.468829, 0.317753,
		39.509804, 33.986504, 32.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008400, 34.199509, 31.466858>,  <38.932896, 33.658325, 31.888012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008400, 34.199509, 31.466858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375088, 34.180763, 31.625570>,  <39.595100, 34.169514, 31.720798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375088, 34.180763, 31.625570>,  <39.008400, 34.199509, 31.466858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375088, 34.180763, 31.625570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392126, -0.084908, -0.915985,
		0.076620, 0.995286, -0.059458,
		0.916715, -0.046868, 0.396783,
		39.650101, 34.166702, 31.744606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344425, 34.552219, 30.963282>,  <39.008400, 34.199509, 31.466858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344425, 34.552219, 30.963282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632164, 34.366325, 31.169802>,  <39.804806, 34.254791, 31.293715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632164, 34.366325, 31.169802>,  <39.344425, 34.552219, 30.963282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632164, 34.366325, 31.169802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420584, -0.300160, -0.856162,
		0.552860, 0.833023, -0.020459,
		0.719344, -0.464733, 0.516302,
		39.847965, 34.226906, 31.324692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312592, 35.066139, 30.306662>,  <39.344425, 34.552219, 30.963282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312592, 35.066139, 30.306662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001389, 34.944176, 30.086943>,  <38.814667, 34.870998, 29.955111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001389, 34.944176, 30.086943>,  <39.312592, 35.066139, 30.306662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001389, 34.944176, 30.086943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613267, 0.178767, 0.769380,
		-0.136397, 0.935452, -0.326075,
		-0.778010, -0.304913, -0.549299,
		38.767986, 34.852703, 29.922153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854023, 35.683834, 30.293013>,  <39.312592, 35.066139, 30.306662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854023, 35.683834, 30.293013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623417, 35.370522, 30.199978>,  <38.485054, 35.182533, 30.144157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623417, 35.370522, 30.199978>,  <38.854023, 35.683834, 30.293013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623417, 35.370522, 30.199978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620929, 0.234961, 0.747823,
		-0.531107, 0.575554, -0.621822,
		-0.576517, -0.783282, -0.232588,
		38.450462, 35.135536, 30.130201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078892, 35.932751, 30.218006>,  <38.854023, 35.683834, 30.293013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078892, 35.932751, 30.218006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092529, 35.542992, 30.306902>,  <38.100712, 35.309135, 30.360239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092529, 35.542992, 30.306902>,  <38.078892, 35.932751, 30.218006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092529, 35.542992, 30.306902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569142, 0.163858, 0.805747,
		-0.821532, -0.153956, -0.548983,
		0.034095, -0.974396, 0.222238,
		38.102757, 35.250671, 30.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465027, 35.849247, 30.339739>,  <38.078892, 35.932751, 30.218006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465027, 35.849247, 30.339739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610794, 35.524265, 30.521780>,  <37.698254, 35.329277, 30.631004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610794, 35.524265, 30.521780>,  <37.465027, 35.849247, 30.339739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610794, 35.524265, 30.521780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577123, 0.186507, 0.795075,
		-0.730843, -0.552386, -0.400921,
		0.364414, -0.812456, 0.455102,
		37.720119, 35.280529, 30.658310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832855, 35.417194, 30.475327>,  <37.465027, 35.849247, 30.339739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832855, 35.417194, 30.475327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123714, 35.275951, 30.710808>,  <37.298229, 35.191204, 30.852097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123714, 35.275951, 30.710808>,  <36.832855, 35.417194, 30.475327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123714, 35.275951, 30.710808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635587, -0.022249, 0.771708,
		-0.259399, -0.935317, -0.240610,
		0.727146, -0.353109, 0.588704,
		37.341858, 35.170017, 30.887419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592857, 34.941864, 30.805508>,  <36.832855, 35.417194, 30.475327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592857, 34.941864, 30.805508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.892952, 35.053169, 31.045414>,  <37.073009, 35.119953, 31.189358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.892952, 35.053169, 31.045414>,  <36.592857, 34.941864, 30.805508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892952, 35.053169, 31.045414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578533, -0.162856, 0.799235,
		0.320075, -0.946597, 0.038807,
		0.750234, 0.278267, 0.599764,
		37.118023, 35.136650, 31.225344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639038, 34.496532, 31.240965>,  <36.592857, 34.941864, 30.805508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639038, 34.496532, 31.240965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809475, 34.787861, 31.455626>,  <36.911739, 34.962658, 31.584421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809475, 34.787861, 31.455626>,  <36.639038, 34.496532, 31.240965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809475, 34.787861, 31.455626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708035, -0.100782, 0.698949,
		0.563141, -0.677788, 0.472732,
		0.426096, 0.728318, 0.536652,
		36.937305, 35.006355, 31.616621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602642, 34.223492, 31.921064>,  <36.639038, 34.496532, 31.240965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602642, 34.223492, 31.921064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681419, 34.612499, 31.970747>,  <36.728687, 34.845901, 32.000557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681419, 34.612499, 31.970747>,  <36.602642, 34.223492, 31.921064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681419, 34.612499, 31.970747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711337, 0.054557, 0.700730,
		0.674694, -0.226357, 0.702531,
		0.196943, 0.972515, 0.124207,
		36.740501, 34.904255, 32.008011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640820, 34.363167, 32.637955>,  <36.602642, 34.223492, 31.921064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640820, 34.363167, 32.637955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572842, 34.731331, 32.497116>,  <36.532055, 34.952229, 32.412613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572842, 34.731331, 32.497116>,  <36.640820, 34.363167, 32.637955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572842, 34.731331, 32.497116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674354, 0.151918, 0.722611,
		0.718585, 0.360242, 0.594862,
		-0.169944, 0.920406, -0.352097,
		36.521858, 35.007454, 32.391487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664673, 34.688118, 33.199951>,  <36.640820, 34.363167, 32.637955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664673, 34.688118, 33.199951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 34.890125, 32.937935>,  <36.304974, 35.011330, 32.780724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 34.890125, 32.937935>,  <36.664673, 34.688118, 33.199951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439861, 34.890125, 32.937935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708906, 0.113880, 0.696048,
		0.426112, 0.855564, 0.294005,
		-0.562032, 0.505017, -0.655040,
		36.271252, 35.041630, 32.741425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490242, 35.347565, 33.440769>,  <36.664673, 34.688118, 33.199951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490242, 35.347565, 33.440769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218159, 35.287937, 33.153690>,  <36.054909, 35.252163, 32.981441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218159, 35.287937, 33.153690>,  <36.490242, 35.347565, 33.440769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218159, 35.287937, 33.153690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732767, 0.163780, 0.660476,
		0.019089, 0.975169, -0.220636,
		-0.680212, -0.149066, -0.717698,
		36.014095, 35.243217, 32.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981407, 35.983299, 33.486794>,  <36.490242, 35.347565, 33.440769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981407, 35.983299, 33.486794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.817764, 35.637901, 33.368801>,  <35.719578, 35.430664, 33.298004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.817764, 35.637901, 33.368801>,  <35.981407, 35.983299, 33.486794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817764, 35.637901, 33.368801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739065, 0.123958, 0.662131,
		-0.535179, 0.488893, -0.688888,
		-0.409104, -0.863492, -0.294984,
		35.695034, 35.378853, 33.280304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.412884, 35.149437, 26.998137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218426, 34.800018, 26.988525>,  <41.101749, 34.590366, 26.982758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218426, 34.800018, 26.988525>,  <41.412884, 35.149437, 26.998137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218426, 34.800018, 26.988525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806751, 0.438068, 0.396547,
		-0.335875, 0.212167, -0.917700,
		-0.486149, -0.873545, -0.024030,
		41.072582, 34.537956, 26.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746807, 35.365780, 26.952944>,  <41.412884, 35.149437, 26.998137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746807, 35.365780, 26.952944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718792, 34.981689, 27.061066>,  <40.701984, 34.751236, 27.125938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718792, 34.981689, 27.061066>,  <40.746807, 35.365780, 26.952944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718792, 34.981689, 27.061066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854882, 0.197416, 0.479795,
		-0.514073, -0.197474, -0.834705,
		-0.070037, -0.960225, 0.270303,
		40.697781, 34.693623, 27.142157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988789, 35.207401, 26.960545>,  <40.746807, 35.365780, 26.952944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988789, 35.207401, 26.960545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133831, 34.896061, 27.165554>,  <40.220856, 34.709255, 27.288561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133831, 34.896061, 27.165554>,  <39.988789, 35.207401, 26.960545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133831, 34.896061, 27.165554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798789, 0.023711, 0.601144,
		-0.480055, -0.627379, -0.613142,
		0.362607, -0.778353, 0.512526,
		40.242615, 34.662556, 27.319311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427956, 34.695709, 27.171310>,  <39.988789, 35.207401, 26.960545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427956, 34.695709, 27.171310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710564, 34.587967, 27.433083>,  <39.880127, 34.523319, 27.590145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710564, 34.587967, 27.433083>,  <39.427956, 34.695709, 27.171310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710564, 34.587967, 27.433083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682170, -0.013093, 0.731077,
		-0.188354, -0.962951, -0.193000,
		0.706518, -0.269360, 0.654429,
		39.922520, 34.507160, 27.629412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127026, 34.216015, 27.610546>,  <39.427956, 34.695709, 27.171310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127026, 34.216015, 27.610546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415493, 34.382877, 27.831778>,  <39.588573, 34.482994, 27.964518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415493, 34.382877, 27.831778>,  <39.127026, 34.216015, 27.610546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415493, 34.382877, 27.831778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651723, 0.137833, 0.745828,
		0.234897, -0.898320, 0.371273,
		0.721166, 0.417161, 0.553079,
		39.631844, 34.508026, 27.997702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076767, 33.792248, 28.214186>,  <39.127026, 34.216015, 27.610546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076767, 33.792248, 28.214186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246914, 34.136597, 28.325871>,  <39.349003, 34.343204, 28.392881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246914, 34.136597, 28.325871>,  <39.076767, 33.792248, 28.214186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246914, 34.136597, 28.325871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608664, 0.043804, 0.792218,
		0.669769, -0.506930, 0.542615,
		0.425368, 0.860873, 0.279211,
		39.374523, 34.394859, 28.409634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204578, 33.719101, 28.869350>,  <39.076767, 33.792248, 28.214186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204578, 33.719101, 28.869350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228821, 34.117363, 28.841084>,  <39.243366, 34.356319, 28.824123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228821, 34.117363, 28.841084>,  <39.204578, 33.719101, 28.869350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228821, 34.117363, 28.841084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289421, 0.085283, 0.953395,
		0.955281, -0.037327, 0.293333,
		0.060604, 0.995657, -0.070666,
		39.247002, 34.416061, 28.819883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588390, 34.026627, 29.511393>,  <39.204578, 33.719101, 28.869350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588390, 34.026627, 29.511393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369022, 34.319988, 29.350714>,  <39.237400, 34.496006, 29.254307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369022, 34.319988, 29.350714>,  <39.588390, 34.026627, 29.511393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369022, 34.319988, 29.350714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429647, 0.164982, 0.887797,
		0.717383, 0.659474, 0.224623,
		-0.548421, 0.733400, -0.401696,
		39.204494, 34.540009, 29.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624039, 34.570980, 29.914810>,  <39.588390, 34.026627, 29.511393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624039, 34.570980, 29.914810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282509, 34.643318, 29.719553>,  <39.077591, 34.686722, 29.602400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282509, 34.643318, 29.719553>,  <39.624039, 34.570980, 29.914810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282509, 34.643318, 29.719553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424243, 0.301672, 0.853822,
		0.301672, 0.936102, -0.180850,
		-0.853822, 0.180850, -0.488141,
		39.026363, 34.697575, 29.573111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039169, 34.577648, 30.570272>,  <39.624039, 34.570980, 29.914810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039169, 34.577648, 30.570272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100986, 34.284946, 30.835798>,  <40.138077, 34.109325, 30.995113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100986, 34.284946, 30.835798>,  <40.039169, 34.577648, 30.570272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100986, 34.284946, 30.835798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488191, -0.527573, -0.695224,
		0.858945, 0.431509, 0.275705,
		0.154541, -0.731756, 0.663815,
		40.147350, 34.065418, 31.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758652, 34.608913, 30.708176>,  <40.039169, 34.577648, 30.570272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758652, 34.608913, 30.708176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632614, 34.240238, 30.798698>,  <40.556992, 34.019035, 30.853012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632614, 34.240238, 30.798698>,  <40.758652, 34.608913, 30.708176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632614, 34.240238, 30.798698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754891, -0.387919, -0.528828,
		0.575202, 0.004208, 0.818001,
		-0.315092, -0.921684, 0.226308,
		40.538086, 33.963734, 30.866590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333565, 34.223282, 30.908340>,  <40.758652, 34.608913, 30.708176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333565, 34.223282, 30.908340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058964, 33.959015, 30.786867>,  <40.894203, 33.800453, 30.713984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058964, 33.959015, 30.786867>,  <41.333565, 34.223282, 30.908340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058964, 33.959015, 30.786867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723071, -0.576259, -0.380911,
		0.076658, -0.481082, 0.873317,
		-0.686507, -0.660671, -0.303682,
		40.853012, 33.760815, 30.695763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606537, 33.634991, 31.156313>,  <41.333565, 34.223282, 30.908340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606537, 33.634991, 31.156313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343391, 33.568707, 30.862440>,  <41.185505, 33.528934, 30.686115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343391, 33.568707, 30.862440>,  <41.606537, 33.634991, 31.156313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343391, 33.568707, 30.862440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688670, -0.527256, -0.497729,
		-0.304885, -0.833390, 0.460984,
		-0.657859, -0.165715, -0.734683,
		41.146034, 33.518993, 30.642035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849388, 32.948215, 30.934093>,  <41.606537, 33.634991, 31.156313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849388, 32.948215, 30.934093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609806, 33.064621, 30.635683>,  <41.466057, 33.134464, 30.456636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609806, 33.064621, 30.635683>,  <41.849388, 32.948215, 30.934093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609806, 33.064621, 30.635683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568590, -0.501454, -0.652111,
		-0.563875, -0.814771, 0.134880,
		-0.598958, 0.291017, -0.746028,
		41.430119, 33.151924, 30.411875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757004, 32.391613, 30.595455>,  <41.849388, 32.948215, 30.934093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757004, 32.391613, 30.595455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701824, 32.672016, 30.315580>,  <41.668716, 32.840256, 30.147655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701824, 32.672016, 30.315580>,  <41.757004, 32.391613, 30.595455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701824, 32.672016, 30.315580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773590, -0.364884, -0.518090,
		-0.618488, -0.612742, -0.491955,
		-0.137949, 0.701004, -0.699688,
		41.660439, 32.882317, 30.105675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563873, 32.127670, 29.848148>,  <41.757004, 32.391613, 30.595455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563873, 32.127670, 29.848148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726273, 32.483662, 29.765097>,  <41.823711, 32.697254, 29.715265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726273, 32.483662, 29.765097>,  <41.563873, 32.127670, 29.848148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726273, 32.483662, 29.765097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694251, -0.448106, -0.563220,
		-0.594293, 0.084516, -0.799796,
		0.405994, 0.889977, -0.207631,
		41.848072, 32.750656, 29.702808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670918, 32.120918, 29.184870>,  <41.563873, 32.127670, 29.848148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670918, 32.120918, 29.184870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921459, 32.420563, 29.271137>,  <42.071785, 32.600349, 29.322899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921459, 32.420563, 29.271137>,  <41.670918, 32.120918, 29.184870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921459, 32.420563, 29.271137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731935, -0.469943, -0.493380,
		-0.268244, 0.466886, -0.842652,
		0.626351, 0.749113, 0.215671,
		42.109364, 32.645298, 29.335838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075619, 32.139748, 28.643160>,  <41.670918, 32.120918, 29.184870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075619, 32.139748, 28.643160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291920, 32.337837, 28.915142>,  <42.421700, 32.456692, 29.078331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291920, 32.337837, 28.915142>,  <42.075619, 32.139748, 28.643160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291920, 32.337837, 28.915142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840352, -0.353918, -0.410549,
		0.037336, 0.793409, -0.607542,
		0.540754, 0.495221, 0.679957,
		42.454147, 32.486404, 29.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651485, 32.467171, 28.274883>,  <42.075619, 32.139748, 28.643160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651485, 32.467171, 28.274883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757755, 32.455124, 28.660320>,  <42.821518, 32.447895, 28.891582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757755, 32.455124, 28.660320>,  <42.651485, 32.467171, 28.274883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757755, 32.455124, 28.660320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911683, -0.317126, -0.261277,
		0.313449, 0.947905, -0.056794,
		0.265677, -0.030118, 0.963592,
		42.837460, 32.446087, 28.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318836, 32.901806, 28.364799>,  <42.651485, 32.467171, 28.274883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318836, 32.901806, 28.364799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314732, 32.639160, 28.666462>,  <43.312271, 32.481571, 28.847460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314732, 32.639160, 28.666462>,  <43.318836, 32.901806, 28.364799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314732, 32.639160, 28.666462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948991, -0.244078, -0.199602,
		0.315135, 0.713640, 0.625626,
		-0.010258, -0.656615, 0.754156,
		43.311653, 32.442177, 28.892708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005524, 32.939247, 28.695759>,  <43.318836, 32.901806, 28.364799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005524, 32.939247, 28.695759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862637, 32.586212, 28.818027>,  <43.776905, 32.374390, 28.891388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862637, 32.586212, 28.818027>,  <44.005524, 32.939247, 28.695759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862637, 32.586212, 28.818027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901381, -0.411509, -0.134805,
		0.244764, 0.227373, 0.942546,
		-0.357215, -0.882588, 0.305672,
		43.755470, 32.321434, 28.909729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626259, 32.522663, 29.047020>,  <44.005524, 32.939247, 28.695759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626259, 32.522663, 29.047020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355839, 32.241131, 28.959774>,  <44.193588, 32.072212, 28.907427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355839, 32.241131, 28.959774>,  <44.626259, 32.522663, 29.047020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355839, 32.241131, 28.959774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736501, -0.654635, -0.170350,
		-0.022887, -0.275807, 0.960940,
		-0.676049, -0.703835, -0.218115,
		44.153023, 32.029980, 28.894341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796207, 32.012543, 29.442299>,  <44.626259, 32.522663, 29.047020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796207, 32.012543, 29.442299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568756, 31.827847, 29.169987>,  <44.432285, 31.717030, 29.006599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568756, 31.827847, 29.169987>,  <44.796207, 32.012543, 29.442299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568756, 31.827847, 29.169987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647362, -0.761804, -0.024018,
		-0.507533, -0.454369, 0.732092,
		-0.568624, -0.461739, -0.680782,
		44.398170, 31.689325, 28.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.207188, 28.303881, 25.714884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530785, 28.434305, 25.910519>,  <39.724945, 28.512560, 26.027899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530785, 28.434305, 25.910519>,  <39.207188, 28.303881, 25.714884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530785, 28.434305, 25.910519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559493, 0.171992, 0.810793,
		0.180304, -0.929549, 0.321604,
		0.808986, 0.326125, 0.489066,
		39.773483, 28.532124, 26.057245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219612, 28.043236, 26.401114>,  <39.207188, 28.303881, 25.714884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219612, 28.043236, 26.401114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451668, 28.364145, 26.457392>,  <39.590900, 28.556690, 26.491159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451668, 28.364145, 26.457392>,  <39.219612, 28.043236, 26.401114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451668, 28.364145, 26.457392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465738, 0.185024, 0.865364,
		0.668226, -0.567560, 0.480989,
		0.580140, 0.802273, 0.140696,
		39.625710, 28.604828, 26.499601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543839, 27.983259, 26.992006>,  <39.219612, 28.043236, 26.401114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543839, 27.983259, 26.992006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544495, 28.377262, 26.923002>,  <39.544888, 28.613665, 26.881599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544495, 28.377262, 26.923002>,  <39.543839, 27.983259, 26.992006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544495, 28.377262, 26.923002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550179, 0.144941, 0.822371,
		0.835045, 0.093562, 0.542168,
		0.001640, 0.985007, -0.172508,
		39.544987, 28.672764, 26.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730873, 28.294870, 27.670778>,  <39.543839, 27.983259, 26.992006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730873, 28.294870, 27.670778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611767, 28.618118, 27.467491>,  <39.540302, 28.812067, 27.345520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611767, 28.618118, 27.467491>,  <39.730873, 28.294870, 27.670778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611767, 28.618118, 27.467491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535543, 0.299300, 0.789692,
		0.790273, 0.507312, 0.343662,
		-0.297762, 0.808118, -0.508216,
		39.522438, 28.860554, 27.315027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987019, 28.833115, 27.937563>,  <39.730873, 28.294870, 27.670778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987019, 28.833115, 27.937563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655956, 28.958628, 27.751434>,  <39.457317, 29.033936, 27.639757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655956, 28.958628, 27.751434>,  <39.987019, 28.833115, 27.937563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655956, 28.958628, 27.751434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394217, 0.265099, 0.879952,
		0.399469, 0.911737, -0.095713,
		-0.827658, 0.313782, -0.465320,
		39.407658, 29.052763, 27.611837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871754, 29.523386, 28.163288>,  <39.987019, 28.833115, 27.937563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871754, 29.523386, 28.163288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519539, 29.441875, 27.992115>,  <39.308208, 29.392969, 27.889412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519539, 29.441875, 27.992115>,  <39.871754, 29.523386, 28.163288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519539, 29.441875, 27.992115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473823, 0.355767, 0.805557,
		-0.011911, 0.912088, -0.409821,
		-0.880540, -0.203778, -0.427930,
		39.255379, 29.380743, 27.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518261, 30.125626, 28.333944>,  <39.871754, 29.523386, 28.163288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518261, 30.125626, 28.333944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257549, 29.840361, 28.230734>,  <39.101120, 29.669201, 28.168808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257549, 29.840361, 28.230734>,  <39.518261, 30.125626, 28.333944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257549, 29.840361, 28.230734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580002, 0.249514, 0.775461,
		-0.488650, 0.655088, -0.576265,
		-0.651782, -0.713164, -0.258027,
		39.062016, 29.626411, 28.153326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800327, 30.443954, 28.480503>,  <39.518261, 30.125626, 28.333944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800327, 30.443954, 28.480503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750687, 30.047857, 28.455166>,  <38.720901, 29.810198, 28.439962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750687, 30.047857, 28.455166>,  <38.800327, 30.443954, 28.480503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750687, 30.047857, 28.455166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724331, 0.046777, 0.687863,
		-0.678190, 0.131249, -0.723071,
		-0.124105, -0.990245, -0.063344,
		38.713455, 29.750784, 28.436163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107746, 30.448566, 28.315601>,  <38.800327, 30.443954, 28.480503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107746, 30.448566, 28.315601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226593, 30.106947, 28.486399>,  <38.297901, 29.901976, 28.588877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226593, 30.106947, 28.486399>,  <38.107746, 30.448566, 28.315601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226593, 30.106947, 28.486399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888468, -0.083463, 0.451285,
		-0.349782, -0.513452, -0.783594,
		0.297115, -0.854049, 0.426992,
		38.315727, 29.850733, 28.614496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557083, 30.044569, 28.234776>,  <38.107746, 30.448566, 28.315601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557083, 30.044569, 28.234776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735077, 29.844713, 28.532055>,  <37.841873, 29.724800, 28.710423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735077, 29.844713, 28.532055>,  <37.557083, 30.044569, 28.234776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735077, 29.844713, 28.532055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883776, -0.110955, 0.454565,
		-0.144659, -0.859096, -0.490946,
		0.444988, -0.499643, 0.743198,
		37.868572, 29.694820, 28.755014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049282, 29.547361, 28.401558>,  <37.557083, 30.044569, 28.234776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049282, 29.547361, 28.401558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280727, 29.546261, 28.727797>,  <37.419594, 29.545601, 28.923540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280727, 29.546261, 28.727797>,  <37.049282, 29.547361, 28.401558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280727, 29.546261, 28.727797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793251, -0.234390, 0.561973,
		0.189622, -0.972139, -0.137804,
		0.578615, -0.002751, 0.815596,
		37.454311, 29.545435, 28.972475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048775, 28.952951, 28.686483>,  <37.049282, 29.547361, 28.401558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048775, 28.952951, 28.686483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130863, 29.228010, 28.965059>,  <37.180115, 29.393045, 29.132204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130863, 29.228010, 28.965059>,  <37.048775, 28.952951, 28.686483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130863, 29.228010, 28.965059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840403, -0.240885, 0.485487,
		0.501605, -0.684921, 0.528465,
		0.205221, 0.687647, 0.696438,
		37.192429, 29.434303, 29.173990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006958, 28.640703, 29.424261>,  <37.048775, 28.952951, 28.686483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006958, 28.640703, 29.424261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944614, 29.034235, 29.459557>,  <36.907207, 29.270353, 29.480734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944614, 29.034235, 29.459557>,  <37.006958, 28.640703, 29.424261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944614, 29.034235, 29.459557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812760, -0.178499, 0.554581,
		0.561364, 0.014722, 0.827438,
		-0.155861, 0.983830, 0.088238,
		36.897858, 29.329384, 29.486029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660988, 28.441565, 29.991030>,  <37.006958, 28.640703, 29.424261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660988, 28.441565, 29.991030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591434, 28.827242, 29.910936>,  <36.549702, 29.058649, 29.862881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591434, 28.827242, 29.910936>,  <36.660988, 28.441565, 29.991030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591434, 28.827242, 29.910936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738713, 0.006746, 0.673986,
		0.651205, 0.265108, 0.711091,
		-0.173882, 0.964195, -0.200231,
		36.539268, 29.116501, 29.850866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320747, 28.386606, 30.429279>,  <36.660988, 28.441565, 29.991030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320747, 28.386606, 30.429279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483398, 28.158829, 30.715046>,  <37.580990, 28.022161, 30.886505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483398, 28.158829, 30.715046>,  <37.320747, 28.386606, 30.429279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483398, 28.158829, 30.715046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758963, -0.224744, -0.611118,
		0.508559, 0.790710, 0.340802,
		0.406624, -0.569445, 0.714415,
		37.605385, 27.987995, 30.929371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912651, 28.554697, 30.449041>,  <37.320747, 28.386606, 30.429279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912651, 28.554697, 30.449041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943363, 28.197014, 30.625450>,  <37.961788, 27.982405, 30.731295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943363, 28.197014, 30.625450>,  <37.912651, 28.554697, 30.449041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943363, 28.197014, 30.625450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704633, -0.264280, -0.658519,
		0.705405, 0.361317, 0.609798,
		0.076776, -0.894207, 0.441021,
		37.966396, 27.928751, 30.757757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702744, 28.428724, 30.657230>,  <37.912651, 28.554697, 30.449041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702744, 28.428724, 30.657230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559063, 28.055559, 30.647039>,  <38.472855, 27.831659, 30.640924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559063, 28.055559, 30.647039>,  <38.702744, 28.428724, 30.657230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559063, 28.055559, 30.647039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750007, -0.272312, -0.602773,
		0.555398, -0.235622, 0.797506,
		-0.359197, -0.932914, -0.025477,
		38.451305, 27.775684, 30.639397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214497, 27.929316, 30.847536>,  <38.702744, 28.428724, 30.657230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214497, 27.929316, 30.847536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943012, 27.720434, 30.640984>,  <38.780121, 27.595106, 30.517052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943012, 27.720434, 30.640984>,  <39.214497, 27.929316, 30.847536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943012, 27.720434, 30.640984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699871, -0.246845, -0.670259,
		0.222544, -0.816317, 0.533011,
		-0.678715, -0.522202, -0.516383,
		38.739399, 27.563774, 30.486069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530617, 27.255131, 30.722229>,  <39.214497, 27.929316, 30.847536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530617, 27.255131, 30.722229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242691, 27.273577, 30.445173>,  <39.069935, 27.284645, 30.278940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242691, 27.273577, 30.445173>,  <39.530617, 27.255131, 30.722229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242691, 27.273577, 30.445173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639506, -0.344055, -0.687502,
		-0.270009, -0.937817, 0.218163,
		-0.719811, 0.046115, -0.692637,
		39.026749, 27.287411, 30.237383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672016, 26.609873, 30.466234>,  <39.530617, 27.255131, 30.722229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672016, 26.609873, 30.466234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449436, 26.754322, 30.166914>,  <39.315887, 26.840992, 29.987322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449436, 26.754322, 30.166914>,  <39.672016, 26.609873, 30.466234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449436, 26.754322, 30.166914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664179, -0.347804, -0.661739,
		-0.499233, -0.865229, -0.046316,
		-0.556447, 0.361124, -0.748302,
		39.282501, 26.862659, 29.942423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600109, 26.081934, 29.901194>,  <39.672016, 26.609873, 30.466234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600109, 26.081934, 29.901194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548172, 26.440220, 29.731096>,  <39.517010, 26.655191, 29.629038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548172, 26.440220, 29.731096>,  <39.600109, 26.081934, 29.901194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548172, 26.440220, 29.731096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519226, -0.303949, -0.798761,
		-0.844716, -0.324511, -0.425614,
		-0.129842, 0.895716, -0.425245,
		39.509220, 26.708935, 29.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433952, 25.984169, 29.175928>,  <39.600109, 26.081934, 29.901194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433952, 25.984169, 29.175928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600769, 26.344238, 29.226154>,  <39.700859, 26.560280, 29.256290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600769, 26.344238, 29.226154>,  <39.433952, 25.984169, 29.175928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600769, 26.344238, 29.226154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607004, -0.173025, -0.775634,
		-0.676478, 0.399690, -0.618567,
		0.417041, 0.900172, 0.125565,
		39.725880, 26.614290, 29.263824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432545, 26.176935, 28.508600>,  <39.433952, 25.984169, 29.175928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432545, 26.176935, 28.508600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.715931, 26.398531, 28.683491>,  <39.885963, 26.531488, 28.788425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.715931, 26.398531, 28.683491>,  <39.432545, 26.176935, 28.508600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715931, 26.398531, 28.683491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501238, 0.041153, -0.864330,
		-0.496821, 0.831507, -0.248524,
		0.708470, 0.553987, 0.437228,
		39.928471, 26.564728, 28.814659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643867, 26.579535, 27.924522>,  <39.432545, 26.176935, 28.508600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643867, 26.579535, 27.924522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929150, 26.632040, 28.199945>,  <40.100319, 26.663544, 28.365200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929150, 26.632040, 28.199945>,  <39.643867, 26.579535, 27.924522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929150, 26.632040, 28.199945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690985, 0.033473, -0.722094,
		-0.117832, 0.990782, -0.066827,
		0.713201, 0.131262, 0.688560,
		40.143108, 26.671419, 28.406513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065399, 27.004953, 27.587528>,  <39.643867, 26.579535, 27.924522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065399, 27.004953, 27.587528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306282, 26.862328, 27.873243>,  <40.450813, 26.776752, 28.044672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306282, 26.862328, 27.873243>,  <40.065399, 27.004953, 27.587528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306282, 26.862328, 27.873243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741192, -0.082704, -0.666179,
		0.296611, 0.930603, 0.214478,
		0.602210, -0.356565, 0.714286,
		40.486946, 26.755358, 28.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656532, 27.344391, 27.506416>,  <40.065399, 27.004953, 27.587528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656532, 27.344391, 27.506416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782372, 27.033621, 27.724558>,  <40.857876, 26.847158, 27.855444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782372, 27.033621, 27.724558>,  <40.656532, 27.344391, 27.506416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782372, 27.033621, 27.724558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878093, 0.019988, -0.478073,
		0.360527, 0.629275, 0.688501,
		0.314601, -0.776926, 0.545356,
		40.876751, 26.800543, 27.888165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342949, 27.554100, 27.681076>,  <40.656532, 27.344391, 27.506416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342949, 27.554100, 27.681076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314850, 27.157028, 27.720369>,  <41.297989, 26.918785, 27.743946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314850, 27.157028, 27.720369>,  <41.342949, 27.554100, 27.681076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314850, 27.157028, 27.720369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788770, -0.115563, -0.603727,
		0.610661, 0.035074, 0.791115,
		-0.070248, -0.992681, 0.098234,
		41.293774, 26.859224, 27.749840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948051, 27.413567, 27.880526>,  <41.342949, 27.554100, 27.681076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948051, 27.413567, 27.880526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799534, 27.085329, 27.706734>,  <41.710423, 26.888388, 27.602459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799534, 27.085329, 27.706734>,  <41.948051, 27.413567, 27.880526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799534, 27.085329, 27.706734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701947, 0.058235, -0.709845,
		0.607795, -0.568540, 0.554390,
		-0.371290, -0.820592, -0.434480,
		41.688148, 26.839151, 27.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393604, 27.424078, 28.501236>,  <41.948051, 27.413567, 27.880526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393604, 27.424078, 28.501236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.679039, 27.688032, 28.595335>,  <42.850300, 27.846405, 28.651794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.679039, 27.688032, 28.595335>,  <42.393604, 27.424078, 28.501236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679039, 27.688032, 28.595335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584544, 0.375761, 0.719105,
		0.386134, -0.650654, 0.653873,
		0.713588, 0.659889, 0.235242,
		42.893116, 27.885998, 28.665909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491280, 27.317049, 29.263699>,  <42.393604, 27.424078, 28.501236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491280, 27.317049, 29.263699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609589, 27.676731, 29.134735>,  <42.680573, 27.892540, 29.057358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609589, 27.676731, 29.134735>,  <42.491280, 27.317049, 29.263699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609589, 27.676731, 29.134735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588369, 0.437375, 0.680091,
		0.752556, -0.011457, 0.658429,
		0.295772, 0.899206, -0.322409,
		42.698318, 27.946493, 29.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483089, 27.728827, 29.845808>,  <42.491280, 27.317049, 29.263699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483089, 27.728827, 29.845808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.511955, 28.015408, 29.568249>,  <42.529274, 28.187355, 29.401714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.511955, 28.015408, 29.568249>,  <42.483089, 27.728827, 29.845808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511955, 28.015408, 29.568249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471058, 0.637710, 0.609451,
		0.879146, 0.282887, 0.383507,
		0.072160, 0.716451, -0.693896,
		42.533604, 28.230343, 29.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656605, 28.277809, 30.258902>,  <42.483089, 27.728827, 29.845808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656605, 28.277809, 30.258902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.531792, 28.442839, 29.916574>,  <42.456905, 28.541857, 29.711178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.531792, 28.442839, 29.916574>,  <42.656605, 28.277809, 30.258902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531792, 28.442839, 29.916574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397054, 0.761726, 0.511978,
		0.863126, 0.499557, -0.073868,
		-0.312029, 0.412572, -0.855816,
		42.438183, 28.566610, 29.659830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672321, 28.989401, 30.326794>,  <42.656605, 28.277809, 30.258902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672321, 28.989401, 30.326794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.395065, 28.918549, 30.047312>,  <42.228714, 28.876038, 29.879623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.395065, 28.918549, 30.047312>,  <42.672321, 28.989401, 30.326794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395065, 28.918549, 30.047312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632148, 0.615135, 0.471167,
		0.346338, 0.768267, -0.538346,
		-0.693137, -0.177132, -0.698703,
		42.187122, 28.865410, 29.837702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398865, 29.617346, 30.220606>,  <42.672321, 28.989401, 30.326794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398865, 29.617346, 30.220606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123295, 29.347897, 30.113565>,  <41.957951, 29.186228, 30.049341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123295, 29.347897, 30.113565>,  <42.398865, 29.617346, 30.220606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123295, 29.347897, 30.113565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613541, 0.345381, 0.710126,
		-0.385935, 0.653409, -0.651238,
		-0.688928, -0.673624, -0.267599,
		41.916615, 29.145809, 30.033285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786160, 29.920488, 30.195045>,  <42.398865, 29.617346, 30.220606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786160, 29.920488, 30.195045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.645008, 29.549875, 30.247225>,  <41.560318, 29.327507, 30.278532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.645008, 29.549875, 30.247225>,  <41.786160, 29.920488, 30.195045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645008, 29.549875, 30.247225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842908, 0.375312, 0.385547,
		-0.406181, 0.026094, -0.913420,
		-0.352878, -0.926531, 0.130450,
		41.539146, 29.271915, 30.286360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134029, 30.058031, 30.093765>,  <41.786160, 29.920488, 30.195045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134029, 30.058031, 30.093765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131996, 29.691071, 30.252937>,  <41.130775, 29.470894, 30.348440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131996, 29.691071, 30.252937>,  <41.134029, 30.058031, 30.093765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131996, 29.691071, 30.252937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879573, 0.193418, 0.434674,
		-0.475738, -0.347799, -0.807904,
		-0.005084, -0.917402, 0.397931,
		41.130470, 29.415850, 30.372316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409973, 29.772411, 30.068457>,  <41.134029, 30.058031, 30.093765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409973, 29.772411, 30.068457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599636, 29.572777, 30.358583>,  <40.713436, 29.452995, 30.532660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599636, 29.572777, 30.358583>,  <40.409973, 29.772411, 30.068457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599636, 29.572777, 30.358583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749974, 0.202586, 0.629680,
		-0.461204, -0.842538, -0.278244,
		0.474161, -0.499087, 0.725316,
		40.741886, 29.423050, 30.576178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850216, 29.450731, 30.489737>,  <40.409973, 29.772411, 30.068457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850216, 29.450731, 30.489737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172340, 29.440731, 30.726665>,  <40.365616, 29.434731, 30.868822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172340, 29.440731, 30.726665>,  <39.850216, 29.450731, 30.489737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172340, 29.440731, 30.726665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560843, 0.291712, 0.774829,
		-0.192159, -0.956179, 0.220897,
		0.805314, -0.025002, 0.592321,
		40.413933, 29.433231, 30.904362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687061, 29.082130, 31.125906>,  <39.850216, 29.450731, 30.489737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687061, 29.082130, 31.125906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003174, 29.304623, 31.228714>,  <40.192841, 29.438118, 31.290398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003174, 29.304623, 31.228714>,  <39.687061, 29.082130, 31.125906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003174, 29.304623, 31.228714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399420, 0.149552, 0.904488,
		0.464665, -0.817461, 0.340358,
		0.790285, 0.556229, 0.257018,
		40.240261, 29.471491, 31.305820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797756, 28.999533, 31.766956>,  <39.687061, 29.082130, 31.125906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797756, 28.999533, 31.766956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.999722, 29.338339, 31.700470>,  <40.120899, 29.541622, 31.660578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.999722, 29.338339, 31.700470>,  <39.797756, 28.999533, 31.766956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999722, 29.338339, 31.700470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394190, 0.397579, 0.828580,
		0.767905, -0.352840, 0.534628,
		0.504913, 0.847016, -0.166217,
		40.151196, 29.592443, 31.650604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014103, 29.124119, 32.360813>,  <39.797756, 28.999533, 31.766956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014103, 29.124119, 32.360813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065804, 29.490728, 32.209404>,  <40.096825, 29.710693, 32.118557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065804, 29.490728, 32.209404>,  <40.014103, 29.124119, 32.360813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065804, 29.490728, 32.209404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578916, 0.379663, 0.721604,
		0.805078, 0.125866, 0.579662,
		0.129251, 0.916522, -0.378524,
		40.104580, 29.765686, 32.095848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223110, 29.604931, 32.917713>,  <40.014103, 29.124119, 32.360813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223110, 29.604931, 32.917713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057034, 29.827482, 32.629810>,  <39.957386, 29.961014, 32.457069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057034, 29.827482, 32.629810>,  <40.223110, 29.604931, 32.917713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057034, 29.827482, 32.629810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541360, 0.484741, 0.686990,
		0.731125, 0.674883, 0.099941,
		-0.415193, 0.556380, -0.719761,
		39.932476, 29.994396, 32.413883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.909645, 31.252716, 29.555674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745491, 31.249741, 29.190920>,  <44.646999, 31.247955, 28.972069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745491, 31.249741, 29.190920>,  <44.909645, 31.252716, 29.555674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745491, 31.249741, 29.190920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538653, -0.808853, -0.235817,
		-0.735824, -0.587964, 0.335948,
		-0.410385, -0.007440, -0.911882,
		44.622375, 31.247509, 28.917355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899082, 30.570835, 29.405697>,  <44.909645, 31.252716, 29.555674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899082, 30.570835, 29.405697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.881649, 30.770370, 29.059458>,  <44.871189, 30.890091, 28.851713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.881649, 30.770370, 29.059458>,  <44.899082, 30.570835, 29.405697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881649, 30.770370, 29.059458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476639, -0.751077, -0.456836,
		-0.878018, -0.432488, -0.205032,
		-0.043582, 0.498837, -0.865600,
		44.868576, 30.920021, 28.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463680, 30.102705, 28.903385>,  <44.899082, 30.570835, 29.405697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463680, 30.102705, 28.903385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690903, 30.352356, 28.688807>,  <44.827236, 30.502146, 28.560061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690903, 30.352356, 28.688807>,  <44.463680, 30.102705, 28.903385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690903, 30.352356, 28.688807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361205, -0.774767, -0.518910,
		-0.739486, 0.101005, -0.665552,
		0.568060, 0.624127, -0.536445,
		44.861320, 30.539595, 28.527872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499355, 29.808933, 28.229855>,  <44.463680, 30.102705, 28.903385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499355, 29.808933, 28.229855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.803188, 30.067129, 28.261791>,  <44.985489, 30.222048, 28.280954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.803188, 30.067129, 28.261791>,  <44.499355, 29.808933, 28.229855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803188, 30.067129, 28.261791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507754, -0.511778, -0.693015,
		-0.406474, 0.566942, -0.716488,
		0.759582, 0.645492, 0.079843,
		45.031063, 30.260777, 28.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615368, 29.984764, 27.484652>,  <44.499355, 29.808933, 28.229855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615368, 29.984764, 27.484652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.947041, 30.080801, 27.686567>,  <45.146046, 30.138424, 27.807716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.947041, 30.080801, 27.686567>,  <44.615368, 29.984764, 27.484652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947041, 30.080801, 27.686567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557290, -0.425228, -0.713169,
		0.043425, 0.872661, -0.486392,
		0.829182, 0.240092, 0.504790,
		45.195797, 30.152828, 27.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957493, 30.424255, 27.013128>,  <44.615368, 29.984764, 27.484652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957493, 30.424255, 27.013128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.203857, 30.286064, 27.296337>,  <45.351677, 30.203150, 27.466263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.203857, 30.286064, 27.296337>,  <44.957493, 30.424255, 27.013128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203857, 30.286064, 27.296337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629431, -0.324678, -0.705975,
		0.473778, 0.880471, 0.017480,
		0.615915, -0.345478, 0.708021,
		45.388630, 30.182421, 27.508743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481689, 30.566187, 26.650808>,  <44.957493, 30.424255, 27.013128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481689, 30.566187, 26.650808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.602058, 30.312988, 26.936119>,  <45.674282, 30.161070, 27.107306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.602058, 30.312988, 26.936119>,  <45.481689, 30.566187, 26.650808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602058, 30.312988, 26.936119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639527, -0.420883, -0.643322,
		0.707424, 0.649750, 0.278164,
		0.300924, -0.632995, 0.713276,
		45.692337, 30.123091, 27.150103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220295, 30.665726, 26.638165>,  <45.481689, 30.566187, 26.650808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220295, 30.665726, 26.638165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.120277, 30.305828, 26.781239>,  <46.060268, 30.089890, 26.867083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.120277, 30.305828, 26.781239>,  <46.220295, 30.665726, 26.638165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120277, 30.305828, 26.781239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582971, -0.434853, -0.686329,
		0.773062, 0.036909, 0.633256,
		-0.250041, -0.899745, 0.357685,
		46.045265, 30.035904, 26.888544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839386, 30.355654, 26.793997>,  <46.220295, 30.665726, 26.638165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839386, 30.355654, 26.793997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.583565, 30.049341, 26.767029>,  <46.430073, 29.865553, 26.750847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.583565, 30.049341, 26.767029>,  <46.839386, 30.355654, 26.793997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583565, 30.049341, 26.767029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608469, -0.450664, -0.653198,
		0.469823, -0.458780, 0.754180,
		-0.639556, -0.765783, -0.067421,
		46.391697, 29.819607, 26.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279644, 29.867184, 26.821175>,  <46.839386, 30.355654, 26.793997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279644, 29.867184, 26.821175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.934250, 29.738621, 26.665691>,  <46.727013, 29.661484, 26.572401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.934250, 29.738621, 26.665691>,  <47.279644, 29.867184, 26.821175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934250, 29.738621, 26.665691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502508, -0.481920, -0.717802,
		0.043380, -0.815139, 0.577639,
		-0.863484, -0.321407, -0.388708,
		46.675205, 29.642199, 26.549080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454403, 29.177635, 26.618607>,  <47.279644, 29.867184, 26.821175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454403, 29.177635, 26.618607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.144337, 29.293804, 26.394190>,  <46.958298, 29.363506, 26.259541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.144337, 29.293804, 26.394190>,  <47.454403, 29.177635, 26.618607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144337, 29.293804, 26.394190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500986, -0.258428, -0.825971,
		-0.384870, -0.921341, 0.054826,
		-0.775170, 0.290425, -0.561040,
		46.911785, 29.380932, 26.225878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413853, 28.644651, 26.189911>,  <47.454403, 29.177635, 26.618607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413853, 28.644651, 26.189911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.228828, 28.949148, 26.008121>,  <47.117813, 29.131845, 25.899048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.228828, 28.949148, 26.008121>,  <47.413853, 28.644651, 26.189911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228828, 28.949148, 26.008121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485266, -0.211624, -0.848370,
		-0.741993, -0.612964, -0.271516,
		-0.462561, 0.761242, -0.454475,
		47.090061, 29.177521, 25.871778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995029, 28.499138, 25.554234>,  <47.413853, 28.644651, 26.189911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995029, 28.499138, 25.554234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.167614, 28.859922, 25.547255>,  <47.271164, 29.076393, 25.543068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.167614, 28.859922, 25.547255>,  <46.995029, 28.499138, 25.554234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167614, 28.859922, 25.547255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506738, -0.258311, -0.822491,
		-0.746362, 0.346034, -0.568510,
		0.431462, 0.901962, -0.017445,
		47.297054, 29.130510, 25.542021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747665, 28.691813, 24.864218>,  <46.995029, 28.499138, 25.554234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747665, 28.691813, 24.864218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.109791, 28.792747, 25.000879>,  <47.327068, 28.853308, 25.082876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.109791, 28.792747, 25.000879>,  <46.747665, 28.691813, 24.864218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109791, 28.792747, 25.000879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417651, -0.382569, -0.824141,
		-0.077256, 0.888801, -0.451735,
		0.905317, 0.252337, 0.341653,
		47.381386, 28.868448, 25.103374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776047, 27.955523, 24.901459>,  <46.747665, 28.691813, 24.864218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776047, 27.955523, 24.901459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.847374, 27.563395, 24.935335>,  <46.890171, 27.328117, 24.955662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.847374, 27.563395, 24.935335>,  <46.776047, 27.955523, 24.901459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847374, 27.563395, 24.935335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651119, -0.053025, 0.757121,
		-0.737731, -0.190152, -0.647761,
		0.178315, -0.980322, 0.084693,
		46.900867, 27.269299, 24.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.135902, 27.517410, 24.802509>,  <46.776047, 27.955523, 24.901459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.135902, 27.517410, 24.802509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.398811, 27.305096, 25.016521>,  <46.556557, 27.177708, 25.144930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.398811, 27.305096, 25.016521>,  <46.135902, 27.517410, 24.802509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398811, 27.305096, 25.016521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651115, -0.042424, 0.757792,
		-0.379527, -0.846444, -0.373486,
		0.657273, -0.530785, 0.535032,
		46.595993, 27.145861, 25.177031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669407, 27.141331, 25.105219>,  <46.135902, 27.517410, 24.802509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669407, 27.141331, 25.105219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003788, 27.079855, 25.315954>,  <46.204418, 27.042969, 25.442396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003788, 27.079855, 25.315954>,  <45.669407, 27.141331, 25.105219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003788, 27.079855, 25.315954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547909, -0.179037, 0.817155,
		-0.031263, -0.971764, -0.233874,
		0.835954, -0.153688, 0.526841,
		46.254574, 27.033749, 25.474007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571426, 26.547180, 25.418148>,  <45.669407, 27.141331, 25.105219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571426, 26.547180, 25.418148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.825100, 26.758730, 25.643751>,  <45.977303, 26.885660, 25.779114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.825100, 26.758730, 25.643751>,  <45.571426, 26.547180, 25.418148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825100, 26.758730, 25.643751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641591, -0.047114, 0.765599,
		0.431479, -0.847391, 0.309442,
		0.634182, 0.528875, 0.564007,
		46.015354, 26.917393, 25.812954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410149, 26.295902, 26.134834>,  <45.571426, 26.547180, 25.418148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410149, 26.295902, 26.134834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.624828, 26.624657, 26.211212>,  <45.753635, 26.821909, 26.257038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.624828, 26.624657, 26.211212>,  <45.410149, 26.295902, 26.134834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624828, 26.624657, 26.211212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380491, 0.033755, 0.924169,
		0.753116, -0.568650, 0.330836,
		0.536696, 0.821886, 0.190945,
		45.785839, 26.871223, 26.268496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774223, 26.138296, 26.815235>,  <45.410149, 26.295902, 26.134834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774223, 26.138296, 26.815235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.721245, 26.529482, 26.750675>,  <45.689457, 26.764193, 26.711939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.721245, 26.529482, 26.750675>,  <45.774223, 26.138296, 26.815235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721245, 26.529482, 26.750675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321707, 0.111604, 0.940239,
		0.937531, 0.176450, 0.299836,
		-0.132442, 0.977962, -0.161398,
		45.681511, 26.822870, 26.702255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975002, 26.486238, 27.503094>,  <45.774223, 26.138296, 26.815235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975002, 26.486238, 27.503094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.773853, 26.756046, 27.286892>,  <45.653164, 26.917931, 27.157171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.773853, 26.756046, 27.286892>,  <45.975002, 26.486238, 27.503094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773853, 26.756046, 27.286892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391941, 0.379398, 0.838116,
		0.770393, 0.633309, 0.073585,
		-0.502868, 0.674520, -0.540506,
		45.622993, 26.958403, 27.124741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879471, 27.020071, 27.850096>,  <45.975002, 26.486238, 27.503094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879471, 27.020071, 27.850096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.597084, 27.111197, 27.581852>,  <45.427654, 27.165871, 27.420906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.597084, 27.111197, 27.581852>,  <45.879471, 27.020071, 27.850096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597084, 27.111197, 27.581852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582467, 0.351921, 0.732724,
		0.402925, 0.907884, -0.115751,
		-0.705963, 0.227812, -0.670610,
		45.385296, 27.179541, 27.380669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529079, 27.620047, 28.072817>,  <45.879471, 27.020071, 27.850096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529079, 27.620047, 28.072817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.291534, 27.475883, 27.785084>,  <45.149010, 27.389385, 27.612444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.291534, 27.475883, 27.785084>,  <45.529079, 27.620047, 28.072817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291534, 27.475883, 27.785084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801683, 0.340706, 0.491144,
		0.068069, 0.868347, -0.491264,
		-0.593860, -0.360406, -0.719331,
		45.113377, 27.367762, 27.569284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095070, 28.208670, 27.835684>,  <45.529079, 27.620047, 28.072817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095070, 28.208670, 27.835684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.910881, 27.870575, 27.727211>,  <44.800369, 27.667719, 27.662128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.910881, 27.870575, 27.727211>,  <45.095070, 28.208670, 27.835684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910881, 27.870575, 27.727211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873740, 0.377660, 0.306517,
		-0.156665, 0.378084, -0.912419,
		-0.460473, -0.845237, -0.271180,
		44.772739, 27.617004, 27.645857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478195, 28.377409, 27.401421>,  <45.095070, 28.208670, 27.835684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478195, 28.377409, 27.401421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.416008, 28.016422, 27.562111>,  <44.378696, 27.799829, 27.658525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.416008, 28.016422, 27.562111>,  <44.478195, 28.377409, 27.401421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416008, 28.016422, 27.562111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883653, 0.308835, 0.351822,
		-0.441574, -0.300290, -0.845481,
		-0.155465, -0.902467, 0.401726,
		44.369370, 27.745682, 27.682629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715668, 28.306177, 27.269255>,  <44.478195, 28.377409, 27.401421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715668, 28.306177, 27.269255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.814949, 28.024643, 27.535490>,  <43.874516, 27.855722, 27.695232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.814949, 28.024643, 27.535490>,  <43.715668, 28.306177, 27.269255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814949, 28.024643, 27.535490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879915, 0.123560, 0.458783,
		-0.405150, -0.699532, -0.588650,
		0.248200, -0.703838, 0.665589,
		43.889408, 27.813492, 27.735167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177597, 27.957130, 27.376749>,  <43.715668, 28.306177, 27.269255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177597, 27.957130, 27.376749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375801, 27.866989, 27.712294>,  <43.494724, 27.812904, 27.913620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375801, 27.866989, 27.712294>,  <43.177597, 27.957130, 27.376749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375801, 27.866989, 27.712294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838934, 0.126088, 0.529426,
		-0.225079, -0.966083, -0.126580,
		0.495509, -0.225355, 0.838859,
		43.524452, 27.799383, 27.963951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646782, 27.605339, 27.865786>,  <43.177597, 27.957130, 27.376749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646782, 27.605339, 27.865786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938824, 27.715548, 28.115917>,  <43.114048, 27.781672, 28.265997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938824, 27.715548, 28.115917>,  <42.646782, 27.605339, 27.865786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938824, 27.715548, 28.115917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677901, 0.407231, 0.612057,
		-0.086020, -0.870777, 0.484095,
		0.730103, 0.275519, 0.625331,
		43.157856, 27.798203, 28.303516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431244, 26.822454, 27.871727>,  <42.646782, 27.605339, 27.865786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431244, 26.822454, 27.871727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181728, 26.768682, 27.563747>,  <42.032021, 26.736420, 27.378960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181728, 26.768682, 27.563747>,  <42.431244, 26.822454, 27.871727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181728, 26.768682, 27.563747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779868, -0.172523, -0.601699,
		-0.051947, -0.975789, 0.212456,
		-0.623785, -0.134431, -0.769948,
		41.994595, 26.728354, 27.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802006, 26.294262, 27.622978>,  <42.431244, 26.822454, 27.871727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802006, 26.294262, 27.622978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553509, 26.448233, 27.349955>,  <42.404411, 26.540615, 27.186140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553509, 26.448233, 27.349955>,  <42.802006, 26.294262, 27.622978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553509, 26.448233, 27.349955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686301, -0.153140, -0.711012,
		-0.378215, -0.910153, -0.169039,
		-0.621244, 0.384928, -0.682559,
		42.367134, 26.563711, 27.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738796, 25.865820, 27.018818>,  <42.802006, 26.294262, 27.622978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738796, 25.865820, 27.018818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.584129, 26.202053, 26.867075>,  <42.491329, 26.403793, 26.776030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.584129, 26.202053, 26.867075>,  <42.738796, 25.865820, 27.018818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584129, 26.202053, 26.867075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563753, -0.110099, -0.818573,
		-0.729843, -0.530379, -0.431308,
		-0.386667, 0.840581, -0.379358,
		42.468128, 26.454227, 26.753267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550480, 25.707685, 26.368008>,  <42.738796, 25.865820, 27.018818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550480, 25.707685, 26.368008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594997, 26.105127, 26.375593>,  <42.621708, 26.343594, 26.380144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594997, 26.105127, 26.375593>,  <42.550480, 25.707685, 26.368008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594997, 26.105127, 26.375593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485115, -0.037663, -0.873639,
		-0.867339, 0.106427, -0.486205,
		0.111291, 0.993607, 0.018962,
		42.628384, 26.403210, 26.381281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272064, 25.933424, 25.742842>,  <42.550480, 25.707685, 26.368008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272064, 25.933424, 25.742842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.526997, 26.212160, 25.874432>,  <42.679955, 26.379402, 25.953386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.526997, 26.212160, 25.874432>,  <42.272064, 25.933424, 25.742842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526997, 26.212160, 25.874432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457694, 0.001138, -0.889109,
		-0.619940, 0.717227, -0.318214,
		0.637331, 0.696838, 0.328976,
		42.718197, 26.421211, 25.973124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323975, 26.368803, 25.075809>,  <42.272064, 25.933424, 25.742842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323975, 26.368803, 25.075809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.613281, 26.489153, 25.324440>,  <42.786865, 26.561363, 25.473619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.613281, 26.489153, 25.324440>,  <42.323975, 26.368803, 25.075809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613281, 26.489153, 25.324440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550381, 0.292490, -0.782004,
		-0.417090, 0.907703, 0.045953,
		0.723268, 0.300874, 0.621577,
		42.830261, 26.579414, 25.510914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672539, 26.962490, 24.736458>,  <42.323975, 26.368803, 25.075809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672539, 26.962490, 24.736458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.930016, 26.797066, 24.994024>,  <43.084503, 26.697811, 25.148563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.930016, 26.797066, 24.994024>,  <42.672539, 26.962490, 24.736458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930016, 26.797066, 24.994024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725984, 0.063817, -0.684745,
		0.242091, 0.908238, 0.341316,
		0.643692, -0.413560, 0.643916,
		43.123123, 26.672998, 25.187199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713306, 27.726763, 24.867641>,  <42.672539, 26.962490, 24.736458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713306, 27.726763, 24.867641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.493340, 27.947031, 24.616451>,  <42.361359, 28.079191, 24.465736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.493340, 27.947031, 24.616451>,  <42.713306, 27.726763, 24.867641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493340, 27.947031, 24.616451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566798, 0.306194, 0.764843,
		0.613460, 0.776535, 0.143738,
		-0.549916, 0.550671, -0.627976,
		42.328365, 28.112232, 24.428059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541645, 28.406771, 25.198826>,  <42.713306, 27.726763, 24.867641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541645, 28.406771, 25.198826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.267487, 28.381220, 24.908680>,  <42.102993, 28.365889, 24.734592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.267487, 28.381220, 24.908680>,  <42.541645, 28.406771, 25.198826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267487, 28.381220, 24.908680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711644, 0.269795, 0.648671,
		0.154265, 0.960797, -0.230373,
		-0.685395, -0.063876, -0.725365,
		42.061867, 28.362057, 24.691071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183071, 28.974688, 25.288326>,  <42.541645, 28.406771, 25.198826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183071, 28.974688, 25.288326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.949665, 28.720732, 25.085770>,  <41.809624, 28.568359, 24.964235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.949665, 28.720732, 25.085770>,  <42.183071, 28.974688, 25.288326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949665, 28.720732, 25.085770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737097, 0.152308, 0.658401,
		-0.340883, 0.757443, -0.556847,
		-0.583513, -0.634888, -0.506390,
		41.774612, 28.530266, 24.933853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558235, 29.291590, 25.331266>,  <42.183071, 28.974688, 25.288326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558235, 29.291590, 25.331266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450638, 28.921541, 25.224087>,  <41.386078, 28.699512, 25.159779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450638, 28.921541, 25.224087>,  <41.558235, 29.291590, 25.331266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450638, 28.921541, 25.224087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811691, 0.067993, 0.580116,
		-0.518458, 0.373540, -0.769200,
		-0.268996, -0.925119, -0.267947,
		41.369938, 28.644005, 25.143703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840244, 29.347311, 25.164452>,  <41.558235, 29.291590, 25.331266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840244, 29.347311, 25.164452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914970, 28.962408, 25.243607>,  <40.959808, 28.731466, 25.291100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914970, 28.962408, 25.243607>,  <40.840244, 29.347311, 25.164452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914970, 28.962408, 25.243607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816058, -0.039859, 0.576594,
		-0.546944, -0.269206, -0.792705,
		0.186818, -0.962258, 0.197887,
		40.971016, 28.673731, 25.302973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256031, 29.172663, 25.090635>,  <40.840244, 29.347311, 25.164452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256031, 29.172663, 25.090635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418720, 28.891891, 25.324516>,  <40.516335, 28.723429, 25.464846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418720, 28.891891, 25.324516>,  <40.256031, 29.172663, 25.090635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418720, 28.891891, 25.324516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822665, -0.003108, 0.568518,
		-0.397241, -0.712242, -0.578715,
		0.406721, -0.701927, 0.584702,
		40.540737, 28.681314, 25.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707146, 28.839956, 25.228416>,  <40.256031, 29.172663, 25.090635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707146, 28.839956, 25.228416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955723, 28.719101, 25.517557>,  <40.104870, 28.646587, 25.691042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955723, 28.719101, 25.517557>,  <39.707146, 28.839956, 25.228416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955723, 28.719101, 25.517557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767201, -0.047709, 0.639630,
		-0.158772, -0.952069, -0.261452,
		0.621445, -0.302141, 0.722853,
		40.142155, 28.628460, 25.734413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.435814, 30.537807, 23.875624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.661919, 30.469463, 24.198433>,  <45.797581, 30.428457, 24.392118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.661919, 30.469463, 24.198433>,  <45.435814, 30.537807, 23.875624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661919, 30.469463, 24.198433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815696, 0.030058, 0.577700,
		-0.122963, -0.984837, -0.122379,
		0.565262, -0.170859, 0.807023,
		45.831497, 30.418205, 24.440540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042725, 30.161306, 24.238668>,  <45.435814, 30.537807, 23.875624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042725, 30.161306, 24.238668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.295944, 30.331776, 24.497166>,  <45.447876, 30.434057, 24.652264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.295944, 30.331776, 24.497166>,  <45.042725, 30.161306, 24.238668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295944, 30.331776, 24.497166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769825, 0.258821, 0.583422,
		0.081376, -0.866828, 0.491923,
		0.633047, 0.426171, 0.646243,
		45.485859, 30.459627, 24.691038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904602, 29.940159, 24.999386>,  <45.042725, 30.161306, 24.238668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904602, 29.940159, 24.999386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.101898, 30.287619, 25.017973>,  <45.220276, 30.496096, 25.029125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.101898, 30.287619, 25.017973>,  <44.904602, 29.940159, 24.999386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101898, 30.287619, 25.017973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745152, 0.394346, 0.537810,
		0.448846, -0.299894, 0.841785,
		0.493240, 0.868651, 0.046466,
		45.249870, 30.548214, 25.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798904, 30.220509, 25.703379>,  <44.904602, 29.940159, 24.999386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798904, 30.220509, 25.703379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.888187, 30.540632, 25.480780>,  <44.941757, 30.732706, 25.347221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.888187, 30.540632, 25.480780>,  <44.798904, 30.220509, 25.703379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888187, 30.540632, 25.480780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667190, 0.541647, 0.511347,
		0.710660, 0.257154, 0.654855,
		0.223205, 0.800306, -0.556497,
		44.955151, 30.780724, 25.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882236, 30.870626, 26.202509>,  <44.798904, 30.220509, 25.703379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882236, 30.870626, 26.202509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.870979, 31.025019, 25.833677>,  <44.864227, 31.117653, 25.612379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.870979, 31.025019, 25.833677>,  <44.882236, 30.870626, 26.202509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870979, 31.025019, 25.833677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755518, 0.595788, 0.272450,
		0.654524, 0.704313, 0.274849,
		-0.028139, 0.385978, -0.922079,
		44.862537, 31.140812, 25.557055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685017, 31.602793, 26.425673>,  <44.882236, 30.870626, 26.202509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685017, 31.602793, 26.425673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.616161, 31.576662, 26.032511>,  <44.574848, 31.560984, 25.796614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.616161, 31.576662, 26.032511>,  <44.685017, 31.602793, 26.425673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616161, 31.576662, 26.032511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817058, 0.566836, 0.105421,
		0.550258, 0.821237, -0.150953,
		-0.172141, -0.065328, -0.982904,
		44.564518, 31.557064, 25.737640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644161, 32.215755, 26.228109>,  <44.685017, 31.602793, 26.425673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644161, 32.215755, 26.228109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.425659, 32.004929, 25.967705>,  <44.294559, 31.878433, 25.811462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.425659, 32.004929, 25.967705>,  <44.644161, 32.215755, 26.228109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425659, 32.004929, 25.967705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790764, 0.580802, 0.193292,
		0.276230, 0.620381, -0.734047,
		-0.546250, -0.527065, -0.651010,
		44.261784, 31.846809, 25.772402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263760, 32.712502, 25.769810>,  <44.644161, 32.215755, 26.228109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263760, 32.712502, 25.769810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.067795, 32.364227, 25.752399>,  <43.950218, 32.155262, 25.741953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.067795, 32.364227, 25.752399>,  <44.263760, 32.712502, 25.769810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067795, 32.364227, 25.752399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871772, 0.489384, 0.022722,
		0.001518, 0.049077, -0.998794,
		-0.489909, -0.870687, -0.043527,
		43.920822, 32.103020, 25.739342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745956, 32.908184, 25.317154>,  <44.263760, 32.712502, 25.769810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745956, 32.908184, 25.317154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577850, 32.571747, 25.453352>,  <43.476986, 32.369884, 25.535070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577850, 32.571747, 25.453352>,  <43.745956, 32.908184, 25.317154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577850, 32.571747, 25.453352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902700, 0.425681, -0.062674,
		-0.092229, -0.333706, -0.938155,
		-0.420270, -0.841092, 0.340496,
		43.451771, 32.319420, 25.555500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153244, 32.738598, 24.903286>,  <43.745956, 32.908184, 25.317154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153244, 32.738598, 24.903286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.125118, 32.570232, 25.265034>,  <43.108242, 32.469212, 25.482082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.125118, 32.570232, 25.265034>,  <43.153244, 32.738598, 24.903286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125118, 32.570232, 25.265034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924699, 0.367554, 0.099175,
		-0.374149, -0.829296, -0.415066,
		-0.070314, -0.420917, 0.904370,
		43.104023, 32.443958, 25.536345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339481, 32.625717, 25.033569>,  <43.153244, 32.738598, 24.903286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339481, 32.625717, 25.033569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511044, 32.594639, 25.393570>,  <42.613979, 32.575993, 25.609570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511044, 32.594639, 25.393570>,  <42.339481, 32.625717, 25.033569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511044, 32.594639, 25.393570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837625, 0.338865, 0.428432,
		-0.338266, -0.937622, 0.080262,
		0.428906, -0.077695, 0.900002,
		42.639717, 32.571331, 25.663570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897846, 32.263821, 25.370329>,  <42.339481, 32.625717, 25.033569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897846, 32.263821, 25.370329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126755, 32.457485, 25.635086>,  <42.264099, 32.573685, 25.793940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126755, 32.457485, 25.635086>,  <41.897846, 32.263821, 25.370329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126755, 32.457485, 25.635086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819959, 0.324706, 0.471416,
		0.013320, -0.812500, 0.582809,
		0.572267, 0.484159, 0.661892,
		42.298435, 32.602734, 25.833652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366486, 31.729334, 25.608747>,  <41.897846, 32.263821, 25.370329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366486, 31.729334, 25.608747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152222, 31.757536, 25.272154>,  <41.023663, 31.774458, 25.070198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152222, 31.757536, 25.272154>,  <41.366486, 31.729334, 25.608747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152222, 31.757536, 25.272154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655637, -0.593285, -0.467069,
		-0.532168, -0.801899, 0.271577,
		-0.535665, 0.070503, -0.841482,
		40.991524, 31.778687, 25.019709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385487, 30.994715, 25.257645>,  <41.366486, 31.729334, 25.608747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385487, 30.994715, 25.257645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282410, 31.268347, 24.984695>,  <41.220562, 31.432526, 24.820927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282410, 31.268347, 24.984695>,  <41.385487, 30.994715, 25.257645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282410, 31.268347, 24.984695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564249, -0.466751, -0.681005,
		-0.784358, -0.560518, -0.265713,
		-0.257693, 0.684079, -0.682371,
		41.205101, 31.473570, 24.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393967, 30.567867, 24.656832>,  <41.385487, 30.994715, 25.257645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393967, 30.567867, 24.656832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388935, 30.943548, 24.519579>,  <41.385918, 31.168957, 24.437227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388935, 30.943548, 24.519579>,  <41.393967, 30.567867, 24.656832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388935, 30.943548, 24.519579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552504, -0.279487, -0.785255,
		-0.833415, -0.199458, -0.515399,
		-0.012578, 0.939204, -0.343130,
		41.385162, 31.225309, 24.416639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478630, 30.421186, 23.943645>,  <41.393967, 30.567867, 24.656832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478630, 30.421186, 23.943645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587002, 30.803308, 23.990952>,  <41.652023, 31.032581, 24.019335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587002, 30.803308, 23.990952>,  <41.478630, 30.421186, 23.943645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587002, 30.803308, 23.990952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699780, -0.111099, -0.705666,
		-0.660989, 0.273943, -0.698605,
		0.270927, 0.955307, 0.118264,
		41.668282, 31.089901, 24.026430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612858, 30.710434, 23.231762>,  <41.478630, 30.421186, 23.943645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612858, 30.710434, 23.231762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821823, 30.939936, 23.484076>,  <41.947205, 31.077637, 23.635464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821823, 30.939936, 23.484076>,  <41.612858, 30.710434, 23.231762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821823, 30.939936, 23.484076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781256, -0.025675, -0.623682,
		-0.341644, 0.818625, -0.461662,
		0.522415, 0.573754, 0.630784,
		41.978546, 31.112062, 23.673311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999676, 31.112814, 22.790611>,  <41.612858, 30.710434, 23.231762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999676, 31.112814, 22.790611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180363, 31.180058, 23.141083>,  <42.288773, 31.220404, 23.351366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180363, 31.180058, 23.141083>,  <41.999676, 31.112814, 22.790611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180363, 31.180058, 23.141083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884679, 0.042537, -0.464257,
		-0.115316, 0.984850, -0.129509,
		0.451714, 0.168110, 0.876181,
		42.315876, 31.230490, 23.403936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424290, 31.730890, 22.782579>,  <41.999676, 31.112814, 22.790611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424290, 31.730890, 22.782579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.585217, 31.504162, 23.070148>,  <42.681774, 31.368124, 23.242691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.585217, 31.504162, 23.070148>,  <42.424290, 31.730890, 22.782579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585217, 31.504162, 23.070148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836565, -0.091372, -0.540194,
		0.371883, 0.818758, 0.437422,
		0.402320, -0.566821, 0.718924,
		42.705914, 31.334116, 23.285826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062660, 32.012295, 22.815964>,  <42.424290, 31.730890, 22.782579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062660, 32.012295, 22.815964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.106041, 31.668886, 23.016434>,  <43.132069, 31.462841, 23.136715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.106041, 31.668886, 23.016434>,  <43.062660, 32.012295, 22.815964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106041, 31.668886, 23.016434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903341, -0.125349, -0.410198,
		0.414987, 0.497215, 0.761947,
		0.108448, -0.858525, 0.501173,
		43.138577, 31.411329, 23.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738361, 31.948095, 23.107851>,  <43.062660, 32.012295, 22.815964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738361, 31.948095, 23.107851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623299, 31.565067, 23.100737>,  <43.554260, 31.335251, 23.096468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623299, 31.565067, 23.100737>,  <43.738361, 31.948095, 23.107851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623299, 31.565067, 23.100737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892392, -0.261244, -0.367950,
		0.347690, -0.121718, 0.929675,
		-0.287658, -0.957568, -0.017788,
		43.537003, 31.277798, 23.095400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285831, 31.532780, 23.402210>,  <43.738361, 31.948095, 23.107851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285831, 31.532780, 23.402210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.060017, 31.295553, 23.172575>,  <43.924530, 31.153217, 23.034794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.060017, 31.295553, 23.172575>,  <44.285831, 31.532780, 23.402210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060017, 31.295553, 23.172575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815834, -0.295277, -0.497219,
		0.125370, -0.749055, 0.650537,
		-0.564533, -0.593066, -0.574086,
		43.890656, 31.117634, 23.000349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676033, 30.940592, 23.361170>,  <44.285831, 31.532780, 23.402210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676033, 30.940592, 23.361170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.429951, 30.879890, 23.051720>,  <44.282303, 30.843470, 22.866051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.429951, 30.879890, 23.051720>,  <44.676033, 30.940592, 23.361170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429951, 30.879890, 23.051720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760264, -0.373871, -0.531243,
		-0.208617, -0.914982, 0.345380,
		-0.615205, -0.151754, -0.773624,
		44.245388, 30.834364, 22.819633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683956, 30.255066, 23.146049>,  <44.676033, 30.940592, 23.361170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683956, 30.255066, 23.146049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.552868, 30.447390, 22.820738>,  <44.474213, 30.562784, 22.625551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.552868, 30.447390, 22.820738>,  <44.683956, 30.255066, 23.146049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552868, 30.447390, 22.820738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829184, -0.266208, -0.491516,
		-0.452825, -0.835439, -0.311435,
		-0.327725, 0.480807, -0.813278,
		44.454552, 30.591631, 22.576754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755119, 29.753542, 22.676680>,  <44.683956, 30.255066, 23.146049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755119, 29.753542, 22.676680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.720161, 30.094244, 22.470039>,  <44.699184, 30.298666, 22.346056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.720161, 30.094244, 22.470039>,  <44.755119, 29.753542, 22.676680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720161, 30.094244, 22.470039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577854, -0.379072, -0.722765,
		-0.811447, -0.361688, -0.459060,
		-0.087399, 0.851755, -0.516599,
		44.693943, 30.349770, 22.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744377, 29.264450, 22.184595>,  <44.755119, 29.753542, 22.676680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744377, 29.264450, 22.184595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631493, 28.927120, 22.001657>,  <44.563763, 28.724722, 21.891895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631493, 28.927120, 22.001657>,  <44.744377, 29.264450, 22.184595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631493, 28.927120, 22.001657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716131, -0.132037, 0.685363,
		-0.638369, 0.520935, -0.566668,
		-0.282208, -0.843323, -0.457346,
		44.546829, 28.674124, 21.864454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082218, 29.408073, 22.073977>,  <44.744377, 29.264450, 22.184595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082218, 29.408073, 22.073977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.135956, 29.012276, 22.052603>,  <44.168198, 28.774797, 22.039778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.135956, 29.012276, 22.052603>,  <44.082218, 29.408073, 22.073977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135956, 29.012276, 22.052603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718377, -0.134391, 0.682549,
		-0.682559, -0.053309, -0.728884,
		0.134341, -0.989493, -0.053434,
		44.176258, 28.715427, 22.036573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366547, 29.224176, 22.047956>,  <44.082218, 29.408073, 22.073977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366547, 29.224176, 22.047956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.564960, 28.890509, 22.144381>,  <43.684010, 28.690308, 22.202234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.564960, 28.890509, 22.144381>,  <43.366547, 29.224176, 22.047956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564960, 28.890509, 22.144381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749156, -0.270787, 0.604515,
		-0.438994, -0.480450, -0.759244,
		0.496033, -0.834171, 0.241059,
		43.713772, 28.640257, 22.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892193, 28.659479, 22.022717>,  <43.366547, 29.224176, 22.047956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892193, 28.659479, 22.022717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.183731, 28.553114, 22.275089>,  <43.358654, 28.489296, 22.426514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.183731, 28.553114, 22.275089>,  <42.892193, 28.659479, 22.022717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183731, 28.553114, 22.275089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674852, -0.123431, 0.727557,
		-0.115531, -0.956084, -0.269363,
		0.728853, -0.265836, 0.630955,
		43.402386, 28.473341, 22.464369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690304, 28.032990, 22.266254>,  <42.892193, 28.659479, 22.022717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690304, 28.032990, 22.266254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968842, 28.098146, 22.545845>,  <43.135963, 28.137239, 22.713600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968842, 28.098146, 22.545845>,  <42.690304, 28.032990, 22.266254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968842, 28.098146, 22.545845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511703, -0.570216, 0.642661,
		0.503251, -0.805183, -0.313717,
		0.696346, 0.162890, 0.698977,
		43.177746, 28.147013, 22.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655899, 27.390619, 22.711090>,  <42.690304, 28.032990, 22.266254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655899, 27.390619, 22.711090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.807560, 27.690868, 22.927538>,  <42.898556, 27.871017, 23.057405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.807560, 27.690868, 22.927538>,  <42.655899, 27.390619, 22.711090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807560, 27.690868, 22.927538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518119, -0.312302, 0.796254,
		0.766678, -0.582266, 0.270501,
		0.379154, 0.750622, 0.541119,
		42.921307, 27.916056, 23.089874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833542, 27.159731, 23.280817>,  <42.655899, 27.390619, 22.711090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833542, 27.159731, 23.280817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.784660, 27.547144, 23.367540>,  <42.755329, 27.779593, 23.419575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.784660, 27.547144, 23.367540>,  <42.833542, 27.159731, 23.280817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784660, 27.547144, 23.367540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590730, -0.246521, 0.768287,
		0.797561, -0.034185, 0.602269,
		-0.122208, 0.968534, 0.216810,
		42.747997, 27.837704, 23.432583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657372, 27.093077, 23.983143>,  <42.833542, 27.159731, 23.280817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657372, 27.093077, 23.983143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541603, 27.463667, 23.886909>,  <42.472141, 27.686020, 23.829170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541603, 27.463667, 23.886909>,  <42.657372, 27.093077, 23.983143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541603, 27.463667, 23.886909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837455, -0.123362, 0.532401,
		0.463577, 0.355567, 0.811584,
		-0.289423, 0.926474, -0.240584,
		42.454777, 27.741610, 23.814734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279503, 27.251154, 24.492727>,  <42.657372, 27.093077, 23.983143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279503, 27.251154, 24.492727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.379360, 26.942612, 24.726885>,  <43.439274, 26.757486, 24.867378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.379360, 26.942612, 24.726885>,  <43.279503, 27.251154, 24.492727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379360, 26.942612, 24.726885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816400, -0.157435, -0.555613,
		0.520737, 0.616621, 0.590433,
		0.249648, -0.771358, 0.585392,
		43.454254, 26.711205, 24.902502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063187, 27.417206, 24.614864>,  <43.279503, 27.251154, 24.492727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063187, 27.417206, 24.614864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973949, 27.037230, 24.702356>,  <43.920406, 26.809244, 24.754852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973949, 27.037230, 24.702356>,  <44.063187, 27.417206, 24.614864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973949, 27.037230, 24.702356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759248, -0.310058, -0.572194,
		0.611369, 0.038419, 0.790412,
		-0.223091, -0.949941, 0.218730,
		43.907021, 26.752247, 24.767975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736118, 27.154200, 24.609304>,  <44.063187, 27.417206, 24.614864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736118, 27.154200, 24.609304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486229, 26.844360, 24.569876>,  <44.336296, 26.658457, 24.546219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486229, 26.844360, 24.569876>,  <44.736118, 27.154200, 24.609304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486229, 26.844360, 24.569876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698479, -0.497920, -0.514006,
		0.349067, -0.389964, 0.852104,
		-0.624724, -0.774599, -0.098574,
		44.298813, 26.611980, 24.540304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228260, 26.634592, 24.772671>,  <44.736118, 27.154200, 24.609304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228260, 26.634592, 24.772671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.925682, 26.469454, 24.569754>,  <44.744133, 26.370371, 24.448004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.925682, 26.469454, 24.569754>,  <45.228260, 26.634592, 24.772671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925682, 26.469454, 24.569754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648962, -0.570361, -0.503523,
		-0.081462, -0.710102, 0.699370,
		-0.756447, -0.412847, -0.507292,
		44.698750, 26.345600, 24.417566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293697, 25.983318, 24.873217>,  <45.228260, 26.634592, 24.772671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293697, 25.983318, 24.873217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.061829, 25.988836, 24.547323>,  <44.922707, 25.992147, 24.351788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.061829, 25.988836, 24.547323>,  <45.293697, 25.983318, 24.873217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061829, 25.988836, 24.547323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745802, -0.393813, -0.537300,
		-0.328264, -0.919087, 0.217995,
		-0.579675, 0.013795, -0.814731,
		44.887928, 25.992975, 24.302904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425220, 25.337326, 24.508516>,  <45.293697, 25.983318, 24.873217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425220, 25.337326, 24.508516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.296909, 25.608028, 24.243458>,  <45.219921, 25.770449, 24.084423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.296909, 25.608028, 24.243458>,  <45.425220, 25.337326, 24.508516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296909, 25.608028, 24.243458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671944, -0.330467, -0.662784,
		-0.667526, -0.657871, -0.348734,
		-0.320781, 0.676755, -0.662648,
		45.200676, 25.811054, 24.044662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335926, 24.984407, 23.872990>,  <45.425220, 25.337326, 24.508516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335926, 24.984407, 23.872990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.387493, 25.370378, 23.781517>,  <45.418434, 25.601961, 23.726633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.387493, 25.370378, 23.781517>,  <45.335926, 24.984407, 23.872990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387493, 25.370378, 23.781517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640779, -0.257055, -0.723412,
		-0.756824, -0.053276, -0.651443,
		0.128916, 0.964927, -0.228684,
		45.426167, 25.659857, 23.712912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148952, 25.052235, 23.093643>,  <45.335926, 24.984407, 23.872990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148952, 25.052235, 23.093643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372547, 25.360670, 23.215599>,  <45.506702, 25.545732, 23.288773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372547, 25.360670, 23.215599>,  <45.148952, 25.052235, 23.093643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372547, 25.360670, 23.215599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689603, -0.228146, -0.687312,
		-0.460420, 0.594449, -0.659275,
		0.558983, 0.771090, 0.304890,
		45.540241, 25.591997, 23.307066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262524, 25.457008, 22.379255>,  <45.148952, 25.052235, 23.093643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262524, 25.457008, 22.379255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.544022, 25.522003, 22.655903>,  <45.712921, 25.561001, 22.821892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.544022, 25.522003, 22.655903>,  <45.262524, 25.457008, 22.379255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544022, 25.522003, 22.655903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696065, -0.352607, -0.625430,
		0.142245, 0.921556, -0.361248,
		0.703747, 0.162488, 0.691619,
		45.755146, 25.570749, 22.863388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.352592, 29.604763, 33.430534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629910, 29.832645, 33.607071>,  <34.796299, 29.969376, 33.712994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629910, 29.832645, 33.607071>,  <34.352592, 29.604763, 33.430534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629910, 29.832645, 33.607071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693724, -0.361724, -0.622818,
		-0.195178, 0.737964, -0.645999,
		0.693291, 0.569706, 0.441343,
		34.837898, 30.003557, 33.739475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726364, 29.967010, 32.872959>,  <34.352592, 29.604763, 33.430534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726364, 29.967010, 32.872959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957966, 29.955992, 33.198902>,  <35.096928, 29.949381, 33.394466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957966, 29.955992, 33.198902>,  <34.726364, 29.967010, 32.872959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957966, 29.955992, 33.198902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762642, -0.335126, -0.553233,
		0.288320, 0.941771, -0.173030,
		0.579006, -0.027548, 0.814858,
		35.131668, 29.947727, 33.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379204, 30.319292, 32.739479>,  <34.726364, 29.967010, 32.872959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379204, 30.319292, 32.739479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463760, 30.092464, 33.057911>,  <35.514496, 29.956367, 33.248970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463760, 30.092464, 33.057911>,  <35.379204, 30.319292, 32.739479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463760, 30.092464, 33.057911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824559, -0.333860, -0.456772,
		0.524801, 0.752975, 0.397005,
		0.211393, -0.567068, 0.796082,
		35.527180, 29.922344, 33.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989239, 30.475941, 32.914295>,  <35.379204, 30.319292, 32.739479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989239, 30.475941, 32.914295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942059, 30.119617, 33.089817>,  <35.913750, 29.905823, 33.195129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942059, 30.119617, 33.089817>,  <35.989239, 30.475941, 32.914295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942059, 30.119617, 33.089817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833756, -0.328866, -0.443506,
		0.539386, 0.313541, 0.781508,
		-0.117954, -0.890808, 0.438803,
		35.906673, 29.852375, 33.221458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627407, 30.238867, 33.173141>,  <35.989239, 30.475941, 32.914295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627407, 30.238867, 33.173141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422569, 29.895889, 33.152958>,  <36.299667, 29.690104, 33.140846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422569, 29.895889, 33.152958>,  <36.627407, 30.238867, 33.173141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422569, 29.895889, 33.152958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839576, -0.487295, -0.240115,
		0.181297, -0.165326, 0.969432,
		-0.512097, -0.857444, -0.050459,
		36.268940, 29.638657, 33.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110157, 29.788389, 33.311249>,  <36.627407, 30.238867, 33.173141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110157, 29.788389, 33.311249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810925, 29.565508, 33.167080>,  <36.631386, 29.431778, 33.080578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810925, 29.565508, 33.167080>,  <37.110157, 29.788389, 33.311249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810925, 29.565508, 33.167080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649194, -0.501894, -0.571533,
		0.137569, -0.661533, 0.737190,
		-0.748078, -0.557205, -0.360418,
		36.586502, 29.398346, 33.058956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277569, 29.047670, 33.354950>,  <37.110157, 29.788389, 33.311249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277569, 29.047670, 33.354950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002975, 29.030022, 33.064629>,  <36.838219, 29.019432, 32.890434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002975, 29.030022, 33.064629>,  <37.277569, 29.047670, 33.354950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002975, 29.030022, 33.064629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544945, -0.692082, -0.473347,
		-0.481433, -0.720470, 0.499145,
		-0.686481, -0.044122, -0.725807,
		36.797031, 29.016785, 32.846886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336941, 28.372919, 33.093994>,  <37.277569, 29.047670, 33.354950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336941, 28.372919, 33.093994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117550, 28.570309, 32.823986>,  <36.985916, 28.688742, 32.661980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117550, 28.570309, 32.823986>,  <37.336941, 28.372919, 33.093994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117550, 28.570309, 32.823986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380436, -0.571614, -0.726998,
		-0.744605, -0.655546, 0.125784,
		-0.548481, 0.493474, -0.675020,
		36.953007, 28.718351, 32.621479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787582, 27.911867, 32.733910>,  <37.336941, 28.372919, 33.093994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787582, 27.911867, 32.733910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830437, 28.213369, 32.474564>,  <36.856148, 28.394270, 32.318958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830437, 28.213369, 32.474564>,  <36.787582, 27.911867, 32.733910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830437, 28.213369, 32.474564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014064, -0.653200, -0.757055,
		-0.994145, 0.071990, -0.080582,
		0.107137, 0.753755, -0.648363,
		36.862579, 28.439495, 32.280056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487606, 27.728546, 32.114086>,  <36.787582, 27.911867, 32.733910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487606, 27.728546, 32.114086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727859, 28.029297, 32.005337>,  <36.872013, 28.209747, 31.940088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727859, 28.029297, 32.005337>,  <36.487606, 27.728546, 32.114086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727859, 28.029297, 32.005337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308856, -0.531845, -0.788510,
		-0.737458, 0.389639, -0.551668,
		0.600636, 0.751879, -0.271871,
		36.908051, 28.254860, 31.923775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390446, 27.832542, 31.297216>,  <36.487606, 27.728546, 32.114086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390446, 27.832542, 31.297216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737419, 28.007887, 31.391367>,  <36.945602, 28.113094, 31.447857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737419, 28.007887, 31.391367>,  <36.390446, 27.832542, 31.297216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737419, 28.007887, 31.391367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398463, -0.328720, -0.856254,
		-0.297977, 0.836529, -0.459813,
		0.867431, 0.438362, 0.235375,
		36.997650, 28.139395, 31.461979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694126, 27.927734, 30.690157>,  <36.390446, 27.832542, 31.297216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694126, 27.927734, 30.690157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993618, 27.977938, 30.950512>,  <37.173313, 28.008060, 31.106724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993618, 27.977938, 30.950512>,  <36.694126, 27.927734, 30.690157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993618, 27.977938, 30.950512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649055, -0.338271, -0.681395,
		0.134654, 0.932641, -0.334737,
		0.748729, 0.125510, 0.650885,
		37.218235, 28.015591, 31.145777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584198, 28.720634, 30.635004>,  <36.694126, 27.927734, 30.690157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584198, 28.720634, 30.635004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426147, 29.006397, 30.404005>,  <36.331318, 29.177855, 30.265406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426147, 29.006397, 30.404005>,  <36.584198, 28.720634, 30.635004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426147, 29.006397, 30.404005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685451, 0.189244, 0.703095,
		0.611584, 0.673654, 0.414916,
		-0.395122, 0.714407, -0.577496,
		36.307610, 29.220718, 30.230757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471859, 29.244040, 31.070278>,  <36.584198, 28.720634, 30.635004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471859, 29.244040, 31.070278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229805, 29.309696, 30.758671>,  <36.084572, 29.349091, 30.571707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229805, 29.309696, 30.758671>,  <36.471859, 29.244040, 31.070278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229805, 29.309696, 30.758671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700901, 0.354212, 0.619089,
		0.377556, 0.920647, -0.099300,
		-0.605136, 0.164141, -0.779017,
		36.048264, 29.358938, 30.524965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258911, 29.923473, 31.124414>,  <36.471859, 29.244040, 31.070278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258911, 29.923473, 31.124414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994453, 29.765560, 30.869217>,  <35.835781, 29.670813, 30.716099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994453, 29.765560, 30.869217>,  <36.258911, 29.923473, 31.124414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994453, 29.765560, 30.869217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661647, 0.707709, 0.247731,
		0.353714, 0.585912, -0.729105,
		-0.661142, -0.394784, -0.637994,
		35.796112, 29.647125, 30.677818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909901, 30.499365, 30.816345>,  <36.258911, 29.923473, 31.124414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909901, 30.499365, 30.816345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678452, 30.192854, 30.704622>,  <35.539581, 30.008947, 30.637589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678452, 30.192854, 30.704622>,  <35.909901, 30.499365, 30.816345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678452, 30.192854, 30.704622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813200, 0.568261, 0.125640,
		0.062444, 0.299830, -0.951947,
		-0.578625, -0.766278, -0.279307,
		35.504864, 29.962971, 30.620831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362206, 30.695902, 30.259869>,  <35.909901, 30.499365, 30.816345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362206, 30.695902, 30.259869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247044, 30.393703, 30.495272>,  <35.177948, 30.212385, 30.636513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247044, 30.393703, 30.495272>,  <35.362206, 30.695902, 30.259869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247044, 30.393703, 30.495272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819794, 0.512083, 0.256337,
		-0.495026, -0.408656, -0.766779,
		-0.287901, -0.755494, 0.588508,
		35.160675, 30.167055, 30.671824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736958, 30.590948, 30.152578>,  <35.362206, 30.695902, 30.259869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736958, 30.590948, 30.152578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770000, 30.406925, 30.506193>,  <34.789825, 30.296513, 30.718363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770000, 30.406925, 30.506193>,  <34.736958, 30.590948, 30.152578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770000, 30.406925, 30.506193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815898, 0.478160, 0.325075,
		-0.572265, -0.748139, -0.335859,
		0.082607, -0.460055, 0.884039,
		34.794781, 30.268909, 30.771404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091450, 30.408363, 30.324842>,  <34.736958, 30.590948, 30.152578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091450, 30.408363, 30.324842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265118, 30.380320, 30.684082>,  <34.369320, 30.363493, 30.899626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265118, 30.380320, 30.684082>,  <34.091450, 30.408363, 30.324842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265118, 30.380320, 30.684082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779363, 0.470743, 0.413515,
		-0.451765, -0.879480, 0.149742,
		0.434168, -0.070108, 0.898099,
		34.395367, 30.359287, 30.953512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576187, 30.192972, 30.882555>,  <34.091450, 30.408363, 30.324842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576187, 30.192972, 30.882555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864117, 30.389217, 31.078981>,  <34.036877, 30.506964, 31.196838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864117, 30.389217, 31.078981>,  <33.576187, 30.192972, 30.882555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864117, 30.389217, 31.078981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692783, 0.463341, 0.552600,
		0.043579, -0.737981, 0.673413,
		0.719828, 0.490611, 0.491069,
		34.080067, 30.536400, 31.226301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335468, 30.102859, 31.505917>,  <33.576187, 30.192972, 30.882555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335468, 30.102859, 31.505917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594082, 30.397758, 31.584354>,  <33.749252, 30.574699, 31.631416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594082, 30.397758, 31.584354>,  <33.335468, 30.102859, 31.505917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594082, 30.397758, 31.584354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716002, 0.497701, 0.489525,
		0.263306, -0.456900, 0.849654,
		0.646538, 0.737249, 0.196094,
		33.788044, 30.618933, 31.643183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052372, 30.416790, 32.116627>,  <33.335468, 30.102859, 31.505917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052372, 30.416790, 32.116627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304745, 30.677570, 31.948397>,  <33.456169, 30.834038, 31.847458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304745, 30.677570, 31.948397>,  <33.052372, 30.416790, 32.116627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304745, 30.677570, 31.948397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657533, 0.737067, 0.156148,
		0.411795, 0.178026, 0.893718,
		0.630932, 0.651950, -0.420578,
		33.494026, 30.873156, 31.822224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235336, 30.871958, 32.619854>,  <33.052372, 30.416790, 32.116627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235336, 30.871958, 32.619854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284103, 31.076385, 32.279514>,  <33.313362, 31.199043, 32.075310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284103, 31.076385, 32.279514>,  <33.235336, 30.871958, 32.619854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284103, 31.076385, 32.279514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602113, 0.719572, 0.345943,
		0.789048, 0.470130, 0.395450,
		0.121916, 0.511072, -0.850848,
		33.320679, 31.229708, 32.024261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319389, 31.612396, 32.792038>,  <33.235336, 30.871958, 32.619854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319389, 31.612396, 32.792038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219761, 31.598158, 32.404903>,  <33.159985, 31.589615, 32.172623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219761, 31.598158, 32.404903>,  <33.319389, 31.612396, 32.792038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219761, 31.598158, 32.404903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530584, 0.841027, 0.105612,
		0.810214, 0.539820, -0.228358,
		-0.249067, -0.035595, -0.967832,
		33.145042, 31.587479, 32.114555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335899, 32.313240, 32.637432>,  <33.319389, 31.612396, 32.792038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335899, 32.313240, 32.637432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113914, 32.136189, 32.355698>,  <32.980724, 32.029957, 32.186657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113914, 32.136189, 32.355698>,  <33.335899, 32.313240, 32.637432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113914, 32.136189, 32.355698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603958, 0.796632, -0.024759,
		0.572056, 0.411649, -0.709434,
		-0.554966, -0.442631, -0.704337,
		32.947426, 32.003399, 32.144398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149223, 32.909550, 32.195282>,  <33.335899, 32.313240, 32.637432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149223, 32.909550, 32.195282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879601, 32.632637, 32.092224>,  <32.717827, 32.466488, 32.030388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879601, 32.632637, 32.092224>,  <33.149223, 32.909550, 32.195282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879601, 32.632637, 32.092224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731992, 0.672828, 0.107192,
		0.099143, 0.260849, -0.960275,
		-0.674062, -0.692286, -0.257645,
		32.677383, 32.424950, 32.014931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657818, 33.482128, 32.312065>,  <33.149223, 32.909550, 32.195282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657818, 33.482128, 32.312065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722641, 33.873669, 32.262127>,  <32.761536, 34.108593, 32.232162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722641, 33.873669, 32.262127>,  <32.657818, 33.482128, 32.312065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722641, 33.873669, 32.262127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653321, -0.201253, -0.729842,
		-0.739533, 0.036714, -0.672119,
		0.162061, 0.978851, -0.124847,
		32.771259, 34.167324, 32.224674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679935, 33.679489, 31.661776>,  <32.657818, 33.482128, 32.312065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679935, 33.679489, 31.661776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934757, 33.960213, 31.789286>,  <33.087650, 34.128647, 31.865791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934757, 33.960213, 31.789286>,  <32.679935, 33.679489, 31.661776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934757, 33.960213, 31.789286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574593, -0.156707, -0.803296,
		-0.513810, 0.694911, -0.503089,
		0.637057, 0.701813, 0.318774,
		33.125874, 34.170757, 31.884918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824135, 34.289860, 31.099838>,  <32.679935, 33.679489, 31.661776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824135, 34.289860, 31.099838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133030, 34.300423, 31.353750>,  <33.318367, 34.306759, 31.506098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133030, 34.300423, 31.353750>,  <32.824135, 34.289860, 31.099838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133030, 34.300423, 31.353750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634798, -0.072957, -0.769226,
		0.026001, 0.996985, -0.073102,
		0.772240, 0.026405, 0.634782,
		33.364700, 34.308346, 31.544186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300350, 34.863983, 30.817839>,  <32.824135, 34.289860, 31.099838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300350, 34.863983, 30.817839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529163, 34.643997, 31.061253>,  <33.666451, 34.512005, 31.207300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529163, 34.643997, 31.061253>,  <33.300350, 34.863983, 30.817839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529163, 34.643997, 31.061253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704565, -0.050393, -0.707849,
		0.419958, 0.833665, 0.358661,
		0.572035, -0.549966, 0.608534,
		33.700775, 34.479008, 31.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006168, 35.184296, 30.985905>,  <33.300350, 34.863983, 30.817839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006168, 35.184296, 30.985905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059917, 34.798779, 31.078028>,  <34.092167, 34.567467, 31.133301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059917, 34.798779, 31.078028>,  <34.006168, 35.184296, 30.985905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059917, 34.798779, 31.078028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853842, -0.005334, -0.520505,
		0.502889, 0.266589, 0.822212,
		0.134375, -0.963795, 0.230308,
		34.100231, 34.509640, 31.147120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612129, 35.192177, 31.000088>,  <34.006168, 35.184296, 30.985905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612129, 35.192177, 31.000088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538185, 34.802094, 30.951427>,  <34.493820, 34.568043, 30.922232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538185, 34.802094, 30.951427>,  <34.612129, 35.192177, 31.000088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538185, 34.802094, 30.951427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793732, -0.075160, -0.603607,
		0.579498, -0.208138, 0.787947,
		-0.184856, -0.975208, -0.121651,
		34.482727, 34.509533, 30.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170639, 34.817871, 31.134552>,  <34.612129, 35.192177, 31.000088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170639, 34.817871, 31.134552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960972, 34.562862, 30.908699>,  <34.835171, 34.409859, 30.773188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960972, 34.562862, 30.908699>,  <35.170639, 34.817871, 31.134552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960972, 34.562862, 30.908699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773897, -0.079878, -0.628254,
		0.355424, -0.766279, 0.535247,
		-0.524173, -0.637523, -0.564631,
		34.803719, 34.371605, 30.739309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608685, 34.337437, 31.032976>,  <35.170639, 34.817871, 31.134552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608685, 34.337437, 31.032976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332901, 34.278103, 30.749388>,  <35.167431, 34.242504, 30.579235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332901, 34.278103, 30.749388>,  <35.608685, 34.337437, 31.032976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332901, 34.278103, 30.749388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723118, -0.197437, -0.661906,
		-0.041793, -0.969028, 0.243389,
		-0.689459, -0.148336, -0.708973,
		35.126064, 34.233601, 30.536695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896290, 33.740131, 30.718430>,  <35.608685, 34.337437, 31.032976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896290, 33.740131, 30.718430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608929, 33.876461, 30.475864>,  <35.436512, 33.958260, 30.330326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608929, 33.876461, 30.475864>,  <35.896290, 33.740131, 30.718430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608929, 33.876461, 30.475864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538146, -0.280093, -0.794950,
		-0.440790, -0.897433, 0.017807,
		-0.718402, 0.340824, -0.606413,
		35.393410, 33.978706, 30.293940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636395, 33.146034, 30.362646>,  <35.896290, 33.740131, 30.718430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636395, 33.146034, 30.362646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571770, 33.477787, 30.148722>,  <35.532993, 33.676838, 30.020367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571770, 33.477787, 30.148722>,  <35.636395, 33.146034, 30.362646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571770, 33.477787, 30.148722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590824, -0.352786, -0.725582,
		-0.790458, -0.433208, -0.433020,
		-0.161565, 0.829381, -0.534812,
		35.523300, 33.726601, 29.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533848, 32.880890, 29.719330>,  <35.636395, 33.146034, 30.362646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533848, 32.880890, 29.719330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594513, 33.267036, 29.634415>,  <35.630913, 33.498726, 29.583466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594513, 33.267036, 29.634415>,  <35.533848, 32.880890, 29.719330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594513, 33.267036, 29.634415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509559, -0.260395, -0.820088,
		-0.846963, 0.016208, -0.531404,
		0.151667, 0.965366, -0.212286,
		35.640015, 33.556644, 29.570728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326946, 32.963734, 29.096811>,  <35.533848, 32.880890, 29.719330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326946, 32.963734, 29.096811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575584, 33.269802, 29.163893>,  <35.724770, 33.453445, 29.204142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575584, 33.269802, 29.163893>,  <35.326946, 32.963734, 29.096811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575584, 33.269802, 29.163893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436479, -0.160555, -0.885273,
		-0.650462, 0.623484, -0.433783,
		0.621599, 0.765173, 0.167703,
		35.762066, 33.499355, 29.214203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373962, 33.394699, 28.496759>,  <35.326946, 32.963734, 29.096811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373962, 33.394699, 28.496759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709114, 33.484684, 28.695700>,  <35.910206, 33.538677, 28.815063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709114, 33.484684, 28.695700>,  <35.373962, 33.394699, 28.496759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709114, 33.484684, 28.695700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538890, -0.195742, -0.819318,
		-0.086967, 0.954502, -0.285240,
		0.837875, 0.224967, 0.497348,
		35.960476, 33.552174, 28.844904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739403, 33.777092, 28.075556>,  <35.373962, 33.394699, 28.496759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739403, 33.777092, 28.075556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030811, 33.649612, 28.318104>,  <36.205658, 33.573124, 28.463633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030811, 33.649612, 28.318104>,  <35.739403, 33.777092, 28.075556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030811, 33.649612, 28.318104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643808, 0.016146, -0.765017,
		0.234022, 0.947717, 0.216946,
		0.728522, -0.318703, 0.606369,
		36.249367, 33.554001, 28.500015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319725, 34.201550, 27.887308>,  <35.739403, 33.777092, 28.075556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319725, 34.201550, 27.887308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473240, 33.890038, 28.085789>,  <36.565350, 33.703133, 28.204878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473240, 33.890038, 28.085789>,  <36.319725, 34.201550, 27.887308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473240, 33.890038, 28.085789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754970, -0.044788, -0.654228,
		0.531721, 0.625702, 0.570763,
		0.383788, -0.778775, 0.496201,
		36.588375, 33.656406, 28.234650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975075, 34.434387, 28.068794>,  <36.319725, 34.201550, 27.887308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975075, 34.434387, 28.068794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019367, 34.037148, 28.084236>,  <37.045944, 33.798805, 28.093502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019367, 34.037148, 28.084236>,  <36.975075, 34.434387, 28.068794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019367, 34.037148, 28.084236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779481, 0.062687, -0.623281,
		0.616560, 0.099112, 0.781044,
		0.110736, -0.993100, 0.038606,
		37.052589, 33.739216, 28.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735809, 34.291706, 28.158524>,  <36.975075, 34.434387, 28.068794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735809, 34.291706, 28.158524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585442, 33.939510, 28.042997>,  <37.495220, 33.728191, 27.973682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585442, 33.939510, 28.042997>,  <37.735809, 34.291706, 28.158524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585442, 33.939510, 28.042997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787338, -0.139142, -0.600615,
		0.488652, -0.453179, 0.745552,
		-0.375924, -0.880493, -0.288813,
		37.472664, 33.675362, 27.956354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326202, 33.703495, 28.176600>,  <37.735809, 34.291706, 28.158524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326202, 33.703495, 28.176600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064850, 33.544441, 27.918922>,  <37.908039, 33.449009, 27.764317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064850, 33.544441, 27.918922>,  <38.326202, 33.703495, 28.176600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064850, 33.544441, 27.918922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755595, -0.290139, -0.587278,
		0.046619, -0.870462, 0.490023,
		-0.653378, -0.397637, -0.644191,
		37.868835, 33.425152, 27.725664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652451, 33.151485, 27.966038>,  <38.326202, 33.703495, 28.176600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652451, 33.151485, 27.966038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358768, 33.169025, 27.695034>,  <38.182560, 33.179550, 27.532431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358768, 33.169025, 27.695034>,  <38.652451, 33.151485, 27.966038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358768, 33.169025, 27.695034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598792, -0.428505, -0.676632,
		-0.319987, -0.902475, 0.288353,
		-0.734204, 0.043850, -0.677511,
		38.138508, 33.182178, 27.491781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575958, 32.451233, 27.632919>,  <38.652451, 33.151485, 27.966038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575958, 32.451233, 27.632919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438301, 32.735508, 27.387486>,  <38.355705, 32.906075, 27.240225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438301, 32.735508, 27.387486>,  <38.575958, 32.451233, 27.632919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438301, 32.735508, 27.387486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418861, -0.468662, -0.777760,
		-0.840309, -0.524669, -0.136393,
		-0.344144, 0.710689, -0.613585,
		38.335056, 32.948715, 27.203409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346573, 32.097191, 27.054510>,  <38.575958, 32.451233, 27.632919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346573, 32.097191, 27.054510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.398972, 32.470264, 26.920082>,  <38.430408, 32.694107, 26.839426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.398972, 32.470264, 26.920082>,  <38.346573, 32.097191, 27.054510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398972, 32.470264, 26.920082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493813, -0.355327, -0.793657,
		-0.859645, -0.061992, -0.507116,
		0.130992, 0.932684, -0.336068,
		38.438271, 32.750069, 26.819262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207325, 31.986408, 26.345432>,  <38.346573, 32.097191, 27.054510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207325, 31.986408, 26.345432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.412262, 32.328911, 26.371759>,  <38.535225, 32.534412, 26.387556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.412262, 32.328911, 26.371759>,  <38.207325, 31.986408, 26.345432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412262, 32.328911, 26.371759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590860, -0.295847, -0.750573,
		-0.623211, 0.423438, -0.657502,
		0.512340, 0.856257, 0.065818,
		38.565964, 32.585789, 26.391504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216496, 32.273041, 25.665413>,  <38.207325, 31.986408, 26.345432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216496, 32.273041, 25.665413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524387, 32.436756, 25.861374>,  <38.709122, 32.534985, 25.978951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524387, 32.436756, 25.861374>,  <38.216496, 32.273041, 25.665413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524387, 32.436756, 25.861374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567593, -0.087561, -0.818640,
		-0.292166, 0.908193, -0.299709,
		0.769725, 0.409291, 0.489902,
		38.755306, 32.559544, 26.008345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720375, 32.527256, 25.200542>,  <38.216496, 32.273041, 25.665413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720375, 32.527256, 25.200542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.962154, 32.530762, 25.519182>,  <39.107220, 32.532867, 25.710365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.962154, 32.530762, 25.519182>,  <38.720375, 32.527256, 25.200542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962154, 32.530762, 25.519182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790144, -0.134109, -0.598070,
		0.101587, 0.990928, -0.087990,
		0.604444, 0.008769, 0.796599,
		39.143486, 32.533394, 25.758162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346924, 32.852467, 24.981470>,  <38.720375, 32.527256, 25.200542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346924, 32.852467, 24.981470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481312, 32.669495, 25.310806>,  <39.561943, 32.559711, 25.508408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481312, 32.669495, 25.310806>,  <39.346924, 32.852467, 24.981470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481312, 32.669495, 25.310806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875437, -0.170829, -0.452136,
		0.347469, 0.872685, 0.343055,
		0.335969, -0.457427, 0.823338,
		39.582104, 32.532269, 25.557808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007500, 33.078514, 25.115591>,  <39.346924, 32.852467, 24.981470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007500, 33.078514, 25.115591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.026836, 32.749187, 25.341801>,  <40.038437, 32.551594, 25.477528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.026836, 32.749187, 25.341801>,  <40.007500, 33.078514, 25.115591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026836, 32.749187, 25.341801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890084, -0.221406, -0.398410,
		0.453227, 0.522624, 0.722115,
		0.048338, -0.823313, 0.565526,
		40.041336, 32.502193, 25.511459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682030, 32.997772, 24.986076>,  <40.007500, 33.078514, 25.115591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682030, 32.997772, 24.986076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.535110, 32.653473, 25.127047>,  <40.446960, 32.446892, 25.211630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.535110, 32.653473, 25.127047>,  <40.682030, 32.997772, 24.986076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535110, 32.653473, 25.127047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820445, -0.478323, -0.313173,
		0.438137, 0.174119, 0.881883,
		-0.367296, -0.860749, 0.352427,
		40.424923, 32.395248, 25.232775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142311, 32.685585, 25.490635>,  <40.682030, 32.997772, 24.986076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142311, 32.685585, 25.490635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918785, 32.425098, 25.285250>,  <40.784672, 32.268806, 25.162018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918785, 32.425098, 25.285250>,  <41.142311, 32.685585, 25.490635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918785, 32.425098, 25.285250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829222, -0.446939, -0.335613,
		-0.010931, -0.613321, 0.789758,
		-0.558812, -0.651216, -0.513465,
		40.751141, 32.229733, 25.131210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507545, 32.423306, 26.167948>,  <41.142311, 32.685585, 25.490635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507545, 32.423306, 26.167948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798126, 32.697712, 26.151667>,  <41.972473, 32.862354, 26.141899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798126, 32.697712, 26.151667>,  <41.507545, 32.423306, 26.167948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798126, 32.697712, 26.151667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553228, 0.618916, 0.557567,
		0.407690, -0.382527, 0.829133,
		0.726449, 0.686014, -0.040701,
		42.016060, 32.903515, 26.139456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480537, 32.661026, 26.793365>,  <41.507545, 32.423306, 26.167948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480537, 32.661026, 26.793365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659821, 32.941978, 26.572178>,  <41.767391, 33.110550, 26.439465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659821, 32.941978, 26.572178>,  <41.480537, 32.661026, 26.793365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659821, 32.941978, 26.572178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476806, 0.711082, 0.516738,
		0.756152, 0.032054, 0.653610,
		0.448207, 0.702378, -0.552969,
		41.794281, 33.152691, 26.406286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632187, 33.244926, 27.298494>,  <41.480537, 32.661026, 26.793365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632187, 33.244926, 27.298494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692715, 33.436794, 26.952772>,  <41.729031, 33.551914, 26.745338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692715, 33.436794, 26.952772>,  <41.632187, 33.244926, 27.298494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692715, 33.436794, 26.952772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525523, 0.779604, 0.340652,
		0.837214, 0.402666, 0.370044,
		0.151318, 0.479665, -0.864305,
		41.738110, 33.580692, 26.693480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891079, 33.963261, 27.445608>,  <41.632187, 33.244926, 27.298494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891079, 33.963261, 27.445608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711086, 33.962864, 27.088392>,  <41.603092, 33.962624, 26.874063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711086, 33.962864, 27.088392>,  <41.891079, 33.963261, 27.445608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711086, 33.962864, 27.088392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616645, 0.723677, 0.309905,
		0.645964, 0.690138, -0.326251,
		-0.449978, -0.000994, -0.893039,
		41.576092, 33.962566, 26.820480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735413, 34.577168, 27.357828>,  <41.891079, 33.963261, 27.445608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735413, 34.577168, 27.357828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.494446, 34.394630, 27.095881>,  <41.349865, 34.285110, 26.938711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.494446, 34.394630, 27.095881>,  <41.735413, 34.577168, 27.357828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494446, 34.394630, 27.095881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696138, 0.701772, 0.151355,
		0.390500, 0.547057, -0.740432,
		-0.602414, -0.456338, -0.654869,
		41.313721, 34.257729, 26.899420>
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
