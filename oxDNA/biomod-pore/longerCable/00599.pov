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
	<24.041462, 34.730968, 35.026535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311930, 34.999012, 34.904060>,  <24.474211, 35.159840, 34.830578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311930, 34.999012, 34.904060>,  <24.041462, 34.730968, 35.026535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311930, 34.999012, 34.904060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380993, 0.037664, 0.923810,
		0.630587, -0.741306, -0.229839,
		0.676169, 0.670110, -0.306182,
		24.514780, 35.200047, 34.812206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748739, 34.432465, 35.192192>,  <24.041462, 34.730968, 35.026535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748739, 34.432465, 35.192192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745430, 34.830891, 35.156876>,  <24.743444, 35.069946, 35.135685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745430, 34.830891, 35.156876>,  <24.748739, 34.432465, 35.192192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745430, 34.830891, 35.156876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576543, 0.076889, 0.813441,
		0.817025, -0.044171, -0.574908,
		-0.008274, 0.996061, -0.088287,
		24.742949, 35.129707, 35.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396292, 34.654591, 35.319553>,  <24.748739, 34.432465, 35.192192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396292, 34.654591, 35.319553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179235, 34.989479, 35.346664>,  <25.049002, 35.190414, 35.362930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179235, 34.989479, 35.346664>,  <25.396292, 34.654591, 35.319553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179235, 34.989479, 35.346664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526168, 0.275918, 0.804373,
		0.654742, 0.472147, -0.590246,
		-0.542642, 0.837226, 0.067773,
		25.016443, 35.240646, 35.366997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876890, 35.189716, 35.232933>,  <25.396292, 34.654591, 35.319553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876890, 35.189716, 35.232933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567654, 35.261078, 35.476410>,  <25.382113, 35.303894, 35.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567654, 35.261078, 35.476410>,  <25.876890, 35.189716, 35.232933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567654, 35.261078, 35.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633179, 0.273948, 0.723904,
		-0.037605, 0.945053, -0.324746,
		-0.773091, 0.178400, 0.608690,
		25.335726, 35.314598, 35.659016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933151, 35.899731, 35.484898>,  <25.876890, 35.189716, 35.232933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933151, 35.899731, 35.484898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729652, 35.675079, 35.745895>,  <25.607553, 35.540287, 35.902496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729652, 35.675079, 35.745895>,  <25.933151, 35.899731, 35.484898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729652, 35.675079, 35.745895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470304, 0.453523, 0.757054,
		-0.721105, 0.692020, 0.033408,
		-0.508745, -0.561627, 0.652498,
		25.577028, 35.506592, 35.941643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240194, 36.186714, 36.030838>,  <25.933151, 35.899731, 35.484898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240194, 36.186714, 36.030838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974813, 35.938904, 36.198658>,  <25.815584, 35.790218, 36.299351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974813, 35.938904, 36.198658>,  <26.240194, 36.186714, 36.030838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974813, 35.938904, 36.198658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220208, 0.374220, 0.900815,
		-0.715081, 0.690035, -0.111853,
		-0.663451, -0.619524, 0.419549,
		25.775778, 35.753048, 36.324524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861460, 36.627579, 36.511131>,  <26.240194, 36.186714, 36.030838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861460, 36.627579, 36.511131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862238, 36.238934, 36.605759>,  <25.862705, 36.005745, 36.662533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862238, 36.238934, 36.605759>,  <25.861460, 36.627579, 36.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862238, 36.238934, 36.605759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169143, 0.233477, 0.957538,
		-0.985590, 0.038152, 0.164795,
		0.001944, -0.971613, 0.236565,
		25.862822, 35.947449, 36.676727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561590, 36.545132, 37.177551>,  <25.861460, 36.627579, 36.511131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561590, 36.545132, 37.177551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763153, 36.206032, 37.111340>,  <25.884090, 36.002571, 37.071613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763153, 36.206032, 37.111340>,  <25.561590, 36.545132, 37.177551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763153, 36.206032, 37.111340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298077, -0.009192, 0.954498,
		-0.810696, -0.530318, 0.248062,
		0.503907, -0.847749, -0.165528,
		25.914326, 35.951706, 37.061680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865507, 36.503399, 37.819492>,  <25.561590, 36.545132, 37.177551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865507, 36.503399, 37.819492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056000, 36.203426, 37.635834>,  <26.170296, 36.023445, 37.525639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056000, 36.203426, 37.635834>,  <25.865507, 36.503399, 37.819492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056000, 36.203426, 37.635834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559410, -0.144474, 0.816203,
		-0.678428, -0.645550, 0.350714,
		0.476231, -0.749928, -0.459142,
		26.198870, 35.978447, 37.498093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951412, 36.026119, 38.391907>,  <25.865507, 36.503399, 37.819492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951412, 36.026119, 38.391907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215401, 35.959003, 38.098980>,  <26.373795, 35.918736, 37.923225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215401, 35.959003, 38.098980>,  <25.951412, 36.026119, 38.391907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215401, 35.959003, 38.098980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672093, -0.303752, 0.675296,
		-0.335748, -0.937860, -0.087699,
		0.659972, -0.167788, -0.732314,
		26.413393, 35.908669, 37.879284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051775, 35.224785, 38.247730>,  <25.951412, 36.026119, 38.391907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051775, 35.224785, 38.247730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353548, 35.487213, 38.255787>,  <26.534613, 35.644669, 38.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353548, 35.487213, 38.255787>,  <26.051775, 35.224785, 38.247730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353548, 35.487213, 38.255787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368992, -0.449298, 0.813619,
		0.542841, -0.606387, -0.581048,
		0.754432, 0.656068, 0.020146,
		26.579878, 35.684032, 38.261829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822905, 35.034866, 38.209614>,  <26.051775, 35.224785, 38.247730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822905, 35.034866, 38.209614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828945, 35.356773, 38.446972>,  <26.832569, 35.549919, 38.589386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828945, 35.356773, 38.446972>,  <26.822905, 35.034866, 38.209614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828945, 35.356773, 38.446972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513386, -0.515505, 0.686069,
		0.858025, 0.294281, -0.420941,
		0.015100, 0.804769, 0.593396,
		26.833475, 35.598206, 38.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483925, 35.339325, 38.274673>,  <26.822905, 35.034866, 38.209614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483925, 35.339325, 38.274673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315340, 35.358040, 38.636929>,  <27.214190, 35.369270, 38.854282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315340, 35.358040, 38.636929>,  <27.483925, 35.339325, 38.274673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315340, 35.358040, 38.636929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764222, -0.519300, 0.382481,
		0.488194, 0.853310, 0.183108,
		-0.421463, 0.046790, 0.905638,
		27.188902, 35.372078, 38.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977678, 35.744408, 38.068310>,  <27.483925, 35.339325, 38.274673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977678, 35.744408, 38.068310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361237, 35.815331, 38.156929>,  <28.591372, 35.857883, 38.210102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361237, 35.815331, 38.156929>,  <27.977678, 35.744408, 38.068310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361237, 35.815331, 38.156929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011110, 0.803620, -0.595039,
		-0.283546, 0.568118, 0.772557,
		0.958894, 0.177304, 0.221552,
		28.648905, 35.868523, 38.223396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049126, 36.424637, 38.060715>,  <27.977678, 35.744408, 38.068310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049126, 36.424637, 38.060715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427303, 36.298210, 38.029133>,  <28.654209, 36.222355, 38.010185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427303, 36.298210, 38.029133>,  <28.049126, 36.424637, 38.060715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427303, 36.298210, 38.029133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288081, 0.924277, -0.250441,
		0.152130, 0.214034, 0.964907,
		0.945445, -0.316071, -0.078951,
		28.710938, 36.203388, 38.005447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592285, 36.933502, 38.465790>,  <28.049126, 36.424637, 38.060715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592285, 36.933502, 38.465790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779142, 36.721794, 38.182480>,  <28.891256, 36.594769, 38.012493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779142, 36.721794, 38.182480>,  <28.592285, 36.933502, 38.465790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779142, 36.721794, 38.182480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295648, 0.848445, -0.439015,
		0.833288, -0.004316, 0.552823,
		0.467145, -0.529267, -0.708274,
		28.919287, 36.563015, 37.969997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687042, 37.678028, 38.237282>,  <28.592285, 36.933502, 38.465790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687042, 37.678028, 38.237282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649712, 37.373600, 37.980511>,  <28.627314, 37.190945, 37.826450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649712, 37.373600, 37.980511>,  <28.687042, 37.678028, 38.237282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649712, 37.373600, 37.980511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135215, 0.629077, -0.765492,
		0.986411, -0.158238, 0.044199,
		-0.093325, -0.761067, -0.641925,
		28.621714, 37.145279, 37.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307983, 37.796181, 37.868717>,  <28.687042, 37.678028, 38.237282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307983, 37.796181, 37.868717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015463, 37.590790, 37.689144>,  <28.839951, 37.467556, 37.581398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015463, 37.590790, 37.689144>,  <29.307983, 37.796181, 37.868717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015463, 37.590790, 37.689144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159221, 0.511501, -0.844403,
		0.663211, -0.688992, -0.292304,
		-0.731300, -0.513476, -0.448935,
		28.796072, 37.436749, 37.554462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545671, 37.566463, 37.236065>,  <29.307983, 37.796181, 37.868717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545671, 37.566463, 37.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147676, 37.545654, 37.201897>,  <28.908880, 37.533169, 37.181396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147676, 37.545654, 37.201897>,  <29.545671, 37.566463, 37.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147676, 37.545654, 37.201897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045517, 0.525002, -0.849883,
		0.089057, -0.849510, -0.520001,
		-0.994986, -0.052019, -0.085422,
		28.849180, 37.530048, 37.176270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508404, 38.213898, 36.905804>,  <29.545671, 37.566463, 37.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508404, 38.213898, 36.905804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770988, 37.914543, 36.867893>,  <29.928539, 37.734932, 36.845146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770988, 37.914543, 36.867893>,  <29.508404, 38.213898, 36.905804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770988, 37.914543, 36.867893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750328, 0.634805, 0.184471,
		-0.077892, -0.192210, 0.978258,
		0.656460, -0.748383, -0.094774,
		29.967926, 37.690029, 36.839462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930130, 38.145050, 37.559353>,  <29.508404, 38.213898, 36.905804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930130, 38.145050, 37.559353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118143, 38.013973, 37.231525>,  <30.230951, 37.935329, 37.034828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118143, 38.013973, 37.231525>,  <29.930130, 38.145050, 37.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118143, 38.013973, 37.231525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798214, 0.554120, 0.236233,
		0.376728, -0.765226, 0.522020,
		0.470033, -0.327688, -0.819566,
		30.259153, 37.915668, 36.985657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415533, 38.719021, 37.566422>,  <29.930130, 38.145050, 37.559353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415533, 38.719021, 37.566422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668264, 39.024811, 37.617603>,  <30.819902, 39.208286, 37.648312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668264, 39.024811, 37.617603>,  <30.415533, 38.719021, 37.566422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668264, 39.024811, 37.617603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772099, -0.635273, -0.017078,
		0.068230, 0.109584, -0.991633,
		0.631829, 0.764473, 0.127954,
		30.857813, 39.254154, 37.655991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841509, 38.868721, 36.974895>,  <30.415533, 38.719021, 37.566422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841509, 38.868721, 36.974895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079210, 38.979607, 37.276894>,  <31.221830, 39.046139, 37.458092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079210, 38.979607, 37.276894>,  <30.841509, 38.868721, 36.974895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079210, 38.979607, 37.276894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697520, -0.644978, -0.312201,
		0.400410, 0.712150, -0.576640,
		0.594254, 0.277209, 0.754995,
		31.257486, 39.062771, 37.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485912, 39.051472, 36.792488>,  <30.841509, 38.868721, 36.974895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485912, 39.051472, 36.792488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542187, 38.924919, 37.167744>,  <31.575951, 38.848988, 37.392899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542187, 38.924919, 37.167744>,  <31.485912, 39.051472, 36.792488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542187, 38.924919, 37.167744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731568, -0.605248, -0.313821,
		0.667095, 0.730465, 0.146304,
		0.140685, -0.316379, 0.938143,
		31.584393, 38.830006, 37.449188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152184, 38.848583, 36.797596>,  <31.485912, 39.051472, 36.792488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152184, 38.848583, 36.797596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006859, 38.625805, 37.096344>,  <31.919664, 38.492138, 37.275593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006859, 38.625805, 37.096344>,  <32.152184, 38.848583, 36.797596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006859, 38.625805, 37.096344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773100, -0.627588, -0.091926,
		0.519926, 0.544011, 0.658581,
		-0.363309, -0.556943, 0.746874,
		31.897865, 38.458721, 37.320408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733620, 38.624718, 37.213566>,  <32.152184, 38.848583, 36.797596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733620, 38.624718, 37.213566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431061, 38.366978, 37.258602>,  <32.249523, 38.212334, 37.285625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431061, 38.366978, 37.258602>,  <32.733620, 38.624718, 37.213566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431061, 38.366978, 37.258602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602665, -0.753422, -0.262963,
		0.254269, -0.131049, 0.958214,
		-0.756401, -0.644345, 0.112593,
		32.204140, 38.173676, 37.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899487, 38.154423, 37.671520>,  <32.733620, 38.624718, 37.213566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899487, 38.154423, 37.671520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645988, 37.947113, 37.441818>,  <32.493889, 37.822727, 37.303997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645988, 37.947113, 37.441818>,  <32.899487, 38.154423, 37.671520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645988, 37.947113, 37.441818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713254, -0.678842, -0.174480,
		-0.299397, -0.520161, 0.799871,
		-0.633743, -0.518272, -0.574250,
		32.455864, 37.791630, 37.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673370, 37.381645, 37.929874>,  <32.899487, 38.154423, 37.671520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673370, 37.381645, 37.929874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681694, 37.442078, 37.534554>,  <32.686687, 37.478336, 37.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681694, 37.442078, 37.534554>,  <32.673370, 37.381645, 37.929874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681694, 37.442078, 37.534554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882334, -0.467639, -0.052910,
		-0.470163, -0.870912, -0.143035,
		0.020809, 0.151081, -0.988302,
		32.687939, 37.487404, 37.238064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564999, 36.745506, 37.547909>,  <32.673370, 37.381645, 37.929874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564999, 36.745506, 37.547909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768360, 36.994602, 37.310009>,  <32.890377, 37.144058, 37.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768360, 36.994602, 37.310009>,  <32.564999, 36.745506, 37.547909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768360, 36.994602, 37.310009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723928, -0.683105, -0.096420,
		-0.466318, -0.381532, -0.798111,
		0.508407, 0.622737, -0.594745,
		32.920883, 37.181423, 37.131584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851692, 36.409058, 37.080563>,  <32.564999, 36.745506, 37.547909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851692, 36.409058, 37.080563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094646, 36.722031, 37.025604>,  <33.240417, 36.909817, 36.992630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094646, 36.722031, 37.025604>,  <32.851692, 36.409058, 37.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094646, 36.722031, 37.025604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783322, -0.561091, 0.267551,
		0.132250, -0.270132, -0.953697,
		0.607385, 0.782436, -0.137396,
		33.276863, 36.956760, 36.984386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432724, 36.210987, 36.621758>,  <32.851692, 36.409058, 37.080563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432724, 36.210987, 36.621758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544628, 36.493153, 36.882259>,  <33.611771, 36.662453, 37.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544628, 36.493153, 36.882259>,  <33.432724, 36.210987, 36.621758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544628, 36.493153, 36.882259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523472, -0.680713, 0.512452,
		0.804806, 0.197551, -0.559697,
		0.279758, 0.705410, 0.651254,
		33.628555, 36.704777, 37.077637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158398, 36.266098, 36.518673>,  <33.432724, 36.210987, 36.621758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158398, 36.266098, 36.518673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031406, 36.378399, 36.880974>,  <33.955212, 36.445782, 37.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031406, 36.378399, 36.880974>,  <34.158398, 36.266098, 36.518673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031406, 36.378399, 36.880974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751713, -0.507740, 0.420866,
		0.578047, 0.814479, -0.049853,
		-0.317474, 0.280755, 0.905752,
		33.936165, 36.462624, 37.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651081, 36.753857, 36.715878>,  <34.158398, 36.266098, 36.518673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651081, 36.753857, 36.715878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456234, 36.487453, 36.941853>,  <34.339325, 36.327610, 37.077438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456234, 36.487453, 36.941853>,  <34.651081, 36.753857, 36.715878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456234, 36.487453, 36.941853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762004, -0.640166, -0.097659,
		0.426695, 0.382914, 0.819334,
		-0.487115, -0.666007, 0.564938,
		34.310101, 36.287651, 37.111336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074448, 36.504341, 37.353970>,  <34.651081, 36.753857, 36.715878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074448, 36.504341, 37.353970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812397, 36.227501, 37.232780>,  <34.655167, 36.061398, 37.160065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812397, 36.227501, 37.232780>,  <35.074448, 36.504341, 37.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812397, 36.227501, 37.232780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734489, -0.677394, -0.040792,
		-0.177001, -0.249255, 0.952125,
		-0.655131, -0.692105, -0.302974,
		34.615856, 36.019871, 37.141888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158340, 36.095051, 37.925640>,  <35.074448, 36.504341, 37.353970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158340, 36.095051, 37.925640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031696, 35.945839, 37.576790>,  <34.955708, 35.856312, 37.367481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031696, 35.945839, 37.576790>,  <35.158340, 36.095051, 37.925640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031696, 35.945839, 37.576790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757110, -0.653271, 0.004562,
		-0.571436, -0.658850, 0.489261,
		-0.316614, -0.373032, -0.872125,
		34.936710, 35.833931, 37.315151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003990, 35.437061, 38.055702>,  <35.158340, 36.095051, 37.925640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003990, 35.437061, 38.055702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047588, 35.438053, 37.658085>,  <35.073746, 35.438648, 37.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047588, 35.438053, 37.658085>,  <35.003990, 35.437061, 38.055702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047588, 35.438053, 37.658085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765970, -0.637575, 0.082394,
		-0.633570, -0.770384, -0.071391,
		0.108992, 0.002481, -0.994040,
		35.080284, 35.438797, 37.359875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110809, 34.847279, 37.771896>,  <35.003990, 35.437061, 38.055702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110809, 34.847279, 37.771896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319611, 35.063629, 37.508091>,  <35.444893, 35.193439, 37.349808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319611, 35.063629, 37.508091>,  <35.110809, 34.847279, 37.771896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319611, 35.063629, 37.508091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695542, -0.717485, -0.037901,
		-0.493690, -0.438934, -0.750737,
		0.522007, 0.540881, -0.659513,
		35.476212, 35.225895, 37.310238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315300, 34.601303, 37.016666>,  <35.110809, 34.847279, 37.771896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315300, 34.601303, 37.016666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594494, 34.865734, 37.126793>,  <35.762009, 35.024391, 37.192867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594494, 34.865734, 37.126793>,  <35.315300, 34.601303, 37.016666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594494, 34.865734, 37.126793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716111, -0.645653, -0.265173,
		0.002457, 0.382241, -0.924059,
		0.697982, 0.661077, 0.275314,
		35.803890, 35.064056, 37.209389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732857, 34.850464, 36.398064>,  <35.315300, 34.601303, 37.016666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732857, 34.850464, 36.398064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928188, 34.829502, 36.746498>,  <36.045387, 34.816925, 36.955559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928188, 34.829502, 36.746498>,  <35.732857, 34.850464, 36.398064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928188, 34.829502, 36.746498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698357, -0.575100, -0.426095,
		0.523292, 0.816403, -0.244237,
		0.488326, -0.052408, 0.871086,
		36.074688, 34.813782, 37.007824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316116, 35.218502, 36.453819>,  <35.732857, 34.850464, 36.398064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316116, 35.218502, 36.453819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366592, 34.903145, 36.694653>,  <36.396877, 34.713928, 36.839153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366592, 34.903145, 36.694653>,  <36.316116, 35.218502, 36.453819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366592, 34.903145, 36.694653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768326, -0.306244, -0.562041,
		0.627496, 0.533521, 0.567101,
		0.126189, -0.788397, 0.602085,
		36.404449, 34.666626, 36.875278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956623, 35.183784, 36.782894>,  <36.316116, 35.218502, 36.453819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956623, 35.183784, 36.782894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816795, 34.809429, 36.765362>,  <36.732899, 34.584816, 36.754841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816795, 34.809429, 36.765362>,  <36.956623, 35.183784, 36.782894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816795, 34.809429, 36.765362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805637, -0.276379, -0.523989,
		0.478278, -0.218487, 0.850596,
		-0.349572, -0.935884, -0.043835,
		36.711926, 34.528664, 36.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577660, 34.664062, 36.947994>,  <36.956623, 35.183784, 36.782894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577660, 34.664062, 36.947994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278786, 34.502934, 36.736542>,  <37.099461, 34.406258, 36.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278786, 34.502934, 36.736542>,  <37.577660, 34.664062, 36.947994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278786, 34.502934, 36.736542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664132, -0.422213, -0.616981,
		0.025340, -0.812078, 0.582998,
		-0.747186, -0.402822, -0.528628,
		37.054630, 34.382088, 36.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579655, 35.364746, 37.326096>,  <37.577660, 34.664062, 36.947994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579655, 35.364746, 37.326096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484470, 35.403934, 36.939568>,  <37.427361, 35.427448, 36.707649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484470, 35.403934, 36.939568>,  <37.579655, 35.364746, 37.326096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484470, 35.403934, 36.939568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752992, 0.647026, -0.119831,
		0.613494, -0.756147, -0.227742,
		-0.237965, 0.097973, -0.966320,
		37.413082, 35.433327, 36.649673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110443, 35.547382, 36.761951>,  <37.579655, 35.364746, 37.326096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110443, 35.547382, 36.761951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465012, 35.541546, 36.576889>,  <38.677753, 35.538044, 36.465851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465012, 35.541546, 36.576889>,  <38.110443, 35.547382, 36.761951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465012, 35.541546, 36.576889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028800, -0.995827, 0.086594,
		-0.461991, -0.090083, -0.882298,
		0.886417, -0.014596, -0.462658,
		38.730938, 35.537167, 36.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137505, 35.057613, 36.063244>,  <38.110443, 35.547382, 36.761951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137505, 35.057613, 36.063244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466213, 35.100346, 36.287132>,  <38.663437, 35.125984, 36.421463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466213, 35.100346, 36.287132>,  <38.137505, 35.057613, 36.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466213, 35.100346, 36.287132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118675, -0.992816, 0.015251,
		0.557327, 0.053892, -0.828542,
		0.821768, 0.106828, 0.559719,
		38.712742, 35.132393, 36.455048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507656, 34.429966, 35.935326>,  <38.137505, 35.057613, 36.063244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507656, 34.429966, 35.935326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708275, 34.554451, 36.258209>,  <38.828648, 34.629143, 36.451939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708275, 34.554451, 36.258209>,  <38.507656, 34.429966, 35.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708275, 34.554451, 36.258209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126651, -0.949416, 0.287347,
		0.855808, -0.041885, -0.515595,
		0.501550, 0.311214, 0.807213,
		38.858742, 34.647816, 36.500374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221085, 34.230984, 36.083038>,  <38.507656, 34.429966, 35.935326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221085, 34.230984, 36.083038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011990, 34.262291, 36.422596>,  <38.886532, 34.281075, 36.626331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011990, 34.262291, 36.422596>,  <39.221085, 34.230984, 36.083038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011990, 34.262291, 36.422596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123278, -0.978370, 0.166114,
		0.843533, 0.191483, 0.501783,
		-0.522738, 0.078264, 0.848893,
		38.855167, 34.285770, 36.677265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521431, 33.636181, 35.750542>,  <39.221085, 34.230984, 36.083038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521431, 33.636181, 35.750542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709103, 33.591850, 36.100990>,  <39.821705, 33.565254, 36.311260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709103, 33.591850, 36.100990>,  <39.521431, 33.636181, 35.750542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709103, 33.591850, 36.100990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450889, -0.883098, 0.129756,
		0.759321, -0.455912, -0.464301,
		0.469180, -0.110822, 0.876121,
		39.849857, 33.558605, 36.363827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914631, 32.925259, 35.820118>,  <39.521431, 33.636181, 35.750542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914631, 32.925259, 35.820118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824162, 33.065758, 36.183540>,  <39.769878, 33.150059, 36.401592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824162, 33.065758, 36.183540>,  <39.914631, 32.925259, 35.820118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824162, 33.065758, 36.183540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278399, -0.917126, 0.285260,
		0.933455, -0.188421, 0.305220,
		-0.226177, 0.351251, 0.908552,
		39.756310, 33.171131, 36.456104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146477, 32.388306, 36.355339>,  <39.914631, 32.925259, 35.820118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146477, 32.388306, 36.355339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844700, 32.623013, 36.473000>,  <39.663635, 32.763836, 36.543594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844700, 32.623013, 36.473000>,  <40.146477, 32.388306, 36.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844700, 32.623013, 36.473000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522806, -0.808158, 0.271210,
		0.396855, 0.050830, 0.916473,
		-0.754441, 0.586768, 0.294147,
		39.618366, 32.799042, 36.561245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056736, 32.196762, 37.030834>,  <40.146477, 32.388306, 36.355339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056736, 32.196762, 37.030834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715916, 32.339912, 36.878025>,  <39.511425, 32.425804, 36.786339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715916, 32.339912, 36.878025>,  <40.056736, 32.196762, 37.030834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715916, 32.339912, 36.878025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473949, -0.837247, 0.272747,
		-0.222239, 0.413453, 0.882988,
		-0.852046, 0.357876, -0.382024,
		39.460300, 32.447273, 36.763416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561455, 32.165253, 37.582890>,  <40.056736, 32.196762, 37.030834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561455, 32.165253, 37.582890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328938, 32.132618, 37.259052>,  <39.189426, 32.113037, 37.064751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328938, 32.132618, 37.259052>,  <39.561455, 32.165253, 37.582890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328938, 32.132618, 37.259052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396338, -0.840566, 0.369276,
		-0.710646, 0.535530, 0.456277,
		-0.581290, -0.081585, -0.809596,
		39.154552, 32.108143, 37.016174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535461, 31.477480, 37.121231>,  <39.561455, 32.165253, 37.582890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535461, 31.477480, 37.121231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841351, 31.543308, 36.872032>,  <40.024883, 31.582806, 36.722515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841351, 31.543308, 36.872032>,  <39.535461, 31.477480, 37.121231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841351, 31.543308, 36.872032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374986, -0.672596, -0.637965,
		-0.524014, 0.721478, -0.452635,
		0.764719, 0.164571, -0.622994,
		40.070766, 31.592680, 36.685135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395821, 30.921198, 36.630157>,  <39.535461, 31.477480, 37.121231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395821, 30.921198, 36.630157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360420, 30.745150, 36.272732>,  <39.339180, 30.639521, 36.058277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360420, 30.745150, 36.272732>,  <39.395821, 30.921198, 36.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360420, 30.745150, 36.272732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243370, -0.879454, 0.409062,
		-0.965887, -0.181264, 0.184949,
		-0.088506, -0.440118, -0.893567,
		39.333870, 30.613113, 36.004662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874214, 30.442581, 36.714466>,  <39.395821, 30.921198, 36.630157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874214, 30.442581, 36.714466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164341, 30.348518, 36.455662>,  <39.338417, 30.292080, 36.300381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164341, 30.348518, 36.455662>,  <38.874214, 30.442581, 36.714466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164341, 30.348518, 36.455662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000942, -0.939509, 0.342523,
		-0.688419, -0.249046, -0.681216,
		0.725313, -0.235157, -0.647011,
		39.381935, 30.277971, 36.261559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338787, 30.346153, 37.266808>,  <38.874214, 30.442581, 36.714466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338787, 30.346153, 37.266808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967052, 30.475412, 37.195362>,  <37.744011, 30.552967, 37.152496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967052, 30.475412, 37.195362>,  <38.338787, 30.346153, 37.266808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967052, 30.475412, 37.195362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268560, -0.923587, -0.273609,
		-0.253378, -0.206309, 0.945112,
		-0.929341, 0.323146, -0.178611,
		37.688251, 30.572355, 37.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849060, 29.752850, 37.442577>,  <38.338787, 30.346153, 37.266808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849060, 29.752850, 37.442577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645203, 30.007906, 37.211517>,  <37.522888, 30.160940, 37.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645203, 30.007906, 37.211517>,  <37.849060, 29.752850, 37.442577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645203, 30.007906, 37.211517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450168, -0.769773, -0.452546,
		-0.733223, 0.029405, 0.679352,
		-0.509640, 0.637640, -0.577652,
		37.492310, 30.199198, 37.038223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186146, 29.329247, 37.304585>,  <37.849060, 29.752850, 37.442577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186146, 29.329247, 37.304585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181435, 29.644075, 37.057884>,  <37.178608, 29.832972, 36.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181435, 29.644075, 37.057884>,  <37.186146, 29.329247, 37.304585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181435, 29.644075, 37.057884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658116, -0.470471, -0.587827,
		-0.752824, 0.398970, 0.523525,
		-0.011778, 0.787070, -0.616750,
		37.177902, 29.880198, 36.872860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429459, 29.550154, 37.216663>,  <37.186146, 29.329247, 37.304585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429459, 29.550154, 37.216663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663658, 29.634516, 36.903561>,  <36.804180, 29.685133, 36.715698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663658, 29.634516, 36.903561>,  <36.429459, 29.550154, 37.216663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663658, 29.634516, 36.903561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602850, -0.532278, -0.594350,
		-0.541995, 0.819878, -0.184506,
		0.585503, 0.210904, -0.782755,
		36.839310, 29.697786, 36.668736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993210, 29.714617, 36.703384>,  <36.429459, 29.550154, 37.216663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993210, 29.714617, 36.703384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327057, 29.622965, 36.503017>,  <36.527363, 29.567974, 36.382797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327057, 29.622965, 36.503017>,  <35.993210, 29.714617, 36.703384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327057, 29.622965, 36.503017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536991, -0.541057, -0.647224,
		-0.122727, 0.809170, -0.574614,
		0.834613, -0.229130, -0.500920,
		36.577442, 29.554226, 36.352741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904907, 30.041143, 36.129929>,  <35.993210, 29.714617, 36.703384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904907, 30.041143, 36.129929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168137, 29.745790, 36.070965>,  <36.326073, 29.568579, 36.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168137, 29.745790, 36.070965>,  <35.904907, 30.041143, 36.129929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168137, 29.745790, 36.070965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724661, -0.567923, -0.390295,
		0.204469, 0.363666, -0.908812,
		0.658072, -0.738384, -0.147412,
		36.365559, 29.524275, 36.026741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582436, 30.621819, 36.198467>,  <35.904907, 30.041143, 36.129929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582436, 30.621819, 36.198467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187302, 30.677259, 36.226662>,  <34.950222, 30.710524, 36.243580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187302, 30.677259, 36.226662>,  <35.582436, 30.621819, 36.198467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187302, 30.677259, 36.226662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079169, 0.058157, 0.995163,
		0.133833, 0.988639, -0.068423,
		-0.987837, 0.138602, 0.070487,
		34.890949, 30.718840, 36.247807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420265, 30.995888, 36.864868>,  <35.582436, 30.621819, 36.198467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420265, 30.995888, 36.864868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063145, 30.856537, 36.750648>,  <34.848873, 30.772926, 36.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063145, 30.856537, 36.750648>,  <35.420265, 30.995888, 36.864868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063145, 30.856537, 36.750648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244103, -0.158595, 0.956693,
		-0.378577, 0.923840, 0.056554,
		-0.892801, -0.348377, -0.285553,
		34.795303, 30.752024, 36.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037022, 31.443911, 37.193512>,  <35.420265, 30.995888, 36.864868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037022, 31.443911, 37.193512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912239, 31.069542, 37.128105>,  <34.837368, 30.844921, 37.088863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912239, 31.069542, 37.128105>,  <35.037022, 31.443911, 37.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912239, 31.069542, 37.128105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069642, -0.149115, 0.986364,
		-0.947540, 0.319091, -0.018662,
		-0.311958, -0.935920, -0.163515,
		34.818653, 30.788767, 37.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601273, 32.029800, 37.022022>,  <35.037022, 31.443911, 37.193512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601273, 32.029800, 37.022022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432549, 32.287521, 37.277191>,  <34.331314, 32.442154, 37.430294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432549, 32.287521, 37.277191>,  <34.601273, 32.029800, 37.022022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432549, 32.287521, 37.277191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881909, -0.128211, -0.453650,
		-0.210500, -0.753946, 0.622299,
		-0.421813, 0.644304, 0.637923,
		34.306004, 32.480812, 37.468567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115368, 31.850998, 36.503815>,  <34.601273, 32.029800, 37.022022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115368, 31.850998, 36.503815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440548, 31.741461, 36.709385>,  <35.635658, 31.675739, 36.832726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440548, 31.741461, 36.709385>,  <35.115368, 31.850998, 36.503815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440548, 31.741461, 36.709385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580600, -0.313234, 0.751524,
		-0.044821, -0.909337, -0.413638,
		0.812954, -0.273843, 0.513922,
		35.684433, 31.659307, 36.863560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915829, 31.648903, 35.820553>,  <35.115368, 31.850998, 36.503815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915829, 31.648903, 35.820553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161072, 31.542343, 35.523064>,  <35.308220, 31.478407, 35.344570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161072, 31.542343, 35.523064>,  <34.915829, 31.648903, 35.820553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161072, 31.542343, 35.523064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558668, 0.519416, -0.646605,
		0.558556, 0.811935, 0.169632,
		0.613111, -0.266397, -0.743725,
		35.345005, 31.462423, 35.299946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280956, 32.147926, 35.511295>,  <34.915829, 31.648903, 35.820553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280956, 32.147926, 35.511295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250492, 31.899179, 35.199532>,  <35.232212, 31.749931, 35.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250492, 31.899179, 35.199532>,  <35.280956, 32.147926, 35.511295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250492, 31.899179, 35.199532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524228, 0.689902, -0.499218,
		0.848165, 0.370567, -0.378545,
		-0.076165, -0.621864, -0.779413,
		35.227642, 31.712620, 34.965706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395031, 32.524132, 34.838737>,  <35.280956, 32.147926, 35.511295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395031, 32.524132, 34.838737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173431, 32.203232, 34.749763>,  <35.040470, 32.010693, 34.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173431, 32.203232, 34.749763>,  <35.395031, 32.524132, 34.838737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173431, 32.203232, 34.749763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630854, 0.578884, -0.516639,
		0.543240, -0.145891, -0.826805,
		-0.553997, -0.802252, -0.222437,
		35.007233, 31.962557, 34.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173599, 32.708916, 34.164261>,  <35.395031, 32.524132, 34.838737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173599, 32.708916, 34.164261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914505, 32.415997, 34.248344>,  <34.759048, 32.240246, 34.298794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914505, 32.415997, 34.248344>,  <35.173599, 32.708916, 34.164261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914505, 32.415997, 34.248344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692387, 0.450693, -0.563450,
		0.317873, -0.510508, -0.798961,
		-0.647732, -0.732296, 0.210206,
		34.720184, 32.196308, 34.311405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900517, 32.446648, 33.500324>,  <35.173599, 32.708916, 34.164261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900517, 32.446648, 33.500324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643822, 32.373337, 33.798206>,  <34.489807, 32.329350, 33.976936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643822, 32.373337, 33.798206>,  <34.900517, 32.446648, 33.500324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643822, 32.373337, 33.798206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719356, 0.480510, -0.501634,
		-0.265900, -0.857625, -0.440201,
		-0.641735, -0.183277, 0.744705,
		34.451302, 32.318352, 34.021618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331570, 32.539558, 33.182632>,  <34.900517, 32.446648, 33.500324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331570, 32.539558, 33.182632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183670, 32.541477, 33.554279>,  <34.094933, 32.542629, 33.777267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183670, 32.541477, 33.554279>,  <34.331570, 32.539558, 33.182632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183670, 32.541477, 33.554279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743925, 0.597574, -0.299133,
		-0.556654, -0.801799, -0.217382,
		-0.369747, 0.004798, 0.929120,
		34.072746, 32.542915, 33.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694115, 32.282845, 33.051277>,  <34.331570, 32.539558, 33.182632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694115, 32.282845, 33.051277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721333, 32.502094, 33.384727>,  <33.737663, 32.633644, 33.584797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721333, 32.502094, 33.384727>,  <33.694115, 32.282845, 33.051277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721333, 32.502094, 33.384727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668776, 0.645098, -0.369576,
		-0.740343, -0.532360, 0.410468,
		0.068045, 0.548125, 0.833624,
		33.741745, 32.666531, 33.634815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059399, 32.569378, 33.098351>,  <33.694115, 32.282845, 33.051277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059399, 32.569378, 33.098351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253304, 32.805084, 33.356888>,  <33.369648, 32.946510, 33.512012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253304, 32.805084, 33.356888>,  <33.059399, 32.569378, 33.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253304, 32.805084, 33.356888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606625, 0.758874, -0.236888,
		-0.630086, -0.277255, 0.725342,
		0.484765, 0.589270, 0.646346,
		33.398731, 32.981865, 33.550793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527092, 32.950260, 33.517948>,  <33.059399, 32.569378, 33.098351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527092, 32.950260, 33.517948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860271, 33.171280, 33.529774>,  <33.060181, 33.303894, 33.536869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860271, 33.171280, 33.529774>,  <32.527092, 32.950260, 33.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860271, 33.171280, 33.529774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542147, 0.825625, -0.156267,
		-0.110755, 0.114135, 0.987272,
		0.832952, 0.552554, 0.029564,
		33.110157, 33.337048, 33.538643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357174, 33.649742, 33.765560>,  <32.527092, 32.950260, 33.517948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357174, 33.649742, 33.765560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730923, 33.730270, 33.647968>,  <32.955170, 33.778587, 33.577415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730923, 33.730270, 33.647968>,  <32.357174, 33.649742, 33.765560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730923, 33.730270, 33.647968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254489, 0.954548, -0.155159,
		0.249377, 0.219790, 0.943135,
		0.934370, 0.201324, -0.293976,
		33.011234, 33.790668, 33.559776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615540, 34.329426, 34.164375>,  <32.357174, 33.649742, 33.765560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615540, 34.329426, 34.164375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811207, 34.270004, 33.820599>,  <32.928608, 34.234352, 33.614330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811207, 34.270004, 33.820599>,  <32.615540, 34.329426, 34.164375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811207, 34.270004, 33.820599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265228, 0.913386, -0.308835,
		0.830883, 0.379022, 0.407402,
		0.489171, -0.148551, -0.859444,
		32.957958, 34.225437, 33.562767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049828, 34.914673, 34.081245>,  <32.615540, 34.329426, 34.164375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049828, 34.914673, 34.081245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986008, 34.753136, 33.720921>,  <32.947716, 34.656216, 33.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986008, 34.753136, 33.720921>,  <33.049828, 34.914673, 34.081245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986008, 34.753136, 33.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279224, 0.893698, -0.351196,
		0.946878, 0.195494, -0.255351,
		-0.159550, -0.403840, -0.900809,
		32.938141, 34.631985, 33.450676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311352, 35.394901, 33.622890>,  <33.049828, 34.914673, 34.081245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311352, 35.394901, 33.622890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112591, 35.178089, 33.351807>,  <32.993336, 35.048000, 33.189156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112591, 35.178089, 33.351807>,  <33.311352, 35.394901, 33.622890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112591, 35.178089, 33.351807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190607, 0.830045, -0.524113,
		0.846616, -0.131255, -0.515764,
		-0.496900, -0.542030, -0.677712,
		32.963520, 35.015480, 33.148495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399689, 35.796806, 32.990231>,  <33.311352, 35.394901, 33.622890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399689, 35.796806, 32.990231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095566, 35.549961, 32.909130>,  <32.913094, 35.401855, 32.860470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095566, 35.549961, 32.909130>,  <33.399689, 35.796806, 32.990231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095566, 35.549961, 32.909130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307246, 0.616670, -0.724789,
		0.572305, -0.488767, -0.658463,
		-0.760307, -0.617110, -0.202751,
		32.867474, 35.364826, 32.848305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337074, 35.771191, 32.189411>,  <33.399689, 35.796806, 32.990231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337074, 35.771191, 32.189411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969212, 35.683712, 32.319893>,  <32.748493, 35.631226, 32.398182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969212, 35.683712, 32.319893>,  <33.337074, 35.771191, 32.189411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969212, 35.683712, 32.319893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386186, 0.654564, -0.649928,
		-0.071383, -0.723684, -0.686430,
		-0.919655, -0.218696, 0.326201,
		32.693314, 35.618103, 32.417751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979000, 35.864960, 31.561378>,  <33.337074, 35.771191, 32.189411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979000, 35.864960, 31.561378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691498, 35.863487, 31.839481>,  <32.518997, 35.862606, 32.006344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691498, 35.863487, 31.839481>,  <32.979000, 35.864960, 31.561378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691498, 35.863487, 31.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589712, 0.532921, -0.606823,
		-0.368286, -0.846157, -0.385207,
		-0.718753, -0.003677, 0.695256,
		32.475872, 35.862385, 32.048058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347923, 35.765591, 31.154207>,  <32.979000, 35.864960, 31.561378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347923, 35.765591, 31.154207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231541, 35.909859, 31.508667>,  <32.161709, 35.996418, 31.721342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231541, 35.909859, 31.508667>,  <32.347923, 35.765591, 31.154207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231541, 35.909859, 31.508667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619303, 0.634993, -0.461788,
		-0.729250, -0.683157, 0.038604,
		-0.290960, 0.360666, 0.886150,
		32.144253, 36.018059, 31.774511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653864, 35.949429, 31.089691>,  <32.347923, 35.765591, 31.154207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653864, 35.949429, 31.089691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747847, 36.154057, 31.420288>,  <31.804235, 36.276833, 31.618647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747847, 36.154057, 31.420288>,  <31.653864, 35.949429, 31.089691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747847, 36.154057, 31.420288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415568, 0.821534, -0.390365,
		-0.878692, -0.251745, 0.405617,
		0.234956, 0.511572, 0.826492,
		31.818333, 36.307529, 31.668236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052610, 36.238972, 31.263090>,  <31.653864, 35.949429, 31.089691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052610, 36.238972, 31.263090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325676, 36.470089, 31.442032>,  <31.489515, 36.608761, 31.549397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325676, 36.470089, 31.442032>,  <31.052610, 36.238972, 31.263090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325676, 36.470089, 31.442032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500777, 0.815755, -0.289425,
		-0.532158, -0.026444, 0.846232,
		0.682665, 0.577793, 0.447352,
		31.530476, 36.643425, 31.576237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711838, 36.697460, 31.764536>,  <31.052610, 36.238972, 31.263090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711838, 36.697460, 31.764536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062342, 36.861515, 31.663378>,  <31.272644, 36.959946, 31.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062342, 36.861515, 31.663378>,  <30.711838, 36.697460, 31.764536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062342, 36.861515, 31.663378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469677, 0.844211, -0.258288,
		0.107563, 0.345106, 0.932380,
		0.876261, 0.410135, -0.252894,
		31.325220, 36.984554, 31.587509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643391, 37.366779, 31.983404>,  <30.711838, 36.697460, 31.764536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643391, 37.366779, 31.983404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974165, 37.396030, 31.760397>,  <31.172630, 37.413582, 31.626593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974165, 37.396030, 31.760397>,  <30.643391, 37.366779, 31.983404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974165, 37.396030, 31.760397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262073, 0.927355, -0.267079,
		0.497488, 0.366968, 0.786028,
		0.826936, 0.073128, -0.557520,
		31.222246, 37.417969, 31.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836729, 38.099369, 31.955481>,  <30.643391, 37.366779, 31.983404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836729, 38.099369, 31.955481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998384, 37.927681, 31.632385>,  <31.095379, 37.824669, 31.438528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998384, 37.927681, 31.632385>,  <30.836729, 38.099369, 31.955481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998384, 37.927681, 31.632385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233381, 0.805455, -0.544771,
		0.884423, 0.408675, 0.225345,
		0.404140, -0.429217, -0.807740,
		31.119627, 37.798916, 31.390062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974503, 38.667854, 31.584631>,  <30.836729, 38.099369, 31.955481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974503, 38.667854, 31.584631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027819, 38.383869, 31.308025>,  <31.059809, 38.213478, 31.142061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027819, 38.383869, 31.308025>,  <30.974503, 38.667854, 31.584631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027819, 38.383869, 31.308025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204783, 0.662954, -0.720109,
		0.969689, 0.237595, -0.057021,
		0.133293, -0.709958, -0.691514,
		31.067806, 38.170883, 31.100571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340879, 39.009308, 31.080690>,  <30.974503, 38.667854, 31.584631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340879, 39.009308, 31.080690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172342, 38.704365, 30.884212>,  <31.071220, 38.521397, 30.766325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172342, 38.704365, 30.884212>,  <31.340879, 39.009308, 31.080690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172342, 38.704365, 30.884212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149010, 0.592455, -0.791703,
		0.894576, -0.260386, -0.363226,
		-0.421343, -0.762363, -0.491196,
		31.045938, 38.475655, 30.736855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575056, 39.015770, 30.403170>,  <31.340879, 39.009308, 31.080690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575056, 39.015770, 30.403170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241478, 38.798733, 30.362919>,  <31.041330, 38.668510, 30.338768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241478, 38.798733, 30.362919>,  <31.575056, 39.015770, 30.403170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241478, 38.798733, 30.362919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151934, 0.401055, -0.903367,
		0.530519, -0.738070, -0.416896,
		-0.833946, -0.542594, -0.100629,
		30.991295, 38.635956, 30.332729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657820, 38.726463, 29.718531>,  <31.575056, 39.015770, 30.403170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657820, 38.726463, 29.718531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264799, 38.693127, 29.785040>,  <31.028986, 38.673126, 29.824945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264799, 38.693127, 29.785040>,  <31.657820, 38.726463, 29.718531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264799, 38.693127, 29.785040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185385, 0.366857, -0.911619,
		0.014973, -0.926537, -0.375906,
		-0.982552, -0.083337, 0.166273,
		30.970034, 38.668125, 29.834921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437176, 38.435295, 29.073790>,  <31.657820, 38.726463, 29.718531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437176, 38.435295, 29.073790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096079, 38.563057, 29.239107>,  <30.891420, 38.639713, 29.338297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096079, 38.563057, 29.239107>,  <31.437176, 38.435295, 29.073790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096079, 38.563057, 29.239107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345190, 0.249231, -0.904836,
		-0.392011, -0.914258, -0.102276,
		-0.852743, 0.319401, 0.413294,
		30.840256, 38.658878, 29.363094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947186, 38.075779, 28.751152>,  <31.437176, 38.435295, 29.073790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947186, 38.075779, 28.751152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789446, 38.407562, 28.909388>,  <30.694801, 38.606632, 29.004330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789446, 38.407562, 28.909388>,  <30.947186, 38.075779, 28.751152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789446, 38.407562, 28.909388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249456, 0.317691, -0.914792,
		-0.884455, -0.459429, 0.081632,
		-0.394349, 0.829456, 0.395591,
		30.671141, 38.656399, 29.028065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308407, 38.209625, 28.360546>,  <30.947186, 38.075779, 28.751152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308407, 38.209625, 28.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418638, 38.564758, 28.507954>,  <30.484777, 38.777840, 28.596397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418638, 38.564758, 28.507954>,  <30.308407, 38.209625, 28.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418638, 38.564758, 28.507954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230248, 0.433169, -0.871407,
		-0.933296, 0.155292, 0.323795,
		0.275580, 0.887834, 0.368519,
		30.501312, 38.831108, 28.618509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761049, 38.694744, 28.162285>,  <30.308407, 38.209625, 28.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761049, 38.694744, 28.162285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107265, 38.887844, 28.215645>,  <30.314995, 39.003704, 28.247662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107265, 38.887844, 28.215645>,  <29.761049, 38.694744, 28.162285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107265, 38.887844, 28.215645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158039, 0.515999, -0.841884,
		-0.475250, 0.707603, 0.522911,
		0.865541, 0.482746, 0.133399,
		30.366928, 39.032669, 28.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608273, 39.352230, 28.005136>,  <29.761049, 38.694744, 28.162285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608273, 39.352230, 28.005136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005344, 39.330933, 27.961769>,  <30.243587, 39.318153, 27.935749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005344, 39.330933, 27.961769>,  <29.608273, 39.352230, 28.005136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005344, 39.330933, 27.961769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085472, 0.324563, -0.941994,
		0.085348, 0.944364, 0.317635,
		0.992678, -0.053248, -0.108417,
		30.303148, 39.314957, 27.929243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762972, 39.865669, 27.552382>,  <29.608273, 39.352230, 28.005136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762972, 39.865669, 27.552382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103556, 39.657688, 27.525072>,  <30.307905, 39.532898, 27.508686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103556, 39.657688, 27.525072>,  <29.762972, 39.865669, 27.552382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103556, 39.657688, 27.525072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031265, 0.079632, -0.996334,
		0.523487, 0.850473, 0.051547,
		0.851460, -0.519956, -0.068276,
		30.358994, 39.501701, 27.504589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180307, 40.247734, 27.138706>,  <29.762972, 39.865669, 27.552382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180307, 40.247734, 27.138706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330889, 39.879768, 27.094822>,  <30.421238, 39.658989, 27.068491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330889, 39.879768, 27.094822>,  <30.180307, 40.247734, 27.138706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330889, 39.879768, 27.094822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042769, 0.101041, -0.993962,
		0.925449, 0.378871, -0.001307,
		0.376451, -0.919917, -0.109712,
		30.443825, 39.603794, 27.061909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725412, 40.329662, 26.645811>,  <30.180307, 40.247734, 27.138706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725412, 40.329662, 26.645811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626972, 39.942017, 26.652185>,  <30.567909, 39.709431, 26.656010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626972, 39.942017, 26.652185>,  <30.725412, 40.329662, 26.645811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626972, 39.942017, 26.652185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020071, -0.021531, -0.999567,
		0.969037, -0.245672, 0.024750,
		-0.246099, -0.969114, 0.015934,
		30.553143, 39.651283, 26.656965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235920, 40.032436, 26.132561>,  <30.725412, 40.329662, 26.645811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235920, 40.032436, 26.132561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938093, 39.775352, 26.204721>,  <30.759398, 39.621101, 26.248018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938093, 39.775352, 26.204721>,  <31.235920, 40.032436, 26.132561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938093, 39.775352, 26.204721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003648, -0.274158, -0.961678,
		0.667540, -0.715373, 0.206473,
		-0.744565, -0.642712, 0.180402,
		30.714724, 39.582539, 26.258842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499680, 39.417870, 25.852465>,  <31.235920, 40.032436, 26.132561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499680, 39.417870, 25.852465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103962, 39.364033, 25.875019>,  <30.866531, 39.331730, 25.888552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103962, 39.364033, 25.875019>,  <31.499680, 39.417870, 25.852465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103962, 39.364033, 25.875019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001946, -0.398529, -0.917154,
		0.145913, -0.907226, 0.394525,
		-0.989296, -0.134592, 0.056385,
		30.807173, 39.323654, 25.891935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386389, 38.705982, 25.728739>,  <31.499680, 39.417870, 25.852465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386389, 38.705982, 25.728739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040312, 38.880493, 25.629860>,  <30.832666, 38.985199, 25.570534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040312, 38.880493, 25.629860>,  <31.386389, 38.705982, 25.728739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040312, 38.880493, 25.629860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096193, -0.339410, -0.935707,
		-0.492127, -0.833345, 0.251688,
		-0.865192, 0.436276, -0.247195,
		30.780754, 39.011375, 25.555702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037016, 38.236748, 25.272245>,  <31.386389, 38.705982, 25.728739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037016, 38.236748, 25.272245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814157, 38.557617, 25.186352>,  <30.680443, 38.750137, 25.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814157, 38.557617, 25.186352>,  <31.037016, 38.236748, 25.272245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814157, 38.557617, 25.186352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102737, -0.323186, -0.940742,
		-0.824036, -0.502068, 0.262474,
		-0.557145, 0.802171, -0.214736,
		30.647015, 38.798267, 25.121931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622581, 37.998661, 24.782732>,  <31.037016, 38.236748, 25.272245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622581, 37.998661, 24.782732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592014, 38.395367, 24.741611>,  <30.573675, 38.633389, 24.716940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592014, 38.395367, 24.741611>,  <30.622581, 37.998661, 24.782732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592014, 38.395367, 24.741611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139951, -0.112750, -0.983718,
		-0.987205, -0.060784, 0.147414,
		-0.076415, 0.991763, -0.102800,
		30.569090, 38.692894, 24.710772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088493, 38.130680, 24.285589>,  <30.622581, 37.998661, 24.782732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088493, 38.130680, 24.285589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300980, 38.469517, 24.279266>,  <30.428473, 38.672817, 24.275473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300980, 38.469517, 24.279266>,  <30.088493, 38.130680, 24.285589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300980, 38.469517, 24.279266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110391, 0.050702, -0.992594,
		-0.840013, 0.529029, 0.120445,
		0.531218, 0.847088, -0.015810,
		30.460344, 38.723644, 24.274523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812395, 38.452808, 23.698942>,  <30.088493, 38.130680, 24.285589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812395, 38.452808, 23.698942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132156, 38.682835, 23.768515>,  <30.324013, 38.820850, 23.810257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132156, 38.682835, 23.768515>,  <29.812395, 38.452808, 23.698942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132156, 38.682835, 23.768515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040551, 0.340484, -0.939375,
		-0.599423, 0.743888, 0.295504,
		0.799404, 0.575067, 0.173929,
		30.371977, 38.855354, 23.820694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691389, 39.184719, 23.425037>,  <29.812395, 38.452808, 23.698942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691389, 39.184719, 23.425037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090017, 39.162704, 23.449751>,  <30.329195, 39.149494, 23.464579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090017, 39.162704, 23.449751>,  <29.691389, 39.184719, 23.425037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090017, 39.162704, 23.449751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080202, 0.458923, -0.884849,
		0.020346, 0.886770, 0.461764,
		0.996571, -0.055038, 0.061784,
		30.388988, 39.146194, 23.468287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913250, 39.837669, 23.408680>,  <29.691389, 39.184719, 23.425037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913250, 39.837669, 23.408680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219307, 39.621422, 23.268803>,  <30.402941, 39.491673, 23.184875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219307, 39.621422, 23.268803>,  <29.913250, 39.837669, 23.408680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219307, 39.621422, 23.268803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073660, 0.613053, -0.786600,
		0.639635, 0.576102, 0.508894,
		0.765141, -0.540622, -0.349695,
		30.448849, 39.459236, 23.163895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468054, 40.158867, 23.619522>,  <29.913250, 39.837669, 23.408680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468054, 40.158867, 23.619522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478567, 39.940487, 23.284561>,  <30.484875, 39.809460, 23.083584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478567, 39.940487, 23.284561>,  <30.468054, 40.158867, 23.619522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478567, 39.940487, 23.284561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133139, 0.832142, -0.538344,
		0.990749, -0.097342, 0.094559,
		0.026283, -0.545953, -0.837404,
		30.486452, 39.776703, 23.033340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757338, 40.781414, 23.187447>,  <30.468054, 40.158867, 23.619522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757338, 40.781414, 23.187447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886280, 40.470089, 22.971922>,  <30.963646, 40.283295, 22.842607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886280, 40.470089, 22.971922>,  <30.757338, 40.781414, 23.187447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886280, 40.470089, 22.971922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333860, 0.626099, -0.704654,
		0.885789, 0.047263, 0.461674,
		0.322358, -0.778310, -0.538813,
		30.982986, 40.236595, 22.810278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470121, 40.201164, 22.667784>,  <30.757338, 40.781414, 23.187447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470121, 40.201164, 22.667784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684765, 40.128986, 22.338058>,  <30.813551, 40.085682, 22.140223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684765, 40.128986, 22.338058>,  <30.470121, 40.201164, 22.667784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684765, 40.128986, 22.338058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762507, 0.314732, -0.565266,
		0.361436, 0.931872, 0.031299,
		0.536607, -0.180441, -0.824314,
		30.845747, 40.074856, 22.090765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625217, 40.871372, 22.212883>,  <30.470121, 40.201164, 22.667784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625217, 40.871372, 22.212883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567064, 40.521587, 22.027765>,  <30.532171, 40.311718, 21.916695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567064, 40.521587, 22.027765>,  <30.625217, 40.871372, 22.212883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567064, 40.521587, 22.027765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709089, 0.418304, -0.567640,
		0.689969, 0.245637, -0.680886,
		-0.145384, -0.874462, -0.462795,
		30.523449, 40.259247, 21.888927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763632, 40.809906, 21.379709>,  <30.625217, 40.871372, 22.212883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763632, 40.809906, 21.379709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463022, 40.614143, 21.556658>,  <30.282656, 40.496685, 21.662827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463022, 40.614143, 21.556658>,  <30.763632, 40.809906, 21.379709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463022, 40.614143, 21.556658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656750, 0.618415, -0.431558,
		-0.062362, -0.614854, -0.786171,
		-0.751525, -0.489405, 0.442371,
		30.237564, 40.467323, 21.689369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143757, 40.288528, 21.030497>,  <30.763632, 40.809906, 21.379709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143757, 40.288528, 21.030497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764023, 40.362835, 21.131891>,  <30.536182, 40.407417, 21.192728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764023, 40.362835, 21.131891>,  <31.143757, 40.288528, 21.030497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764023, 40.362835, 21.131891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005667, -0.816586, 0.577195,
		0.314217, 0.546515, 0.776266,
		-0.949335, 0.185764, 0.253488,
		30.479223, 40.418564, 21.207937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218445, 39.712479, 20.579880>,  <31.143757, 40.288528, 21.030497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218445, 39.712479, 20.579880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003819, 39.509819, 20.309944>,  <30.875044, 39.388222, 20.147984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003819, 39.509819, 20.309944>,  <31.218445, 39.712479, 20.579880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003819, 39.509819, 20.309944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031248, -0.787227, 0.615871,
		-0.843281, 0.351541, 0.406566,
		-0.536564, -0.506648, -0.674839,
		30.842850, 39.357826, 20.107492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548008, 39.371025, 20.809002>,  <31.218445, 39.712479, 20.579880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548008, 39.371025, 20.809002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778765, 39.188023, 20.538334>,  <30.917219, 39.078220, 20.375933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778765, 39.188023, 20.538334>,  <30.548008, 39.371025, 20.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778765, 39.188023, 20.538334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116717, -0.773750, 0.622646,
		-0.808438, -0.438179, -0.392972,
		0.576892, -0.457504, -0.676672,
		30.951832, 39.050770, 20.335333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338085, 38.704277, 20.635262>,  <30.548008, 39.371025, 20.809002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338085, 38.704277, 20.635262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736609, 38.714638, 20.602514>,  <30.975721, 38.720856, 20.582867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736609, 38.714638, 20.602514>,  <30.338085, 38.704277, 20.635262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736609, 38.714638, 20.602514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069249, -0.806153, 0.587641,
		-0.050776, -0.591140, -0.804969,
		0.996306, 0.025905, -0.081869,
		31.035500, 38.722408, 20.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608606, 38.045685, 20.429255>,  <30.338085, 38.704277, 20.635262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608606, 38.045685, 20.429255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869648, 38.240719, 20.661243>,  <31.026272, 38.357738, 20.800436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869648, 38.240719, 20.661243>,  <30.608606, 38.045685, 20.429255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869648, 38.240719, 20.661243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186292, -0.845194, 0.500941,
		0.734442, -0.218872, -0.642410,
		0.652603, 0.487588, 0.579972,
		31.065430, 38.386993, 20.835236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235189, 37.757816, 20.322388>,  <30.608606, 38.045685, 20.429255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235189, 37.757816, 20.322388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215796, 37.918179, 20.688320>,  <31.204159, 38.014397, 20.907881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215796, 37.918179, 20.688320>,  <31.235189, 37.757816, 20.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215796, 37.918179, 20.688320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401634, -0.830776, 0.385359,
		0.914516, 0.386112, -0.120740,
		-0.048484, 0.400910, 0.914833,
		31.201250, 38.038452, 20.962770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757782, 37.403503, 20.603043>,  <31.235189, 37.757816, 20.322388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757782, 37.403503, 20.603043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552795, 37.563656, 20.906904>,  <31.429804, 37.659748, 21.089222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552795, 37.563656, 20.906904>,  <31.757782, 37.403503, 20.603043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552795, 37.563656, 20.906904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348251, -0.711728, 0.610053,
		0.784920, 0.577182, 0.225302,
		-0.512465, 0.400381, 0.759654,
		31.399055, 37.683769, 21.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206966, 37.281219, 21.153358>,  <31.757782, 37.403503, 20.603043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206966, 37.281219, 21.153358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857296, 37.343651, 21.337297>,  <31.647495, 37.381111, 21.447660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857296, 37.343651, 21.337297>,  <32.206966, 37.281219, 21.153358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857296, 37.343651, 21.337297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253699, -0.660656, 0.706520,
		0.414075, 0.734283, 0.537931,
		-0.874173, 0.156080, 0.459848,
		31.595043, 37.390476, 21.475252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368279, 37.104763, 21.780346>,  <32.206966, 37.281219, 21.153358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368279, 37.104763, 21.780346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969154, 37.084351, 21.763535>,  <31.729679, 37.072102, 21.753448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969154, 37.084351, 21.763535>,  <32.368279, 37.104763, 21.780346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969154, 37.084351, 21.763535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006964, -0.551006, 0.834472,
		-0.065745, 0.832939, 0.549445,
		-0.997812, -0.051036, -0.042026,
		31.669811, 37.069038, 21.750927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055836, 37.185581, 22.475466>,  <32.368279, 37.104763, 21.780346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055836, 37.185581, 22.475466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739769, 37.013081, 22.301266>,  <31.550129, 36.909580, 22.196745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739769, 37.013081, 22.301266>,  <32.055836, 37.185581, 22.475466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739769, 37.013081, 22.301266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001513, -0.711937, 0.702241,
		-0.612892, 0.554228, 0.563201,
		-0.790165, -0.431250, -0.435502,
		31.502720, 36.883705, 22.170614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568224, 36.966667, 23.043924>,  <32.055836, 37.185581, 22.475466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568224, 36.966667, 23.043924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463097, 36.737980, 22.733038>,  <31.400021, 36.600769, 22.546507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463097, 36.737980, 22.733038>,  <31.568224, 36.966667, 23.043924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463097, 36.737980, 22.733038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061912, -0.813867, 0.577743,
		-0.962856, 0.103723, 0.249297,
		-0.262820, -0.571718, -0.777216,
		31.384251, 36.566463, 22.499874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034260, 36.604511, 23.327755>,  <31.568224, 36.966667, 23.043924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034260, 36.604511, 23.327755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171608, 36.384777, 23.023039>,  <31.254017, 36.252937, 22.840210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171608, 36.384777, 23.023039>,  <31.034260, 36.604511, 23.327755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171608, 36.384777, 23.023039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027696, -0.804829, 0.592860,
		-0.938791, -0.224670, -0.261141,
		0.343372, -0.549339, -0.761789,
		31.274620, 36.219975, 22.794502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565491, 36.001274, 23.300554>,  <31.034260, 36.604511, 23.327755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565491, 36.001274, 23.300554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922901, 35.936039, 23.133217>,  <31.137348, 35.896896, 23.032814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922901, 35.936039, 23.133217>,  <30.565491, 36.001274, 23.300554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922901, 35.936039, 23.133217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056066, -0.883887, 0.464327,
		-0.445493, -0.438345, -0.780634,
		0.893528, -0.163087, -0.418342,
		31.190960, 35.887112, 23.007713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550255, 35.299530, 23.166925>,  <30.565491, 36.001274, 23.300554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550255, 35.299530, 23.166925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931364, 35.418682, 23.143309>,  <31.160030, 35.490173, 23.129139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931364, 35.418682, 23.143309>,  <30.550255, 35.299530, 23.166925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931364, 35.418682, 23.143309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287558, -0.822491, 0.490734,
		0.097620, -0.484537, -0.869307,
		0.952775, 0.297882, -0.059041,
		31.217197, 35.508045, 23.125597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864355, 34.714531, 22.987926>,  <30.550255, 35.299530, 23.166925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864355, 34.714531, 22.987926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167435, 34.928608, 23.137304>,  <31.349283, 35.057053, 23.226931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167435, 34.928608, 23.137304>,  <30.864355, 34.714531, 22.987926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167435, 34.928608, 23.137304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410812, -0.835788, 0.364269,
		0.507076, -0.122589, -0.853139,
		0.757699, 0.535192, 0.373447,
		31.394745, 35.089165, 23.249338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433006, 34.181942, 23.099796>,  <30.864355, 34.714531, 22.987926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433006, 34.181942, 23.099796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514431, 34.498711, 23.330074>,  <31.563286, 34.688770, 23.468241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514431, 34.498711, 23.330074>,  <31.433006, 34.181942, 23.099796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514431, 34.498711, 23.330074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392245, -0.604719, 0.693151,
		0.897054, 0.084714, -0.433725,
		0.203562, 0.791921, 0.575694,
		31.575499, 34.736286, 23.502783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168468, 34.101654, 23.355474>,  <31.433006, 34.181942, 23.099796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168468, 34.101654, 23.355474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992065, 34.346565, 23.617964>,  <31.886223, 34.493511, 23.775457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992065, 34.346565, 23.617964>,  <32.168468, 34.101654, 23.355474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992065, 34.346565, 23.617964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373904, -0.539353, 0.754515,
		0.815907, 0.578114, 0.008928,
		-0.441011, 0.612276, 0.656222,
		31.859762, 34.530247, 23.814831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585228, 33.984501, 23.881975>,  <32.168468, 34.101654, 23.355474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585228, 33.984501, 23.881975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299004, 34.202080, 24.057285>,  <32.127270, 34.332626, 24.162472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299004, 34.202080, 24.057285>,  <32.585228, 33.984501, 23.881975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299004, 34.202080, 24.057285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213083, -0.427543, 0.878523,
		0.665255, 0.722029, 0.190028,
		-0.715564, 0.543950, 0.438277,
		32.084335, 34.365265, 24.188768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875523, 34.106926, 24.444866>,  <32.585228, 33.984501, 23.881975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875523, 34.106926, 24.444866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492210, 34.174870, 24.536816>,  <32.262222, 34.215633, 24.591986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492210, 34.174870, 24.536816>,  <32.875523, 34.106926, 24.444866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492210, 34.174870, 24.536816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161278, -0.342646, 0.925518,
		0.235969, 0.923982, 0.300958,
		-0.958284, 0.169856, 0.229872,
		32.204723, 34.225826, 24.605778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843136, 34.520214, 25.067678>,  <32.875523, 34.106926, 24.444866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843136, 34.520214, 25.067678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509647, 34.300705, 25.043121>,  <32.309555, 34.168999, 25.028387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509647, 34.300705, 25.043121>,  <32.843136, 34.520214, 25.067678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509647, 34.300705, 25.043121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227502, -0.442666, 0.867346,
		-0.503150, 0.709154, 0.493904,
		-0.833717, -0.548769, -0.061393,
		32.259533, 34.136074, 25.024704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703564, 34.450619, 25.689110>,  <32.843136, 34.520214, 25.067678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703564, 34.450619, 25.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450745, 34.181362, 25.535543>,  <32.299053, 34.019806, 25.443403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450745, 34.181362, 25.535543>,  <32.703564, 34.450619, 25.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450745, 34.181362, 25.535543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015523, -0.484322, 0.874752,
		-0.774774, 0.558845, 0.295666,
		-0.632048, -0.673145, -0.383915,
		32.261131, 33.979420, 25.420368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015327, 34.473434, 26.120516>,  <32.703564, 34.450619, 25.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015327, 34.473434, 26.120516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052162, 34.118946, 25.938910>,  <32.074265, 33.906254, 25.829945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052162, 34.118946, 25.938910>,  <32.015327, 34.473434, 26.120516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052162, 34.118946, 25.938910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095949, -0.461729, 0.881816,
		-0.991118, -0.037641, -0.127550,
		0.092086, -0.886222, -0.454017,
		32.079788, 33.853081, 25.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556622, 34.083942, 26.511005>,  <32.015327, 34.473434, 26.120516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556622, 34.083942, 26.511005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804255, 33.819183, 26.341946>,  <31.952833, 33.660328, 26.240509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804255, 33.819183, 26.341946>,  <31.556622, 34.083942, 26.511005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804255, 33.819183, 26.341946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042326, -0.509280, 0.859559,
		-0.784186, -0.550025, -0.287270,
		0.619080, -0.661896, -0.422651,
		31.989979, 33.620613, 26.215151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232473, 33.544300, 26.822002>,  <31.556622, 34.083942, 26.511005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232473, 33.544300, 26.822002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595236, 33.430798, 26.697420>,  <31.812893, 33.362698, 26.622669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595236, 33.430798, 26.697420>,  <31.232473, 33.544300, 26.822002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595236, 33.430798, 26.697420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132649, -0.509337, 0.850282,
		-0.399908, -0.812440, -0.424281,
		0.906906, -0.283754, -0.311457,
		31.867308, 33.345673, 26.603983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399862, 32.763439, 26.977699>,  <31.232473, 33.544300, 26.822002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399862, 32.763439, 26.977699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778818, 32.880444, 26.925709>,  <32.006191, 32.950645, 26.894514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778818, 32.880444, 26.925709>,  <31.399862, 32.763439, 26.977699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778818, 32.880444, 26.925709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277694, -0.549156, 0.788235,
		0.159186, -0.782859, -0.601492,
		0.947389, 0.292507, -0.129977,
		32.063034, 32.968197, 26.886715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810057, 32.169716, 27.235559>,  <31.399862, 32.763439, 26.977699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810057, 32.169716, 27.235559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047077, 32.491409, 27.217283>,  <32.189289, 32.684425, 27.206318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047077, 32.491409, 27.217283>,  <31.810057, 32.169716, 27.235559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047077, 32.491409, 27.217283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435873, -0.272414, 0.857791,
		0.677419, -0.528202, -0.511964,
		0.592553, 0.804235, -0.045690,
		32.224842, 32.732681, 27.203577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531315, 31.965729, 27.220442>,  <31.810057, 32.169716, 27.235559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531315, 31.965729, 27.220442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512478, 32.335754, 27.371195>,  <32.501175, 32.557770, 27.461647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512478, 32.335754, 27.371195>,  <32.531315, 31.965729, 27.220442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512478, 32.335754, 27.371195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577636, -0.282596, 0.765817,
		0.814935, 0.253767, -0.521041,
		-0.047095, 0.925063, 0.376883,
		32.498348, 32.613274, 27.484261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178955, 32.000511, 27.436462>,  <32.531315, 31.965729, 27.220442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178955, 32.000511, 27.436462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979809, 32.299976, 27.611563>,  <32.860321, 32.479656, 27.716623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979809, 32.299976, 27.611563>,  <33.178955, 32.000511, 27.436462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979809, 32.299976, 27.611563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525242, -0.141358, 0.839130,
		0.690108, 0.647701, -0.322853,
		-0.497868, 0.748666, 0.437752,
		32.830448, 32.524578, 27.742887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653336, 32.475132, 27.712561>,  <33.178955, 32.000511, 27.436462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653336, 32.475132, 27.712561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312473, 32.509731, 27.918999>,  <33.107956, 32.530491, 28.042862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312473, 32.509731, 27.918999>,  <33.653336, 32.475132, 27.712561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312473, 32.509731, 27.918999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496889, -0.175568, 0.849869,
		0.164118, 0.980660, 0.106633,
		-0.852154, 0.086494, 0.516094,
		33.056828, 32.535679, 28.073828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787354, 32.848202, 28.321753>,  <33.653336, 32.475132, 27.712561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787354, 32.848202, 28.321753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446941, 32.668278, 28.430141>,  <33.242695, 32.560326, 28.495174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446941, 32.668278, 28.430141>,  <33.787354, 32.848202, 28.321753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446941, 32.668278, 28.430141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422137, -0.279094, 0.862501,
		-0.312331, 0.848399, 0.427396,
		-0.851029, -0.449806, 0.270971,
		33.191631, 32.533337, 28.511433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707977, 33.095066, 29.031225>,  <33.787354, 32.848202, 28.321753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707977, 33.095066, 29.031225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472694, 32.775806, 28.979128>,  <33.331524, 32.584251, 28.947868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472694, 32.775806, 28.979128>,  <33.707977, 33.095066, 29.031225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472694, 32.775806, 28.979128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479369, -0.473826, 0.738711,
		-0.651316, 0.372083, 0.661318,
		-0.588212, -0.798150, -0.130245,
		33.296230, 32.536362, 28.940054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264465, 33.079899, 29.589060>,  <33.707977, 33.095066, 29.031225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264465, 33.079899, 29.589060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265694, 32.702518, 29.456463>,  <33.266430, 32.476089, 29.376905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265694, 32.702518, 29.456463>,  <33.264465, 33.079899, 29.589060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265694, 32.702518, 29.456463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375588, -0.306135, 0.874766,
		-0.926782, -0.127191, 0.353410,
		0.003071, -0.943453, -0.331492,
		33.266617, 32.419483, 29.357016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973064, 32.687149, 30.161236>,  <33.264465, 33.079899, 29.589060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973064, 32.687149, 30.161236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164761, 32.425205, 29.927488>,  <33.279778, 32.268040, 29.787241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164761, 32.425205, 29.927488>,  <32.973064, 32.687149, 30.161236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164761, 32.425205, 29.927488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333258, -0.480171, 0.811403,
		-0.811951, -0.583605, -0.011882,
		0.479244, -0.654859, -0.584367,
		33.308533, 32.228748, 29.752178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783073, 32.063866, 30.362543>,  <32.973064, 32.687149, 30.161236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783073, 32.063866, 30.362543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126457, 31.984327, 30.173437>,  <33.332489, 31.936604, 30.059973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126457, 31.984327, 30.173437>,  <32.783073, 32.063866, 30.362543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126457, 31.984327, 30.173437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326909, -0.498125, 0.803121,
		-0.395194, -0.843998, -0.362615,
		0.858459, -0.198846, -0.472766,
		33.383995, 31.924673, 30.031607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935108, 31.350775, 30.638355>,  <32.783073, 32.063866, 30.362543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935108, 31.350775, 30.638355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262882, 31.500935, 30.465107>,  <33.459549, 31.591030, 30.361158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262882, 31.500935, 30.465107>,  <32.935108, 31.350775, 30.638355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262882, 31.500935, 30.465107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561008, -0.370492, 0.740274,
		0.117432, -0.849594, -0.514198,
		0.819438, 0.375401, -0.433121,
		33.508713, 31.613554, 30.335171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362015, 30.786427, 30.511074>,  <32.935108, 31.350775, 30.638355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362015, 30.786427, 30.511074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617241, 31.094210, 30.522406>,  <33.770378, 31.278879, 30.529203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617241, 31.094210, 30.522406>,  <33.362015, 30.786427, 30.511074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617241, 31.094210, 30.522406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540929, -0.474134, 0.694689,
		0.547967, -0.427935, -0.718752,
		0.638066, 0.769460, 0.028328,
		33.808662, 31.325048, 30.530905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962513, 30.513901, 30.689631>,  <33.362015, 30.786427, 30.511074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962513, 30.513901, 30.689631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024647, 30.897047, 30.786263>,  <34.061928, 31.126936, 30.844242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024647, 30.897047, 30.786263>,  <33.962513, 30.513901, 30.689631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024647, 30.897047, 30.786263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686125, -0.280552, 0.671211,
		0.710707, 0.061493, -0.700796,
		0.155335, 0.957867, 0.241582,
		34.071247, 31.184406, 30.858738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622303, 30.603848, 30.600050>,  <33.962513, 30.513901, 30.689631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622303, 30.603848, 30.600050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502171, 30.871620, 30.871834>,  <34.430092, 31.032284, 31.034904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502171, 30.871620, 30.871834>,  <34.622303, 30.603848, 30.600050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502171, 30.871620, 30.871834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674568, -0.354560, 0.647491,
		0.674360, 0.652801, -0.345093,
		-0.300327, 0.669431, 0.679460,
		34.412071, 31.072449, 31.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244209, 30.742592, 30.962786>,  <34.622303, 30.603848, 30.600050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244209, 30.742592, 30.962786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949535, 30.857853, 31.207495>,  <34.772732, 30.927010, 31.354321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949535, 30.857853, 31.207495>,  <35.244209, 30.742592, 30.962786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949535, 30.857853, 31.207495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493276, -0.389856, 0.777619,
		0.462575, 0.874632, 0.145063,
		-0.736684, 0.288151, 0.611773,
		34.728531, 30.944298, 31.391027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582481, 30.885357, 31.648354>,  <35.244209, 30.742592, 30.962786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582481, 30.885357, 31.648354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197861, 30.889996, 31.758106>,  <34.967087, 30.892778, 31.823957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197861, 30.889996, 31.758106>,  <35.582481, 30.885357, 31.648354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197861, 30.889996, 31.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221035, -0.560264, 0.798278,
		0.162985, 0.828233, 0.536159,
		-0.961550, 0.011597, 0.274384,
		34.909397, 30.893475, 31.840422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679276, 30.951298, 32.344364>,  <35.582481, 30.885357, 31.648354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679276, 30.951298, 32.344364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312244, 30.797741, 32.303028>,  <35.092026, 30.705606, 32.278225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312244, 30.797741, 32.303028>,  <35.679276, 30.951298, 32.344364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312244, 30.797741, 32.303028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064632, -0.400528, 0.914002,
		-0.392268, 0.831989, 0.392328,
		-0.917578, -0.383890, -0.103341,
		35.036972, 30.682573, 32.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256313, 30.972742, 32.978386>,  <35.679276, 30.951298, 32.344364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256313, 30.972742, 32.978386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039181, 30.700016, 32.782238>,  <34.908901, 30.536381, 32.664547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039181, 30.700016, 32.782238>,  <35.256313, 30.972742, 32.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039181, 30.700016, 32.782238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081670, -0.538266, 0.838808,
		-0.835862, 0.495380, 0.236503,
		-0.542830, -0.681813, -0.490374,
		34.876331, 30.495472, 32.635124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576878, 30.865683, 33.336246>,  <35.256313, 30.972742, 32.978386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576878, 30.865683, 33.336246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568249, 30.523308, 33.129593>,  <34.563072, 30.317883, 33.005600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568249, 30.523308, 33.129593>,  <34.576878, 30.865683, 33.336246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568249, 30.523308, 33.129593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342505, -0.479154, 0.808147,
		-0.939268, 0.194384, -0.282825,
		-0.021575, -0.855936, -0.516632,
		34.561775, 30.266527, 32.974602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033646, 30.587656, 33.558834>,  <34.576878, 30.865683, 33.336246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033646, 30.587656, 33.558834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201057, 30.276154, 33.371914>,  <34.301506, 30.089252, 33.259762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201057, 30.276154, 33.371914>,  <34.033646, 30.587656, 33.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201057, 30.276154, 33.371914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263667, -0.596561, 0.758020,
		-0.869088, -0.194041, -0.455011,
		0.418528, -0.778757, -0.467302,
		34.326614, 30.042526, 33.231724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539825, 30.093338, 33.516506>,  <34.033646, 30.587656, 33.558834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539825, 30.093338, 33.516506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901115, 29.921997, 33.505890>,  <34.117889, 29.819193, 33.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901115, 29.921997, 33.505890>,  <33.539825, 30.093338, 33.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901115, 29.921997, 33.505890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293616, -0.661845, 0.689747,
		-0.313020, -0.615202, -0.723564,
		0.903221, -0.428354, -0.026538,
		34.172081, 29.793491, 33.497929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851151, 29.877619, 33.487095>,  <33.539825, 30.093338, 33.516506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851151, 29.877619, 33.487095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843494, 29.489624, 33.584057>,  <32.838902, 29.256828, 33.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843494, 29.489624, 33.584057>,  <32.851151, 29.877619, 33.487095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843494, 29.489624, 33.584057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107020, -0.239074, -0.965086,
		0.994073, -0.044410, -0.099233,
		-0.019136, -0.969985, 0.242410,
		32.837753, 29.198627, 33.656780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324207, 29.495340, 33.089874>,  <32.851151, 29.877619, 33.487095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324207, 29.495340, 33.089874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004463, 29.278271, 33.193043>,  <32.812614, 29.148029, 33.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004463, 29.278271, 33.193043>,  <33.324207, 29.495340, 33.089874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004463, 29.278271, 33.193043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391777, 0.145292, -0.908516,
		0.455555, -0.827281, -0.328748,
		-0.799362, -0.542675, 0.257922,
		32.764656, 29.115469, 33.270420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157444, 29.025843, 32.543911>,  <33.324207, 29.495340, 33.089874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157444, 29.025843, 32.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816353, 29.035255, 32.752640>,  <32.611698, 29.040903, 32.877876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816353, 29.035255, 32.752640>,  <33.157444, 29.025843, 32.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816353, 29.035255, 32.752640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508562, 0.190620, -0.839660,
		-0.119228, -0.981382, -0.150580,
		-0.852731, 0.023532, 0.521820,
		32.560535, 29.042315, 32.909187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681297, 28.548590, 32.219715>,  <33.157444, 29.025843, 32.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681297, 28.548590, 32.219715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440029, 28.786537, 32.432247>,  <32.295269, 28.929306, 32.559769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440029, 28.786537, 32.432247>,  <32.681297, 28.548590, 32.219715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440029, 28.786537, 32.432247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556269, 0.163674, -0.814724,
		-0.571621, -0.786981, 0.232185,
		-0.603170, 0.594871, 0.531333,
		32.259079, 28.964998, 32.591648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074280, 28.344048, 32.071327>,  <32.681297, 28.548590, 32.219715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074280, 28.344048, 32.071327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040310, 28.723368, 32.193649>,  <32.019928, 28.950960, 32.267040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040310, 28.723368, 32.193649>,  <32.074280, 28.344048, 32.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040310, 28.723368, 32.193649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571068, 0.205173, -0.794849,
		-0.816498, -0.242138, 0.524119,
		-0.084928, 0.948300, 0.305800,
		32.014832, 29.007858, 32.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446392, 28.506205, 31.878263>,  <32.074280, 28.344048, 32.071327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446392, 28.506205, 31.878263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602472, 28.863586, 31.967245>,  <31.696121, 29.078014, 32.020634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602472, 28.863586, 31.967245>,  <31.446392, 28.506205, 31.878263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602472, 28.863586, 31.967245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512610, 0.411504, -0.753589,
		-0.764837, 0.180018, 0.618562,
		0.390200, 0.893453, 0.222455,
		31.719532, 29.131622, 32.033981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880888, 29.029737, 31.976686>,  <31.446392, 28.506205, 31.878263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880888, 29.029737, 31.976686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206049, 29.231508, 31.860245>,  <31.401146, 29.352570, 31.790380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206049, 29.231508, 31.860245>,  <30.880888, 29.029737, 31.976686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206049, 29.231508, 31.860245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535605, 0.451209, -0.713820,
		-0.228721, 0.736183, 0.636963,
		0.812905, 0.504426, -0.291102,
		31.449921, 29.382835, 31.772915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643524, 29.727509, 31.845463>,  <30.880888, 29.029737, 31.976686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643524, 29.727509, 31.845463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975576, 29.687691, 31.626017>,  <31.174807, 29.663801, 31.494349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975576, 29.687691, 31.626017>,  <30.643524, 29.727509, 31.845463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975576, 29.687691, 31.626017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442556, 0.480881, -0.756900,
		0.339163, 0.871117, 0.355140,
		0.830128, -0.099543, -0.548615,
		31.224615, 29.657827, 31.461432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753820, 30.433392, 31.625847>,  <30.643524, 29.727509, 31.845463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753820, 30.433392, 31.625847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983538, 30.201494, 31.394648>,  <31.121368, 30.062355, 31.255928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983538, 30.201494, 31.394648>,  <30.753820, 30.433392, 31.625847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983538, 30.201494, 31.394648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278759, 0.525360, -0.803921,
		0.769726, 0.622810, 0.140103,
		0.574295, -0.579744, -0.577998,
		31.155827, 30.027571, 31.221249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109264, 30.892792, 31.201916>,  <30.753820, 30.433392, 31.625847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109264, 30.892792, 31.201916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134031, 30.551834, 30.994226>,  <31.148891, 30.347260, 30.869614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134031, 30.551834, 30.994226>,  <31.109264, 30.892792, 31.201916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134031, 30.551834, 30.994226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394828, 0.456867, -0.797110,
		0.916666, 0.254358, -0.308260,
		0.061918, -0.852393, -0.519222,
		31.152607, 30.296116, 30.838459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499035, 31.045988, 30.569036>,  <31.109264, 30.892792, 31.201916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499035, 31.045988, 30.569036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315205, 30.709047, 30.456444>,  <31.204906, 30.506882, 30.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315205, 30.709047, 30.456444>,  <31.499035, 31.045988, 30.569036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315205, 30.709047, 30.456444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169706, 0.394382, -0.903140,
		0.871775, -0.367291, -0.324201,
		-0.459574, -0.842354, -0.281480,
		31.177332, 30.456341, 30.372000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791588, 30.862093, 29.914684>,  <31.499035, 31.045988, 30.569036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791588, 30.862093, 29.914684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449987, 30.654358, 29.927160>,  <31.245028, 30.529716, 29.934647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449987, 30.654358, 29.927160>,  <31.791588, 30.862093, 29.914684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449987, 30.654358, 29.927160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244222, 0.347221, -0.905424,
		0.459392, -0.780849, -0.423360,
		-0.853999, -0.519339, 0.031189,
		31.193789, 30.498556, 29.936518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821314, 30.344551, 29.444263>,  <31.791588, 30.862093, 29.914684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821314, 30.344551, 29.444263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431717, 30.414558, 29.501822>,  <31.197958, 30.456564, 29.536356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431717, 30.414558, 29.501822>,  <31.821314, 30.344551, 29.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431717, 30.414558, 29.501822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084326, 0.309458, -0.947167,
		-0.210303, -0.934668, -0.286651,
		-0.973993, 0.175019, 0.143897,
		31.139519, 30.467064, 29.544991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564953, 30.084967, 28.889477>,  <31.821314, 30.344551, 29.444263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564953, 30.084967, 28.889477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266785, 30.313391, 29.027021>,  <31.087885, 30.450445, 29.109549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266785, 30.313391, 29.027021>,  <31.564953, 30.084967, 28.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266785, 30.313391, 29.027021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263501, 0.221405, -0.938907,
		-0.612306, -0.790486, -0.014564,
		-0.745418, 0.571061, 0.343862,
		31.043159, 30.484709, 29.130180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934198, 29.778528, 28.600702>,  <31.564953, 30.084967, 28.889477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934198, 29.778528, 28.600702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807467, 30.145885, 28.695503>,  <30.731426, 30.366301, 28.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807467, 30.145885, 28.695503>,  <30.934198, 29.778528, 28.600702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807467, 30.145885, 28.695503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345243, 0.121066, -0.930672,
		-0.883417, -0.376689, 0.278712,
		-0.316831, 0.918395, 0.237001,
		30.712418, 30.421404, 28.766603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294302, 29.855026, 28.331316>,  <30.934198, 29.778528, 28.600702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294302, 29.855026, 28.331316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434607, 30.226217, 28.381626>,  <30.518789, 30.448933, 28.411812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434607, 30.226217, 28.381626>,  <30.294302, 29.855026, 28.331316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434607, 30.226217, 28.381626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245060, 0.220585, -0.944080,
		-0.903831, 0.300326, 0.304784,
		0.350763, 0.927980, 0.125774,
		30.539835, 30.504612, 28.419359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794689, 30.356098, 28.108679>,  <30.294302, 29.855026, 28.331316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794689, 30.356098, 28.108679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124702, 30.581951, 28.117723>,  <30.322710, 30.717463, 28.123150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124702, 30.581951, 28.117723>,  <29.794689, 30.356098, 28.108679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124702, 30.581951, 28.117723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286670, 0.452690, -0.844329,
		-0.486974, 0.690116, 0.535347,
		0.825032, 0.564634, 0.022613,
		30.372211, 30.751341, 28.124508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567673, 30.961458, 27.833181>,  <29.794689, 30.356098, 28.108679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567673, 30.961458, 27.833181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965340, 30.966240, 27.790308>,  <30.203939, 30.969109, 27.764584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965340, 30.966240, 27.790308>,  <29.567673, 30.961458, 27.833181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965340, 30.966240, 27.790308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100748, 0.457544, -0.883461,
		0.038479, 0.889106, 0.456080,
		0.994168, 0.011955, -0.107181,
		30.263590, 30.969826, 27.758154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683245, 31.603876, 27.500875>,  <29.567673, 30.961458, 27.833181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683245, 31.603876, 27.500875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994814, 31.367683, 27.416391>,  <30.181755, 31.225967, 27.365700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994814, 31.367683, 27.416391>,  <29.683245, 31.603876, 27.500875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994814, 31.367683, 27.416391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038395, 0.291263, -0.955872,
		0.625941, 0.752661, 0.204201,
		0.778924, -0.590480, -0.211212,
		30.228491, 31.190540, 27.353027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053671, 32.034168, 27.102276>,  <29.683245, 31.603876, 27.500875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053671, 32.034168, 27.102276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206837, 31.677898, 27.004238>,  <30.298737, 31.464136, 26.945415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206837, 31.677898, 27.004238>,  <30.053671, 32.034168, 27.102276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206837, 31.677898, 27.004238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047480, 0.283941, -0.957665,
		0.922563, 0.355067, 0.151015,
		0.382914, -0.890677, -0.245095,
		30.321711, 31.410696, 26.930710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686855, 32.203899, 26.810566>,  <30.053671, 32.034168, 27.102276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686855, 32.203899, 26.810566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585840, 31.846092, 26.663019>,  <30.525232, 31.631407, 26.574492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585840, 31.846092, 26.663019>,  <30.686855, 32.203899, 26.810566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585840, 31.846092, 26.663019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068960, 0.396891, -0.915272,
		0.965127, -0.205703, -0.161915,
		-0.252537, -0.894519, -0.368865,
		30.510078, 31.577736, 26.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182936, 31.861572, 26.219475>,  <30.686855, 32.203899, 26.810566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182936, 31.861572, 26.219475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789507, 31.791130, 26.235352>,  <30.553450, 31.748865, 26.244879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789507, 31.791130, 26.235352>,  <31.182936, 31.861572, 26.219475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789507, 31.791130, 26.235352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140004, 0.605331, -0.783565,
		0.113961, -0.776249, -0.620041,
		-0.983571, -0.176104, 0.039694,
		30.494436, 31.738298, 26.247259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973705, 31.539274, 25.569347>,  <31.182936, 31.861572, 26.219475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973705, 31.539274, 25.569347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665705, 31.731979, 25.736681>,  <30.480906, 31.847603, 25.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665705, 31.731979, 25.736681>,  <30.973705, 31.539274, 25.569347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665705, 31.731979, 25.736681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021775, 0.635431, -0.771851,
		-0.637673, -0.603434, -0.478791,
		-0.769999, 0.481763, 0.418336,
		30.434706, 31.876509, 25.862183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530453, 31.755592, 24.980919>,  <30.973705, 31.539274, 25.569347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530453, 31.755592, 24.980919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411240, 31.979973, 25.289856>,  <30.339712, 32.114601, 25.475218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411240, 31.979973, 25.289856>,  <30.530453, 31.755592, 24.980919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411240, 31.979973, 25.289856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256949, 0.732102, -0.630875,
		-0.919323, -0.386473, -0.074054,
		-0.298031, 0.560950, 0.772342,
		30.321831, 32.148258, 25.521559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777029, 31.893435, 24.855627>,  <30.530453, 31.755592, 24.980919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777029, 31.893435, 24.855627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901726, 32.173424, 25.112642>,  <29.976543, 32.341415, 25.266851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901726, 32.173424, 25.112642>,  <29.777029, 31.893435, 24.855627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901726, 32.173424, 25.112642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200070, 0.709434, -0.675777,
		-0.928865, 0.082114, 0.361203,
		0.311741, 0.699972, 0.642540,
		29.995249, 32.383415, 25.305405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075691, 32.305904, 25.098894>,  <29.777029, 31.893435, 24.855627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075691, 32.305904, 25.098894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392763, 32.534767, 25.183083>,  <29.583006, 32.672085, 25.233595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392763, 32.534767, 25.183083>,  <29.075691, 32.305904, 25.098894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392763, 32.534767, 25.183083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454393, 0.784660, -0.421704,
		-0.406426, 0.238641, 0.881968,
		0.792682, 0.572152, 0.210470,
		29.630568, 32.706413, 25.246223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752386, 32.859898, 25.464640>,  <29.075691, 32.305904, 25.098894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752386, 32.859898, 25.464640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095884, 32.930599, 25.272261>,  <29.301983, 32.973019, 25.156834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095884, 32.930599, 25.272261>,  <28.752386, 32.859898, 25.464640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095884, 32.930599, 25.272261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444116, 0.724902, -0.526572,
		0.255568, 0.665789, 0.701006,
		0.858747, 0.176752, -0.480950,
		29.353508, 32.983624, 25.127975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802650, 33.615379, 25.435474>,  <28.752386, 32.859898, 25.464640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802650, 33.615379, 25.435474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058683, 33.521824, 25.142738>,  <29.212303, 33.465691, 24.967096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058683, 33.521824, 25.142738>,  <28.802650, 33.615379, 25.435474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058683, 33.521824, 25.142738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340689, 0.767362, -0.543219,
		0.688638, 0.597035, 0.411492,
		0.640084, -0.233891, -0.731838,
		29.250710, 33.451656, 24.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994051, 34.206474, 25.242516>,  <28.802650, 33.615379, 25.435474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994051, 34.206474, 25.242516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061863, 33.956520, 24.937681>,  <29.102551, 33.806545, 24.754782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061863, 33.956520, 24.937681>,  <28.994051, 34.206474, 25.242516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061863, 33.956520, 24.937681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260196, 0.717459, -0.646182,
		0.950556, 0.307840, -0.040961,
		0.169532, -0.624890, -0.762084,
		29.112722, 33.769054, 24.709057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135555, 34.716816, 24.717308>,  <28.994051, 34.206474, 25.242516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135555, 34.716816, 24.717308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121277, 34.393154, 24.482702>,  <29.112711, 34.198959, 24.341940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121277, 34.393154, 24.482702>,  <29.135555, 34.716816, 24.717308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121277, 34.393154, 24.482702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202994, 0.580523, -0.788534,
		0.978529, 0.090913, -0.184975,
		-0.035694, -0.809153, -0.586513,
		29.110569, 34.150410, 24.306747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495628, 34.761848, 24.100685>,  <29.135555, 34.716816, 24.717308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495628, 34.761848, 24.100685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204473, 34.498741, 24.023205>,  <29.029781, 34.340878, 23.976717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204473, 34.498741, 24.023205>,  <29.495628, 34.761848, 24.100685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204473, 34.498741, 24.023205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175578, 0.451860, -0.874640,
		0.662838, -0.602628, -0.444392,
		-0.727886, -0.657770, -0.193702,
		28.986107, 34.301411, 23.965094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649286, 34.671680, 23.388678>,  <29.495628, 34.761848, 24.100685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649286, 34.671680, 23.388678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281101, 34.526173, 23.445837>,  <29.060190, 34.438866, 23.480133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281101, 34.526173, 23.445837>,  <29.649286, 34.671680, 23.388678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281101, 34.526173, 23.445837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301156, 0.427114, -0.852572,
		0.249109, -0.827794, -0.502694,
		-0.920462, -0.363773, 0.142897,
		29.004963, 34.417042, 23.488707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365435, 34.635067, 22.764318>,  <29.649286, 34.671680, 23.388678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365435, 34.635067, 22.764318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022896, 34.640713, 22.970800>,  <28.817371, 34.644100, 23.094690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022896, 34.640713, 22.970800>,  <29.365435, 34.635067, 22.764318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022896, 34.640713, 22.970800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428824, 0.537503, -0.726085,
		-0.287711, -0.843144, -0.454237,
		-0.856348, 0.014114, 0.516206,
		28.765991, 34.644947, 23.125662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927492, 34.565132, 22.272421>,  <29.365435, 34.635067, 22.764318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927492, 34.565132, 22.272421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714560, 34.721676, 22.572676>,  <28.586800, 34.815601, 22.752829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714560, 34.721676, 22.572676>,  <28.927492, 34.565132, 22.272421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714560, 34.721676, 22.572676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335139, 0.716839, -0.611411,
		-0.777371, -0.577041, -0.250434,
		-0.532330, 0.391363, 0.750639,
		28.554861, 34.839085, 22.797867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092010, 34.669624, 22.126678>,  <28.927492, 34.565132, 22.272421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092010, 34.669624, 22.126678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182177, 34.931614, 22.415178>,  <28.236277, 35.088806, 22.588278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182177, 34.931614, 22.415178>,  <28.092010, 34.669624, 22.126678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182177, 34.931614, 22.415178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354913, 0.744639, -0.565287,
		-0.907317, -0.128555, 0.400312,
		0.225417, 0.654970, 0.721249,
		28.249802, 35.128105, 22.631554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532898, 35.093906, 22.190420>,  <28.092010, 34.669624, 22.126678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532898, 35.093906, 22.190420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809961, 35.314140, 22.376789>,  <27.976198, 35.446281, 22.488609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809961, 35.314140, 22.376789>,  <27.532898, 35.093906, 22.190420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809961, 35.314140, 22.376789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350742, 0.821574, -0.449439,
		-0.630244, 0.147889, 0.762182,
		0.692656, 0.550586, 0.465921,
		28.017757, 35.479317, 22.516565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300999, 35.692791, 22.101152>,  <27.532898, 35.093906, 22.190420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300999, 35.692791, 22.101152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669662, 35.787361, 22.224211>,  <27.890862, 35.844105, 22.298046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669662, 35.787361, 22.224211>,  <27.300999, 35.692791, 22.101152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669662, 35.787361, 22.224211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214542, 0.971202, -0.103630,
		-0.323287, 0.029509, 0.945841,
		0.921660, 0.236425, 0.307646,
		27.946161, 35.858288, 22.316505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196053, 36.214985, 22.676268>,  <27.300999, 35.692791, 22.101152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196053, 36.214985, 22.676268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557962, 36.245026, 22.508579>,  <27.775108, 36.263050, 22.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557962, 36.245026, 22.508579>,  <27.196053, 36.214985, 22.676268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557962, 36.245026, 22.508579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115934, 0.990589, -0.072750,
		0.409809, 0.114424, 0.904966,
		0.904774, 0.075103, -0.419218,
		27.829395, 36.267555, 22.382814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438612, 36.499580, 22.915367>,  <27.196053, 36.214985, 22.676268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438612, 36.499580, 22.915367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042833, 36.477615, 22.969004>,  <25.805367, 36.464436, 23.001186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042833, 36.477615, 22.969004>,  <26.438612, 36.499580, 22.915367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042833, 36.477615, 22.969004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144287, -0.458527, 0.876889,
		0.013331, 0.886982, 0.461611,
		-0.989446, -0.054914, 0.134092,
		25.746000, 36.461140, 23.009232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391392, 36.557072, 23.555447>,  <26.438612, 36.499580, 22.915367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391392, 36.557072, 23.555447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026426, 36.415207, 23.473747>,  <25.807447, 36.330086, 23.424728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026426, 36.415207, 23.473747>,  <26.391392, 36.557072, 23.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026426, 36.415207, 23.473747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020166, -0.537398, 0.843088,
		-0.408776, 0.765124, 0.497480,
		-0.912412, -0.354666, -0.204246,
		25.752703, 36.308807, 23.412474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926523, 36.776836, 24.094954>,  <26.391392, 36.557072, 23.555447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926523, 36.776836, 24.094954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797972, 36.440044, 23.921618>,  <25.720840, 36.237968, 23.817616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797972, 36.440044, 23.921618>,  <25.926523, 36.776836, 24.094954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797972, 36.440044, 23.921618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049909, -0.472042, 0.880162,
		-0.945635, 0.261236, 0.193726,
		-0.321377, -0.841981, -0.433341,
		25.701559, 36.187450, 23.791615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289248, 36.611916, 24.485659>,  <25.926523, 36.776836, 24.094954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289248, 36.611916, 24.485659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402699, 36.273342, 24.305389>,  <25.470770, 36.070198, 24.197227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402699, 36.273342, 24.305389>,  <25.289248, 36.611916, 24.485659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402699, 36.273342, 24.305389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073839, -0.487853, 0.869797,
		-0.956088, -0.213421, -0.200868,
		0.283627, -0.846434, -0.450671,
		25.487787, 36.019413, 24.170189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964170, 36.045387, 24.850416>,  <25.289248, 36.611916, 24.485659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964170, 36.045387, 24.850416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272366, 35.885658, 24.651663>,  <25.457283, 35.789822, 24.532412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272366, 35.885658, 24.651663>,  <24.964170, 36.045387, 24.850416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272366, 35.885658, 24.651663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106282, -0.688095, 0.717795,
		-0.628532, -0.605862, -0.487728,
		0.770488, -0.399320, -0.496882,
		25.503511, 35.765862, 24.502598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781094, 35.365589, 24.937717>,  <24.964170, 36.045387, 24.850416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781094, 35.365589, 24.937717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168777, 35.384430, 24.841040>,  <25.401388, 35.395733, 24.783033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168777, 35.384430, 24.841040>,  <24.781094, 35.365589, 24.937717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168777, 35.384430, 24.841040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216533, -0.630382, 0.745474,
		-0.117247, -0.774855, -0.621171,
		0.969209, 0.047099, -0.241692,
		25.459539, 35.398560, 24.768532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978245, 34.721058, 25.083696>,  <24.781094, 35.365589, 24.937717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978245, 34.721058, 25.083696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304871, 34.951962, 25.083397>,  <25.500845, 35.090504, 25.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304871, 34.951962, 25.083397>,  <24.978245, 34.721058, 25.083696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304871, 34.951962, 25.083397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335640, -0.473726, 0.814205,
		0.469651, -0.665100, -0.580577,
		0.816562, 0.577257, -0.000748,
		25.549839, 35.125137, 25.083172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454027, 34.248333, 25.104309>,  <24.978245, 34.721058, 25.083696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454027, 34.248333, 25.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680008, 34.565758, 25.194721>,  <25.815596, 34.756214, 25.248968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680008, 34.565758, 25.194721>,  <25.454027, 34.248333, 25.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680008, 34.565758, 25.194721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543792, -0.564114, 0.621342,
		0.620582, -0.228113, -0.750229,
		0.564950, 0.793562, 0.226032,
		25.849493, 34.803825, 25.262531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109159, 33.963257, 25.188200>,  <25.454027, 34.248333, 25.104309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109159, 33.963257, 25.188200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125822, 34.312893, 25.381792>,  <26.135820, 34.522675, 25.497948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125822, 34.312893, 25.381792>,  <26.109159, 33.963257, 25.188200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125822, 34.312893, 25.381792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443231, -0.450295, 0.775101,
		0.895439, 0.182225, -0.406181,
		0.041659, 0.874087, 0.483979,
		26.138319, 34.575119, 25.526985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785452, 34.091400, 25.373678>,  <26.109159, 33.963257, 25.188200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785452, 34.091400, 25.373678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553761, 34.298992, 25.625124>,  <26.414745, 34.423546, 25.775991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553761, 34.298992, 25.625124>,  <26.785452, 34.091400, 25.373678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553761, 34.298992, 25.625124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443376, -0.446531, 0.777192,
		0.684042, 0.728884, 0.028540,
		-0.579227, 0.518978, 0.628616,
		26.379993, 34.454685, 25.813709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292656, 34.362476, 25.941772>,  <26.785452, 34.091400, 25.373678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292656, 34.362476, 25.941772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919779, 34.372089, 26.086239>,  <26.696053, 34.377857, 26.172918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919779, 34.372089, 26.086239>,  <27.292656, 34.362476, 25.941772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919779, 34.372089, 26.086239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306264, -0.479442, 0.822397,
		0.192926, 0.877244, 0.439571,
		-0.932192, 0.024037, 0.361165,
		26.640121, 34.379299, 26.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359983, 34.556320, 26.636366>,  <27.292656, 34.362476, 25.941772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359983, 34.556320, 26.636366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986036, 34.414413, 26.641504>,  <26.761669, 34.329269, 26.644587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986036, 34.414413, 26.641504>,  <27.359983, 34.556320, 26.636366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986036, 34.414413, 26.641504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243571, -0.614684, 0.750225,
		-0.258260, 0.704488, 0.661058,
		-0.934866, -0.354768, 0.012845,
		26.705576, 34.307983, 26.645357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295624, 34.476471, 27.325985>,  <27.359983, 34.556320, 26.636366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295624, 34.476471, 27.325985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005550, 34.268757, 27.145117>,  <26.831507, 34.144131, 27.036596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005550, 34.268757, 27.145117>,  <27.295624, 34.476471, 27.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005550, 34.268757, 27.145117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018022, -0.642154, 0.766364,
		-0.688322, 0.563902, 0.456320,
		-0.725182, -0.519281, -0.452171,
		26.787996, 34.112972, 27.009466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796276, 34.171841, 27.757305>,  <27.295624, 34.476471, 27.325985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796276, 34.171841, 27.757305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789919, 33.935741, 27.434481>,  <26.786104, 33.794083, 27.240786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789919, 33.935741, 27.434481>,  <26.796276, 34.171841, 27.757305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789919, 33.935741, 27.434481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209149, -0.791272, 0.574583,
		-0.977755, -0.159663, 0.136027,
		-0.015895, -0.590251, -0.807063,
		26.785151, 33.758667, 27.192362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427473, 33.614868, 27.995007>,  <26.796276, 34.171841, 27.757305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427473, 33.614868, 27.995007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613159, 33.464588, 27.674170>,  <26.724571, 33.374420, 27.481667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613159, 33.464588, 27.674170>,  <26.427473, 33.614868, 27.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613159, 33.464588, 27.674170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122751, -0.869551, 0.478344,
		-0.877178, -0.320509, -0.357536,
		0.464209, -0.375705, -0.802094,
		26.752422, 33.351875, 27.433542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074461, 32.929405, 27.819506>,  <26.427473, 33.614868, 27.995007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074461, 32.929405, 27.819506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451317, 32.884647, 27.693108>,  <26.677429, 32.857792, 27.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451317, 32.884647, 27.693108>,  <26.074461, 32.929405, 27.819506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451317, 32.884647, 27.693108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085446, -0.831353, 0.549136,
		-0.324150, -0.544363, -0.773690,
		0.942139, -0.111894, -0.315997,
		26.733959, 32.851078, 27.598309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270721, 32.196060, 27.994602>,  <26.074461, 32.929405, 27.819506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270721, 32.196060, 27.994602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633020, 32.327984, 27.888134>,  <26.850399, 32.407139, 27.824253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633020, 32.327984, 27.888134>,  <26.270721, 32.196060, 27.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633020, 32.327984, 27.888134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419360, -0.788264, 0.450308,
		-0.061299, -0.519488, -0.852276,
		0.905748, 0.329807, -0.266173,
		26.904745, 32.426926, 27.808283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595043, 31.571892, 27.896278>,  <26.270721, 32.196060, 27.994602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595043, 31.571892, 27.896278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877541, 31.851986, 27.938026>,  <27.047039, 32.020042, 27.963076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877541, 31.851986, 27.938026>,  <26.595043, 31.571892, 27.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877541, 31.851986, 27.938026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351607, -0.474872, 0.806765,
		0.614486, -0.533076, -0.581582,
		0.706244, 0.700234, 0.104368,
		27.089415, 32.062057, 27.969337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243847, 31.251703, 27.774534>,  <26.595043, 31.571892, 27.896278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243847, 31.251703, 27.774534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306465, 31.561642, 28.019518>,  <27.344036, 31.747604, 28.166508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306465, 31.561642, 28.019518>,  <27.243847, 31.251703, 27.774534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306465, 31.561642, 28.019518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634876, -0.553965, 0.538568,
		0.756588, 0.304524, -0.578653,
		0.156546, 0.774847, 0.612458,
		27.353430, 31.794096, 28.203255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912052, 31.184311, 27.847260>,  <27.243847, 31.251703, 27.774534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912052, 31.184311, 27.847260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817669, 31.452530, 28.128597>,  <27.761040, 31.613461, 28.297400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817669, 31.452530, 28.128597>,  <27.912052, 31.184311, 27.847260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817669, 31.452530, 28.128597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652165, -0.427307, 0.626171,
		0.720420, 0.606445, -0.336481,
		-0.235958, 0.670547, 0.703342,
		27.746881, 31.653694, 28.339600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539513, 31.447813, 28.105515>,  <27.912052, 31.184311, 27.847260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539513, 31.447813, 28.105515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273863, 31.513218, 28.397324>,  <28.114473, 31.552462, 28.572409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273863, 31.513218, 28.397324>,  <28.539513, 31.447813, 28.105515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273863, 31.513218, 28.397324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624835, -0.414402, 0.661704,
		0.410512, 0.895285, 0.173046,
		-0.664124, 0.163512, 0.729522,
		28.074625, 31.562271, 28.616180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009531, 31.584261, 28.726048>,  <28.539513, 31.447813, 28.105515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009531, 31.584261, 28.726048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644047, 31.467335, 28.838963>,  <28.424757, 31.397179, 28.906712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644047, 31.467335, 28.838963>,  <29.009531, 31.584261, 28.726048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644047, 31.467335, 28.838963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395825, -0.483003, 0.781045,
		-0.091968, 0.825384, 0.557031,
		-0.913709, -0.292318, 0.282287,
		28.369934, 31.379639, 28.923649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063318, 31.619349, 29.510303>,  <29.009531, 31.584261, 28.726048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063318, 31.619349, 29.510303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739534, 31.399460, 29.427765>,  <28.545263, 31.267527, 29.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739534, 31.399460, 29.427765>,  <29.063318, 31.619349, 29.510303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739534, 31.399460, 29.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292956, -0.682658, 0.669444,
		-0.508871, 0.481440, 0.713629,
		-0.809461, -0.549722, -0.206344,
		28.496696, 31.234543, 29.365862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822487, 31.408255, 30.151154>,  <29.063318, 31.619349, 29.510303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822487, 31.408255, 30.151154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639267, 31.165722, 29.891138>,  <28.529335, 31.020203, 29.735128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639267, 31.165722, 29.891138>,  <28.822487, 31.408255, 30.151154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639267, 31.165722, 29.891138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213584, -0.784911, 0.581633,
		-0.862886, 0.127579, 0.489031,
		-0.458050, -0.606332, -0.650040,
		28.501852, 30.983822, 29.696127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374140, 31.111904, 30.523748>,  <28.822487, 31.408255, 30.151154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374140, 31.111904, 30.523748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415270, 30.880917, 30.199783>,  <28.439947, 30.742325, 30.005404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415270, 30.880917, 30.199783>,  <28.374140, 31.111904, 30.523748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415270, 30.880917, 30.199783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031549, -0.811925, 0.582908,
		-0.994199, -0.085488, -0.065267,
		0.102824, -0.577468, -0.809912,
		28.446117, 30.707676, 29.956810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868525, 30.488218, 30.589497>,  <28.374140, 31.111904, 30.523748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868525, 30.488218, 30.589497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158920, 30.363546, 30.344288>,  <28.333157, 30.288744, 30.197163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158920, 30.363546, 30.344288>,  <27.868525, 30.488218, 30.589497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158920, 30.363546, 30.344288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038925, -0.871350, 0.489115,
		-0.686605, -0.378954, -0.620458,
		0.725989, -0.311678, -0.613024,
		28.376717, 30.270042, 30.160381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689333, 29.827089, 30.443419>,  <27.868525, 30.488218, 30.589497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689333, 29.827089, 30.443419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082382, 29.855238, 30.374716>,  <28.318213, 29.872128, 30.333494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082382, 29.855238, 30.374716>,  <27.689333, 29.827089, 30.443419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082382, 29.855238, 30.374716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167936, -0.731173, 0.661199,
		-0.079054, -0.678553, -0.730285,
		0.982623, 0.070371, -0.171755,
		28.377169, 29.876348, 30.323189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009516, 29.145321, 30.380136>,  <27.689333, 29.827089, 30.443419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009516, 29.145321, 30.380136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300522, 29.397999, 30.487230>,  <28.475126, 29.549606, 30.551487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300522, 29.397999, 30.487230>,  <28.009516, 29.145321, 30.380136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300522, 29.397999, 30.487230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307884, -0.649321, 0.695406,
		0.613130, -0.423489, -0.666880,
		0.727515, 0.631696, 0.267733,
		28.518776, 29.587507, 30.567551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607475, 28.712297, 30.509129>,  <28.009516, 29.145321, 30.380136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607475, 28.712297, 30.509129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714983, 29.054106, 30.686916>,  <28.779488, 29.259192, 30.793589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714983, 29.054106, 30.686916>,  <28.607475, 28.712297, 30.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714983, 29.054106, 30.686916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407768, -0.519002, 0.751241,
		0.872633, -0.020672, -0.487940,
		0.268771, 0.854523, 0.444469,
		28.795614, 29.310463, 30.820257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299341, 28.692463, 30.626303>,  <28.607475, 28.712297, 30.509129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299341, 28.692463, 30.626303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157022, 28.946428, 30.900614>,  <29.071630, 29.098806, 31.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157022, 28.946428, 30.900614>,  <29.299341, 28.692463, 30.626303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157022, 28.946428, 30.900614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519598, -0.475539, 0.709846,
		0.776805, 0.608892, -0.160703,
		-0.355799, 0.634912, 0.685780,
		29.050283, 29.136902, 31.106348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863823, 28.821930, 31.057291>,  <29.299341, 28.692463, 30.626303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863823, 28.821930, 31.057291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562214, 28.941107, 31.291447>,  <29.381248, 29.012613, 31.431940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562214, 28.941107, 31.291447>,  <29.863823, 28.821930, 31.057291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562214, 28.941107, 31.291447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449861, -0.415144, 0.790747,
		0.478618, 0.859585, 0.178995,
		-0.754023, 0.297943, 0.585389,
		29.336008, 29.030489, 31.467064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204840, 28.807299, 31.685373>,  <29.863823, 28.821930, 31.057291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204840, 28.807299, 31.685373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829744, 28.838520, 31.820759>,  <29.604687, 28.857252, 31.901991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829744, 28.838520, 31.820759>,  <30.204840, 28.807299, 31.685373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829744, 28.838520, 31.820759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283269, -0.392082, 0.875231,
		0.201020, 0.916613, 0.345560,
		-0.937736, 0.078052, 0.338465,
		29.548424, 28.861937, 31.922298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232916, 29.229465, 32.223736>,  <30.204840, 28.807299, 31.685373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232916, 29.229465, 32.223736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895737, 29.026657, 32.295704>,  <29.693430, 28.904972, 32.338882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895737, 29.026657, 32.295704>,  <30.232916, 29.229465, 32.223736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895737, 29.026657, 32.295704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347534, -0.257893, 0.901505,
		-0.410682, 0.822449, 0.393597,
		-0.842948, -0.507020, 0.179917,
		29.642853, 28.874552, 32.349678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106310, 29.247631, 32.981934>,  <30.232916, 29.229465, 32.223736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106310, 29.247631, 32.981934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864136, 28.945074, 32.882881>,  <29.718832, 28.763540, 32.823448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864136, 28.945074, 32.882881>,  <30.106310, 29.247631, 32.981934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864136, 28.945074, 32.882881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126637, -0.398724, 0.908286,
		-0.785756, 0.518548, 0.337188,
		-0.605434, -0.756391, -0.247632,
		29.682505, 28.718157, 32.808590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520756, 29.237488, 33.412365>,  <30.106310, 29.247631, 32.981934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520756, 29.237488, 33.412365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537905, 28.859875, 33.281544>,  <29.548195, 28.633307, 33.203049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537905, 28.859875, 33.281544>,  <29.520756, 29.237488, 33.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537905, 28.859875, 33.281544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146206, -0.317903, 0.936783,
		-0.988325, -0.087980, 0.124394,
		0.042873, -0.944032, -0.327055,
		29.550766, 28.576666, 33.183426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013762, 28.781290, 33.763519>,  <29.520756, 29.237488, 33.412365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013762, 28.781290, 33.763519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293020, 28.518703, 33.649223>,  <29.460575, 28.361153, 33.580647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293020, 28.518703, 33.649223>,  <29.013762, 28.781290, 33.763519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293020, 28.518703, 33.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025587, -0.421726, 0.906362,
		-0.715499, -0.625461, -0.311223,
		0.698145, -0.656465, -0.285741,
		29.502464, 28.321764, 33.563499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932570, 28.281355, 34.203632>,  <29.013762, 28.781290, 33.763519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932570, 28.281355, 34.203632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284822, 28.165901, 34.053337>,  <29.496174, 28.096628, 33.963161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284822, 28.165901, 34.053337>,  <28.932570, 28.281355, 34.203632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284822, 28.165901, 34.053337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294090, -0.288773, 0.911110,
		-0.371481, -0.912853, -0.169418,
		0.880632, -0.288635, -0.375734,
		29.549013, 28.079311, 33.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065134, 27.672094, 34.497364>,  <28.932570, 28.281355, 34.203632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065134, 27.672094, 34.497364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415751, 27.841482, 34.405842>,  <29.626120, 27.943115, 34.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415751, 27.841482, 34.405842>,  <29.065134, 27.672094, 34.497364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415751, 27.841482, 34.405842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409525, -0.406345, 0.816806,
		0.252917, -0.809665, -0.529599,
		0.876540, 0.423469, -0.228806,
		29.678713, 27.968523, 34.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602785, 27.268805, 34.725422>,  <29.065134, 27.672094, 34.497364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602785, 27.268805, 34.725422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816919, 27.604265, 34.685261>,  <29.945400, 27.805542, 34.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816919, 27.604265, 34.685261>,  <29.602785, 27.268805, 34.725422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816919, 27.604265, 34.685261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644687, -0.328905, 0.690073,
		0.545707, -0.434150, -0.716741,
		0.535335, 0.838651, -0.100405,
		29.977520, 27.855860, 34.655140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296124, 27.048870, 34.682213>,  <29.602785, 27.268805, 34.725422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296124, 27.048870, 34.682213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306210, 27.433075, 34.793053>,  <30.312262, 27.663597, 34.859558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306210, 27.433075, 34.793053>,  <30.296124, 27.048870, 34.682213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306210, 27.433075, 34.793053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547971, -0.245116, 0.799779,
		0.836117, 0.131674, -0.532513,
		0.025217, 0.960510, 0.277099,
		30.313774, 27.721228, 34.876183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303057, 27.365387, 34.105644>,  <30.296124, 27.048870, 34.682213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303057, 27.365387, 34.105644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570290, 27.649841, 34.193237>,  <30.730629, 27.820515, 34.245792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570290, 27.649841, 34.193237>,  <30.303057, 27.365387, 34.105644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570290, 27.649841, 34.193237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301777, -0.527957, 0.793846,
		0.680145, -0.464271, -0.567323,
		0.668082, 0.711136, 0.218981,
		30.770714, 27.863182, 34.258930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079645, 27.133602, 34.169380>,  <30.303057, 27.365387, 34.105644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079645, 27.133602, 34.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042650, 27.477341, 34.370564>,  <31.020452, 27.683584, 34.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042650, 27.477341, 34.370564>,  <31.079645, 27.133602, 34.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042650, 27.477341, 34.370564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420846, -0.424053, 0.801915,
		0.902405, 0.285838, -0.322432,
		-0.092489, 0.859346, 0.502961,
		31.014904, 27.735144, 34.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624538, 26.800037, 34.532185>,  <31.079645, 27.133602, 34.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624538, 26.800037, 34.532185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973627, 26.994783, 34.517666>,  <32.183079, 27.111631, 34.508953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973627, 26.994783, 34.517666>,  <31.624538, 26.800037, 34.532185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973627, 26.994783, 34.517666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400001, -0.755679, -0.518603,
		-0.279921, 0.438076, -0.854244,
		0.872722, 0.486866, -0.036300,
		32.235443, 27.140842, 34.506775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829008, 26.891502, 33.898224>,  <31.624538, 26.800037, 34.532185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829008, 26.891502, 33.898224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112762, 26.841528, 34.175686>,  <32.283016, 26.811543, 34.342163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112762, 26.841528, 34.175686>,  <31.829008, 26.891502, 33.898224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112762, 26.841528, 34.175686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420003, -0.715408, -0.558381,
		0.566010, 0.687447, -0.455028,
		0.709387, -0.124936, 0.693657,
		32.325577, 26.804047, 34.383781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500710, 27.135832, 33.719715>,  <31.829008, 26.891502, 33.898224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500710, 27.135832, 33.719715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497391, 26.828251, 33.975414>,  <32.495399, 26.643702, 34.128834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497391, 26.828251, 33.975414>,  <32.500710, 27.135832, 33.719715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497391, 26.828251, 33.975414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219054, -0.625142, -0.749142,
		0.975678, 0.133817, 0.173627,
		-0.008294, -0.768954, 0.639250,
		32.494904, 26.597565, 34.167191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177399, 26.760050, 33.663601>,  <32.500710, 27.135832, 33.719715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177399, 26.760050, 33.663601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873627, 26.514919, 33.750973>,  <32.691364, 26.367842, 33.803394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873627, 26.514919, 33.750973>,  <33.177399, 26.760050, 33.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873627, 26.514919, 33.750973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439042, -0.730509, -0.523066,
		0.480114, -0.301332, 0.823826,
		-0.759429, -0.612826, 0.218430,
		32.645798, 26.331072, 33.816502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447857, 26.118412, 33.907391>,  <33.177399, 26.760050, 33.663601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447857, 26.118412, 33.907391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093723, 26.095842, 33.722786>,  <32.881241, 26.082300, 33.612022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093723, 26.095842, 33.722786>,  <33.447857, 26.118412, 33.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093723, 26.095842, 33.722786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357626, -0.716965, -0.598386,
		-0.297126, -0.694822, 0.654934,
		-0.885336, -0.056425, -0.461515,
		32.828121, 26.078915, 33.584332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565964, 25.933033, 34.541718>,  <33.447857, 26.118412, 33.907391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565964, 25.933033, 34.541718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705746, 25.618122, 34.744923>,  <33.789616, 25.429176, 34.866844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705746, 25.618122, 34.744923>,  <33.565964, 25.933033, 34.541718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705746, 25.618122, 34.744923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887217, 0.452348, 0.090707,
		-0.301209, 0.419017, 0.856562,
		0.349456, -0.787277, 0.508010,
		33.810581, 25.381939, 34.897327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980167, 26.665655, 34.531391>,  <33.565964, 25.933033, 34.541718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980167, 26.665655, 34.531391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206551, 26.932756, 34.724800>,  <34.342381, 27.093018, 34.840843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206551, 26.932756, 34.724800>,  <33.980167, 26.665655, 34.531391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206551, 26.932756, 34.724800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051158, 0.556914, -0.828993,
		-0.822844, 0.493913, 0.281031,
		0.565961, 0.667755, 0.483521,
		34.376339, 27.133083, 34.869858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701000, 27.263689, 34.318897>,  <33.980167, 26.665655, 34.531391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701000, 27.263689, 34.318897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073929, 27.344620, 34.438789>,  <34.297688, 27.393179, 34.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073929, 27.344620, 34.438789>,  <33.701000, 27.263689, 34.318897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073929, 27.344620, 34.438789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129803, 0.586376, -0.799571,
		-0.337532, 0.784364, 0.520429,
		0.932321, 0.202328, 0.299734,
		34.353626, 27.405317, 34.528709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849854, 27.969715, 33.957653>,  <33.701000, 27.263689, 34.318897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849854, 27.969715, 33.957653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240292, 27.903818, 34.014370>,  <34.474552, 27.864281, 34.048401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240292, 27.903818, 34.014370>,  <33.849854, 27.969715, 33.957653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240292, 27.903818, 34.014370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209102, 0.533572, -0.819498,
		0.059346, 0.829555, 0.555263,
		0.976091, -0.164741, 0.141796,
		34.533119, 27.854397, 34.056908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324551, 28.556694, 33.820213>,  <33.849854, 27.969715, 33.957653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324551, 28.556694, 33.820213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487545, 28.208872, 33.708626>,  <34.585342, 28.000177, 33.641674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487545, 28.208872, 33.708626>,  <34.324551, 28.556694, 33.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487545, 28.208872, 33.708626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036334, 0.320676, -0.946492,
		0.912487, 0.375549, 0.162267,
		0.407490, -0.869557, -0.278968,
		34.609791, 27.948006, 33.624935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871609, 28.693718, 33.413803>,  <34.324551, 28.556694, 33.820213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871609, 28.693718, 33.413803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736019, 28.333132, 33.306133>,  <34.654667, 28.116779, 33.241531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736019, 28.333132, 33.306133>,  <34.871609, 28.693718, 33.413803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736019, 28.333132, 33.306133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256008, 0.186936, -0.948428,
		0.905294, -0.390405, 0.167415,
		-0.338974, -0.901465, -0.269179,
		34.634327, 28.062693, 33.225380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396545, 28.196617, 33.213219>,  <34.871609, 28.693718, 33.413803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396545, 28.196617, 33.213219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043327, 28.187311, 33.025738>,  <34.831394, 28.181726, 32.913250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043327, 28.187311, 33.025738>,  <35.396545, 28.196617, 33.213219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043327, 28.187311, 33.025738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466671, 0.061679, -0.882277,
		0.049434, -0.997825, -0.043610,
		-0.883048, -0.023263, -0.468705,
		34.778412, 28.180332, 32.885128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645962, 28.132135, 33.892147>,  <35.396545, 28.196617, 33.213219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645962, 28.132135, 33.892147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447624, 27.925524, 34.171387>,  <35.328621, 27.801558, 34.338928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447624, 27.925524, 34.171387>,  <35.645962, 28.132135, 33.892147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447624, 27.925524, 34.171387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576626, 0.405252, 0.709418,
		-0.649338, 0.754302, 0.096901,
		-0.495846, -0.516527, 0.698095,
		35.298870, 27.770565, 34.380814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509483, 28.574678, 34.448994>,  <35.645962, 28.132135, 33.892147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509483, 28.574678, 34.448994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531155, 28.202677, 34.594406>,  <35.544159, 27.979475, 34.681652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531155, 28.202677, 34.594406>,  <35.509483, 28.574678, 34.448994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531155, 28.202677, 34.594406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572188, 0.327281, 0.751989,
		-0.818331, 0.167263, 0.549871,
		0.054182, -0.930005, 0.363530,
		35.547409, 27.923676, 34.703465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191227, 28.582750, 35.056713>,  <35.509483, 28.574678, 34.448994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191227, 28.582750, 35.056713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509068, 28.339981, 35.050240>,  <35.699772, 28.194321, 35.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509068, 28.339981, 35.050240>,  <35.191227, 28.582750, 35.056713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509068, 28.339981, 35.050240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440386, 0.557804, 0.703502,
		-0.417941, -0.566129, 0.710509,
		0.794597, -0.606921, -0.016186,
		35.747448, 28.157906, 35.045383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410423, 28.389277, 35.764915>,  <35.191227, 28.582750, 35.056713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410423, 28.389277, 35.764915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708336, 28.344341, 35.501801>,  <35.887081, 28.317379, 35.343933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708336, 28.344341, 35.501801>,  <35.410423, 28.389277, 35.764915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708336, 28.344341, 35.501801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561424, 0.638304, 0.526661,
		0.360702, -0.761543, 0.538466,
		0.744780, -0.112340, -0.657786,
		35.931770, 28.310640, 35.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007095, 28.296270, 36.246906>,  <35.410423, 28.389277, 35.764915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007095, 28.296270, 36.246906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121349, 28.441418, 35.892113>,  <36.189899, 28.528505, 35.679237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121349, 28.441418, 35.892113>,  <36.007095, 28.296270, 36.246906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121349, 28.441418, 35.892113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667986, 0.588272, 0.455774,
		0.687174, -0.722678, -0.074360,
		0.285633, 0.362867, -0.886984,
		36.207039, 28.550278, 35.626019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637520, 28.236897, 36.285610>,  <36.007095, 28.296270, 36.246906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637520, 28.236897, 36.285610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575993, 28.547966, 36.041786>,  <36.539078, 28.734608, 35.895493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575993, 28.547966, 36.041786>,  <36.637520, 28.236897, 36.285610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575993, 28.547966, 36.041786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787405, 0.469156, 0.399858,
		0.596938, -0.418466, -0.684509,
		-0.153814, 0.777676, -0.609559,
		36.529850, 28.781269, 35.858917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217587, 28.570675, 35.866215>,  <36.637520, 28.236897, 36.285610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217587, 28.570675, 35.866215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948044, 28.861422, 35.919250>,  <36.786320, 29.035870, 35.951073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948044, 28.861422, 35.919250>,  <37.217587, 28.570675, 35.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948044, 28.861422, 35.919250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731258, 0.630415, 0.260459,
		0.105734, 0.272467, -0.956338,
		-0.673856, 0.726869, 0.132587,
		36.745888, 29.079483, 35.959026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597076, 29.117517, 35.696972>,  <37.217587, 28.570675, 35.866215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597076, 29.117517, 35.696972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289345, 29.284019, 35.890820>,  <37.104706, 29.383921, 36.007130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289345, 29.284019, 35.890820>,  <37.597076, 29.117517, 35.696972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289345, 29.284019, 35.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619007, 0.673296, 0.404355,
		-0.157980, 0.611068, -0.775653,
		-0.769332, 0.416255, 0.484623,
		37.058544, 29.408895, 36.036205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635212, 29.900064, 35.623188>,  <37.597076, 29.117517, 35.696972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635212, 29.900064, 35.623188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405357, 29.836130, 35.944248>,  <37.267445, 29.797770, 36.136887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405357, 29.836130, 35.944248>,  <37.635212, 29.900064, 35.623188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405357, 29.836130, 35.944248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509750, 0.697375, 0.503809,
		-0.640276, 0.698657, -0.319258,
		-0.574632, -0.159835, 0.802652,
		37.232967, 29.788179, 36.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318565, 30.546173, 35.794735>,  <37.635212, 29.900064, 35.623188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318565, 30.546173, 35.794735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 30.339178, 36.136898>,  <37.332626, 30.214981, 36.342197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 30.339178, 36.136898>,  <37.318565, 30.546173, 35.794735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327354, 30.339178, 36.136898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396108, 0.790098, 0.467807,
		-0.917941, 0.328556, 0.222339,
		0.021968, -0.517489, 0.855408,
		37.333946, 30.183931, 36.393520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853458, 30.862652, 36.121910>,  <37.318565, 30.546173, 35.794735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853458, 30.862652, 36.121910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056267, 30.658651, 36.399853>,  <37.177952, 30.536251, 36.566620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056267, 30.658651, 36.399853>,  <36.853458, 30.862652, 36.121910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056267, 30.658651, 36.399853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270034, 0.859565, 0.433854,
		-0.818545, -0.032335, 0.573532,
		0.507017, -0.510002, 0.694862,
		37.208370, 30.505651, 36.608311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834801, 31.221176, 36.712208>,  <36.853458, 30.862652, 36.121910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834801, 31.221176, 36.712208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169888, 31.005424, 36.746395>,  <37.370941, 30.875975, 36.766907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169888, 31.005424, 36.746395>,  <36.834801, 31.221176, 36.712208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169888, 31.005424, 36.746395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524073, 0.838017, 0.151909,
		-0.153560, -0.082465, 0.984692,
		0.837716, -0.539377, 0.085468,
		37.421204, 30.843611, 36.772038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144901, 31.375660, 37.354973>,  <36.834801, 31.221176, 36.712208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144901, 31.375660, 37.354973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396606, 31.258673, 37.066948>,  <37.547630, 31.188480, 36.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396606, 31.258673, 37.066948>,  <37.144901, 31.375660, 37.354973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396606, 31.258673, 37.066948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472584, 0.879520, 0.055758,
		0.617002, -0.375376, 0.691665,
		0.629264, -0.292468, -0.720063,
		37.585384, 31.170933, 36.850929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930538, 31.414345, 37.567451>,  <37.144901, 31.375660, 37.354973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930538, 31.414345, 37.567451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848843, 31.489038, 37.183071>,  <37.799828, 31.533855, 36.952442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848843, 31.489038, 37.183071>,  <37.930538, 31.414345, 37.567451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848843, 31.489038, 37.183071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445553, 0.891798, 0.078602,
		0.871649, -0.412099, -0.265336,
		-0.204234, 0.186734, -0.960947,
		37.787571, 31.545059, 36.894787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552898, 31.458853, 37.142029>,  <37.930538, 31.414345, 37.567451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552898, 31.458853, 37.142029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287952, 31.678177, 36.937820>,  <38.128986, 31.809771, 36.815296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287952, 31.678177, 36.937820>,  <38.552898, 31.458853, 37.142029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287952, 31.678177, 36.937820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695524, 0.703298, -0.147032,
		0.278430, -0.452469, -0.847200,
		-0.662361, 0.548310, -0.510523,
		38.089245, 31.842670, 36.784664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767872, 31.642988, 36.399464>,  <38.552898, 31.458853, 37.142029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767872, 31.642988, 36.399464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589291, 31.905642, 36.642616>,  <38.482143, 32.063232, 36.788506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589291, 31.905642, 36.642616>,  <38.767872, 31.642988, 36.399464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589291, 31.905642, 36.642616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684930, 0.687925, -0.240062,
		-0.575808, 0.309178, -0.756871,
		-0.446449, 0.656634, 0.607878,
		38.455357, 32.102631, 36.824978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689411, 32.422119, 36.065819>,  <38.767872, 31.642988, 36.399464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689411, 32.422119, 36.065819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726692, 32.429501, 36.464008>,  <38.749062, 32.433929, 36.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726692, 32.429501, 36.464008>,  <38.689411, 32.422119, 36.065819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726692, 32.429501, 36.464008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760605, 0.643868, -0.083152,
		-0.642490, 0.764914, 0.045977,
		0.093207, 0.018454, 0.995476,
		38.754654, 32.435036, 36.762650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452801, 33.016682, 36.346603>,  <38.689411, 32.422119, 36.065819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452801, 33.016682, 36.346603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753468, 32.853146, 36.553619>,  <38.933868, 32.755024, 36.677830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753468, 32.853146, 36.553619>,  <38.452801, 33.016682, 36.346603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753468, 32.853146, 36.553619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590997, 0.765852, -0.253364,
		-0.292774, 0.496310, 0.817288,
		0.751669, -0.408836, 0.517539,
		38.978970, 32.730495, 36.708881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557194, 33.419037, 36.970116>,  <38.452801, 33.016682, 36.346603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557194, 33.419037, 36.970116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896446, 33.250702, 36.841385>,  <39.099998, 33.149700, 36.764145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896446, 33.250702, 36.841385>,  <38.557194, 33.419037, 36.970116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896446, 33.250702, 36.841385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440183, 0.897800, -0.013961,
		0.294811, -0.129822, 0.946696,
		0.848131, -0.420835, -0.321826,
		39.150887, 33.124451, 36.744839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124470, 33.737404, 37.319790>,  <38.557194, 33.419037, 36.970116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124470, 33.737404, 37.319790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271690, 33.605850, 36.971912>,  <39.360023, 33.526920, 36.763184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271690, 33.605850, 36.971912>,  <39.124470, 33.737404, 37.319790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271690, 33.605850, 36.971912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539310, 0.837449, -0.088453,
		0.757418, -0.436481, 0.485595,
		0.368053, -0.328882, -0.869698,
		39.382107, 33.507187, 36.711002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909481, 33.846611, 37.202888>,  <39.124470, 33.737404, 37.319790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909481, 33.846611, 37.202888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756180, 33.859333, 36.833652>,  <39.664200, 33.866966, 36.612110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756180, 33.859333, 36.833652>,  <39.909481, 33.846611, 37.202888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756180, 33.859333, 36.833652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406075, 0.903441, -0.137466,
		0.829589, -0.427531, -0.359166,
		-0.383256, 0.031808, -0.923094,
		39.641205, 33.868874, 36.556725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409435, 33.832249, 36.693459>,  <39.909481, 33.846611, 37.202888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409435, 33.832249, 36.693459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083469, 34.024662, 36.564137>,  <39.887890, 34.140110, 36.486542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083469, 34.024662, 36.564137>,  <40.409435, 33.832249, 36.693459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083469, 34.024662, 36.564137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561979, 0.792244, -0.237760,
		0.141769, -0.375445, -0.915938,
		-0.814912, 0.481031, -0.323308,
		39.838997, 34.168972, 36.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353245, 33.946739, 35.926708>,  <40.409435, 33.832249, 36.693459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353245, 33.946739, 35.926708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158955, 34.225899, 36.137234>,  <40.042381, 34.393394, 36.263550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158955, 34.225899, 36.137234>,  <40.353245, 33.946739, 35.926708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158955, 34.225899, 36.137234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552639, 0.711692, -0.433688,
		-0.677244, 0.080208, -0.731374,
		-0.485728, 0.697898, 0.526315,
		40.013237, 34.435268, 36.295128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180519, 34.492355, 35.557011>,  <40.353245, 33.946739, 35.926708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180519, 34.492355, 35.557011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209980, 34.650467, 35.923252>,  <40.227657, 34.745335, 36.142998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209980, 34.650467, 35.923252>,  <40.180519, 34.492355, 35.557011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209980, 34.650467, 35.923252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664230, 0.665381, -0.340685,
		-0.743891, 0.633265, -0.213546,
		0.073654, 0.395276, 0.915605,
		40.232075, 34.769051, 36.197933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949917, 35.221226, 35.524815>,  <40.180519, 34.492355, 35.557011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949917, 35.221226, 35.524815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234276, 35.147083, 35.796185>,  <40.404892, 35.102596, 35.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234276, 35.147083, 35.796185>,  <39.949917, 35.221226, 35.524815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234276, 35.147083, 35.796185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551669, 0.745285, -0.374448,
		-0.436214, 0.640463, 0.632080,
		0.710900, -0.185359, 0.678427,
		40.447544, 35.091476, 35.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210171, 35.786331, 35.910881>,  <39.949917, 35.221226, 35.524815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210171, 35.786331, 35.910881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509937, 35.523331, 35.879726>,  <40.689796, 35.365528, 35.861034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509937, 35.523331, 35.879726>,  <40.210171, 35.786331, 35.910881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509937, 35.523331, 35.879726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620589, 0.738550, -0.263465,
		0.230749, 0.149112, 0.961520,
		0.749416, -0.657503, -0.077882,
		40.734760, 35.326080, 35.856361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753754, 36.146626, 36.232391>,  <40.210171, 35.786331, 35.910881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753754, 36.146626, 36.232391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912277, 35.840282, 36.029846>,  <41.007393, 35.656479, 35.908318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912277, 35.840282, 36.029846>,  <40.753754, 36.146626, 36.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912277, 35.840282, 36.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746743, 0.589750, -0.307523,
		0.534146, -0.256249, 0.805620,
		0.396312, -0.765853, -0.506365,
		41.031170, 35.610527, 35.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406219, 36.035023, 36.366917>,  <40.753754, 36.146626, 36.232391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406219, 36.035023, 36.366917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373055, 35.882969, 35.998432>,  <41.353153, 35.791737, 35.777344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373055, 35.882969, 35.998432>,  <41.406219, 36.035023, 36.366917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373055, 35.882969, 35.998432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878190, 0.409086, -0.247852,
		0.471070, -0.829546, 0.299910,
		-0.082915, -0.380134, -0.921207,
		41.348179, 35.768929, 35.722069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701214, 36.485439, 36.748112>,  <41.406219, 36.035023, 36.366917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701214, 36.485439, 36.748112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622505, 36.877033, 36.769558>,  <41.575279, 37.111988, 36.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622505, 36.877033, 36.769558>,  <41.701214, 36.485439, 36.748112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622505, 36.877033, 36.769558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948945, 0.203912, -0.240672,
		-0.246547, 0.003521, -0.969124,
		-0.196768, 0.978983, 0.053615,
		41.563473, 37.170727, 36.785641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119408, 36.800915, 36.142464>,  <41.701214, 36.485439, 36.748112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119408, 36.800915, 36.142464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023937, 37.062050, 36.430027>,  <41.966656, 37.218731, 36.602566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023937, 37.062050, 36.430027>,  <42.119408, 36.800915, 36.142464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023937, 37.062050, 36.430027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884347, 0.451972, -0.116835,
		-0.401203, 0.607881, -0.685213,
		-0.238675, 0.652841, 0.718911,
		41.952335, 37.257900, 36.645699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512985, 37.467358, 35.868980>,  <42.119408, 36.800915, 36.142464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512985, 37.467358, 35.868980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407726, 37.492813, 36.254044>,  <42.344570, 37.508087, 36.485081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407726, 37.492813, 36.254044>,  <42.512985, 37.467358, 35.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407726, 37.492813, 36.254044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790925, 0.585604, 0.177495,
		-0.552440, 0.808095, -0.204432,
		-0.263149, 0.063635, 0.962654,
		42.328781, 37.511902, 36.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644688, 38.180813, 35.973755>,  <42.512985, 37.467358, 35.868980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644688, 38.180813, 35.973755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692841, 37.981018, 36.316921>,  <42.721733, 37.861141, 36.522820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692841, 37.981018, 36.316921>,  <42.644688, 38.180813, 35.973755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692841, 37.981018, 36.316921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635252, 0.702854, 0.320078,
		-0.762865, 0.506462, 0.401911,
		0.120378, -0.499492, 0.857915,
		42.728954, 37.831169, 36.574295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792988, 38.663002, 36.503399>,  <42.644688, 38.180813, 35.973755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792988, 38.663002, 36.503399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927418, 38.315113, 36.647976>,  <43.008076, 38.106380, 36.734722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927418, 38.315113, 36.647976>,  <42.792988, 38.663002, 36.503399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927418, 38.315113, 36.647976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856057, 0.442094, 0.267805,
		-0.392708, 0.219416, 0.893105,
		0.336076, -0.869718, 0.361447,
		43.028240, 38.054199, 36.756409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115395, 38.627689, 37.303482>,  <42.792988, 38.663002, 36.503399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115395, 38.627689, 37.303482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291691, 38.391506, 37.033043>,  <43.397469, 38.249794, 36.870781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291691, 38.391506, 37.033043>,  <43.115395, 38.627689, 37.303482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291691, 38.391506, 37.033043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873905, 0.454298, 0.172927,
		0.205043, -0.667059, 0.716233,
		0.440736, -0.590462, -0.676097,
		43.423912, 38.214367, 36.830215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634384, 38.268822, 37.665466>,  <43.115395, 38.627689, 37.303482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634384, 38.268822, 37.665466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739346, 38.322239, 37.283195>,  <43.802322, 38.354290, 37.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739346, 38.322239, 37.283195>,  <43.634384, 38.268822, 37.665466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739346, 38.322239, 37.283195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864299, 0.407885, 0.294309,
		0.429108, -0.903214, -0.008392,
		0.262401, 0.133543, -0.955674,
		43.818066, 38.362301, 36.996494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342579, 38.229317, 37.893730>,  <43.634384, 38.268822, 37.665466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342579, 38.229317, 37.893730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298595, 38.313828, 37.505241>,  <44.272205, 38.364532, 37.272148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298595, 38.313828, 37.505241>,  <44.342579, 38.229317, 37.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298595, 38.313828, 37.505241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978060, 0.196950, -0.067890,
		0.176939, -0.957379, -0.228296,
		-0.109960, 0.211275, -0.971222,
		44.265606, 38.377209, 37.213875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333591, 38.916618, 37.536690>,  <44.342579, 38.229317, 37.893730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333591, 38.916618, 37.536690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627117, 38.687828, 37.390068>,  <44.803230, 38.550552, 37.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627117, 38.687828, 37.390068>,  <44.333591, 38.916618, 37.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627117, 38.687828, 37.390068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591013, -0.271431, -0.759624,
		0.334997, 0.774057, -0.537227,
		0.733812, -0.571980, -0.366550,
		44.847260, 38.516235, 37.280102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482235, 39.058540, 36.873127>,  <44.333591, 38.916618, 37.536690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482235, 39.058540, 36.873127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578636, 38.676552, 36.942360>,  <44.636475, 38.447361, 36.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578636, 38.676552, 36.942360>,  <44.482235, 39.058540, 36.873127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578636, 38.676552, 36.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723039, -0.295628, -0.624354,
		0.647405, 0.025326, -0.761725,
		0.241000, -0.954967, 0.173079,
		44.650936, 38.390060, 36.994286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638203, 38.709816, 36.163189>,  <44.482235, 39.058540, 36.873127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638203, 38.709816, 36.163189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531940, 38.463280, 36.459717>,  <44.468182, 38.315357, 36.637634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531940, 38.463280, 36.459717>,  <44.638203, 38.709816, 36.163189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531940, 38.463280, 36.459717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851570, -0.210455, -0.480143,
		0.451945, -0.758836, -0.468948,
		-0.265658, -0.616341, 0.741316,
		44.452244, 38.278378, 36.682114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283848, 38.057583, 35.819401>,  <44.638203, 38.709816, 36.163189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283848, 38.057583, 35.819401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150921, 38.146919, 36.185940>,  <44.071167, 38.200523, 36.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150921, 38.146919, 36.185940>,  <44.283848, 38.057583, 35.819401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150921, 38.146919, 36.185940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908935, -0.335217, -0.247924,
		0.251802, -0.915285, 0.314401,
		-0.332314, 0.223342, 0.916344,
		44.051228, 38.213921, 36.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092606, 37.433304, 36.051071>,  <44.283848, 38.057583, 35.819401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092606, 37.433304, 36.051071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882118, 37.691936, 36.271988>,  <43.755825, 37.847115, 36.404537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882118, 37.691936, 36.271988>,  <44.092606, 37.433304, 36.051071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882118, 37.691936, 36.271988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754639, -0.654444, 0.047155,
		0.391934, -0.391967, 0.832316,
		-0.526221, 0.646579, 0.552293,
		43.724251, 37.885910, 36.437675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860119, 37.417244, 35.984653>,  <44.092606, 37.433304, 36.051071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860119, 37.417244, 35.984653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192410, 37.401192, 35.762562>,  <45.391785, 37.391560, 35.629307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192410, 37.401192, 35.762562>,  <44.860119, 37.417244, 35.984653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192410, 37.401192, 35.762562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180582, -0.924036, 0.336967,
		-0.526577, -0.380193, -0.760375,
		0.830727, -0.040129, -0.555233,
		45.441628, 37.389153, 35.595993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830723, 36.792904, 35.519135>,  <44.860119, 37.417244, 35.984653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830723, 36.792904, 35.519135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205814, 36.899864, 35.607822>,  <45.430870, 36.964039, 35.661034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205814, 36.899864, 35.607822>,  <44.830723, 36.792904, 35.519135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205814, 36.899864, 35.607822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169643, -0.909530, 0.379441,
		0.303122, -0.318201, -0.898257,
		0.937730, 0.267400, 0.221718,
		45.487133, 36.980083, 35.674339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251568, 36.274452, 35.174141>,  <44.830723, 36.792904, 35.519135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251568, 36.274452, 35.174141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407146, 36.420898, 35.512295>,  <45.500492, 36.508766, 35.715187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407146, 36.420898, 35.512295>,  <45.251568, 36.274452, 35.174141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407146, 36.420898, 35.512295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167580, -0.874218, 0.455698,
		0.905891, -0.318912, -0.278671,
		0.388946, 0.366113, 0.845389,
		45.523830, 36.530731, 35.765911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008236, 36.068695, 35.385731>,  <45.251568, 36.274452, 35.174141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008236, 36.068695, 35.385731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769714, 36.126656, 35.701561>,  <45.626602, 36.161430, 35.891060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769714, 36.126656, 35.701561>,  <46.008236, 36.068695, 35.385731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769714, 36.126656, 35.701561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086964, -0.966126, 0.242978,
		0.798034, 0.213553, 0.563504,
		-0.596304, 0.144900, 0.789573,
		45.590824, 36.170124, 35.938435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199856, 36.446583, 35.884624>,  <46.008236, 36.068695, 35.385731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199856, 36.446583, 35.884624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592365, 36.370792, 35.898476>,  <46.827869, 36.325317, 35.906788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592365, 36.370792, 35.898476>,  <46.199856, 36.446583, 35.884624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592365, 36.370792, 35.898476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170106, -0.768144, 0.617268,
		-0.090353, -0.611600, -0.785991,
		0.981275, -0.189473, 0.034633,
		46.886749, 36.313950, 35.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820972, 36.227272, 36.575565>,  <46.199856, 36.446583, 35.884624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820972, 36.227272, 36.575565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210720, 36.258965, 36.491348>,  <46.444569, 36.277981, 36.440819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210720, 36.258965, 36.491348>,  <45.820972, 36.227272, 36.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210720, 36.258965, 36.491348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156092, -0.912074, 0.379153,
		-0.161992, -0.402299, -0.901063,
		0.974369, 0.079229, -0.210544,
		46.503029, 36.282734, 36.428185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058483, 35.666931, 36.016830>,  <45.820972, 36.227272, 36.575565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058483, 35.666931, 36.016830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357449, 35.790562, 36.252064>,  <46.536827, 35.864742, 36.393204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357449, 35.790562, 36.252064>,  <46.058483, 35.666931, 36.016830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357449, 35.790562, 36.252064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335769, -0.939554, 0.067066,
		0.573268, 0.147335, -0.806013,
		0.747411, 0.309081, 0.588086,
		46.581673, 35.883286, 36.428490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669537, 35.338840, 35.720871>,  <46.058483, 35.666931, 36.016830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669537, 35.338840, 35.720871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592037, 35.417725, 36.105282>,  <46.545536, 35.465057, 36.335926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592037, 35.417725, 36.105282>,  <46.669537, 35.338840, 35.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592037, 35.417725, 36.105282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093656, -0.971394, 0.218224,
		0.976571, 0.132286, 0.169735,
		-0.193748, 0.197215, 0.961025,
		46.533913, 35.476891, 36.393589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.431263, 35.125229, 34.995979>,  <46.669537, 35.338840, 35.720871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.431263, 35.125229, 34.995979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574345, 35.071396, 34.626343>,  <46.660194, 35.039097, 34.404560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574345, 35.071396, 34.626343>,  <46.431263, 35.125229, 34.995979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574345, 35.071396, 34.626343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933835, 0.053162, 0.353732,
		0.001520, -0.989475, 0.144695,
		0.357701, -0.134584, -0.924087,
		46.681656, 35.031021, 34.349117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742924, 34.529613, 34.794807>,  <46.431263, 35.125229, 34.995979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742924, 34.529613, 34.794807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899181, 34.854874, 34.622215>,  <46.992935, 35.050030, 34.518658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899181, 34.854874, 34.622215>,  <46.742924, 34.529613, 34.794807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899181, 34.854874, 34.622215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822819, -0.098274, 0.559741,
		0.412752, -0.573693, -0.707469,
		0.390646, 0.813154, -0.431482,
		47.016376, 35.098820, 34.492771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484009, 34.429409, 34.443913>,  <46.742924, 34.529613, 34.794807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484009, 34.429409, 34.443913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379112, 34.761887, 34.640015>,  <47.316174, 34.961372, 34.757675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379112, 34.761887, 34.640015>,  <47.484009, 34.429409, 34.443913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379112, 34.761887, 34.640015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801169, -0.095663, 0.590743,
		0.537920, 0.547692, -0.640839,
		-0.262241, 0.831193, 0.490253,
		47.300442, 35.011246, 34.787090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.127632, 34.842342, 34.638145>,  <47.484009, 34.429409, 34.443913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.127632, 34.842342, 34.638145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831638, 34.918770, 34.896114>,  <47.654041, 34.964626, 35.050896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831638, 34.918770, 34.896114>,  <48.127632, 34.842342, 34.638145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.831638, 34.918770, 34.896114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634849, -0.118421, 0.763507,
		0.222251, 0.974408, -0.033668,
		-0.739980, 0.191064, 0.644921,
		47.609646, 34.976089, 35.089592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.749203, 36.456123, 29.911793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020048, 36.744110, 29.972677>,  <28.182556, 36.916901, 30.009209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020048, 36.744110, 29.972677>,  <27.749203, 36.456123, 29.911793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020048, 36.744110, 29.972677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420969, -0.548631, 0.722350,
		0.603575, -0.425036, -0.674568,
		0.677113, 0.719965, 0.152213,
		28.223183, 36.960098, 30.018341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383484, 36.167007, 29.863832>,  <27.749203, 36.456123, 29.911793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383484, 36.167007, 29.863832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.463356, 36.509346, 30.054686>,  <28.511280, 36.714748, 30.169197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.463356, 36.509346, 30.054686>,  <28.383484, 36.167007, 29.863832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463356, 36.509346, 30.054686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537123, -0.502865, 0.677219,
		0.819529, 0.121051, -0.560107,
		0.199680, 0.855847, 0.477131,
		28.523260, 36.766102, 30.197824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106760, 36.102264, 30.180401>,  <28.383484, 36.167007, 29.863832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106760, 36.102264, 30.180401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.934265, 36.402050, 30.381336>,  <28.830769, 36.581921, 30.501898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.934265, 36.402050, 30.381336>,  <29.106760, 36.102264, 30.180401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934265, 36.402050, 30.381336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348661, -0.375089, 0.858920,
		0.832148, 0.545544, -0.099555,
		-0.431236, 0.749460, 0.502340,
		28.804893, 36.626888, 30.532038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658848, 36.441078, 30.540245>,  <29.106760, 36.102264, 30.180401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658848, 36.441078, 30.540245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324505, 36.538868, 30.736847>,  <29.123899, 36.597542, 30.854809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324505, 36.538868, 30.736847>,  <29.658848, 36.441078, 30.540245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324505, 36.538868, 30.736847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473476, -0.132008, 0.870858,
		0.277783, 0.960629, -0.005411,
		-0.835857, 0.244472, 0.491504,
		29.073748, 36.612209, 30.884298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845104, 36.846893, 31.067278>,  <29.658848, 36.441078, 30.540245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845104, 36.846893, 31.067278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491997, 36.714439, 31.200586>,  <29.280132, 36.634968, 31.280571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491997, 36.714439, 31.200586>,  <29.845104, 36.846893, 31.067278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491997, 36.714439, 31.200586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460433, -0.468763, 0.753832,
		-0.093395, 0.818908, 0.566274,
		-0.882767, -0.331136, 0.333272,
		29.227167, 36.615097, 31.300568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866377, 36.916309, 31.800863>,  <29.845104, 36.846893, 31.067278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866377, 36.916309, 31.800863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.583078, 36.640865, 31.738636>,  <29.413099, 36.475597, 31.701300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.583078, 36.640865, 31.738636>,  <29.866377, 36.916309, 31.800863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583078, 36.640865, 31.738636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442601, -0.604788, 0.662070,
		-0.549995, 0.400053, 0.733119,
		-0.708244, -0.688614, -0.155566,
		29.370605, 36.434280, 31.691967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739618, 36.810497, 32.520748>,  <29.866377, 36.916309, 31.800863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739618, 36.810497, 32.520748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.598234, 36.492630, 32.323341>,  <29.513403, 36.301910, 32.204895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.598234, 36.492630, 32.323341>,  <29.739618, 36.810497, 32.520748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598234, 36.492630, 32.323341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435819, -0.606714, 0.664801,
		-0.827724, 0.019897, 0.560784,
		-0.353463, -0.794671, -0.493520,
		29.492195, 36.254230, 32.175285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414816, 36.485413, 33.055504>,  <29.739618, 36.810497, 32.520748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414816, 36.485413, 33.055504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.470394, 36.211754, 32.769108>,  <29.503742, 36.047558, 32.597271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.470394, 36.211754, 32.769108>,  <29.414816, 36.485413, 33.055504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470394, 36.211754, 32.769108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000981, -0.723096, 0.690747,
		-0.990299, -0.095275, -0.101143,
		0.138947, -0.684146, -0.715988,
		29.512079, 36.006512, 32.554310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933493, 35.925922, 33.064713>,  <29.414816, 36.485413, 33.055504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933493, 35.925922, 33.064713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.262718, 35.771847, 32.897766>,  <29.460253, 35.679401, 32.797596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.262718, 35.771847, 32.897766>,  <28.933493, 35.925922, 33.064713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262718, 35.771847, 32.897766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019999, -0.754072, 0.656487,
		-0.567595, -0.531984, -0.628353,
		0.823064, -0.385186, -0.417369,
		29.509638, 35.656292, 32.772556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876411, 35.226299, 33.195354>,  <28.933493, 35.925922, 33.064713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876411, 35.226299, 33.195354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.246197, 35.222942, 33.042885>,  <29.468069, 35.220928, 32.951405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.246197, 35.222942, 33.042885>,  <28.876411, 35.226299, 33.195354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246197, 35.222942, 33.042885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201797, -0.837465, 0.507868,
		-0.323483, -0.546426, -0.772513,
		0.924466, -0.008396, -0.381173,
		29.523537, 35.220425, 32.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090767, 34.625885, 32.979271>,  <28.876411, 35.226299, 33.195354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090767, 34.625885, 32.979271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.461723, 34.759239, 33.047157>,  <29.684298, 34.839252, 33.087891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.461723, 34.759239, 33.047157>,  <29.090767, 34.625885, 32.979271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461723, 34.759239, 33.047157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135252, -0.721781, 0.678777,
		0.348793, -0.606536, -0.714463,
		0.927389, 0.333385, 0.169717,
		29.739941, 34.859253, 33.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413643, 34.023804, 33.003922>,  <29.090767, 34.625885, 32.979271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413643, 34.023804, 33.003922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.657375, 34.288021, 33.179371>,  <29.803614, 34.446552, 33.284641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.657375, 34.288021, 33.179371>,  <29.413643, 34.023804, 33.003922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657375, 34.288021, 33.179371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455399, -0.744383, 0.488370,
		0.649099, -0.097828, -0.754387,
		0.609330, 0.660548, 0.438627,
		29.840174, 34.486187, 33.310959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073259, 33.735504, 32.936016>,  <29.413643, 34.023804, 33.003922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073259, 33.735504, 32.936016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.098286, 34.008396, 33.227398>,  <30.113302, 34.172131, 33.402225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.098286, 34.008396, 33.227398>,  <30.073259, 33.735504, 32.936016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098286, 34.008396, 33.227398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486759, -0.658049, 0.574489,
		0.871293, 0.318636, -0.373256,
		0.062568, 0.682234, 0.728452,
		30.117056, 34.213066, 33.445934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802986, 33.925037, 33.002991>,  <30.073259, 33.735504, 32.936016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802986, 33.925037, 33.002991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579733, 33.969147, 33.331947>,  <30.445782, 33.995613, 33.529320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579733, 33.969147, 33.331947>,  <30.802986, 33.925037, 33.002991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579733, 33.969147, 33.331947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520217, -0.725641, 0.450356,
		0.646422, 0.679180, 0.347639,
		-0.558134, 0.110272, 0.822391,
		30.412292, 34.002228, 33.578663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307686, 33.727268, 33.464836>,  <30.802986, 33.925037, 33.002991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307686, 33.727268, 33.464836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.988438, 33.723587, 33.705807>,  <30.796888, 33.721378, 33.850388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.988438, 33.723587, 33.705807>,  <31.307686, 33.727268, 33.464836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988438, 33.723587, 33.705807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474565, -0.625632, 0.619172,
		0.371201, 0.780064, 0.503696,
		-0.798122, -0.009199, 0.602426,
		30.749001, 33.720829, 33.886536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405308, 33.987823, 34.233742>,  <31.307686, 33.727268, 33.464836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405308, 33.987823, 34.233742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.086695, 33.747623, 34.261845>,  <30.895527, 33.603504, 34.278706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.086695, 33.747623, 34.261845>,  <31.405308, 33.987823, 34.233742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086695, 33.747623, 34.261845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482697, -0.561661, 0.671968,
		-0.364057, 0.569156, 0.737240,
		-0.796534, -0.600498, 0.070253,
		30.847734, 33.567474, 34.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337690, 33.782818, 34.961319>,  <31.405308, 33.987823, 34.233742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337690, 33.782818, 34.961319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093056, 33.509998, 34.800938>,  <30.946276, 33.346306, 34.704708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093056, 33.509998, 34.800938>,  <31.337690, 33.782818, 34.961319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093056, 33.509998, 34.800938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358188, -0.690566, 0.628347,
		-0.705453, 0.240670, 0.666643,
		-0.611586, -0.682053, -0.400957,
		30.909580, 33.305382, 34.680649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990473, 33.462460, 35.490463>,  <31.337690, 33.782818, 34.961319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990473, 33.462460, 35.490463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.973587, 33.208736, 35.181694>,  <30.963455, 33.056503, 34.996433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.973587, 33.208736, 35.181694>,  <30.990473, 33.462460, 35.490463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973587, 33.208736, 35.181694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455331, -0.699930, 0.550247,
		-0.889321, -0.328254, 0.318367,
		-0.042214, -0.634309, -0.771926,
		30.960922, 33.018444, 34.950115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623341, 32.914688, 35.742374>,  <30.990473, 33.462460, 35.490463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623341, 32.914688, 35.742374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.806761, 32.756451, 35.424068>,  <30.916813, 32.661510, 35.233086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.806761, 32.756451, 35.424068>,  <30.623341, 32.914688, 35.742374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806761, 32.756451, 35.424068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392765, -0.713034, 0.580792,
		-0.797161, -0.578871, -0.171589,
		0.458552, -0.395590, -0.795763,
		30.944326, 32.637775, 35.185341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409821, 32.196846, 35.816456>,  <30.623341, 32.914688, 35.742374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409821, 32.196846, 35.816456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.733839, 32.217541, 35.582825>,  <30.928251, 32.229958, 35.442646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.733839, 32.217541, 35.582825>,  <30.409821, 32.196846, 35.816456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733839, 32.217541, 35.582825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422535, -0.742146, 0.520272,
		-0.406553, -0.668239, -0.623034,
		0.810048, 0.051736, -0.584076,
		30.976854, 32.233063, 35.407600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673492, 31.466612, 35.600925>,  <30.409821, 32.196846, 35.816456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673492, 31.466612, 35.600925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006954, 31.679096, 35.540485>,  <31.207031, 31.806587, 35.504219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006954, 31.679096, 35.540485>,  <30.673492, 31.466612, 35.600925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006954, 31.679096, 35.540485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526362, -0.681377, 0.508594,
		0.167214, -0.503527, -0.847644,
		0.833656, 0.531212, -0.151102,
		31.257051, 31.838459, 35.495155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887016, 30.885736, 36.007351>,  <30.673492, 31.466612, 35.600925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887016, 30.885736, 36.007351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.612696, 30.597368, 35.967449>,  <30.448103, 30.424347, 35.943508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.612696, 30.597368, 35.967449>,  <30.887016, 30.885736, 36.007351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612696, 30.597368, 35.967449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403033, 0.490327, -0.772750,
		0.606002, -0.489750, -0.626822,
		-0.685803, -0.720919, -0.099754,
		30.406956, 30.381092, 35.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775040, 30.650656, 35.241364>,  <30.887016, 30.885736, 36.007351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775040, 30.650656, 35.241364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.444981, 30.557545, 35.447254>,  <30.246944, 30.501678, 35.570789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.444981, 30.557545, 35.447254>,  <30.775040, 30.650656, 35.241364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444981, 30.557545, 35.447254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563510, 0.403450, -0.720892,
		-0.039860, -0.884897, -0.464078,
		-0.825147, -0.232778, 0.514730,
		30.197437, 30.487711, 35.601673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266155, 30.169930, 34.860180>,  <30.775040, 30.650656, 35.241364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266155, 30.169930, 34.860180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.028551, 30.342863, 35.131542>,  <29.885988, 30.446623, 35.294361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.028551, 30.342863, 35.131542>,  <30.266155, 30.169930, 34.860180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028551, 30.342863, 35.131542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660950, 0.218446, -0.717932,
		-0.458582, -0.874854, 0.155991,
		-0.594010, 0.432333, 0.678410,
		29.850348, 30.472563, 35.335064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691893, 30.052906, 34.619648>,  <30.266155, 30.169930, 34.860180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691893, 30.052906, 34.619648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.594254, 30.350981, 34.867878>,  <29.535669, 30.529827, 35.016815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.594254, 30.350981, 34.867878>,  <29.691893, 30.052906, 34.619648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594254, 30.350981, 34.867878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549953, 0.420699, -0.721501,
		-0.798728, -0.517402, 0.307127,
		-0.244098, 0.745189, 0.620572,
		29.521025, 30.574537, 35.054050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981680, 30.263300, 34.502903>,  <29.691893, 30.052906, 34.619648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981680, 30.263300, 34.502903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158564, 30.568130, 34.692085>,  <29.264694, 30.751030, 34.805595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158564, 30.568130, 34.692085>,  <28.981680, 30.263300, 34.502903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158564, 30.568130, 34.692085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511331, 0.647436, -0.565126,
		-0.736881, 0.008064, 0.675975,
		0.442208, 0.762077, 0.472960,
		29.291225, 30.796753, 34.833973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490129, 30.699018, 34.518654>,  <28.981680, 30.263300, 34.502903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490129, 30.699018, 34.518654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.799940, 30.937378, 34.603516>,  <28.985826, 31.080393, 34.654434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.799940, 30.937378, 34.603516>,  <28.490129, 30.699018, 34.518654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799940, 30.937378, 34.603516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345012, 0.679107, -0.647904,
		-0.530162, 0.428624, 0.731580,
		0.774529, 0.595898, 0.212156,
		29.032299, 31.116148, 34.667164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149216, 31.307022, 34.463196>,  <28.490129, 30.699018, 34.518654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149216, 31.307022, 34.463196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.526846, 31.438906, 34.461643>,  <28.753424, 31.518036, 34.460712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.526846, 31.438906, 34.461643>,  <28.149216, 31.307022, 34.463196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526846, 31.438906, 34.461643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249156, 0.705607, -0.663355,
		-0.215975, 0.627224, 0.748295,
		0.944074, 0.329710, -0.003883,
		28.810068, 31.537819, 34.460480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200043, 32.033604, 34.677750>,  <28.149216, 31.307022, 34.463196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200043, 32.033604, 34.677750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.532726, 31.991894, 34.459618>,  <28.732336, 31.966867, 34.328739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.532726, 31.991894, 34.459618>,  <28.200043, 32.033604, 34.677750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532726, 31.991894, 34.459618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184839, 0.874174, -0.449060,
		0.523540, 0.474286, 0.707785,
		0.831709, -0.104274, -0.545332,
		28.782240, 31.960611, 34.296017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469835, 32.721462, 34.525749>,  <28.200043, 32.033604, 34.677750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469835, 32.721462, 34.525749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666140, 32.503662, 34.253666>,  <28.783922, 32.372982, 34.090416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666140, 32.503662, 34.253666>,  <28.469835, 32.721462, 34.525749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666140, 32.503662, 34.253666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209632, 0.683960, -0.698751,
		0.845700, 0.485512, 0.221517,
		0.490761, -0.544496, -0.680204,
		28.813368, 32.340313, 34.049606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859701, 33.196697, 34.112652>,  <28.469835, 32.721462, 34.525749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859701, 33.196697, 34.112652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849054, 32.855122, 33.904774>,  <28.842667, 32.650177, 33.780048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849054, 32.855122, 33.904774>,  <28.859701, 33.196697, 34.112652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849054, 32.855122, 33.904774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275412, 0.506024, -0.817366,
		0.960958, 0.121374, -0.248654,
		-0.026618, -0.853937, -0.519695,
		28.841068, 32.598942, 33.748867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194288, 33.348331, 33.520252>,  <28.859701, 33.196697, 34.112652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194288, 33.348331, 33.520252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029709, 33.016354, 33.369576>,  <28.930962, 32.817165, 33.279167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029709, 33.016354, 33.369576>,  <29.194288, 33.348331, 33.520252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029709, 33.016354, 33.369576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396187, 0.535073, -0.746146,
		0.820820, -0.157759, -0.548969,
		-0.411450, -0.829946, -0.376696,
		28.906275, 32.767368, 33.256565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475393, 33.156883, 32.809246>,  <29.194288, 33.348331, 33.520252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475393, 33.156883, 32.809246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118725, 32.981380, 32.853813>,  <28.904724, 32.876080, 32.880554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118725, 32.981380, 32.853813>,  <29.475393, 33.156883, 32.809246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118725, 32.981380, 32.853813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330825, 0.463605, -0.821964,
		0.308990, -0.769781, -0.558536,
		-0.891672, -0.438756, 0.111414,
		28.851223, 32.849754, 32.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360779, 32.627834, 32.226460>,  <29.475393, 33.156883, 32.809246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360779, 32.627834, 32.226460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029902, 32.766048, 32.403709>,  <28.831375, 32.848976, 32.510059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029902, 32.766048, 32.403709>,  <29.360779, 32.627834, 32.226460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029902, 32.766048, 32.403709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308794, 0.379312, -0.872220,
		-0.469468, -0.858327, -0.207063,
		-0.827192, 0.345540, 0.443121,
		28.781744, 32.869709, 32.536644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748169, 32.498009, 31.829525>,  <29.360779, 32.627834, 32.226460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748169, 32.498009, 31.829525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.597908, 32.764961, 32.086735>,  <28.507751, 32.925133, 32.241062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.597908, 32.764961, 32.086735>,  <28.748169, 32.498009, 31.829525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597908, 32.764961, 32.086735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417348, 0.497684, -0.760349,
		-0.827469, -0.553993, 0.091574,
		-0.375653, 0.667384, 0.643026,
		28.485212, 32.965176, 32.279644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994652, 32.547035, 31.601358>,  <28.748169, 32.498009, 31.829525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994652, 32.547035, 31.601358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.055351, 32.872429, 31.825937>,  <28.091770, 33.067665, 31.960684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.055351, 32.872429, 31.825937>,  <27.994652, 32.547035, 31.601358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055351, 32.872429, 31.825937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506903, 0.551688, -0.662337,
		-0.848541, -0.184089, 0.496074,
		0.151749, 0.813481, 0.561445,
		28.100876, 33.116474, 31.994371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396776, 32.949409, 31.640207>,  <27.994652, 32.547035, 31.601358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396776, 32.949409, 31.640207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.692488, 33.205551, 31.723545>,  <27.869915, 33.359238, 31.773548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.692488, 33.205551, 31.723545>,  <27.396776, 32.949409, 31.640207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692488, 33.205551, 31.723545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282313, 0.575617, -0.767440,
		-0.611363, 0.508534, 0.606324,
		0.739280, 0.640357, 0.208345,
		27.914272, 33.397659, 31.786049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120625, 33.620701, 31.563137>,  <27.396776, 32.949409, 31.640207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120625, 33.620701, 31.563137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509876, 33.712265, 31.553156>,  <27.743427, 33.767204, 31.547167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509876, 33.712265, 31.553156>,  <27.120625, 33.620701, 31.563137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509876, 33.712265, 31.553156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184594, 0.710729, -0.678815,
		-0.137655, 0.665180, 0.733885,
		0.973127, 0.228913, -0.024953,
		27.801815, 33.780937, 31.545670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146036, 34.327248, 31.662321>,  <27.120625, 33.620701, 31.563137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146036, 34.327248, 31.662321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489136, 34.229557, 31.481380>,  <27.694996, 34.170944, 31.372816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489136, 34.229557, 31.481380>,  <27.146036, 34.327248, 31.662321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489136, 34.229557, 31.481380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182308, 0.678235, -0.711872,
		0.480656, 0.693075, 0.537231,
		0.857749, -0.244224, -0.452350,
		27.746460, 34.156288, 31.345675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358585, 34.960449, 31.357225>,  <27.146036, 34.327248, 31.662321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358585, 34.960449, 31.357225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.619713, 34.710491, 31.185955>,  <27.776390, 34.560516, 31.083193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.619713, 34.710491, 31.185955>,  <27.358585, 34.960449, 31.357225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619713, 34.710491, 31.185955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103483, 0.633510, -0.766783,
		0.750411, 0.456262, 0.478233,
		0.652820, -0.624892, -0.428178,
		27.815559, 34.523022, 31.057501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.847387, 35.437565, 31.025187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882212, 35.087597, 30.834637>,  <27.903107, 34.877617, 30.720306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882212, 35.087597, 30.834637>,  <27.847387, 35.437565, 31.025187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882212, 35.087597, 30.834637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069319, 0.471712, -0.879023,
		0.993788, 0.109550, -0.019581,
		0.087061, -0.874921, -0.476376,
		27.908329, 34.825119, 30.691723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311598, 35.462051, 30.481245>,  <27.847387, 35.437565, 31.025187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311598, 35.462051, 30.481245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106859, 35.136948, 30.369938>,  <27.984016, 34.941887, 30.303154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106859, 35.136948, 30.369938>,  <28.311598, 35.462051, 30.481245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106859, 35.136948, 30.369938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222816, 0.438430, -0.870708,
		0.829678, -0.383667, -0.405505,
		-0.511847, -0.812760, -0.278269,
		27.953304, 34.893120, 30.286457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499563, 35.315285, 29.796463>,  <28.311598, 35.462051, 30.481245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499563, 35.315285, 29.796463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129770, 35.175999, 29.858528>,  <27.907894, 35.092426, 29.895767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129770, 35.175999, 29.858528>,  <28.499563, 35.315285, 29.796463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129770, 35.175999, 29.858528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304116, 0.428226, -0.850961,
		0.229873, -0.833887, -0.501786,
		-0.924484, -0.348215, 0.155161,
		27.852425, 35.071533, 29.905077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217604, 34.945015, 29.169649>,  <28.499563, 35.315285, 29.796463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217604, 34.945015, 29.169649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892370, 35.071651, 29.365063>,  <27.697229, 35.147633, 29.482311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892370, 35.071651, 29.365063>,  <28.217604, 34.945015, 29.169649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892370, 35.071651, 29.365063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454621, 0.178845, -0.872545,
		-0.363613, -0.931549, -0.001486,
		-0.813084, 0.316593, 0.488532,
		27.648445, 35.166630, 29.511621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619963, 34.921196, 28.723980>,  <28.217604, 34.945015, 29.169649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619963, 34.921196, 28.723980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.439926, 35.135277, 29.009912>,  <27.331903, 35.263725, 29.181471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.439926, 35.135277, 29.009912>,  <27.619963, 34.921196, 28.723980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439926, 35.135277, 29.009912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620583, 0.388130, -0.681345,
		-0.642101, -0.750279, 0.157441,
		-0.450092, 0.535197, 0.714829,
		27.304899, 35.295837, 29.224361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983456, 34.864689, 28.528286>,  <27.619963, 34.921196, 28.723980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983456, 34.864689, 28.528286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.962837, 35.181889, 28.771103>,  <26.950466, 35.372208, 28.916794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.962837, 35.181889, 28.771103>,  <26.983456, 34.864689, 28.528286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962837, 35.181889, 28.771103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516376, 0.499126, -0.695867,
		-0.854810, -0.349330, 0.383756,
		-0.051545, 0.792996, 0.607043,
		26.947374, 35.419788, 28.953217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356642, 35.094048, 28.385557>,  <26.983456, 34.864689, 28.528286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356642, 35.094048, 28.385557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547432, 35.403122, 28.553104>,  <26.661907, 35.588566, 28.653633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547432, 35.403122, 28.553104>,  <26.356642, 35.094048, 28.385557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547432, 35.403122, 28.553104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418113, 0.618676, -0.665148,
		-0.773093, 0.142126, 0.618164,
		0.476978, 0.772684, 0.418869,
		26.690525, 35.634926, 28.678764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845440, 35.611023, 28.529438>,  <26.356642, 35.094048, 28.385557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845440, 35.611023, 28.529438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.198776, 35.797100, 28.506456>,  <26.410778, 35.908745, 28.492666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.198776, 35.797100, 28.506456>,  <25.845440, 35.611023, 28.529438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198776, 35.797100, 28.506456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403336, 0.691927, -0.598797,
		-0.238802, 0.552116, 0.798838,
		0.883343, 0.465193, -0.057455,
		26.463779, 35.936657, 28.489220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662943, 36.247253, 28.708054>,  <25.845440, 35.611023, 28.529438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662943, 36.247253, 28.708054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.008776, 36.325806, 28.523045>,  <26.216276, 36.372936, 28.412039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.008776, 36.325806, 28.523045>,  <25.662943, 36.247253, 28.708054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008776, 36.325806, 28.523045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470089, 0.641284, -0.606442,
		0.177513, 0.741747, 0.646762,
		0.864584, 0.196385, -0.462523,
		26.268150, 36.384720, 28.384287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648571, 36.999126, 28.656223>,  <25.662943, 36.247253, 28.708054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648571, 36.999126, 28.656223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.935946, 36.863827, 28.413097>,  <26.108370, 36.782646, 28.267221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.935946, 36.863827, 28.413097>,  <25.648571, 36.999126, 28.656223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935946, 36.863827, 28.413097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258463, 0.681435, -0.684722,
		0.645790, 0.649027, 0.402144,
		0.718437, -0.338247, -0.607813,
		26.151476, 36.762352, 28.230753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996704, 37.528412, 28.451090>,  <25.648571, 36.999126, 28.656223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996704, 37.528412, 28.451090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.060150, 37.255955, 28.165186>,  <26.098217, 37.092480, 27.993645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.060150, 37.255955, 28.165186>,  <25.996704, 37.528412, 28.451090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060150, 37.255955, 28.165186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278799, 0.663564, -0.694229,
		0.947160, 0.309388, -0.084653,
		0.158614, -0.681148, -0.714759,
		26.107735, 37.051609, 27.950758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329422, 37.842831, 28.037275>,  <25.996704, 37.528412, 28.451090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329422, 37.842831, 28.037275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.221701, 37.526413, 27.817556>,  <26.157068, 37.336563, 27.685724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.221701, 37.526413, 27.817556>,  <26.329422, 37.842831, 28.037275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221701, 37.526413, 27.817556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075524, 0.585959, -0.806814,
		0.960090, -0.175791, -0.217543,
		-0.269302, -0.791043, -0.549297,
		26.140909, 37.289101, 27.652767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653109, 37.929821, 27.352774>,  <26.329422, 37.842831, 28.037275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653109, 37.929821, 27.352774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.343382, 37.683529, 27.294386>,  <26.157545, 37.535751, 27.259354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.343382, 37.683529, 27.294386>,  <26.653109, 37.929821, 27.352774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343382, 37.683529, 27.294386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258716, 0.518552, -0.814966,
		0.577495, -0.593276, -0.560823,
		-0.774316, -0.615733, -0.145971,
		26.111086, 37.498810, 27.250595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755016, 37.749512, 26.642935>,  <26.653109, 37.929821, 27.352774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755016, 37.749512, 26.642935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.376308, 37.650928, 26.725771>,  <26.149084, 37.591778, 26.775473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.376308, 37.650928, 26.725771>,  <26.755016, 37.749512, 26.642935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376308, 37.650928, 26.725771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240818, 0.115334, -0.963693,
		0.213629, -0.962265, -0.168547,
		-0.946768, -0.246462, 0.207092,
		26.092278, 37.576992, 26.787899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577097, 37.195316, 26.089415>,  <26.755016, 37.749512, 26.642935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577097, 37.195316, 26.089415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.233885, 37.367863, 26.200918>,  <26.027958, 37.471390, 26.267820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.233885, 37.367863, 26.200918>,  <26.577097, 37.195316, 26.089415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233885, 37.367863, 26.200918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174175, 0.266205, -0.948050,
		-0.483163, -0.862009, -0.153279,
		-0.858031, 0.431365, 0.278761,
		25.976475, 37.497272, 26.284546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956829, 37.018616, 25.680010>,  <26.577097, 37.195316, 26.089415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956829, 37.018616, 25.680010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.867666, 37.377712, 25.831995>,  <25.814169, 37.593170, 25.923185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.867666, 37.377712, 25.831995>,  <25.956829, 37.018616, 25.680010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867666, 37.377712, 25.831995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266229, 0.318890, -0.909632,
		-0.937782, -0.303920, 0.167923,
		-0.222907, 0.897742, 0.379962,
		25.800795, 37.647034, 25.945984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307737, 37.104668, 25.451296>,  <25.956829, 37.018616, 25.680010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307737, 37.104668, 25.451296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.412226, 37.480755, 25.538704>,  <25.474918, 37.706406, 25.591148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.412226, 37.480755, 25.538704>,  <25.307737, 37.104668, 25.451296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412226, 37.480755, 25.538704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126862, 0.257857, -0.957818,
		-0.956906, 0.222481, 0.186636,
		0.261222, 0.940219, 0.218521,
		25.490593, 37.762821, 25.604259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719406, 37.530270, 25.170326>,  <25.307737, 37.104668, 25.451296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719406, 37.530270, 25.170326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.009491, 37.799179, 25.229811>,  <25.183542, 37.960526, 25.265501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.009491, 37.799179, 25.229811>,  <24.719406, 37.530270, 25.170326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009491, 37.799179, 25.229811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243205, 0.452180, -0.858129,
		-0.644143, 0.586157, 0.491427,
		0.725211, 0.672275, 0.148712,
		25.227055, 38.000862, 25.274424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452103, 38.142414, 24.872475>,  <24.719406, 37.530270, 25.170326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452103, 38.142414, 24.872475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.841286, 38.221638, 24.920006>,  <25.074797, 38.269173, 24.948524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.841286, 38.221638, 24.920006>,  <24.452103, 38.142414, 24.872475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841286, 38.221638, 24.920006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028686, 0.614098, -0.788708,
		-0.229186, 0.763973, 0.603175,
		0.972960, 0.198063, 0.118827,
		25.133173, 38.281055, 24.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510511, 38.815411, 24.794115>,  <24.452103, 38.142414, 24.872475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510511, 38.815411, 24.794115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.887632, 38.701908, 24.724136>,  <25.113905, 38.633808, 24.682150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.887632, 38.701908, 24.724136>,  <24.510511, 38.815411, 24.794115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887632, 38.701908, 24.724136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070684, 0.683045, -0.726948,
		0.325771, 0.673002, 0.664034,
		0.942803, -0.283755, -0.174946,
		25.170473, 38.616783, 24.671652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818254, 39.454235, 24.730597>,  <24.510511, 38.815411, 24.794115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818254, 39.454235, 24.730597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.034693, 39.171425, 24.548462>,  <25.164555, 39.001740, 24.439180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.034693, 39.171425, 24.548462>,  <24.818254, 39.454235, 24.730597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034693, 39.171425, 24.548462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172566, 0.623274, -0.762726,
		0.823066, 0.334131, 0.459259,
		0.541095, -0.707026, -0.455336,
		25.197021, 38.959316, 24.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404652, 39.880280, 24.316460>,  <24.818254, 39.454235, 24.730597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404652, 39.880280, 24.316460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.361803, 39.504871, 24.185186>,  <25.336094, 39.279625, 24.106422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.361803, 39.504871, 24.185186>,  <25.404652, 39.880280, 24.316460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361803, 39.504871, 24.185186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278986, 0.345197, -0.896106,
		0.954302, -0.004434, -0.298812,
		-0.107122, -0.938520, -0.328185,
		25.329666, 39.223316, 24.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644272, 39.979141, 23.762083>,  <25.404652, 39.880280, 24.316460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644272, 39.979141, 23.762083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.441046, 39.637234, 23.719669>,  <25.319111, 39.432091, 23.694221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.441046, 39.637234, 23.719669>,  <25.644272, 39.979141, 23.762083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441046, 39.637234, 23.719669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142619, 0.204893, -0.968338,
		0.849430, -0.476856, -0.226005,
		-0.508065, -0.854768, -0.106034,
		25.288626, 39.380802, 23.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075006, 40.519234, 24.022850>,  <25.644272, 39.979141, 23.762083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075006, 40.519234, 24.022850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.275183, 40.340164, 23.726433>,  <26.395288, 40.232723, 23.548582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.275183, 40.340164, 23.726433>,  <26.075006, 40.519234, 24.022850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275183, 40.340164, 23.726433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864356, -0.307281, -0.398080,
		-0.049498, 0.839741, -0.540727,
		0.500439, -0.447676, -0.741044,
		26.425314, 40.205860, 23.504120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871183, 40.764500, 23.307659>,  <26.075006, 40.519234, 24.022850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871183, 40.764500, 23.307659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.989157, 40.383270, 23.280357>,  <26.059940, 40.154533, 23.263977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.989157, 40.383270, 23.280357>,  <25.871183, 40.764500, 23.307659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989157, 40.383270, 23.280357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924863, -0.266793, -0.271017,
		0.240091, 0.143056, -0.960152,
		0.294932, -0.953077, -0.068252,
		26.077637, 40.097347, 23.259882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646688, 40.684338, 23.401316>,  <25.871183, 40.764500, 23.307659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646688, 40.684338, 23.401316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.737841, 40.938683, 23.696274>,  <26.792532, 41.091290, 23.873249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.737841, 40.938683, 23.696274>,  <26.646688, 40.684338, 23.401316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737841, 40.938683, 23.696274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430376, -0.745103, 0.509507,
		0.873412, 0.201251, -0.443453,
		0.227879, 0.635861, 0.737396,
		26.806204, 41.129440, 23.917492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437580, 40.666988, 23.587040>,  <26.646688, 40.684338, 23.401316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437580, 40.666988, 23.587040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209042, 40.784286, 23.893654>,  <27.071918, 40.854664, 24.077621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209042, 40.784286, 23.893654>,  <27.437580, 40.666988, 23.587040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209042, 40.784286, 23.893654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476779, -0.641624, 0.600833,
		0.668017, 0.708750, 0.226776,
		-0.571345, 0.293245, 0.766532,
		27.037638, 40.872261, 24.123613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004612, 40.695095, 24.126362>,  <27.437580, 40.666988, 23.587040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004612, 40.695095, 24.126362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.657650, 40.709633, 24.324871>,  <27.449472, 40.718353, 24.443977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.657650, 40.709633, 24.324871>,  <28.004612, 40.695095, 24.126362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657650, 40.709633, 24.324871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382836, -0.588369, 0.712221,
		0.317875, 0.807776, 0.496442,
		-0.867405, 0.036341, 0.496273,
		27.397429, 40.720535, 24.473753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183096, 40.932297, 24.781490>,  <28.004612, 40.695095, 24.126362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183096, 40.932297, 24.781490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.843784, 40.720829, 24.793703>,  <27.640198, 40.593948, 24.801031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.843784, 40.720829, 24.793703>,  <28.183096, 40.932297, 24.781490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843784, 40.720829, 24.793703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434437, -0.661797, 0.610975,
		-0.302794, 0.531543, 0.791061,
		-0.848281, -0.528666, 0.030533,
		27.589300, 40.562229, 24.802862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058697, 40.887070, 25.526407>,  <28.183096, 40.932297, 24.781490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058697, 40.887070, 25.526407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.851173, 40.601788, 25.337862>,  <27.726660, 40.430618, 25.224735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.851173, 40.601788, 25.337862>,  <28.058697, 40.887070, 25.526407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851173, 40.601788, 25.337862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350577, -0.680369, 0.643580,
		-0.779702, 0.168646, 0.603012,
		-0.518807, -0.713202, -0.471361,
		27.695532, 40.387825, 25.196453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671719, 40.562740, 25.961704>,  <28.058697, 40.887070, 25.526407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671719, 40.562740, 25.961704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.718536, 40.312065, 25.653534>,  <27.746628, 40.161659, 25.468632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.718536, 40.312065, 25.653534>,  <27.671719, 40.562740, 25.961704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718536, 40.312065, 25.653534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494410, -0.636026, 0.592477,
		-0.861313, -0.450253, 0.235399,
		0.117045, -0.626692, -0.770427,
		27.753651, 40.124058, 25.422405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286205, 39.960323, 26.188196>,  <27.671719, 40.562740, 25.961704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286205, 39.960323, 26.188196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484112, 39.792965, 25.883526>,  <27.602856, 39.692551, 25.700724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484112, 39.792965, 25.883526>,  <27.286205, 39.960323, 26.188196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484112, 39.792965, 25.883526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249939, -0.770929, 0.585832,
		-0.832309, -0.480222, -0.276855,
		0.494765, -0.418396, -0.761678,
		27.632542, 39.667446, 25.655024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025648, 39.295563, 26.191988>,  <27.286205, 39.960323, 26.188196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025648, 39.295563, 26.191988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.378416, 39.312477, 26.004189>,  <27.590076, 39.322624, 25.891510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.378416, 39.312477, 26.004189>,  <27.025648, 39.295563, 26.191988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378416, 39.312477, 26.004189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357047, -0.710206, 0.606733,
		-0.307786, -0.702723, -0.641442,
		0.881921, 0.042281, -0.469497,
		27.642992, 39.325161, 25.863340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176262, 38.579514, 26.021759>,  <27.025648, 39.295563, 26.191988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176262, 38.579514, 26.021759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504511, 38.806900, 26.045145>,  <27.701460, 38.943333, 26.059177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504511, 38.806900, 26.045145>,  <27.176262, 38.579514, 26.021759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504511, 38.806900, 26.045145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358912, -0.592302, 0.721360,
		0.444700, -0.570981, -0.690088,
		0.820624, 0.568470, 0.058465,
		27.750698, 38.977440, 26.062685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718510, 38.060478, 25.988558>,  <27.176262, 38.579514, 26.021759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718510, 38.060478, 25.988558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837345, 38.398827, 26.165751>,  <27.908648, 38.601837, 26.272066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837345, 38.398827, 26.165751>,  <27.718510, 38.060478, 25.988558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837345, 38.398827, 26.165751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159215, -0.501319, 0.850488,
		0.941482, -0.182142, -0.283613,
		0.297090, 0.845875, 0.442983,
		27.926472, 38.652588, 26.298645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262772, 37.850101, 26.291428>,  <27.718510, 38.060478, 25.988558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262772, 37.850101, 26.291428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.241428, 38.193298, 26.495781>,  <28.228622, 38.399216, 26.618393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.241428, 38.193298, 26.495781>,  <28.262772, 37.850101, 26.291428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241428, 38.193298, 26.495781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263990, -0.481288, 0.835865,
		0.963048, 0.179467, -0.200822,
		-0.053357, 0.857994, 0.510881,
		28.225422, 38.450695, 26.649046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766758, 37.749058, 26.812841>,  <28.262772, 37.850101, 26.291428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766758, 37.749058, 26.812841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513168, 38.035484, 26.929680>,  <28.361015, 38.207340, 26.999783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513168, 38.035484, 26.929680>,  <28.766758, 37.749058, 26.812841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513168, 38.035484, 26.929680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120033, -0.282014, 0.951872,
		0.763983, 0.638522, 0.092837,
		-0.633973, 0.716071, 0.292098,
		28.322977, 38.250305, 27.017309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063345, 37.956989, 27.342508>,  <28.766758, 37.749058, 26.812841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063345, 37.956989, 27.342508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695589, 38.103661, 27.399452>,  <28.474936, 38.191662, 27.433619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695589, 38.103661, 27.399452>,  <29.063345, 37.956989, 27.342508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695589, 38.103661, 27.399452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020684, -0.406489, 0.913422,
		0.392801, 0.836847, 0.381307,
		-0.919391, 0.366680, 0.142360,
		28.419771, 38.213665, 27.442160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080391, 38.474998, 27.821793>,  <29.063345, 37.956989, 27.342508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080391, 38.474998, 27.821793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714731, 38.312851, 27.820639>,  <28.495335, 38.215565, 27.819946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714731, 38.312851, 27.820639>,  <29.080391, 38.474998, 27.821793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714731, 38.312851, 27.820639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081845, -0.191529, 0.978069,
		-0.397028, 0.893865, 0.208263,
		-0.914150, -0.405366, -0.002884,
		28.440487, 38.191242, 27.819773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795036, 38.716873, 28.407307>,  <29.080391, 38.474998, 27.821793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795036, 38.716873, 28.407307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541494, 38.422432, 28.312334>,  <28.389368, 38.245766, 28.255350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541494, 38.422432, 28.312334>,  <28.795036, 38.716873, 28.407307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541494, 38.422432, 28.312334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044955, -0.271393, 0.961418,
		-0.772142, 0.620075, 0.138933,
		-0.633857, -0.736106, -0.237430,
		28.351337, 38.201599, 28.241106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250835, 38.775650, 28.896872>,  <28.795036, 38.716873, 28.407307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250835, 38.775650, 28.896872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224234, 38.398548, 28.766159>,  <28.208273, 38.172287, 28.687733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224234, 38.398548, 28.766159>,  <28.250835, 38.775650, 28.896872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224234, 38.398548, 28.766159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046227, -0.330065, 0.942826,
		-0.996715, 0.047594, 0.065531,
		-0.066503, -0.942758, -0.326780,
		28.204283, 38.115723, 28.668125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769182, 38.460281, 29.362679>,  <28.250835, 38.775650, 28.896872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769182, 38.460281, 29.362679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969101, 38.148270, 29.212078>,  <28.089052, 37.961063, 29.121717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969101, 38.148270, 29.212078>,  <27.769182, 38.460281, 29.362679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969101, 38.148270, 29.212078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002167, -0.433562, 0.901121,
		-0.866139, -0.451195, -0.215004,
		0.499799, -0.780030, -0.376503,
		28.119041, 37.914261, 29.099127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436277, 37.855953, 29.597643>,  <27.769182, 38.460281, 29.362679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436277, 37.855953, 29.597643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.795481, 37.717628, 29.488834>,  <28.011003, 37.634636, 29.423550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.795481, 37.717628, 29.488834>,  <27.436277, 37.855953, 29.597643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795481, 37.717628, 29.488834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058546, -0.518851, 0.852858,
		-0.436063, -0.781801, -0.445687,
		0.898010, -0.345807, -0.272023,
		28.064884, 37.613888, 29.407227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386456, 37.189060, 29.866047>,  <27.436277, 37.855953, 29.597643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386456, 37.189060, 29.866047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772942, 37.254360, 29.786270>,  <28.004833, 37.293541, 29.738405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772942, 37.254360, 29.786270>,  <27.386456, 37.189060, 29.866047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772942, 37.254360, 29.786270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251623, -0.429972, 0.867070,
		0.055797, -0.887960, -0.456524,
		0.966215, 0.163252, -0.199440,
		28.062807, 37.303337, 29.726439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.576344, 33.121803, 33.042995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.927967, 33.046329, 32.867882>,  <28.138941, 33.001045, 32.762814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.927967, 33.046329, 32.867882>,  <27.576344, 33.121803, 33.042995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927967, 33.046329, 32.867882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210204, -0.670827, 0.711200,
		-0.427868, -0.717211, -0.550035,
		0.879058, -0.188680, -0.437786,
		28.191685, 32.989727, 32.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705683, 32.413639, 33.134373>,  <27.576344, 33.121803, 33.042995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705683, 32.413639, 33.134373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.067793, 32.553688, 33.038128>,  <28.285059, 32.637718, 32.980381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.067793, 32.553688, 33.038128>,  <27.705683, 32.413639, 33.134373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067793, 32.553688, 33.038128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421776, -0.673017, 0.607580,
		0.050792, -0.651510, -0.756938,
		0.905276, 0.350119, -0.240607,
		28.339376, 32.658722, 32.965946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117563, 31.787134, 33.117058>,  <27.705683, 32.413639, 33.134373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117563, 31.787134, 33.117058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.369663, 32.094349, 33.162495>,  <28.520924, 32.278679, 33.189758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.369663, 32.094349, 33.162495>,  <28.117563, 31.787134, 33.117058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369663, 32.094349, 33.162495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530695, -0.532959, 0.659028,
		0.566699, -0.355068, -0.743491,
		0.630250, 0.768037, 0.113595,
		28.558739, 32.324760, 33.196571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851013, 31.619400, 32.906570>,  <28.117563, 31.787134, 33.117058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851013, 31.619400, 32.906570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.869404, 31.918196, 33.171867>,  <28.880438, 32.097473, 33.331047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.869404, 31.918196, 33.171867>,  <28.851013, 31.619400, 32.906570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869404, 31.918196, 33.171867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527165, -0.582111, 0.619067,
		0.848519, 0.321179, -0.420548,
		0.045974, 0.746988, 0.663246,
		28.883196, 32.142292, 33.370842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502619, 31.613319, 33.201473>,  <28.851013, 31.619400, 32.906570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502619, 31.613319, 33.201473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.293919, 31.821268, 33.472031>,  <29.168699, 31.946037, 33.634365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.293919, 31.821268, 33.472031>,  <29.502619, 31.613319, 33.201473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293919, 31.821268, 33.472031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438616, -0.516573, 0.735370,
		0.731706, 0.680356, 0.041497,
		-0.521749, 0.519873, 0.676394,
		29.137394, 31.977230, 33.674950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944536, 31.611668, 33.710537>,  <29.502619, 31.613319, 33.201473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944536, 31.611668, 33.710537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.593227, 31.726954, 33.863152>,  <29.382442, 31.796125, 33.954720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.593227, 31.726954, 33.863152>,  <29.944536, 31.611668, 33.710537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593227, 31.726954, 33.863152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192604, -0.517093, 0.833978,
		0.437655, 0.805945, 0.398637,
		-0.878272, 0.288215, 0.381537,
		29.329746, 31.813417, 33.977612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125084, 31.716503, 34.344616>,  <29.944536, 31.611668, 33.710537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125084, 31.716503, 34.344616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.728445, 31.668816, 34.364712>,  <29.490461, 31.640203, 34.376770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.728445, 31.668816, 34.364712>,  <30.125084, 31.716503, 34.344616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728445, 31.668816, 34.364712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100710, -0.467594, 0.878188,
		-0.081208, 0.875867, 0.475671,
		-0.991596, -0.119220, 0.050236,
		29.430965, 31.633049, 34.379784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859079, 32.090015, 34.923569>,  <30.125084, 31.716503, 34.344616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859079, 32.090015, 34.923569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.632425, 31.773394, 34.832031>,  <29.496433, 31.583422, 34.777111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.632425, 31.773394, 34.832031>,  <29.859079, 32.090015, 34.923569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632425, 31.773394, 34.832031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161405, -0.378980, 0.911220,
		-0.808005, 0.479394, 0.342504,
		-0.566636, -0.791553, -0.228841,
		29.462435, 31.535927, 34.763378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921085, 31.682852, 35.558903>,  <29.859079, 32.090015, 34.923569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921085, 31.682852, 35.558903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.707785, 31.428642, 35.335564>,  <29.579803, 31.276115, 35.201561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.707785, 31.428642, 35.335564>,  <29.921085, 31.682852, 35.558903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707785, 31.428642, 35.335564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012340, -0.665791, 0.746036,
		-0.845866, 0.390936, 0.362877,
		-0.533253, -0.635525, -0.558345,
		29.547810, 31.237986, 35.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317051, 31.527365, 35.911362>,  <29.921085, 31.682852, 35.558903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317051, 31.527365, 35.911362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.409575, 31.222929, 35.668961>,  <29.465088, 31.040268, 35.523521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.409575, 31.222929, 35.668961>,  <29.317051, 31.527365, 35.911362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409575, 31.222929, 35.668961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128107, -0.593645, 0.794465,
		-0.964409, -0.261400, -0.039815,
		0.231309, -0.761089, -0.606003,
		29.478968, 30.994602, 35.487160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079092, 30.923805, 36.282700>,  <29.317051, 31.527365, 35.911362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079092, 30.923805, 36.282700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.322762, 30.793768, 35.993362>,  <29.468964, 30.715746, 35.819759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.322762, 30.793768, 35.993362>,  <29.079092, 30.923805, 36.282700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322762, 30.793768, 35.993362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386658, -0.674600, 0.628817,
		-0.692388, -0.662745, -0.285250,
		0.609175, -0.325091, -0.723341,
		29.505514, 30.696239, 35.776360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134813, 30.189222, 36.387321>,  <29.079092, 30.923805, 36.282700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134813, 30.189222, 36.387321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.448095, 30.272827, 36.153091>,  <29.636065, 30.322990, 36.012554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.448095, 30.272827, 36.153091>,  <29.134813, 30.189222, 36.387321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448095, 30.272827, 36.153091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478057, -0.804621, 0.352201,
		-0.397553, -0.555786, -0.730105,
		0.783207, 0.209013, -0.585577,
		29.683058, 30.335531, 35.977417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326208, 29.577486, 36.052891>,  <29.134813, 30.189222, 36.387321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326208, 29.577486, 36.052891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.653648, 29.802975, 36.008869>,  <29.850113, 29.938269, 35.982456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.653648, 29.802975, 36.008869>,  <29.326208, 29.577486, 36.052891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653648, 29.802975, 36.008869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571114, -0.778530, 0.260231,
		0.061022, -0.275876, -0.959254,
		0.818600, 0.563723, -0.110049,
		29.899229, 29.972092, 35.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901196, 29.369127, 35.635826>,  <29.326208, 29.577486, 36.052891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901196, 29.369127, 35.635826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.057318, 29.603546, 35.919857>,  <30.150991, 29.744198, 36.090275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.057318, 29.603546, 35.919857>,  <29.901196, 29.369127, 35.635826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057318, 29.603546, 35.919857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620592, -0.737171, 0.267289,
		0.680093, 0.336345, -0.651418,
		0.390306, 0.586047, 0.710078,
		30.174410, 29.779360, 36.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291454, 28.974707, 35.135662>,  <29.901196, 29.369127, 35.635826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291454, 28.974707, 35.135662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.320950, 28.586740, 35.042858>,  <30.338646, 28.353962, 34.987175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.320950, 28.586740, 35.042858>,  <30.291454, 28.974707, 35.135662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320950, 28.586740, 35.042858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300020, 0.200295, -0.932668,
		0.951079, 0.138381, -0.276225,
		0.073737, -0.969914, -0.232013,
		30.343071, 28.295767, 34.973255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674419, 28.899282, 34.425617>,  <30.291454, 28.974707, 35.135662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674419, 28.899282, 34.425617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.463392, 28.567734, 34.500069>,  <30.336777, 28.368805, 34.544739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.463392, 28.567734, 34.500069>,  <30.674419, 28.899282, 34.425617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463392, 28.567734, 34.500069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321521, -0.007985, -0.946869,
		0.786320, -0.559381, -0.262287,
		-0.527565, -0.828873, 0.186132,
		30.305122, 28.319073, 34.555908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827530, 28.484949, 33.888138>,  <30.674419, 28.899282, 34.425617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827530, 28.484949, 33.888138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.503931, 28.298809, 34.031788>,  <30.309772, 28.187124, 34.117977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.503931, 28.298809, 34.031788>,  <30.827530, 28.484949, 33.888138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503931, 28.298809, 34.031788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416757, 0.023227, -0.908721,
		0.414534, -0.884821, -0.212730,
		-0.808996, -0.465352, 0.359127,
		30.261232, 28.159204, 34.139526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782982, 27.833965, 33.519810>,  <30.827530, 28.484949, 33.888138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782982, 27.833965, 33.519810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.410576, 27.907396, 33.645992>,  <30.187132, 27.951454, 33.721703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.410576, 27.907396, 33.645992>,  <30.782982, 27.833965, 33.519810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410576, 27.907396, 33.645992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300946, 0.102906, -0.948073,
		-0.206506, -0.977604, -0.040561,
		-0.931014, 0.183576, 0.315457,
		30.131271, 27.962469, 33.740631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299988, 27.437141, 33.041370>,  <30.782982, 27.833965, 33.519810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299988, 27.437141, 33.041370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.060669, 27.710999, 33.207890>,  <29.917078, 27.875313, 33.307800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.060669, 27.710999, 33.207890>,  <30.299988, 27.437141, 33.041370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060669, 27.710999, 33.207890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456443, 0.135802, -0.879328,
		-0.658559, -0.716117, 0.231250,
		-0.598298, 0.684641, 0.416300,
		29.881180, 27.916391, 33.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534494, 27.343393, 32.730999>,  <30.299988, 27.437141, 33.041370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534494, 27.343393, 32.730999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.577196, 27.717651, 32.865562>,  <29.602818, 27.942207, 32.946301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.577196, 27.717651, 32.865562>,  <29.534494, 27.343393, 32.730999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577196, 27.717651, 32.865562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495926, 0.343357, -0.797599,
		-0.861778, -0.081687, 0.500665,
		0.106753, 0.935646, 0.336408,
		29.609222, 27.998344, 32.966484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059975, 27.715509, 32.379345>,  <29.534494, 27.343393, 32.730999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059975, 27.715509, 32.379345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.259947, 28.031422, 32.521507>,  <29.379930, 28.220968, 32.606804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.259947, 28.031422, 32.521507>,  <29.059975, 27.715509, 32.379345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259947, 28.031422, 32.521507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512920, 0.600663, -0.613284,
		-0.697841, 0.124304, 0.705384,
		0.499932, 0.789780, 0.355409,
		29.409925, 28.268356, 32.628132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565737, 28.153814, 32.561771>,  <29.059975, 27.715509, 32.379345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565737, 28.153814, 32.561771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.890018, 28.380327, 32.502331>,  <29.084587, 28.516235, 32.466667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.890018, 28.380327, 32.502331>,  <28.565737, 28.153814, 32.561771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890018, 28.380327, 32.502331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531284, 0.604962, -0.593092,
		-0.245961, 0.559771, 0.791303,
		0.810704, 0.566284, -0.148600,
		29.133230, 28.550213, 32.457752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347383, 28.760334, 32.405258>,  <28.565737, 28.153814, 32.561771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347383, 28.760334, 32.405258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.713850, 28.802149, 32.250488>,  <28.933729, 28.827238, 32.157627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.713850, 28.802149, 32.250488>,  <28.347383, 28.760334, 32.405258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713850, 28.802149, 32.250488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346628, 0.691331, -0.633964,
		0.201220, 0.714936, 0.669610,
		0.916166, 0.104539, -0.386926,
		28.988699, 28.833511, 32.134411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308657, 29.446972, 32.198612>,  <28.347383, 28.760334, 32.405258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308657, 29.446972, 32.198612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.636766, 29.340439, 31.996143>,  <28.833633, 29.276518, 31.874660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.636766, 29.340439, 31.996143>,  <28.308657, 29.446972, 32.198612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636766, 29.340439, 31.996143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241220, 0.641336, -0.728355,
		0.518615, 0.719551, 0.461827,
		0.820275, -0.266334, -0.506176,
		28.882849, 29.260538, 31.844290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593050, 30.047421, 31.926235>,  <28.308657, 29.446972, 32.198612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593050, 30.047421, 31.926235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.735117, 29.774628, 31.670498>,  <28.820356, 29.610952, 31.517056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.735117, 29.774628, 31.670498>,  <28.593050, 30.047421, 31.926235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735117, 29.774628, 31.670498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072773, 0.661686, -0.746241,
		0.931966, 0.311567, 0.185379,
		0.355166, -0.681981, -0.639343,
		28.841667, 29.570034, 31.478695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032587, 30.407341, 31.542923>,  <28.593050, 30.047421, 31.926235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032587, 30.407341, 31.542923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.960943, 30.091867, 31.307671>,  <28.917957, 29.902584, 31.166519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.960943, 30.091867, 31.307671>,  <29.032587, 30.407341, 31.542923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960943, 30.091867, 31.307671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086503, 0.582858, -0.807957,
		0.980019, -0.195587, -0.036171,
		-0.179108, -0.788684, -0.588131,
		28.907211, 29.855263, 31.131231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442612, 30.416271, 30.970129>,  <29.032587, 30.407341, 31.542923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442612, 30.416271, 30.970129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.159924, 30.162313, 30.845257>,  <28.990311, 30.009939, 30.770334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.159924, 30.162313, 30.845257>,  <29.442612, 30.416271, 30.970129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159924, 30.162313, 30.845257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084471, 0.362371, -0.928198,
		0.702431, -0.682348, -0.202465,
		-0.706721, -0.634893, -0.312179,
		28.947906, 29.971846, 30.751602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654005, 30.020752, 30.384327>,  <29.442612, 30.416271, 30.970129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654005, 30.020752, 30.384327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.254620, 30.027578, 30.363226>,  <29.014988, 30.031673, 30.350565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.254620, 30.027578, 30.363226>,  <29.654005, 30.020752, 30.384327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254620, 30.027578, 30.363226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054891, 0.438269, -0.897166,
		0.007807, -0.898682, -0.438532,
		-0.998462, 0.017067, -0.052751,
		28.955082, 30.032698, 30.347401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056217, 29.851658, 29.915283>,  <29.654005, 30.020752, 30.384327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056217, 29.851658, 29.915283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407637, 30.042582, 29.922495>,  <30.618488, 30.157135, 29.926823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407637, 30.042582, 29.922495>,  <30.056217, 29.851658, 29.915283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407637, 30.042582, 29.922495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284071, -0.552473, 0.783631,
		0.383995, -0.683338, -0.620965,
		0.878551, 0.477308, 0.018030,
		30.671202, 30.185774, 29.927904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528303, 29.347948, 30.107719>,  <30.056217, 29.851658, 29.915283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528303, 29.347948, 30.107719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736052, 29.682209, 30.179201>,  <30.860701, 29.882767, 30.222090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736052, 29.682209, 30.179201>,  <30.528303, 29.347948, 30.107719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736052, 29.682209, 30.179201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415532, -0.429697, 0.801682,
		0.746717, -0.342114, -0.570413,
		0.519372, 0.835654, 0.178703,
		30.891863, 29.932905, 30.232813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297283, 29.201603, 30.187737>,  <30.528303, 29.347948, 30.107719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297283, 29.201603, 30.187737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.256916, 29.543110, 30.392048>,  <31.232695, 29.748014, 30.514635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.256916, 29.543110, 30.392048>,  <31.297283, 29.201603, 30.187737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256916, 29.543110, 30.392048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475161, -0.409701, 0.778696,
		0.874092, 0.321289, -0.364330,
		-0.100920, 0.853767, 0.510781,
		31.226641, 29.799240, 30.545282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909756, 29.210922, 30.548271>,  <31.297283, 29.201603, 30.187737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909756, 29.210922, 30.548271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683531, 29.482155, 30.736036>,  <31.547796, 29.644894, 30.848696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683531, 29.482155, 30.736036>,  <31.909756, 29.210922, 30.548271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683531, 29.482155, 30.736036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469972, -0.202731, 0.859085,
		0.677692, 0.706476, -0.204022,
		-0.565562, 0.678079, 0.469413,
		31.513863, 29.685579, 30.876860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367573, 29.721231, 30.914207>,  <31.909756, 29.210922, 30.548271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367573, 29.721231, 30.914207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.015015, 29.708996, 31.102766>,  <31.803480, 29.701654, 31.215900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.015015, 29.708996, 31.102766>,  <32.367573, 29.721231, 30.914207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015015, 29.708996, 31.102766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472378, -0.063388, 0.879114,
		0.002989, 0.997520, 0.070320,
		-0.881391, -0.030590, 0.471396,
		31.750597, 29.699820, 31.244184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471382, 30.043629, 31.524021>,  <32.367573, 29.721231, 30.914207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471382, 30.043629, 31.524021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138073, 29.844261, 31.619720>,  <31.938087, 29.724640, 31.677141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138073, 29.844261, 31.619720>,  <32.471382, 30.043629, 31.524021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138073, 29.844261, 31.619720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345204, -0.131021, 0.929337,
		-0.431853, 0.856978, 0.281233,
		-0.833269, -0.498420, 0.239250,
		31.888092, 29.694735, 31.691496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216328, 30.308765, 32.196812>,  <32.471382, 30.043629, 31.524021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216328, 30.308765, 32.196812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.061596, 29.941158, 32.166416>,  <31.968758, 29.720594, 32.148178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.061596, 29.941158, 32.166416>,  <32.216328, 30.308765, 32.196812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061596, 29.941158, 32.166416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226471, -0.174555, 0.958249,
		-0.893911, 0.353467, 0.275653,
		-0.386826, -0.919017, -0.075986,
		31.945549, 29.665453, 32.143620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817499, 30.220169, 32.786713>,  <32.216328, 30.308765, 32.196812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817499, 30.220169, 32.786713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882807, 29.850946, 32.647396>,  <31.921991, 29.629412, 32.563805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882807, 29.850946, 32.647396>,  <31.817499, 30.220169, 32.786713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882807, 29.850946, 32.647396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260378, -0.300196, 0.917652,
		-0.951602, -0.240512, 0.191332,
		0.163269, -0.923058, -0.348291,
		31.931787, 29.574028, 32.542908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622751, 29.801525, 33.363770>,  <31.817499, 30.220169, 32.786713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622751, 29.801525, 33.363770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.813007, 29.547525, 33.120281>,  <31.927162, 29.395126, 32.974190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.813007, 29.547525, 33.120281>,  <31.622751, 29.801525, 33.363770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813007, 29.547525, 33.120281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437767, -0.429352, 0.789947,
		-0.762971, -0.642210, 0.073764,
		0.475642, -0.634998, -0.608722,
		31.955700, 29.357025, 32.937664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530924, 29.119982, 33.664097>,  <31.622751, 29.801525, 33.363770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530924, 29.119982, 33.664097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858902, 29.124355, 33.435162>,  <32.055687, 29.126980, 33.297802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858902, 29.124355, 33.435162>,  <31.530924, 29.119982, 33.664097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858902, 29.124355, 33.435162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519862, -0.432802, 0.736495,
		-0.239654, -0.901422, -0.360559,
		0.819945, 0.010937, -0.572339,
		32.104885, 29.127636, 33.263458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765427, 28.413002, 33.733292>,  <31.530924, 29.119982, 33.664097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765427, 28.413002, 33.733292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.070820, 28.634708, 33.600697>,  <32.254055, 28.767733, 33.521137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.070820, 28.634708, 33.600697>,  <31.765427, 28.413002, 33.733292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070820, 28.634708, 33.600697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576105, -0.352518, 0.737451,
		0.291888, -0.754003, -0.588456,
		0.763482, 0.554266, -0.331489,
		32.299866, 28.800987, 33.501251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346149, 27.958916, 33.591980>,  <31.765427, 28.413002, 33.733292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346149, 27.958916, 33.591980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488567, 28.326700, 33.658699>,  <32.574017, 28.547371, 33.698730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488567, 28.326700, 33.658699>,  <32.346149, 27.958916, 33.591980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488567, 28.326700, 33.658699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683785, -0.378005, 0.624140,
		0.636925, -0.108163, -0.763300,
		0.356040, 0.919463, 0.166801,
		32.595379, 28.602539, 33.708740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.285099, 30.426598, 25.923100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361303, 30.757881, 26.133919>,  <30.407026, 30.956652, 26.260410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361303, 30.757881, 26.133919>,  <30.285099, 30.426598, 25.923100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361303, 30.757881, 26.133919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155832, -0.555586, 0.816726,
		0.969238, -0.073463, -0.234905,
		0.190509, 0.828207, 0.527047,
		30.418455, 31.006344, 26.292032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906591, 30.287634, 26.455265>,  <30.285099, 30.426598, 25.923100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906591, 30.287634, 26.455265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716639, 30.608829, 26.599319>,  <30.602667, 30.801546, 26.685751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716639, 30.608829, 26.599319>,  <30.906591, 30.287634, 26.455265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716639, 30.608829, 26.599319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184541, -0.309262, 0.932900,
		0.860483, 0.509477, -0.001321,
		-0.474882, 0.802988, 0.360135,
		30.574173, 30.849726, 26.707359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292078, 30.476698, 27.050930>,  <30.906591, 30.287634, 26.455265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292078, 30.476698, 27.050930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950602, 30.662067, 27.145966>,  <30.745716, 30.773289, 27.202986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950602, 30.662067, 27.145966>,  <31.292078, 30.476698, 27.050930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950602, 30.662067, 27.145966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193535, -0.141228, 0.970875,
		0.483483, 0.874809, 0.030876,
		-0.853691, 0.463426, 0.237587,
		30.694494, 30.801096, 27.217241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514896, 30.830313, 27.665621>,  <31.292078, 30.476698, 27.050930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514896, 30.830313, 27.665621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122807, 30.903048, 27.696848>,  <30.887552, 30.946688, 27.715584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122807, 30.903048, 27.696848>,  <31.514896, 30.830313, 27.665621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122807, 30.903048, 27.696848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062044, -0.092214, 0.993804,
		0.187908, 0.978995, 0.079108,
		-0.980225, 0.181836, 0.078068,
		30.828739, 30.957598, 27.720268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454866, 31.408676, 28.113083>,  <31.514896, 30.830313, 27.665621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454866, 31.408676, 28.113083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112370, 31.202061, 28.110569>,  <30.906872, 31.078093, 28.109060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112370, 31.202061, 28.110569>,  <31.454866, 31.408676, 28.113083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112370, 31.202061, 28.110569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013610, -0.034717, 0.999305,
		-0.516396, 0.855561, 0.036756,
		-0.856242, -0.516537, -0.006283,
		30.855497, 31.047100, 28.108685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008854, 31.698420, 28.637186>,  <31.454866, 31.408676, 28.113083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008854, 31.698420, 28.637186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826540, 31.351683, 28.556347>,  <30.717152, 31.143641, 28.507843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826540, 31.351683, 28.556347>,  <31.008854, 31.698420, 28.637186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826540, 31.351683, 28.556347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044310, -0.204677, 0.977826,
		-0.888987, 0.454632, 0.054878,
		-0.455783, -0.866843, -0.202100,
		30.689806, 31.091629, 28.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455864, 31.596119, 29.160181>,  <31.008854, 31.698420, 28.637186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455864, 31.596119, 29.160181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577194, 31.236389, 29.034193>,  <30.649992, 31.020552, 28.958601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577194, 31.236389, 29.034193>,  <30.455864, 31.596119, 29.160181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577194, 31.236389, 29.034193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057757, -0.312584, 0.948132,
		-0.951135, -0.305784, -0.042872,
		0.303325, -0.899326, -0.314971,
		30.668192, 30.966591, 28.939701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014074, 31.107792, 29.547585>,  <30.455864, 31.596119, 29.160181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014074, 31.107792, 29.547585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319792, 30.890715, 29.408251>,  <30.503223, 30.760468, 29.324652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319792, 30.890715, 29.408251>,  <30.014074, 31.107792, 29.547585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319792, 30.890715, 29.408251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104888, -0.428352, 0.897503,
		-0.636279, -0.722494, -0.270466,
		0.764295, -0.542694, -0.348333,
		30.549080, 30.727907, 29.303751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817738, 30.403633, 29.545166>,  <30.014074, 31.107792, 29.547585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817738, 30.403633, 29.545166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216906, 30.420742, 29.564449>,  <30.456408, 30.431007, 29.576019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216906, 30.420742, 29.564449>,  <29.817738, 30.403633, 29.545166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216906, 30.420742, 29.564449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018656, -0.524242, 0.851365,
		0.061689, -0.850494, -0.522354,
		0.997921, 0.042775, 0.048207,
		30.516281, 30.433575, 29.578911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219482, 29.779964, 29.365915>,  <29.817738, 30.403633, 29.545166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219482, 29.779964, 29.365915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937347, 29.941141, 29.599201>,  <28.768066, 30.037848, 29.739172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937347, 29.941141, 29.599201>,  <29.219482, 29.779964, 29.365915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937347, 29.941141, 29.599201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181445, 0.692702, -0.698027,
		-0.685258, -0.598165, -0.415475,
		-0.705336, 0.402943, 0.583214,
		28.725746, 30.062023, 29.774166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560717, 29.900631, 28.975323>,  <29.219482, 29.779964, 29.365915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560717, 29.900631, 28.975323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501890, 30.150057, 29.282448>,  <28.466595, 30.299713, 29.466722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501890, 30.150057, 29.282448>,  <28.560717, 29.900631, 28.975323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501890, 30.150057, 29.282448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291158, 0.714572, -0.636093,
		-0.945304, -0.317102, 0.076468,
		-0.147065, 0.623565, 0.767814,
		28.457771, 30.337126, 29.512793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886995, 30.176506, 28.819664>,  <28.560717, 29.900631, 28.975323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886995, 30.176506, 28.819664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055592, 30.415182, 29.092810>,  <28.156750, 30.558388, 29.256697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055592, 30.415182, 29.092810>,  <27.886995, 30.176506, 28.819664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055592, 30.415182, 29.092810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489713, 0.783550, -0.382401,
		-0.763235, -0.173230, 0.622466,
		0.421490, 0.596692, 0.682866,
		28.182039, 30.594191, 29.297668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369673, 30.550819, 29.372288>,  <27.886995, 30.176506, 28.819664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369673, 30.550819, 29.372288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714979, 30.752468, 29.362217>,  <27.922163, 30.873457, 29.356174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714979, 30.752468, 29.362217>,  <27.369673, 30.550819, 29.372288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714979, 30.752468, 29.362217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463816, 0.772598, -0.433552,
		-0.199111, 0.385947, 0.900777,
		0.863267, 0.504120, -0.025176,
		27.973959, 30.903704, 29.354664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119978, 31.179394, 29.257874>,  <27.369673, 30.550819, 29.372288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119978, 31.179394, 29.257874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508196, 31.233147, 29.177885>,  <27.741127, 31.265398, 29.129892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508196, 31.233147, 29.177885>,  <27.119978, 31.179394, 29.257874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508196, 31.233147, 29.177885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224175, 0.807789, -0.545182,
		0.088273, 0.573950, 0.814118,
		0.970543, 0.134380, -0.199971,
		27.799358, 31.273460, 29.117893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317598, 31.817928, 29.590025>,  <27.119978, 31.179394, 29.257874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317598, 31.817928, 29.590025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560150, 31.740448, 29.281536>,  <27.705681, 31.693960, 29.096443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560150, 31.740448, 29.281536>,  <27.317598, 31.817928, 29.590025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560150, 31.740448, 29.281536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330556, 0.820701, -0.466028,
		0.723215, 0.537521, 0.433626,
		0.606377, -0.193700, -0.771224,
		27.742064, 31.682339, 29.050169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689486, 32.364685, 29.356457>,  <27.317598, 31.817928, 29.590025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689486, 32.364685, 29.356457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662291, 32.121792, 29.039814>,  <27.645973, 31.976055, 28.849829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662291, 32.121792, 29.039814>,  <27.689486, 32.364685, 29.356457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662291, 32.121792, 29.039814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336838, 0.760826, -0.554693,
		0.939105, 0.228930, -0.256267,
		-0.067989, -0.607235, -0.791607,
		27.641893, 31.939621, 28.802332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778700, 32.875828, 28.838091>,  <27.689486, 32.364685, 29.356457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778700, 32.875828, 28.838091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638042, 32.543739, 28.665083>,  <27.553648, 32.344486, 28.561277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638042, 32.543739, 28.665083>,  <27.778700, 32.875828, 28.838091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638042, 32.543739, 28.665083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317281, 0.540382, -0.779307,
		0.880726, -0.136808, -0.453437,
		-0.351645, -0.830224, -0.432522,
		27.532549, 32.294674, 28.535326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981703, 32.982124, 28.097528>,  <27.778700, 32.875828, 28.838091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981703, 32.982124, 28.097528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713293, 32.686607, 28.072529>,  <27.552248, 32.509296, 28.057529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713293, 32.686607, 28.072529>,  <27.981703, 32.982124, 28.097528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713293, 32.686607, 28.072529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242738, 0.298553, -0.923008,
		0.700575, -0.604190, -0.379670,
		-0.671024, -0.738797, -0.062499,
		27.511986, 32.464970, 28.053780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086584, 32.780079, 27.466408>,  <27.981703, 32.982124, 28.097528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086584, 32.780079, 27.466408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717072, 32.673916, 27.576815>,  <27.495363, 32.610218, 27.643059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717072, 32.673916, 27.576815>,  <28.086584, 32.780079, 27.466408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717072, 32.673916, 27.576815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353649, 0.314928, -0.880768,
		0.146837, -0.911251, -0.384786,
		-0.923781, -0.265408, 0.276020,
		27.439938, 32.594292, 27.659620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778692, 32.654884, 26.876261>,  <28.086584, 32.780079, 27.466408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778692, 32.654884, 26.876261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490944, 32.758446, 27.134090>,  <27.318295, 32.820583, 27.288788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490944, 32.758446, 27.134090>,  <27.778692, 32.654884, 26.876261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490944, 32.758446, 27.134090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405001, 0.597566, -0.692018,
		-0.564342, -0.758870, -0.325014,
		-0.719369, 0.258904, 0.644575,
		27.275133, 32.836117, 27.327463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152559, 32.691406, 26.471897>,  <27.778692, 32.654884, 26.876261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152559, 32.691406, 26.471897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062017, 32.930695, 26.779377>,  <27.007692, 33.074268, 26.963865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062017, 32.930695, 26.779377>,  <27.152559, 32.691406, 26.471897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062017, 32.930695, 26.779377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481602, 0.617235, -0.622158,
		-0.846654, -0.511035, 0.148389,
		-0.226354, 0.598217, 0.768701,
		26.994112, 33.110161, 27.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579809, 32.980549, 26.184324>,  <27.152559, 32.691406, 26.471897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579809, 32.980549, 26.184324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640942, 33.208767, 26.507093>,  <26.677622, 33.345699, 26.700754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640942, 33.208767, 26.507093>,  <26.579809, 32.980549, 26.184324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640942, 33.208767, 26.507093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476599, 0.757838, -0.445573,
		-0.865735, -0.316480, 0.387743,
		0.152832, 0.570545, 0.806920,
		26.686790, 33.379929, 26.749170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899599, 33.316906, 26.385122>,  <26.579809, 32.980549, 26.184324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899599, 33.316906, 26.385122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202223, 33.539757, 26.522078>,  <26.383797, 33.673466, 26.604252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202223, 33.539757, 26.522078>,  <25.899599, 33.316906, 26.385122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202223, 33.539757, 26.522078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402742, 0.809480, -0.427248,
		-0.515189, 0.185343, 0.836796,
		0.756557, 0.557127, 0.342390,
		26.429190, 33.706894, 26.624794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.852150, 39.975975, 29.049698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759016, 39.606544, 28.927845>,  <30.703136, 39.384888, 28.854734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759016, 39.606544, 28.927845>,  <30.852150, 39.975975, 29.049698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759016, 39.606544, 28.927845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115736, -0.284699, 0.951605,
		-0.965605, 0.256822, -0.040603,
		-0.232834, -0.923574, -0.304630,
		30.689165, 39.329472, 28.836456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272202, 39.766140, 29.522160>,  <30.852150, 39.975975, 29.049698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272202, 39.766140, 29.522160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385445, 39.408836, 29.382481>,  <30.453390, 39.194454, 29.298674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385445, 39.408836, 29.382481>,  <30.272202, 39.766140, 29.522160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385445, 39.408836, 29.382481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118158, -0.393803, 0.911569,
		-0.951781, -0.216813, -0.217035,
		0.283109, -0.893259, -0.349196,
		30.470377, 39.140858, 29.277721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871523, 39.272709, 30.001160>,  <30.272202, 39.766140, 29.522160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871523, 39.272709, 30.001160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137823, 39.057243, 29.794621>,  <30.297604, 38.927963, 29.670698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137823, 39.057243, 29.794621>,  <29.871523, 39.272709, 30.001160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137823, 39.057243, 29.794621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107070, -0.615867, 0.780541,
		-0.738454, -0.574929, -0.352338,
		0.665749, -0.538669, -0.516347,
		30.337547, 38.895641, 29.639717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720327, 38.485157, 29.956631>,  <29.871523, 39.272709, 30.001160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720327, 38.485157, 29.956631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.114368, 38.545776, 29.924129>,  <30.350794, 38.582150, 29.904629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.114368, 38.545776, 29.924129>,  <29.720327, 38.485157, 29.956631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114368, 38.545776, 29.924129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155269, -0.580843, 0.799070,
		0.073905, -0.799784, -0.595722,
		0.985104, 0.151552, -0.081255,
		30.409899, 38.591244, 29.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938532, 37.937634, 30.150377>,  <29.720327, 38.485157, 29.956631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938532, 37.937634, 30.150377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.277830, 38.143970, 30.198355>,  <30.481409, 38.267773, 30.227140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.277830, 38.143970, 30.198355>,  <29.938532, 37.937634, 30.150377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277830, 38.143970, 30.198355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303800, -0.659449, 0.687628,
		0.433804, -0.546839, -0.716087,
		0.848245, 0.515843, 0.119942,
		30.532303, 38.298725, 30.234337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435179, 37.456947, 30.268499>,  <29.938532, 37.937634, 30.150377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435179, 37.456947, 30.268499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.673079, 37.754421, 30.390619>,  <30.815819, 37.932907, 30.463892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.673079, 37.754421, 30.390619>,  <30.435179, 37.456947, 30.268499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673079, 37.754421, 30.390619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366721, -0.588934, 0.720189,
		0.715394, -0.316372, -0.622993,
		0.594750, 0.743683, 0.305300,
		30.851503, 37.977528, 30.482210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117920, 37.241295, 30.170540>,  <30.435179, 37.456947, 30.268499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117920, 37.241295, 30.170540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.088667, 37.516941, 30.458921>,  <31.071115, 37.682327, 30.631950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.088667, 37.516941, 30.458921>,  <31.117920, 37.241295, 30.170540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088667, 37.516941, 30.458921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395100, -0.643724, 0.655375,
		0.915722, 0.332778, -0.225192,
		-0.073132, 0.689115, 0.720953,
		31.066727, 37.723675, 30.675207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769461, 37.213722, 30.406796>,  <31.117920, 37.241295, 30.170540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769461, 37.213722, 30.406796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.565672, 37.373043, 30.711897>,  <31.443398, 37.468636, 30.894958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.565672, 37.373043, 30.711897>,  <31.769461, 37.213722, 30.406796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565672, 37.373043, 30.711897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573625, -0.503524, 0.646079,
		0.641398, 0.766695, 0.028057,
		-0.509473, 0.398300, 0.762755,
		31.412830, 37.492535, 30.940723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267635, 37.308578, 30.830009>,  <31.769461, 37.213722, 30.406796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267635, 37.308578, 30.830009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.933907, 37.357700, 31.044977>,  <31.733669, 37.387173, 31.173958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.933907, 37.357700, 31.044977>,  <32.267635, 37.308578, 30.830009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933907, 37.357700, 31.044977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377297, -0.583569, 0.719093,
		0.401933, 0.802723, 0.440551,
		-0.834324, 0.122809, 0.537421,
		31.683609, 37.394543, 31.206203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485851, 37.572624, 31.466810>,  <32.267635, 37.308578, 30.830009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485851, 37.572624, 31.466810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130150, 37.393925, 31.506100>,  <31.916729, 37.286705, 31.529673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130150, 37.393925, 31.506100>,  <32.485851, 37.572624, 31.466810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130150, 37.393925, 31.506100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405684, -0.671075, 0.620547,
		-0.211313, 0.591670, 0.777993,
		-0.889251, -0.446749, 0.098224,
		31.863375, 37.259899, 31.535566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500885, 37.292625, 32.132240>,  <32.485851, 37.572624, 31.466810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500885, 37.292625, 32.132240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.184017, 37.104675, 31.976452>,  <31.993898, 36.991905, 31.882978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.184017, 37.104675, 31.976452>,  <32.500885, 37.292625, 32.132240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184017, 37.104675, 31.976452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178335, -0.788523, 0.588582,
		-0.583670, 0.396797, 0.708436,
		-0.792165, -0.469877, -0.389474,
		31.946367, 36.963711, 31.859610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149300, 37.078667, 32.665020>,  <32.500885, 37.292625, 32.132240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149300, 37.078667, 32.665020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046192, 36.842602, 32.359013>,  <31.984327, 36.700962, 32.175407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046192, 36.842602, 32.359013>,  <32.149300, 37.078667, 32.665020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046192, 36.842602, 32.359013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126422, -0.805574, 0.578852,
		-0.957900, 0.052496, 0.282264,
		-0.257771, -0.590166, -0.765022,
		31.968861, 36.665550, 32.129505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745913, 36.532284, 32.962448>,  <32.149300, 37.078667, 32.665020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745913, 36.532284, 32.962448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858152, 36.374203, 32.612572>,  <31.925497, 36.279354, 32.402645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858152, 36.374203, 32.612572>,  <31.745913, 36.532284, 32.962448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858152, 36.374203, 32.612572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252857, -0.848671, 0.464565,
		-0.925919, -0.351528, -0.138208,
		0.280601, -0.395202, -0.874688,
		31.942333, 36.255642, 32.350166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383228, 35.889442, 32.751472>,  <31.745913, 36.532284, 32.962448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383228, 35.889442, 32.751472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729073, 35.876003, 32.550945>,  <31.936579, 35.867939, 32.430630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729073, 35.876003, 32.550945>,  <31.383228, 35.889442, 32.751472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729073, 35.876003, 32.550945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286917, -0.786064, 0.547524,
		-0.412462, -0.617232, -0.670000,
		0.864612, -0.033599, -0.501316,
		31.988457, 35.865925, 32.400551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734625, 35.450748, 32.545918>,  <31.383228, 35.889442, 32.751472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734625, 35.450748, 32.545918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371822, 35.380146, 32.698853>,  <30.154140, 35.337784, 32.790615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371822, 35.380146, 32.698853>,  <30.734625, 35.450748, 32.545918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371822, 35.380146, 32.698853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414153, 0.538322, -0.733953,
		-0.076274, -0.824047, -0.561363,
		-0.907006, -0.176508, 0.382342,
		30.099720, 35.327194, 32.813557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409946, 35.087452, 32.092918>,  <30.734625, 35.450748, 32.545918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409946, 35.087452, 32.092918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128515, 35.268486, 32.312057>,  <29.959656, 35.377106, 32.443542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128515, 35.268486, 32.312057>,  <30.409946, 35.087452, 32.092918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128515, 35.268486, 32.312057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338848, 0.463987, -0.818473,
		-0.624628, -0.761498, -0.173092,
		-0.703578, 0.452589, 0.547852,
		29.917442, 35.404263, 32.476414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759178, 35.092552, 31.741535>,  <30.409946, 35.087452, 32.092918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759178, 35.092552, 31.741535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.710249, 35.397736, 31.995441>,  <29.680891, 35.580845, 32.147785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.710249, 35.397736, 31.995441>,  <29.759178, 35.092552, 31.741535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710249, 35.397736, 31.995441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488813, 0.510309, -0.707564,
		-0.863770, -0.396833, 0.310523,
		-0.122322, 0.762960, 0.634767,
		29.673552, 35.626625, 32.185871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089735, 35.257893, 31.464611>,  <29.759178, 35.092552, 31.741535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089735, 35.257893, 31.464611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222174, 35.566048, 31.682558>,  <29.301638, 35.750942, 31.813326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222174, 35.566048, 31.682558>,  <29.089735, 35.257893, 31.464611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222174, 35.566048, 31.682558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516051, 0.631266, -0.578960,
		-0.789978, -0.089487, 0.606569,
		0.331097, 0.770386, 0.544867,
		29.321503, 35.797165, 31.846018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438250, 35.583164, 31.710299>,  <29.089735, 35.257893, 31.464611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438250, 35.583164, 31.710299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738775, 35.845451, 31.680458>,  <28.919090, 36.002823, 31.662554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738775, 35.845451, 31.680458>,  <28.438250, 35.583164, 31.710299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738775, 35.845451, 31.680458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556457, 0.568662, -0.605788,
		-0.354803, 0.496648, 0.792121,
		0.751312, 0.655717, -0.074601,
		28.964169, 36.042168, 31.658077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123478, 36.226017, 31.840633>,  <28.438250, 35.583164, 31.710299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123478, 36.226017, 31.840633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.465931, 36.338131, 31.666979>,  <28.671404, 36.405399, 31.562786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.465931, 36.338131, 31.666979>,  <28.123478, 36.226017, 31.840633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465931, 36.338131, 31.666979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516535, 0.488567, -0.703203,
		0.015010, 0.826283, 0.563054,
		0.856134, 0.280282, -0.434138,
		28.722771, 36.422215, 31.536737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952538, 36.872017, 31.541216>,  <28.123478, 36.226017, 31.840633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952538, 36.872017, 31.541216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.278337, 36.779503, 31.328388>,  <28.473818, 36.723995, 31.200691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.278337, 36.779503, 31.328388>,  <27.952538, 36.872017, 31.541216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278337, 36.779503, 31.328388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316364, 0.591687, -0.741499,
		0.486314, 0.772279, 0.408760,
		0.814502, -0.231284, -0.532067,
		28.522688, 36.710117, 31.168768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182379, 37.479588, 31.260700>,  <27.952538, 36.872017, 31.541216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182379, 37.479588, 31.260700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.388279, 37.224648, 31.031328>,  <28.511820, 37.071686, 30.893705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.388279, 37.224648, 31.031328>,  <28.182379, 37.479588, 31.260700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388279, 37.224648, 31.031328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251593, 0.527102, -0.811705,
		0.819592, 0.562098, 0.110975,
		0.514753, -0.637346, -0.573428,
		28.542706, 37.033443, 30.859301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676680, 37.898937, 30.809242>,  <28.182379, 37.479588, 31.260700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676680, 37.898937, 30.809242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.625252, 37.545372, 30.629391>,  <28.594395, 37.333233, 30.521481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.625252, 37.545372, 30.629391>,  <28.676680, 37.898937, 30.809242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625252, 37.545372, 30.629391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169177, 0.466296, -0.868302,
		0.977164, -0.035570, -0.209489,
		-0.128569, -0.883914, -0.449630,
		28.586681, 37.280197, 30.494501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069256, 37.951584, 30.257126>,  <28.676680, 37.898937, 30.809242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069256, 37.951584, 30.257126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.813923, 37.655247, 30.173523>,  <28.660723, 37.477444, 30.123362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.813923, 37.655247, 30.173523>,  <29.069256, 37.951584, 30.257126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813923, 37.655247, 30.173523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082203, 0.335578, -0.938419,
		0.765359, -0.581842, -0.275110,
		-0.638333, -0.740842, -0.209008,
		28.622423, 37.432995, 30.110821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358492, 37.533577, 29.705399>,  <29.069256, 37.951584, 30.257126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358492, 37.533577, 29.705399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.962570, 37.477119, 29.697725>,  <28.725018, 37.443245, 29.693121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.962570, 37.477119, 29.697725>,  <29.358492, 37.533577, 29.705399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962570, 37.477119, 29.697725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029673, 0.336051, -0.941376,
		0.139313, -0.931208, -0.336813,
		-0.989804, -0.141141, -0.019184,
		28.665628, 37.434776, 29.691971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264402, 37.289059, 29.009504>,  <29.358492, 37.533577, 29.705399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264402, 37.289059, 29.009504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897823, 37.377209, 29.143103>,  <28.677876, 37.430099, 29.223261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897823, 37.377209, 29.143103>,  <29.264402, 37.289059, 29.009504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897823, 37.377209, 29.143103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265064, 0.290953, -0.919286,
		-0.299769, -0.931010, -0.208229,
		-0.916450, 0.220380, 0.333996,
		28.622889, 37.443321, 29.243301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808741, 37.002014, 28.538641>,  <29.264402, 37.289059, 29.009504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808741, 37.002014, 28.538641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594526, 37.287548, 28.719147>,  <28.465998, 37.458870, 28.827450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594526, 37.287548, 28.719147>,  <28.808741, 37.002014, 28.538641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594526, 37.287548, 28.719147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282259, 0.352327, -0.892298,
		-0.795947, -0.605231, 0.012803,
		-0.535535, 0.713836, 0.451266,
		28.433867, 37.501698, 28.854527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163374, 36.849319, 28.308374>,  <28.808741, 37.002014, 28.538641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163374, 36.849319, 28.308374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178776, 37.233685, 28.418039>,  <28.188017, 37.464302, 28.483837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178776, 37.233685, 28.418039>,  <28.163374, 36.849319, 28.308374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178776, 37.233685, 28.418039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254855, 0.274734, -0.927130,
		-0.966212, -0.034173, 0.255472,
		0.038504, 0.960913, 0.274161,
		28.190327, 37.521957, 28.500288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610466, 36.564156, 28.540207>,  <28.163374, 36.849319, 28.308374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610466, 36.564156, 28.540207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253170, 36.385952, 28.516043>,  <27.038794, 36.279030, 28.501543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253170, 36.385952, 28.516043>,  <27.610466, 36.564156, 28.540207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253170, 36.385952, 28.516043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166240, -0.452141, 0.876318,
		-0.417719, 0.772718, 0.477930,
		-0.893238, -0.445506, -0.060411,
		26.985199, 36.252300, 28.497919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165777, 36.729145, 29.111946>,  <27.610466, 36.564156, 28.540207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165777, 36.729145, 29.111946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.033228, 36.373981, 28.984312>,  <26.953699, 36.160885, 28.907732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.033228, 36.373981, 28.984312>,  <27.165777, 36.729145, 29.111946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033228, 36.373981, 28.984312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143620, -0.381723, 0.913050,
		-0.932505, 0.256732, 0.254014,
		-0.331372, -0.887906, -0.319087,
		26.933817, 36.107609, 28.888586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682335, 36.491810, 29.634335>,  <27.165777, 36.729145, 29.111946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682335, 36.491810, 29.634335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.801449, 36.171673, 29.426193>,  <26.872917, 35.979591, 29.301308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.801449, 36.171673, 29.426193>,  <26.682335, 36.491810, 29.634335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801449, 36.171673, 29.426193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172478, -0.491006, 0.853912,
		-0.938922, -0.344032, -0.008172,
		0.297786, -0.800347, -0.520354,
		26.890785, 35.931568, 29.270086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656891, 35.976254, 30.115170>,  <26.682335, 36.491810, 29.634335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656891, 35.976254, 30.115170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.882153, 35.795147, 29.838659>,  <27.017309, 35.686481, 29.672754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.882153, 35.795147, 29.838659>,  <26.656891, 35.976254, 30.115170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882153, 35.795147, 29.838659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405138, -0.577822, 0.708509,
		-0.720225, -0.679060, -0.141967,
		0.563151, -0.452769, -0.691275,
		27.051098, 35.659317, 29.631277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643671, 35.300827, 30.369543>,  <26.656891, 35.976254, 30.115170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643671, 35.300827, 30.369543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.934692, 35.277283, 30.096134>,  <27.109304, 35.263157, 29.932089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.934692, 35.277283, 30.096134>,  <26.643671, 35.300827, 30.369543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934692, 35.277283, 30.096134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492938, -0.648094, 0.580506,
		-0.477158, -0.759282, -0.442505,
		0.727552, -0.058865, -0.683521,
		27.152958, 35.259624, 29.891077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690725, 34.581142, 30.119886>,  <26.643671, 35.300827, 30.369543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690725, 34.581142, 30.119886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.042009, 34.765186, 30.067663>,  <27.252779, 34.875614, 30.036329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.042009, 34.765186, 30.067663>,  <26.690725, 34.581142, 30.119886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042009, 34.765186, 30.067663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438604, -0.665915, 0.603477,
		0.190726, -0.587242, -0.786620,
		0.878209, 0.460113, -0.130559,
		27.305471, 34.903221, 30.028496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170023, 33.989777, 29.977530>,  <26.690725, 34.581142, 30.119886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170023, 33.989777, 29.977530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.395535, 34.291473, 30.112150>,  <27.530842, 34.472492, 30.192923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.395535, 34.291473, 30.112150>,  <27.170023, 33.989777, 29.977530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395535, 34.291473, 30.112150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404406, -0.607386, 0.683767,
		0.720146, -0.249390, -0.647453,
		0.563778, 0.754246, 0.336551,
		27.564669, 34.517746, 30.213116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947697, 33.747524, 30.027819>,  <27.170023, 33.989777, 29.977530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947697, 33.747524, 30.027819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.944401, 34.080521, 30.249409>,  <27.942423, 34.280319, 30.382362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.944401, 34.080521, 30.249409>,  <27.947697, 33.747524, 30.027819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944401, 34.080521, 30.249409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396021, -0.505980, 0.766258,
		0.918204, 0.225699, -0.325516,
		-0.008239, 0.832492, 0.553975,
		27.941929, 34.330269, 30.415602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554913, 33.679482, 30.344355>,  <27.947697, 33.747524, 30.027819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554913, 33.679482, 30.344355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.344112, 33.939346, 30.563520>,  <28.217632, 34.095264, 30.695019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.344112, 33.939346, 30.563520>,  <28.554913, 33.679482, 30.344355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344112, 33.939346, 30.563520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413583, -0.367167, 0.833149,
		0.742441, 0.665678, -0.075192,
		-0.527001, 0.649662, 0.547913,
		28.186012, 34.134247, 30.727894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915890, 33.838123, 30.917240>,  <28.554913, 33.679482, 30.344355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915890, 33.838123, 30.917240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.552599, 33.946800, 31.044556>,  <28.334625, 34.012005, 31.120945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.552599, 33.946800, 31.044556>,  <28.915890, 33.838123, 30.917240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552599, 33.946800, 31.044556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194931, -0.398359, 0.896277,
		0.370305, 0.876067, 0.308839,
		-0.908227, 0.271693, 0.318287,
		28.280130, 34.028309, 31.140041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044577, 34.072590, 31.561037>,  <28.915890, 33.838123, 30.917240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044577, 34.072590, 31.561037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.654827, 33.982651, 31.563501>,  <28.420977, 33.928688, 31.564980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.654827, 33.982651, 31.563501>,  <29.044577, 34.072590, 31.561037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654827, 33.982651, 31.563501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103421, -0.423522, 0.899963,
		-0.199745, 0.877538, 0.435923,
		-0.974375, -0.224847, 0.006160,
		28.362514, 33.915195, 31.565350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687935, 34.404564, 32.154892>,  <29.044577, 34.072590, 31.561037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687935, 34.404564, 32.154892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.457600, 34.089809, 32.066154>,  <28.319397, 33.900955, 32.012913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.457600, 34.089809, 32.066154>,  <28.687935, 34.404564, 32.154892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457600, 34.089809, 32.066154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036298, -0.246471, 0.968470,
		-0.816756, 0.565737, 0.113365,
		-0.575841, -0.786889, -0.221842,
		28.284847, 33.853745, 31.999601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381401, 34.199081, 32.742916>,  <28.687935, 34.404564, 32.154892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381401, 34.199081, 32.742916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.279942, 33.874283, 32.532646>,  <28.219067, 33.679405, 32.406487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.279942, 33.874283, 32.532646>,  <28.381401, 34.199081, 32.742916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279942, 33.874283, 32.532646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110838, -0.564261, 0.818122,
		-0.960926, 0.149250, 0.233123,
		-0.253647, -0.811994, -0.525671,
		28.203848, 33.630684, 32.374947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786648, 33.824524, 32.999207>,  <28.381401, 34.199081, 32.742916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786648, 33.824524, 32.999207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.990788, 33.557018, 32.782948>,  <28.113272, 33.396515, 32.653191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.990788, 33.557018, 32.782948>,  <27.786648, 33.824524, 32.999207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990788, 33.557018, 32.782948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139048, -0.556243, 0.819304,
		-0.848652, -0.493308, -0.190888,
		0.510349, -0.668761, -0.540650,
		28.143892, 33.356392, 32.620754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<25.503971, 33.856117, 26.774382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.871140, 34.009468, 26.733496>,  <26.091440, 34.101479, 26.708963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.871140, 34.009468, 26.733496>,  <25.503971, 33.856117, 26.774382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871140, 34.009468, 26.733496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361780, 0.702955, -0.612348,
		-0.162905, 0.599065, 0.783953,
		0.917920, 0.383373, -0.102215,
		26.146515, 34.124481, 26.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413416, 34.435276, 26.664457>,  <25.503971, 33.856117, 26.774382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413416, 34.435276, 26.664457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.779575, 34.410976, 26.505283>,  <25.999271, 34.396397, 26.409779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.779575, 34.410976, 26.505283>,  <25.413416, 34.435276, 26.664457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779575, 34.410976, 26.505283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226033, 0.740429, -0.632989,
		0.333095, 0.669384, 0.664057,
		0.915400, -0.060747, -0.397936,
		26.054195, 34.392754, 26.385902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679869, 35.154743, 26.614361>,  <25.413416, 34.435276, 26.664457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679869, 35.154743, 26.614361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.891058, 34.932507, 26.357435>,  <26.017771, 34.799164, 26.203279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.891058, 34.932507, 26.357435>,  <25.679869, 35.154743, 26.614361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891058, 34.932507, 26.357435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071240, 0.724682, -0.685391,
		0.846269, 0.407625, 0.343031,
		0.527971, -0.555588, -0.642315,
		26.049450, 34.765831, 26.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048008, 35.683823, 26.257772>,  <25.679869, 35.154743, 26.614361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048008, 35.683823, 26.257772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.087254, 35.357555, 26.029718>,  <26.110800, 35.161793, 25.892885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.087254, 35.357555, 26.029718>,  <26.048008, 35.683823, 26.257772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087254, 35.357555, 26.029718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019803, 0.571187, -0.820581,
		0.994978, 0.091799, 0.039888,
		0.098112, -0.815671, -0.570136,
		26.116688, 35.112854, 25.858677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495487, 35.817211, 25.754593>,  <26.048008, 35.683823, 26.257772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495487, 35.817211, 25.754593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.296618, 35.508083, 25.596825>,  <26.177296, 35.322605, 25.502165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.296618, 35.508083, 25.596825>,  <26.495487, 35.817211, 25.754593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296618, 35.508083, 25.596825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143338, 0.521496, -0.841128,
		0.855728, -0.361653, -0.370049,
		-0.497176, -0.772819, -0.394420,
		26.147465, 35.276237, 25.478498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688194, 35.777542, 25.052877>,  <26.495487, 35.817211, 25.754593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688194, 35.777542, 25.052877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.340765, 35.580658, 25.075901>,  <26.132307, 35.462528, 25.089714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.340765, 35.580658, 25.075901>,  <26.688194, 35.777542, 25.052877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340765, 35.580658, 25.075901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301316, 0.432332, -0.849881,
		0.393429, -0.755529, -0.523822,
		-0.868575, -0.492203, 0.057561,
		26.080193, 35.432995, 25.093168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698559, 35.421410, 24.447990>,  <26.688194, 35.777542, 25.052877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698559, 35.421410, 24.447990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.312784, 35.399357, 24.551392>,  <26.081320, 35.386124, 24.613432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.312784, 35.399357, 24.551392>,  <26.698559, 35.421410, 24.447990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312784, 35.399357, 24.551392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263285, 0.286744, -0.921118,
		-0.023340, -0.956419, -0.291062,
		-0.964436, -0.055133, 0.258504,
		26.023453, 35.382816, 24.628942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362047, 35.059803, 23.871590>,  <26.698559, 35.421410, 24.447990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362047, 35.059803, 23.871590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.111784, 35.309624, 24.058561>,  <25.961626, 35.459515, 24.170746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.111784, 35.309624, 24.058561>,  <26.362047, 35.059803, 23.871590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111784, 35.309624, 24.058561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302705, 0.357878, -0.883342,
		-0.718975, -0.694161, -0.034854,
		-0.625656, 0.624550, 0.467432,
		25.924088, 35.496990, 24.198792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707642, 34.907925, 23.467432>,  <26.362047, 35.059803, 23.871590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707642, 34.907925, 23.467432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.671541, 35.250225, 23.671213>,  <25.649881, 35.455605, 23.793482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.671541, 35.250225, 23.671213>,  <25.707642, 34.907925, 23.467432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671541, 35.250225, 23.671213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481466, 0.410300, -0.774496,
		-0.871806, -0.315182, 0.374986,
		-0.090250, 0.855754, 0.509452,
		25.644466, 35.506950, 23.824049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039225, 35.145527, 23.318762>,  <25.707642, 34.907925, 23.467432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039225, 35.145527, 23.318762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.243088, 35.466766, 23.442234>,  <25.365406, 35.659508, 23.516317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.243088, 35.466766, 23.442234>,  <25.039225, 35.145527, 23.318762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243088, 35.466766, 23.442234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379237, 0.531735, -0.757257,
		-0.772286, 0.268880, 0.575567,
		0.509660, 0.803095, 0.308683,
		25.395987, 35.707695, 23.534840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669395, 35.630051, 23.058908>,  <25.039225, 35.145527, 23.318762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669395, 35.630051, 23.058908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.995483, 35.835804, 23.165356>,  <25.191137, 35.959255, 23.229223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.995483, 35.835804, 23.165356>,  <24.669395, 35.630051, 23.058908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995483, 35.835804, 23.165356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120561, 0.600160, -0.790742,
		-0.566462, 0.612546, 0.551279,
		0.815222, 0.514388, 0.266118,
		25.240049, 35.990120, 23.245192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459930, 36.348892, 23.160822>,  <24.669395, 35.630051, 23.058908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459930, 36.348892, 23.160822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.854513, 36.361713, 23.096479>,  <25.091263, 36.369404, 23.057875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.854513, 36.361713, 23.096479>,  <24.459930, 36.348892, 23.160822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854513, 36.361713, 23.096479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150043, 0.572478, -0.806075,
		0.066251, 0.819294, 0.569534,
		0.986457, 0.032051, -0.160857,
		25.150450, 36.371330, 23.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638830, 37.101341, 23.171795>,  <24.459930, 36.348892, 23.160822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638830, 37.101341, 23.171795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.837000, 36.899784, 22.888769>,  <24.955902, 36.778851, 22.718954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.837000, 36.899784, 22.888769>,  <24.638830, 37.101341, 23.171795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837000, 36.899784, 22.888769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267581, 0.686417, -0.676190,
		0.826411, 0.524331, 0.205235,
		0.495424, -0.503894, -0.707564,
		24.985626, 36.748615, 22.676500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333849, 37.285370, 23.217171>,  <24.638830, 37.101341, 23.171795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333849, 37.285370, 23.217171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.106733, 36.976326, 23.103542>,  <24.970465, 36.790901, 23.035364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.106733, 36.976326, 23.103542>,  <25.333849, 37.285370, 23.217171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106733, 36.976326, 23.103542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823174, -0.532441, -0.197208,
		0.001113, -0.345813, 0.938303,
		-0.567788, -0.772606, -0.284072,
		24.936398, 36.744545, 23.018320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262131, 38.009632, 23.604742>,  <25.333849, 37.285370, 23.217171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262131, 38.009632, 23.604742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.309107, 38.383629, 23.738609>,  <25.337292, 38.608025, 23.818930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.309107, 38.383629, 23.738609>,  <25.262131, 38.009632, 23.604742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309107, 38.383629, 23.738609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434855, -0.351392, 0.829111,
		0.892810, 0.048161, -0.447852,
		0.117441, 0.934989, 0.334669,
		25.344339, 38.664127, 23.839010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877510, 38.050915, 23.806654>,  <25.262131, 38.009632, 23.604742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877510, 38.050915, 23.806654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.688023, 38.339325, 24.008928>,  <25.574329, 38.512371, 24.130293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.688023, 38.339325, 24.008928>,  <25.877510, 38.050915, 23.806654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688023, 38.339325, 24.008928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366026, -0.361066, 0.857704,
		0.801009, 0.591405, -0.092869,
		-0.473718, 0.721022, 0.505687,
		25.545908, 38.555630, 24.160635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379623, 38.353069, 24.385952>,  <25.877510, 38.050915, 23.806654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379623, 38.353069, 24.385952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.998880, 38.426743, 24.483967>,  <25.770435, 38.470947, 24.542776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.998880, 38.426743, 24.483967>,  <26.379623, 38.353069, 24.385952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998880, 38.426743, 24.483967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194996, -0.252973, 0.947619,
		0.236526, 0.949779, 0.204878,
		-0.951857, 0.184186, 0.245037,
		25.713324, 38.481998, 24.557478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475819, 38.598328, 25.017197>,  <26.379623, 38.353069, 24.385952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475819, 38.598328, 25.017197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.089849, 38.501057, 24.977621>,  <25.858267, 38.442696, 24.953876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.089849, 38.501057, 24.977621>,  <26.475819, 38.598328, 25.017197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089849, 38.501057, 24.977621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063247, -0.150436, 0.986594,
		-0.254797, 0.958246, 0.129780,
		-0.964924, -0.243173, -0.098937,
		25.800373, 38.428104, 24.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142023, 38.896793, 25.533667>,  <26.475819, 38.598328, 25.017197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142023, 38.896793, 25.533667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.871128, 38.614452, 25.450602>,  <25.708591, 38.445049, 25.400763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.871128, 38.614452, 25.450602>,  <26.142023, 38.896793, 25.533667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871128, 38.614452, 25.450602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091001, -0.199718, 0.975618,
		-0.730114, 0.679624, 0.071024,
		-0.677239, -0.705849, -0.207663,
		25.667957, 38.402699, 25.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723267, 38.969753, 26.091055>,  <26.142023, 38.896793, 25.533667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723267, 38.969753, 26.091055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.657564, 38.608948, 25.931364>,  <25.618143, 38.392464, 25.835548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.657564, 38.608948, 25.931364>,  <25.723267, 38.969753, 26.091055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657564, 38.608948, 25.931364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015558, -0.402306, 0.915373,
		-0.986295, 0.156568, 0.052048,
		-0.164257, -0.902018, -0.399228,
		25.608288, 38.338341, 25.811596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155415, 38.635468, 26.463665>,  <25.723267, 38.969753, 26.091055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155415, 38.635468, 26.463665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.364681, 38.341141, 26.291679>,  <25.490242, 38.164543, 26.188488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.364681, 38.341141, 26.291679>,  <25.155415, 38.635468, 26.463665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364681, 38.341141, 26.291679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019562, -0.494014, 0.869233,
		-0.852006, -0.463165, -0.244057,
		0.523166, -0.735818, -0.429964,
		25.521631, 38.120396, 26.162689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883806, 38.021034, 26.764761>,  <25.155415, 38.635468, 26.463665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883806, 38.021034, 26.764761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.220053, 37.861446, 26.618233>,  <25.421801, 37.765694, 26.530315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.220053, 37.861446, 26.618233>,  <24.883806, 38.021034, 26.764761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220053, 37.861446, 26.618233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124365, -0.516078, 0.847465,
		-0.527178, -0.757942, -0.384198,
		0.840605, -0.398984, -0.366327,
		25.472237, 37.741756, 26.508337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840578, 37.307430, 26.903631>,  <24.883806, 38.021034, 26.764761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840578, 37.307430, 26.903631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.230932, 37.393150, 26.887020>,  <25.465145, 37.444580, 26.877052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.230932, 37.393150, 26.887020>,  <24.840578, 37.307430, 26.903631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230932, 37.393150, 26.887020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143323, -0.485560, 0.862374,
		0.164639, -0.847531, -0.504565,
		0.975885, 0.214297, -0.041529,
		25.523699, 37.457439, 26.874561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074875, 36.694901, 27.211016>,  <24.840578, 37.307430, 26.903631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074875, 36.694901, 27.211016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.397268, 36.931431, 27.200243>,  <25.590704, 37.073349, 27.193779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.397268, 36.931431, 27.200243>,  <25.074875, 36.694901, 27.211016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397268, 36.931431, 27.200243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363937, -0.459140, 0.810395,
		0.466844, -0.662965, -0.585264,
		0.805982, 0.591327, -0.026931,
		25.639063, 37.108829, 27.192163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673161, 36.282234, 27.037081>,  <25.074875, 36.694901, 27.211016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673161, 36.282234, 27.037081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.806271, 36.606506, 27.229771>,  <25.886137, 36.801071, 27.345385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.806271, 36.606506, 27.229771>,  <25.673161, 36.282234, 27.037081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806271, 36.606506, 27.229771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532967, -0.583113, 0.613128,
		0.777950, 0.052710, -0.626111,
		0.332776, 0.810679, 0.481726,
		25.906103, 36.849709, 27.374289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373268, 36.194496, 27.018515>,  <25.673161, 36.282234, 27.037081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373268, 36.194496, 27.018515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.304121, 36.469368, 27.300762>,  <26.262632, 36.634293, 27.470112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.304121, 36.469368, 27.300762>,  <26.373268, 36.194496, 27.018515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304121, 36.469368, 27.300762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636546, -0.468746, 0.612443,
		0.751615, 0.555032, -0.356390,
		-0.172869, 0.687180, 0.705621,
		26.252260, 36.675522, 27.512449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964451, 36.265606, 27.310995>,  <26.373268, 36.194496, 27.018515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964451, 36.265606, 27.310995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.724909, 36.416565, 27.593538>,  <26.581184, 36.507141, 27.763063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.724909, 36.416565, 27.593538>,  <26.964451, 36.265606, 27.310995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724909, 36.416565, 27.593538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499874, -0.512951, 0.697860,
		0.625699, 0.771007, 0.118531,
		-0.598855, 0.377399, 0.706359,
		26.545252, 36.529785, 27.805447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460115, 36.541950, 27.843914>,  <26.964451, 36.265606, 27.310995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460115, 36.541950, 27.843914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.098530, 36.478580, 28.002787>,  <26.881578, 36.440559, 28.098110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.098530, 36.478580, 28.002787>,  <27.460115, 36.541950, 27.843914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098530, 36.478580, 28.002787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415405, -0.545681, 0.727785,
		0.101439, 0.822883, 0.559084,
		-0.903963, -0.158420, 0.397183,
		26.827341, 36.431053, 28.121941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554480, 37.200920, 28.041611>,  <27.460115, 36.541950, 27.843914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554480, 37.200920, 28.041611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809374, 37.504082, 28.097486>,  <27.962311, 37.685978, 28.131012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809374, 37.504082, 28.097486>,  <27.554480, 37.200920, 28.041611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809374, 37.504082, 28.097486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273537, 0.391883, -0.878410,
		-0.720492, 0.521544, 0.457037,
		0.637235, 0.757905, 0.139687,
		28.000544, 37.731453, 28.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231773, 37.885731, 27.827303>,  <27.554480, 37.200920, 28.041611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231773, 37.885731, 27.827303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.604776, 38.029816, 27.837723>,  <27.828579, 38.116268, 27.843975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.604776, 38.029816, 27.837723>,  <27.231773, 37.885731, 27.827303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604776, 38.029816, 27.837723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185516, 0.539642, -0.821201,
		-0.309863, 0.760943, 0.570045,
		0.932507, 0.360212, 0.026048,
		27.884529, 38.137878, 27.845537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203365, 38.577488, 27.735960>,  <27.231773, 37.885731, 27.827303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203365, 38.577488, 27.735960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.568949, 38.461498, 27.622404>,  <27.788300, 38.391907, 27.554270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.568949, 38.461498, 27.622404>,  <27.203365, 38.577488, 27.735960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568949, 38.461498, 27.622404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113573, 0.488841, -0.864948,
		0.389588, 0.822770, 0.413848,
		0.913960, -0.289972, -0.283891,
		27.843136, 38.374508, 27.537237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508888, 39.149075, 27.420982>,  <27.203365, 38.577488, 27.735960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508888, 39.149075, 27.420982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.756819, 38.865482, 27.286423>,  <27.905577, 38.695328, 27.205687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.756819, 38.865482, 27.286423>,  <27.508888, 39.149075, 27.420982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756819, 38.865482, 27.286423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141892, 0.522862, -0.840524,
		0.771805, 0.473246, 0.424682,
		0.619825, -0.708980, -0.336398,
		27.942766, 38.652790, 27.185503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953678, 39.598301, 27.153482>,  <27.508888, 39.149075, 27.420982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953678, 39.598301, 27.153482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.050898, 39.242981, 26.997610>,  <28.109230, 39.029789, 26.904087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.050898, 39.242981, 26.997610>,  <27.953678, 39.598301, 27.153482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050898, 39.242981, 26.997610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197726, 0.438664, -0.876629,
		0.949648, 0.136014, 0.282257,
		0.243050, -0.888298, -0.389683,
		28.123812, 38.976490, 26.880705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568981, 39.677872, 26.797216>,  <27.953678, 39.598301, 27.153482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568981, 39.677872, 26.797216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373255, 39.367832, 26.637320>,  <28.255819, 39.181808, 26.541382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373255, 39.367832, 26.637320>,  <28.568981, 39.677872, 26.797216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373255, 39.367832, 26.637320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035685, 0.440187, -0.897197,
		0.871377, -0.453276, -0.187730,
		-0.489314, -0.775098, -0.399744,
		28.226461, 39.135303, 26.517397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880379, 39.543686, 26.108734>,  <28.568981, 39.677872, 26.797216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880379, 39.543686, 26.108734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.517174, 39.376171, 26.104216>,  <28.299250, 39.275661, 26.101505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.517174, 39.376171, 26.104216>,  <28.880379, 39.543686, 26.108734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517174, 39.376171, 26.104216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123919, 0.294238, -0.947665,
		0.400195, -0.859092, -0.319068,
		-0.908013, -0.418789, -0.011295,
		28.244770, 39.250534, 26.100828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532690, 39.241535, 25.886726>,  <28.880379, 39.543686, 26.108734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532690, 39.241535, 25.886726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931612, 39.270889, 25.886408>,  <30.170965, 39.288502, 25.886217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931612, 39.270889, 25.886408>,  <29.532690, 39.241535, 25.886726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931612, 39.270889, 25.886408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012125, -0.154048, 0.987989,
		0.072382, -0.985334, -0.154523,
		0.997303, 0.073387, -0.000796,
		30.230803, 39.292904, 25.886169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783329, 38.700996, 26.333044>,  <29.532690, 39.241535, 25.886726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783329, 38.700996, 26.333044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.065832, 38.983913, 26.320835>,  <30.235334, 39.153664, 26.313511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.065832, 38.983913, 26.320835>,  <29.783329, 38.700996, 26.333044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065832, 38.983913, 26.320835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275940, -0.235321, 0.931924,
		0.651962, -0.666602, -0.361369,
		0.706260, 0.707294, -0.030521,
		30.277710, 39.196102, 26.311678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364000, 38.406937, 26.675962>,  <29.783329, 38.700996, 26.333044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364000, 38.406937, 26.675962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406933, 38.804615, 26.679052>,  <30.432693, 39.043221, 26.680906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406933, 38.804615, 26.679052>,  <30.364000, 38.406937, 26.675962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406933, 38.804615, 26.679052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091590, -0.017626, 0.995641,
		0.989995, -0.106157, -0.092950,
		0.107333, 0.994193, 0.007727,
		30.439133, 39.102875, 26.681370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998650, 38.432690, 27.015701>,  <30.364000, 38.406937, 26.675962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998650, 38.432690, 27.015701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839350, 38.799442, 27.026464>,  <30.743771, 39.019493, 27.032923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839350, 38.799442, 27.026464>,  <30.998650, 38.432690, 27.015701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839350, 38.799442, 27.026464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283400, 0.095089, 0.954276,
		0.872400, 0.387665, -0.297714,
		-0.398249, 0.916883, 0.026909,
		30.719875, 39.074509, 27.034536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423033, 38.723507, 27.430126>,  <30.998650, 38.432690, 27.015701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423033, 38.723507, 27.430126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102278, 38.961185, 27.455128>,  <30.909824, 39.103794, 27.470129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102278, 38.961185, 27.455128>,  <31.423033, 38.723507, 27.430126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102278, 38.961185, 27.455128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177622, 0.137198, 0.974488,
		0.570465, 0.792530, -0.215559,
		-0.801886, 0.594199, 0.062504,
		30.861712, 39.139446, 27.473879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593584, 39.357189, 27.858438>,  <31.423033, 38.723507, 27.430126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593584, 39.357189, 27.858438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194405, 39.336609, 27.873667>,  <30.954897, 39.324261, 27.882803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194405, 39.336609, 27.873667>,  <31.593584, 39.357189, 27.858438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194405, 39.336609, 27.873667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033335, 0.089947, 0.995388,
		-0.054640, 0.994616, -0.088047,
		-0.997949, -0.051453, 0.038071,
		30.895020, 39.321175, 27.885088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414764, 39.827682, 28.415876>,  <31.593584, 39.357189, 27.858438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414764, 39.827682, 28.415876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115429, 39.566730, 28.367880>,  <30.935827, 39.410160, 28.339083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115429, 39.566730, 28.367880>,  <31.414764, 39.827682, 28.415876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115429, 39.566730, 28.367880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059333, -0.114333, 0.991669,
		-0.660659, 0.749223, 0.046852,
		-0.748338, -0.652375, -0.119989,
		30.890928, 39.371017, 28.331882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.966652, 36.371174, 21.854881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630068, 36.351833, 22.070143>,  <28.428118, 36.340229, 22.199299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630068, 36.351833, 22.070143>,  <28.966652, 36.371174, 21.854881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630068, 36.351833, 22.070143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389511, -0.744553, 0.542146,
		0.374468, 0.665810, 0.645345,
		-0.841460, -0.048353, 0.538152,
		28.377630, 36.337326, 22.231588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150822, 36.219898, 22.555428>,  <28.966652, 36.371174, 21.854881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150822, 36.219898, 22.555428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763470, 36.121078, 22.541540>,  <28.531057, 36.061787, 22.533207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763470, 36.121078, 22.541540>,  <29.150822, 36.219898, 22.555428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763470, 36.121078, 22.541540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180111, -0.788624, 0.587904,
		-0.172622, 0.563062, 0.808185,
		-0.968381, -0.247048, -0.034720,
		28.472956, 36.046963, 22.531124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932587, 36.143997, 23.169653>,  <29.150822, 36.219898, 22.555428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932587, 36.143997, 23.169653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648918, 35.945618, 22.969208>,  <28.478718, 35.826591, 22.848940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648918, 35.945618, 22.969208>,  <28.932587, 36.143997, 23.169653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648918, 35.945618, 22.969208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001045, -0.711500, 0.702685,
		-0.705037, 0.497800, 0.505093,
		-0.709170, -0.495947, -0.501113,
		28.436167, 35.796833, 22.818874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474554, 35.822979, 23.706985>,  <28.932587, 36.143997, 23.169653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474554, 35.822979, 23.706985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400146, 35.614059, 23.374094>,  <28.355501, 35.488708, 23.174360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400146, 35.614059, 23.374094>,  <28.474554, 35.822979, 23.706985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400146, 35.614059, 23.374094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191467, -0.850043, 0.490680,
		-0.963710, -0.068068, 0.258127,
		-0.186020, -0.522296, -0.832228,
		28.344341, 35.457371, 23.124426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923391, 35.363415, 23.931368>,  <28.474554, 35.822979, 23.706985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923391, 35.363415, 23.931368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092735, 35.234184, 23.592808>,  <28.194342, 35.156647, 23.389671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092735, 35.234184, 23.592808>,  <27.923391, 35.363415, 23.931368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092735, 35.234184, 23.592808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175726, -0.887227, 0.426554,
		-0.888767, -0.329311, -0.318822,
		0.423337, -0.323081, -0.846407,
		28.219744, 35.137260, 23.338888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647482, 34.700592, 23.803350>,  <27.923391, 35.363415, 23.931368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647482, 34.700592, 23.803350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998390, 34.696228, 23.611403>,  <28.208935, 34.693607, 23.496233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998390, 34.696228, 23.611403>,  <27.647482, 34.700592, 23.803350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998390, 34.696228, 23.611403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254625, -0.836899, 0.484527,
		-0.406891, -0.547249, -0.731409,
		0.877272, -0.010915, -0.479870,
		28.261572, 34.692955, 23.467442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710712, 33.964066, 23.672089>,  <27.647482, 34.700592, 23.803350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710712, 33.964066, 23.672089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085423, 34.101608, 23.646135>,  <28.310249, 34.184135, 23.630564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085423, 34.101608, 23.646135>,  <27.710712, 33.964066, 23.672089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085423, 34.101608, 23.646135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305101, -0.711810, 0.632645,
		0.171355, -0.612443, -0.771719,
		0.936777, 0.343859, -0.064885,
		28.366455, 34.204765, 23.626669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084187, 33.408451, 23.732115>,  <27.710712, 33.964066, 23.672089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084187, 33.408451, 23.732115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363070, 33.689072, 23.791079>,  <28.530399, 33.857445, 23.826456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363070, 33.689072, 23.791079>,  <28.084187, 33.408451, 23.732115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363070, 33.689072, 23.791079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526348, -0.640576, 0.559124,
		0.486680, -0.312238, -0.815874,
		0.697209, 0.701549, 0.147409,
		28.572231, 33.899536, 23.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870901, 33.101311, 23.609896>,  <28.084187, 33.408451, 23.732115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870901, 33.101311, 23.609896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951143, 33.420517, 23.837204>,  <28.999289, 33.612041, 23.973589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951143, 33.420517, 23.837204>,  <28.870901, 33.101311, 23.609896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951143, 33.420517, 23.837204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755451, -0.495325, 0.428890,
		0.623739, 0.343264, -0.702224,
		0.200607, 0.798012, 0.568273,
		29.011326, 33.659920, 24.007687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562757, 33.243839, 23.565296>,  <28.870901, 33.101311, 23.609896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562757, 33.243839, 23.565296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423239, 33.363548, 23.920549>,  <29.339527, 33.435375, 24.133701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423239, 33.363548, 23.920549>,  <29.562757, 33.243839, 23.565296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423239, 33.363548, 23.920549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618777, -0.638195, 0.458064,
		0.703887, 0.709326, 0.037416,
		-0.348795, 0.299273, 0.888131,
		29.318600, 33.453331, 24.186989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068871, 33.120647, 23.962965>,  <29.562757, 33.243839, 23.565296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068871, 33.120647, 23.962965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819748, 33.209984, 24.262892>,  <29.670275, 33.263588, 24.442848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819748, 33.209984, 24.262892>,  <30.068871, 33.120647, 23.962965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819748, 33.209984, 24.262892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581766, -0.508608, 0.634718,
		0.523125, 0.831526, 0.186831,
		-0.622808, 0.223345, 0.749819,
		29.632906, 33.276989, 24.487837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475697, 33.495667, 24.503830>,  <30.068871, 33.120647, 23.962965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475697, 33.495667, 24.503830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152639, 33.329227, 24.670958>,  <29.958805, 33.229362, 24.771235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152639, 33.329227, 24.670958>,  <30.475697, 33.495667, 24.503830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152639, 33.329227, 24.670958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588719, -0.528760, 0.611410,
		-0.033484, 0.739779, 0.672017,
		-0.807644, -0.416101, 0.417817,
		29.910347, 33.204395, 24.796303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926647, 34.153709, 24.754475>,  <30.475697, 33.495667, 24.503830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926647, 34.153709, 24.754475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323391, 34.191071, 24.719866>,  <31.561438, 34.213490, 24.699100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323391, 34.191071, 24.719866>,  <30.926647, 34.153709, 24.754475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323391, 34.191071, 24.719866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126253, 0.633580, -0.763306,
		-0.016478, 0.768018, 0.640217,
		0.991861, 0.093407, -0.086524,
		31.620949, 34.219093, 24.693909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006992, 34.874352, 24.661036>,  <30.926647, 34.153709, 24.754475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006992, 34.874352, 24.661036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356174, 34.721756, 24.539436>,  <31.565683, 34.630199, 24.466476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356174, 34.721756, 24.539436>,  <31.006992, 34.874352, 24.661036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356174, 34.721756, 24.539436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052333, 0.692848, -0.719182,
		0.484985, 0.611904, 0.624790,
		0.872955, -0.381490, -0.303999,
		31.618061, 34.607307, 24.448236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528545, 35.411686, 24.678265>,  <31.006992, 34.874352, 24.661036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528545, 35.411686, 24.678265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.605040, 35.125298, 24.409693>,  <31.650936, 34.953465, 24.248550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.605040, 35.125298, 24.409693>,  <31.528545, 35.411686, 24.678265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605040, 35.125298, 24.409693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083499, 0.669709, -0.737915,
		0.977986, 0.197179, 0.068290,
		0.191236, -0.715968, -0.671430,
		31.662411, 34.910507, 24.208263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017902, 35.637993, 24.249344>,  <31.528545, 35.411686, 24.678265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017902, 35.637993, 24.249344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867916, 35.353455, 24.011557>,  <31.777924, 35.182732, 23.868885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867916, 35.353455, 24.011557>,  <32.017902, 35.637993, 24.249344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867916, 35.353455, 24.011557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086092, 0.665204, -0.741682,
		0.923032, -0.226928, -0.310671,
		-0.374968, -0.711342, -0.594467,
		31.755426, 35.140053, 23.833216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363064, 35.843452, 23.640568>,  <32.017902, 35.637993, 24.249344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363064, 35.843452, 23.640568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071583, 35.592751, 23.530174>,  <31.896694, 35.442329, 23.463938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071583, 35.592751, 23.530174>,  <32.363064, 35.843452, 23.640568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071583, 35.592751, 23.530174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198496, 0.579003, -0.790794,
		0.655430, -0.521473, -0.546331,
		-0.728704, -0.626755, -0.275986,
		31.852972, 35.404724, 23.447378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488354, 35.680527, 23.021076>,  <32.363064, 35.843452, 23.640568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488354, 35.680527, 23.021076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.095005, 35.611507, 23.043722>,  <31.858995, 35.570095, 23.057310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.095005, 35.611507, 23.043722>,  <32.488354, 35.680527, 23.021076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095005, 35.611507, 23.043722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138488, 0.510891, -0.848417,
		0.117470, -0.842151, -0.526292,
		-0.983373, -0.172549, 0.056613,
		31.799994, 35.559742, 23.060705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259834, 35.519234, 22.339403>,  <32.488354, 35.680527, 23.021076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259834, 35.519234, 22.339403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.923731, 35.634605, 22.523045>,  <31.722069, 35.703827, 22.633228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.923731, 35.634605, 22.523045>,  <32.259834, 35.519234, 22.339403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923731, 35.634605, 22.523045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244790, 0.553738, -0.795897,
		-0.483779, -0.781144, -0.394680,
		-0.840259, 0.288425, 0.459103,
		31.671654, 35.721134, 22.660776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691212, 35.497604, 21.786242>,  <32.259834, 35.519234, 22.339403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691212, 35.497604, 21.786242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582512, 35.739342, 22.085819>,  <31.517292, 35.884384, 22.265566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582512, 35.739342, 22.085819>,  <31.691212, 35.497604, 21.786242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582512, 35.739342, 22.085819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429171, 0.620455, -0.656390,
		-0.861373, -0.499799, 0.090759,
		-0.271751, 0.604348, 0.748943,
		31.500986, 35.920647, 22.310503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019941, 35.765457, 21.551088>,  <31.691212, 35.497604, 21.786242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019941, 35.765457, 21.551088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160587, 35.995499, 21.846554>,  <31.244976, 36.133522, 22.023832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160587, 35.995499, 21.846554>,  <31.019941, 35.765457, 21.551088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160587, 35.995499, 21.846554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197996, 0.816883, -0.541756,
		-0.914967, 0.044238, 0.401097,
		0.351616, 0.575104, 0.738662,
		31.266071, 36.168030, 22.068151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589521, 36.306896, 21.463705>,  <31.019941, 35.765457, 21.551088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589521, 36.306896, 21.463705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.898357, 36.450455, 21.673494>,  <31.083658, 36.536591, 21.799368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.898357, 36.450455, 21.673494>,  <30.589521, 36.306896, 21.463705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898357, 36.450455, 21.673494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015508, 0.814388, -0.580114,
		-0.635325, 0.456033, 0.623214,
		0.772089, 0.358896, 0.524473,
		31.129984, 36.558125, 21.830835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348646, 36.896881, 21.707912>,  <30.589521, 36.306896, 21.463705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348646, 36.896881, 21.707912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746674, 36.936447, 21.710882>,  <30.985491, 36.960186, 21.712664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746674, 36.936447, 21.710882>,  <30.348646, 36.896881, 21.707912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746674, 36.936447, 21.710882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088000, 0.914865, -0.394054,
		-0.045770, 0.391458, 0.919057,
		0.995069, 0.098913, 0.007425,
		31.045195, 36.966122, 21.713110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444016, 37.506897, 22.030691>,  <30.348646, 36.896881, 21.707912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444016, 37.506897, 22.030691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803726, 37.464928, 21.860847>,  <31.019552, 37.439747, 21.758942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803726, 37.464928, 21.860847>,  <30.444016, 37.506897, 22.030691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803726, 37.464928, 21.860847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092723, 0.902998, -0.419520,
		0.427442, 0.416635, 0.802314,
		0.899275, -0.104927, -0.424611,
		31.073509, 37.433449, 21.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677372, 38.113705, 22.140793>,  <30.444016, 37.506897, 22.030691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677372, 38.113705, 22.140793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907187, 37.999783, 21.833860>,  <31.045074, 37.931431, 21.649700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907187, 37.999783, 21.833860>,  <30.677372, 38.113705, 22.140793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907187, 37.999783, 21.833860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134249, 0.892020, -0.431598,
		0.807395, 0.350982, 0.474262,
		0.574535, -0.284801, -0.767332,
		31.079548, 37.914341, 21.603661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354210, 38.546410, 22.099354>,  <30.677372, 38.113705, 22.140793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354210, 38.546410, 22.099354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.276705, 38.390816, 21.739098>,  <31.230202, 38.297459, 21.522943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.276705, 38.390816, 21.739098>,  <31.354210, 38.546410, 22.099354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276705, 38.390816, 21.739098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132538, 0.899242, -0.416891,
		0.972055, -0.200146, -0.122683,
		-0.193761, -0.388981, -0.900639,
		31.218576, 38.274120, 21.468906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419735, 38.652470, 22.859467>,  <31.354210, 38.546410, 22.099354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419735, 38.652470, 22.859467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157677, 38.935955, 22.964159>,  <31.000443, 39.106049, 23.026974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157677, 38.935955, 22.964159>,  <31.419735, 38.652470, 22.859467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157677, 38.935955, 22.964159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070371, -0.287683, 0.955137,
		0.752218, 0.644172, 0.138601,
		-0.655146, 0.708718, 0.261731,
		30.961134, 39.148571, 23.042679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615658, 38.852688, 23.506708>,  <31.419735, 38.652470, 22.859467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615658, 38.852688, 23.506708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232645, 38.967278, 23.493622>,  <31.002838, 39.036030, 23.485769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232645, 38.967278, 23.493622>,  <31.615658, 38.852688, 23.506708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232645, 38.967278, 23.493622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115303, -0.276440, 0.954089,
		0.264276, 0.917341, 0.297730,
		-0.957530, 0.286472, -0.032716,
		30.945387, 39.053219, 23.483807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526758, 39.457134, 23.895756>,  <31.615658, 38.852688, 23.506708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526758, 39.457134, 23.895756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169945, 39.276356, 23.893648>,  <30.955856, 39.167889, 23.892384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169945, 39.276356, 23.893648>,  <31.526758, 39.457134, 23.895756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169945, 39.276356, 23.893648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017040, 0.021977, 0.999613,
		-0.451651, 0.891777, -0.027305,
		-0.892032, -0.451942, -0.005270,
		30.902336, 39.140774, 23.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137306, 39.815907, 24.327326>,  <31.526758, 39.457134, 23.895756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137306, 39.815907, 24.327326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938936, 39.470707, 24.288784>,  <30.819914, 39.263588, 24.265659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938936, 39.470707, 24.288784>,  <31.137306, 39.815907, 24.327326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938936, 39.470707, 24.288784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371571, 0.110602, 0.921793,
		-0.784853, 0.492944, -0.375517,
		-0.495925, -0.863003, -0.096357,
		30.790159, 39.211807, 24.259876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525892, 40.031143, 24.564182>,  <31.137306, 39.815907, 24.327326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525892, 40.031143, 24.564182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.527481, 39.633823, 24.610392>,  <30.528435, 39.395432, 24.638117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.527481, 39.633823, 24.610392>,  <30.525892, 40.031143, 24.564182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527481, 39.633823, 24.610392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123763, 0.114146, 0.985725,
		-0.992304, -0.018212, -0.122480,
		0.003971, -0.993297, 0.115522,
		30.528673, 39.335835, 24.645048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020601, 39.919640, 24.999187>,  <30.525892, 40.031143, 24.564182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020601, 39.919640, 24.999187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210350, 39.568199, 25.021219>,  <30.324200, 39.357334, 25.034439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210350, 39.568199, 25.021219>,  <30.020601, 39.919640, 24.999187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210350, 39.568199, 25.021219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215966, -0.055490, 0.974823,
		-0.853423, -0.474324, -0.216070,
		0.474372, -0.878599, 0.055081,
		30.352661, 39.304619, 25.037743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595009, 39.512955, 25.222513>,  <30.020601, 39.919640, 24.999187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595009, 39.512955, 25.222513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949799, 39.364429, 25.332352>,  <30.162672, 39.275314, 25.398254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949799, 39.364429, 25.332352>,  <29.595009, 39.512955, 25.222513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949799, 39.364429, 25.332352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193990, 0.240031, 0.951185,
		-0.419100, -0.896945, 0.140870,
		0.886974, -0.371314, 0.274595,
		30.215891, 39.253036, 25.414730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834051, 39.346539, 25.246311>,  <29.595009, 39.512955, 25.222513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834051, 39.346539, 25.246311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475409, 39.336857, 25.423180>,  <28.260223, 39.331047, 25.529301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475409, 39.336857, 25.423180>,  <28.834051, 39.346539, 25.246311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475409, 39.336857, 25.423180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415634, 0.390535, -0.821420,
		-0.152800, -0.920270, -0.360216,
		-0.896605, -0.024205, 0.442169,
		28.206427, 39.329594, 25.555830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356682, 39.102226, 24.751017>,  <28.834051, 39.346539, 25.246311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356682, 39.102226, 24.751017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148748, 39.296963, 25.031803>,  <28.023989, 39.413807, 25.200275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148748, 39.296963, 25.031803>,  <28.356682, 39.102226, 24.751017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148748, 39.296963, 25.031803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553542, 0.433907, -0.710856,
		-0.650664, -0.758094, 0.043930,
		-0.519835, 0.486845, 0.701964,
		27.992798, 39.443016, 25.242392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773623, 39.275215, 24.480089>,  <28.356682, 39.102226, 24.751017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773623, 39.275215, 24.480089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773298, 39.544350, 24.776007>,  <27.773104, 39.705830, 24.953558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773298, 39.544350, 24.776007>,  <27.773623, 39.275215, 24.480089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773298, 39.544350, 24.776007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511631, 0.635356, -0.578408,
		-0.859205, -0.378971, 0.343727,
		-0.000810, 0.672832, 0.739794,
		27.773056, 39.746201, 24.997946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035458, 39.488987, 24.586260>,  <27.773623, 39.275215, 24.480089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035458, 39.488987, 24.586260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275145, 39.767780, 24.743816>,  <27.418957, 39.935055, 24.838350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275145, 39.767780, 24.743816>,  <27.035458, 39.488987, 24.586260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275145, 39.767780, 24.743816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583819, 0.717085, -0.380716,
		-0.547807, -0.001830, 0.836603,
		0.599219, 0.696983, 0.393892,
		27.454910, 39.976875, 24.861984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455284, 39.871548, 24.850607>,  <27.035458, 39.488987, 24.586260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455284, 39.871548, 24.850607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788027, 40.093189, 24.863148>,  <26.987673, 40.226173, 24.870672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788027, 40.093189, 24.863148>,  <26.455284, 39.871548, 24.850607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788027, 40.093189, 24.863148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518896, 0.796557, -0.310231,
		-0.196872, 0.241801, 0.950144,
		0.831859, 0.554101, 0.031350,
		27.037584, 40.259418, 24.872553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264462, 40.577538, 25.110170>,  <26.455284, 39.871548, 24.850607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264462, 40.577538, 25.110170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611374, 40.617962, 24.915190>,  <26.819521, 40.642216, 24.798201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611374, 40.617962, 24.915190>,  <26.264462, 40.577538, 25.110170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611374, 40.617962, 24.915190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321285, 0.861578, -0.393013,
		0.380263, 0.497464, 0.779698,
		0.867281, 0.101057, -0.487454,
		26.871559, 40.648277, 24.768953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515329, 41.236130, 25.252398>,  <26.264462, 40.577538, 25.110170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515329, 41.236130, 25.252398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679140, 41.127930, 24.903889>,  <26.777428, 41.063011, 24.694782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679140, 41.127930, 24.903889>,  <26.515329, 41.236130, 25.252398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679140, 41.127930, 24.903889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155349, 0.920407, -0.358773,
		0.898973, 0.282279, 0.334911,
		0.409528, -0.270499, -0.871273,
		26.801998, 41.046780, 24.642508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717098, 41.867256, 25.026623>,  <26.515329, 41.236130, 25.252398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717098, 41.867256, 25.026623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743313, 41.664349, 24.682905>,  <26.759041, 41.542603, 24.476675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743313, 41.664349, 24.682905>,  <26.717098, 41.867256, 25.026623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743313, 41.664349, 24.682905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167268, 0.843374, -0.510629,
		0.983731, 0.177197, -0.029578,
		0.065537, -0.507269, -0.859292,
		26.762974, 41.512169, 24.425117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977348, 42.299404, 24.658329>,  <26.717098, 41.867256, 25.026623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977348, 42.299404, 24.658329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823353, 42.067455, 24.371124>,  <26.730955, 41.928288, 24.198801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823353, 42.067455, 24.371124>,  <26.977348, 42.299404, 24.658329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823353, 42.067455, 24.371124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412052, 0.804126, -0.428480,
		0.825833, 0.130900, -0.548512,
		-0.384985, -0.579868, -0.718011,
		26.707857, 41.893494, 24.155722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.114918, 32.667191, 35.873207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987114, 32.307735, 35.752964>,  <31.910431, 32.092064, 35.680817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987114, 32.307735, 35.752964>,  <32.114918, 32.667191, 35.873207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987114, 32.307735, 35.752964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503364, 0.429735, -0.749635,
		0.802832, -0.088200, -0.589646,
		-0.319509, -0.898637, -0.300609,
		31.891262, 32.038143, 35.662781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230782, 32.648335, 35.221600>,  <32.114918, 32.667191, 35.873207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230782, 32.648335, 35.221600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923231, 32.407761, 35.308414>,  <31.738701, 32.263416, 35.360504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923231, 32.407761, 35.308414>,  <32.230782, 32.648335, 35.221600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923231, 32.407761, 35.308414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498957, 0.352115, -0.791869,
		0.399842, -0.717136, -0.570825,
		-0.768874, -0.601440, 0.217030,
		31.692568, 32.227329, 35.373524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964758, 32.408085, 34.565853>,  <32.230782, 32.648335, 35.221600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964758, 32.408085, 34.565853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683632, 32.375858, 34.848572>,  <31.514956, 32.356522, 35.018204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683632, 32.375858, 34.848572>,  <31.964758, 32.408085, 34.565853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683632, 32.375858, 34.848572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661037, 0.441058, -0.607041,
		-0.262828, -0.893855, -0.363242,
		-0.702817, -0.080569, 0.706793,
		31.472786, 32.351688, 35.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554617, 31.961123, 34.271740>,  <31.964758, 32.408085, 34.565853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554617, 31.961123, 34.271740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369024, 32.198971, 34.534386>,  <31.257669, 32.341679, 34.691975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369024, 32.198971, 34.534386>,  <31.554617, 31.961123, 34.271740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369024, 32.198971, 34.534386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639774, 0.287751, -0.712663,
		-0.612707, -0.750749, 0.246912,
		-0.463982, 0.594622, 0.656617,
		31.229830, 32.377357, 34.731369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911032, 32.200352, 33.896816>,  <31.554617, 31.961123, 34.271740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911032, 32.200352, 33.896816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928930, 32.444965, 34.212795>,  <30.939669, 32.591732, 34.402382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928930, 32.444965, 34.212795>,  <30.911032, 32.200352, 33.896816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928930, 32.444965, 34.212795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529633, 0.684989, -0.500279,
		-0.847046, -0.395998, 0.354540,
		0.044746, 0.611535, 0.789951,
		30.942354, 32.628426, 34.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209082, 32.394463, 34.087833>,  <30.911032, 32.200352, 33.896816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209082, 32.394463, 34.087833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.421621, 32.674759, 34.278259>,  <30.549145, 32.842937, 34.392513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.421621, 32.674759, 34.278259>,  <30.209082, 32.394463, 34.087833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421621, 32.674759, 34.278259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535450, 0.713271, -0.452258,
		-0.656476, -0.014602, 0.754205,
		0.531349, 0.700736, 0.476064,
		30.581026, 32.884979, 34.421078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764542, 32.872944, 34.429058>,  <30.209082, 32.394463, 34.087833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764542, 32.872944, 34.429058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104496, 33.073925, 34.365520>,  <30.308470, 33.194515, 34.327400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104496, 33.073925, 34.365520>,  <29.764542, 32.872944, 34.429058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104496, 33.073925, 34.365520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524068, 0.837465, -0.154936,
		0.055174, 0.214921, 0.975072,
		0.849887, 0.502455, -0.158840,
		30.359463, 33.224663, 34.317867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692131, 33.691814, 34.650940>,  <29.764542, 32.872944, 34.429058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692131, 33.691814, 34.650940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.033272, 33.726994, 34.445061>,  <30.237955, 33.748100, 34.321533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.033272, 33.726994, 34.445061>,  <29.692131, 33.691814, 34.650940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033272, 33.726994, 34.445061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316755, 0.870770, -0.376067,
		0.415104, 0.483761, 0.770496,
		0.852851, 0.087952, -0.514694,
		30.289127, 33.753380, 34.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962337, 34.382942, 34.704529>,  <29.692131, 33.691814, 34.650940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962337, 34.382942, 34.704529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128889, 34.272278, 34.358097>,  <30.228821, 34.205879, 34.150238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128889, 34.272278, 34.358097>,  <29.962337, 34.382942, 34.704529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128889, 34.272278, 34.358097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228868, 0.890011, -0.394335,
		0.879913, 0.362410, 0.307264,
		0.416380, -0.276657, -0.866077,
		30.253803, 34.189281, 34.098274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139702, 35.037891, 34.420326>,  <29.962337, 34.382942, 34.704529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139702, 35.037891, 34.420326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.147892, 34.791767, 34.105118>,  <30.152805, 34.644093, 33.915993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.147892, 34.791767, 34.105118>,  <30.139702, 35.037891, 34.420326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147892, 34.791767, 34.105118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218509, 0.766376, -0.604088,
		0.975620, 0.184558, -0.118759,
		0.020475, -0.615310, -0.788019,
		30.154034, 34.607174, 33.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497492, 35.475056, 33.923447>,  <30.139702, 35.037891, 34.420326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497492, 35.475056, 33.923447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316658, 35.173801, 33.732281>,  <30.208158, 34.993050, 33.617580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316658, 35.173801, 33.732281>,  <30.497492, 35.475056, 33.923447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316658, 35.173801, 33.732281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137752, 0.588316, -0.796812,
		0.881275, -0.294392, -0.369713,
		-0.452083, -0.753139, -0.477915,
		30.181034, 34.947861, 33.588905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880888, 35.419468, 33.356281>,  <30.497492, 35.475056, 33.923447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880888, 35.419468, 33.356281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.520445, 35.260674, 33.286533>,  <30.304178, 35.165398, 33.244686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.520445, 35.260674, 33.286533>,  <30.880888, 35.419468, 33.356281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520445, 35.260674, 33.286533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170115, 0.693593, -0.699993,
		0.398830, -0.601107, -0.692536,
		-0.901108, -0.396988, -0.174368,
		30.250113, 35.141579, 33.234222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506693, 35.181332, 32.932152>,  <30.880888, 35.419468, 33.356281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506693, 35.181332, 32.932152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856939, 35.311977, 32.789814>,  <32.067085, 35.390366, 32.704411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856939, 35.311977, 32.789814>,  <31.506693, 35.181332, 32.932152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856939, 35.311977, 32.789814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438826, -0.845760, 0.303516,
		-0.201822, -0.421915, -0.883887,
		0.875614, 0.326616, -0.355840,
		32.119625, 35.409962, 32.683064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825972, 34.686768, 32.611736>,  <31.506693, 35.181332, 32.932152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825972, 34.686768, 32.611736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156239, 34.898426, 32.689991>,  <32.354401, 35.025421, 32.736946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156239, 34.898426, 32.689991>,  <31.825972, 34.686768, 32.611736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156239, 34.898426, 32.689991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477584, -0.840192, 0.256887,
		0.300306, -0.118669, -0.946432,
		0.825670, 0.529145, 0.195641,
		32.403938, 35.057171, 32.748684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244560, 34.245522, 32.427765>,  <31.825972, 34.686768, 32.611736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244560, 34.245522, 32.427765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464546, 34.496155, 32.648647>,  <32.596539, 34.646534, 32.781178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464546, 34.496155, 32.648647>,  <32.244560, 34.245522, 32.427765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464546, 34.496155, 32.648647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587837, -0.760076, 0.277005,
		0.593282, 0.172261, -0.786347,
		0.549966, 0.626586, 0.552201,
		32.629536, 34.684132, 32.814308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887634, 34.148289, 32.200058>,  <32.244560, 34.245522, 32.427765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887634, 34.148289, 32.200058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902515, 34.300816, 32.569534>,  <32.911446, 34.392330, 32.791222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902515, 34.300816, 32.569534>,  <32.887634, 34.148289, 32.200058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902515, 34.300816, 32.569534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568744, -0.768107, 0.294180,
		0.821672, 0.514402, -0.245448,
		0.037203, 0.381317, 0.923695,
		32.913677, 34.415211, 32.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676880, 34.162857, 32.466911>,  <32.887634, 34.148289, 32.200058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676880, 34.162857, 32.466911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433071, 34.156609, 32.783958>,  <33.286785, 34.152859, 32.974186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433071, 34.156609, 32.783958>,  <33.676880, 34.162857, 32.466911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433071, 34.156609, 32.783958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527065, -0.754828, 0.390432,
		0.592188, 0.655737, 0.468319,
		-0.609521, -0.015625, 0.792616,
		33.250214, 34.151920, 33.021744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084938, 33.960926, 32.896725>,  <33.676880, 34.162857, 32.466911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084938, 33.960926, 32.896725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760529, 33.931137, 33.128826>,  <33.565884, 33.913265, 33.268085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760529, 33.931137, 33.128826>,  <34.084938, 33.960926, 32.896725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760529, 33.931137, 33.128826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467531, -0.678710, 0.566364,
		0.351647, 0.730621, 0.585267,
		-0.811024, -0.074470, 0.580254,
		33.517220, 33.908794, 33.302902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293285, 33.920322, 33.636066>,  <34.084938, 33.960926, 32.896725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293285, 33.920322, 33.636066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925045, 33.764309, 33.643776>,  <33.704102, 33.670700, 33.648399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925045, 33.764309, 33.643776>,  <34.293285, 33.920322, 33.636066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925045, 33.764309, 33.643776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364604, -0.840804, 0.400140,
		-0.139866, 0.375395, 0.916251,
		-0.920598, -0.390035, 0.019271,
		33.648865, 33.647297, 33.649559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059967, 33.738922, 34.339516>,  <34.293285, 33.920322, 33.636066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059967, 33.738922, 34.339516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862232, 33.500290, 34.086620>,  <33.743591, 33.357113, 33.934883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862232, 33.500290, 34.086620>,  <34.059967, 33.738922, 34.339516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862232, 33.500290, 34.086620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422970, -0.800493, 0.424625,
		-0.759423, -0.057508, 0.648050,
		-0.494341, -0.596576, -0.632237,
		33.713928, 33.321316, 33.896950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581417, 33.243004, 34.747375>,  <34.059967, 33.738922, 34.339516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581417, 33.243004, 34.747375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661835, 33.056046, 34.403023>,  <33.710083, 32.943871, 34.196411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661835, 33.056046, 34.403023>,  <33.581417, 33.243004, 34.747375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661835, 33.056046, 34.403023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284659, -0.813029, 0.507890,
		-0.937311, -0.347165, -0.030403,
		0.201040, -0.467396, -0.860885,
		33.722145, 32.915825, 34.144756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284019, 32.547146, 34.832333>,  <33.581417, 33.243004, 34.747375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284019, 32.547146, 34.832333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562016, 32.552723, 34.544781>,  <33.728813, 32.556068, 34.372250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562016, 32.552723, 34.544781>,  <33.284019, 32.547146, 34.832333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562016, 32.552723, 34.544781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444306, -0.794407, 0.414137,
		-0.565312, -0.607226, -0.558300,
		0.694992, 0.013939, -0.718882,
		33.770512, 32.556904, 34.329117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520645, 31.875586, 34.836674>,  <33.284019, 32.547146, 34.832333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520645, 31.875586, 34.836674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804832, 32.046562, 34.613056>,  <33.975346, 32.149147, 34.478886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804832, 32.046562, 34.613056>,  <33.520645, 31.875586, 34.836674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804832, 32.046562, 34.613056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658562, -0.683853, 0.314072,
		-0.248053, -0.591301, -0.767354,
		0.710469, 0.427444, -0.559040,
		34.017975, 32.174797, 34.445343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840084, 31.315489, 34.708149>,  <33.520645, 31.875586, 34.836674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840084, 31.315489, 34.708149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105461, 31.594322, 34.599403>,  <34.264687, 31.761623, 34.534157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105461, 31.594322, 34.599403>,  <33.840084, 31.315489, 34.708149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105461, 31.594322, 34.599403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748110, -0.624330, 0.224816,
		-0.013019, -0.352539, -0.935706,
		0.663446, 0.697085, -0.271867,
		34.304497, 31.803448, 34.517845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440586, 30.897480, 34.429432>,  <33.840084, 31.315489, 34.708149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440586, 30.897480, 34.429432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623325, 31.253170, 34.439030>,  <34.732967, 31.466583, 34.444790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623325, 31.253170, 34.439030>,  <34.440586, 30.897480, 34.429432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623325, 31.253170, 34.439030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836602, -0.438665, 0.328130,
		0.302308, -0.129828, -0.944328,
		0.456844, 0.889223, 0.023997,
		34.760380, 31.519938, 34.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001537, 30.940140, 33.924957>,  <34.440586, 30.897480, 34.429432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001537, 30.940140, 33.924957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088005, 31.160894, 34.247124>,  <35.139885, 31.293348, 34.440422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088005, 31.160894, 34.247124>,  <35.001537, 30.940140, 33.924957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088005, 31.160894, 34.247124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781595, -0.592191, 0.196007,
		0.585133, 0.587136, -0.559367,
		0.216170, 0.551888, 0.805413,
		35.152855, 31.326462, 34.488747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907394, 30.203024, 34.182854>,  <35.001537, 30.940140, 33.924957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907394, 30.203024, 34.182854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040039, 30.018940, 34.512276>,  <35.119625, 29.908489, 34.709930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040039, 30.018940, 34.512276>,  <34.907394, 30.203024, 34.182854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040039, 30.018940, 34.512276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841026, -0.539726, 0.037038,
		0.427449, -0.704913, -0.566026,
		0.331608, -0.460210, 0.823556,
		35.139523, 29.880877, 34.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181568, 29.521275, 34.108215>,  <34.907394, 30.203024, 34.182854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181568, 29.521275, 34.108215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841686, 29.400307, 33.935452>,  <34.637756, 29.327726, 33.831795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841686, 29.400307, 33.935452>,  <35.181568, 29.521275, 34.108215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841686, 29.400307, 33.935452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253895, 0.483245, -0.837861,
		0.462101, -0.821594, -0.333834,
		-0.849705, -0.302418, -0.431907,
		34.586773, 29.309582, 33.805878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356915, 29.359615, 33.447811>,  <35.181568, 29.521275, 34.108215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356915, 29.359615, 33.447811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965420, 29.441420, 33.454151>,  <34.730522, 29.490501, 33.457954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965420, 29.441420, 33.454151>,  <35.356915, 29.359615, 33.447811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965420, 29.441420, 33.454151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095801, 0.524067, -0.846272,
		-0.181378, -0.826758, -0.532516,
		-0.978736, 0.204511, 0.015850,
		34.671799, 29.502773, 33.458904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037937, 29.063860, 32.789085>,  <35.356915, 29.359615, 33.447811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037937, 29.063860, 32.789085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817192, 29.368811, 32.924274>,  <34.684746, 29.551781, 33.005390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817192, 29.368811, 32.924274>,  <35.037937, 29.063860, 32.789085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817192, 29.368811, 32.924274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013693, 0.396941, -0.917742,
		-0.833824, -0.511094, -0.208617,
		-0.551861, 0.762379, 0.337977,
		34.651634, 29.597525, 33.025669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621704, 29.168966, 32.275669>,  <35.037937, 29.063860, 32.789085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621704, 29.168966, 32.275669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615818, 29.510366, 32.484020>,  <34.612286, 29.715206, 32.609032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615818, 29.510366, 32.484020>,  <34.621704, 29.168966, 32.275669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615818, 29.510366, 32.484020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032429, 0.520256, -0.853394,
		-0.999366, -0.029453, 0.020020,
		-0.014719, 0.853502, 0.520881,
		34.611401, 29.766417, 32.640285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261040, 29.659468, 31.884613>,  <34.621704, 29.168966, 32.275669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261040, 29.659468, 31.884613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446743, 29.907051, 32.138023>,  <34.558167, 30.055601, 32.290070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446743, 29.907051, 32.138023>,  <34.261040, 29.659468, 31.884613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446743, 29.907051, 32.138023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052857, 0.694646, -0.717407,
		-0.884120, 0.366550, 0.289780,
		0.464260, 0.618958, 0.633525,
		34.586021, 30.092739, 32.328079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832302, 30.203758, 32.020618>,  <34.261040, 29.659468, 31.884613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832302, 30.203758, 32.020618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209946, 30.317295, 32.087654>,  <34.436531, 30.385418, 32.127876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209946, 30.317295, 32.087654>,  <33.832302, 30.203758, 32.020618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209946, 30.317295, 32.087654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173086, 0.859583, -0.480790,
		-0.280527, 0.424912, 0.860671,
		0.944111, 0.283844, 0.167590,
		34.493179, 30.402449, 32.137932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714016, 30.893564, 32.326405>,  <33.832302, 30.203758, 32.020618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714016, 30.893564, 32.326405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077442, 30.869925, 32.160988>,  <34.295498, 30.855740, 32.061737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077442, 30.869925, 32.160988>,  <33.714016, 30.893564, 32.326405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077442, 30.869925, 32.160988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222381, 0.769593, -0.598560,
		0.353636, 0.635794, 0.686081,
		0.908564, -0.059101, -0.413544,
		34.350010, 30.852194, 32.036926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866734, 31.564058, 32.180443>,  <33.714016, 30.893564, 32.326405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866734, 31.564058, 32.180443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131290, 31.379255, 31.944099>,  <34.290024, 31.268373, 31.802294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131290, 31.379255, 31.944099>,  <33.866734, 31.564058, 32.180443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131290, 31.379255, 31.944099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286905, 0.572014, -0.768430,
		0.692997, 0.677754, 0.245775,
		0.661393, -0.462006, -0.590855,
		34.329708, 31.240654, 31.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116478, 32.139774, 31.824251>,  <33.866734, 31.564058, 32.180443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116478, 32.139774, 31.824251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192020, 31.812094, 31.607641>,  <34.237347, 31.615486, 31.477674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192020, 31.812094, 31.607641>,  <34.116478, 32.139774, 31.824251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192020, 31.812094, 31.607641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416310, 0.432650, -0.799687,
		0.889392, 0.376470, -0.259330,
		0.188859, -0.819197, -0.541524,
		34.248676, 31.566334, 31.445185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372795, 32.378338, 31.216856>,  <34.116478, 32.139774, 31.824251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372795, 32.378338, 31.216856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260838, 32.012917, 31.098822>,  <34.193665, 31.793663, 31.028002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260838, 32.012917, 31.098822>,  <34.372795, 32.378338, 31.216856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260838, 32.012917, 31.098822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421922, 0.393150, -0.816955,
		0.862346, -0.104159, -0.495490,
		-0.279895, -0.913556, -0.295084,
		34.176868, 31.738850, 31.010296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525845, 32.366535, 30.564222>,  <34.372795, 32.378338, 31.216856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525845, 32.366535, 30.564222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329140, 32.018757, 30.545319>,  <34.211117, 31.810089, 30.533976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329140, 32.018757, 30.545319>,  <34.525845, 32.366535, 30.564222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329140, 32.018757, 30.545319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438443, 0.294144, -0.849263,
		0.752291, -0.396911, -0.525851,
		-0.491757, -0.869449, -0.047259,
		34.181614, 31.757923, 30.531141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640827, 32.161758, 29.881083>,  <34.525845, 32.366535, 30.564222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640827, 32.161758, 29.881083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292747, 32.021309, 30.019335>,  <34.083900, 31.937040, 30.102285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292747, 32.021309, 30.019335>,  <34.640827, 32.161758, 29.881083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292747, 32.021309, 30.019335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424502, 0.178237, -0.887711,
		0.250090, -0.919209, -0.304154,
		-0.870203, -0.351122, 0.345630,
		34.031685, 31.915972, 30.123024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497784, 31.730518, 29.338335>,  <34.640827, 32.161758, 29.881083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497784, 31.730518, 29.338335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163460, 31.788500, 29.550148>,  <33.962864, 31.823290, 29.677237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163460, 31.788500, 29.550148>,  <34.497784, 31.730518, 29.338335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163460, 31.788500, 29.550148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499224, 0.200694, -0.842910,
		-0.228460, -0.968870, -0.095376,
		-0.835812, 0.144957, 0.529534,
		33.912716, 31.831987, 29.709007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989845, 31.336779, 29.110815>,  <34.497784, 31.730518, 29.338335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989845, 31.336779, 29.110815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775642, 31.613888, 29.304020>,  <33.647121, 31.780153, 29.419943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775642, 31.613888, 29.304020>,  <33.989845, 31.336779, 29.110815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775642, 31.613888, 29.304020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410824, 0.286011, -0.865691,
		-0.737873, -0.662016, 0.131446,
		-0.535506, 0.692771, 0.483012,
		33.614990, 31.821718, 29.448923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280491, 31.257769, 28.874220>,  <33.989845, 31.336779, 29.110815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280491, 31.257769, 28.874220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291271, 31.621922, 29.039375>,  <33.297737, 31.840414, 29.138468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291271, 31.621922, 29.039375>,  <33.280491, 31.257769, 28.874220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291271, 31.621922, 29.039375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450755, 0.379731, -0.807852,
		-0.892241, -0.164341, 0.420592,
		0.026948, 0.910383, 0.412889,
		33.299355, 31.895037, 29.163242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571743, 31.469557, 28.895401>,  <33.280491, 31.257769, 28.874220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571743, 31.469557, 28.895401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788734, 31.804783, 28.918596>,  <32.918930, 32.005917, 28.932514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788734, 31.804783, 28.918596>,  <32.571743, 31.469557, 28.895401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788734, 31.804783, 28.918596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602679, 0.436346, -0.668117,
		-0.585227, 0.327493, 0.741793,
		0.542482, 0.838063, 0.057988,
		32.951481, 32.056202, 28.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089603, 31.959694, 28.843971>,  <32.571743, 31.469557, 28.895401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089603, 31.959694, 28.843971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435951, 32.121666, 28.726463>,  <32.643761, 32.218849, 28.655958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435951, 32.121666, 28.726463>,  <32.089603, 31.959694, 28.843971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435951, 32.121666, 28.726463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482701, 0.521975, -0.703237,
		-0.131422, 0.750715, 0.647423,
		0.865868, 0.404932, -0.293772,
		32.695713, 32.243145, 28.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972672, 32.771095, 28.743061>,  <32.089603, 31.959694, 28.843971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972672, 32.771095, 28.743061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316425, 32.709152, 28.548136>,  <32.522678, 32.671986, 28.431181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316425, 32.709152, 28.548136>,  <31.972672, 32.771095, 28.743061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316425, 32.709152, 28.548136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362461, 0.487722, -0.794197,
		0.360662, 0.859154, 0.363012,
		0.859386, -0.154859, -0.487313,
		32.574242, 32.662693, 28.401941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035664, 33.351826, 28.477394>,  <31.972672, 32.771095, 28.743061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035664, 33.351826, 28.477394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274906, 33.112885, 28.263685>,  <32.418449, 32.969521, 28.135460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274906, 33.112885, 28.263685>,  <32.035664, 33.351826, 28.477394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274906, 33.112885, 28.263685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300415, 0.450933, -0.840482,
		0.742982, 0.663199, 0.090252,
		0.598104, -0.597350, -0.534270,
		32.454338, 32.933681, 28.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389374, 33.794964, 27.924639>,  <32.035664, 33.351826, 28.477394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389374, 33.794964, 27.924639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422085, 33.418041, 27.794796>,  <32.441711, 33.191887, 27.716890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422085, 33.418041, 27.794796>,  <32.389374, 33.794964, 27.924639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422085, 33.418041, 27.794796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193076, 0.304550, -0.932722,
		0.977770, 0.138947, -0.157032,
		0.081775, -0.942307, -0.324608,
		32.446617, 33.135349, 27.697414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963249, 33.723228, 27.363829>,  <32.389374, 33.794964, 27.924639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963249, 33.723228, 27.363829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700447, 33.425213, 27.317751>,  <32.542767, 33.246403, 27.290104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700447, 33.425213, 27.317751>,  <32.963249, 33.723228, 27.363829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700447, 33.425213, 27.317751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018467, 0.136848, -0.990420,
		0.753664, -0.652834, -0.076151,
		-0.657001, -0.745037, -0.115194,
		32.503345, 33.201702, 27.283194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219440, 33.434212, 26.709637>,  <32.963249, 33.723228, 27.363829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219440, 33.434212, 26.709637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857288, 33.266628, 26.737230>,  <32.639996, 33.166080, 26.753786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857288, 33.266628, 26.737230>,  <33.219440, 33.434212, 26.709637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857288, 33.266628, 26.737230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210164, 0.301009, -0.930174,
		0.368941, -0.856660, -0.360578,
		-0.905380, -0.418960, 0.068985,
		32.585674, 33.140942, 26.757927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086136, 33.079952, 26.070936>,  <33.219440, 33.434212, 26.709637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086136, 33.079952, 26.070936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720585, 33.132706, 26.224527>,  <32.501255, 33.164356, 26.316683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720585, 33.132706, 26.224527>,  <33.086136, 33.079952, 26.070936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720585, 33.132706, 26.224527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311409, 0.379115, -0.871376,
		-0.260492, -0.915903, -0.305393,
		-0.913875, 0.131884, 0.383977,
		32.446423, 33.172272, 26.339720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671036, 32.616261, 25.760189>,  <33.086136, 33.079952, 26.070936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671036, 32.616261, 25.760189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483139, 32.950348, 25.874556>,  <32.370399, 33.150803, 25.943174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483139, 32.950348, 25.874556>,  <32.671036, 32.616261, 25.760189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483139, 32.950348, 25.874556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321582, 0.139727, -0.936516,
		-0.822148, -0.531865, 0.202958,
		-0.469741, 0.835222, 0.285914,
		32.342216, 33.200916, 25.960329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129871, 32.662552, 25.308945>,  <32.671036, 32.616261, 25.760189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129871, 32.662552, 25.308945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117542, 33.029514, 25.467649>,  <32.110146, 33.249691, 25.562872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117542, 33.029514, 25.467649>,  <32.129871, 32.662552, 25.308945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117542, 33.029514, 25.467649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345402, 0.362722, -0.865523,
		-0.937949, -0.163720, 0.305693,
		-0.030822, 0.917403, 0.396763,
		32.108295, 33.304737, 25.586678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652744, 32.961464, 24.912443>,  <32.129871, 32.662552, 25.308945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652744, 32.961464, 24.912443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811672, 33.289661, 25.076847>,  <31.907028, 33.486580, 25.175489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811672, 33.289661, 25.076847>,  <31.652744, 32.961464, 24.912443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811672, 33.289661, 25.076847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329507, 0.545565, -0.770574,
		-0.856482, 0.170735, 0.487122,
		0.397321, 0.820493, 0.411008,
		31.930868, 33.535809, 25.200150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160948, 33.443676, 24.927063>,  <31.652744, 32.961464, 24.912443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160948, 33.443676, 24.927063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491209, 33.667122, 24.958683>,  <31.689365, 33.801189, 24.977655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491209, 33.667122, 24.958683>,  <31.160948, 33.443676, 24.927063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491209, 33.667122, 24.958683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306588, 0.561871, -0.768312,
		-0.473606, 0.610123, 0.635175,
		0.825652, 0.558615, 0.079049,
		31.738905, 33.834705, 24.982397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682642, 33.466858, 25.410130>,  <31.160948, 33.443676, 24.927063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682642, 33.466858, 25.410130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354992, 33.248108, 25.340891>,  <30.158401, 33.116859, 25.299347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354992, 33.248108, 25.340891>,  <30.682642, 33.466858, 25.410130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354992, 33.248108, 25.340891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325826, -0.691947, 0.644241,
		-0.472093, 0.471314, 0.744977,
		-0.819125, -0.546875, -0.173097,
		30.109255, 33.084045, 25.288961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402369, 33.279762, 26.089251>,  <30.682642, 33.466858, 25.410130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402369, 33.279762, 26.089251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258825, 33.000679, 25.841244>,  <30.172699, 32.833229, 25.692440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258825, 33.000679, 25.841244>,  <30.402369, 33.279762, 26.089251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258825, 33.000679, 25.841244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034001, -0.654052, 0.755685,
		-0.932773, 0.292264, 0.210988,
		-0.358857, -0.697709, -0.620019,
		30.151169, 32.791367, 25.655237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812008, 32.948349, 26.423010>,  <30.402369, 33.279762, 26.089251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812008, 32.948349, 26.423010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968950, 32.700798, 26.150822>,  <30.063116, 32.552265, 25.987509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968950, 32.700798, 26.150822>,  <29.812008, 32.948349, 26.423010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968950, 32.700798, 26.150822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007219, -0.741844, 0.670534,
		-0.919785, -0.258177, -0.295535,
		0.392358, -0.618880, -0.680473,
		30.086658, 32.515133, 25.946680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392670, 32.423161, 26.419024>,  <29.812008, 32.948349, 26.423010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392670, 32.423161, 26.419024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725016, 32.263847, 26.263573>,  <29.924423, 32.168259, 26.170301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725016, 32.263847, 26.263573>,  <29.392670, 32.423161, 26.419024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725016, 32.263847, 26.263573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073755, -0.771035, 0.632507,
		-0.551561, -0.496866, -0.670003,
		0.830867, -0.398283, -0.388627,
		29.974276, 32.144363, 26.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189766, 31.711487, 26.494709>,  <29.392670, 32.423161, 26.419024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189766, 31.711487, 26.494709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.580433, 31.735603, 26.412262>,  <29.814833, 31.750072, 26.362793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.580433, 31.735603, 26.412262>,  <29.189766, 31.711487, 26.494709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580433, 31.735603, 26.412262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206379, -0.528914, 0.823199,
		-0.059389, -0.846531, -0.529016,
		0.976668, 0.060289, -0.206118,
		29.873434, 31.753691, 26.350426>
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
