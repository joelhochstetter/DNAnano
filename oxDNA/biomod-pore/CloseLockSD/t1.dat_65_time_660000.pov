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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.973597, 15.148218, 14.906184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266996, 14.921533, 15.056286>,  <4.443036, 14.785522, 15.146347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266996, 14.921533, 15.056286>,  <3.973597, 15.148218, 14.906184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.266996, 14.921533, 15.056286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438231, 0.816331, 0.376240,
		-0.519553, -0.111523, 0.847129,
		0.733498, -0.566715, 0.375254,
		4.487046, 14.751518, 15.168862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993154, 15.000095, 15.655830>,  <3.973597, 15.148218, 14.906184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993154, 15.000095, 15.655830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361186, 15.003470, 15.499174>,  <4.582005, 15.005495, 15.405180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361186, 15.003470, 15.499174>,  <3.993154, 15.000095, 15.655830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361186, 15.003470, 15.499174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183258, 0.874349, 0.449365,
		0.346222, -0.485223, 0.802925,
		0.920079, 0.008438, -0.391641,
		4.637210, 15.006001, 15.381682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.463437, 15.129707, 16.238186>,  <3.993154, 15.000095, 15.655830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.463437, 15.129707, 16.238186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624777, 15.268634, 15.899558>,  <4.721581, 15.351990, 15.696382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624777, 15.268634, 15.899558>,  <4.463437, 15.129707, 16.238186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624777, 15.268634, 15.899558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219649, 0.861368, 0.458039,
		0.888293, -0.370698, 0.271144,
		0.403348, 0.347316, -0.846570,
		4.745781, 15.372828, 15.645587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.671528, 16.002802, 16.157600>,  <4.463437, 15.129707, 16.238186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.671528, 16.002802, 16.157600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.847521, 15.989810, 15.798633>,  <4.953116, 15.982015, 15.583252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.847521, 15.989810, 15.798633>,  <4.671528, 16.002802, 16.157600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.847521, 15.989810, 15.798633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628929, 0.724467, 0.282126,
		0.640987, -0.688543, 0.339180,
		0.439981, -0.032481, -0.897419,
		4.979515, 15.980065, 15.529407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.389502, 15.934169, 16.236662>,  <4.671528, 16.002802, 16.157600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.389502, 15.934169, 16.236662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.316171, 16.138111, 15.900463>,  <5.272173, 16.260477, 15.698744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.316171, 16.138111, 15.900463>,  <5.389502, 15.934169, 16.236662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.316171, 16.138111, 15.900463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646393, 0.706687, 0.287696,
		0.740654, -0.490551, -0.459121,
		-0.183326, 0.509856, -0.840499,
		5.261173, 16.291067, 15.648314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.081509, 15.989635, 15.956620>,  <5.389502, 15.934169, 16.236662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.081509, 15.989635, 15.956620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.853081, 16.267803, 15.782142>,  <5.716024, 16.434704, 15.677454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.853081, 16.267803, 15.782142>,  <6.081509, 15.989635, 15.956620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.853081, 16.267803, 15.782142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714345, 0.682788, 0.153335,
		0.404462, -0.224031, -0.886691,
		-0.571070, 0.695422, -0.436197,
		5.681760, 16.476429, 15.651282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.352325, 16.228855, 15.327755>,  <6.081509, 15.989635, 15.956620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.352325, 16.228855, 15.327755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.112946, 16.529028, 15.439978>,  <5.969318, 16.709131, 15.507312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.112946, 16.529028, 15.439978>,  <6.352325, 16.228855, 15.327755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.112946, 16.529028, 15.439978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784372, 0.620124, 0.014423,
		-0.163157, 0.228693, -0.959729,
		-0.598449, 0.750431, 0.280558,
		5.933411, 16.754158, 15.524145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.715389, 16.787127, 15.043759>,  <6.352325, 16.228855, 15.327755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.715389, 16.787127, 15.043759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.435309, 16.935926, 15.287509>,  <6.267261, 17.025206, 15.433759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.435309, 16.935926, 15.287509>,  <6.715389, 16.787127, 15.043759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.435309, 16.935926, 15.287509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549046, 0.826157, 0.126544,
		-0.456365, 0.423181, -0.782719,
		-0.700200, 0.371999, 0.609375,
		6.225249, 17.047525, 15.470322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.695632, 17.521545, 14.888806>,  <6.715389, 16.787127, 15.043759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.695632, 17.521545, 14.888806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.531981, 17.474436, 15.250744>,  <6.433790, 17.446169, 15.467906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.531981, 17.474436, 15.250744>,  <6.695632, 17.521545, 14.888806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.531981, 17.474436, 15.250744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459170, 0.830361, 0.315696,
		-0.788528, 0.544637, -0.285646,
		-0.409129, -0.117776, 0.904844,
		6.409242, 17.439102, 15.522197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.560458, 18.185339, 15.069931>,  <6.695632, 17.521545, 14.888806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.560458, 18.185339, 15.069931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.548805, 17.982998, 15.414783>,  <6.541813, 17.861593, 15.621694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.548805, 17.982998, 15.414783>,  <6.560458, 18.185339, 15.069931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.548805, 17.982998, 15.414783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417698, 0.777420, 0.470262,
		-0.908119, 0.373810, 0.188645,
		-0.029132, -0.505851, 0.862129,
		6.540066, 17.831244, 15.673421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.303898, 18.730888, 15.604844>,  <6.560458, 18.185339, 15.069931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.303898, 18.730888, 15.604844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488795, 18.428524, 15.790287>,  <6.599733, 18.247105, 15.901553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488795, 18.428524, 15.790287>,  <6.303898, 18.730888, 15.604844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488795, 18.428524, 15.790287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456858, 0.651096, 0.606098,
		-0.760009, -0.068361, 0.646308,
		0.462241, -0.755911, 0.463607,
		6.627467, 18.201750, 15.929369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.226290, 18.869169, 16.307301>,  <6.303898, 18.730888, 15.604844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.226290, 18.869169, 16.307301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.541742, 18.626829, 16.265339>,  <6.731014, 18.481424, 16.240162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.541742, 18.626829, 16.265339>,  <6.226290, 18.869169, 16.307301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.541742, 18.626829, 16.265339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574022, 0.664305, 0.478746,
		-0.220360, -0.437772, 0.871663,
		0.788632, -0.605851, -0.104905,
		6.778332, 18.445074, 16.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.480174, 18.808098, 16.947990>,  <6.226290, 18.869169, 16.307301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.480174, 18.808098, 16.947990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.776908, 18.721621, 16.694080>,  <6.954949, 18.669735, 16.541735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.776908, 18.721621, 16.694080>,  <6.480174, 18.808098, 16.947990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.776908, 18.721621, 16.694080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627973, 0.556010, 0.544520,
		0.235221, -0.802567, 0.548231,
		0.741836, -0.216192, -0.634775,
		6.999459, 18.656763, 16.503647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.097605, 18.998878, 17.316704>,  <6.480174, 18.808098, 16.947990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.097605, 18.998878, 17.316704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279326, 18.957975, 16.962721>,  <7.388359, 18.933434, 16.750330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279326, 18.957975, 16.962721>,  <7.097605, 18.998878, 17.316704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.279326, 18.957975, 16.962721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697550, 0.658720, 0.281980,
		0.554105, -0.745407, 0.370588,
		0.454303, -0.102257, -0.884959,
		7.415617, 18.927298, 16.697233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.848962, 18.992304, 17.347713>,  <7.097605, 18.998878, 17.316704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.848962, 18.992304, 17.347713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793978, 19.103516, 16.967440>,  <7.760987, 19.170242, 16.739275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793978, 19.103516, 16.967440>,  <7.848962, 18.992304, 17.347713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793978, 19.103516, 16.967440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590262, 0.793754, 0.146787,
		0.795422, -0.540977, -0.273219,
		-0.137460, 0.278028, -0.950687,
		7.752740, 19.186924, 16.682234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.583177, 19.112061, 17.031902>,  <7.848962, 18.992304, 17.347713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.583177, 19.112061, 17.031902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.307944, 19.303484, 16.813719>,  <8.142805, 19.418339, 16.682808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.307944, 19.303484, 16.813719>,  <8.583177, 19.112061, 17.031902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.307944, 19.303484, 16.813719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632412, 0.764084, -0.127397,
		0.355809, -0.432615, -0.828398,
		-0.688080, 0.478560, -0.545459,
		8.101521, 19.447052, 16.650082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.922750, 19.386993, 16.419306>,  <8.583177, 19.112061, 17.031902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.922750, 19.386993, 16.419306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596520, 19.613720, 16.372728>,  <8.400783, 19.749756, 16.344782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596520, 19.613720, 16.372728>,  <8.922750, 19.386993, 16.419306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.596520, 19.613720, 16.372728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554394, 0.707739, -0.437896,
		-0.165794, -0.421692, -0.891453,
		-0.815573, 0.566816, -0.116445,
		8.351849, 19.783764, 16.337795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957333, 19.767553, 15.732010>,  <8.922750, 19.386993, 16.419306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957333, 19.767553, 15.732010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713672, 19.973171, 15.973568>,  <8.567475, 20.096542, 16.118504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713672, 19.973171, 15.973568>,  <8.957333, 19.767553, 15.732010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.713672, 19.973171, 15.973568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408208, 0.856096, -0.316963,
		-0.679926, 0.053436, -0.731331,
		-0.609152, 0.514047, 0.603895,
		8.530926, 20.127386, 16.154736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.805773, 20.464211, 15.305493>,  <8.957333, 19.767553, 15.732010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.805773, 20.464211, 15.305493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.709587, 20.538099, 15.686661>,  <8.651875, 20.582434, 15.915361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.709587, 20.538099, 15.686661>,  <8.805773, 20.464211, 15.305493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.709587, 20.538099, 15.686661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326504, 0.939911, -0.099810,
		-0.914097, 0.287132, -0.286327,
		-0.240463, 0.184723, 0.952919,
		8.637448, 20.593515, 15.972536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.315287, 21.028097, 15.314191>,  <8.805773, 20.464211, 15.305493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.315287, 21.028097, 15.314191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.495192, 21.019295, 15.671342>,  <8.603135, 21.014013, 15.885633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.495192, 21.019295, 15.671342>,  <8.315287, 21.028097, 15.314191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.495192, 21.019295, 15.671342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377911, 0.910487, -0.167921,
		-0.809257, 0.412953, 0.417820,
		0.449763, -0.022007, 0.892877,
		8.630120, 21.012693, 15.939205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942733, 21.533695, 15.690692>,  <8.315287, 21.028097, 15.314191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942733, 21.533695, 15.690692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.303007, 21.489466, 15.858758>,  <8.519172, 21.462927, 15.959598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.303007, 21.489466, 15.858758>,  <7.942733, 21.533695, 15.690692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.303007, 21.489466, 15.858758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207991, 0.958793, -0.193532,
		-0.381453, 0.261702, 0.886570,
		0.900685, -0.110575, 0.420166,
		8.573213, 21.456293, 15.984808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.988868, 22.156637, 16.139793>,  <7.942733, 21.533695, 15.690692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.988868, 22.156637, 16.139793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.356997, 22.003395, 16.108191>,  <8.577873, 21.911449, 16.089228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.356997, 22.003395, 16.108191>,  <7.988868, 22.156637, 16.139793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.356997, 22.003395, 16.108191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383806, 0.923389, -0.006698,
		0.075521, -0.024159, 0.996851,
		0.920320, -0.383104, -0.079008,
		8.633093, 21.888464, 16.084488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.409874, 22.473606, 16.718939>,  <7.988868, 22.156637, 16.139793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.409874, 22.473606, 16.718939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.643948, 22.345346, 16.421015>,  <8.784391, 22.268391, 16.242260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.643948, 22.345346, 16.421015>,  <8.409874, 22.473606, 16.718939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.643948, 22.345346, 16.421015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483702, 0.875227, 0.003239,
		0.650839, -0.362162, 0.667268,
		0.585184, -0.320651, -0.744810,
		8.819503, 22.249151, 16.197571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.030829, 22.874386, 16.821827>,  <8.409874, 22.473606, 16.718939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.030829, 22.874386, 16.821827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091261, 22.730669, 16.453461>,  <9.127520, 22.644440, 16.232441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091261, 22.730669, 16.453461>,  <9.030829, 22.874386, 16.821827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.091261, 22.730669, 16.453461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669796, 0.722363, -0.171944,
		0.727013, -0.590849, 0.349785,
		0.151079, -0.359290, -0.920916,
		9.136584, 22.622883, 16.177185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.744398, 22.727585, 16.739714>,  <9.030829, 22.874386, 16.821827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.744398, 22.727585, 16.739714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599274, 22.802414, 16.374557>,  <9.512198, 22.847311, 16.155464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599274, 22.802414, 16.374557>,  <9.744398, 22.727585, 16.739714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.599274, 22.802414, 16.374557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633954, 0.767555, -0.094662,
		0.682986, -0.613076, -0.397075,
		-0.362812, 0.187074, -0.912891,
		9.490430, 22.858536, 16.100691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273932, 22.800329, 16.251055>,  <9.744398, 22.727585, 16.739714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273932, 22.800329, 16.251055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961782, 23.007982, 16.111620>,  <9.774490, 23.132574, 16.027958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961782, 23.007982, 16.111620>,  <10.273932, 22.800329, 16.251055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.961782, 23.007982, 16.111620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567793, 0.821815, -0.047229,
		0.261957, -0.234782, -0.936085,
		-0.780378, 0.519131, -0.348588,
		9.727668, 23.163721, 16.007044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591721, 23.150331, 15.744961>,  <10.273932, 22.800329, 16.251055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591721, 23.150331, 15.744961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267564, 23.351786, 15.864704>,  <10.073070, 23.472658, 15.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267564, 23.351786, 15.864704>,  <10.591721, 23.150331, 15.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267564, 23.351786, 15.864704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537887, 0.842097, 0.039375,
		-0.232258, 0.192930, -0.953328,
		-0.810391, 0.503638, 0.299359,
		10.024446, 23.502876, 15.954512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500371, 23.655279, 15.263468>,  <10.591721, 23.150331, 15.744961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500371, 23.655279, 15.263468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.388934, 23.781178, 15.626415>,  <10.322072, 23.856716, 15.844184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.388934, 23.781178, 15.626415>,  <10.500371, 23.655279, 15.263468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.388934, 23.781178, 15.626415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705370, 0.708242, -0.029102,
		-0.651797, 0.631924, -0.419325,
		-0.278593, 0.314748, 0.907370,
		10.305356, 23.875603, 15.898626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.194969, 23.409391, 15.252577>,  <10.500371, 23.655279, 15.263468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.194969, 23.409391, 15.252577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992614, 23.385849, 14.908341>,  <10.871201, 23.371723, 14.701800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992614, 23.385849, 14.908341>,  <11.194969, 23.409391, 15.252577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.992614, 23.385849, 14.908341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442423, 0.838748, -0.317434,
		0.740499, -0.541330, -0.398276,
		-0.505889, -0.058854, -0.860588,
		10.840847, 23.368193, 14.650165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687154, 23.647116, 14.623187>,  <11.194969, 23.409391, 15.252577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687154, 23.647116, 14.623187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.305593, 23.696512, 14.513776>,  <11.076655, 23.726151, 14.448129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.305593, 23.696512, 14.513776>,  <11.687154, 23.647116, 14.623187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.305593, 23.696512, 14.513776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236174, 0.871250, -0.430286,
		0.185175, -0.475052, -0.860254,
		-0.953904, 0.123491, -0.273528,
		11.019422, 23.733561, 14.431717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.642484, 23.880642, 13.876441>,  <11.687154, 23.647116, 14.623187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.642484, 23.880642, 13.876441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343501, 24.013241, 14.106717>,  <11.164111, 24.092800, 14.244883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343501, 24.013241, 14.106717>,  <11.642484, 23.880642, 13.876441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343501, 24.013241, 14.106717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197029, 0.938230, -0.284438,
		-0.634419, -0.099177, -0.766600,
		-0.747457, 0.331496, 0.575690,
		11.119264, 24.112690, 14.279424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.244562, 24.277710, 13.452171>,  <11.642484, 23.880642, 13.876441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.244562, 24.277710, 13.452171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238115, 24.394842, 13.834582>,  <11.234247, 24.465122, 14.064029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238115, 24.394842, 13.834582>,  <11.244562, 24.277710, 13.452171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238115, 24.394842, 13.834582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148337, 0.946272, -0.287342,
		-0.988806, 0.137183, -0.058688,
		-0.016117, 0.292831, 0.956028,
		11.233280, 24.482691, 14.121391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287257, 24.176365, 12.679785>,  <11.244562, 24.277710, 13.452171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287257, 24.176365, 12.679785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604714, 23.945539, 12.756856>,  <11.795189, 23.807043, 12.803099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604714, 23.945539, 12.756856>,  <11.287257, 24.176365, 12.679785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604714, 23.945539, 12.756856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571316, -0.815782, -0.089990,
		0.209114, -0.038660, -0.977127,
		0.793643, -0.577066, 0.192679,
		11.842808, 23.772419, 12.814660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706201, 23.676628, 12.092676>,  <11.287257, 24.176365, 12.679785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706201, 23.676628, 12.092676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678060, 23.531498, 12.464355>,  <11.661175, 23.444420, 12.687363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678060, 23.531498, 12.464355>,  <11.706201, 23.676628, 12.092676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.678060, 23.531498, 12.464355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564634, -0.753431, -0.336942,
		0.822338, -0.548362, -0.151856,
		-0.070353, -0.362823, 0.929198,
		11.656954, 23.422651, 12.743115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.671545, 22.919519, 12.050833>,  <11.706201, 23.676628, 12.092676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.671545, 22.919519, 12.050833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.491457, 22.993267, 12.400303>,  <11.383404, 23.037516, 12.609985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.491457, 22.993267, 12.400303>,  <11.671545, 22.919519, 12.050833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.491457, 22.993267, 12.400303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718226, -0.656114, -0.231658,
		0.530522, -0.731795, 0.427813,
		-0.450220, 0.184367, 0.873677,
		11.356391, 23.048576, 12.662406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565882, 22.267279, 12.458542>,  <11.671545, 22.919519, 12.050833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565882, 22.267279, 12.458542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311109, 22.560194, 12.554935>,  <11.158245, 22.735943, 12.612770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311109, 22.560194, 12.554935>,  <11.565882, 22.267279, 12.458542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311109, 22.560194, 12.554935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758034, -0.651815, -0.022827,
		0.140359, -0.197211, 0.970261,
		-0.636933, 0.732287, 0.240981,
		11.120028, 22.779881, 12.627229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.258047, 22.063904, 13.049521>,  <11.565882, 22.267279, 12.458542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.258047, 22.063904, 13.049521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996269, 22.333708, 12.912851>,  <10.839203, 22.495590, 12.830850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996269, 22.333708, 12.912851>,  <11.258047, 22.063904, 13.049521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996269, 22.333708, 12.912851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751315, -0.630925, 0.193544,
		-0.085024, 0.383369, 0.919674,
		-0.654444, 0.674509, -0.341674,
		10.799936, 22.536060, 12.810349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707182, 22.089739, 13.465031>,  <11.258047, 22.063904, 13.049521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707182, 22.089739, 13.465031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526651, 22.260670, 13.151676>,  <10.418333, 22.363228, 12.963663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526651, 22.260670, 13.151676>,  <10.707182, 22.089739, 13.465031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526651, 22.260670, 13.151676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616306, -0.784147, -0.072675,
		-0.645346, 0.450005, 0.617272,
		-0.451328, 0.427329, -0.783386,
		10.391253, 22.388868, 12.916660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054459, 22.115662, 13.677898>,  <10.707182, 22.089739, 13.465031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054459, 22.115662, 13.677898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069556, 22.129337, 13.278418>,  <10.078614, 22.137543, 13.038729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069556, 22.129337, 13.278418>,  <10.054459, 22.115662, 13.677898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.069556, 22.129337, 13.278418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762624, -0.644837, -0.050897,
		-0.645740, 0.763555, 0.001736,
		0.037743, 0.034190, -0.998702,
		10.080879, 22.139595, 12.978806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367702, 21.818607, 13.648883>,  <10.054459, 22.115662, 13.677898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367702, 21.818607, 13.648883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.533745, 21.809002, 13.285101>,  <9.633371, 21.803238, 13.066832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.533745, 21.809002, 13.285101>,  <9.367702, 21.818607, 13.648883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.533745, 21.809002, 13.285101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736162, -0.596233, -0.320269,
		-0.534556, 0.802452, -0.265179,
		0.415109, -0.024013, -0.909455,
		9.658278, 21.801798, 13.012264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.937395, 22.119509, 13.059329>,  <9.367702, 21.818607, 13.648883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.937395, 22.119509, 13.059329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.180618, 21.832502, 12.923425>,  <9.326552, 21.660299, 12.841883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.180618, 21.832502, 12.923425>,  <8.937395, 22.119509, 13.059329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.180618, 21.832502, 12.923425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782483, -0.469368, -0.409163,
		0.134108, 0.514651, -0.846847,
		0.608059, -0.717515, -0.339760,
		9.363036, 21.617249, 12.821497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671513, 21.964600, 12.330534>,  <8.937395, 22.119509, 13.059329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671513, 21.964600, 12.330534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922190, 21.658150, 12.387540>,  <9.072596, 21.474279, 12.421743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922190, 21.658150, 12.387540>,  <8.671513, 21.964600, 12.330534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922190, 21.658150, 12.387540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621046, -0.601493, -0.502502,
		0.470701, 0.226406, -0.852749,
		0.626692, -0.766124, 0.142515,
		9.110197, 21.428312, 12.430294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.744052, 21.590792, 11.674204>,  <8.671513, 21.964600, 12.330534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.744052, 21.590792, 11.674204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824289, 21.320696, 11.958123>,  <8.872432, 21.158638, 12.128475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824289, 21.320696, 11.958123>,  <8.744052, 21.590792, 11.674204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824289, 21.320696, 11.958123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617520, -0.649617, -0.443471,
		0.760546, -0.349357, -0.547283,
		0.200595, -0.675239, 0.709799,
		8.884468, 21.118124, 12.171062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.873335, 20.966394, 11.288212>,  <8.744052, 21.590792, 11.674204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.873335, 20.966394, 11.288212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.802289, 20.836054, 11.659647>,  <8.759662, 20.757849, 11.882508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.802289, 20.836054, 11.659647>,  <8.873335, 20.966394, 11.288212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.802289, 20.836054, 11.659647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532466, -0.761717, -0.369142,
		0.827607, -0.560006, -0.038214,
		-0.177613, -0.325853, 0.928587,
		8.749005, 20.738298, 11.938223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.735488, 20.294390, 11.206674>,  <8.873335, 20.966394, 11.288212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.735488, 20.294390, 11.206674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.605410, 20.353998, 11.580206>,  <8.527363, 20.389763, 11.804325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.605410, 20.353998, 11.580206>,  <8.735488, 20.294390, 11.206674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.605410, 20.353998, 11.580206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691529, -0.711034, -0.127350,
		0.645008, -0.687185, 0.334277,
		-0.325195, 0.149020, 0.933831,
		8.507851, 20.398705, 11.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.468817, 19.746883, 11.353302>,  <8.735488, 20.294390, 11.206674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.468817, 19.746883, 11.353302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.299991, 19.950918, 11.653081>,  <8.198695, 20.073339, 11.832949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.299991, 19.950918, 11.653081>,  <8.468817, 19.746883, 11.353302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.299991, 19.950918, 11.653081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753624, -0.656914, 0.022689,
		0.503896, -0.555225, 0.661675,
		-0.422066, 0.510088, 0.749447,
		8.173371, 20.103945, 11.877915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.551651, 19.388018, 11.942100>,  <8.468817, 19.746883, 11.353302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.551651, 19.388018, 11.942100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227324, 19.594723, 12.052029>,  <8.032727, 19.718746, 12.117986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227324, 19.594723, 12.052029>,  <8.551651, 19.388018, 11.942100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.227324, 19.594723, 12.052029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460101, -0.852977, 0.246448,
		0.361773, 0.073379, 0.929374,
		-0.810819, 0.516764, 0.274823,
		7.984078, 19.749752, 12.134476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.330665, 19.123993, 12.578499>,  <8.551651, 19.388018, 11.942100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.330665, 19.123993, 12.578499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.003841, 19.304090, 12.434445>,  <7.807747, 19.412149, 12.348013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.003841, 19.304090, 12.434445>,  <8.330665, 19.123993, 12.578499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.003841, 19.304090, 12.434445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543439, -0.810056, 0.220188,
		-0.192590, 0.375617, 0.906543,
		-0.817058, 0.450245, -0.360134,
		7.758724, 19.439163, 12.326406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.838404, 18.966148, 13.107136>,  <8.330665, 19.123993, 12.578499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.838404, 18.966148, 13.107136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.617785, 19.091421, 12.797889>,  <7.485413, 19.166586, 12.612340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.617785, 19.091421, 12.797889>,  <7.838404, 18.966148, 13.107136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.617785, 19.091421, 12.797889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713729, -0.656889, 0.243079,
		-0.431724, 0.685867, 0.585834,
		-0.551547, 0.313183, -0.773118,
		7.452320, 19.185375, 12.565953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.251848, 19.209255, 13.398632>,  <7.838404, 18.966148, 13.107136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.251848, 19.209255, 13.398632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.159859, 19.104156, 13.023809>,  <7.104666, 19.041098, 12.798916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.159859, 19.104156, 13.023809>,  <7.251848, 19.209255, 13.398632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.159859, 19.104156, 13.023809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767556, -0.542985, 0.340624,
		-0.598307, 0.797577, -0.076803,
		-0.229971, -0.262749, -0.937057,
		7.090868, 19.025331, 12.742692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.548017, 19.223852, 13.455524>,  <7.251848, 19.209255, 13.398632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.548017, 19.223852, 13.455524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630026, 19.000410, 13.134047>,  <6.679232, 18.866344, 12.941159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630026, 19.000410, 13.134047>,  <6.548017, 19.223852, 13.455524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.630026, 19.000410, 13.134047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623058, -0.707759, 0.332981,
		-0.754827, 0.432480, -0.493150,
		0.205024, -0.558604, -0.803696,
		6.691534, 18.832829, 12.892938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.913963, 19.068089, 13.135948>,  <6.548017, 19.223852, 13.455524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.913963, 19.068089, 13.135948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.179915, 18.797726, 13.008775>,  <6.339486, 18.635508, 12.932470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.179915, 18.797726, 13.008775>,  <5.913963, 19.068089, 13.135948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.179915, 18.797726, 13.008775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685351, -0.721290, 0.100178,
		-0.297033, 0.151290, -0.942806,
		0.664880, -0.675909, -0.317934,
		6.379379, 18.594954, 12.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.511439, 18.642056, 12.728921>,  <5.913963, 19.068089, 13.135948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.511439, 18.642056, 12.728921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.842203, 18.427553, 12.796628>,  <6.040661, 18.298851, 12.837252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.842203, 18.427553, 12.796628>,  <5.511439, 18.642056, 12.728921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.842203, 18.427553, 12.796628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560796, -0.808656, 0.177716,
		0.041577, -0.241880, -0.969415,
		0.826910, -0.536255, 0.169267,
		6.090276, 18.266676, 12.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.277846, 17.968464, 12.499684>,  <5.511439, 18.642056, 12.728921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.277846, 17.968464, 12.499684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612319, 17.876270, 12.698752>,  <5.813002, 17.820953, 12.818193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612319, 17.876270, 12.698752>,  <5.277846, 17.968464, 12.499684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612319, 17.876270, 12.698752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339582, -0.930130, 0.139792,
		0.430679, -0.285891, -0.856027,
		0.836182, -0.230486, 0.497671,
		5.863173, 17.807125, 12.848054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.522519, 17.368692, 12.240698>,  <5.277846, 17.968464, 12.499684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.522519, 17.368692, 12.240698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675307, 17.395052, 12.609426>,  <5.766981, 17.410868, 12.830664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675307, 17.395052, 12.609426>,  <5.522519, 17.368692, 12.240698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.675307, 17.395052, 12.609426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341150, -0.916954, 0.206910,
		0.858903, -0.393513, -0.327770,
		0.381972, 0.065897, 0.921821,
		5.789899, 17.414822, 12.885973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.022533, 16.780207, 12.365069>,  <5.522519, 17.368692, 12.240698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.022533, 16.780207, 12.365069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.845835, 16.908794, 12.700096>,  <5.739816, 16.985947, 12.901112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.845835, 16.908794, 12.700096>,  <6.022533, 16.780207, 12.365069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.845835, 16.908794, 12.700096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517758, -0.853782, 0.054621,
		0.732658, -0.409528, 0.543598,
		-0.441746, 0.321470, 0.837566,
		5.713311, 17.005236, 12.951366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.530835, 16.372578, 12.428224>,  <6.022533, 16.780207, 12.365069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.530835, 16.372578, 12.428224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.447711, 16.462227, 12.809082>,  <6.397836, 16.516016, 13.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.447711, 16.462227, 12.809082>,  <6.530835, 16.372578, 12.428224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.447711, 16.462227, 12.809082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576350, 0.758428, -0.304316,
		-0.790339, -0.612010, -0.028436,
		-0.207810, 0.224123, 0.952147,
		6.385367, 16.529465, 13.094727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.059881, 15.789154, 12.342209>,  <6.530835, 16.372578, 12.428224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.059881, 15.789154, 12.342209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.956946, 15.409667, 12.415655>,  <6.895185, 15.181975, 12.459723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.956946, 15.409667, 12.415655>,  <7.059881, 15.789154, 12.342209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.956946, 15.409667, 12.415655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909885, 0.301879, 0.284566,
		-0.325402, -0.093839, -0.940908,
		-0.257337, -0.948717, 0.183614,
		6.879745, 15.125052, 12.470739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667643, 15.511756, 12.324723>,  <7.059881, 15.789154, 12.342209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667643, 15.511756, 12.324723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629561, 15.552791, 12.720786>,  <7.606712, 15.577412, 12.958424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629561, 15.552791, 12.720786>,  <7.667643, 15.511756, 12.324723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.629561, 15.552791, 12.720786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985492, -0.130679, 0.108294,
		0.140503, 0.986103, -0.088657,
		-0.095204, 0.102586, 0.990158,
		7.601000, 15.583567, 13.017834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.204122, 16.026735, 12.698035>,  <7.667643, 15.511756, 12.324723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.204122, 16.026735, 12.698035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.114305, 15.738769, 12.960731>,  <8.060415, 15.565989, 13.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.114305, 15.738769, 12.960731>,  <8.204122, 16.026735, 12.698035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.114305, 15.738769, 12.960731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960401, -0.049407, 0.274205,
		-0.164957, 0.692302, 0.702501,
		-0.224541, -0.719915, 0.656737,
		8.046944, 15.522794, 13.157752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.615364, 16.148203, 13.307850>,  <8.204122, 16.026735, 12.698035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.615364, 16.148203, 13.307850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525286, 15.758814, 13.324035>,  <8.471238, 15.525181, 13.333746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525286, 15.758814, 13.324035>,  <8.615364, 16.148203, 13.307850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.525286, 15.758814, 13.324035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844519, -0.174318, 0.506361,
		-0.485875, 0.148202, 0.861372,
		-0.225197, -0.973473, 0.040463,
		8.457726, 15.466772, 13.336173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.535733, 15.829282, 14.021861>,  <8.615364, 16.148203, 13.307850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.535733, 15.829282, 14.021861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684741, 15.626030, 13.711241>,  <8.774146, 15.504079, 13.524869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684741, 15.626030, 13.711241>,  <8.535733, 15.829282, 14.021861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684741, 15.626030, 13.711241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897509, -0.015552, 0.440722,
		-0.236022, -0.861139, 0.450258,
		0.372520, -0.508131, -0.776551,
		8.796497, 15.473591, 13.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.087248, 15.465745, 14.272887>,  <8.535733, 15.829282, 14.021861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.087248, 15.465745, 14.272887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193202, 15.403569, 13.892220>,  <9.256775, 15.366263, 13.663819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193202, 15.403569, 13.892220>,  <9.087248, 15.465745, 14.272887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193202, 15.403569, 13.892220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964221, 0.053608, 0.259624,
		0.010661, -0.986390, 0.164079,
		0.264887, -0.155440, -0.951669,
		9.272668, 15.356937, 13.606719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.450851, 14.764297, 14.129628>,  <9.087248, 15.465745, 14.272887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.450851, 14.764297, 14.129628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540588, 15.075046, 13.894292>,  <9.594431, 15.261495, 13.753090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540588, 15.075046, 13.894292>,  <9.450851, 14.764297, 14.129628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.540588, 15.075046, 13.894292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933165, 0.002734, 0.359438,
		0.280845, -0.629656, -0.724334,
		0.224342, 0.776869, -0.588341,
		9.607891, 15.308106, 13.717790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.828662, 14.623137, 14.778573>,  <9.450851, 14.764297, 14.129628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.828662, 14.623137, 14.778573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197106, 14.492804, 14.863788>,  <10.418173, 14.414603, 14.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197106, 14.492804, 14.863788>,  <9.828662, 14.623137, 14.778573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197106, 14.492804, 14.863788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134163, 0.248020, 0.959420,
		-0.365449, -0.912315, 0.184739,
		0.921112, -0.325834, 0.213038,
		10.473440, 14.395054, 14.927699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.705507, 14.308268, 15.366296>,  <9.828662, 14.623137, 14.778573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.705507, 14.308268, 15.366296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100806, 14.368705, 15.375582>,  <10.337986, 14.404967, 15.381153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100806, 14.368705, 15.375582>,  <9.705507, 14.308268, 15.366296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100806, 14.368705, 15.375582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087202, 0.432483, 0.897415,
		0.125552, -0.888893, 0.440575,
		0.988247, 0.151092, 0.023214,
		10.397281, 14.414032, 15.382545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.914854, 13.997298, 16.085421>,  <9.705507, 14.308268, 15.366296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.914854, 13.997298, 16.085421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192679, 14.253629, 15.954624>,  <10.359375, 14.407427, 15.876146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192679, 14.253629, 15.954624>,  <9.914854, 13.997298, 16.085421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192679, 14.253629, 15.954624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007897, 0.461275, 0.887222,
		0.719389, -0.613650, 0.325445,
		0.694563, 0.640827, -0.326990,
		10.401049, 14.445877, 15.856527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.165319, 14.169066, 16.741999>,  <9.914854, 13.997298, 16.085421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.165319, 14.169066, 16.741999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332759, 14.436705, 16.496370>,  <10.433223, 14.597288, 16.348993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332759, 14.436705, 16.496370>,  <10.165319, 14.169066, 16.741999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.332759, 14.436705, 16.496370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323111, 0.522197, 0.789246,
		0.848748, -0.528791, 0.002398,
		0.418599, 0.669096, -0.614072,
		10.458339, 14.637434, 16.312149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832139, 14.329203, 17.012707>,  <10.165319, 14.169066, 16.741999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832139, 14.329203, 17.012707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.692801, 14.621892, 16.778360>,  <10.609200, 14.797505, 16.637753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.692801, 14.621892, 16.778360>,  <10.832139, 14.329203, 17.012707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.692801, 14.621892, 16.778360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370192, 0.681596, 0.631177,
		0.861171, 0.002984, -0.508307,
		-0.348344, 0.731722, -0.585866,
		10.588299, 14.841409, 16.602600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395956, 14.859232, 17.015802>,  <10.832139, 14.329203, 17.012707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395956, 14.859232, 17.015802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055804, 15.033915, 16.898403>,  <10.851713, 15.138724, 16.827965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055804, 15.033915, 16.898403>,  <11.395956, 14.859232, 17.015802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055804, 15.033915, 16.898403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109382, 0.692336, 0.713236,
		0.514674, 0.574419, -0.636517,
		-0.850380, 0.436708, -0.293496,
		10.800691, 15.164927, 16.810354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574597, 15.625658, 16.805853>,  <11.395956, 14.859232, 17.015802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574597, 15.625658, 16.805853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186963, 15.607523, 16.902863>,  <10.954383, 15.596642, 16.961067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186963, 15.607523, 16.902863>,  <11.574597, 15.625658, 16.805853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.186963, 15.607523, 16.902863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134547, 0.726831, 0.673508,
		-0.206809, 0.685318, -0.698262,
		-0.969086, -0.045339, 0.242523,
		10.896237, 15.593922, 16.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327168, 16.206671, 16.922909>,  <11.574597, 15.625658, 16.805853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.327168, 16.206671, 16.922909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038496, 16.017382, 17.124992>,  <10.865293, 15.903808, 17.246243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038496, 16.017382, 17.124992>,  <11.327168, 16.206671, 16.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038496, 16.017382, 17.124992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059547, 0.684687, 0.726401,
		-0.689660, 0.554313, -0.465947,
		-0.721681, -0.473223, 0.505209,
		10.821992, 15.875415, 17.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915025, 16.796448, 17.261538>,  <11.327168, 16.206671, 16.922909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915025, 16.796448, 17.261538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.810975, 16.465532, 17.460707>,  <10.748545, 16.266983, 17.580208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.810975, 16.465532, 17.460707>,  <10.915025, 16.796448, 17.261538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.810975, 16.465532, 17.460707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017752, 0.511492, 0.859105,
		-0.965412, 0.232314, -0.118366,
		-0.260125, -0.827288, 0.497925,
		10.732938, 16.217346, 17.610085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288803, 16.919672, 17.744768>,  <10.915025, 16.796448, 17.261538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288803, 16.919672, 17.744768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.484847, 16.603363, 17.891451>,  <10.602473, 16.413578, 17.979460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.484847, 16.603363, 17.891451>,  <10.288803, 16.919672, 17.744768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.484847, 16.603363, 17.891451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043766, 0.397842, 0.916410,
		-0.870561, -0.465190, 0.160377,
		0.490110, -0.790772, 0.366705,
		10.631880, 16.366131, 18.001463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.926419, 16.698786, 18.272680>,  <10.288803, 16.919672, 17.744768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.926419, 16.698786, 18.272680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269109, 16.512957, 18.362297>,  <10.474722, 16.401459, 18.416067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269109, 16.512957, 18.362297>,  <9.926419, 16.698786, 18.272680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269109, 16.512957, 18.362297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110392, 0.259154, 0.959507,
		-0.503825, -0.846764, 0.170738,
		0.856723, -0.464575, 0.224044,
		10.526126, 16.373585, 18.429510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.803131, 16.446157, 18.939255>,  <9.926419, 16.698786, 18.272680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.803131, 16.446157, 18.939255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.200918, 16.405699, 18.927904>,  <10.439590, 16.381424, 18.921095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.200918, 16.405699, 18.927904>,  <9.803131, 16.446157, 18.939255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.200918, 16.405699, 18.927904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037404, 0.088525, 0.995371,
		-0.098167, -0.990925, 0.091818,
		0.994467, -0.101147, -0.028375,
		10.499258, 16.375355, 18.919392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.882513, 16.057983, 19.474752>,  <9.803131, 16.446157, 18.939255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.882513, 16.057983, 19.474752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269015, 16.158283, 19.451174>,  <10.500916, 16.218464, 19.437027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269015, 16.158283, 19.451174>,  <9.882513, 16.057983, 19.474752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269015, 16.158283, 19.451174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036859, 0.091898, 0.995086,
		0.254939, -0.963679, 0.079554,
		0.966255, 0.250754, -0.058949,
		10.558892, 16.233509, 19.433489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.330228, 15.567092, 19.818874>,  <9.882513, 16.057983, 19.474752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.330228, 15.567092, 19.818874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490636, 15.933297, 19.831635>,  <10.586881, 16.153021, 19.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490636, 15.933297, 19.831635>,  <10.330228, 15.567092, 19.818874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.490636, 15.933297, 19.831635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190443, -0.117381, 0.974656,
		0.896055, -0.384781, -0.221425,
		0.401020, 0.915514, 0.031901,
		10.610942, 16.207951, 19.841206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.061503, 15.581071, 20.080774>,  <10.330228, 15.567092, 19.818874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.061503, 15.581071, 20.080774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.893154, 15.934694, 20.162071>,  <10.792145, 16.146868, 20.210850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.893154, 15.934694, 20.162071>,  <11.061503, 15.581071, 20.080774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.893154, 15.934694, 20.162071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395656, -0.022710, 0.918118,
		0.816285, 0.466825, -0.340225,
		-0.420874, 0.884058, 0.203240,
		10.766892, 16.199911, 20.223043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273102, 15.637828, 20.819483>,  <11.061503, 15.581071, 20.080774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273102, 15.637828, 20.819483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049266, 15.967294, 20.782747>,  <10.914964, 16.164972, 20.760706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049266, 15.967294, 20.782747>,  <11.273102, 15.637828, 20.819483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049266, 15.967294, 20.782747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054751, 0.073832, 0.995767,
		0.826958, 0.562250, 0.003781,
		-0.559591, 0.823665, -0.091840,
		10.881389, 16.214394, 20.755196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631583, 16.150215, 21.254616>,  <11.273102, 15.637828, 20.819483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631583, 16.150215, 21.254616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251977, 16.260431, 21.193371>,  <11.024213, 16.326561, 21.156624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251977, 16.260431, 21.193371>,  <11.631583, 16.150215, 21.254616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251977, 16.260431, 21.193371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132889, 0.090742, 0.986968,
		0.285846, 0.956997, -0.049499,
		-0.949017, 0.275543, -0.153113,
		10.967272, 16.343094, 21.147436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598152, 16.659931, 21.661625>,  <11.631583, 16.150215, 21.254616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598152, 16.659931, 21.661625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209648, 16.573757, 21.621145>,  <10.976545, 16.522053, 21.596857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209648, 16.573757, 21.621145>,  <11.598152, 16.659931, 21.661625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209648, 16.573757, 21.621145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124479, 0.097363, 0.987434,
		-0.202876, 0.971652, -0.121382,
		-0.971260, -0.215437, -0.101198,
		10.918270, 16.509127, 21.590786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204937, 17.283939, 21.838585>,  <11.598152, 16.659931, 21.661625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204937, 17.283939, 21.838585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962655, 16.967333, 21.871130>,  <10.817286, 16.777369, 21.890657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962655, 16.967333, 21.871130>,  <11.204937, 17.283939, 21.838585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.962655, 16.967333, 21.871130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303751, 0.324522, 0.895780,
		-0.735429, 0.517865, -0.436989,
		-0.605706, -0.791518, 0.081361,
		10.780943, 16.729877, 21.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608887, 17.542557, 22.197056>,  <11.204937, 17.283939, 21.838585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608887, 17.542557, 22.197056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556377, 17.147314, 22.229088>,  <10.524872, 16.910168, 22.248308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556377, 17.147314, 22.229088>,  <10.608887, 17.542557, 22.197056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556377, 17.147314, 22.229088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317238, 0.118404, 0.940925,
		-0.939216, 0.098114, -0.329008,
		-0.131274, -0.988106, 0.080082,
		10.516995, 16.850882, 22.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.904135, 17.418907, 22.429741>,  <10.608887, 17.542557, 22.197056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.904135, 17.418907, 22.429741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.108903, 17.087971, 22.522213>,  <10.231764, 16.889408, 22.577696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.108903, 17.087971, 22.522213>,  <9.904135, 17.418907, 22.429741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.108903, 17.087971, 22.522213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415547, -0.002965, 0.909567,
		-0.751836, -0.561693, -0.345317,
		0.511921, -0.827341, 0.231181,
		10.262480, 16.839769, 22.591568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381980, 16.981121, 22.729315>,  <9.904135, 17.418907, 22.429741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381980, 16.981121, 22.729315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742411, 16.867962, 22.860785>,  <9.958670, 16.800066, 22.939667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742411, 16.867962, 22.860785>,  <9.381980, 16.981121, 22.729315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742411, 16.867962, 22.860785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383791, -0.167359, 0.908127,
		-0.201912, -0.944432, -0.259382,
		0.901075, -0.282910, 0.328673,
		10.012734, 16.783092, 22.959387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.186601, 16.354557, 23.114285>,  <9.381980, 16.981121, 22.729315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.186601, 16.354557, 23.114285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540947, 16.503094, 23.225529>,  <9.753555, 16.592216, 23.292274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540947, 16.503094, 23.225529>,  <9.186601, 16.354557, 23.114285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.540947, 16.503094, 23.225529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311627, 0.032180, 0.949659,
		0.343700, -0.927938, 0.144228,
		0.885866, 0.371343, 0.278111,
		9.806707, 16.614496, 23.308962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409584, 15.993254, 23.758657>,  <9.186601, 16.354557, 23.114285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409584, 15.993254, 23.758657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.706266, 16.261532, 23.756081>,  <9.884275, 16.422499, 23.754534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.706266, 16.261532, 23.756081>,  <9.409584, 15.993254, 23.758657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.706266, 16.261532, 23.756081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127169, -0.131189, 0.983167,
		0.658560, -0.730040, -0.182595,
		0.741706, 0.670694, -0.006443,
		9.928779, 16.462740, 23.754148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.955871, 15.772854, 24.253160>,  <9.409584, 15.993254, 23.758657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.955871, 15.772854, 24.253160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981265, 16.170938, 24.223427>,  <9.996502, 16.409788, 24.205587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981265, 16.170938, 24.223427>,  <9.955871, 15.772854, 24.253160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.981265, 16.170938, 24.223427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034195, 0.076608, 0.996475,
		0.997397, -0.060720, 0.038895,
		0.063486, 0.995211, -0.074332,
		10.000311, 16.469501, 24.201128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.512136, 15.999726, 24.611683>,  <9.955871, 15.772854, 24.253160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.512136, 15.999726, 24.611683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286972, 16.330183, 24.601723>,  <10.151874, 16.528458, 24.595747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286972, 16.330183, 24.601723>,  <10.512136, 15.999726, 24.611683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.286972, 16.330183, 24.601723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022214, 0.014993, 0.999641,
		0.826219, 0.563262, 0.009912,
		-0.562911, 0.826142, -0.024899,
		10.118098, 16.578026, 24.594254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967940, 16.440592, 25.016554>,  <10.512136, 15.999726, 24.611683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967940, 16.440592, 25.016554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597250, 16.589769, 24.998264>,  <10.374836, 16.679276, 24.987291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597250, 16.589769, 24.998264>,  <10.967940, 16.440592, 25.016554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.597250, 16.589769, 24.998264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007944, 0.102212, 0.994731,
		0.375653, 0.922207, -0.091760,
		-0.926727, 0.372944, -0.045722,
		10.319232, 16.701653, 24.984549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.961354, 17.038992, 25.327923>,  <10.967940, 16.440592, 25.016554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.961354, 17.038992, 25.327923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584589, 16.910418, 25.366869>,  <10.358530, 16.833273, 25.390236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584589, 16.910418, 25.366869>,  <10.961354, 17.038992, 25.327923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584589, 16.910418, 25.366869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068198, 0.100816, 0.992565,
		-0.328861, 0.941549, -0.073039,
		-0.941913, -0.321435, 0.097366,
		10.302015, 16.813988, 25.396078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.718028, 17.467216, 25.849327>,  <10.961354, 17.038992, 25.327923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.718028, 17.467216, 25.849327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433348, 17.187551, 25.822046>,  <10.262539, 17.019753, 25.805677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433348, 17.187551, 25.822046>,  <10.718028, 17.467216, 25.849327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433348, 17.187551, 25.822046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249147, 0.160448, 0.955082,
		-0.656816, 0.696726, -0.288386,
		-0.711702, -0.699163, -0.068203,
		10.219837, 16.977802, 25.801586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.095099, 17.890568, 26.063000>,  <10.718028, 17.467216, 25.849327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.095099, 17.890568, 26.063000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071550, 17.494280, 26.112001>,  <10.057421, 17.256508, 26.141401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071550, 17.494280, 26.112001>,  <10.095099, 17.890568, 26.063000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071550, 17.494280, 26.112001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279740, 0.134172, 0.950654,
		-0.958269, 0.021698, -0.285043,
		-0.058873, -0.990721, 0.122503,
		10.053888, 17.197063, 26.148752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469645, 17.866554, 26.313213>,  <10.095099, 17.890568, 26.063000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469645, 17.866554, 26.313213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.675706, 17.534781, 26.399612>,  <9.799343, 17.335716, 26.451452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.675706, 17.534781, 26.399612>,  <9.469645, 17.866554, 26.313213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.675706, 17.534781, 26.399612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226626, 0.111229, 0.967610,
		-0.826594, -0.547419, -0.130671,
		0.515154, -0.829434, 0.216000,
		9.830252, 17.285950, 26.464413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.995258, 17.526758, 26.817635>,  <9.469645, 17.866554, 26.313213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.995258, 17.526758, 26.817635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.366407, 17.387365, 26.870724>,  <9.589097, 17.303730, 26.902578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.366407, 17.387365, 26.870724>,  <8.995258, 17.526758, 26.817635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.366407, 17.387365, 26.870724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125822, 0.042475, 0.991143,
		-0.351031, -0.936353, -0.004435,
		0.927872, -0.348480, 0.132724,
		9.644769, 17.282822, 26.910542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.967756, 16.915131, 27.248569>,  <8.995258, 17.526758, 26.817635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.967756, 16.915131, 27.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337468, 17.064016, 27.282423>,  <9.559296, 17.153349, 27.302736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337468, 17.064016, 27.282423>,  <8.967756, 16.915131, 27.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337468, 17.064016, 27.282423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124927, 0.085455, 0.988479,
		0.360696, -0.924204, 0.125484,
		0.924279, 0.372217, 0.084635,
		9.614752, 17.175680, 27.307814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.103085, 16.690235, 27.879610>,  <8.967756, 16.915131, 27.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.103085, 16.690235, 27.879610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422083, 16.917601, 27.798708>,  <9.613482, 17.054020, 27.750166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422083, 16.917601, 27.798708>,  <9.103085, 16.690235, 27.879610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.422083, 16.917601, 27.798708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056186, 0.263809, 0.962937,
		0.600705, -0.779301, 0.178449,
		0.797494, 0.568414, -0.202257,
		9.661331, 17.088125, 27.738031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.594931, 16.336359, 28.174917>,  <9.103085, 16.690235, 27.879610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.594931, 16.336359, 28.174917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.693151, 16.723597, 28.154911>,  <9.752083, 16.955938, 28.142908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.693151, 16.723597, 28.154911>,  <9.594931, 16.336359, 28.174917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693151, 16.723597, 28.154911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032274, 0.043403, 0.998536,
		0.968847, -0.246805, -0.020586,
		0.245550, 0.968093, -0.050016,
		9.766815, 17.014025, 28.139906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.132798, 16.453096, 28.584969>,  <9.594931, 16.336359, 28.174917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.132798, 16.453096, 28.584969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.998867, 16.827063, 28.537941>,  <9.918509, 17.051443, 28.509724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.998867, 16.827063, 28.537941>,  <10.132798, 16.453096, 28.584969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.998867, 16.827063, 28.537941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074577, 0.098086, 0.992380,
		0.939323, 0.341045, 0.036882,
		-0.334829, 0.934916, -0.117569,
		9.898418, 17.107538, 28.502670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390493, 16.713024, 29.073952>,  <10.132798, 16.453096, 28.584969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390493, 16.713024, 29.073952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128427, 17.004662, 28.994776>,  <9.971187, 17.179644, 28.947269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128427, 17.004662, 28.994776>,  <10.390493, 16.713024, 29.073952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128427, 17.004662, 28.994776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160717, 0.121501, 0.979494,
		0.738191, 0.673544, 0.037574,
		-0.655167, 0.729093, -0.197941,
		9.931876, 17.223389, 28.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496843, 17.131954, 29.646994>,  <10.390493, 16.713024, 29.073952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496843, 17.131954, 29.646994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.145643, 17.266966, 29.511234>,  <9.934923, 17.347973, 29.429779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.145643, 17.266966, 29.511234>,  <10.496843, 17.131954, 29.646994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.145643, 17.266966, 29.511234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252509, 0.275758, 0.927468,
		0.406641, 0.900017, -0.156886,
		-0.877999, 0.337531, -0.339397,
		9.882243, 17.368225, 29.409414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.428300, 17.776951, 29.869724>,  <10.496843, 17.131954, 29.646994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.428300, 17.776951, 29.869724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.052294, 17.662424, 29.795542>,  <9.826690, 17.593708, 29.751032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.052294, 17.662424, 29.795542>,  <10.428300, 17.776951, 29.869724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052294, 17.662424, 29.795542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264488, 0.268359, 0.926299,
		-0.215445, 0.919786, -0.327988,
		-0.940016, -0.286316, -0.185456,
		9.770289, 17.576529, 29.739904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.862958, 18.380991, 29.905968>,  <10.428300, 17.776951, 29.869724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.862958, 18.380991, 29.905968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.670578, 18.036554, 29.971945>,  <9.555150, 17.829891, 30.011530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.670578, 18.036554, 29.971945>,  <9.862958, 18.380991, 29.905968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.670578, 18.036554, 29.971945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446825, 0.402597, 0.798913,
		-0.754344, 0.310537, -0.578387,
		-0.480949, -0.861094, 0.164941,
		9.526294, 17.778227, 30.021427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241942, 18.574610, 30.197121>,  <9.862958, 18.380991, 29.905968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241942, 18.574610, 30.197121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.262421, 18.186958, 30.293591>,  <9.274708, 17.954367, 30.351473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.262421, 18.186958, 30.293591>,  <9.241942, 18.574610, 30.197121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.262421, 18.186958, 30.293591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551851, 0.173822, 0.815626,
		-0.832370, -0.174848, -0.525917,
		0.051195, -0.969131, 0.241174,
		9.277780, 17.896219, 30.365942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.581523, 18.368237, 30.454235>,  <9.241942, 18.574610, 30.197121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.581523, 18.368237, 30.454235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844982, 18.123808, 30.629860>,  <9.003057, 17.977150, 30.735235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844982, 18.123808, 30.629860>,  <8.581523, 18.368237, 30.454235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.844982, 18.123808, 30.629860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548642, 0.009321, 0.836006,
		-0.514953, -0.791519, -0.329121,
		0.658647, -0.611073, 0.439061,
		9.042576, 17.940487, 30.761578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.310971, 17.704363, 30.561264>,  <8.581523, 18.368237, 30.454235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.310971, 17.704363, 30.561264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.551960, 17.839809, 30.850363>,  <8.696553, 17.921078, 31.023823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.551960, 17.839809, 30.850363>,  <8.310971, 17.704363, 30.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.551960, 17.839809, 30.850363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745863, -0.083474, 0.660848,
		0.284107, -0.937214, 0.202273,
		0.602471, 0.338619, 0.722749,
		8.732701, 17.941395, 31.067188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.112886, 17.169613, 31.137949>,  <8.310971, 17.704363, 30.561264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.112886, 17.169613, 31.137949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232471, 17.543701, 31.213829>,  <8.304222, 17.768154, 31.259357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232471, 17.543701, 31.213829>,  <8.112886, 17.169613, 31.137949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.232471, 17.543701, 31.213829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754149, 0.109747, 0.647468,
		0.584705, -0.336631, 0.738105,
		0.298963, 0.935220, 0.189700,
		8.322161, 17.824266, 31.270739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.574053, 17.373295, 31.530998>,  <8.112886, 17.169613, 31.137949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.574053, 17.373295, 31.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806120, 17.698534, 31.550097>,  <7.945360, 17.893677, 31.561556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806120, 17.698534, 31.550097>,  <7.574053, 17.373295, 31.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.806120, 17.698534, 31.550097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630414, 0.411156, 0.658429,
		0.515738, -0.412095, 0.751127,
		0.580166, 0.813098, 0.047742,
		7.980170, 17.942463, 31.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715452, 16.791416, 32.095325>,  <7.574053, 17.373295, 31.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715452, 16.791416, 32.095325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.041474, 16.736938, 32.320583>,  <8.237087, 16.704252, 32.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.041474, 16.736938, 32.320583>,  <7.715452, 16.791416, 32.095325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.041474, 16.736938, 32.320583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217688, -0.828775, -0.515503,
		0.536933, 0.542754, -0.645849,
		0.815055, -0.136197, 0.563148,
		8.285991, 16.696079, 32.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.307446, 16.717163, 31.771259>,  <7.715452, 16.791416, 32.095325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.307446, 16.717163, 31.771259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.375488, 16.479452, 32.085686>,  <8.416314, 16.336826, 32.274342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.375488, 16.479452, 32.085686>,  <8.307446, 16.717163, 31.771259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.375488, 16.479452, 32.085686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299177, -0.728895, -0.615797,
		0.938913, 0.339924, 0.053803,
		0.170107, -0.594276, 0.786066,
		8.426520, 16.301168, 32.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.931710, 16.427437, 31.682743>,  <8.307446, 16.717163, 31.771259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.931710, 16.427437, 31.682743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720298, 16.160839, 31.893053>,  <8.593451, 16.000881, 32.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720298, 16.160839, 31.893053>,  <8.931710, 16.427437, 31.682743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720298, 16.160839, 31.893053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467868, -0.745493, -0.474699,
		0.708346, -0.004900, 0.705848,
		-0.528531, -0.666495, 0.525775,
		8.561739, 15.960891, 32.050785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.373421, 16.009548, 32.123558>,  <8.931710, 16.427437, 31.682743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.373421, 16.009548, 32.123558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067246, 15.790497, 31.988380>,  <8.883542, 15.659066, 31.907272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067246, 15.790497, 31.988380>,  <9.373421, 16.009548, 32.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067246, 15.790497, 31.988380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633332, -0.548044, -0.546387,
		0.114007, -0.632258, 0.766324,
		-0.765437, -0.547629, -0.337949,
		8.837615, 15.626208, 31.886995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.685029, 15.272388, 32.175739>,  <9.373421, 16.009548, 32.123558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.685029, 15.272388, 32.175739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413717, 15.335702, 31.888720>,  <9.250931, 15.373691, 31.716507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413717, 15.335702, 31.888720>,  <9.685029, 15.272388, 32.175739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413717, 15.335702, 31.888720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622846, -0.394280, -0.675726,
		-0.389854, -0.905261, 0.168866,
		-0.678289, 0.158257, -0.717550,
		9.210234, 15.383187, 31.673454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.611837, 14.631240, 31.709007>,  <9.685029, 15.272388, 32.175739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.611837, 14.631240, 31.709007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.478295, 14.941138, 31.494230>,  <9.398170, 15.127077, 31.365364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.478295, 14.941138, 31.494230>,  <9.611837, 14.631240, 31.709007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.478295, 14.941138, 31.494230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489415, -0.344364, -0.801178,
		-0.805614, -0.530266, -0.264204,
		-0.333856, 0.774746, -0.536945,
		9.378139, 15.173562, 31.333147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.263031, 14.447555, 31.100496>,  <9.611837, 14.631240, 31.709007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.263031, 14.447555, 31.100496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383967, 14.820842, 31.022837>,  <9.456530, 15.044814, 30.976240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383967, 14.820842, 31.022837>,  <9.263031, 14.447555, 31.100496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.383967, 14.820842, 31.022837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143330, -0.245875, -0.958646,
		-0.942362, 0.262011, -0.208096,
		0.302341, 0.933218, -0.194149,
		9.474669, 15.100807, 30.964592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.280487, 14.451338, 30.409838>,  <9.263031, 14.447555, 31.100496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.280487, 14.451338, 30.409838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508931, 14.772940, 30.476059>,  <9.645997, 14.965901, 30.515793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508931, 14.772940, 30.476059>,  <9.280487, 14.451338, 30.409838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508931, 14.772940, 30.476059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309547, -0.024145, -0.950578,
		-0.760273, 0.594131, -0.262667,
		0.571110, 0.804006, 0.165554,
		9.680264, 15.014141, 30.525724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367216, 14.741349, 29.771832>,  <9.280487, 14.451338, 30.409838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367216, 14.741349, 29.771832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652748, 14.953256, 29.955044>,  <9.824067, 15.080400, 30.064972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652748, 14.953256, 29.955044>,  <9.367216, 14.741349, 29.771832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652748, 14.953256, 29.955044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566464, -0.052210, -0.822431,
		-0.411783, 0.846535, -0.337362,
		0.713830, 0.529767, 0.458032,
		9.866898, 15.112185, 30.092453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.626309, 15.332058, 29.315516>,  <9.367216, 14.741349, 29.771832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.626309, 15.332058, 29.315516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911568, 15.238286, 29.579779>,  <10.082723, 15.182023, 29.738337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911568, 15.238286, 29.579779>,  <9.626309, 15.332058, 29.315516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.911568, 15.238286, 29.579779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690502, 0.072301, -0.719708,
		0.120955, 0.969441, 0.213436,
		0.713146, -0.234430, 0.660656,
		10.125511, 15.167957, 29.777975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.139768, 15.771528, 29.224386>,  <9.626309, 15.332058, 29.315516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.139768, 15.771528, 29.224386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.328359, 15.469393, 29.406450>,  <10.441513, 15.288112, 29.515690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.328359, 15.469393, 29.406450>,  <10.139768, 15.771528, 29.224386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.328359, 15.469393, 29.406450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735443, 0.051953, -0.675592,
		0.486654, 0.653272, 0.580003,
		0.471479, -0.755338, 0.455161,
		10.469802, 15.242791, 29.542999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.869064, 15.981068, 29.315258>,  <10.139768, 15.771528, 29.224386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.869064, 15.981068, 29.315258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838227, 15.582825, 29.336515>,  <10.819725, 15.343879, 29.349270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838227, 15.582825, 29.336515>,  <10.869064, 15.981068, 29.315258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.838227, 15.582825, 29.336515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709177, -0.092225, -0.698973,
		0.700803, -0.016196, 0.713171,
		-0.077093, -0.995607, 0.053145,
		10.815100, 15.284142, 29.352459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502908, 15.768509, 29.217678>,  <10.869064, 15.981068, 29.315258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502908, 15.768509, 29.217678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335172, 15.411085, 29.153545>,  <11.234530, 15.196631, 29.115065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335172, 15.411085, 29.153545>,  <11.502908, 15.768509, 29.217678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.335172, 15.411085, 29.153545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679082, -0.191536, -0.708634,
		0.602497, -0.406037, 0.687118,
		-0.419340, -0.893559, -0.160332,
		11.209370, 15.143018, 29.105446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.067001, 15.244421, 29.152937>,  <11.502908, 15.768509, 29.217678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.067001, 15.244421, 29.152937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735433, 15.097912, 28.983829>,  <11.536491, 15.010007, 28.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735433, 15.097912, 28.983829>,  <12.067001, 15.244421, 29.152937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735433, 15.097912, 28.983829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517664, -0.215971, -0.827877,
		0.211923, -0.905097, 0.368629,
		-0.828923, -0.366272, -0.422767,
		11.486755, 14.988030, 28.856998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.328901, 14.604322, 28.806026>,  <12.067001, 15.244421, 29.152937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.328901, 14.604322, 28.806026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983562, 14.675416, 28.617117>,  <11.776360, 14.718072, 28.503771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983562, 14.675416, 28.617117>,  <12.328901, 14.604322, 28.806026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983562, 14.675416, 28.617117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443980, -0.177254, -0.878330,
		-0.239821, -0.967983, 0.074122,
		-0.863347, 0.177734, -0.472274,
		11.724559, 14.728736, 28.475435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083181, 14.005509, 28.468447>,  <12.328901, 14.604322, 28.806026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083181, 14.005509, 28.468447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927053, 14.315424, 28.269508>,  <11.833377, 14.501373, 28.150145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927053, 14.315424, 28.269508>,  <12.083181, 14.005509, 28.468447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927053, 14.315424, 28.269508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299846, -0.403769, -0.864328,
		-0.870484, -0.486492, -0.074718,
		-0.390320, 0.774788, -0.497347,
		11.809958, 14.547860, 28.120304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674901, 13.794456, 27.844261>,  <12.083181, 14.005509, 28.468447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674901, 13.794456, 27.844261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739029, 14.179252, 27.755833>,  <11.777506, 14.410130, 27.702776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739029, 14.179252, 27.755833>,  <11.674901, 13.794456, 27.844261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739029, 14.179252, 27.755833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237674, -0.255003, -0.937275,
		-0.958024, 0.097720, -0.269521,
		0.160319, 0.961990, -0.221073,
		11.787125, 14.467849, 27.689510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.505763, 13.810736, 27.088333>,  <11.674901, 13.794456, 27.844261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.505763, 13.810736, 27.088333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669312, 14.173614, 27.127977>,  <11.767442, 14.391340, 27.151764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669312, 14.173614, 27.127977>,  <11.505763, 13.810736, 27.088333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669312, 14.173614, 27.127977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168241, 0.031808, -0.985233,
		-0.896949, 0.419509, -0.139621,
		0.408873, 0.907194, 0.099108,
		11.791974, 14.445772, 27.157709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.109723, 14.265467, 26.684963>,  <11.505763, 13.810736, 27.088333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.109723, 14.265467, 26.684963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.485139, 14.403167, 26.695061>,  <11.710388, 14.485786, 26.701120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.485139, 14.403167, 26.695061>,  <11.109723, 14.265467, 26.684963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485139, 14.403167, 26.695061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130415, -0.285933, -0.949333,
		-0.319589, 0.894278, -0.313255,
		0.938538, 0.344250, 0.025246,
		11.766701, 14.506442, 26.702635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.285737, 14.645975, 26.110031>,  <11.109723, 14.265467, 26.684963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.285737, 14.645975, 26.110031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666556, 14.618298, 26.229239>,  <11.895048, 14.601691, 26.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666556, 14.618298, 26.229239>,  <11.285737, 14.645975, 26.110031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666556, 14.618298, 26.229239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290475, -0.101403, -0.951495,
		0.096058, 0.992436, -0.076441,
		0.952049, -0.069195, 0.298018,
		11.952171, 14.597539, 26.318644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.675790, 15.227914, 25.878555>,  <11.285737, 14.645975, 26.110031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.675790, 15.227914, 25.878555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917592, 14.914313, 25.935003>,  <12.062674, 14.726152, 25.968872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917592, 14.914313, 25.935003>,  <11.675790, 15.227914, 25.878555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917592, 14.914313, 25.935003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136492, -0.072594, -0.987978,
		0.784821, 0.616499, 0.063127,
		0.604505, -0.784002, 0.141121,
		12.098944, 14.679112, 25.977339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226977, 15.455314, 25.553911>,  <11.675790, 15.227914, 25.878555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226977, 15.455314, 25.553911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.295518, 15.064554, 25.604992>,  <12.336642, 14.830098, 25.635641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.295518, 15.064554, 25.604992>,  <12.226977, 15.455314, 25.553911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.295518, 15.064554, 25.604992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067707, -0.117636, -0.990746,
		0.982881, 0.178412, 0.045986,
		0.171352, -0.976898, 0.127702,
		12.346924, 14.771484, 25.643303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823687, 15.277358, 25.126835>,  <12.226977, 15.455314, 25.553911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823687, 15.277358, 25.126835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619114, 14.941294, 25.199018>,  <12.496370, 14.739655, 25.242329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619114, 14.941294, 25.199018>,  <12.823687, 15.277358, 25.126835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619114, 14.941294, 25.199018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179414, -0.309772, -0.933730,
		0.840385, -0.445163, 0.309164,
		-0.511433, -0.840161, 0.180460,
		12.465684, 14.689245, 25.253157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296187, 14.694393, 24.869572>,  <12.823687, 15.277358, 25.126835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.296187, 14.694393, 24.869572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924844, 14.548174, 24.896475>,  <12.702038, 14.460443, 24.912617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924844, 14.548174, 24.896475>,  <13.296187, 14.694393, 24.869572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924844, 14.548174, 24.896475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054903, -0.313833, -0.947889,
		0.367605, -0.876290, 0.311420,
		-0.928360, -0.365547, 0.067256,
		12.646336, 14.438510, 24.916651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409865, 14.048135, 24.621754>,  <13.296187, 14.694393, 24.869572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409865, 14.048135, 24.621754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023026, 14.149811, 24.617594>,  <12.790922, 14.210816, 24.615099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023026, 14.149811, 24.617594>,  <13.409865, 14.048135, 24.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023026, 14.149811, 24.617594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098980, -0.413608, -0.905059,
		-0.234356, -0.874252, 0.425159,
		-0.967099, 0.254189, -0.010398,
		12.732896, 14.226068, 24.614473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.045395, 13.489419, 24.253292>,  <13.409865, 14.048135, 24.621754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.045395, 13.489419, 24.253292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789815, 13.792012, 24.197468>,  <12.636467, 13.973568, 24.163973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789815, 13.792012, 24.197468>,  <13.045395, 13.489419, 24.253292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789815, 13.792012, 24.197468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184185, -0.326594, -0.927045,
		-0.746872, -0.566631, 0.348010,
		-0.638950, 0.756482, -0.139559,
		12.598130, 14.018957, 24.155600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645680, 13.218669, 23.846830>,  <13.045395, 13.489419, 24.253292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645680, 13.218669, 23.846830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523665, 13.597032, 23.802622>,  <12.450457, 13.824049, 23.776096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523665, 13.597032, 23.802622>,  <12.645680, 13.218669, 23.846830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523665, 13.597032, 23.802622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054748, -0.133275, -0.989566,
		-0.950765, -0.295804, 0.092440,
		-0.305037, 0.945906, -0.110519,
		12.432155, 13.880803, 23.769466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306996, 13.133360, 23.244984>,  <12.645680, 13.218669, 23.846830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.306996, 13.133360, 23.244984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302922, 13.532417, 23.272121>,  <12.300478, 13.771852, 23.288404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302922, 13.532417, 23.272121>,  <12.306996, 13.133360, 23.244984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302922, 13.532417, 23.272121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172065, 0.065089, -0.982933,
		-0.985033, -0.021684, 0.170996,
		-0.010184, 0.997644, 0.067846,
		12.299867, 13.831711, 23.292475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732957, 13.372069, 22.888199>,  <12.306996, 13.133360, 23.244984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732957, 13.372069, 22.888199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.990819, 13.676812, 22.862919>,  <12.145536, 13.859657, 22.847750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.990819, 13.676812, 22.862919>,  <11.732957, 13.372069, 22.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.990819, 13.676812, 22.862919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110755, 0.011275, -0.993784,
		-0.756408, 0.647648, 0.091648,
		0.644655, 0.761856, -0.063201,
		12.184216, 13.905369, 22.843958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437465, 14.056088, 22.445166>,  <11.732957, 13.372069, 22.888199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437465, 14.056088, 22.445166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837057, 14.053222, 22.427343>,  <12.076813, 14.051501, 22.416651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837057, 14.053222, 22.427343>,  <11.437465, 14.056088, 22.445166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837057, 14.053222, 22.427343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044070, 0.057659, -0.997363,
		0.009718, 0.998311, 0.057284,
		0.998981, -0.007168, -0.044556,
		12.136751, 14.051071, 22.413977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571192, 14.443323, 21.882580>,  <11.437465, 14.056088, 22.445166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571192, 14.443323, 21.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938099, 14.291726, 21.931541>,  <12.158243, 14.200768, 21.960918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938099, 14.291726, 21.931541>,  <11.571192, 14.443323, 21.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938099, 14.291726, 21.931541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052427, -0.189763, -0.980429,
		0.394804, 0.905734, -0.154194,
		0.917268, -0.378993, 0.122404,
		12.213280, 14.178028, 21.968262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985456, 14.752698, 21.365002>,  <11.571192, 14.443323, 21.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985456, 14.752698, 21.365002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191287, 14.426173, 21.469955>,  <12.314786, 14.230258, 21.532927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191287, 14.426173, 21.469955>,  <11.985456, 14.752698, 21.365002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191287, 14.426173, 21.469955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182782, -0.194541, -0.963714,
		0.837735, 0.543864, 0.049101,
		0.514578, -0.816312, 0.262382,
		12.345660, 14.181279, 21.548670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.556123, 14.744883, 20.887131>,  <11.985456, 14.752698, 21.365002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.556123, 14.744883, 20.887131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559974, 14.371369, 21.030214>,  <12.562284, 14.147262, 21.116064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559974, 14.371369, 21.030214>,  <12.556123, 14.744883, 20.887131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559974, 14.371369, 21.030214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376967, -0.327944, -0.866227,
		0.926177, 0.143183, 0.348848,
		0.009627, -0.933783, 0.357709,
		12.562861, 14.091234, 21.137527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251208, 14.459091, 20.768188>,  <12.556123, 14.744883, 20.887131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251208, 14.459091, 20.768188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022539, 14.131790, 20.792364>,  <12.885338, 13.935410, 20.806870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022539, 14.131790, 20.792364>,  <13.251208, 14.459091, 20.768188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022539, 14.131790, 20.792364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415058, -0.351948, -0.838964,
		0.707755, -0.454527, 0.540821,
		-0.571673, -0.818253, 0.060437,
		12.851037, 13.886314, 20.810495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608339, 13.863356, 20.382122>,  <13.251208, 14.459091, 20.768188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608339, 13.863356, 20.382122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228884, 13.748607, 20.435471>,  <13.001210, 13.679757, 20.467480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228884, 13.748607, 20.435471>,  <13.608339, 13.863356, 20.382122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228884, 13.748607, 20.435471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062085, -0.582196, -0.810675,
		0.310207, -0.760758, 0.570105,
		-0.948640, -0.286872, 0.133370,
		12.944292, 13.662545, 20.475481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598169, 13.116922, 20.185181>,  <13.608339, 13.863356, 20.382122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598169, 13.116922, 20.185181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214866, 13.223363, 20.143360>,  <12.984883, 13.287228, 20.118267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214866, 13.223363, 20.143360>,  <13.598169, 13.116922, 20.185181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214866, 13.223363, 20.143360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010358, -0.397763, -0.917430,
		-0.285717, -0.878052, 0.383916,
		-0.958258, 0.266102, -0.104552,
		12.927388, 13.303193, 20.111994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179448, 12.536180, 19.881342>,  <13.598169, 13.116922, 20.185181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179448, 12.536180, 19.881342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963639, 12.863439, 19.801788>,  <12.834154, 13.059793, 19.754057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963639, 12.863439, 19.801788>,  <13.179448, 12.536180, 19.881342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963639, 12.863439, 19.801788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226955, -0.368782, -0.901383,
		-0.810806, -0.441179, 0.384648,
		-0.539522, 0.818145, -0.198883,
		12.801783, 13.108882, 19.742123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440880, 12.381075, 19.655874>,  <13.179448, 12.536180, 19.881342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440880, 12.381075, 19.655874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.525386, 12.746490, 19.516840>,  <12.576090, 12.965739, 19.433420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.525386, 12.746490, 19.516840>,  <12.440880, 12.381075, 19.655874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525386, 12.746490, 19.516840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295922, -0.279142, -0.913515,
		-0.931557, 0.295852, 0.211363,
		0.211265, 0.913538, -0.347586,
		12.588765, 13.020552, 19.412565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.961065, 12.455796, 19.246206>,  <12.440880, 12.381075, 19.655874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.961065, 12.455796, 19.246206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.186790, 12.750992, 19.098194>,  <12.322226, 12.928109, 19.009386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.186790, 12.750992, 19.098194>,  <11.961065, 12.455796, 19.246206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.186790, 12.750992, 19.098194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321249, -0.216595, -0.921892,
		-0.760493, 0.639108, 0.114850,
		0.564313, 0.737988, -0.370032,
		12.356085, 12.972388, 18.987185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509280, 12.717893, 18.732128>,  <11.961065, 12.455796, 19.246206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509280, 12.717893, 18.732128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881755, 12.847515, 18.665340>,  <12.105240, 12.925288, 18.625269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881755, 12.847515, 18.665340>,  <11.509280, 12.717893, 18.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881755, 12.847515, 18.665340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115416, -0.172381, -0.978245,
		-0.345788, 0.930200, -0.123117,
		0.931187, 0.324056, -0.166968,
		12.161111, 12.944732, 18.615250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.483653, 13.167254, 18.123957>,  <11.509280, 12.717893, 18.732128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.483653, 13.167254, 18.123957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867754, 13.068053, 18.175196>,  <12.098215, 13.008533, 18.205938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867754, 13.068053, 18.175196>,  <11.483653, 13.167254, 18.123957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867754, 13.068053, 18.175196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031481, -0.359763, -0.932513,
		0.277350, 0.899481, -0.337656,
		0.960253, -0.248003, 0.128097,
		12.155830, 12.993652, 18.213625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.876007, 13.445655, 17.554113>,  <11.483653, 13.167254, 18.123957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.876007, 13.445655, 17.554113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103315, 13.146810, 17.692034>,  <12.239700, 12.967503, 17.774786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103315, 13.146810, 17.692034>,  <11.876007, 13.445655, 17.554113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.103315, 13.146810, 17.692034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083500, -0.364515, -0.927446,
		0.818593, 0.555832, -0.144760,
		0.568272, -0.747114, 0.344801,
		12.273797, 12.922675, 17.795475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.528368, 13.367364, 17.182180>,  <11.876007, 13.445655, 17.554113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.528368, 13.367364, 17.182180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.517203, 12.999877, 17.339752>,  <12.510505, 12.779385, 17.434296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.517203, 12.999877, 17.339752>,  <12.528368, 13.367364, 17.182180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.517203, 12.999877, 17.339752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163015, -0.392990, -0.904978,
		0.986229, 0.038956, 0.160734,
		-0.027912, -0.918717, 0.393929,
		12.508830, 12.724262, 17.457932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074566, 13.066492, 16.931755>,  <12.528368, 13.367364, 17.182180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074566, 13.066492, 16.931755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903037, 12.729237, 17.061512>,  <12.800119, 12.526883, 17.139366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903037, 12.729237, 17.061512>,  <13.074566, 13.066492, 16.931755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903037, 12.729237, 17.061512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155714, -0.422693, -0.892796,
		0.889868, -0.332338, 0.312548,
		-0.428822, -0.843138, 0.324391,
		12.774390, 12.476295, 17.158829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506429, 12.616918, 16.727417>,  <13.074566, 13.066492, 16.931755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506429, 12.616918, 16.727417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182368, 12.390707, 16.789169>,  <12.987932, 12.254981, 16.826221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182368, 12.390707, 16.789169>,  <13.506429, 12.616918, 16.727417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182368, 12.390707, 16.789169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199450, -0.513549, -0.834558,
		0.551248, -0.645327, 0.528847,
		-0.810152, -0.565526, 0.154382,
		12.939322, 12.221049, 16.835484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758451, 11.850406, 16.640610>,  <13.506429, 12.616918, 16.727417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758451, 11.850406, 16.640610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372708, 11.877581, 16.538317>,  <13.141262, 11.893886, 16.476940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372708, 11.877581, 16.538317>,  <13.758451, 11.850406, 16.640610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372708, 11.877581, 16.538317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175891, -0.557442, -0.811370,
		-0.197678, -0.827432, 0.525623,
		-0.964357, 0.067938, -0.255732,
		13.083401, 11.897963, 16.461597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472555, 11.988514, 16.652092>,  <13.758451, 11.850406, 16.640610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472555, 11.988514, 16.652092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806398, 11.878143, 16.842794>,  <15.006704, 11.811921, 16.957216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806398, 11.878143, 16.842794>,  <14.472555, 11.988514, 16.652092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806398, 11.878143, 16.842794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246459, 0.586982, 0.771174,
		-0.492634, -0.761128, 0.421895,
		0.834608, -0.275927, 0.476754,
		15.056781, 11.795365, 16.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.291051, 12.005685, 17.308140>,  <14.472555, 11.988514, 16.652092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.291051, 12.005685, 17.308140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.688975, 12.045042, 17.297800>,  <14.927731, 12.068657, 17.291595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.688975, 12.045042, 17.297800>,  <14.291051, 12.005685, 17.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688975, 12.045042, 17.297800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044425, 0.648763, 0.759693,
		0.091520, -0.754603, 0.649768,
		0.994812, 0.098393, -0.025852,
		14.987419, 12.074560, 17.290045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432590, 12.032836, 18.018513>,  <14.291051, 12.005685, 17.308140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432590, 12.032836, 18.018513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783094, 12.150530, 17.865885>,  <14.993397, 12.221147, 17.774307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783094, 12.150530, 17.865885>,  <14.432590, 12.032836, 18.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783094, 12.150530, 17.865885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187562, 0.521153, 0.832598,
		0.443834, -0.801140, 0.401479,
		0.876260, 0.294233, -0.381569,
		15.045972, 12.238800, 17.751413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000100, 11.945568, 18.461012>,  <14.432590, 12.032836, 18.018513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000100, 11.945568, 18.461012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158847, 12.222269, 18.219690>,  <15.254095, 12.388289, 18.074898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158847, 12.222269, 18.219690>,  <15.000100, 11.945568, 18.461012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158847, 12.222269, 18.219690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274278, 0.537877, 0.797157,
		0.875939, -0.481838, 0.023732,
		0.396865, 0.691752, -0.603305,
		15.277906, 12.429794, 18.038698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571903, 12.014347, 18.665892>,  <15.000100, 11.945568, 18.461012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571903, 12.014347, 18.665892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478129, 12.360881, 18.489481>,  <15.421865, 12.568801, 18.383635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478129, 12.360881, 18.489481>,  <15.571903, 12.014347, 18.665892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478129, 12.360881, 18.489481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279811, 0.494607, 0.822843,
		0.930992, 0.069499, -0.358363,
		-0.234435, 0.866333, -0.441029,
		15.407799, 12.620781, 18.357172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156200, 12.592310, 18.805668>,  <15.571903, 12.014347, 18.665892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156200, 12.592310, 18.805668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.818081, 12.783604, 18.710367>,  <15.615210, 12.898380, 18.653187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.818081, 12.783604, 18.710367>,  <16.156200, 12.592310, 18.805668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.818081, 12.783604, 18.710367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209471, 0.706846, 0.675641,
		0.491522, 0.521211, -0.697671,
		-0.845298, 0.478234, -0.238252,
		15.564491, 12.927073, 18.638891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368464, 13.312450, 18.892723>,  <16.156200, 12.592310, 18.805668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368464, 13.312450, 18.892723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969424, 13.326397, 18.868776>,  <15.730000, 13.334764, 18.854408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969424, 13.326397, 18.868776>,  <16.368464, 13.312450, 18.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969424, 13.326397, 18.868776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015687, 0.728016, 0.685381,
		0.067481, 0.684673, -0.725720,
		-0.997597, 0.034866, -0.059868,
		15.670145, 13.336857, 18.850817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139521, 14.100801, 18.772018>,  <16.368464, 13.312450, 18.892723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139521, 14.100801, 18.772018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840806, 13.887815, 18.931412>,  <15.661577, 13.760024, 19.027048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840806, 13.887815, 18.931412>,  <16.139521, 14.100801, 18.772018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840806, 13.887815, 18.931412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015707, 0.584881, 0.810967,
		-0.664877, 0.611879, -0.428418,
		-0.746788, -0.532464, 0.398485,
		15.616770, 13.728076, 19.050957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595144, 14.585872, 18.997055>,  <16.139521, 14.100801, 18.772018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595144, 14.585872, 18.997055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520872, 14.243581, 19.190241>,  <15.476309, 14.038206, 19.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520872, 14.243581, 19.190241>,  <15.595144, 14.585872, 18.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520872, 14.243581, 19.190241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041007, 0.497833, 0.866303,
		-0.981754, 0.141050, -0.127528,
		-0.185680, -0.855726, 0.482965,
		15.465168, 13.986863, 19.335131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112963, 14.781552, 19.583582>,  <15.595144, 14.585872, 18.997055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112963, 14.781552, 19.583582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249662, 14.420782, 19.689213>,  <15.331682, 14.204320, 19.752592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249662, 14.420782, 19.689213>,  <15.112963, 14.781552, 19.583582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249662, 14.420782, 19.689213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071770, 0.255127, 0.964240,
		-0.937047, -0.348480, 0.022458,
		0.341749, -0.901927, 0.264077,
		15.352187, 14.150204, 19.768436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668869, 14.566018, 20.101974>,  <15.112963, 14.781552, 19.583582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668869, 14.566018, 20.101974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010725, 14.363103, 20.146246>,  <15.215838, 14.241354, 20.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010725, 14.363103, 20.146246>,  <14.668869, 14.566018, 20.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010725, 14.363103, 20.146246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052798, 0.296968, 0.953427,
		-0.516530, -0.808993, 0.280584,
		0.854640, -0.507288, 0.110680,
		15.267117, 14.210917, 20.179449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548002, 14.151901, 20.706232>,  <14.668869, 14.566018, 20.101974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548002, 14.151901, 20.706232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945835, 14.161752, 20.665836>,  <15.184535, 14.167663, 20.641600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945835, 14.161752, 20.665836>,  <14.548002, 14.151901, 20.706232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945835, 14.161752, 20.665836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098710, 0.080746, 0.991835,
		0.032580, -0.996430, 0.077878,
		0.994582, 0.024627, -0.100989,
		15.244210, 14.169140, 20.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823530, 13.619433, 21.225777>,  <14.548002, 14.151901, 20.706232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823530, 13.619433, 21.225777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073081, 13.920805, 21.142714>,  <15.222812, 14.101628, 21.092875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073081, 13.920805, 21.142714>,  <14.823530, 13.619433, 21.225777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073081, 13.920805, 21.142714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098232, 0.188006, 0.977243,
		0.775325, -0.630078, 0.043282,
		0.623876, 0.753430, -0.207659,
		15.260244, 14.146833, 21.080416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504256, 13.474372, 21.571278>,  <14.823530, 13.619433, 21.225777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504256, 13.474372, 21.571278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417474, 13.861615, 21.521166>,  <15.365404, 14.093962, 21.491098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417474, 13.861615, 21.521166>,  <15.504256, 13.474372, 21.571278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417474, 13.861615, 21.521166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104511, 0.150634, 0.983050,
		0.970571, 0.200187, -0.133859,
		-0.216957, 0.968109, -0.125280,
		15.352386, 14.152048, 21.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935162, 13.841518, 22.065432>,  <15.504256, 13.474372, 21.571278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935162, 13.841518, 22.065432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675648, 14.130909, 21.971062>,  <15.519939, 14.304543, 21.914440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675648, 14.130909, 21.971062>,  <15.935162, 13.841518, 22.065432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675648, 14.130909, 21.971062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121077, 0.404220, 0.906613,
		0.751278, 0.559632, -0.349848,
		-0.648785, 0.723477, -0.235923,
		15.481012, 14.347952, 21.900284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254438, 14.355439, 22.449757>,  <15.935162, 13.841518, 22.065432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254438, 14.355439, 22.449757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893621, 14.490245, 22.341871>,  <15.677132, 14.571128, 22.277140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893621, 14.490245, 22.341871>,  <16.254438, 14.355439, 22.449757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893621, 14.490245, 22.341871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082055, 0.479568, 0.873660,
		0.423781, 0.810208, -0.404936,
		-0.902040, 0.337014, -0.269714,
		15.623010, 14.591349, 22.260958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139034, 15.089743, 22.707390>,  <16.254438, 14.355439, 22.449757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139034, 15.089743, 22.707390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774017, 14.932906, 22.660866>,  <15.555007, 14.838804, 22.632952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774017, 14.932906, 22.660866>,  <16.139034, 15.089743, 22.707390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774017, 14.932906, 22.660866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228868, 0.253890, 0.939766,
		-0.338945, 0.884197, -0.321423,
		-0.912544, -0.392092, -0.116309,
		15.500255, 14.815278, 22.625973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680993, 15.561753, 22.836296>,  <16.139034, 15.089743, 22.707390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680993, 15.561753, 22.836296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469446, 15.226847, 22.891840>,  <15.342518, 15.025903, 22.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469446, 15.226847, 22.891840>,  <15.680993, 15.561753, 22.836296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469446, 15.226847, 22.891840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272530, 0.322486, 0.906493,
		-0.803757, 0.441572, -0.398733,
		-0.528868, -0.837268, 0.138859,
		15.310786, 14.975666, 22.933498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173721, 15.874315, 23.133518>,  <15.680993, 15.561753, 22.836296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173721, 15.874315, 23.133518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102580, 15.487279, 23.205223>,  <15.059896, 15.255057, 23.248245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102580, 15.487279, 23.205223>,  <15.173721, 15.874315, 23.133518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102580, 15.487279, 23.205223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186127, 0.211955, 0.959391,
		-0.966295, 0.137265, -0.217792,
		-0.177853, -0.967592, 0.179263,
		15.049224, 15.197001, 23.259003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583220, 15.901931, 23.510643>,  <15.173721, 15.874315, 23.133518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583220, 15.901931, 23.510643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800102, 15.580840, 23.609953>,  <14.930232, 15.388186, 23.669538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800102, 15.580840, 23.609953>,  <14.583220, 15.901931, 23.510643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800102, 15.580840, 23.609953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183823, 0.174997, 0.967257,
		-0.819891, -0.570091, -0.052676,
		0.542206, -0.802728, 0.248275,
		14.962764, 15.340022, 23.684435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144307, 15.575603, 23.952593>,  <14.583220, 15.901931, 23.510643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144307, 15.575603, 23.952593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491303, 15.391984, 24.029257>,  <14.699501, 15.281813, 24.075254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491303, 15.391984, 24.029257>,  <14.144307, 15.575603, 23.952593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491303, 15.391984, 24.029257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187973, 0.054223, 0.980676,
		-0.460571, -0.886755, -0.039251,
		0.867491, -0.459048, 0.191659,
		14.751551, 15.254270, 24.086754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995519, 15.109615, 24.495579>,  <14.144307, 15.575603, 23.952593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995519, 15.109615, 24.495579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391063, 15.167221, 24.510639>,  <14.628389, 15.201785, 24.519674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391063, 15.167221, 24.510639>,  <13.995519, 15.109615, 24.495579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391063, 15.167221, 24.510639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054761, 0.116772, 0.991648,
		0.138429, -0.982660, 0.123358,
		0.988857, 0.144028, 0.037647,
		14.687720, 15.210425, 24.521935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213651, 14.534210, 24.886921>,  <13.995519, 15.109615, 24.495579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213651, 14.534210, 24.886921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484485, 14.827857, 24.907427>,  <14.646985, 15.004045, 24.919731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484485, 14.827857, 24.907427>,  <14.213651, 14.534210, 24.886921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484485, 14.827857, 24.907427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148695, 0.068251, 0.986525,
		0.720727, -0.675583, 0.155371,
		0.677084, 0.734118, 0.051265,
		14.687610, 15.048092, 24.922806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657499, 14.432810, 25.518555>,  <14.213651, 14.534210, 24.886921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657499, 14.432810, 25.518555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.778629, 14.809715, 25.461370>,  <14.851307, 15.035858, 25.427059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.778629, 14.809715, 25.461370>,  <14.657499, 14.432810, 25.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.778629, 14.809715, 25.461370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100130, 0.180628, 0.978441,
		0.947772, -0.281981, 0.149048,
		0.302824, 0.942263, -0.142960,
		14.869476, 15.092394, 25.418482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234946, 14.633058, 25.974335>,  <14.657499, 14.432810, 25.518555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234946, 14.633058, 25.974335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068481, 14.984620, 25.881096>,  <14.968602, 15.195558, 25.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068481, 14.984620, 25.881096>,  <15.234946, 14.633058, 25.974335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068481, 14.984620, 25.881096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004104, 0.254532, 0.967056,
		0.909281, 0.403408, -0.102320,
		-0.416162, 0.878906, -0.233097,
		14.943633, 15.248292, 25.811167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621321, 15.142544, 26.324604>,  <15.234946, 14.633058, 25.974335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621321, 15.142544, 26.324604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.253438, 15.290571, 26.272163>,  <15.032708, 15.379388, 26.240700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.253438, 15.290571, 26.272163>,  <15.621321, 15.142544, 26.324604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.253438, 15.290571, 26.272163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024490, 0.279196, 0.959922,
		0.391839, 0.886058, -0.247716,
		-0.919708, 0.370068, -0.131100,
		14.977526, 15.401591, 26.232834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616227, 15.926270, 26.664238>,  <15.621321, 15.142544, 26.324604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616227, 15.926270, 26.664238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251654, 15.763330, 26.641071>,  <15.032909, 15.665566, 26.627171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251654, 15.763330, 26.641071>,  <15.616227, 15.926270, 26.664238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251654, 15.763330, 26.641071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187138, 0.285055, 0.940065,
		-0.366424, 0.867647, -0.336039,
		-0.911434, -0.407348, -0.057919,
		14.978224, 15.641126, 26.623695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113471, 16.416561, 26.816154>,  <15.616227, 15.926270, 26.664238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113471, 16.416561, 26.816154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960617, 16.059267, 26.910896>,  <14.868905, 15.844891, 26.967741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960617, 16.059267, 26.910896>,  <15.113471, 16.416561, 26.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960617, 16.059267, 26.910896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138044, 0.308609, 0.941119,
		-0.913738, 0.326937, -0.241236,
		-0.382135, -0.893237, 0.236856,
		14.845977, 15.791296, 26.981953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524976, 16.636744, 27.152231>,  <15.113471, 16.416561, 26.816154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524976, 16.636744, 27.152231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614409, 16.257164, 27.241230>,  <14.668070, 16.029415, 27.294628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614409, 16.257164, 27.241230>,  <14.524976, 16.636744, 27.152231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614409, 16.257164, 27.241230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013288, 0.225285, 0.974202,
		-0.974594, -0.220773, 0.037761,
		0.223585, -0.948950, 0.222495,
		14.681485, 15.972479, 27.307978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008063, 16.425476, 27.533268>,  <14.524976, 16.636744, 27.152231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008063, 16.425476, 27.533268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311644, 16.185932, 27.635532>,  <14.493792, 16.042206, 27.696892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311644, 16.185932, 27.635532>,  <14.008063, 16.425476, 27.533268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.311644, 16.185932, 27.635532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127024, 0.248924, 0.960157,
		-0.638639, -0.761187, 0.112852,
		0.758950, -0.598859, 0.255662,
		14.539329, 16.006275, 27.712231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.796385, 15.988181, 28.026232>,  <14.008063, 16.425476, 27.533268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.796385, 15.988181, 28.026232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186703, 15.919419, 28.080301>,  <14.420894, 15.878162, 28.112743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186703, 15.919419, 28.080301>,  <13.796385, 15.988181, 28.026232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186703, 15.919419, 28.080301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111271, 0.141834, 0.983617,
		-0.188263, -0.974849, 0.119273,
		0.975795, -0.171906, 0.135175,
		14.479442, 15.867847, 28.120853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865149, 15.459797, 28.564964>,  <13.796385, 15.988181, 28.026232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865149, 15.459797, 28.564964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216296, 15.651350, 28.566639>,  <14.426985, 15.766282, 28.567644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216296, 15.651350, 28.566639>,  <13.865149, 15.459797, 28.564964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216296, 15.651350, 28.566639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004638, -0.017238, 0.999841,
		0.478880, -0.877709, -0.017354,
		0.877868, 0.478884, 0.004184,
		14.479656, 15.795015, 28.567894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.307272, 15.146865, 29.156054>,  <13.865149, 15.459797, 28.564964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.307272, 15.146865, 29.156054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497193, 15.488136, 29.069662>,  <14.611146, 15.692900, 29.017828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497193, 15.488136, 29.069662>,  <14.307272, 15.146865, 29.156054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497193, 15.488136, 29.069662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176985, 0.147828, 0.973049,
		0.862112, -0.500232, -0.080811,
		0.474804, 0.853180, -0.215978,
		14.639634, 15.744090, 29.004869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016055, 15.068559, 29.250238>,  <14.307272, 15.146865, 29.156054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016055, 15.068559, 29.250238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932134, 15.456719, 29.298073>,  <14.881781, 15.689616, 29.326775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932134, 15.456719, 29.298073>,  <15.016055, 15.068559, 29.250238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932134, 15.456719, 29.298073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247012, -0.065736, 0.966780,
		0.946027, 0.232374, -0.225909,
		-0.209804, 0.970403, 0.119588,
		14.869192, 15.747840, 29.333948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735195, 15.382753, 29.439352>,  <15.016055, 15.068559, 29.250238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735195, 15.382753, 29.439352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425258, 15.613585, 29.542580>,  <15.239295, 15.752083, 29.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425258, 15.613585, 29.542580>,  <15.735195, 15.382753, 29.439352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425258, 15.613585, 29.542580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374269, 0.089786, 0.922963,
		0.509451, 0.811739, -0.285552,
		-0.774844, 0.577078, 0.258067,
		15.192804, 15.786708, 29.619999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038269, 15.996642, 29.172436>,  <15.735195, 15.382753, 29.439352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038269, 15.996642, 29.172436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061062, 16.393917, 29.131777>,  <16.074738, 16.632282, 29.107382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061062, 16.393917, 29.131777>,  <16.038269, 15.996642, 29.172436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061062, 16.393917, 29.131777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400429, 0.115999, 0.908956,
		0.914554, -0.011094, 0.404311,
		0.056983, 0.993187, -0.101645,
		16.078157, 16.691874, 29.101284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247520, 16.218277, 29.830238>,  <16.038269, 15.996642, 29.172436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247520, 16.218277, 29.830238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058054, 16.527107, 29.660751>,  <15.944374, 16.712406, 29.559059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058054, 16.527107, 29.660751>,  <16.247520, 16.218277, 29.830238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058054, 16.527107, 29.660751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536218, 0.128836, 0.834189,
		0.698649, 0.622332, 0.352976,
		-0.473667, 0.772078, -0.423717,
		15.915954, 16.758730, 29.533636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206099, 16.724068, 30.375177>,  <16.247520, 16.218277, 29.830238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206099, 16.724068, 30.375177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937825, 16.772717, 30.082495>,  <15.776861, 16.801907, 29.906885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937825, 16.772717, 30.082495>,  <16.206099, 16.724068, 30.375177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.937825, 16.772717, 30.082495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739839, -0.039024, 0.671651,
		0.053133, 0.991809, 0.116154,
		-0.670683, 0.121622, -0.731705,
		15.736620, 16.809204, 29.862984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529156, 17.223049, 29.995808>,  <16.206099, 16.724068, 30.375177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529156, 17.223049, 29.995808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643852, 17.598789, 30.071070>,  <16.712671, 17.824232, 30.116228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643852, 17.598789, 30.071070>,  <16.529156, 17.223049, 29.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643852, 17.598789, 30.071070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069274, 0.175559, -0.982029,
		-0.955500, 0.294625, -0.014732,
		0.286743, 0.939348, 0.188156,
		16.729876, 17.880594, 30.127516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059002, 17.591049, 29.661898>,  <16.529156, 17.223049, 29.995808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059002, 17.591049, 29.661898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366371, 17.841953, 29.712603>,  <16.550793, 17.992496, 29.743025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366371, 17.841953, 29.712603>,  <16.059002, 17.591049, 29.661898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366371, 17.841953, 29.712603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055222, 0.132352, -0.989663,
		-0.637555, 0.767480, 0.067064,
		0.768423, 0.627262, 0.126763,
		16.596897, 18.030132, 29.750631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911684, 18.199511, 29.237032>,  <16.059002, 17.591049, 29.661898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911684, 18.199511, 29.237032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304480, 18.183264, 29.310841>,  <16.540157, 18.173515, 29.355125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304480, 18.183264, 29.310841>,  <15.911684, 18.199511, 29.237032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304480, 18.183264, 29.310841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188730, 0.164822, -0.968099,
		0.008910, 0.985487, 0.169519,
		0.981989, -0.040619, 0.184522,
		16.599075, 18.171078, 29.366198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176556, 18.689407, 28.876495>,  <15.911684, 18.199511, 29.237032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176556, 18.689407, 28.876495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518099, 18.489136, 28.933411>,  <16.723024, 18.368973, 28.967560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518099, 18.489136, 28.933411>,  <16.176556, 18.689407, 28.876495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518099, 18.489136, 28.933411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153274, -0.019384, -0.987993,
		0.497427, 0.865415, 0.060191,
		0.853858, -0.500680, 0.142288,
		16.774256, 18.338932, 28.976097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709064, 19.025946, 28.496687>,  <16.176556, 18.689407, 28.876495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709064, 19.025946, 28.496687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853476, 18.654207, 28.527596>,  <16.940123, 18.431164, 28.546141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853476, 18.654207, 28.527596>,  <16.709064, 19.025946, 28.496687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853476, 18.654207, 28.527596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299406, 0.037041, -0.953407,
		0.883185, 0.367342, 0.291625,
		0.361028, -0.929348, 0.077270,
		16.961784, 18.375402, 28.550777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364185, 19.049988, 28.226795>,  <16.709064, 19.025946, 28.496687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364185, 19.049988, 28.226795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234148, 18.671761, 28.232662>,  <17.156126, 18.444824, 28.236183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234148, 18.671761, 28.232662>,  <17.364185, 19.049988, 28.226795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234148, 18.671761, 28.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104515, -0.051341, -0.993197,
		0.939888, -0.321351, 0.115517,
		-0.325095, -0.945568, 0.014668,
		17.136620, 18.388090, 28.237062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851587, 18.546793, 27.871454>,  <17.364185, 19.049988, 28.226795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851587, 18.546793, 27.871454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503807, 18.349491, 27.882486>,  <17.295139, 18.231110, 27.889107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503807, 18.349491, 27.882486>,  <17.851587, 18.546793, 27.871454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503807, 18.349491, 27.882486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051767, -0.146489, -0.987857,
		0.491304, -0.857463, 0.152899,
		-0.869449, -0.493253, 0.027582,
		17.242973, 18.201515, 27.890760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989010, 18.098215, 27.394350>,  <17.851587, 18.546793, 27.871454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989010, 18.098215, 27.394350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593342, 18.055197, 27.434303>,  <17.355942, 18.029387, 27.458275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593342, 18.055197, 27.434303>,  <17.989010, 18.098215, 27.394350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593342, 18.055197, 27.434303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089095, -0.100844, -0.990905,
		0.116640, -0.989073, 0.090170,
		-0.989170, -0.107545, 0.099883,
		17.296591, 18.022934, 27.464268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827900, 17.487000, 26.988646>,  <17.989010, 18.098215, 27.394350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827900, 17.487000, 26.988646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498270, 17.704453, 27.052345>,  <17.300491, 17.834925, 27.090565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498270, 17.704453, 27.052345>,  <17.827900, 17.487000, 26.988646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498270, 17.704453, 27.052345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315043, -0.206188, -0.926410,
		-0.470793, -0.813602, 0.341183,
		-0.824076, 0.543635, 0.159248,
		17.251047, 17.867542, 27.100121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316486, 17.072338, 26.765779>,  <17.827900, 17.487000, 26.988646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316486, 17.072338, 26.765779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162983, 17.441711, 26.766417>,  <17.070881, 17.663336, 26.766798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162983, 17.441711, 26.766417>,  <17.316486, 17.072338, 26.765779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162983, 17.441711, 26.766417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291248, -0.119400, -0.949167,
		-0.876301, -0.364717, 0.314769,
		-0.383761, 0.923432, 0.001593,
		17.047855, 17.718740, 26.766895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712429, 16.914827, 26.405197>,  <17.316486, 17.072338, 26.765779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712429, 16.914827, 26.405197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772419, 17.309410, 26.378632>,  <16.808413, 17.546160, 26.362692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772419, 17.309410, 26.378632>,  <16.712429, 16.914827, 26.405197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772419, 17.309410, 26.378632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078204, -0.055129, -0.995412,
		-0.985592, 0.154480, 0.068877,
		0.149974, 0.986457, -0.066415,
		16.817411, 17.605347, 26.358707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161369, 17.370495, 26.087063>,  <16.712429, 16.914827, 26.405197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161369, 17.370495, 26.087063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499794, 17.571117, 26.014822>,  <16.702848, 17.691490, 25.971478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499794, 17.571117, 26.014822>,  <16.161369, 17.370495, 26.087063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499794, 17.571117, 26.014822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176046, -0.056899, -0.982736,
		-0.503174, 0.863251, 0.040156,
		0.846064, 0.501557, -0.180602,
		16.753613, 17.721584, 25.960642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009272, 17.994898, 25.586519>,  <16.161369, 17.370495, 26.087063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009272, 17.994898, 25.586519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389990, 17.872206, 25.585550>,  <16.618420, 17.798592, 25.584969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389990, 17.872206, 25.585550>,  <16.009272, 17.994898, 25.586519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389990, 17.872206, 25.585550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015358, -0.039767, -0.999091,
		0.306353, 0.950966, -0.042561,
		0.951794, -0.306728, -0.002422,
		16.675528, 17.780188, 25.584824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447943, 18.424187, 25.099379>,  <16.009272, 17.994898, 25.586519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447943, 18.424187, 25.099379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604664, 18.058260, 25.138575>,  <16.698696, 17.838703, 25.162092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604664, 18.058260, 25.138575>,  <16.447943, 18.424187, 25.099379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604664, 18.058260, 25.138575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139515, -0.046201, -0.989142,
		0.909410, 0.401218, 0.109529,
		0.391801, -0.914817, 0.097992,
		16.722204, 17.783815, 25.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059685, 18.429607, 24.684940>,  <16.447943, 18.424187, 25.099379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059685, 18.429607, 24.684940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.962317, 18.045376, 24.738661>,  <16.903894, 17.814837, 24.770893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.962317, 18.045376, 24.738661>,  <17.059685, 18.429607, 24.684940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962317, 18.045376, 24.738661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285698, -0.203333, -0.936500,
		0.926888, -0.189595, 0.323931,
		-0.243422, -0.960578, 0.134300,
		16.889290, 17.757202, 24.778952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530233, 18.068447, 24.432238>,  <17.059685, 18.429607, 24.684940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530233, 18.068447, 24.432238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244896, 17.788124, 24.431065>,  <17.073694, 17.619930, 24.430361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244896, 17.788124, 24.431065>,  <17.530233, 18.068447, 24.432238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244896, 17.788124, 24.431065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254354, -0.255001, -0.932887,
		0.653028, -0.666214, 0.360157,
		-0.713343, -0.700809, -0.002931,
		17.030893, 17.577881, 24.430185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870432, 17.531212, 24.156527>,  <17.530233, 18.068447, 24.432238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870432, 17.531212, 24.156527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478022, 17.459360, 24.127356>,  <17.242575, 17.416250, 24.109854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478022, 17.459360, 24.127356>,  <17.870432, 17.531212, 24.156527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478022, 17.459360, 24.127356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114352, -0.232389, -0.965877,
		0.156552, -0.955891, 0.248521,
		-0.981028, -0.179629, -0.072927,
		17.183714, 17.405472, 24.105478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848362, 16.905388, 23.865208>,  <17.870432, 17.531212, 24.156527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848362, 16.905388, 23.865208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501673, 17.091454, 23.793198>,  <17.293659, 17.203093, 23.749992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501673, 17.091454, 23.793198>,  <17.848362, 16.905388, 23.865208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501673, 17.091454, 23.793198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018930, -0.391342, -0.920051,
		-0.498428, -0.794023, 0.347991,
		-0.866724, 0.465166, -0.180025,
		17.241655, 17.231003, 23.739191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372395, 16.371668, 23.644318>,  <17.848362, 16.905388, 23.865208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372395, 16.371668, 23.644318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209621, 16.714090, 23.516836>,  <17.111958, 16.919544, 23.440348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209621, 16.714090, 23.516836>,  <17.372395, 16.371668, 23.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209621, 16.714090, 23.516836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363014, -0.471720, -0.803555,
		-0.838229, -0.211298, 0.502719,
		-0.406932, 0.856057, -0.318705,
		17.087542, 16.970907, 23.421225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730558, 16.123327, 23.245529>,  <17.372395, 16.371668, 23.644318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730558, 16.123327, 23.245529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792978, 16.495050, 23.111643>,  <16.830429, 16.718084, 23.031311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792978, 16.495050, 23.111643>,  <16.730558, 16.123327, 23.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792978, 16.495050, 23.111643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275594, -0.284448, -0.918225,
		-0.948524, 0.235533, 0.211724,
		0.156048, 0.929308, -0.334717,
		16.839792, 16.773844, 23.011229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190170, 16.277288, 22.812233>,  <16.730558, 16.123327, 23.245529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190170, 16.277288, 22.812233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483667, 16.523567, 22.697313>,  <16.659765, 16.671333, 22.628361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483667, 16.523567, 22.697313>,  <16.190170, 16.277288, 22.812233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483667, 16.523567, 22.697313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200637, -0.207647, -0.957407,
		-0.649128, 0.760133, -0.028827,
		0.733742, 0.615696, -0.287300,
		16.703791, 16.708277, 22.611124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962333, 16.649969, 22.181683>,  <16.190170, 16.277288, 22.812233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962333, 16.649969, 22.181683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361258, 16.677439, 22.191893>,  <16.600613, 16.693920, 22.198019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361258, 16.677439, 22.191893>,  <15.962333, 16.649969, 22.181683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361258, 16.677439, 22.191893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036330, -0.161009, -0.986284,
		-0.063623, 0.984561, -0.163072,
		0.997313, 0.068674, 0.025525,
		16.660452, 16.698042, 22.199551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099138, 16.929966, 21.537613>,  <15.962333, 16.649969, 22.181683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099138, 16.929966, 21.537613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462305, 16.821280, 21.665276>,  <16.680204, 16.756067, 21.741873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462305, 16.821280, 21.665276>,  <16.099138, 16.929966, 21.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462305, 16.821280, 21.665276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266893, -0.212368, -0.940036,
		0.323201, 0.938654, -0.120293,
		0.907915, -0.271715, 0.319158,
		16.734680, 16.739765, 21.761023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501173, 17.090113, 20.960407>,  <16.099138, 16.929966, 21.537613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501173, 17.090113, 20.960407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.707306, 16.818529, 21.169579>,  <16.830986, 16.655579, 21.295080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.707306, 16.818529, 21.169579>,  <16.501173, 17.090113, 20.960407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707306, 16.818529, 21.169579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384383, -0.362246, -0.849133,
		0.765953, 0.638588, 0.074303,
		0.515331, -0.678957, 0.522926,
		16.861904, 16.614841, 21.326456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047287, 16.906956, 20.590994>,  <16.501173, 17.090113, 20.960407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047287, 16.906956, 20.590994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084747, 16.606892, 20.852831>,  <17.107224, 16.426853, 21.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084747, 16.606892, 20.852831>,  <17.047287, 16.906956, 20.590994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084747, 16.606892, 20.852831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456314, -0.552018, -0.697892,
		0.884877, 0.364059, 0.290610,
		0.093652, -0.750158, 0.654593,
		17.112843, 16.381844, 21.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778034, 16.704330, 20.615318>,  <17.047287, 16.906956, 20.590994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778034, 16.704330, 20.615318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535547, 16.398489, 20.702843>,  <17.390055, 16.214985, 20.755358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535547, 16.398489, 20.702843>,  <17.778034, 16.704330, 20.615318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535547, 16.398489, 20.702843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405436, -0.533814, -0.742067,
		0.684193, -0.361141, 0.633607,
		-0.606219, -0.764604, 0.218812,
		17.353682, 16.169107, 20.768486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237776, 16.131145, 20.693018>,  <17.778034, 16.704330, 20.615318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237776, 16.131145, 20.693018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870655, 15.985408, 20.629904>,  <17.650383, 15.897965, 20.592035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870655, 15.985408, 20.629904>,  <18.237776, 16.131145, 20.693018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870655, 15.985408, 20.629904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346937, -0.542679, -0.764941,
		0.193076, -0.756804, 0.624475,
		-0.917800, -0.364345, -0.157785,
		17.595316, 15.876104, 20.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383862, 15.476004, 20.614048>,  <18.237776, 16.131145, 20.693018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383862, 15.476004, 20.614048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.017324, 15.498547, 20.455482>,  <17.797403, 15.512073, 20.360344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.017324, 15.498547, 20.455482>,  <18.383862, 15.476004, 20.614048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017324, 15.498547, 20.455482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309472, -0.528514, -0.790506,
		-0.254061, -0.847052, 0.466858,
		-0.916341, 0.056358, -0.396413,
		17.742422, 15.515454, 20.336559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262941, 14.849201, 20.459404>,  <18.383862, 15.476004, 20.614048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.262941, 14.849201, 20.459404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.039446, 15.087501, 20.228615>,  <17.905350, 15.230480, 20.090141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.039446, 15.087501, 20.228615>,  <18.262941, 14.849201, 20.459404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.039446, 15.087501, 20.228615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254494, -0.538970, -0.802960,
		-0.789332, -0.595480, 0.149528,
		-0.558737, 0.595748, -0.576972,
		17.871824, 15.266225, 20.055523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919735, 14.376592, 20.043575>,  <18.262941, 14.849201, 20.459404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919735, 14.376592, 20.043575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897436, 14.729695, 19.856974>,  <17.884058, 14.941558, 19.745012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897436, 14.729695, 19.856974>,  <17.919735, 14.376592, 20.043575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897436, 14.729695, 19.856974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208807, -0.446594, -0.870031,
		-0.976367, -0.145910, -0.159431,
		-0.055745, 0.882760, -0.466506,
		17.880713, 14.994523, 19.717022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413261, 14.260260, 19.479536>,  <17.919735, 14.376592, 20.043575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413261, 14.260260, 19.479536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636497, 14.580527, 19.392393>,  <17.770439, 14.772688, 19.340107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636497, 14.580527, 19.392393>,  <17.413261, 14.260260, 19.479536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.636497, 14.580527, 19.392393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087980, -0.318167, -0.943943,
		-0.825103, 0.507639, -0.248009,
		0.558091, 0.800670, -0.217859,
		17.803925, 14.820728, 19.327036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212332, 14.507289, 18.755865>,  <17.413261, 14.260260, 19.479536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212332, 14.507289, 18.755865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565825, 14.687474, 18.806622>,  <17.777920, 14.795586, 18.837074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565825, 14.687474, 18.806622>,  <17.212332, 14.507289, 18.755865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565825, 14.687474, 18.806622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268727, -0.266458, -0.925627,
		-0.383151, 0.852105, -0.356529,
		0.883731, 0.450464, 0.126890,
		17.830944, 14.822614, 18.844688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204287, 14.908376, 18.201954>,  <17.212332, 14.507289, 18.755865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204287, 14.908376, 18.201954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585228, 14.865908, 18.316320>,  <17.813793, 14.840426, 18.384941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585228, 14.865908, 18.316320>,  <17.204287, 14.908376, 18.201954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585228, 14.865908, 18.316320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261840, -0.196112, -0.944976,
		0.156401, 0.974817, -0.158968,
		0.952354, -0.106171, 0.285918,
		17.870934, 14.834057, 18.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574268, 15.282409, 17.689922>,  <17.204287, 14.908376, 18.201954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574268, 15.282409, 17.689922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869076, 15.071902, 17.859554>,  <18.045961, 14.945599, 17.961334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869076, 15.071902, 17.859554>,  <17.574268, 15.282409, 17.689922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869076, 15.071902, 17.859554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404235, -0.159624, -0.900619,
		0.541659, 0.835203, 0.095089,
		0.737021, -0.526266, 0.424080,
		18.090181, 14.914022, 17.986778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110836, 15.494398, 17.370966>,  <17.574268, 15.282409, 17.689922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110836, 15.494398, 17.370966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222475, 15.142344, 17.524572>,  <18.289459, 14.931112, 17.616735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222475, 15.142344, 17.524572>,  <18.110836, 15.494398, 17.370966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222475, 15.142344, 17.524572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294148, -0.302322, -0.906685,
		0.914101, 0.366011, 0.174513,
		0.279098, -0.880135, 0.384015,
		18.306204, 14.878304, 17.639776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.713951, 15.572210, 17.216881>,  <18.110836, 15.494398, 17.370966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.713951, 15.572210, 17.216881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.611805, 15.189468, 17.272327>,  <18.550516, 14.959823, 17.305595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.611805, 15.189468, 17.272327>,  <18.713951, 15.572210, 17.216881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611805, 15.189468, 17.272327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015569, -0.147423, -0.988951,
		0.966719, -0.250387, 0.052545,
		-0.255366, -0.956855, 0.138618,
		18.535194, 14.902411, 17.313913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260580, 15.252135, 16.877779>,  <18.713951, 15.572210, 17.216881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260580, 15.252135, 16.877779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979706, 14.967874, 16.895235>,  <18.811180, 14.797317, 16.905708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979706, 14.967874, 16.895235>,  <19.260580, 15.252135, 16.877779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979706, 14.967874, 16.895235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162777, -0.219904, -0.961845,
		0.693135, -0.668292, 0.270092,
		-0.702187, -0.710653, 0.043641,
		18.769049, 14.754678, 16.908327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566730, 14.579543, 16.730797>,  <19.260580, 15.252135, 16.877779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566730, 14.579543, 16.730797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.179432, 14.585398, 16.630968>,  <18.947052, 14.588911, 16.571072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.179432, 14.585398, 16.630968>,  <19.566730, 14.579543, 16.730797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179432, 14.585398, 16.630968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238014, -0.251419, -0.938157,
		-0.076478, -0.967768, 0.239951,
		-0.968246, 0.014636, -0.249570,
		18.888958, 14.589788, 16.556097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565638, 14.106683, 16.250378>,  <19.566730, 14.579543, 16.730797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565638, 14.106683, 16.250378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208652, 14.277092, 16.191029>,  <18.994461, 14.379337, 16.155418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208652, 14.277092, 16.191029>,  <19.565638, 14.106683, 16.250378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208652, 14.277092, 16.191029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107252, -0.119091, -0.987074,
		-0.438186, -0.896840, 0.060593,
		-0.892463, 0.426024, -0.148372,
		18.940914, 14.404899, 16.146517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080246, 13.547668, 15.936626>,  <19.565638, 14.106683, 16.250378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080246, 13.547668, 15.936626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944199, 13.915148, 15.856315>,  <18.862570, 14.135635, 15.808127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944199, 13.915148, 15.856315>,  <19.080246, 13.547668, 15.936626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944199, 13.915148, 15.856315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145724, -0.262419, -0.953887,
		-0.929024, -0.295175, 0.223129,
		-0.340117, 0.918699, -0.200780,
		18.842163, 14.190758, 15.796081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377037, 13.564566, 15.538599>,  <19.080246, 13.547668, 15.936626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377037, 13.564566, 15.538599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613203, 13.874677, 15.448842>,  <18.754904, 14.060743, 15.394988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613203, 13.874677, 15.448842>,  <18.377037, 13.564566, 15.538599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613203, 13.874677, 15.448842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030146, -0.299013, -0.953773,
		-0.806536, 0.556358, -0.199914,
		0.590416, 0.775279, -0.224393,
		18.790327, 14.107261, 15.381524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071829, 13.978772, 14.932757>,  <18.377037, 13.564566, 15.538599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071829, 13.978772, 14.932757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458469, 14.070029, 14.979468>,  <18.690453, 14.124784, 15.007495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458469, 14.070029, 14.979468>,  <18.071829, 13.978772, 14.932757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458469, 14.070029, 14.979468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106051, 0.058764, -0.992623,
		-0.233321, 0.971853, 0.032606,
		0.966600, 0.228142, 0.116776,
		18.748449, 14.138472, 15.014502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398993, 14.703483, 14.854958>,  <18.071829, 13.978772, 14.932757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398993, 14.703483, 14.854958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626942, 14.399569, 14.729756>,  <18.763712, 14.217220, 14.654635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626942, 14.399569, 14.729756>,  <18.398993, 14.703483, 14.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.626942, 14.399569, 14.729756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094349, 0.317887, -0.943422,
		0.816298, 0.567162, 0.109470,
		0.569873, -0.759786, -0.313002,
		18.797903, 14.171633, 14.635856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068888, 14.961254, 14.618002>,  <18.398993, 14.703483, 14.854958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068888, 14.961254, 14.618002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974051, 14.622643, 14.427348>,  <18.917149, 14.419477, 14.312956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974051, 14.622643, 14.427348>,  <19.068888, 14.961254, 14.618002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974051, 14.622643, 14.427348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125883, 0.513258, -0.848952,
		0.963297, -0.141278, -0.228252,
		-0.237091, -0.846526, -0.476636,
		18.902924, 14.368686, 14.284357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614632, 14.395400, 14.356648>,  <19.068888, 14.961254, 14.618002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614632, 14.395400, 14.356648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986494, 14.338544, 14.220684>,  <20.209612, 14.304430, 14.139106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986494, 14.338544, 14.220684>,  <19.614632, 14.395400, 14.356648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986494, 14.338544, 14.220684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037821, 0.954528, -0.295714,
		0.366486, 0.262056, 0.892757,
		0.929654, -0.142140, -0.339910,
		20.265390, 14.295902, 14.118711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154743, 14.959068, 14.603395>,  <19.614632, 14.395400, 14.356648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154743, 14.959068, 14.603395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231447, 14.795708, 14.246422>,  <20.277470, 14.697691, 14.032238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231447, 14.795708, 14.246422>,  <20.154743, 14.959068, 14.603395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231447, 14.795708, 14.246422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000911, 0.909234, -0.416285,
		0.981441, 0.080640, 0.173982,
		0.191760, -0.408401, -0.892433,
		20.288975, 14.673187, 13.978692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659142, 15.267079, 14.340412>,  <20.154743, 14.959068, 14.603395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659142, 15.267079, 14.340412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.475185, 15.132553, 14.011683>,  <20.364813, 15.051838, 13.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.475185, 15.132553, 14.011683>,  <20.659142, 15.267079, 14.340412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.475185, 15.132553, 14.011683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036789, 0.917491, -0.396052,
		0.887214, -0.212374, -0.409571,
		-0.459888, -0.336315, -0.821824,
		20.337219, 15.031658, 13.765135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937187, 15.670550, 13.847357>,  <20.659142, 15.267079, 14.340412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937187, 15.670550, 13.847357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596689, 15.519439, 13.701666>,  <20.392389, 15.428772, 13.614251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596689, 15.519439, 13.701666>,  <20.937187, 15.670550, 13.847357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596689, 15.519439, 13.701666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179293, 0.861686, -0.474711,
		0.493186, -0.338793, -0.801241,
		-0.851247, -0.377778, -0.364228,
		20.341314, 15.406105, 13.592398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984339, 15.679366, 13.154264>,  <20.937187, 15.670550, 13.847357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984339, 15.679366, 13.154264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594570, 15.699605, 13.241846>,  <20.360708, 15.711748, 13.294394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594570, 15.699605, 13.241846>,  <20.984339, 15.679366, 13.154264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.594570, 15.699605, 13.241846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079211, 0.834458, -0.545349,
		-0.210301, -0.548744, -0.809106,
		-0.974423, 0.050598, 0.218954,
		20.302244, 15.714785, 13.307532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.572422, 15.792729, 12.543959>,  <20.984339, 15.679366, 13.154264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.572422, 15.792729, 12.543959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335243, 15.928019, 12.836265>,  <20.192936, 16.009192, 13.011648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335243, 15.928019, 12.836265>,  <20.572422, 15.792729, 12.543959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335243, 15.928019, 12.836265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242545, 0.790349, -0.562601,
		-0.767844, -0.510837, -0.386602,
		-0.592948, 0.338222, 0.730766,
		20.157358, 16.029486, 13.055494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956688, 16.038679, 12.188654>,  <20.572422, 15.792729, 12.543959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956688, 16.038679, 12.188654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958157, 16.208519, 12.550803>,  <19.959038, 16.310423, 12.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958157, 16.208519, 12.550803>,  <19.956688, 16.038679, 12.188654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958157, 16.208519, 12.550803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256945, 0.875382, -0.409494,
		-0.966419, -0.231128, 0.112312,
		0.003671, 0.424601, 0.905373,
		19.959257, 16.335899, 12.822415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418400, 16.417997, 12.132860>,  <19.956688, 16.038679, 12.188654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418400, 16.417997, 12.132860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658241, 16.592894, 12.400978>,  <19.802147, 16.697832, 12.561849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658241, 16.592894, 12.400978>,  <19.418400, 16.417997, 12.132860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658241, 16.592894, 12.400978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142012, 0.882397, -0.448563,
		-0.787596, 0.173770, 0.591182,
		0.599604, 0.437241, 0.670295,
		19.838123, 16.724066, 12.602067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092970, 17.005659, 12.224792>,  <19.418400, 16.417997, 12.132860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092970, 17.005659, 12.224792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467056, 17.063202, 12.354207>,  <19.691507, 17.097727, 12.431856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467056, 17.063202, 12.354207>,  <19.092970, 17.005659, 12.224792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467056, 17.063202, 12.354207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001352, 0.912287, -0.409548,
		-0.354075, 0.383454, 0.852991,
		0.935216, 0.143857, 0.323537,
		19.747622, 17.106359, 12.451268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200693, 17.752333, 12.426113>,  <19.092970, 17.005659, 12.224792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200693, 17.752333, 12.426113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574995, 17.614252, 12.397284>,  <19.799576, 17.531404, 12.379986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574995, 17.614252, 12.397284>,  <19.200693, 17.752333, 12.426113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574995, 17.614252, 12.397284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321260, 0.918767, -0.229477,
		0.145435, 0.191580, 0.970642,
		0.935757, -0.345202, -0.072074,
		19.855722, 17.510691, 12.375661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646973, 18.296511, 12.676577>,  <19.200693, 17.752333, 12.426113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646973, 18.296511, 12.676577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906092, 18.088491, 12.453897>,  <20.061563, 17.963680, 12.320290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906092, 18.088491, 12.453897>,  <19.646973, 18.296511, 12.676577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906092, 18.088491, 12.453897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505563, 0.840113, -0.196509,
		0.569883, -0.154148, 0.807138,
		0.647796, -0.520046, -0.556698,
		20.100430, 17.932478, 12.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223076, 18.622765, 12.925406>,  <19.646973, 18.296511, 12.676577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223076, 18.622765, 12.925406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290331, 18.451647, 12.570167>,  <20.330685, 18.348976, 12.357022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290331, 18.451647, 12.570167>,  <20.223076, 18.622765, 12.925406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290331, 18.451647, 12.570167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702500, 0.684021, -0.196491,
		0.691536, -0.590852, 0.415537,
		0.168139, -0.427795, -0.888099,
		20.340773, 18.323309, 12.303737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889549, 18.493664, 12.941077>,  <20.223076, 18.622765, 12.925406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889549, 18.493664, 12.941077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791912, 18.506292, 12.553382>,  <20.733330, 18.513870, 12.320765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791912, 18.506292, 12.553382>,  <20.889549, 18.493664, 12.941077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791912, 18.506292, 12.553382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628022, 0.766713, -0.133187,
		0.738922, -0.641213, -0.206977,
		-0.244094, 0.031571, -0.969237,
		20.718683, 18.515764, 12.262610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.540253, 18.554127, 12.577294>,  <20.889549, 18.493664, 12.941077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.540253, 18.554127, 12.577294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275084, 18.622381, 12.285702>,  <21.115982, 18.663334, 12.110746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275084, 18.622381, 12.285702>,  <21.540253, 18.554127, 12.577294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275084, 18.622381, 12.285702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616207, 0.677375, -0.401812,
		0.425229, -0.715574, -0.554197,
		-0.662925, 0.170637, -0.728981,
		21.076206, 18.673573, 12.067007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877930, 18.405172, 12.005884>,  <21.540253, 18.554127, 12.577294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877930, 18.405172, 12.005884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.585924, 18.664158, 11.918364>,  <21.410721, 18.819550, 11.865851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.585924, 18.664158, 11.918364>,  <21.877930, 18.405172, 12.005884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585924, 18.664158, 11.918364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672849, 0.624745, -0.396191,
		-0.119824, -0.436445, -0.891716,
		-0.730011, 0.647464, -0.218802,
		21.366920, 18.858397, 11.852723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861313, 18.489176, 11.286185>,  <21.877930, 18.405172, 12.005884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861313, 18.489176, 11.286185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674860, 18.805845, 11.444159>,  <21.562988, 18.995848, 11.538942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674860, 18.805845, 11.444159>,  <21.861313, 18.489176, 11.286185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674860, 18.805845, 11.444159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652173, 0.609117, -0.451273,
		-0.597821, 0.047211, -0.800238,
		-0.466133, 0.791674, 0.394933,
		21.535021, 19.043348, 11.562638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757618, 19.006742, 10.785621>,  <21.861313, 18.489176, 11.286185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757618, 19.006742, 10.785621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763784, 19.222895, 11.122132>,  <21.767485, 19.352587, 11.324039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763784, 19.222895, 11.122132>,  <21.757618, 19.006742, 10.785621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763784, 19.222895, 11.122132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612558, 0.659897, -0.435097,
		-0.790275, 0.522039, -0.320842,
		0.015415, 0.540380, 0.841280,
		21.768410, 19.385008, 11.374516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866417, 19.618553, 10.486794>,  <21.757618, 19.006742, 10.785621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866417, 19.618553, 10.486794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901915, 19.697037, 10.877409>,  <21.923214, 19.744127, 11.111778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901915, 19.697037, 10.877409>,  <21.866417, 19.618553, 10.486794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901915, 19.697037, 10.877409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647009, 0.734048, -0.206286,
		-0.757300, 0.650136, -0.061805,
		0.088746, 0.196209, 0.976538,
		21.928539, 19.755899, 11.170370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642046, 20.316591, 10.522567>,  <21.866417, 19.618553, 10.486794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642046, 20.316591, 10.522567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.865780, 20.225187, 10.841296>,  <22.000019, 20.170345, 11.032534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.865780, 20.225187, 10.841296>,  <21.642046, 20.316591, 10.522567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865780, 20.225187, 10.841296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426573, 0.903554, -0.040317,
		-0.710761, 0.362455, 0.602864,
		0.559333, -0.228509, 0.796825,
		22.033581, 20.156635, 11.080343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648750, 21.012548, 10.894791>,  <21.642046, 20.316591, 10.522567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648750, 21.012548, 10.894791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944675, 20.807400, 11.068983>,  <22.122231, 20.684311, 11.173498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944675, 20.807400, 11.068983>,  <21.648750, 21.012548, 10.894791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944675, 20.807400, 11.068983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566224, 0.824205, 0.008753,
		-0.363414, 0.240104, 0.900156,
		0.739811, -0.512871, 0.435480,
		22.166618, 20.653538, 11.199627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833347, 21.323717, 11.469072>,  <21.648750, 21.012548, 10.894791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833347, 21.323717, 11.469072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165636, 21.125753, 11.367123>,  <22.365009, 21.006975, 11.305953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165636, 21.125753, 11.367123>,  <21.833347, 21.323717, 11.469072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165636, 21.125753, 11.367123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469211, 0.868867, -0.157833,
		0.299565, 0.011525, 0.954006,
		0.830724, -0.494911, -0.254875,
		22.414854, 20.977280, 11.290660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467081, 21.743948, 11.791419>,  <21.833347, 21.323717, 11.469072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467081, 21.743948, 11.791419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688719, 21.503698, 11.560862>,  <22.821701, 21.359549, 11.422527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688719, 21.503698, 11.560862>,  <22.467081, 21.743948, 11.791419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688719, 21.503698, 11.560862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594286, 0.770262, -0.231346,
		0.582926, -0.214355, 0.783741,
		0.554095, -0.600624, -0.576394,
		22.854948, 21.323511, 11.387943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.131618, 21.803493, 12.056532>,  <22.467081, 21.743948, 11.791419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.131618, 21.803493, 12.056532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163954, 21.696129, 11.672569>,  <23.183355, 21.631710, 11.442192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163954, 21.696129, 11.672569>,  <23.131618, 21.803493, 12.056532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163954, 21.696129, 11.672569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617507, 0.769458, -0.163154,
		0.782400, -0.579560, 0.227948,
		0.080839, -0.268411, -0.959907,
		23.188206, 21.615606, 11.384597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838882, 21.810703, 11.860209>,  <23.131618, 21.803493, 12.056532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838882, 21.810703, 11.860209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672394, 21.844963, 11.498121>,  <23.572500, 21.865519, 11.280869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672394, 21.844963, 11.498121>,  <23.838882, 21.810703, 11.860209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672394, 21.844963, 11.498121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574593, 0.796354, -0.188848,
		0.704701, -0.598736, -0.380673,
		-0.416220, 0.085651, -0.905221,
		23.547527, 21.870659, 11.226555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380760, 21.867231, 11.433028>,  <23.838882, 21.810703, 11.860209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380760, 21.867231, 11.433028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077503, 22.016066, 11.218823>,  <23.895550, 22.105366, 11.090301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077503, 22.016066, 11.218823>,  <24.380760, 21.867231, 11.433028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.077503, 22.016066, 11.218823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548156, 0.808452, -0.214313,
		0.353193, -0.456024, -0.816882,
		-0.758142, 0.372085, -0.535512,
		23.850061, 22.127691, 11.058169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587036, 22.217424, 10.664048>,  <24.380760, 21.867231, 11.433028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587036, 22.217424, 10.664048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263206, 22.359779, 10.850780>,  <24.068909, 22.445192, 10.962820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263206, 22.359779, 10.850780>,  <24.587036, 22.217424, 10.664048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263206, 22.359779, 10.850780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285300, 0.933565, -0.216932,
		-0.513021, -0.042436, -0.857327,
		-0.809576, 0.355886, 0.466832,
		24.020334, 22.466545, 10.990829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002995, 21.554062, 10.734476>,  <24.587036, 22.217424, 10.664048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002995, 21.554062, 10.734476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384466, 21.444193, 10.685395>,  <25.613348, 21.378271, 10.655947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384466, 21.444193, 10.685395>,  <25.002995, 21.554062, 10.734476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384466, 21.444193, 10.685395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059477, -0.227671, 0.971920,
		-0.294895, -0.934196, -0.200788,
		0.953677, -0.274672, -0.122702,
		25.670568, 21.361792, 10.648584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980999, 21.439884, 11.399195>,  <25.002995, 21.554062, 10.734476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980999, 21.439884, 11.399195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055189, 21.168636, 11.683660>,  <25.099703, 21.005888, 11.854339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055189, 21.168636, 11.683660>,  <24.980999, 21.439884, 11.399195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055189, 21.168636, 11.683660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846103, -0.257825, -0.466514,
		0.499708, 0.688243, 0.525940,
		0.185475, -0.678120, 0.711162,
		25.110832, 20.965200, 11.897008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625231, 21.631657, 11.850521>,  <24.980999, 21.439884, 11.399195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625231, 21.631657, 11.850521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556042, 21.237717, 11.855481>,  <25.514528, 21.001352, 11.858457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556042, 21.237717, 11.855481>,  <25.625231, 21.631657, 11.850521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556042, 21.237717, 11.855481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956056, -0.170914, -0.238211,
		0.236722, -0.029349, 0.971134,
		-0.172971, -0.984849, 0.012399,
		25.504150, 20.942263, 11.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118187, 21.259457, 12.223629>,  <25.625231, 21.631657, 11.850521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118187, 21.259457, 12.223629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946737, 21.054014, 11.926310>,  <25.843868, 20.930750, 11.747918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946737, 21.054014, 11.926310>,  <26.118187, 21.259457, 12.223629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946737, 21.054014, 11.926310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900631, -0.308213, -0.306381,
		-0.071736, -0.800759, 0.594675,
		-0.428624, -0.513604, -0.743298,
		25.818150, 20.899933, 11.703321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135187, 20.430212, 12.187845>,  <26.118187, 21.259457, 12.223629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135187, 20.430212, 12.187845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174053, 20.621410, 11.838656>,  <26.197372, 20.736130, 11.629144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174053, 20.621410, 11.838656>,  <26.135187, 20.430212, 12.187845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174053, 20.621410, 11.838656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812518, -0.544647, -0.207786,
		-0.574782, -0.689115, -0.441301,
		0.097165, 0.477996, -0.872971,
		26.203203, 20.764809, 11.576765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029814, 19.896893, 11.629911>,  <26.135187, 20.430212, 12.187845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029814, 19.896893, 11.629911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306103, 20.123089, 11.449636>,  <26.471876, 20.258806, 11.341472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306103, 20.123089, 11.449636>,  <26.029814, 19.896893, 11.629911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306103, 20.123089, 11.449636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602819, -0.794528, -0.073037,
		-0.399386, -0.221234, -0.889689,
		0.690724, 0.565491, -0.450688,
		26.513321, 20.292736, 11.314430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104219, 19.241419, 11.919568>,  <26.029814, 19.896893, 11.629911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104219, 19.241419, 11.919568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898979, 19.313854, 11.583965>,  <25.775835, 19.357315, 11.382604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898979, 19.313854, 11.583965>,  <26.104219, 19.241419, 11.919568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898979, 19.313854, 11.583965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814394, -0.411438, 0.409245,
		-0.271089, 0.893267, 0.358587,
		-0.513101, 0.181089, -0.839008,
		25.745049, 19.368181, 11.332263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320570, 19.496481, 12.095491>,  <26.104219, 19.241419, 11.919568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320570, 19.496481, 12.095491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396442, 19.293699, 11.759153>,  <25.441967, 19.172029, 11.557351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396442, 19.293699, 11.759153>,  <25.320570, 19.496481, 12.095491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396442, 19.293699, 11.759153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603785, -0.735548, 0.307265,
		-0.774250, 0.449407, -0.445612,
		0.189682, -0.506953, -0.840844,
		25.453346, 19.141613, 11.506900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660164, 19.210106, 11.798067>,  <25.320570, 19.496481, 12.095491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660164, 19.210106, 11.798067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968391, 18.992188, 11.665751>,  <25.153328, 18.861437, 11.586362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968391, 18.992188, 11.665751>,  <24.660164, 19.210106, 11.798067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968391, 18.992188, 11.665751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505655, -0.838499, 0.203057,
		-0.387991, 0.010795, -0.921600,
		0.770569, -0.544796, -0.330789,
		25.199562, 18.828749, 11.566515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322044, 18.713074, 11.354498>,  <24.660164, 19.210106, 11.798067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322044, 18.713074, 11.354498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679853, 18.560198, 11.447240>,  <24.894539, 18.468472, 11.502885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679853, 18.560198, 11.447240>,  <24.322044, 18.713074, 11.354498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679853, 18.560198, 11.447240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414097, -0.903831, 0.107765,
		0.168371, -0.192409, -0.966763,
		0.894525, -0.382189, 0.231855,
		24.948212, 18.445541, 11.516796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344749, 18.064278, 11.039774>,  <24.322044, 18.713074, 11.354498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.344749, 18.064278, 11.039774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650373, 18.032690, 11.295893>,  <24.833748, 18.013737, 11.449564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650373, 18.032690, 11.295893>,  <24.344749, 18.064278, 11.039774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650373, 18.032690, 11.295893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260183, -0.945908, 0.193812,
		0.590356, -0.314678, -0.743275,
		0.764058, -0.078969, 0.640297,
		24.879591, 18.008999, 11.487982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798151, 17.565010, 10.820761>,  <24.344749, 18.064278, 11.039774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798151, 17.565010, 10.820761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893482, 17.577772, 11.209024>,  <24.950682, 17.585430, 11.441983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893482, 17.577772, 11.209024>,  <24.798151, 17.565010, 10.820761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893482, 17.577772, 11.209024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262684, -0.960089, 0.096056,
		0.934985, -0.277870, -0.220436,
		0.238329, 0.031906, 0.970660,
		24.964981, 17.587343, 11.500222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131313, 16.913626, 11.077349>,  <24.798151, 17.565010, 10.820761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131313, 16.913626, 11.077349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996872, 17.064053, 11.422743>,  <24.916206, 17.154308, 11.629979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996872, 17.064053, 11.422743>,  <25.131313, 16.913626, 11.077349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996872, 17.064053, 11.422743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185901, -0.925274, 0.330618,
		0.923296, -0.049401, 0.380900,
		-0.336104, 0.376068, 0.863485,
		24.896040, 17.176872, 11.681788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346775, 16.422268, 11.722466>,  <25.131313, 16.913626, 11.077349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346775, 16.422268, 11.722466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047697, 16.634203, 11.882579>,  <24.868250, 16.761364, 11.978647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047697, 16.634203, 11.882579>,  <25.346775, 16.422268, 11.722466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047697, 16.634203, 11.882579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311624, -0.812264, 0.493070,
		0.586383, 0.243927, 0.772434,
		-0.747694, 0.529836, 0.400284,
		24.823389, 16.793154, 12.002664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311480, 16.231190, 12.453676>,  <25.346775, 16.422268, 11.722466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311480, 16.231190, 12.453676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952892, 16.381495, 12.359742>,  <24.737740, 16.471678, 12.303382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952892, 16.381495, 12.359742>,  <25.311480, 16.231190, 12.453676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952892, 16.381495, 12.359742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442475, -0.730780, 0.519785,
		0.023703, 0.569879, 0.821387,
		-0.896468, 0.375764, -0.234835,
		24.683952, 16.494223, 12.289291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938263, 16.134441, 13.125014>,  <25.311480, 16.231190, 12.453676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938263, 16.134441, 13.125014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681442, 16.203012, 12.826114>,  <24.527351, 16.244156, 12.646773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681442, 16.203012, 12.826114>,  <24.938263, 16.134441, 13.125014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681442, 16.203012, 12.826114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642570, -0.651973, 0.402535,
		-0.418182, 0.738609, 0.528754,
		-0.642049, 0.171429, -0.747252,
		24.488827, 16.254440, 12.601938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259319, 16.227226, 13.430041>,  <24.938263, 16.134441, 13.125014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259319, 16.227226, 13.430041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182152, 16.151356, 13.044958>,  <24.135851, 16.105833, 12.813909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182152, 16.151356, 13.044958>,  <24.259319, 16.227226, 13.430041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182152, 16.151356, 13.044958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645070, -0.714795, 0.270098,
		-0.739369, 0.673121, 0.015541,
		-0.192917, -0.189678, -0.962707,
		24.124277, 16.094452, 12.756145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519808, 16.204359, 13.374943>,  <24.259319, 16.227226, 13.430041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519808, 16.204359, 13.374943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.661947, 16.006256, 13.057844>,  <23.747231, 15.887394, 12.867585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.661947, 16.006256, 13.057844>,  <23.519808, 16.204359, 13.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.661947, 16.006256, 13.057844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759135, -0.647742, 0.064385,
		-0.545382, 0.578921, -0.606142,
		0.355350, -0.495258, -0.792746,
		23.768553, 15.857678, 12.820021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.949249, 16.011618, 13.099899>,  <23.519808, 16.204359, 13.374943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.949249, 16.011618, 13.099899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215616, 15.773720, 12.919754>,  <23.375437, 15.630980, 12.811666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215616, 15.773720, 12.919754>,  <22.949249, 16.011618, 13.099899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215616, 15.773720, 12.919754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603363, -0.784407, 0.143733,
		-0.438753, 0.176017, -0.881200,
		0.665920, -0.594747, -0.450363,
		23.415392, 15.595296, 12.784645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560396, 15.521062, 12.700543>,  <22.949249, 16.011618, 13.099899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560396, 15.521062, 12.700543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909811, 15.328383, 12.728548>,  <23.119459, 15.212776, 12.745351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909811, 15.328383, 12.728548>,  <22.560396, 15.521062, 12.700543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909811, 15.328383, 12.728548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480125, -0.829011, 0.286743,
		-0.080082, -0.284095, -0.955446,
		0.873537, -0.481696, 0.070012,
		23.171871, 15.183874, 12.749552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468332, 14.813448, 12.327972>,  <22.560396, 15.521062, 12.700543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468332, 14.813448, 12.327972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.769585, 14.794676, 12.590450>,  <22.950336, 14.783413, 12.747937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.769585, 14.794676, 12.590450>,  <22.468332, 14.813448, 12.327972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.769585, 14.794676, 12.590450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324890, -0.893864, 0.308957,
		0.572049, -0.445876, -0.688444,
		0.753131, -0.046930, 0.656194,
		22.995523, 14.780597, 12.787309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789076, 14.076815, 12.319099>,  <22.468332, 14.813448, 12.327972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789076, 14.076815, 12.319099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886051, 14.218257, 12.680471>,  <22.944237, 14.303123, 12.897295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886051, 14.218257, 12.680471>,  <22.789076, 14.076815, 12.319099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886051, 14.218257, 12.680471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518905, -0.739556, 0.428713,
		0.819732, -0.572731, 0.004191,
		0.242438, 0.353605, 0.903431,
		22.958782, 14.324338, 12.951501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.016493, 13.473454, 12.769307>,  <22.789076, 14.076815, 12.319099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.016493, 13.473454, 12.769307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950745, 13.756270, 13.044428>,  <22.911295, 13.925961, 13.209500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950745, 13.756270, 13.044428>,  <23.016493, 13.473454, 12.769307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.950745, 13.756270, 13.044428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377648, -0.689267, 0.618299,
		0.911243, -0.158117, 0.380308,
		-0.164370, 0.707043, 0.687802,
		22.901434, 13.968384, 13.250769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486813, 13.311623, 13.341950>,  <23.016493, 13.473454, 12.769307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486813, 13.311623, 13.341950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219391, 13.551313, 13.518114>,  <23.058937, 13.695127, 13.623813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219391, 13.551313, 13.518114>,  <23.486813, 13.311623, 13.341950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.219391, 13.551313, 13.518114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238703, -0.733797, 0.636053,
		0.704311, 0.320110, 0.633621,
		-0.668556, 0.599226, 0.440410,
		23.018824, 13.731081, 13.650237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.629902, 13.251442, 14.008354>,  <23.486813, 13.311623, 13.341950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.629902, 13.251442, 14.008354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.253948, 13.388031, 14.009818>,  <23.028376, 13.469984, 14.010696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.253948, 13.388031, 14.009818>,  <23.629902, 13.251442, 14.008354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.253948, 13.388031, 14.009818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279762, -0.776088, 0.565174,
		0.195832, 0.530174, 0.824964,
		-0.939885, 0.341473, 0.003660,
		22.971983, 13.490473, 14.010916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.323633, 13.169806, 14.730112>,  <23.629902, 13.251442, 14.008354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.323633, 13.169806, 14.730112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.034967, 13.168964, 14.453216>,  <22.861769, 13.168460, 14.287078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.034967, 13.168964, 14.453216>,  <23.323633, 13.169806, 14.730112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034967, 13.168964, 14.453216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229417, -0.942756, 0.242032,
		-0.653123, 0.333478, 0.679870,
		-0.721664, -0.002103, -0.692241,
		22.818468, 13.168334, 14.245543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.736368, 13.664232, 15.035687>,  <23.323633, 13.169806, 14.730112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.736368, 13.664232, 15.035687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063505, 13.441339, 14.978242>,  <24.259789, 13.307604, 14.943774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063505, 13.441339, 14.978242>,  <23.736368, 13.664232, 15.035687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063505, 13.441339, 14.978242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567905, 0.821850, 0.045239,
		0.092821, -0.118558, 0.988599,
		0.817843, -0.557232, -0.143615,
		24.308859, 13.274170, 14.935158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182493, 14.083132, 15.428177>,  <23.736368, 13.664232, 15.035687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182493, 14.083132, 15.428177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407341, 13.848869, 15.194587>,  <24.542250, 13.708312, 15.054433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407341, 13.848869, 15.194587>,  <24.182493, 14.083132, 15.428177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407341, 13.848869, 15.194587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718678, 0.695320, -0.005541,
		0.409295, -0.416576, 0.811752,
		0.562120, -0.585657, -0.583976,
		24.575977, 13.673172, 15.019394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833050, 13.908286, 15.779585>,  <24.182493, 14.083132, 15.428177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833050, 13.908286, 15.779585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833612, 13.962496, 15.383276>,  <24.833950, 13.995022, 15.145491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833612, 13.962496, 15.383276>,  <24.833050, 13.908286, 15.779585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.833612, 13.962496, 15.383276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531566, 0.839100, 0.115534,
		0.847016, -0.526824, -0.070860,
		0.001407, 0.135525, -0.990773,
		24.834034, 14.003154, 15.086044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198523, 14.429162, 15.674563>,  <24.833050, 13.908286, 15.779585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198523, 14.429162, 15.674563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095768, 14.370376, 15.292482>,  <25.034115, 14.335104, 15.063234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095768, 14.370376, 15.292482>,  <25.198523, 14.429162, 15.674563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095768, 14.370376, 15.292482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583845, 0.764027, -0.274569,
		0.770152, -0.628222, -0.110462,
		-0.256886, -0.146967, -0.955202,
		25.018702, 14.326285, 15.005922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690723, 14.287949, 15.294869>,  <25.198523, 14.429162, 15.674563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690723, 14.287949, 15.294869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422205, 14.471134, 15.061758>,  <25.261093, 14.581045, 14.921891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422205, 14.471134, 15.061758>,  <25.690723, 14.287949, 15.294869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422205, 14.471134, 15.061758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612197, 0.785832, -0.087653,
		0.417824, -0.415616, -0.807890,
		-0.671296, 0.457964, -0.582779,
		25.220816, 14.608523, 14.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017572, 14.633386, 14.723863>,  <25.690723, 14.287949, 15.294869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017572, 14.633386, 14.723863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665331, 14.809320, 14.794385>,  <25.453987, 14.914882, 14.836699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665331, 14.809320, 14.794385>,  <26.017572, 14.633386, 14.723863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665331, 14.809320, 14.794385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410286, 0.893874, -0.180708,
		-0.237077, -0.086796, -0.967606,
		-0.880602, 0.439837, 0.176306,
		25.401150, 14.941272, 14.847277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389601, 15.297684, 14.927302>,  <26.017572, 14.633386, 14.723863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389601, 15.297684, 14.927302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601234, 15.010714, 14.746031>,  <26.728214, 14.838531, 14.637268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601234, 15.010714, 14.746031>,  <26.389601, 15.297684, 14.927302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601234, 15.010714, 14.746031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491995, -0.694474, 0.525021,
		-0.691377, -0.054828, -0.720411,
		0.529093, -0.717426, -0.453168,
		26.759960, 14.795486, 14.610077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.069743, 18.954744, 23.420725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.679858, 19.037889, 23.387911>,  <12.445928, 19.087776, 23.368221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.679858, 19.037889, 23.387911>,  <13.069743, 18.954744, 23.420725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679858, 19.037889, 23.387911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054022, -0.137041, -0.989091,
		-0.216840, -0.968510, 0.122346,
		-0.974711, 0.207866, -0.082037,
		12.387444, 19.100248, 23.363300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846402, 18.454575, 22.947802>,  <13.069743, 18.954744, 23.420725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.846402, 18.454575, 22.947802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.548059, 18.720869, 22.938902>,  <12.369054, 18.880646, 22.933561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.548059, 18.720869, 22.938902>,  <12.846402, 18.454575, 22.947802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548059, 18.720869, 22.938902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117139, -0.163974, -0.979485,
		-0.655726, -0.727949, 0.200284,
		-0.745857, 0.665735, -0.022251,
		12.324303, 18.920589, 22.932226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.241160, 18.094351, 22.739695>,  <12.846402, 18.454575, 22.947802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.241160, 18.094351, 22.739695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213954, 18.481270, 22.641951>,  <12.197630, 18.713421, 22.583303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213954, 18.481270, 22.641951>,  <12.241160, 18.094351, 22.739695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213954, 18.481270, 22.641951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015297, -0.245909, -0.969172,
		-0.997567, -0.062181, 0.031522,
		-0.068016, 0.967296, -0.244359,
		12.193549, 18.771460, 22.568644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647782, 18.046812, 22.202150>,  <12.241160, 18.094351, 22.739695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647782, 18.046812, 22.202150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829749, 18.402287, 22.179220>,  <11.938930, 18.615572, 22.165462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829749, 18.402287, 22.179220>,  <11.647782, 18.046812, 22.202150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829749, 18.402287, 22.179220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030266, -0.048908, -0.998345,
		-0.890019, 0.455900, 0.004648,
		0.454918, 0.888686, -0.057327,
		11.966225, 18.668892, 22.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142662, 18.542950, 21.755636>,  <11.647782, 18.046812, 22.202150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142662, 18.542950, 21.755636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.518224, 18.672264, 21.708401>,  <11.743561, 18.749853, 21.680059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.518224, 18.672264, 21.708401>,  <11.142662, 18.542950, 21.755636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.518224, 18.672264, 21.708401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110194, -0.042683, -0.992993,
		-0.326062, 0.945338, -0.004451,
		0.938904, 0.323287, -0.118088,
		11.799895, 18.769251, 21.672974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250673, 18.612490, 21.088278>,  <11.142662, 18.542950, 21.755636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250673, 18.612490, 21.088278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.643647, 18.656555, 21.148525>,  <11.879432, 18.682995, 21.184673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.643647, 18.656555, 21.148525>,  <11.250673, 18.612490, 21.088278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643647, 18.656555, 21.148525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130420, 0.171944, -0.976435,
		-0.133465, 0.978928, 0.154556,
		0.982435, 0.110162, 0.150620,
		11.938377, 18.689604, 21.193712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.487148, 19.046595, 20.527687>,  <11.250673, 18.612490, 21.088278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.487148, 19.046595, 20.527687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.808428, 18.874428, 20.692423>,  <12.001196, 18.771128, 20.791265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.808428, 18.874428, 20.692423>,  <11.487148, 19.046595, 20.527687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808428, 18.874428, 20.692423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449692, -0.015342, -0.893052,
		0.390701, 0.902501, 0.181231,
		0.803200, -0.430415, 0.411841,
		12.049388, 18.745304, 20.815975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.115596, 19.374983, 20.162191>,  <11.487148, 19.046595, 20.527687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.115596, 19.374983, 20.162191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.191516, 19.014648, 20.318380>,  <12.237068, 18.798447, 20.412094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.191516, 19.014648, 20.318380>,  <12.115596, 19.374983, 20.162191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191516, 19.014648, 20.318380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509477, -0.249601, -0.823488,
		0.839291, 0.355234, 0.411582,
		0.189800, -0.900838, 0.390471,
		12.248456, 18.744396, 20.435522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858088, 19.282961, 19.984982>,  <12.115596, 19.374983, 20.162191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858088, 19.282961, 19.984982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704225, 18.922426, 20.064611>,  <12.611906, 18.706106, 20.112391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704225, 18.922426, 20.064611>,  <12.858088, 19.282961, 19.984982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704225, 18.922426, 20.064611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324449, -0.333932, -0.884999,
		0.864159, -0.275833, 0.420888,
		-0.384659, -0.901336, 0.199076,
		12.588827, 18.652025, 20.124334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356647, 18.772865, 19.915953>,  <12.858088, 19.282961, 19.984982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356647, 18.772865, 19.915953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.047573, 18.518969, 19.912838>,  <12.862129, 18.366631, 19.910969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.047573, 18.518969, 19.912838>,  <13.356647, 18.772865, 19.915953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.047573, 18.518969, 19.912838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409895, -0.489530, -0.769641,
		0.484712, -0.597881, 0.638430,
		-0.772684, -0.634743, -0.007787,
		12.815768, 18.328547, 19.910501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606016, 18.109503, 19.839140>,  <13.356647, 18.772865, 19.915953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606016, 18.109503, 19.839140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.223135, 18.086014, 19.725780>,  <12.993406, 18.071920, 19.657764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.223135, 18.086014, 19.725780>,  <13.606016, 18.109503, 19.839140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223135, 18.086014, 19.725780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278301, -0.455563, -0.845583,
		-0.079450, -0.888265, 0.452409,
		-0.957202, -0.058724, -0.283400,
		12.935974, 18.068398, 19.640760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627722, 17.424335, 19.628490>,  <13.606016, 18.109503, 19.839140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.627722, 17.424335, 19.628490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.286803, 17.553085, 19.463572>,  <13.082252, 17.630335, 19.364620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.286803, 17.553085, 19.463572>,  <13.627722, 17.424335, 19.628490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286803, 17.553085, 19.463572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232585, -0.472804, -0.849918,
		-0.468482, -0.820283, 0.328116,
		-0.852308, 0.321856, -0.412286,
		13.031115, 17.649647, 19.339884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344934, 16.867226, 19.293091>,  <13.627722, 17.424335, 19.628490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344934, 16.867226, 19.293091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.154389, 17.166851, 19.108925>,  <13.040063, 17.346626, 18.998425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.154389, 17.166851, 19.108925>,  <13.344934, 16.867226, 19.293091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154389, 17.166851, 19.108925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208551, -0.412444, -0.886790,
		-0.854159, -0.518451, 0.040254,
		-0.476360, 0.749065, -0.460416,
		13.011481, 17.391571, 18.970800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.914878, 16.520926, 18.759016>,  <13.344934, 16.867226, 19.293091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.914878, 16.520926, 18.759016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.963829, 16.901588, 18.646322>,  <12.993199, 17.129986, 18.578707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.963829, 16.901588, 18.646322>,  <12.914878, 16.520926, 18.759016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963829, 16.901588, 18.646322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094358, -0.293737, -0.951218,
		-0.987988, 0.089824, -0.125743,
		0.122378, 0.951657, -0.281733,
		13.000543, 17.187086, 18.561802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.574407, 16.594509, 18.228775>,  <12.914878, 16.520926, 18.759016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.574407, 16.594509, 18.228775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.835074, 16.895931, 18.194185>,  <12.991475, 17.076784, 18.173431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.835074, 16.895931, 18.194185>,  <12.574407, 16.594509, 18.228775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835074, 16.895931, 18.194185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167157, -0.253883, -0.952682,
		-0.739855, 0.606379, -0.291411,
		0.651670, 0.753557, -0.086476,
		13.030576, 17.121998, 18.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.378497, 16.928787, 17.603273>,  <12.574407, 16.594509, 18.228775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.378497, 16.928787, 17.603273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759682, 17.030817, 17.668755>,  <12.988393, 17.092035, 17.708044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759682, 17.030817, 17.668755>,  <12.378497, 16.928787, 17.603273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759682, 17.030817, 17.668755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234538, -0.278499, -0.931359,
		-0.191976, 0.925945, -0.325225,
		0.952962, 0.255076, 0.163705,
		13.045570, 17.107340, 17.717867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462526, 17.259125, 17.068556>,  <12.378497, 16.928787, 17.603273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462526, 17.259125, 17.068556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.832036, 17.178825, 17.198996>,  <13.053741, 17.130646, 17.277260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.832036, 17.178825, 17.198996>,  <12.462526, 17.259125, 17.068556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832036, 17.178825, 17.198996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275039, -0.244710, -0.929769,
		0.266452, 0.948587, -0.170843,
		0.923773, -0.200750, 0.326102,
		13.109168, 17.118601, 17.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952039, 17.635416, 16.540142>,  <12.462526, 17.259125, 17.068556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952039, 17.635416, 16.540142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.165870, 17.355637, 16.729877>,  <13.294168, 17.187769, 16.843719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.165870, 17.355637, 16.729877>,  <12.952039, 17.635416, 16.540142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165870, 17.355637, 16.729877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411483, -0.274831, -0.868994,
		0.738180, 0.659727, 0.140893,
		0.534577, -0.699449, 0.474341,
		13.326242, 17.145802, 16.872179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708043, 17.606304, 16.167614>,  <12.952039, 17.635416, 16.540142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708043, 17.606304, 16.167614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.661765, 17.260477, 16.363220>,  <13.633998, 17.052980, 16.480583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.661765, 17.260477, 16.363220>,  <13.708043, 17.606304, 16.167614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.661765, 17.260477, 16.363220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364478, -0.494929, -0.788797,
		0.923997, 0.086974, 0.372378,
		-0.115696, -0.864570, 0.489013,
		13.627056, 17.001106, 16.509924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257070, 17.297394, 15.947704>,  <13.708043, 17.606304, 16.167614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257070, 17.297394, 15.947704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.021312, 16.998520, 16.070555>,  <13.879857, 16.819195, 16.144264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.021312, 16.998520, 16.070555>,  <14.257070, 17.297394, 15.947704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.021312, 16.998520, 16.070555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432726, -0.613043, -0.661004,
		0.682174, -0.256692, 0.684652,
		-0.589395, -0.747186, 0.307125,
		13.844493, 16.774364, 16.162693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.709137, 16.748711, 16.012529>,  <14.257070, 17.297394, 15.947704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.709137, 16.748711, 16.012529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.350820, 16.572771, 15.986956>,  <14.135829, 16.467207, 15.971612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.350820, 16.572771, 15.986956>,  <14.709137, 16.748711, 16.012529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350820, 16.572771, 15.986956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421342, -0.794552, -0.437217,
		0.141511, -0.418594, 0.897081,
		-0.895794, -0.439848, -0.063933,
		14.082082, 16.440817, 15.967775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772913, 16.176723, 16.247391>,  <14.709137, 16.748711, 16.012529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772913, 16.176723, 16.247391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.431758, 16.087957, 16.058357>,  <14.227065, 16.034697, 15.944938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.431758, 16.087957, 16.058357>,  <14.772913, 16.176723, 16.247391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431758, 16.087957, 16.058357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453136, -0.764241, -0.458915,
		-0.259326, -0.605548, 0.752371,
		-0.852888, -0.221918, -0.472583,
		14.175892, 16.021381, 15.916582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495628, 15.841538, 16.190523>,  <14.772913, 16.176723, 16.247391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495628, 15.841538, 16.190523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.863041, 15.911428, 16.048666>,  <16.083488, 15.953362, 15.963552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.863041, 15.911428, 16.048666>,  <15.495628, 15.841538, 16.190523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863041, 15.911428, 16.048666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203621, 0.559834, 0.803196,
		0.338879, -0.809974, 0.478648,
		0.918531, 0.174723, -0.354643,
		16.138599, 15.963845, 15.942273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989286, 15.698509, 16.792858>,  <15.495628, 15.841538, 16.190523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989286, 15.698509, 16.792858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.183346, 15.935777, 16.535866>,  <16.299782, 16.078136, 16.381670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.183346, 15.935777, 16.535866>,  <15.989286, 15.698509, 16.792858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183346, 15.935777, 16.535866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372840, 0.524285, 0.765582,
		0.790962, -0.610964, 0.033200,
		0.485149, 0.593168, -0.642481,
		16.328890, 16.113728, 16.343122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612022, 15.737922, 17.021734>,  <15.989286, 15.698509, 16.792858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612022, 15.737922, 17.021734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.548222, 16.069990, 16.808052>,  <16.509941, 16.269232, 16.679844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.548222, 16.069990, 16.808052>,  <16.612022, 15.737922, 17.021734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.548222, 16.069990, 16.808052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223334, 0.557447, 0.799609,
		0.961603, 0.008234, -0.274320,
		-0.159502, 0.830172, -0.534204,
		16.500370, 16.319042, 16.647791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067158, 16.180008, 17.140623>,  <16.612022, 15.737922, 17.021734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067158, 16.180008, 17.140623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798052, 16.437826, 16.995325>,  <16.636587, 16.592516, 16.908146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798052, 16.437826, 16.995325>,  <17.067158, 16.180008, 17.140623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798052, 16.437826, 16.995325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262496, 0.666975, 0.697309,
		0.691723, 0.373776, -0.617909,
		-0.672767, 0.644543, -0.363247,
		16.596222, 16.631189, 16.886351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399406, 16.758472, 17.231609>,  <17.067158, 16.180008, 17.140623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399406, 16.758472, 17.231609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.015038, 16.862469, 17.193588>,  <16.784416, 16.924866, 17.170776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.015038, 16.862469, 17.193588>,  <17.399406, 16.758472, 17.231609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015038, 16.862469, 17.193588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123344, 0.709528, 0.693799,
		0.247823, 0.654962, -0.713869,
		-0.960921, 0.259991, -0.095052,
		16.726761, 16.940466, 17.165073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.398861, 17.533337, 17.307106>,  <17.399406, 16.758472, 17.231609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.398861, 17.533337, 17.307106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.024384, 17.405983, 17.366667>,  <16.799696, 17.329571, 17.402403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.024384, 17.405983, 17.366667>,  <17.398861, 17.533337, 17.307106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024384, 17.405983, 17.366667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080390, 0.606368, 0.791110,
		-0.342164, 0.728663, -0.593274,
		-0.936195, -0.318383, 0.148900,
		16.743525, 17.310469, 17.411337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048449, 18.103001, 17.405035>,  <17.398861, 17.533337, 17.307106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048449, 18.103001, 17.405035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809628, 17.826471, 17.567810>,  <16.666334, 17.660553, 17.665476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809628, 17.826471, 17.567810>,  <17.048449, 18.103001, 17.405035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809628, 17.826471, 17.567810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023732, 0.491833, 0.870366,
		-0.801849, 0.529314, -0.277245,
		-0.597055, -0.691323, 0.406938,
		16.630510, 17.619074, 17.689892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480379, 18.475979, 17.676489>,  <17.048449, 18.103001, 17.405035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480379, 18.475979, 17.676489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.481436, 18.125322, 17.868942>,  <16.482071, 17.914928, 17.984415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.481436, 18.125322, 17.868942>,  <16.480379, 18.475979, 17.676489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481436, 18.125322, 17.868942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235535, 0.467053, 0.852282,
		-0.971862, -0.115576, -0.205246,
		0.002643, -0.876643, 0.481133,
		16.482229, 17.862329, 18.013283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073195, 18.631182, 18.122532>,  <16.480379, 18.475979, 17.676489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073195, 18.631182, 18.122532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.187075, 18.273546, 18.260838>,  <16.255404, 18.058966, 18.343821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.187075, 18.273546, 18.260838>,  <16.073195, 18.631182, 18.122532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187075, 18.273546, 18.260838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360303, 0.234441, 0.902895,
		-0.888328, -0.381635, -0.255396,
		0.284701, -0.894087, 0.345764,
		16.272486, 18.005320, 18.364567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441375, 18.369755, 18.416649>,  <16.073195, 18.631182, 18.122532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441375, 18.369755, 18.416649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763769, 18.189816, 18.570543>,  <15.957206, 18.081852, 18.662880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763769, 18.189816, 18.570543>,  <15.441375, 18.369755, 18.416649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763769, 18.189816, 18.570543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356146, 0.150626, 0.922210,
		-0.472808, -0.880311, -0.038810,
		0.805986, -0.449850, 0.384737,
		16.005566, 18.054861, 18.685965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189066, 17.878485, 18.890003>,  <15.441375, 18.369755, 18.416649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189066, 17.878485, 18.890003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.561936, 17.943827, 19.019222>,  <15.785659, 17.983032, 19.096754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.561936, 17.943827, 19.019222>,  <15.189066, 17.878485, 18.890003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561936, 17.943827, 19.019222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360064, 0.326155, 0.874058,
		0.037416, -0.931095, 0.362852,
		0.932177, 0.163354, 0.323050,
		15.841590, 17.992834, 19.116137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294517, 17.420670, 19.482754>,  <15.189066, 17.878485, 18.890003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.294517, 17.420670, 19.482754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567390, 17.710894, 19.518953>,  <15.731114, 17.885027, 19.540672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567390, 17.710894, 19.518953>,  <15.294517, 17.420670, 19.482754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567390, 17.710894, 19.518953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165758, 0.032912, 0.985617,
		0.712144, -0.687373, 0.142719,
		0.682184, 0.725559, 0.090500,
		15.772046, 17.928560, 19.546103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714562, 17.207474, 20.071121>,  <15.294517, 17.420670, 19.482754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714562, 17.207474, 20.071121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.724607, 17.604094, 20.020205>,  <15.730633, 17.842066, 19.989655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.724607, 17.604094, 20.020205>,  <15.714562, 17.207474, 20.071121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724607, 17.604094, 20.020205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314850, 0.128696, 0.940376,
		0.948809, 0.016466, 0.315420,
		0.025109, 0.991547, -0.127292,
		15.732140, 17.901558, 19.982018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068899, 17.480955, 20.541224>,  <15.714562, 17.207474, 20.071121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068899, 17.480955, 20.541224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876072, 17.820438, 20.454226>,  <15.760375, 18.024128, 20.402027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876072, 17.820438, 20.454226>,  <16.068899, 17.480955, 20.541224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876072, 17.820438, 20.454226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211964, 0.127892, 0.968873,
		0.850106, 0.513165, 0.118242,
		-0.482070, 0.848708, -0.217494,
		15.731451, 18.075050, 20.388977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140188, 17.921141, 21.125107>,  <16.068899, 17.480955, 20.541224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140188, 17.921141, 21.125107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.834498, 18.090574, 20.930567>,  <15.651084, 18.192234, 20.813843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.834498, 18.090574, 20.930567>,  <16.140188, 17.921141, 21.125107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834498, 18.090574, 20.930567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398091, 0.283493, 0.872442,
		0.507428, 0.860354, -0.048028,
		-0.764225, 0.423582, -0.486352,
		15.605231, 18.217649, 20.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127430, 18.676382, 21.284586>,  <16.140188, 17.921141, 21.125107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127430, 18.676382, 21.284586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762053, 18.556425, 21.174541>,  <15.542828, 18.484451, 21.108515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762053, 18.556425, 21.174541>,  <16.127430, 18.676382, 21.284586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762053, 18.556425, 21.174541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374655, 0.355694, 0.856222,
		-0.158920, 0.885181, -0.437263,
		-0.913443, -0.299893, -0.275111,
		15.488021, 18.466457, 21.092009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722133, 19.168112, 21.598122>,  <16.127430, 18.676382, 21.284586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722133, 19.168112, 21.598122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.464015, 18.880878, 21.493849>,  <15.309144, 18.708538, 21.431286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.464015, 18.880878, 21.493849>,  <15.722133, 19.168112, 21.598122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464015, 18.880878, 21.493849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517578, 0.159974, 0.840548,
		-0.561880, 0.677324, -0.474893,
		-0.645294, -0.718081, -0.260682,
		15.270427, 18.665455, 21.415644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018888, 19.410717, 21.575949>,  <15.722133, 19.168112, 21.598122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018888, 19.410717, 21.575949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.993288, 19.015379, 21.631205>,  <14.977928, 18.778177, 21.664358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.993288, 19.015379, 21.631205>,  <15.018888, 19.410717, 21.575949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993288, 19.015379, 21.631205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514329, 0.151290, 0.844143,
		-0.855202, -0.017024, -0.518015,
		-0.064000, -0.988343, 0.138139,
		14.974088, 18.718876, 21.672646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.286705, 19.219049, 21.822775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.488997, 18.892776, 21.935129>,  <14.610373, 18.697012, 22.002542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.488997, 18.892776, 21.935129>,  <14.286705, 19.219049, 21.822775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488997, 18.892776, 21.935129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242647, 0.177955, 0.953653,
		-0.827865, -0.550447, -0.107925,
		0.505730, -0.815683, 0.280887,
		14.640717, 18.648071, 22.019396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815227, 18.804510, 22.259277>,  <14.286705, 19.219049, 21.822775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815227, 18.804510, 22.259277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.172611, 18.666830, 22.374693>,  <14.387042, 18.584221, 22.443941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.172611, 18.666830, 22.374693>,  <13.815227, 18.804510, 22.259277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172611, 18.666830, 22.374693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285009, 0.062019, 0.956517,
		-0.347130, -0.936845, -0.042689,
		0.893460, -0.344202, 0.288538,
		14.440649, 18.563570, 22.461254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663907, 18.338873, 22.916792>,  <13.815227, 18.804510, 22.259277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663907, 18.338873, 22.916792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.054015, 18.427277, 22.917585>,  <14.288080, 18.480318, 22.918062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.054015, 18.427277, 22.917585>,  <13.663907, 18.338873, 22.916792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054015, 18.427277, 22.917585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040570, 0.170190, 0.984576,
		0.217268, -0.960306, 0.174947,
		0.975269, 0.221014, 0.001983,
		14.346596, 18.493578, 22.918180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949222, 17.868715, 23.345570>,  <13.663907, 18.338873, 22.916792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949222, 17.868715, 23.345570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229239, 18.152658, 23.314474>,  <14.397249, 18.323025, 23.295816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229239, 18.152658, 23.314474>,  <13.949222, 17.868715, 23.345570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229239, 18.152658, 23.314474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016592, 0.125003, 0.992018,
		0.713908, -0.693165, 0.099285,
		0.700043, 0.709857, -0.077740,
		14.439252, 18.365616, 23.291153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538398, 17.720095, 23.728579>,  <13.949222, 17.868715, 23.345570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538398, 17.720095, 23.728579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.519539, 18.118824, 23.702904>,  <14.508224, 18.358061, 23.687498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.519539, 18.118824, 23.702904>,  <14.538398, 17.720095, 23.728579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519539, 18.118824, 23.702904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079015, 0.067780, 0.994566,
		0.995758, 0.041819, -0.081960,
		-0.047147, 0.996824, -0.064188,
		14.505395, 18.417871, 23.683647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785071, 17.924114, 24.269966>,  <14.538398, 17.720095, 23.728579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785071, 17.924114, 24.269966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.671367, 18.300076, 24.194302>,  <14.603144, 18.525652, 24.148903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.671367, 18.300076, 24.194302>,  <14.785071, 17.924114, 24.269966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671367, 18.300076, 24.194302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056778, 0.180449, 0.981944,
		0.957064, 0.289869, 0.002071,
		-0.284261, 0.939901, -0.189160,
		14.586088, 18.582047, 24.137554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137959, 18.259912, 24.722301>,  <14.785071, 17.924114, 24.269966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137959, 18.259912, 24.722301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.826291, 18.491138, 24.625362>,  <14.639290, 18.629873, 24.567200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.826291, 18.491138, 24.625362>,  <15.137959, 18.259912, 24.722301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826291, 18.491138, 24.625362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044947, 0.334113, 0.941461,
		0.625197, 0.744452, -0.234349,
		-0.779172, 0.578065, -0.242348,
		14.592540, 18.664558, 24.552658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282638, 18.858437, 25.021183>,  <15.137959, 18.259912, 24.722301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282638, 18.858437, 25.021183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.885550, 18.867582, 24.973881>,  <14.647297, 18.873070, 24.945499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.885550, 18.867582, 24.973881>,  <15.282638, 18.858437, 25.021183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.885550, 18.867582, 24.973881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099194, 0.401721, 0.910374,
		0.068318, 0.915477, -0.396529,
		-0.992720, 0.022862, -0.118255,
		14.587733, 18.874441, 24.938404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979510, 19.465818, 25.273710>,  <15.282638, 18.858437, 25.021183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979510, 19.465818, 25.273710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.646096, 19.245907, 25.295471>,  <14.446048, 19.113960, 25.308527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.646096, 19.245907, 25.295471>,  <14.979510, 19.465818, 25.273710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646096, 19.245907, 25.295471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261602, 0.479509, 0.837637,
		-0.486603, 0.683968, -0.543512,
		-0.833536, -0.549781, 0.054403,
		14.396035, 19.080973, 25.311792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462272, 19.839552, 25.686167>,  <14.979510, 19.465818, 25.273710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462272, 19.839552, 25.686167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.305717, 19.471508, 25.691971>,  <14.211783, 19.250681, 25.695454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.305717, 19.471508, 25.691971>,  <14.462272, 19.839552, 25.686167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305717, 19.471508, 25.691971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409830, 0.188406, 0.892492,
		-0.823926, 0.343364, -0.450829,
		-0.391389, -0.920111, 0.014512,
		14.188300, 19.195475, 25.696325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847725, 19.920362, 26.081602>,  <14.462272, 19.839552, 25.686167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847725, 19.920362, 26.081602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.958919, 19.536648, 26.101574>,  <14.025635, 19.306419, 26.113556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.958919, 19.536648, 26.101574>,  <13.847725, 19.920362, 26.081602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958919, 19.536648, 26.101574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212327, -0.010672, 0.977140,
		-0.936825, -0.282231, -0.206649,
		0.277985, -0.959287, 0.049928,
		14.042314, 19.248861, 26.116552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352532, 19.629467, 26.461353>,  <13.847725, 19.920362, 26.081602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352532, 19.629467, 26.461353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.671761, 19.393990, 26.512774>,  <13.863297, 19.252703, 26.543625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.671761, 19.393990, 26.512774>,  <13.352532, 19.629467, 26.461353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671761, 19.393990, 26.512774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140589, 0.025531, 0.989739,
		-0.585933, -0.807954, -0.062388,
		0.798071, -0.588692, 0.128549,
		13.911181, 19.217382, 26.551338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179715, 19.240469, 27.047674>,  <13.352532, 19.629467, 26.461353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179715, 19.240469, 27.047674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.576089, 19.213432, 27.001236>,  <13.813913, 19.197210, 26.973373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.576089, 19.213432, 27.001236>,  <13.179715, 19.240469, 27.047674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576089, 19.213432, 27.001236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112138, -0.059676, 0.991899,
		-0.073989, -0.995926, -0.051554,
		0.990934, -0.067608, -0.116096,
		13.873369, 19.193153, 26.966408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425269, 18.673342, 27.378521>,  <13.179715, 19.240469, 27.047674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425269, 18.673342, 27.378521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.748756, 18.908453, 27.369637>,  <13.942848, 19.049520, 27.364305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.748756, 18.908453, 27.369637>,  <13.425269, 18.673342, 27.378521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748756, 18.908453, 27.369637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066184, -0.053406, 0.996377,
		0.584463, -0.807258, -0.082092,
		0.808717, 0.587778, -0.022213,
		13.991371, 19.084785, 27.362972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799586, 18.314989, 27.741922>,  <13.425269, 18.673342, 27.378521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799586, 18.314989, 27.741922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.924680, 18.694696, 27.755125>,  <13.999736, 18.922520, 27.763046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.924680, 18.694696, 27.755125>,  <13.799586, 18.314989, 27.741922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924680, 18.694696, 27.755125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036289, -0.022783, 0.999082,
		0.949148, -0.313644, 0.027322,
		0.312733, 0.949268, 0.033006,
		14.018499, 18.979477, 27.765026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316016, 18.235807, 28.293079>,  <13.799586, 18.314989, 27.741922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316016, 18.235807, 28.293079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.282970, 18.628384, 28.223854>,  <14.263143, 18.863930, 28.182320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.282970, 18.628384, 28.223854>,  <14.316016, 18.235807, 28.293079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282970, 18.628384, 28.223854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240161, 0.188144, 0.952326,
		0.967211, 0.037114, -0.251247,
		-0.082615, 0.981440, -0.173062,
		14.258185, 18.922815, 28.171936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904239, 18.485413, 28.555660>,  <14.316016, 18.235807, 28.293079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904239, 18.485413, 28.555660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.641592, 18.786640, 28.538967>,  <14.484004, 18.967377, 28.528952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.641592, 18.786640, 28.538967>,  <14.904239, 18.485413, 28.555660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641592, 18.786640, 28.538967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223218, 0.246884, 0.942986,
		0.720436, 0.609864, -0.330207,
		-0.656616, 0.753069, -0.041732,
		14.444607, 19.012562, 28.526447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.266582, 19.060255, 28.826523>,  <14.904239, 18.485413, 28.555660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.266582, 19.060255, 28.826523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.884843, 19.174591, 28.861191>,  <14.655799, 19.243193, 28.881992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.884843, 19.174591, 28.861191>,  <15.266582, 19.060255, 28.826523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884843, 19.174591, 28.861191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164813, 0.261940, 0.950907,
		0.249106, 0.921782, -0.297092,
		-0.954349, 0.285842, 0.086671,
		14.598538, 19.260344, 28.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183856, 19.777342, 29.024439>,  <15.266582, 19.060255, 28.826523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183856, 19.777342, 29.024439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.850409, 19.601946, 29.158785>,  <14.650340, 19.496708, 29.239393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.850409, 19.601946, 29.158785>,  <15.183856, 19.777342, 29.024439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850409, 19.601946, 29.158785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193803, 0.337213, 0.921264,
		-0.517222, 0.833076, -0.196128,
		-0.833620, -0.438488, 0.335867,
		14.600323, 19.470400, 29.259544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697493, 20.295280, 29.287056>,  <15.183856, 19.777342, 29.024439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697493, 20.295280, 29.287056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.576065, 19.964912, 29.477087>,  <14.503208, 19.766691, 29.591106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.576065, 19.964912, 29.477087>,  <14.697493, 20.295280, 29.287056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576065, 19.964912, 29.477087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064550, 0.479635, 0.875091,
		-0.950620, 0.296317, -0.092289,
		-0.303569, -0.825922, 0.475078,
		14.484994, 19.717136, 29.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264794, 20.505604, 29.735977>,  <14.697493, 20.295280, 29.287056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264794, 20.505604, 29.735977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.362442, 20.144291, 29.877110>,  <14.421031, 19.927504, 29.961788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.362442, 20.144291, 29.877110>,  <14.264794, 20.505604, 29.735977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362442, 20.144291, 29.877110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025713, 0.357680, 0.933490,
		-0.969404, -0.236955, 0.064090,
		0.244119, -0.903281, 0.352830,
		14.435678, 19.873306, 29.982958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724947, 20.161852, 30.170422>,  <14.264794, 20.505604, 29.735977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724947, 20.161852, 30.170422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.118395, 20.138489, 30.238636>,  <14.354464, 20.124472, 30.279566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.118395, 20.138489, 30.238636>,  <13.724947, 20.161852, 30.170422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118395, 20.138489, 30.238636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120371, 0.491409, 0.862570,
		-0.134183, -0.868968, 0.476329,
		0.983618, -0.058406, 0.170538,
		14.413481, 20.120968, 30.289797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742383, 20.014160, 30.776840>,  <13.724947, 20.161852, 30.170422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742383, 20.014160, 30.776840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078371, 20.217419, 30.700695>,  <14.279963, 20.339375, 30.655008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078371, 20.217419, 30.700695>,  <13.742383, 20.014160, 30.776840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078371, 20.217419, 30.700695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087717, 0.473350, 0.876496,
		0.535497, -0.719532, 0.442173,
		0.839969, 0.508147, -0.190363,
		14.330362, 20.369862, 30.643587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151175, 20.579802, 30.701891>,  <13.742383, 20.014160, 30.776840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151175, 20.579802, 30.701891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.842577, 20.431973, 30.909048>,  <12.657418, 20.343275, 31.033342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.842577, 20.431973, 30.909048>,  <13.151175, 20.579802, 30.701891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.842577, 20.431973, 30.909048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478237, -0.200018, -0.855151,
		0.419628, -0.907419, -0.022431,
		-0.771493, -0.369572, 0.517894,
		12.611129, 20.321100, 31.064417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.888362, 19.962566, 30.412678>,  <13.151175, 20.579802, 30.701891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.888362, 19.962566, 30.412678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569160, 20.094593, 30.614367>,  <12.377638, 20.173809, 30.735380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569160, 20.094593, 30.614367>,  <12.888362, 19.962566, 30.412678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569160, 20.094593, 30.614367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602311, -0.408781, -0.685653,
		-0.020194, -0.850855, 0.525013,
		-0.798006, 0.330067, 0.504223,
		12.329758, 20.193613, 30.765635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387923, 19.475336, 30.704679>,  <12.888362, 19.962566, 30.412678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387923, 19.475336, 30.704679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.156046, 19.798717, 30.663965>,  <12.016919, 19.992746, 30.639536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.156046, 19.798717, 30.663965>,  <12.387923, 19.475336, 30.704679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.156046, 19.798717, 30.663965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601970, -0.509090, -0.615190,
		-0.549170, -0.295349, 0.781781,
		-0.579693, 0.808453, -0.101786,
		11.982138, 20.041254, 30.633429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732250, 19.284954, 30.741621>,  <12.387923, 19.475336, 30.704679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732250, 19.284954, 30.741621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.706395, 19.623566, 30.530260>,  <11.690883, 19.826733, 30.403442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.706395, 19.623566, 30.530260>,  <11.732250, 19.284954, 30.741621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706395, 19.623566, 30.530260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577017, -0.463721, -0.672320,
		-0.814170, 0.261441, 0.518435,
		-0.064637, 0.846529, -0.528404,
		11.687004, 19.877525, 30.371738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.017623, 19.322502, 30.593758>,  <11.732250, 19.284954, 30.741621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.017623, 19.322502, 30.593758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.205792, 19.550203, 30.324045>,  <11.318694, 19.686825, 30.162218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.205792, 19.550203, 30.324045>,  <11.017623, 19.322502, 30.593758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205792, 19.550203, 30.324045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496855, -0.460612, -0.735508,
		-0.729271, 0.681019, 0.066154,
		0.470424, 0.569253, -0.674279,
		11.346920, 19.720980, 30.121761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.510513, 19.568863, 30.065981>,  <11.017623, 19.322502, 30.593758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.510513, 19.568863, 30.065981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.847889, 19.627361, 29.859207>,  <11.050314, 19.662460, 29.735142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.847889, 19.627361, 29.859207>,  <10.510513, 19.568863, 30.065981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847889, 19.627361, 29.859207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458514, -0.305474, -0.834536,
		-0.279957, 0.940903, -0.190594,
		0.843439, 0.146245, -0.516937,
		11.100921, 19.671234, 29.704126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.179757, 19.592443, 29.410038>,  <10.510513, 19.568863, 30.065981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.179757, 19.592443, 29.410038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.565687, 19.609684, 29.306305>,  <10.797245, 19.620029, 29.244064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.565687, 19.609684, 29.306305>,  <10.179757, 19.592443, 29.410038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.565687, 19.609684, 29.306305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215769, -0.433721, -0.874831,
		-0.150187, 0.900016, -0.409165,
		0.964825, 0.043103, -0.259335,
		10.855135, 19.622616, 29.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.375858, 20.005596, 28.755394>,  <10.179757, 19.592443, 29.410038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.375858, 20.005596, 28.755394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.646647, 19.712746, 28.785587>,  <10.809121, 19.537035, 28.803703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.646647, 19.712746, 28.785587>,  <10.375858, 20.005596, 28.755394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646647, 19.712746, 28.785587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244951, -0.320825, -0.914915,
		0.694051, 0.600883, -0.396526,
		0.676972, -0.732128, 0.075482,
		10.849739, 19.493107, 28.808231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.771949, 19.960873, 28.100353>,  <10.375858, 20.005596, 28.755394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.771949, 19.960873, 28.100353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.831640, 19.599947, 28.262125>,  <10.867455, 19.383392, 28.359188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.831640, 19.599947, 28.262125>,  <10.771949, 19.960873, 28.100353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831640, 19.599947, 28.262125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044717, -0.402432, -0.914357,
		0.987791, 0.154533, -0.019706,
		0.149228, -0.902312, 0.404429,
		10.876409, 19.329254, 28.383453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415274, 19.649817, 27.726191>,  <10.771949, 19.960873, 28.100353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415274, 19.649817, 27.726191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.184328, 19.349522, 27.854591>,  <11.045761, 19.169344, 27.931631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.184328, 19.349522, 27.854591>,  <11.415274, 19.649817, 27.726191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184328, 19.349522, 27.854591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045406, -0.363018, -0.930675,
		0.815223, -0.551913, 0.175506,
		-0.577364, -0.750739, 0.321001,
		11.011119, 19.124300, 27.950891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973693, 19.174868, 27.746962>,  <11.415274, 19.649817, 27.726191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973693, 19.174868, 27.746962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.595649, 19.065271, 27.675751>,  <11.368822, 18.999514, 27.633024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.595649, 19.065271, 27.675751>,  <11.973693, 19.174868, 27.746962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595649, 19.065271, 27.675751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263987, -0.319217, -0.910171,
		0.192551, -0.907209, 0.374026,
		-0.945111, -0.273993, -0.178026,
		11.312116, 18.983074, 27.622343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.002727, 18.426201, 27.463593>,  <11.973693, 19.174868, 27.746962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.002727, 18.426201, 27.463593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.664104, 18.600628, 27.341486>,  <11.460931, 18.705284, 27.268223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.664104, 18.600628, 27.341486>,  <12.002727, 18.426201, 27.463593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664104, 18.600628, 27.341486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253362, -0.174260, -0.951547,
		-0.468136, -0.882880, 0.037038,
		-0.846555, 0.436070, -0.305266,
		11.410138, 18.731449, 27.249907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.649152, 18.006334, 26.923470>,  <12.002727, 18.426201, 27.463593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.649152, 18.006334, 26.923470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.472461, 18.361586, 26.872713>,  <11.366446, 18.574738, 26.842260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.472461, 18.361586, 26.872713>,  <11.649152, 18.006334, 26.923470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.472461, 18.361586, 26.872713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155958, -0.063265, -0.985736,
		-0.883489, -0.455217, -0.110565,
		-0.441728, 0.888130, -0.126889,
		11.339942, 18.628025, 26.834646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.210665, 17.889311, 26.417545>,  <11.649152, 18.006334, 26.923470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.210665, 17.889311, 26.417545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.263577, 18.285795, 26.418331>,  <11.295323, 18.523685, 26.418802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.263577, 18.285795, 26.418331>,  <11.210665, 17.889311, 26.417545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.263577, 18.285795, 26.418331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142996, -0.017122, -0.989575,
		-0.980844, 0.131181, -0.144004,
		0.132279, 0.991211, 0.001964,
		11.303260, 18.583158, 26.418921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.856445, 18.239582, 25.929380>,  <11.210665, 17.889311, 26.417545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.856445, 18.239582, 25.929380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.132025, 18.522327, 25.993498>,  <11.297372, 18.691975, 26.031969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.132025, 18.522327, 25.993498>,  <10.856445, 18.239582, 25.929380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132025, 18.522327, 25.993498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065826, 0.159219, -0.985046,
		-0.721816, 0.689197, 0.063163,
		0.688948, 0.706864, 0.160294,
		11.338709, 18.734386, 26.041586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.894476, 18.476961, 25.313154>,  <10.856445, 18.239582, 25.929380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.894476, 18.476961, 25.313154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.215404, 18.643679, 25.484066>,  <11.407960, 18.743710, 25.586613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.215404, 18.643679, 25.484066>,  <10.894476, 18.476961, 25.313154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215404, 18.643679, 25.484066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367387, 0.219355, -0.903831,
		-0.470439, 0.882136, 0.022867,
		0.802318, 0.416796, 0.427278,
		11.456099, 18.768717, 25.612249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851548, 19.142189, 25.008112>,  <10.894476, 18.476961, 25.313154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851548, 19.142189, 25.008112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.219202, 19.081186, 25.153402>,  <11.439795, 19.044584, 25.240578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.219202, 19.081186, 25.153402>,  <10.851548, 19.142189, 25.008112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219202, 19.081186, 25.153402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391052, 0.464717, -0.794428,
		-0.047644, 0.872227, 0.486775,
		0.919134, -0.152505, 0.363228,
		11.494943, 19.035435, 25.262371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254228, 19.810440, 25.092712>,  <10.851548, 19.142189, 25.008112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254228, 19.810440, 25.092712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.488931, 19.490927, 25.039557>,  <11.629752, 19.299219, 25.007662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.488931, 19.490927, 25.039557>,  <11.254228, 19.810440, 25.092712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.488931, 19.490927, 25.039557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355555, 0.401588, -0.843983,
		0.727528, 0.447963, 0.519646,
		0.586757, -0.798784, -0.132891,
		11.664958, 19.251291, 24.999689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939692, 20.008724, 24.895540>,  <11.254228, 19.810440, 25.092712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939692, 20.008724, 24.895540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.913302, 19.637936, 24.747828>,  <11.897469, 19.415462, 24.659201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.913302, 19.637936, 24.747828>,  <11.939692, 20.008724, 24.895540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913302, 19.637936, 24.747828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337749, 0.327495, -0.882425,
		0.938921, -0.182942, 0.291477,
		-0.065975, -0.926973, -0.369281,
		11.893510, 19.359844, 24.637043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488028, 20.029348, 24.412426>,  <11.939692, 20.008724, 24.895540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488028, 20.029348, 24.412426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.274364, 19.702257, 24.326637>,  <12.146165, 19.506002, 24.275164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.274364, 19.702257, 24.326637>,  <12.488028, 20.029348, 24.412426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274364, 19.702257, 24.326637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173407, 0.142318, -0.974513,
		0.827407, -0.557736, 0.065779,
		-0.534160, -0.817726, -0.214471,
		12.114116, 19.456940, 24.262297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877985, 19.666721, 23.931774>,  <12.488028, 20.029348, 24.412426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877985, 19.666721, 23.931774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.546522, 19.453756, 23.862646>,  <12.347645, 19.325977, 23.821169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.546522, 19.453756, 23.862646>,  <12.877985, 19.666721, 23.931774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546522, 19.453756, 23.862646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224645, -0.033529, -0.973864,
		0.512702, -0.845821, 0.147388,
		-0.828657, -0.532412, -0.172819,
		12.297925, 19.294033, 23.810801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.228428, 23.300552, 8.169317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.239239, 23.680691, 8.293324>,  <26.245726, 23.908773, 8.367729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.239239, 23.680691, 8.293324>,  <26.228428, 23.300552, 8.169317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239239, 23.680691, 8.293324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457056, 0.264068, -0.849334,
		-0.889027, 0.164652, -0.427225,
		0.027028, 0.950346, 0.310019,
		26.247347, 23.965796, 8.386330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263140, 22.809780, 8.780807>,  <26.228428, 23.300552, 8.169317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263140, 22.809780, 8.780807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.122465, 23.173489, 8.869843>,  <26.038059, 23.391714, 8.923264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.122465, 23.173489, 8.869843>,  <26.263140, 22.809780, 8.780807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122465, 23.173489, 8.869843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177708, 0.168605, -0.969532,
		-0.919095, -0.380529, 0.102288,
		-0.351688, 0.909269, 0.222587,
		26.016958, 23.446270, 8.936619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518497, 23.032982, 9.007042>,  <26.263140, 22.809780, 8.780807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518497, 23.032982, 9.007042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.188766, 22.806637, 9.013804>,  <24.990929, 22.670830, 9.017861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.188766, 22.806637, 9.013804>,  <25.518497, 23.032982, 9.007042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188766, 22.806637, 9.013804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412003, 0.620133, 0.667599,
		-0.388253, 0.543354, -0.744329,
		-0.824326, -0.565863, 0.016905,
		24.941469, 22.636877, 9.018876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864441, 23.445501, 8.838606>,  <25.518497, 23.032982, 9.007042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864441, 23.445501, 8.838606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.706820, 23.810385, 8.883500>,  <24.612247, 24.029316, 8.910437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.706820, 23.810385, 8.883500>,  <24.864441, 23.445501, 8.838606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706820, 23.810385, 8.883500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589788, 0.157319, 0.792087,
		0.704892, 0.378319, -0.600002,
		-0.394053, 0.912209, 0.112235,
		24.588604, 24.084047, 8.917171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553949, 23.742456, 9.467260>,  <24.864441, 23.445501, 8.838606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553949, 23.742456, 9.467260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.407190, 23.910858, 9.799078>,  <24.319136, 24.011898, 9.998169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.407190, 23.910858, 9.799078>,  <24.553949, 23.742456, 9.467260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407190, 23.910858, 9.799078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451417, -0.860279, 0.236945,
		0.813394, -0.287536, 0.505681,
		-0.366897, 0.421002, 0.829544,
		24.297121, 24.037159, 10.047941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862654, 23.380022, 10.113743>,  <24.553949, 23.742456, 9.467260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862654, 23.380022, 10.113743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.499197, 23.544065, 10.145185>,  <24.281122, 23.642490, 10.164050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.499197, 23.544065, 10.145185>,  <24.862654, 23.380022, 10.113743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499197, 23.544065, 10.145185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408601, -0.912037, 0.035112,
		0.086090, -0.000214, 0.996287,
		-0.908644, 0.410107, 0.078605,
		24.226604, 23.667097, 10.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523874, 23.226711, 10.789098>,  <24.862654, 23.380022, 10.113743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523874, 23.226711, 10.789098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.251438, 23.273859, 10.500038>,  <24.087976, 23.302149, 10.326603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.251438, 23.273859, 10.500038>,  <24.523874, 23.226711, 10.789098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251438, 23.273859, 10.500038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355783, -0.915886, 0.185933,
		-0.639948, 0.383743, 0.665739,
		-0.681092, 0.117871, -0.722649,
		24.047112, 23.309219, 10.283243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.881447, 23.246700, 11.091126>,  <24.523874, 23.226711, 10.789098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.881447, 23.246700, 11.091126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880228, 23.087513, 10.724169>,  <23.879498, 22.992001, 10.503994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880228, 23.087513, 10.724169>,  <23.881447, 23.246700, 11.091126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.880228, 23.087513, 10.724169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590474, -0.739674, 0.322834,
		-0.807051, 0.542682, -0.232736,
		-0.003047, -0.397968, -0.917394,
		23.879314, 22.968122, 10.448951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.083401, 23.046558, 10.865807>,  <23.881447, 23.246700, 11.091126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.083401, 23.046558, 10.865807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.379553, 22.824373, 10.714386>,  <23.557243, 22.691063, 10.623533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.379553, 22.824373, 10.714386>,  <23.083401, 23.046558, 10.865807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.379553, 22.824373, 10.714386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453948, -0.828514, 0.327865,
		-0.495751, -0.070902, -0.865565,
		0.740380, -0.555461, -0.378551,
		23.601667, 22.657736, 10.600821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825432, 22.540804, 10.402554>,  <23.083401, 23.046558, 10.865807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825432, 22.540804, 10.402554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.166277, 22.393488, 10.551291>,  <23.370783, 22.305099, 10.640534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.166277, 22.393488, 10.551291>,  <22.825432, 22.540804, 10.402554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.166277, 22.393488, 10.551291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472898, -0.846206, 0.245569,
		0.224218, -0.385097, -0.895224,
		0.852112, -0.368289, 0.371846,
		23.421911, 22.283001, 10.662846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.014145, 21.853497, 10.033413>,  <22.825432, 22.540804, 10.402554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.014145, 21.853497, 10.033413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176506, 21.870346, 10.398591>,  <23.273922, 21.880455, 10.617698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176506, 21.870346, 10.398591>,  <23.014145, 21.853497, 10.033413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.176506, 21.870346, 10.398591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296087, -0.938999, 0.174968,
		0.864625, -0.341331, -0.368669,
		0.405901, 0.042123, 0.912946,
		23.298277, 21.882982, 10.672475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427834, 21.293304, 10.115035>,  <23.014145, 21.853497, 10.033413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427834, 21.293304, 10.115035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.351105, 21.390980, 10.495261>,  <23.305067, 21.449585, 10.723397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.351105, 21.390980, 10.495261>,  <23.427834, 21.293304, 10.115035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351105, 21.390980, 10.495261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225965, -0.953520, 0.199348,
		0.955062, -0.176555, 0.238084,
		-0.191822, 0.244188, 0.950566,
		23.293558, 21.464235, 10.780431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.497078, 20.656433, 10.530876>,  <23.427834, 21.293304, 10.115035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.497078, 20.656433, 10.530876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.293650, 20.868422, 10.802312>,  <23.171593, 20.995615, 10.965174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.293650, 20.868422, 10.802312>,  <23.497078, 20.656433, 10.530876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293650, 20.868422, 10.802312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469332, -0.831377, 0.297556,
		0.721861, -0.167156, 0.671548,
		-0.508571, 0.529973, 0.678590,
		23.141079, 21.027414, 11.005889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.524857, 20.333302, 11.206022>,  <23.497078, 20.656433, 10.530876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.524857, 20.333302, 11.206022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181488, 20.537144, 11.182664>,  <22.975466, 20.659449, 11.168649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181488, 20.537144, 11.182664>,  <23.524857, 20.333302, 11.206022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181488, 20.537144, 11.182664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509296, -0.833233, 0.215269,
		0.061046, 0.214532, 0.974807,
		-0.858424, 0.509607, -0.058395,
		22.923962, 20.690025, 11.165146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.110729, 19.852686, 11.507800>,  <23.524857, 20.333302, 11.206022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.110729, 19.852686, 11.507800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827570, 20.124195, 11.429678>,  <22.657675, 20.287102, 11.382805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827570, 20.124195, 11.429678>,  <23.110729, 19.852686, 11.507800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827570, 20.124195, 11.429678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703930, -0.655302, 0.273975,
		0.057983, 0.331428, 0.941697,
		-0.707898, 0.678775, -0.195306,
		22.615200, 20.327827, 11.371086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808168, 20.012068, 12.117132>,  <23.110729, 19.852686, 11.507800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.808168, 20.012068, 12.117132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564959, 20.038437, 11.800662>,  <22.419033, 20.054258, 11.610780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564959, 20.038437, 11.800662>,  <22.808168, 20.012068, 12.117132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.564959, 20.038437, 11.800662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591411, -0.702452, 0.395972,
		-0.529659, 0.708671, 0.466096,
		-0.608025, 0.065924, -0.791176,
		22.382551, 20.058214, 11.563309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214645, 19.974274, 12.416103>,  <22.808168, 20.012068, 12.117132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214645, 19.974274, 12.416103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121737, 19.908140, 12.032705>,  <22.065990, 19.868460, 11.802667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121737, 19.908140, 12.032705>,  <22.214645, 19.974274, 12.416103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121737, 19.908140, 12.032705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738463, -0.611378, 0.284410,
		-0.633026, 0.773875, 0.019914,
		-0.232273, -0.165334, -0.958496,
		22.052055, 19.858540, 11.745156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.501978, 20.024746, 12.449916>,  <22.214645, 19.974274, 12.416103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.501978, 20.024746, 12.449916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.591400, 19.848251, 12.102276>,  <21.645054, 19.742355, 11.893692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.591400, 19.848251, 12.102276>,  <21.501978, 20.024746, 12.449916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591400, 19.848251, 12.102276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856742, -0.514140, 0.040648,
		-0.464775, 0.735508, -0.492963,
		0.223555, -0.441234, -0.869100,
		21.658466, 19.715881, 11.841546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834694, 19.925039, 12.213482>,  <21.501978, 20.024746, 12.449916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834694, 19.925039, 12.213482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.068821, 19.680731, 12.000179>,  <21.209297, 19.534145, 11.872198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.068821, 19.680731, 12.000179>,  <20.834694, 19.925039, 12.213482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068821, 19.680731, 12.000179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708967, -0.704650, 0.028893,
		-0.393406, 0.361150, -0.845460,
		0.585319, -0.610770, -0.533257,
		21.244417, 19.497499, 11.840202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358074, 19.663401, 11.563231>,  <20.834694, 19.925039, 12.213482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358074, 19.663401, 11.563231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.652666, 19.411819, 11.662845>,  <20.829420, 19.260870, 11.722613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.652666, 19.411819, 11.662845>,  <20.358074, 19.663401, 11.563231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652666, 19.411819, 11.662845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645257, -0.763690, -0.020504,
		0.203082, -0.145591, -0.968277,
		0.736478, -0.628952, 0.249035,
		20.873610, 19.223133, 11.737556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296831, 19.115152, 11.186059>,  <20.358074, 19.663401, 11.563231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296831, 19.115152, 11.186059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523937, 18.969408, 11.481324>,  <20.660200, 18.881962, 11.658484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523937, 18.969408, 11.481324>,  <20.296831, 19.115152, 11.186059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523937, 18.969408, 11.481324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574196, -0.817838, 0.037957,
		0.589867, -0.445401, -0.673554,
		0.567764, -0.364362, 0.738162,
		20.694267, 18.860100, 11.702773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596262, 18.377041, 10.972150>,  <20.296831, 19.115152, 11.186059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596262, 18.377041, 10.972150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.618256, 18.430939, 11.367891>,  <20.631453, 18.463278, 11.605336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.618256, 18.430939, 11.367891>,  <20.596262, 18.377041, 10.972150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618256, 18.430939, 11.367891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354776, -0.923560, 0.145504,
		0.933333, -0.359000, -0.002978,
		0.054987, 0.134747, 0.989353,
		20.634752, 18.471363, 11.664698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680380, 17.627487, 11.292465>,  <20.596262, 18.377041, 10.972150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680380, 17.627487, 11.292465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.599335, 17.855169, 11.611200>,  <20.550707, 17.991779, 11.802442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.599335, 17.855169, 11.611200>,  <20.680380, 17.627487, 11.292465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.599335, 17.855169, 11.611200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254317, -0.816381, 0.518502,
		0.945659, -0.097594, 0.310168,
		-0.202612, 0.569207, 0.796838,
		20.538551, 18.025932, 11.850252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122206, 17.322426, 11.811727>,  <20.680380, 17.627487, 11.292465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122206, 17.322426, 11.811727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.791151, 17.492687, 11.958061>,  <20.592518, 17.594843, 12.045862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.791151, 17.492687, 11.958061>,  <21.122206, 17.322426, 11.811727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791151, 17.492687, 11.958061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191645, -0.826954, 0.528601,
		0.527530, 0.367379, 0.765992,
		-0.827637, 0.425652, 0.365837,
		20.542860, 17.620382, 12.067812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999184, 16.924839, 12.418941>,  <21.122206, 17.322426, 11.811727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999184, 16.924839, 12.418941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.672384, 17.155487, 12.420996>,  <20.476305, 17.293877, 12.422228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.672384, 17.155487, 12.420996>,  <20.999184, 16.924839, 12.418941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672384, 17.155487, 12.420996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390619, -0.559965, 0.730655,
		0.424186, 0.594937, 0.682728,
		-0.816997, 0.576619, 0.005135,
		20.427286, 17.328472, 12.422536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812967, 17.297766, 13.137225>,  <20.999184, 16.924839, 12.418941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812967, 17.297766, 13.137225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.477024, 17.240030, 12.927920>,  <20.275457, 17.205389, 12.802338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.477024, 17.240030, 12.927920>,  <20.812967, 17.297766, 13.137225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477024, 17.240030, 12.927920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356118, -0.581011, 0.731851,
		-0.409655, 0.800995, 0.436566,
		-0.839859, -0.144338, -0.523263,
		20.225067, 17.196730, 12.770942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.366150, 17.331285, 13.670145>,  <20.812967, 17.297766, 13.137225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.366150, 17.331285, 13.670145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.224579, 17.141567, 13.347710>,  <20.139635, 17.027737, 13.154248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.224579, 17.141567, 13.347710>,  <20.366150, 17.331285, 13.670145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.224579, 17.141567, 13.347710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335060, -0.740370, 0.582741,
		-0.873195, 0.476337, 0.103121,
		-0.353929, -0.474294, -0.806089,
		20.118401, 16.999279, 13.105883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849955, 16.936569, 13.924472>,  <20.366150, 17.331285, 13.670145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849955, 16.936569, 13.924472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.918127, 16.758604, 13.572789>,  <19.959030, 16.651825, 13.361779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.918127, 16.758604, 13.572789>,  <19.849955, 16.936569, 13.924472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918127, 16.758604, 13.572789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212959, -0.887805, 0.407983,
		-0.962082, 0.117703, -0.246057,
		0.170430, -0.444914, -0.879207,
		19.969255, 16.625130, 13.309027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308611, 16.436417, 13.870680>,  <19.849955, 16.936569, 13.924472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308611, 16.436417, 13.870680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.608252, 16.301165, 13.642815>,  <19.788036, 16.220013, 13.506096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.608252, 16.301165, 13.642815>,  <19.308611, 16.436417, 13.870680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608252, 16.301165, 13.642815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207869, -0.936472, 0.282507,
		-0.628997, -0.093212, -0.771800,
		0.749102, -0.338129, -0.569662,
		19.832983, 16.199726, 13.471916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050409, 15.782167, 13.659079>,  <19.308611, 16.436417, 13.870680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050409, 15.782167, 13.659079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.436541, 15.768029, 13.555624>,  <19.668219, 15.759546, 13.493551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.436541, 15.768029, 13.555624>,  <19.050409, 15.782167, 13.659079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.436541, 15.768029, 13.555624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015471, -0.981303, 0.191847,
		-0.260582, -0.189196, -0.946732,
		0.965328, -0.035345, -0.258637,
		19.726139, 15.757425, 13.478033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143482, 15.114209, 13.231572>,  <19.050409, 15.782167, 13.659079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143482, 15.114209, 13.231572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.517338, 15.205602, 13.340565>,  <19.741652, 15.260437, 13.405960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.517338, 15.205602, 13.340565>,  <19.143482, 15.114209, 13.231572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517338, 15.205602, 13.340565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173171, -0.961713, 0.212415,
		0.310583, -0.151346, -0.938420,
		0.934639, 0.228480, 0.272483,
		19.797729, 15.274146, 13.422310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544630, 14.577184, 12.849907>,  <19.143482, 15.114209, 13.231572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544630, 14.577184, 12.849907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762688, 14.722366, 13.152186>,  <19.893522, 14.809476, 13.333554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762688, 14.722366, 13.152186>,  <19.544630, 14.577184, 12.849907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762688, 14.722366, 13.152186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220306, -0.931761, 0.288594,
		0.808878, 0.009160, -0.587905,
		0.545143, 0.362956, 0.755699,
		19.926231, 14.831253, 13.378896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182281, 14.348527, 12.924923>,  <19.544630, 14.577184, 12.849907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182281, 14.348527, 12.924923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.102705, 14.426223, 13.309151>,  <20.054960, 14.472840, 13.539687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.102705, 14.426223, 13.309151>,  <20.182281, 14.348527, 12.924923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102705, 14.426223, 13.309151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330771, -0.909336, 0.252384,
		0.922504, 0.367938, 0.116655,
		-0.198940, 0.194239, 0.960570,
		20.043022, 14.484494, 13.597322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824827, 14.193426, 13.356900>,  <20.182281, 14.348527, 12.924923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824827, 14.193426, 13.356900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.492575, 14.140962, 13.573361>,  <20.293222, 14.109483, 13.703238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.492575, 14.140962, 13.573361>,  <20.824827, 14.193426, 13.356900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492575, 14.140962, 13.573361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300023, -0.924144, 0.236525,
		0.469081, 0.358824, 0.806975,
		-0.830632, -0.131162, 0.541154,
		20.243385, 14.101613, 13.735707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029682, 13.923987, 14.053957>,  <20.824827, 14.193426, 13.356900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029682, 13.923987, 14.053957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.664289, 13.802855, 13.945260>,  <20.445053, 13.730175, 13.880042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.664289, 13.802855, 13.945260>,  <21.029682, 13.923987, 14.053957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664289, 13.802855, 13.945260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228714, -0.934541, 0.272622,
		-0.336513, 0.186884, 0.922948,
		-0.913482, -0.302832, -0.271742,
		20.390245, 13.712005, 13.863737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793444, 13.936717, 13.912356>,  <21.029682, 13.923987, 14.053957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793444, 13.936717, 13.912356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.166113, 13.791701, 13.921733>,  <22.389715, 13.704692, 13.927359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.166113, 13.791701, 13.921733>,  <21.793444, 13.936717, 13.912356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.166113, 13.791701, 13.921733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319853, 0.787958, -0.526134,
		0.172272, 0.497683, 0.850079,
		0.931674, -0.362539, 0.023442,
		22.445616, 13.682940, 13.928765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052223, 14.488943, 14.010563>,  <21.793444, 13.936717, 13.912356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052223, 14.488943, 14.010563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.353271, 14.254392, 13.890749>,  <22.533901, 14.113661, 13.818860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.353271, 14.254392, 13.890749>,  <22.052223, 14.488943, 14.010563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.353271, 14.254392, 13.890749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443831, 0.787808, -0.427052,
		0.486391, 0.188465, 0.853174,
		0.752621, -0.586379, -0.299536,
		22.579058, 14.078478, 13.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686127, 14.805351, 14.159348>,  <22.052223, 14.488943, 14.010563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686127, 14.805351, 14.159348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.781492, 14.551947, 13.864913>,  <22.838711, 14.399904, 13.688252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.781492, 14.551947, 13.864913>,  <22.686127, 14.805351, 14.159348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781492, 14.551947, 13.864913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484000, 0.734616, -0.475482,
		0.841964, -0.242904, 0.481763,
		0.238414, -0.633511, -0.736086,
		22.853016, 14.361894, 13.644087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.421247, 14.847234, 14.029026>,  <22.686127, 14.805351, 14.159348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.421247, 14.847234, 14.029026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.276073, 14.675258, 13.698346>,  <23.188969, 14.572072, 13.499938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.276073, 14.675258, 13.698346>,  <23.421247, 14.847234, 14.029026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.276073, 14.675258, 13.698346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500103, 0.658716, -0.562131,
		0.786242, -0.617450, -0.024055,
		-0.362933, -0.429941, -0.826699,
		23.167192, 14.546275, 13.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990553, 14.753240, 13.563411>,  <23.421247, 14.847234, 14.029026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990553, 14.753240, 13.563411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665096, 14.752180, 13.330865>,  <23.469822, 14.751545, 13.191338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665096, 14.752180, 13.330865>,  <23.990553, 14.753240, 13.563411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.665096, 14.752180, 13.330865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458609, 0.611666, -0.644626,
		0.357307, -0.791112, -0.496461,
		-0.813640, -0.002648, -0.581364,
		23.421005, 14.751386, 13.156456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303312, 14.576771, 12.984509>,  <23.990553, 14.753240, 13.563411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303312, 14.576771, 12.984509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956976, 14.768931, 12.928606>,  <23.749174, 14.884228, 12.895063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956976, 14.768931, 12.928606>,  <24.303312, 14.576771, 12.984509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956976, 14.768931, 12.928606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485863, 0.740688, -0.464023,
		-0.119400, -0.469674, -0.874728,
		-0.865841, 0.480403, -0.139760,
		23.697224, 14.913053, 12.886678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.340559, 14.808667, 12.331470>,  <24.303312, 14.576771, 12.984509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.340559, 14.808667, 12.331470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.066858, 15.057064, 12.484400>,  <23.902637, 15.206102, 12.576158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.066858, 15.057064, 12.484400>,  <24.340559, 14.808667, 12.331470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.066858, 15.057064, 12.484400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448367, 0.771718, -0.451020,
		-0.575124, -0.137190, -0.806481,
		-0.684251, 0.620991, 0.382322,
		23.861584, 15.243361, 12.599096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260386, 15.166176, 11.816274>,  <24.340559, 14.808667, 12.331470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260386, 15.166176, 11.816274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.121746, 15.387219, 12.119454>,  <24.038563, 15.519846, 12.301363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.121746, 15.387219, 12.119454>,  <24.260386, 15.166176, 11.816274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.121746, 15.387219, 12.119454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466738, 0.802510, -0.371663,
		-0.813649, 0.224947, -0.536073,
		-0.346600, 0.552608, 0.757953,
		24.017767, 15.553002, 12.346840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956448, 15.785396, 11.459122>,  <24.260386, 15.166176, 11.816274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956448, 15.785396, 11.459122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.017666, 15.879643, 11.843010>,  <24.054396, 15.936192, 12.073342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.017666, 15.879643, 11.843010>,  <23.956448, 15.785396, 11.459122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.017666, 15.879643, 11.843010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350488, 0.895087, -0.275642,
		-0.923978, 0.378555, 0.054406,
		0.153044, 0.235619, 0.959720,
		24.063580, 15.950329, 12.130926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.688509, 16.446594, 11.567794>,  <23.956448, 15.785396, 11.459122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.688509, 16.446594, 11.567794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935059, 16.392597, 11.878113>,  <24.082989, 16.360199, 12.064304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935059, 16.392597, 11.878113>,  <23.688509, 16.446594, 11.567794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.935059, 16.392597, 11.878113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318482, 0.943759, -0.088813,
		-0.720177, 0.301819, 0.624700,
		0.616372, -0.134995, 0.775797,
		24.119970, 16.352098, 12.110852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606037, 17.081038, 11.977473>,  <23.688509, 16.446594, 11.567794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606037, 17.081038, 11.977473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.936560, 16.884184, 12.087034>,  <24.134872, 16.766071, 12.152771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.936560, 16.884184, 12.087034>,  <23.606037, 17.081038, 11.977473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.936560, 16.884184, 12.087034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468896, 0.870505, 0.149527,
		-0.312021, 0.004877, 0.950063,
		0.826305, -0.492136, 0.273902,
		24.184452, 16.736544, 12.169205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.862761, 17.392414, 12.601508>,  <23.606037, 17.081038, 11.977473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.862761, 17.392414, 12.601508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.156290, 17.214453, 12.396154>,  <24.332409, 17.107676, 12.272943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.156290, 17.214453, 12.396154>,  <23.862761, 17.392414, 12.601508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156290, 17.214453, 12.396154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437961, 0.887529, -0.143121,
		0.519318, -0.119817, 0.846140,
		0.733825, -0.444901, -0.513385,
		24.376438, 17.080982, 12.242139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504755, 17.726101, 12.799374>,  <23.862761, 17.392414, 12.601508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504755, 17.726101, 12.799374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.629972, 17.549828, 12.462850>,  <24.705103, 17.444063, 12.260935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.629972, 17.549828, 12.462850>,  <24.504755, 17.726101, 12.799374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629972, 17.549828, 12.462850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658216, 0.739256, -0.142310,
		0.684657, -0.509215, 0.521483,
		0.313043, -0.440682, -0.841311,
		24.723885, 17.417624, 12.210457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209042, 17.830273, 12.824096>,  <24.504755, 17.726101, 12.799374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209042, 17.830273, 12.824096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.120079, 17.767796, 12.439151>,  <25.066702, 17.730310, 12.208184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.120079, 17.767796, 12.439151>,  <25.209042, 17.830273, 12.824096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120079, 17.767796, 12.439151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627933, 0.732143, -0.263944,
		0.745812, -0.663001, -0.064755,
		-0.222405, -0.156191, -0.962362,
		25.053358, 17.720938, 12.150442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832546, 18.015543, 12.344971>,  <25.209042, 17.830273, 12.824096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832546, 18.015543, 12.344971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.521778, 18.020775, 12.093184>,  <25.335318, 18.023914, 11.942113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.521778, 18.020775, 12.093184>,  <25.832546, 18.015543, 12.344971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521778, 18.020775, 12.093184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395878, 0.787567, -0.472248,
		0.489569, -0.616090, -0.617054,
		-0.776918, 0.013080, -0.629465,
		25.288702, 18.024698, 11.904345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150230, 18.008696, 11.692723>,  <25.832546, 18.015543, 12.344971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150230, 18.008696, 11.692723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.779503, 18.145666, 11.631079>,  <25.557066, 18.227848, 11.594092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.779503, 18.145666, 11.631079>,  <26.150230, 18.008696, 11.692723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779503, 18.145666, 11.631079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373774, 0.880654, -0.291106,
		0.036037, -0.327405, -0.944197,
		-0.926820, 0.342425, -0.154112,
		25.501457, 18.248394, 11.584846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095594, 18.136555, 10.975310>,  <26.150230, 18.008696, 11.692723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095594, 18.136555, 10.975310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.851551, 18.359970, 11.200094>,  <25.705126, 18.494020, 11.334965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.851551, 18.359970, 11.200094>,  <26.095594, 18.136555, 10.975310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851551, 18.359970, 11.200094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418191, 0.829428, -0.370359,
		-0.672966, 0.009047, -0.739618,
		-0.610109, 0.558541, 0.561961,
		25.668518, 18.527533, 11.368683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.639986, 18.861284, 19.570984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386713, 18.552185, 19.588604>,  <16.234749, 18.366726, 19.599176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386713, 18.552185, 19.588604>,  <16.639986, 18.861284, 19.570984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386713, 18.552185, 19.588604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372295, -0.353965, -0.857966,
		0.678584, -0.526849, 0.511815,
		-0.633183, -0.772748, 0.044052,
		16.196758, 18.320360, 19.601820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006264, 18.226187, 19.568363>,  <16.639986, 18.861284, 19.570984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006264, 18.226187, 19.568363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643618, 18.164923, 19.411093>,  <16.426029, 18.128164, 19.316730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643618, 18.164923, 19.411093>,  <17.006264, 18.226187, 19.568363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643618, 18.164923, 19.411093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420292, -0.410423, -0.809264,
		-0.037422, -0.898941, 0.436468,
		-0.906617, -0.153159, -0.393177,
		16.371632, 18.118975, 19.293140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083168, 17.554440, 19.240677>,  <17.006264, 18.226187, 19.568363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083168, 17.554440, 19.240677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771574, 17.738159, 19.069925>,  <16.584618, 17.848391, 18.967474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771574, 17.738159, 19.069925>,  <17.083168, 17.554440, 19.240677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771574, 17.738159, 19.069925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229707, -0.424428, -0.875840,
		-0.583453, -0.780323, 0.225119,
		-0.778985, 0.459300, -0.426879,
		16.537878, 17.875950, 18.941862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833160, 17.022362, 18.987106>,  <17.083168, 17.554440, 19.240677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833160, 17.022362, 18.987106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663702, 17.332737, 18.800156>,  <16.562027, 17.518963, 18.687984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663702, 17.332737, 18.800156>,  <16.833160, 17.022362, 18.987106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.663702, 17.332737, 18.800156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096368, -0.474430, -0.875003,
		-0.900686, -0.415733, 0.126215,
		-0.423648, 0.775939, -0.467376,
		16.536608, 17.565519, 18.659943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293797, 16.737684, 18.591309>,  <16.833160, 17.022362, 18.987106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293797, 16.737684, 18.591309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358704, 17.092358, 18.418121>,  <16.397648, 17.305162, 18.314209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358704, 17.092358, 18.418121>,  <16.293797, 16.737684, 18.591309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358704, 17.092358, 18.418121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253379, -0.386628, -0.886746,
		-0.953661, 0.253593, 0.161930,
		0.162266, 0.886684, -0.432968,
		16.407383, 17.358362, 18.288231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847979, 16.623524, 18.069317>,  <16.293797, 16.737684, 18.591309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847979, 16.623524, 18.069317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027885, 16.961674, 17.954042>,  <16.135830, 17.164564, 17.884878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027885, 16.961674, 17.954042>,  <15.847979, 16.623524, 18.069317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027885, 16.961674, 17.954042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034595, -0.305933, -0.951424,
		-0.892475, 0.437889, -0.108353,
		0.449767, 0.845374, -0.288187,
		16.162815, 17.215286, 17.867586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469200, 17.141291, 17.622662>,  <15.847979, 16.623524, 18.069317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469200, 17.141291, 17.622662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862446, 17.153646, 17.550512>,  <16.098392, 17.161060, 17.507223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862446, 17.153646, 17.550512>,  <15.469200, 17.141291, 17.622662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862446, 17.153646, 17.550512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163100, -0.299081, -0.940186,
		-0.082986, 0.953728, -0.288993,
		0.983113, 0.030887, -0.180372,
		16.157379, 17.162912, 17.496401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456873, 17.247131, 16.904367>,  <15.469200, 17.141291, 17.622662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.456873, 17.247131, 16.904367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847473, 17.186487, 16.965637>,  <16.081833, 17.150101, 17.002399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847473, 17.186487, 16.965637>,  <15.456873, 17.247131, 16.904367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847473, 17.186487, 16.965637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082349, -0.394314, -0.915279,
		0.199165, 0.906383, -0.372563,
		0.976500, -0.151611, 0.153173,
		16.140423, 17.141005, 17.011589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842661, 17.359976, 16.224333>,  <15.456873, 17.247131, 16.904367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842661, 17.359976, 16.224333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115370, 17.156136, 16.434284>,  <16.278996, 17.033833, 16.560255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115370, 17.156136, 16.434284>,  <15.842661, 17.359976, 16.224333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115370, 17.156136, 16.434284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276644, -0.484603, -0.829836,
		0.677241, 0.710963, -0.189411,
		0.681772, -0.509599, 0.524877,
		16.319901, 17.003256, 16.591747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479828, 17.351353, 15.853128>,  <15.842661, 17.359976, 16.224333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479828, 17.351353, 15.853128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479353, 17.029261, 16.090313>,  <16.479067, 16.836006, 16.232624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479353, 17.029261, 16.090313>,  <16.479828, 17.351353, 15.853128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479353, 17.029261, 16.090313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238935, -0.576015, -0.781740,
		0.971035, 0.140750, 0.193082,
		-0.001189, -0.805231, 0.592961,
		16.478996, 16.787691, 16.268202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932213, 16.886902, 15.504687>,  <16.479828, 17.351353, 15.853128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932213, 16.886902, 15.504687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734310, 16.660976, 15.768870>,  <16.615568, 16.525421, 15.927380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734310, 16.660976, 15.768870>,  <16.932213, 16.886902, 15.504687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734310, 16.660976, 15.768870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081410, -0.726526, -0.682299,
		0.865211, -0.391339, 0.313471,
		-0.494755, -0.564813, 0.660457,
		16.585884, 16.491533, 15.967008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248262, 16.260246, 15.394641>,  <16.932213, 16.886902, 15.504687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248262, 16.260246, 15.394641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892862, 16.179369, 15.559414>,  <16.679623, 16.130842, 15.658278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892862, 16.179369, 15.559414>,  <17.248262, 16.260246, 15.394641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892862, 16.179369, 15.559414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194752, -0.646685, -0.737476,
		0.415502, -0.735471, 0.535202,
		-0.888499, -0.202191, 0.411933,
		16.626312, 16.118711, 15.682994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478666, 16.270777, 16.042006>,  <17.248262, 16.260246, 15.394641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478666, 16.270777, 16.042006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460649, 15.872384, 16.072956>,  <17.449841, 15.633348, 16.091526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460649, 15.872384, 16.072956>,  <17.478666, 16.270777, 16.042006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460649, 15.872384, 16.072956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346422, -0.057077, -0.936341,
		0.936997, -0.068979, -0.342459,
		-0.045041, -0.995984, 0.077377,
		17.447138, 15.573589, 16.096169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991579, 15.931821, 15.553053>,  <17.478666, 16.270777, 16.042006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991579, 15.931821, 15.553053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648727, 15.731242, 15.600176>,  <17.443016, 15.610895, 15.628449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648727, 15.731242, 15.600176>,  <17.991579, 15.931821, 15.553053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648727, 15.731242, 15.600176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269295, 0.241271, -0.932346,
		0.439098, -0.830867, -0.341838,
		-0.857131, -0.501447, 0.117807,
		17.391588, 15.580809, 15.635518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322672, 15.294293, 15.471699>,  <17.991579, 15.931821, 15.553053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322672, 15.294293, 15.471699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512209, 14.957714, 15.575575>,  <18.625931, 14.755767, 15.637900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512209, 14.957714, 15.575575>,  <18.322672, 15.294293, 15.471699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512209, 14.957714, 15.575575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323058, 0.108234, 0.940170,
		-0.819211, -0.529387, -0.220550,
		0.473842, -0.841448, 0.259689,
		18.654362, 14.705279, 15.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822430, 14.981695, 15.909858>,  <18.322672, 15.294293, 15.471699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822430, 14.981695, 15.909858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180159, 14.819363, 15.985209>,  <18.394796, 14.721963, 16.030420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180159, 14.819363, 15.985209>,  <17.822430, 14.981695, 15.909858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180159, 14.819363, 15.985209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205567, 0.001262, 0.978642,
		-0.397402, -0.913947, -0.082297,
		0.894323, -0.405832, 0.188378,
		18.448456, 14.697613, 16.041723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630974, 14.353812, 16.392021>,  <17.822430, 14.981695, 15.909858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630974, 14.353812, 16.392021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018848, 14.441630, 16.434940>,  <18.251574, 14.494322, 16.460691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018848, 14.441630, 16.434940>,  <17.630974, 14.353812, 16.392021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018848, 14.441630, 16.434940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094716, -0.067076, 0.993242,
		0.225260, -0.973293, -0.044248,
		0.969684, 0.219546, 0.107296,
		18.309753, 14.507494, 16.467129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850616, 13.832236, 16.890686>,  <17.630974, 14.353812, 16.392021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850616, 13.832236, 16.890686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118252, 14.128876, 16.910097>,  <18.278833, 14.306859, 16.921743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118252, 14.128876, 16.910097>,  <17.850616, 13.832236, 16.890686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118252, 14.128876, 16.910097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085939, 0.012343, 0.996224,
		0.738199, -0.670731, 0.071991,
		0.669087, 0.741598, 0.048530,
		18.318977, 14.351355, 16.924656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227177, 13.649302, 17.498564>,  <17.850616, 13.832236, 16.890686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227177, 13.649302, 17.498564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352795, 14.025166, 17.444273>,  <18.428165, 14.250683, 17.411699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352795, 14.025166, 17.444273>,  <18.227177, 13.649302, 17.498564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352795, 14.025166, 17.444273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008392, 0.140205, 0.990087,
		0.949372, -0.312069, 0.036145,
		0.314043, 0.939657, -0.135726,
		18.447008, 14.307063, 17.403555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626493, 13.768554, 18.066406>,  <18.227177, 13.649302, 17.498564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626493, 13.768554, 18.066406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582853, 14.141672, 17.929008>,  <18.556669, 14.365543, 17.846569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582853, 14.141672, 17.929008>,  <18.626493, 13.768554, 18.066406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582853, 14.141672, 17.929008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041998, 0.340925, 0.939152,
		0.993143, 0.116888, 0.001980,
		-0.109101, 0.932795, -0.343496,
		18.550123, 14.421511, 17.825960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127010, 14.248459, 18.398155>,  <18.626493, 13.768554, 18.066406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127010, 14.248459, 18.398155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787024, 14.428804, 18.289139>,  <18.583031, 14.537011, 18.223728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787024, 14.428804, 18.289139>,  <19.127010, 14.248459, 18.398155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787024, 14.428804, 18.289139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102706, 0.365586, 0.925094,
		0.516728, 0.814291, -0.264430,
		-0.849967, 0.450863, -0.272541,
		18.532034, 14.564063, 18.207376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153965, 14.912052, 18.702906>,  <19.127010, 14.248459, 18.398155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153965, 14.912052, 18.702906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760334, 14.877013, 18.641050>,  <18.524155, 14.855989, 18.603937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760334, 14.877013, 18.641050>,  <19.153965, 14.912052, 18.702906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.760334, 14.877013, 18.641050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172331, 0.257530, 0.950779,
		-0.043462, 0.962292, -0.268526,
		-0.984080, -0.087598, -0.154640,
		18.465111, 14.850734, 18.594658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964384, 15.486799, 19.052031>,  <19.153965, 14.912052, 18.702906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964384, 15.486799, 19.052031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626917, 15.283683, 18.982319>,  <18.424437, 15.161813, 18.940493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626917, 15.283683, 18.982319>,  <18.964384, 15.486799, 19.052031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.626917, 15.283683, 18.982319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416043, 0.413221, 0.810035,
		-0.339313, 0.755908, -0.559884,
		-0.843668, -0.507791, -0.174278,
		18.373817, 15.131346, 18.930035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412157, 15.977601, 19.102327>,  <18.964384, 15.486799, 19.052031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412157, 15.977601, 19.102327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231915, 15.622875, 19.143341>,  <18.123770, 15.410040, 19.167950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231915, 15.622875, 19.143341>,  <18.412157, 15.977601, 19.102327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231915, 15.622875, 19.143341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491245, 0.342222, 0.800976,
		-0.745407, 0.310555, -0.589851,
		-0.450607, -0.886814, 0.102536,
		18.096733, 15.356831, 19.174103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687458, 16.159544, 19.146465>,  <18.412157, 15.977601, 19.102327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687458, 16.159544, 19.146465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750458, 15.800750, 19.311686>,  <17.788258, 15.585473, 19.410818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750458, 15.800750, 19.311686>,  <17.687458, 16.159544, 19.146465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750458, 15.800750, 19.311686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510835, 0.283957, 0.811429,
		-0.845128, -0.338802, -0.413488,
		0.157501, -0.896985, 0.413052,
		17.797709, 15.531654, 19.435600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040861, 15.882807, 19.351076>,  <17.687458, 16.159544, 19.146465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040861, 15.882807, 19.351076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307892, 15.694340, 19.581673>,  <17.468111, 15.581260, 19.720032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307892, 15.694340, 19.581673>,  <17.040861, 15.882807, 19.351076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307892, 15.694340, 19.581673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559213, 0.193890, 0.806032,
		-0.491552, -0.860470, -0.134046,
		0.667576, -0.471167, 0.576493,
		17.508165, 15.552990, 19.754622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547644, 15.442808, 19.791477>,  <17.040861, 15.882807, 19.351076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547644, 15.442808, 19.791477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904533, 15.474208, 19.969364>,  <17.118668, 15.493048, 20.076096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904533, 15.474208, 19.969364>,  <16.547644, 15.442808, 19.791477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.904533, 15.474208, 19.969364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450423, 0.083900, 0.888864,
		0.032453, -0.993378, 0.110211,
		0.892225, 0.078487, 0.444718,
		17.172201, 15.497758, 20.102779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560564, 15.082621, 20.418011>,  <16.547644, 15.442808, 19.791477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.560564, 15.082621, 20.418011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884285, 15.307744, 20.485271>,  <17.078518, 15.442819, 20.525629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884285, 15.307744, 20.485271>,  <16.560564, 15.082621, 20.418011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884285, 15.307744, 20.485271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288484, 0.131467, 0.948416,
		0.511671, -0.816065, 0.268757,
		0.809302, 0.562809, 0.168154,
		17.127075, 15.476587, 20.535717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507122, 14.361840, 20.466623>,  <16.560564, 15.082621, 20.418011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507122, 14.361840, 20.466623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122110, 14.284414, 20.542591>,  <15.891104, 14.237959, 20.588173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122110, 14.284414, 20.542591>,  <16.507122, 14.361840, 20.466623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122110, 14.284414, 20.542591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088275, -0.438558, -0.894357,
		0.256409, -0.877610, 0.405038,
		-0.962529, -0.193566, 0.189921,
		15.833352, 14.226344, 20.599567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215172, 13.536704, 20.602753>,  <16.507122, 14.361840, 20.466623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215172, 13.536704, 20.602753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.940128, 13.773314, 20.434328>,  <15.775102, 13.915279, 20.333273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.940128, 13.773314, 20.434328>,  <16.215172, 13.536704, 20.602753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.940128, 13.773314, 20.434328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011500, -0.588709, -0.808264,
		-0.725990, -0.550927, 0.411604,
		-0.687609, 0.591525, -0.421061,
		15.733845, 13.950770, 20.308010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924046, 13.077134, 20.078066>,  <16.215172, 13.536704, 20.602753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924046, 13.077134, 20.078066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711806, 13.406961, 19.999527>,  <15.584462, 13.604857, 19.952404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711806, 13.406961, 19.999527>,  <15.924046, 13.077134, 20.078066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711806, 13.406961, 19.999527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302792, -0.400749, -0.864707,
		-0.791695, -0.399360, 0.462309,
		-0.530599, 0.824568, -0.196348,
		15.552627, 13.654332, 19.940622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208454, 12.859385, 19.894701>,  <15.924046, 13.077134, 20.078066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208454, 12.859385, 19.894701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294941, 13.217805, 19.739605>,  <15.346833, 13.432858, 19.646547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294941, 13.217805, 19.739605>,  <15.208454, 12.859385, 19.894701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294941, 13.217805, 19.739605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269979, -0.326777, -0.905720,
		-0.938276, 0.300514, 0.171261,
		0.216217, 0.896051, -0.387740,
		15.359806, 13.486620, 19.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.641312, 12.984283, 19.507286>,  <15.208454, 12.859385, 19.894701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.641312, 12.984283, 19.507286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926449, 13.234807, 19.381052>,  <15.097531, 13.385121, 19.305311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926449, 13.234807, 19.381052>,  <14.641312, 12.984283, 19.507286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926449, 13.234807, 19.381052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219504, -0.228129, -0.948565,
		-0.666087, 0.745450, -0.025144,
		0.712844, 0.626308, -0.315583,
		15.140302, 13.422699, 19.286377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349690, 13.363195, 18.925602>,  <14.641312, 12.984283, 19.507286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349690, 13.363195, 18.925602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748241, 13.359947, 18.891737>,  <14.987371, 13.357998, 18.871418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748241, 13.359947, 18.891737>,  <14.349690, 13.363195, 18.925602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748241, 13.359947, 18.891737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083324, -0.292860, -0.952518,
		-0.017060, 0.956121, -0.292476,
		0.996377, -0.008121, -0.084664,
		15.047154, 13.357512, 18.866339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517054, 13.603261, 18.226076>,  <14.349690, 13.363195, 18.925602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517054, 13.603261, 18.226076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847503, 13.410730, 18.343273>,  <15.045773, 13.295212, 18.413591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847503, 13.410730, 18.343273>,  <14.517054, 13.603261, 18.226076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847503, 13.410730, 18.343273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009608, -0.507855, -0.861389,
		0.563407, 0.714429, -0.414927,
		0.826124, -0.481326, 0.292993,
		15.095340, 13.266333, 18.431171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087996, 13.719733, 17.715660>,  <14.517054, 13.603261, 18.226076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087996, 13.719733, 17.715660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.174309, 13.385115, 17.917107>,  <15.226096, 13.184343, 18.037973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.174309, 13.385115, 17.917107>,  <15.087996, 13.719733, 17.715660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174309, 13.385115, 17.917107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141387, -0.483561, -0.863816,
		0.966151, 0.257601, 0.013933,
		0.215782, -0.836547, 0.503614,
		15.239043, 13.134151, 18.068192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599816, 13.388126, 17.254208>,  <15.087996, 13.719733, 17.715660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599816, 13.388126, 17.254208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455212, 13.105829, 17.497925>,  <15.368449, 12.936451, 17.644156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455212, 13.105829, 17.497925>,  <15.599816, 13.388126, 17.254208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455212, 13.105829, 17.497925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002271, -0.652822, -0.757508,
		0.932365, -0.275230, 0.234400,
		-0.361510, -0.705742, 0.609294,
		15.346759, 12.894107, 17.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934202, 12.816886, 17.074036>,  <15.599816, 13.388126, 17.254208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934202, 12.816886, 17.074036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662099, 12.625728, 17.296337>,  <15.498837, 12.511033, 17.429718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662099, 12.625728, 17.296337>,  <15.934202, 12.816886, 17.074036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662099, 12.625728, 17.296337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141569, -0.829608, -0.540100,
		0.719170, -0.288731, 0.632004,
		-0.680259, -0.477896, 0.555754,
		15.458021, 12.482359, 17.463064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306377, 12.242958, 17.279301>,  <15.934202, 12.816886, 17.074036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306377, 12.242958, 17.279301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911838, 12.177952, 17.289934>,  <15.675114, 12.138947, 17.296314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911838, 12.177952, 17.289934>,  <16.306377, 12.242958, 17.279301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911838, 12.177952, 17.289934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114419, -0.792433, -0.599131,
		0.118434, -0.587910, 0.800209,
		-0.986348, -0.162517, 0.026583,
		15.615933, 12.129197, 17.297909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204599, 11.499123, 17.484980>,  <16.306377, 12.242958, 17.279301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204599, 11.499123, 17.484980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855437, 11.600242, 17.318066>,  <15.645940, 11.660913, 17.217916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855437, 11.600242, 17.318066>,  <16.204599, 11.499123, 17.484980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855437, 11.600242, 17.318066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042404, -0.812745, -0.581075,
		-0.486043, -0.524918, 0.698730,
		-0.872906, 0.252798, -0.417287,
		15.593566, 11.676081, 17.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.818854, 15.983069, 25.943207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.171538, 15.814818, 26.028679>,  <14.383149, 15.713868, 26.079962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.171538, 15.814818, 26.028679>,  <13.818854, 15.983069, 25.943207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171538, 15.814818, 26.028679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190206, -0.097558, -0.976885,
		0.431751, 0.901973, -0.006012,
		0.881710, -0.420627, 0.213681,
		14.436051, 15.688630, 26.092783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383751, 16.361841, 25.614084>,  <13.818854, 15.983069, 25.943207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383751, 16.361841, 25.614084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.528754, 15.993473, 25.671350>,  <14.615756, 15.772452, 25.705711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.528754, 15.993473, 25.671350>,  <14.383751, 16.361841, 25.614084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528754, 15.993473, 25.671350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257028, -0.048870, -0.965167,
		0.895837, 0.386679, 0.218986,
		0.362508, -0.920918, 0.143167,
		14.637506, 15.717197, 25.714300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036712, 16.365274, 25.222412>,  <14.383751, 16.361841, 25.614084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036712, 16.365274, 25.222412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.933456, 15.983468, 25.282101>,  <14.871503, 15.754385, 25.317915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.933456, 15.983468, 25.282101>,  <15.036712, 16.365274, 25.222412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933456, 15.983468, 25.282101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443559, -0.254310, -0.859408,
		0.858265, -0.155658, 0.489031,
		-0.258139, -0.954514, 0.149223,
		14.856014, 15.697114, 25.326868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640141, 16.006874, 25.033140>,  <15.036712, 16.365274, 25.222412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.640141, 16.006874, 25.033140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.368206, 15.717212, 24.986811>,  <15.205045, 15.543414, 24.959013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.368206, 15.717212, 24.986811>,  <15.640141, 16.006874, 25.033140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368206, 15.717212, 24.986811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391086, -0.224386, -0.892582,
		0.620381, -0.652109, 0.435754,
		-0.679838, -0.724158, -0.115825,
		15.164254, 15.499965, 24.952063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932961, 15.314559, 24.743692>,  <15.640141, 16.006874, 25.033140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932961, 15.314559, 24.743692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.544471, 15.296939, 24.650068>,  <15.311378, 15.286367, 24.593893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.544471, 15.296939, 24.650068>,  <15.932961, 15.314559, 24.743692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544471, 15.296939, 24.650068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233407, -0.371572, -0.898585,
		-0.047387, -0.927358, 0.371161,
		-0.971224, -0.044050, -0.234059,
		15.253103, 15.283724, 24.579851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962356, 14.824832, 24.311995>,  <15.932961, 15.314559, 24.743692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962356, 14.824832, 24.311995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.591427, 14.953758, 24.235905>,  <15.368870, 15.031115, 24.190250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.591427, 14.953758, 24.235905>,  <15.962356, 14.824832, 24.311995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591427, 14.953758, 24.235905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055411, -0.384421, -0.921493,
		-0.370125, -0.865066, 0.338626,
		-0.927328, 0.322305, -0.190218,
		15.313231, 15.050453, 24.178839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557039, 14.244507, 24.027529>,  <15.962356, 14.824832, 24.311995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.557039, 14.244507, 24.027529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359205, 14.574625, 23.918514>,  <15.240505, 14.772696, 23.853106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359205, 14.574625, 23.918514>,  <15.557039, 14.244507, 24.027529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359205, 14.574625, 23.918514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106144, -0.368580, -0.923516,
		-0.862623, -0.427829, 0.269894,
		-0.494585, 0.825294, -0.272534,
		15.210830, 14.822213, 23.836754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981214, 13.984561, 23.670183>,  <15.557039, 14.244507, 24.027529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981214, 13.984561, 23.670183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.013780, 14.369199, 23.565336>,  <15.033319, 14.599981, 23.502428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.013780, 14.369199, 23.565336>,  <14.981214, 13.984561, 23.670183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013780, 14.369199, 23.565336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104492, -0.253307, -0.961726,
		-0.991188, 0.105687, 0.079856,
		0.081414, 0.961596, -0.262118,
		15.038204, 14.657678, 23.486700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431027, 14.060850, 23.107489>,  <14.981214, 13.984561, 23.670183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431027, 14.060850, 23.107489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.699970, 14.349926, 23.043421>,  <14.861336, 14.523372, 23.004980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.699970, 14.349926, 23.043421>,  <14.431027, 14.060850, 23.107489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699970, 14.349926, 23.043421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176882, -0.053253, -0.982790,
		-0.718782, 0.689117, 0.092026,
		0.672357, 0.722690, -0.160169,
		14.901677, 14.566733, 22.995371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326107, 14.319177, 22.518663>,  <14.431027, 14.060850, 23.107489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326107, 14.319177, 22.518663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.679785, 14.504094, 22.545448>,  <14.891992, 14.615045, 22.561520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.679785, 14.504094, 22.545448>,  <14.326107, 14.319177, 22.518663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679785, 14.504094, 22.545448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129028, -0.103937, -0.986179,
		-0.448945, 0.880614, -0.151549,
		0.884195, 0.462294, 0.066962,
		14.945044, 14.642782, 22.565536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366045, 14.931990, 22.120094>,  <14.326107, 14.319177, 22.518663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366045, 14.931990, 22.120094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.753818, 14.838949, 22.151331>,  <14.986481, 14.783125, 22.170073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.753818, 14.838949, 22.151331>,  <14.366045, 14.931990, 22.120094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753818, 14.838949, 22.151331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043359, -0.150865, -0.987603,
		0.241500, 0.960800, -0.136168,
		0.969432, -0.232602, 0.078093,
		15.044647, 14.769169, 22.174759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680910, 15.296919, 21.551571>,  <14.366045, 14.931990, 22.120094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680910, 15.296919, 21.551571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.909060, 14.988073, 21.663651>,  <15.045950, 14.802766, 21.730898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.909060, 14.988073, 21.663651>,  <14.680910, 15.296919, 21.551571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909060, 14.988073, 21.663651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231019, -0.176564, -0.956794,
		0.788228, 0.610463, 0.077666,
		0.570375, -0.772114, 0.280201,
		15.080173, 14.756439, 21.747711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.249604, 15.466087, 21.205265>,  <14.680910, 15.296919, 21.551571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.249604, 15.466087, 21.205265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.261646, 15.073465, 21.280781>,  <15.268871, 14.837892, 21.326090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.261646, 15.073465, 21.280781>,  <15.249604, 15.466087, 21.205265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261646, 15.073465, 21.280781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188693, -0.179900, -0.965417,
		0.981575, 0.064688, 0.179797,
		0.030105, -0.981556, 0.188791,
		15.270678, 14.778998, 21.337418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955327, 15.208933, 21.160543>,  <15.249604, 15.466087, 21.205265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955327, 15.208933, 21.160543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.689656, 14.915596, 21.102472>,  <15.530253, 14.739594, 21.067631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.689656, 14.915596, 21.102472>,  <15.955327, 15.208933, 21.160543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689656, 14.915596, 21.102472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317810, -0.101206, -0.942737,
		0.676657, -0.672284, 0.300283,
		-0.664177, -0.733343, -0.145177,
		15.490403, 14.695593, 21.058920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642443, 15.101129, 21.191891>,  <15.955327, 15.208933, 21.160543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642443, 15.101129, 21.191891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.859993, 15.413711, 21.069559>,  <16.990522, 15.601260, 20.996161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.859993, 15.413711, 21.069559>,  <16.642443, 15.101129, 21.191891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859993, 15.413711, 21.069559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169256, 0.459104, 0.872110,
		0.821921, -0.422554, 0.381960,
		0.543873, 0.781455, -0.305827,
		17.023155, 15.648147, 20.977812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980850, 15.299320, 21.767746>,  <16.642443, 15.101129, 21.191891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980850, 15.299320, 21.767746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.037941, 15.631899, 21.552961>,  <17.072195, 15.831446, 21.424091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.037941, 15.631899, 21.552961>,  <16.980850, 15.299320, 21.767746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037941, 15.631899, 21.552961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144928, 0.519110, 0.842330,
		0.979094, -0.198044, -0.046409,
		0.142727, 0.831447, -0.536960,
		17.080759, 15.881332, 21.391874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420395, 15.686499, 22.109251>,  <16.980850, 15.299320, 21.767746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420395, 15.686499, 22.109251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.304667, 15.985124, 21.869604>,  <17.235229, 16.164299, 21.725817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.304667, 15.985124, 21.869604>,  <17.420395, 15.686499, 22.109251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304667, 15.985124, 21.869604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048935, 0.613529, 0.788154,
		0.955981, 0.257346, -0.140973,
		-0.289319, 0.746562, -0.599115,
		17.217871, 16.209093, 21.689869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877457, 16.278685, 22.160309>,  <17.420395, 15.686499, 22.109251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877457, 16.278685, 22.160309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.535105, 16.434929, 22.024727>,  <17.329693, 16.528675, 21.943378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.535105, 16.434929, 22.024727>,  <17.877457, 16.278685, 22.160309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535105, 16.434929, 22.024727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069027, 0.563257, 0.823393,
		0.512544, 0.728124, -0.455119,
		-0.855882, 0.390610, -0.338955,
		17.278339, 16.552113, 21.923040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960321, 16.957952, 22.123774>,  <17.877457, 16.278685, 22.160309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960321, 16.957952, 22.123774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.566690, 16.890148, 22.145164>,  <17.330513, 16.849466, 22.157999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.566690, 16.890148, 22.145164>,  <17.960321, 16.957952, 22.123774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566690, 16.890148, 22.145164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044883, 0.528097, 0.847997,
		-0.171986, 0.832093, -0.527296,
		-0.984076, -0.169511, 0.053479,
		17.271467, 16.839294, 22.161207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668343, 17.641293, 22.424421>,  <17.960321, 16.957952, 22.123774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668343, 17.641293, 22.424421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396593, 17.352411, 22.476377>,  <17.233543, 17.179083, 22.507551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396593, 17.352411, 22.476377>,  <17.668343, 17.641293, 22.424421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396593, 17.352411, 22.476377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167937, 0.325339, 0.930565,
		-0.714317, 0.610389, -0.342312,
		-0.679374, -0.722205, 0.129888,
		17.192781, 17.135750, 22.515345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032869, 17.964346, 22.625088>,  <17.668343, 17.641293, 22.424421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032869, 17.964346, 22.625088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008057, 17.586498, 22.753990>,  <16.993170, 17.359789, 22.831331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008057, 17.586498, 22.753990>,  <17.032869, 17.964346, 22.625088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008057, 17.586498, 22.753990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355632, 0.322603, 0.877185,
		-0.932565, -0.060190, -0.355948,
		-0.062032, -0.944618, 0.322254,
		16.989447, 17.303112, 22.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459175, 18.040152, 23.020899>,  <17.032869, 17.964346, 22.625088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459175, 18.040152, 23.020899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.657887, 17.710417, 23.129473>,  <16.777113, 17.512575, 23.194618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.657887, 17.710417, 23.129473>,  <16.459175, 18.040152, 23.020899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657887, 17.710417, 23.129473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140365, 0.232327, 0.962456,
		-0.856451, -0.516228, -0.000294,
		0.496779, -0.824338, 0.271437,
		16.806919, 17.463116, 23.210903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045395, 17.747219, 23.567165>,  <16.459175, 18.040152, 23.020899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045395, 17.747219, 23.567165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.405418, 17.580137, 23.616827>,  <16.621433, 17.479887, 23.646624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.405418, 17.580137, 23.616827>,  <16.045395, 17.747219, 23.567165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405418, 17.580137, 23.616827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124754, 0.025986, 0.991847,
		-0.417526, -0.908211, -0.028722,
		0.900060, -0.417706, 0.124153,
		16.675436, 17.454826, 23.654074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901172, 17.083437, 23.933203>,  <16.045395, 17.747219, 23.567165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901172, 17.083437, 23.933203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.282471, 17.190079, 23.990110>,  <16.511250, 17.254065, 24.024256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.282471, 17.190079, 23.990110>,  <15.901172, 17.083437, 23.933203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282471, 17.190079, 23.990110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101093, -0.162324, 0.981545,
		0.284780, -0.950038, -0.127783,
		0.953247, 0.266607, 0.142269,
		16.568445, 17.270061, 24.032791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176226, 16.594633, 24.459044>,  <15.901172, 17.083437, 23.933203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176226, 16.594633, 24.459044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.425545, 16.907314, 24.450661>,  <16.575136, 17.094923, 24.445631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.425545, 16.907314, 24.450661>,  <16.176226, 16.594633, 24.459044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425545, 16.907314, 24.450661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139168, 0.137257, 0.980710,
		0.769503, -0.608357, 0.194340,
		0.623296, 0.781705, -0.020956,
		16.612534, 17.141827, 24.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583160, 16.554726, 25.055050>,  <16.176226, 16.594633, 24.459044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583160, 16.554726, 25.055050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.688839, 16.925730, 24.949278>,  <16.752247, 17.148333, 24.885815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.688839, 16.925730, 24.949278>,  <16.583160, 16.554726, 25.055050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688839, 16.925730, 24.949278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188388, 0.219264, 0.957305,
		0.945891, -0.302732, -0.116804,
		0.264196, 0.927511, -0.264431,
		16.768097, 17.203983, 24.869949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258154, 16.632284, 25.453068>,  <16.583160, 16.554726, 25.055050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258154, 16.632284, 25.453068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.086639, 16.980213, 25.355455>,  <16.983730, 17.188971, 25.296888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.086639, 16.980213, 25.355455>,  <17.258154, 16.632284, 25.453068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086639, 16.980213, 25.355455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062589, 0.240873, 0.968536,
		0.901234, 0.430571, -0.048842,
		-0.428788, 0.869821, -0.244032,
		16.958002, 17.241159, 25.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556467, 16.553534, 26.109774>,  <17.258154, 16.632284, 25.453068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556467, 16.553534, 26.109774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.740528, 16.907141, 26.076859>,  <17.850965, 17.119305, 26.057110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.740528, 16.907141, 26.076859>,  <17.556467, 16.553534, 26.109774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740528, 16.907141, 26.076859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609411, -0.381891, -0.694823,
		-0.645660, 0.269579, -0.714458,
		0.460154, 0.884017, -0.082288,
		17.878574, 17.172346, 26.052172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.133432, 17.273504, 25.016397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.493307, 17.099613, 25.000525>,  <9.709232, 16.995277, 24.991001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.493307, 17.099613, 25.000525>,  <9.133432, 17.273504, 25.016397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.493307, 17.099613, 25.000525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034140, 0.160689, -0.986414,
		0.435199, 0.886109, 0.159411,
		0.899687, -0.434729, -0.039680,
		9.763213, 16.969194, 24.988621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.524241, 17.723257, 24.592787>,  <9.133432, 17.273504, 25.016397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.524241, 17.723257, 24.592787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.713611, 17.370947, 24.588654>,  <9.827232, 17.159561, 24.586174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.713611, 17.370947, 24.588654>,  <9.524241, 17.723257, 24.592787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.713611, 17.370947, 24.588654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131510, 0.082279, -0.987894,
		0.870963, 0.466333, 0.154783,
		0.473423, -0.880775, -0.010334,
		9.855638, 17.106714, 24.585554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.022882, 17.777765, 24.129663>,  <9.524241, 17.723257, 24.592787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.022882, 17.777765, 24.129663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.004864, 17.378572, 24.147572>,  <9.994053, 17.139057, 24.158316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.004864, 17.378572, 24.147572>,  <10.022882, 17.777765, 24.129663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.004864, 17.378572, 24.147572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200879, -0.052948, -0.978184,
		0.978580, -0.035069, 0.202858,
		-0.045045, -0.997981, 0.044770,
		9.991350, 17.079178, 24.161003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.649840, 17.496655, 23.754919>,  <10.022882, 17.777765, 24.129663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.649840, 17.496655, 23.754919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.389720, 17.193388, 23.774067>,  <10.233647, 17.011429, 23.785557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.389720, 17.193388, 23.774067>,  <10.649840, 17.496655, 23.754919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.389720, 17.193388, 23.774067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194970, -0.227472, -0.954067,
		0.734231, -0.611097, 0.295745,
		-0.650301, -0.758167, 0.047871,
		10.194630, 16.965939, 23.788429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.046926, 16.913055, 23.633904>,  <10.649840, 17.496655, 23.754919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.046926, 16.913055, 23.633904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.664593, 16.849829, 23.534792>,  <10.435192, 16.811893, 23.475325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.664593, 16.849829, 23.534792>,  <11.046926, 16.913055, 23.633904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.664593, 16.849829, 23.534792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290637, -0.383028, -0.876824,
		0.043692, -0.910112, 0.412052,
		-0.955835, -0.158068, -0.247777,
		10.377842, 16.802408, 23.460459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145239, 16.283907, 23.230469>,  <11.046926, 16.913055, 23.633904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145239, 16.283907, 23.230469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.779779, 16.422255, 23.145031>,  <10.560504, 16.505262, 23.093769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.779779, 16.422255, 23.145031>,  <11.145239, 16.283907, 23.230469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.779779, 16.422255, 23.145031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148996, -0.203943, -0.967578,
		-0.378216, -0.915851, 0.134799,
		-0.913648, 0.345869, -0.213593,
		10.505685, 16.526014, 23.080954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930761, 15.738320, 22.826841>,  <11.145239, 16.283907, 23.230469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930761, 15.738320, 22.826841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.708597, 16.063589, 22.757248>,  <10.575298, 16.258751, 22.715492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.708597, 16.063589, 22.757248>,  <10.930761, 15.738320, 22.826841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.708597, 16.063589, 22.757248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120857, -0.128067, -0.984374,
		-0.822746, -0.567760, -0.027148,
		-0.555411, 0.813171, -0.173984,
		10.541974, 16.307541, 22.705053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.505718, 15.581099, 22.434862>,  <10.930761, 15.738320, 22.826841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.505718, 15.581099, 22.434862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.513541, 15.975469, 22.368444>,  <10.518235, 16.212091, 22.328594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.513541, 15.975469, 22.368444>,  <10.505718, 15.581099, 22.434862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513541, 15.975469, 22.368444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168927, -0.166945, -0.971387,
		-0.985434, -0.009050, -0.169814,
		0.019559, 0.985924, -0.166043,
		10.519409, 16.271246, 22.318632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.891317, 15.769800, 21.995478>,  <10.505718, 15.581099, 22.434862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.891317, 15.769800, 21.995478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.197247, 16.026609, 21.974115>,  <10.380804, 16.180695, 21.961298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.197247, 16.026609, 21.974115>,  <9.891317, 15.769800, 21.995478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197247, 16.026609, 21.974115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022661, -0.109656, -0.993711,
		-0.643842, 0.758803, -0.098416,
		0.764823, 0.642024, -0.053406,
		10.426693, 16.219217, 21.958094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.712234, 16.123178, 21.371878>,  <9.891317, 15.769800, 21.995478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.712234, 16.123178, 21.371878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.069956, 16.290604, 21.435152>,  <10.284589, 16.391060, 21.473116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.069956, 16.290604, 21.435152>,  <9.712234, 16.123178, 21.371878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.069956, 16.290604, 21.435152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105155, 0.147022, -0.983528,
		-0.434926, 0.896208, 0.087468,
		0.894305, 0.418564, 0.158184,
		10.338247, 16.416172, 21.482607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.689557, 16.774675, 21.112535>,  <9.712234, 16.123178, 21.371878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.689557, 16.774675, 21.112535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.072411, 16.658848, 21.115271>,  <10.302122, 16.589352, 21.116913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.072411, 16.658848, 21.115271>,  <9.689557, 16.774675, 21.112535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072411, 16.658848, 21.115271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043677, 0.120944, -0.991698,
		0.286337, 0.949485, 0.128407,
		0.957133, -0.289568, 0.006840,
		10.359550, 16.571978, 21.117323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.092384, 17.192556, 20.712975>,  <9.689557, 16.774675, 21.112535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.092384, 17.192556, 20.712975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.355955, 16.891745, 20.706423>,  <10.514098, 16.711258, 20.702492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.355955, 16.891745, 20.706423>,  <10.092384, 17.192556, 20.712975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355955, 16.891745, 20.706423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147045, 0.150136, -0.977669,
		0.737694, 0.641805, 0.209511,
		0.658928, -0.752028, -0.016380,
		10.553634, 16.666136, 20.701509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.674138, 17.446844, 20.434032>,  <10.092384, 17.192556, 20.712975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.674138, 17.446844, 20.434032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.667879, 17.056362, 20.347517>,  <10.664124, 16.822073, 20.295609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.667879, 17.056362, 20.347517>,  <10.674138, 17.446844, 20.434032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.667879, 17.056362, 20.347517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217347, 0.207820, -0.953714,
		0.975969, -0.061932, 0.208924,
		-0.015647, -0.976205, -0.216286,
		10.663185, 16.763500, 20.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.114849, 17.388002, 19.816729>,  <10.674138, 17.446844, 20.434032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.114849, 17.388002, 19.816729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.959592, 17.019363, 19.817778>,  <10.866438, 16.798180, 19.818407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.959592, 17.019363, 19.817778>,  <11.114849, 17.388002, 19.816729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.959592, 17.019363, 19.817778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223467, -0.096875, -0.969885,
		0.894096, -0.375868, 0.243548,
		-0.388142, -0.921596, 0.002621,
		10.843149, 16.742886, 19.818563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.705468, 17.678282, 20.006079>,  <11.114849, 17.388002, 19.816729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.705468, 17.678282, 20.006079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.055629, 17.865889, 19.959267>,  <12.265725, 17.978453, 19.931179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.055629, 17.865889, 19.959267>,  <11.705468, 17.678282, 20.006079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.055629, 17.865889, 19.959267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, 0.460054, 0.878463,
		0.465860, -0.753903, 0.463255,
		0.875399, 0.469022, -0.117034,
		12.318249, 18.006594, 19.924158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.963452, 17.580515, 20.629625>,  <11.705468, 17.678282, 20.006079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.963452, 17.580515, 20.629625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.167071, 17.878557, 20.457260>,  <12.289243, 18.057383, 20.353840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.167071, 17.878557, 20.457260>,  <11.963452, 17.580515, 20.629625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.167071, 17.878557, 20.457260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059336, 0.469065, 0.881168,
		0.858690, -0.474126, 0.194565,
		0.509048, 0.745106, -0.430914,
		12.319786, 18.102089, 20.327986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705742, 17.651350, 20.913424>,  <11.963452, 17.580515, 20.629625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705742, 17.651350, 20.913424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.533000, 17.979868, 20.764307>,  <12.429355, 18.176979, 20.674837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.533000, 17.979868, 20.764307>,  <12.705742, 17.651350, 20.913424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.533000, 17.979868, 20.764307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153490, 0.474214, 0.866927,
		0.888787, 0.317166, -0.330852,
		-0.431854, 0.821296, -0.372793,
		12.403443, 18.226257, 20.652470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.089762, 18.174118, 21.175589>,  <12.705742, 17.651350, 20.913424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.089762, 18.174118, 21.175589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.722312, 18.306656, 21.089481>,  <12.501842, 18.386179, 21.037817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.722312, 18.306656, 21.089481>,  <13.089762, 18.174118, 21.175589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722312, 18.306656, 21.089481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049260, 0.444514, 0.894416,
		0.392049, 0.832237, -0.392020,
		-0.918624, 0.331345, -0.215267,
		12.446725, 18.406059, 21.024900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.209132, 18.855509, 21.252764>,  <13.089762, 18.174118, 21.175589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.209132, 18.855509, 21.252764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.812880, 18.801298, 21.259493>,  <12.575129, 18.768772, 21.263531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.812880, 18.801298, 21.259493>,  <13.209132, 18.855509, 21.252764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.812880, 18.801298, 21.259493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071617, 0.620416, 0.780996,
		-0.116282, 0.772474, -0.624309,
		-0.990631, -0.135527, 0.016821,
		12.515690, 18.760639, 21.264540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911475, 19.421835, 21.527473>,  <13.209132, 18.855509, 21.252764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911475, 19.421835, 21.527473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.572068, 19.220039, 21.591358>,  <12.368424, 19.098961, 21.629690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.572068, 19.220039, 21.591358>,  <12.911475, 19.421835, 21.527473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.572068, 19.220039, 21.591358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150830, 0.519876, 0.840821,
		-0.507217, 0.689361, -0.517216,
		-0.848517, -0.504491, 0.159713,
		12.317513, 19.068691, 21.639273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505318, 19.895914, 21.945795>,  <12.911475, 19.421835, 21.527473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505318, 19.895914, 21.945795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.333417, 19.539009, 22.001188>,  <12.230276, 19.324865, 22.034424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.333417, 19.539009, 22.001188>,  <12.505318, 19.895914, 21.945795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333417, 19.539009, 22.001188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305102, 0.287843, 0.907777,
		-0.849838, 0.347868, -0.395933,
		-0.429753, -0.892264, 0.138484,
		12.204491, 19.271330, 22.042734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797864, 19.997580, 22.289167>,  <12.505318, 19.895914, 21.945795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797864, 19.997580, 22.289167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.917053, 19.627031, 22.381296>,  <11.988566, 19.404703, 22.436573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.917053, 19.627031, 22.381296>,  <11.797864, 19.997580, 22.289167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917053, 19.627031, 22.381296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343637, 0.121009, 0.931273,
		-0.890576, -0.356642, -0.282278,
		0.297973, -0.926371, 0.230323,
		12.006445, 19.349119, 22.450394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.427623, 19.801796, 22.914183>,  <11.797864, 19.997580, 22.289167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.427623, 19.801796, 22.914183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.698508, 19.507484, 22.912983>,  <11.861040, 19.330898, 22.912262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.698508, 19.507484, 22.912983>,  <11.427623, 19.801796, 22.914183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698508, 19.507484, 22.912983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116816, -0.111543, 0.986870,
		-0.726453, -0.667972, -0.161490,
		0.677214, -0.735780, -0.003000,
		11.901672, 19.286751, 22.912083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089735, 19.357807, 23.318083>,  <11.427623, 19.801796, 22.914183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089735, 19.357807, 23.318083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480904, 19.274250, 23.315735>,  <11.715605, 19.224115, 23.314325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480904, 19.274250, 23.315735>,  <11.089735, 19.357807, 23.318083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.480904, 19.274250, 23.315735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043052, -0.228871, 0.972504,
		-0.204492, -0.950780, -0.232811,
		0.977921, -0.208893, -0.005869,
		11.774280, 19.211582, 23.313974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176844, 18.621990, 23.595884>,  <11.089735, 19.357807, 23.318083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176844, 18.621990, 23.595884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.512491, 18.825466, 23.672945>,  <11.713880, 18.947552, 23.719181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.512491, 18.825466, 23.672945>,  <11.176844, 18.621990, 23.595884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512491, 18.825466, 23.672945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045605, -0.287132, 0.956805,
		0.542034, -0.811658, -0.217739,
		0.839118, 0.508691, 0.192651,
		11.764227, 18.978073, 23.730740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515761, 18.309402, 24.108814>,  <11.176844, 18.621990, 23.595884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515761, 18.309402, 24.108814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.728844, 18.646805, 24.136311>,  <11.856693, 18.849245, 24.152807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.728844, 18.646805, 24.136311>,  <11.515761, 18.309402, 24.108814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.728844, 18.646805, 24.136311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211709, -0.211462, 0.954182,
		0.819393, -0.493744, -0.291224,
		0.532705, 0.843505, 0.068740,
		11.888655, 18.899857, 24.156933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125618, 18.181385, 24.358709>,  <11.515761, 18.309402, 24.108814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125618, 18.181385, 24.358709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.068066, 18.568686, 24.440479>,  <12.033534, 18.801065, 24.489542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.068066, 18.568686, 24.440479>,  <12.125618, 18.181385, 24.358709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.068066, 18.568686, 24.440479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305315, -0.153065, 0.939869,
		0.941319, 0.197645, -0.273598,
		-0.143882, 0.968250, 0.204427,
		12.024901, 18.859161, 24.501808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.670303, 18.384951, 24.760164>,  <12.125618, 18.181385, 24.358709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.670303, 18.384951, 24.760164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.366857, 18.631556, 24.844460>,  <12.184788, 18.779518, 24.895037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.366857, 18.631556, 24.844460>,  <12.670303, 18.384951, 24.760164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366857, 18.631556, 24.844460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219487, -0.062718, 0.973597,
		0.613452, 0.784843, -0.087737,
		-0.758618, 0.616513, 0.210737,
		12.139271, 18.816509, 24.907681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284437, 18.781694, 24.835049>,  <12.670303, 18.384951, 24.760164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284437, 18.781694, 24.835049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.684223, 18.790447, 24.844753>,  <13.924095, 18.795698, 24.850576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.684223, 18.790447, 24.844753>,  <13.284437, 18.781694, 24.835049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684223, 18.790447, 24.844753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021631, 0.113359, -0.993319,
		-0.024486, 0.993313, 0.112825,
		0.999466, 0.021882, 0.024262,
		13.984063, 18.797012, 24.852032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474937, 19.242311, 24.275055>,  <13.284437, 18.781694, 24.835049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474937, 19.242311, 24.275055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.826727, 19.076057, 24.367811>,  <14.037801, 18.976305, 24.423466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.826727, 19.076057, 24.367811>,  <13.474937, 19.242311, 24.275055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826727, 19.076057, 24.367811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328183, 0.176712, -0.927938,
		0.344707, 0.892199, 0.291818,
		0.879473, -0.415637, 0.231891,
		14.090569, 18.951366, 24.437378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934570, 19.663427, 23.891336>,  <13.474937, 19.242311, 24.275055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934570, 19.663427, 23.891336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123967, 19.318995, 23.965466>,  <14.237605, 19.112335, 24.009943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123967, 19.318995, 23.965466>,  <13.934570, 19.663427, 23.891336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123967, 19.318995, 23.965466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205511, -0.096591, -0.973876,
		0.856487, 0.499209, 0.131226,
		0.473492, -0.861081, 0.185322,
		14.266015, 19.060671, 24.021063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560246, 19.659220, 23.519255>,  <13.934570, 19.663427, 23.891336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560246, 19.659220, 23.519255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.572554, 19.268221, 23.602736>,  <14.579938, 19.033623, 23.652824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.572554, 19.268221, 23.602736>,  <14.560246, 19.659220, 23.519255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572554, 19.268221, 23.602736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190527, -0.199237, -0.961251,
		0.981199, 0.069340, 0.180109,
		0.030769, -0.977495, 0.208703,
		14.581784, 18.974972, 23.665346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307764, 19.380577, 23.377493>,  <14.560246, 19.659220, 23.519255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307764, 19.380577, 23.377493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.997329, 19.130152, 23.347219>,  <14.811068, 18.979897, 23.329056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.997329, 19.130152, 23.347219>,  <15.307764, 19.380577, 23.377493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997329, 19.130152, 23.347219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190896, -0.118851, -0.974389,
		0.601036, -0.770660, 0.211752,
		-0.776089, -0.626066, -0.075682,
		14.764502, 18.942331, 23.324514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633291, 18.869801, 22.917929>,  <15.307764, 19.380577, 23.377493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633291, 18.869801, 22.917929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.247108, 18.765600, 22.920107>,  <15.015397, 18.703081, 22.921413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.247108, 18.765600, 22.920107>,  <15.633291, 18.869801, 22.917929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247108, 18.765600, 22.920107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079150, -0.313122, -0.946409,
		0.248243, -0.913288, 0.322925,
		-0.965459, -0.260499, 0.005444,
		14.957470, 18.687450, 22.921740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660367, 18.228920, 22.628057>,  <15.633291, 18.869801, 22.917929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660367, 18.228920, 22.628057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.279099, 18.338320, 22.576418>,  <15.050339, 18.403959, 22.545433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.279099, 18.338320, 22.576418>,  <15.660367, 18.228920, 22.628057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279099, 18.338320, 22.576418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082559, -0.175355, -0.981038,
		-0.290954, -0.945752, 0.144563,
		-0.953168, 0.273502, -0.129101,
		14.993149, 18.420370, 22.537687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304463, 17.630610, 22.332602>,  <15.660367, 18.228920, 22.628057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304463, 17.630610, 22.332602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.114579, 17.971195, 22.243465>,  <15.000648, 18.175547, 22.189983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.114579, 17.971195, 22.243465>,  <15.304463, 17.630610, 22.332602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.114579, 17.971195, 22.243465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072809, -0.214327, -0.974044,
		-0.877126, -0.478613, 0.039749,
		-0.474710, 0.851465, -0.222839,
		14.972166, 18.226635, 22.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.758062, 17.448442, 21.838997>,  <15.304463, 17.630610, 22.332602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.758062, 17.448442, 21.838997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.853177, 17.832785, 21.782133>,  <14.910246, 18.063391, 21.748014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.853177, 17.832785, 21.782133>,  <14.758062, 17.448442, 21.838997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853177, 17.832785, 21.782133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037906, -0.155427, -0.987120,
		-0.970577, 0.229336, -0.073381,
		0.237787, 0.960858, -0.142161,
		14.924513, 18.121042, 21.739485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451395, 17.707811, 21.137339>,  <14.758062, 17.448442, 21.838997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451395, 17.707811, 21.137339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.709804, 17.999790, 21.226635>,  <14.864848, 18.174976, 21.280212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.709804, 17.999790, 21.226635>,  <14.451395, 17.707811, 21.137339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709804, 17.999790, 21.226635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026493, 0.270844, -0.962259,
		-0.762860, 0.627553, 0.155633,
		0.646021, 0.729946, 0.223242,
		14.903609, 18.218775, 21.293608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242126, 18.250111, 20.609186>,  <14.451395, 17.707811, 21.137339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242126, 18.250111, 20.609186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609004, 18.338009, 20.742130>,  <14.829131, 18.390747, 20.821896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609004, 18.338009, 20.742130>,  <14.242126, 18.250111, 20.609186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609004, 18.338009, 20.742130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290217, 0.203075, -0.935165,
		-0.272990, 0.954187, 0.122486,
		0.917197, 0.219743, 0.332359,
		14.884163, 18.403933, 20.841839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569413, 18.842346, 20.291967>,  <14.242126, 18.250111, 20.609186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569413, 18.842346, 20.291967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891394, 18.647415, 20.427357>,  <15.084582, 18.530457, 20.508591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891394, 18.647415, 20.427357>,  <14.569413, 18.842346, 20.291967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891394, 18.647415, 20.427357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361694, -0.049187, -0.930998,
		0.470352, 0.871831, 0.136671,
		0.804951, -0.487330, 0.338471,
		15.132879, 18.501217, 20.528898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126416, 19.076071, 19.878902>,  <14.569413, 18.842346, 20.291967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126416, 19.076071, 19.878902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.292275, 18.759928, 20.059303>,  <15.391791, 18.570242, 20.167543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.292275, 18.759928, 20.059303>,  <15.126416, 19.076071, 19.878902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292275, 18.759928, 20.059303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672240, -0.067989, -0.737204,
		0.613318, 0.608862, 0.503118,
		0.414649, -0.790357, 0.451000,
		15.416670, 18.522821, 20.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821766, 19.231754, 19.805801>,  <15.126416, 19.076071, 19.878902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821766, 19.231754, 19.805801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826151, 18.834450, 19.851950>,  <15.828782, 18.596067, 19.879639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826151, 18.834450, 19.851950>,  <15.821766, 19.231754, 19.805801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826151, 18.834450, 19.851950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671467, -0.078181, -0.736899,
		0.740954, 0.085546, 0.666085,
		0.010963, -0.993262, 0.115370,
		15.829440, 18.536470, 19.886560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.043839, 25.982363, 15.837735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744368, 26.240454, 15.898606>,  <8.564684, 26.395309, 15.935129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744368, 26.240454, 15.898606>,  <9.043839, 25.982363, 15.837735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744368, 26.240454, 15.898606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575011, -0.746284, 0.335294,
		0.329909, 0.163525, 0.929742,
		-0.748681, 0.645229, 0.152177,
		8.519763, 26.434023, 15.944260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.836553, 26.098415, 16.560017>,  <9.043839, 25.982363, 15.837735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.836553, 26.098415, 16.560017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.511002, 26.122761, 16.328880>,  <8.315671, 26.137367, 16.190199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.511002, 26.122761, 16.328880>,  <8.836553, 26.098415, 16.560017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.511002, 26.122761, 16.328880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456927, -0.681362, 0.571807,
		-0.358915, 0.729411, 0.582357,
		-0.813878, 0.060864, -0.577839,
		8.266838, 26.141020, 16.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.203248, 26.230284, 17.018906>,  <8.836553, 26.098415, 16.560017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.203248, 26.230284, 17.018906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.168970, 26.002726, 16.691732>,  <8.148403, 25.866190, 16.495428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.168970, 26.002726, 16.691732>,  <8.203248, 26.230284, 17.018906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.168970, 26.002726, 16.691732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474941, -0.698349, 0.535480,
		-0.875835, 0.434359, -0.210346,
		-0.085696, -0.568894, -0.817934,
		8.143261, 25.832058, 16.446352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.618567, 25.894094, 16.974476>,  <8.203248, 26.230284, 17.018906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.618567, 25.894094, 16.974476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.872017, 25.656847, 16.775789>,  <8.024088, 25.514498, 16.656578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.872017, 25.656847, 16.775789>,  <7.618567, 25.894094, 16.974476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.872017, 25.656847, 16.775789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565352, -0.793270, 0.226051,
		-0.528105, 0.137587, -0.837959,
		0.633626, -0.593121, -0.496715,
		8.062105, 25.478910, 16.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.317918, 25.409800, 16.391211>,  <7.618567, 25.894094, 16.974476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.317918, 25.409800, 16.391211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624676, 25.241455, 16.585014>,  <7.808730, 25.140448, 16.701296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624676, 25.241455, 16.585014>,  <7.317918, 25.409800, 16.391211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624676, 25.241455, 16.585014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592941, -0.753499, 0.284008,
		0.245550, -0.505090, -0.827399,
		0.766894, -0.420861, 0.484510,
		7.854744, 25.115196, 16.730368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.313203, 25.251879, 15.612484>,  <7.317918, 25.409800, 16.391211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.313203, 25.251879, 15.612484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.577484, 25.322151, 15.320563>,  <7.736053, 25.364315, 15.145411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.577484, 25.322151, 15.320563>,  <7.313203, 25.251879, 15.612484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.577484, 25.322151, 15.320563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114591, -0.984438, -0.133235,
		-0.741850, 0.004400, -0.670551,
		0.660702, 0.175680, -0.729801,
		7.775695, 25.374855, 15.101623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.157674, 24.748102, 15.092407>,  <7.313203, 25.251879, 15.612484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.157674, 24.748102, 15.092407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524148, 24.869368, 14.987570>,  <7.744033, 24.942127, 14.924667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524148, 24.869368, 14.987570>,  <7.157674, 24.748102, 15.092407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.524148, 24.869368, 14.987570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062772, -0.754494, -0.653298,
		-0.395804, 0.582091, -0.710288,
		0.916187, 0.303164, -0.262093,
		7.799005, 24.960318, 14.908942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647326, 24.148052, 15.055314>,  <7.157674, 24.748102, 15.092407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647326, 24.148052, 15.055314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778566, 23.775148, 15.116292>,  <7.857310, 23.551405, 15.152879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778566, 23.775148, 15.116292>,  <7.647326, 24.148052, 15.055314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.778566, 23.775148, 15.116292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603919, 0.082917, -0.792721,
		0.726383, 0.352156, 0.590215,
		0.328100, -0.932261, 0.152444,
		7.876996, 23.495470, 15.162025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.359183, 24.105577, 15.088888>,  <7.647326, 24.148052, 15.055314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.359183, 24.105577, 15.088888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.275487, 23.731123, 14.975842>,  <8.225269, 23.506451, 14.908015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.275487, 23.731123, 14.975842>,  <8.359183, 24.105577, 15.088888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.275487, 23.731123, 14.975842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629580, 0.092175, -0.771448,
		0.748229, -0.339346, 0.570085,
		-0.209240, -0.936135, -0.282614,
		8.212715, 23.450283, 14.891058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.010344, 23.741415, 15.124742>,  <8.359183, 24.105577, 15.088888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.010344, 23.741415, 15.124742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.234524, 23.492491, 15.343328>,  <9.369032, 23.343136, 15.474479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.234524, 23.492491, 15.343328>,  <9.010344, 23.741415, 15.124742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.234524, 23.492491, 15.343328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722661, -0.689777, -0.044358,
		0.404543, -0.370049, -0.836307,
		0.560451, -0.622311, 0.546465,
		9.402659, 23.305798, 15.507267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.954784, 22.985619, 14.966820>,  <9.010344, 23.741415, 15.124742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.954784, 22.985619, 14.966820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.155410, 22.914597, 15.305502>,  <9.275784, 22.871983, 15.508711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.155410, 22.914597, 15.305502>,  <8.954784, 22.985619, 14.966820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.155410, 22.914597, 15.305502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354365, -0.935005, 0.013841,
		0.789215, -0.306984, -0.531884,
		0.501563, -0.177557, 0.846704,
		9.305879, 22.861330, 15.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.405256, 22.295277, 14.978640>,  <8.954784, 22.985619, 14.966820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.405256, 22.295277, 14.978640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369092, 22.388914, 15.365840>,  <9.347393, 22.445097, 15.598161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369092, 22.388914, 15.365840>,  <9.405256, 22.295277, 14.978640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.369092, 22.388914, 15.365840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408351, -0.895232, 0.178353,
		0.908337, -0.379159, 0.176531,
		-0.090412, 0.234091, 0.968001,
		9.341969, 22.459141, 15.656240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.792394, 21.865007, 15.368059>,  <9.405256, 22.295277, 14.978640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.792394, 21.865007, 15.368059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.498692, 21.993567, 15.607248>,  <9.322470, 22.070702, 15.750762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.498692, 21.993567, 15.607248>,  <9.792394, 21.865007, 15.368059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.498692, 21.993567, 15.607248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233345, -0.946648, 0.222278,
		0.637510, 0.023675, 0.770079,
		-0.734256, 0.321398, 0.597973,
		9.278415, 22.089987, 15.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.859729, 21.395498, 15.915456>,  <9.792394, 21.865007, 15.368059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.859729, 21.395498, 15.915456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.493902, 21.545025, 15.977203>,  <9.274406, 21.634741, 16.014252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.493902, 21.545025, 15.977203>,  <9.859729, 21.395498, 15.915456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.493902, 21.545025, 15.977203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304298, -0.887442, 0.346195,
		0.266407, 0.269644, 0.925375,
		-0.914566, 0.373818, 0.154369,
		9.219532, 21.657169, 16.023514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651327, 21.240290, 16.642115>,  <9.859729, 21.395498, 15.915456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651327, 21.240290, 16.642115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.326127, 21.318558, 16.422754>,  <9.131007, 21.365519, 16.291138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.326127, 21.318558, 16.422754>,  <9.651327, 21.240290, 16.642115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.326127, 21.318558, 16.422754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365034, -0.905055, 0.218235,
		-0.453629, 0.377610, 0.807237,
		-0.813001, 0.195671, -0.548400,
		9.082227, 21.377258, 16.258234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.197412, 20.881811, 17.090511>,  <9.651327, 21.240290, 16.642115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.197412, 20.881811, 17.090511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.024399, 20.925808, 16.732557>,  <8.920591, 20.952206, 16.517786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.024399, 20.925808, 16.732557>,  <9.197412, 20.881811, 17.090511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.024399, 20.925808, 16.732557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350569, -0.934948, 0.054525,
		-0.830673, 0.337302, 0.442956,
		-0.432532, 0.109994, -0.894884,
		8.894639, 20.958807, 16.464092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.437387, 20.858675, 17.209305>,  <9.197412, 20.881811, 17.090511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.437387, 20.858675, 17.209305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.495313, 20.787884, 16.819904>,  <8.530068, 20.745409, 16.586264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.495313, 20.787884, 16.819904>,  <8.437387, 20.858675, 17.209305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.495313, 20.787884, 16.819904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550666, -0.831843, 0.069310,
		-0.822068, 0.526038, -0.217918,
		0.144814, -0.176977, -0.973503,
		8.538757, 20.734791, 16.527853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.762714, 20.730555, 16.919497>,  <8.437387, 20.858675, 17.209305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.762714, 20.730555, 16.919497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.012040, 20.552599, 16.662264>,  <8.161635, 20.445826, 16.507925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.012040, 20.552599, 16.662264>,  <7.762714, 20.730555, 16.919497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.012040, 20.552599, 16.662264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624047, -0.778573, -0.066244,
		-0.471215, 0.442604, -0.762927,
		0.623314, -0.444887, -0.643082,
		8.199035, 20.419132, 16.469339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.302495, 20.510935, 16.372177>,  <7.762714, 20.730555, 16.919497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.302495, 20.510935, 16.372177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.634244, 20.287457, 16.373030>,  <7.833293, 20.153370, 16.373541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.634244, 20.287457, 16.373030>,  <7.302495, 20.510935, 16.372177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.634244, 20.287457, 16.373030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554662, -0.823832, -0.116838,
		0.067032, 0.095721, -0.993149,
		0.829371, -0.558694, 0.002130,
		7.883055, 20.119848, 16.373669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.103485, 20.004601, 15.965783>,  <7.302495, 20.510935, 16.372177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.103485, 20.004601, 15.965783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.431140, 19.845604, 16.131197>,  <7.627734, 19.750206, 16.230446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.431140, 19.845604, 16.131197>,  <7.103485, 20.004601, 15.965783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.431140, 19.845604, 16.131197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433154, -0.901282, -0.008313,
		0.376016, -0.172315, -0.910450,
		0.819140, -0.397490, 0.413535,
		7.676882, 19.726357, 16.255257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.419833, 19.541924, 15.496816>,  <7.103485, 20.004601, 15.965783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.419833, 19.541924, 15.496816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.533041, 19.414782, 15.858781>,  <7.600965, 19.338497, 16.075960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.533041, 19.414782, 15.858781>,  <7.419833, 19.541924, 15.496816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.533041, 19.414782, 15.858781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469560, -0.868604, -0.158243,
		0.836310, -0.380125, -0.395084,
		0.283019, -0.317856, 0.904913,
		7.617947, 19.319426, 16.130255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.700099, 18.905436, 15.389387>,  <7.419833, 19.541924, 15.496816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.700099, 18.905436, 15.389387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.609850, 18.920084, 15.778797>,  <7.555700, 18.928873, 16.012444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.609850, 18.920084, 15.778797>,  <7.700099, 18.905436, 15.389387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.609850, 18.920084, 15.778797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325777, -0.944601, -0.039971,
		0.918131, -0.326171, 0.225053,
		-0.225623, 0.036619, 0.973526,
		7.542163, 18.931070, 16.070854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.871260, 18.210316, 15.682617>,  <7.700099, 18.905436, 15.389387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.871260, 18.210316, 15.682617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.621037, 18.354202, 15.959538>,  <7.470902, 18.440535, 16.125690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.621037, 18.354202, 15.959538>,  <7.871260, 18.210316, 15.682617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.621037, 18.354202, 15.959538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498947, -0.866632, -0.000548,
		0.599775, -0.345765, 0.721607,
		-0.625558, 0.359715, 0.692302,
		7.433369, 18.462116, 16.167229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.894632, 17.691631, 16.145727>,  <7.871260, 18.210316, 15.682617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.894632, 17.691631, 16.145727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.562721, 17.913023, 16.174379>,  <7.363575, 18.045858, 16.191570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.562721, 17.913023, 16.174379>,  <7.894632, 17.691631, 16.145727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.562721, 17.913023, 16.174379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556527, -0.830215, -0.031950,
		0.041784, -0.066375, 0.996920,
		-0.829778, 0.553478, 0.071629,
		7.313788, 18.079065, 16.195868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.420697, 17.287407, 16.400877>,  <7.894632, 17.691631, 16.145727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.420697, 17.287407, 16.400877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158884, 17.563471, 16.277412>,  <7.001797, 17.729109, 16.203335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158884, 17.563471, 16.277412>,  <7.420697, 17.287407, 16.400877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.158884, 17.563471, 16.277412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676553, -0.716902, -0.168308,
		-0.337438, 0.098662, 0.936163,
		-0.654531, 0.690158, -0.308660,
		6.962525, 17.770517, 16.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.824846, 17.103991, 16.692368>,  <7.420697, 17.287407, 16.400877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.824846, 17.103991, 16.692368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.699332, 17.341463, 16.395967>,  <6.624024, 17.483948, 16.218128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.699332, 17.341463, 16.395967>,  <6.824846, 17.103991, 16.692368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.699332, 17.341463, 16.395967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675314, -0.688138, -0.265363,
		-0.667451, 0.417141, 0.616849,
		-0.313784, 0.593683, -0.740999,
		6.605197, 17.519567, 16.173668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.069262, 17.292023, 16.790207>,  <6.824846, 17.103991, 16.692368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.069262, 17.292023, 16.790207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.158124, 17.334389, 16.402510>,  <6.211442, 17.359808, 16.169891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.158124, 17.334389, 16.402510>,  <6.069262, 17.292023, 16.790207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.158124, 17.334389, 16.402510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816834, -0.522576, -0.244330,
		-0.532380, 0.845988, -0.029578,
		0.222157, 0.105916, -0.969241,
		6.224771, 17.366163, 16.111738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.466796, 17.557203, 16.445160>,  <6.069262, 17.292023, 16.790207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.466796, 17.557203, 16.445160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.674230, 17.376808, 16.154593>,  <5.798690, 17.268572, 15.980252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.674230, 17.376808, 16.154593>,  <5.466796, 17.557203, 16.445160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.674230, 17.376808, 16.154593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828705, -0.474288, -0.297152,
		-0.210519, 0.756084, -0.619693,
		0.518585, -0.450986, -0.726417,
		5.829805, 17.241512, 15.936667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.989693, 17.493061, 15.980963>,  <5.466796, 17.557203, 16.445160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.989693, 17.493061, 15.980963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.294735, 17.286890, 15.824621>,  <5.477760, 17.163187, 15.730816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.294735, 17.286890, 15.824621>,  <4.989693, 17.493061, 15.980963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.294735, 17.286890, 15.824621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644524, -0.554105, -0.526837,
		0.054972, 0.653684, -0.754769,
		0.762606, -0.515427, -0.390855,
		5.523517, 17.132261, 15.707365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.003863, 17.454079, 15.176586>,  <4.989693, 17.493061, 15.980963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.003863, 17.454079, 15.176586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.213542, 17.137676, 15.302777>,  <5.339349, 16.947834, 15.378492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.213542, 17.137676, 15.302777>,  <5.003863, 17.454079, 15.176586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.213542, 17.137676, 15.302777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575991, -0.602187, -0.552815,
		0.627258, 0.108071, -0.771277,
		0.524196, -0.791007, 0.315479,
		5.370800, 16.900373, 15.397421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.073849, 17.033520, 14.565319>,  <5.003863, 17.454079, 15.176586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.073849, 17.033520, 14.565319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.116849, 16.822950, 14.902679>,  <5.142650, 16.696609, 15.105096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.116849, 16.822950, 14.902679>,  <5.073849, 17.033520, 14.565319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.116849, 16.822950, 14.902679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537168, -0.744589, -0.396279,
		0.836596, -0.410447, -0.362822,
		0.107502, -0.526422, 0.843400,
		5.149100, 16.665024, 15.155700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436858, 17.472769, 14.148004>,  <5.073849, 17.033520, 14.565319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436858, 17.472769, 14.148004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.508152, 17.311901, 13.788784>,  <5.550930, 17.215380, 13.573253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.508152, 17.311901, 13.788784>,  <5.436858, 17.472769, 14.148004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.508152, 17.311901, 13.788784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753047, 0.643207, -0.138586,
		0.633366, -0.651572, 0.417495,
		0.178237, -0.402169, -0.898049,
		5.561624, 17.191250, 13.519369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.192431, 17.475218, 14.083422>,  <5.436858, 17.472769, 14.148004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.192431, 17.475218, 14.083422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058542, 17.459095, 13.706840>,  <5.978209, 17.449421, 13.480890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058542, 17.459095, 13.706840>,  <6.192431, 17.475218, 14.083422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.058542, 17.459095, 13.706840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700823, 0.657227, -0.277307,
		0.629927, -0.752614, -0.191740,
		-0.334722, -0.040308, -0.941455,
		5.958126, 17.447002, 13.424403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.832572, 17.315407, 13.688556>,  <6.192431, 17.475218, 14.083422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.832572, 17.315407, 13.688556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.546415, 17.493425, 13.473094>,  <6.374721, 17.600237, 13.343817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.546415, 17.493425, 13.473094>,  <6.832572, 17.315407, 13.688556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.546415, 17.493425, 13.473094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657211, 0.690354, -0.302464,
		0.237252, -0.570390, -0.786363,
		-0.715392, 0.445046, -0.538654,
		6.331797, 17.626940, 13.311498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.106228, 17.478281, 13.093013>,  <6.832572, 17.315407, 13.688556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.106228, 17.478281, 13.093013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802456, 17.724260, 13.008060>,  <6.620193, 17.871847, 12.957088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802456, 17.724260, 13.008060>,  <7.106228, 17.478281, 13.093013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.802456, 17.724260, 13.008060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646912, 0.679112, -0.346859,
		-0.069067, -0.400809, -0.913554,
		-0.759430, 0.614946, -0.212384,
		6.574627, 17.908745, 12.944345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.123712, 17.695013, 12.408930>,  <7.106228, 17.478281, 13.093013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.123712, 17.695013, 12.408930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.875672, 17.973385, 12.553795>,  <6.726848, 18.140408, 12.640714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.875672, 17.973385, 12.553795>,  <7.123712, 17.695013, 12.408930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.875672, 17.973385, 12.553795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493616, 0.704906, -0.509364,
		-0.609770, -0.137088, -0.780633,
		-0.620100, 0.695927, 0.362162,
		6.689642, 18.182163, 12.662443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.130051, 18.160295, 11.857674>,  <7.123712, 17.695013, 12.408930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.130051, 18.160295, 11.857674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982958, 18.356079, 12.173952>,  <6.894702, 18.473549, 12.363719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982958, 18.356079, 12.173952>,  <7.130051, 18.160295, 11.857674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.982958, 18.356079, 12.173952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475659, 0.829629, -0.292343,
		-0.799075, 0.268598, -0.537897,
		-0.367732, 0.489460, 0.790697,
		6.872638, 18.502916, 12.411161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.787387, 18.730326, 11.514067>,  <7.130051, 18.160295, 11.857674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.787387, 18.730326, 11.514067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.878816, 18.826403, 11.891439>,  <6.933673, 18.884048, 12.117863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.878816, 18.826403, 11.891439>,  <6.787387, 18.730326, 11.514067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.878816, 18.826403, 11.891439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510645, 0.795491, -0.326246,
		-0.828853, 0.556329, 0.059173,
		0.228571, 0.240194, 0.943431,
		6.947387, 18.898460, 12.174469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.632814, 19.413481, 11.553679>,  <6.787387, 18.730326, 11.514067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.632814, 19.413481, 11.553679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.882672, 19.353718, 11.860272>,  <7.032587, 19.317860, 12.044229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.882672, 19.353718, 11.860272>,  <6.632814, 19.413481, 11.553679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.882672, 19.353718, 11.860272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548556, 0.782527, -0.294513,
		-0.555792, 0.604425, 0.570759,
		0.624645, -0.149406, 0.766483,
		7.070065, 19.308897, 12.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.696738, 20.052156, 11.875016>,  <6.632814, 19.413481, 11.553679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.696738, 20.052156, 11.875016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.021151, 19.855043, 12.001122>,  <7.215798, 19.736776, 12.076786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.021151, 19.855043, 12.001122>,  <6.696738, 20.052156, 11.875016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.021151, 19.855043, 12.001122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539607, 0.838313, -0.077819,
		-0.225944, 0.233234, 0.945807,
		0.811032, -0.492782, 0.315266,
		7.264461, 19.707209, 12.095702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.951734, 20.453997, 12.408303>,  <6.696738, 20.052156, 11.875016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.951734, 20.453997, 12.408303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.265120, 20.241976, 12.278547>,  <7.453151, 20.114763, 12.200694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.265120, 20.241976, 12.278547>,  <6.951734, 20.453997, 12.408303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.265120, 20.241976, 12.278547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561706, 0.827323, 0.004785,
		0.265839, -0.185960, 0.945912,
		0.783464, -0.530052, -0.324390,
		7.500159, 20.082960, 12.181231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.508515, 20.904158, 12.652340>,  <6.951734, 20.453997, 12.408303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.508515, 20.904158, 12.652340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.713603, 20.658236, 12.412628>,  <7.836655, 20.510683, 12.268801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.713603, 20.658236, 12.412628>,  <7.508515, 20.904158, 12.652340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.713603, 20.658236, 12.412628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742167, 0.668299, -0.050645,
		0.431635, -0.418799, 0.798936,
		0.512718, -0.614804, -0.599280,
		7.867418, 20.473795, 12.232844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.101205, 20.769608, 13.035763>,  <7.508515, 20.904158, 12.652340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.101205, 20.769608, 13.035763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.218670, 20.642097, 12.675286>,  <8.289149, 20.565592, 12.459001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.218670, 20.642097, 12.675286>,  <8.101205, 20.769608, 13.035763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.218670, 20.642097, 12.675286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908822, 0.385348, 0.159842,
		0.296318, -0.865962, 0.402872,
		0.293663, -0.318774, -0.901191,
		8.306768, 20.546465, 12.404929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.746457, 20.352863, 13.195219>,  <8.101205, 20.769608, 13.035763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.746457, 20.352863, 13.195219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.717982, 20.480227, 12.817108>,  <8.700897, 20.556644, 12.590241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.717982, 20.480227, 12.817108>,  <8.746457, 20.352863, 13.195219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.717982, 20.480227, 12.817108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867128, 0.488124, 0.099117,
		0.492972, -0.812621, -0.310847,
		-0.071188, 0.318406, -0.945278,
		8.696626, 20.575748, 12.533525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.433386, 20.243414, 12.919427>,  <8.746457, 20.352863, 13.195219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.433386, 20.243414, 12.919427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.242813, 20.509972, 12.690016>,  <9.128469, 20.669907, 12.552369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.242813, 20.509972, 12.690016>,  <9.433386, 20.243414, 12.919427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.242813, 20.509972, 12.690016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804302, 0.593820, 0.021834,
		0.355122, -0.450888, -0.818895,
		-0.476431, 0.666392, -0.573528,
		9.099884, 20.709888, 12.517958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.891637, 20.440248, 12.444634>,  <9.433386, 20.243414, 12.919427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.891637, 20.440248, 12.444634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.634455, 20.744085, 12.483883>,  <9.480145, 20.926388, 12.507432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.634455, 20.744085, 12.483883>,  <9.891637, 20.440248, 12.444634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.634455, 20.744085, 12.483883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765656, 0.640704, 0.057170,
		-0.019441, 0.111885, -0.993531,
		-0.642956, 0.759592, 0.098122,
		9.441567, 20.971962, 12.513319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.334065, 20.950531, 12.240653>,  <9.891637, 20.440248, 12.444634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.334065, 20.950531, 12.240653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.024909, 21.164080, 12.377837>,  <9.839416, 21.292208, 12.460148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.024909, 21.164080, 12.377837>,  <10.334065, 20.950531, 12.240653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.024909, 21.164080, 12.377837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595493, 0.796928, 0.101456,
		-0.219150, 0.282645, -0.933855,
		-0.772891, 0.533870, 0.342960,
		9.793041, 21.324242, 12.480725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.321865, 21.531328, 11.895573>,  <10.334065, 20.950531, 12.240653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.321865, 21.531328, 11.895573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.109384, 21.621737, 12.222189>,  <9.981895, 21.675982, 12.418159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.109384, 21.621737, 12.222189>,  <10.321865, 21.531328, 11.895573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.109384, 21.621737, 12.222189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469421, 0.880825, 0.061570,
		-0.705314, 0.416008, -0.573995,
		-0.531203, 0.226019, 0.816541,
		9.950023, 21.689543, 12.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.906381, 22.172644, 11.717691>,  <10.321865, 21.531328, 11.895573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.906381, 22.172644, 11.717691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.992848, 22.151140, 12.107641>,  <10.044729, 22.138239, 12.341611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.992848, 22.151140, 12.107641>,  <9.906381, 22.172644, 11.717691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.992848, 22.151140, 12.107641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491140, 0.868943, -0.060989,
		-0.843832, 0.491984, 0.214240,
		0.216168, -0.053757, 0.974875,
		10.057699, 22.135014, 12.400104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.800411, 22.921379, 11.949594>,  <9.906381, 22.172644, 11.717691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.800411, 22.921379, 11.949594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.010891, 22.746010, 12.241045>,  <10.137178, 22.640789, 12.415916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.010891, 22.746010, 12.241045>,  <9.800411, 22.921379, 11.949594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.010891, 22.746010, 12.241045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569155, 0.818202, 0.081288,
		-0.631805, 0.371929, 0.680067,
		0.526199, -0.438422, 0.728629,
		10.168751, 22.614483, 12.459634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.900720, 23.450779, 12.433670>,  <9.800411, 22.921379, 11.949594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.900720, 23.450779, 12.433670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.178115, 23.173069, 12.510671>,  <10.344552, 23.006443, 12.556871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.178115, 23.173069, 12.510671>,  <9.900720, 23.450779, 12.433670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.178115, 23.173069, 12.510671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682649, 0.718626, 0.132541,
		-0.230357, 0.039496, 0.972304,
		0.693489, -0.694274, 0.192503,
		10.386162, 22.964787, 12.568421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.173757, 23.579466, 13.022008>,  <9.900720, 23.450779, 12.433670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.173757, 23.579466, 13.022008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.463422, 23.362608, 12.851517>,  <10.637220, 23.232494, 12.749222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.463422, 23.362608, 12.851517>,  <10.173757, 23.579466, 13.022008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463422, 23.362608, 12.851517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638871, 0.760115, 0.118612,
		0.259677, -0.358200, 0.896806,
		0.724162, -0.542143, -0.426228,
		10.680671, 23.199965, 12.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.695925, 18.580500, 25.830229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.388374, 18.330334, 25.883421>,  <17.203844, 18.180235, 25.915337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.388374, 18.330334, 25.883421>,  <17.695925, 18.580500, 25.830229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388374, 18.330334, 25.883421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102467, 0.325814, 0.939865,
		-0.631132, 0.709015, -0.314596,
		-0.768878, -0.625415, 0.132981,
		17.157711, 18.142710, 25.923315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093208, 18.884073, 26.183243>,  <17.695925, 18.580500, 25.830229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093208, 18.884073, 26.183243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019381, 18.498985, 26.262344>,  <16.975084, 18.267933, 26.309805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019381, 18.498985, 26.262344>,  <17.093208, 18.884073, 26.183243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019381, 18.498985, 26.262344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240325, 0.239312, 0.940730,
		-0.952984, 0.126103, -0.275535,
		-0.184568, -0.962719, 0.197755,
		16.964010, 18.210169, 26.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498428, 18.887899, 26.689535>,  <17.093208, 18.884073, 26.183243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498428, 18.887899, 26.689535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.684790, 18.534571, 26.710253>,  <16.796606, 18.322575, 26.722683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.684790, 18.534571, 26.710253>,  <16.498428, 18.887899, 26.689535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684790, 18.534571, 26.710253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054936, 0.087298, 0.994666,
		-0.883130, -0.460571, 0.089198,
		0.465901, -0.883320, 0.051794,
		16.824560, 18.269575, 26.725790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166882, 18.562830, 27.252975>,  <16.498428, 18.887899, 26.689535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166882, 18.562830, 27.252975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.500341, 18.347446, 27.203846>,  <16.700418, 18.218216, 27.174368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.500341, 18.347446, 27.203846>,  <16.166882, 18.562830, 27.252975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500341, 18.347446, 27.203846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105555, -0.062948, 0.992419,
		-0.542110, -0.840296, 0.004361,
		0.833652, -0.538461, -0.122822,
		16.750437, 18.185909, 27.167000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024538, 18.025974, 27.723623>,  <16.166882, 18.562830, 27.252975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024538, 18.025974, 27.723623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.412090, 18.010910, 27.625763>,  <16.644621, 18.001871, 27.567047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.412090, 18.010910, 27.625763>,  <16.024538, 18.025974, 27.723623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412090, 18.010910, 27.625763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238494, -0.122610, 0.963373,
		-0.066276, -0.991740, -0.109813,
		0.968880, -0.037658, -0.244650,
		16.702755, 17.999611, 27.552368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245377, 17.458076, 28.037851>,  <16.024538, 18.025974, 27.723623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245377, 17.458076, 28.037851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.564537, 17.691441, 27.977209>,  <16.756033, 17.831459, 27.940825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.564537, 17.691441, 27.977209>,  <16.245377, 17.458076, 28.037851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564537, 17.691441, 27.977209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294537, -0.157905, 0.942504,
		0.525928, -0.796679, -0.297829,
		0.797902, 0.583411, -0.151604,
		16.803907, 17.866465, 27.931728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798563, 17.143742, 28.325493>,  <16.245377, 17.458076, 28.037851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798563, 17.143742, 28.325493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.912025, 17.526274, 28.297285>,  <16.980103, 17.755793, 28.280359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.912025, 17.526274, 28.297285>,  <16.798563, 17.143742, 28.325493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912025, 17.526274, 28.297285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131847, 0.033948, 0.990689,
		0.949818, -0.290315, -0.116459,
		0.283658, 0.956329, -0.070521,
		16.997124, 17.813173, 28.276129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373587, 17.131567, 28.843184>,  <16.798563, 17.143742, 28.325493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373587, 17.131567, 28.843184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247608, 17.501196, 28.756557>,  <17.172020, 17.722973, 28.704582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247608, 17.501196, 28.756557>,  <17.373587, 17.131567, 28.843184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247608, 17.501196, 28.756557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100174, 0.194539, 0.975766,
		0.943808, 0.329009, 0.031298,
		-0.314947, 0.924071, -0.216566,
		17.153124, 17.778418, 28.691587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800430, 17.612137, 29.201588>,  <17.373587, 17.131567, 28.843184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800430, 17.612137, 29.201588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.465805, 17.813643, 29.115442>,  <17.265030, 17.934546, 29.063755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.465805, 17.813643, 29.115442>,  <17.800430, 17.612137, 29.201588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465805, 17.813643, 29.115442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115685, 0.221805, 0.968204,
		0.535515, 0.834880, -0.127276,
		-0.836564, 0.503764, -0.215363,
		17.214836, 17.964771, 29.050833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866140, 18.136766, 29.601891>,  <17.800430, 17.612137, 29.201588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866140, 18.136766, 29.601891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475744, 18.163450, 29.518955>,  <17.241507, 18.179461, 29.469194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475744, 18.163450, 29.518955>,  <17.866140, 18.136766, 29.601891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475744, 18.163450, 29.518955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193675, 0.169683, 0.966280,
		0.099642, 0.983238, -0.152689,
		-0.975993, 0.066710, -0.207337,
		17.182947, 18.183464, 29.456755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575285, 18.867502, 29.834801>,  <17.866140, 18.136766, 29.601891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575285, 18.867502, 29.834801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.284315, 18.593931, 29.812557>,  <17.109734, 18.429789, 29.799212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.284315, 18.593931, 29.812557>,  <17.575285, 18.867502, 29.834801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284315, 18.593931, 29.812557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170757, 0.101935, 0.980026,
		-0.664601, 0.722392, -0.190936,
		-0.727426, -0.683930, -0.055608,
		17.066088, 18.388752, 29.795876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031876, 19.124830, 30.302378>,  <17.575285, 18.867502, 29.834801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031876, 19.124830, 30.302378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.958078, 18.734564, 30.254982>,  <16.913801, 18.500404, 30.226545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.958078, 18.734564, 30.254982>,  <17.031876, 19.124830, 30.302378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958078, 18.734564, 30.254982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207424, -0.079190, 0.975041,
		-0.960697, 0.204464, -0.187766,
		-0.184491, -0.975666, -0.118488,
		16.902731, 18.441864, 30.219435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458921, 19.112713, 30.748760>,  <17.031876, 19.124830, 30.302378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458921, 19.112713, 30.748760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.595739, 18.741522, 30.689611>,  <16.677830, 18.518808, 30.654123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.595739, 18.741522, 30.689611>,  <16.458921, 19.112713, 30.748760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595739, 18.741522, 30.689611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503110, -0.313758, 0.805256,
		-0.793654, -0.201038, -0.574193,
		0.342045, -0.927976, -0.147871,
		16.698353, 18.463129, 30.645250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887431, 18.655502, 30.525932>,  <16.458921, 19.112713, 30.748760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887431, 18.655502, 30.525932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.182678, 18.478388, 30.729549>,  <16.359827, 18.372120, 30.851719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.182678, 18.478388, 30.729549>,  <15.887431, 18.655502, 30.525932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182678, 18.478388, 30.729549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611266, -0.119562, 0.782342,
		-0.285549, -0.888619, -0.358911,
		0.738117, -0.442787, 0.509042,
		16.404114, 18.345552, 30.882263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230392, 18.998880, 30.350266>,  <15.887431, 18.655502, 30.525932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230392, 18.998880, 30.350266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.939429, 19.260218, 30.434191>,  <14.764852, 19.417019, 30.484547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.939429, 19.260218, 30.434191>,  <15.230392, 18.998880, 30.350266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939429, 19.260218, 30.434191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501285, -0.297134, -0.812665,
		-0.468603, -0.696317, 0.543648,
		-0.727409, 0.653341, 0.209815,
		14.721207, 19.456221, 30.497135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619124, 18.693069, 30.460243>,  <15.230392, 18.998880, 30.350266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.619124, 18.693069, 30.460243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536766, 19.059654, 30.323013>,  <14.487350, 19.279606, 30.240675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536766, 19.059654, 30.323013>,  <14.619124, 18.693069, 30.460243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536766, 19.059654, 30.323013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394168, -0.398560, -0.828119,
		-0.895678, -0.035277, 0.443302,
		-0.205896, 0.916463, -0.343076,
		14.474998, 19.334593, 30.220091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989372, 18.656166, 30.130211>,  <14.619124, 18.693069, 30.460243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989372, 18.656166, 30.130211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.138158, 18.979002, 29.946798>,  <14.227429, 19.172703, 29.836750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.138158, 18.979002, 29.946798>,  <13.989372, 18.656166, 30.130211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138158, 18.979002, 29.946798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550323, -0.206061, -0.809125,
		-0.747521, 0.553305, 0.367512,
		0.371963, 0.807089, -0.458532,
		14.249747, 19.221128, 29.809238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482278, 18.982733, 29.668356>,  <13.989372, 18.656166, 30.130211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482278, 18.982733, 29.668356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.833885, 19.124582, 29.540876>,  <14.044849, 19.209692, 29.464390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.833885, 19.124582, 29.540876>,  <13.482278, 18.982733, 29.668356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833885, 19.124582, 29.540876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369888, 0.085440, -0.925139,
		-0.300847, 0.931097, 0.206274,
		0.879019, 0.354624, -0.318697,
		14.097590, 19.230970, 29.445267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395668, 19.569321, 29.197889>,  <13.482278, 18.982733, 29.668356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395668, 19.569321, 29.197889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.760864, 19.441616, 29.096287>,  <13.979982, 19.364992, 29.035326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.760864, 19.441616, 29.096287>,  <13.395668, 19.569321, 29.197889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760864, 19.441616, 29.096287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260485, 0.023010, -0.965204,
		0.313998, 0.947387, -0.062155,
		0.912991, -0.319263, -0.254005,
		14.034761, 19.345837, 29.020084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549278, 19.964705, 28.586224>,  <13.395668, 19.569321, 29.197889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549278, 19.964705, 28.586224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.828566, 19.678566, 28.575098>,  <13.996138, 19.506884, 28.568422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.828566, 19.678566, 28.575098>,  <13.549278, 19.964705, 28.586224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828566, 19.678566, 28.575098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121176, -0.079805, -0.989418,
		0.705556, 0.694199, -0.142404,
		0.698217, -0.715345, -0.027814,
		14.038031, 19.463963, 28.566753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974832, 20.202814, 28.074499>,  <13.549278, 19.964705, 28.586224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974832, 20.202814, 28.074499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.080794, 19.818516, 28.107468>,  <14.144372, 19.587936, 28.127249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.080794, 19.818516, 28.107468>,  <13.974832, 20.202814, 28.074499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080794, 19.818516, 28.107468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221248, -0.022633, -0.974955,
		0.938548, 0.276509, 0.206567,
		0.264908, -0.960745, 0.082419,
		14.160267, 19.530293, 28.132193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748799, 20.044500, 27.829020>,  <13.974832, 20.202814, 28.074499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748799, 20.044500, 27.829020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.520587, 19.716717, 27.807163>,  <14.383659, 19.520046, 27.794050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.520587, 19.716717, 27.807163>,  <14.748799, 20.044500, 27.829020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520587, 19.716717, 27.807163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441731, -0.250097, -0.861583,
		0.692365, -0.515696, 0.504667,
		-0.570530, -0.819457, -0.054641,
		14.349428, 19.470881, 27.790771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087196, 19.682261, 27.452442>,  <14.748799, 20.044500, 27.829020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087196, 19.682261, 27.452442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.721718, 19.525410, 27.409742>,  <14.502431, 19.431299, 27.384123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.721718, 19.525410, 27.409742>,  <15.087196, 19.682261, 27.452442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721718, 19.525410, 27.409742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201848, -0.209891, -0.956662,
		0.352725, -0.895647, 0.270927,
		-0.913697, -0.392125, -0.106751,
		14.447609, 19.407772, 27.377716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149743, 19.243443, 26.930798>,  <15.087196, 19.682261, 27.452442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149743, 19.243443, 26.930798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.753469, 19.188967, 26.930847>,  <14.515705, 19.156282, 26.930878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.753469, 19.188967, 26.930847>,  <15.149743, 19.243443, 26.930798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753469, 19.188967, 26.930847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044566, -0.325051, -0.944646,
		0.128689, -0.935839, 0.328092,
		-0.990683, -0.136187, 0.000124,
		14.456264, 19.148111, 26.930883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956685, 18.506744, 26.649878>,  <15.149743, 19.243443, 26.930798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956685, 18.506744, 26.649878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.627890, 18.731617, 26.613462>,  <14.430613, 18.866539, 26.591614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.627890, 18.731617, 26.613462>,  <14.956685, 18.506744, 26.649878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627890, 18.731617, 26.613462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111011, -0.314955, -0.942592,
		-0.558579, -0.764694, 0.321298,
		-0.821989, 0.562180, -0.091038,
		14.381292, 18.900270, 26.586151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445456, 18.037338, 26.281485>,  <14.956685, 18.506744, 26.649878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445456, 18.037338, 26.281485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.341689, 18.418455, 26.218374>,  <14.279429, 18.647125, 26.180508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.341689, 18.418455, 26.218374>,  <14.445456, 18.037338, 26.281485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.341689, 18.418455, 26.218374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036992, -0.173049, -0.984218,
		-0.965057, -0.249485, 0.080137,
		-0.259415, 0.952791, -0.157774,
		14.263865, 18.704292, 26.171041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830296, 18.019785, 25.909487>,  <14.445456, 18.037338, 26.281485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830296, 18.019785, 25.909487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.997267, 18.371674, 25.818413>,  <14.097449, 18.582808, 25.763769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.997267, 18.371674, 25.818413>,  <13.830296, 18.019785, 25.909487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997267, 18.371674, 25.818413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213306, -0.148699, -0.965603,
		-0.883320, 0.451637, 0.125579,
		0.417429, 0.879723, -0.227685,
		14.122496, 18.635590, 25.750107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.334707, 18.350510, 25.473270>,  <13.830296, 18.019785, 25.909487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.334707, 18.350510, 25.473270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.682122, 18.539314, 25.412813>,  <13.890572, 18.652597, 25.376539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.682122, 18.539314, 25.412813>,  <13.334707, 18.350510, 25.473270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682122, 18.539314, 25.412813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177460, 0.011434, -0.984061,
		-0.462762, 0.881517, 0.093694,
		0.868538, 0.472014, -0.151143,
		13.942684, 18.680918, 25.367470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659467, 18.605423, 25.593157>,  <13.334707, 18.350510, 25.473270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659467, 18.605423, 25.593157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.313623, 18.787577, 25.508230>,  <12.106117, 18.896868, 25.457275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.313623, 18.787577, 25.508230>,  <12.659467, 18.605423, 25.593157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313623, 18.787577, 25.508230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194635, 0.086013, 0.977097,
		0.463215, 0.886131, 0.014266,
		-0.864609, 0.455383, -0.212314,
		12.054240, 18.924192, 25.444536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552479, 19.345068, 26.038597>,  <12.659467, 18.605423, 25.593157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552479, 19.345068, 26.038597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.220741, 19.148340, 25.932537>,  <12.021699, 19.030304, 25.868902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.220741, 19.148340, 25.932537>,  <12.552479, 19.345068, 26.038597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220741, 19.148340, 25.932537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284912, -0.035968, 0.957879,
		-0.480640, 0.869954, -0.110295,
		-0.829343, -0.491819, -0.265148,
		11.971938, 19.000795, 25.852993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.073549, 19.670820, 26.504230>,  <12.552479, 19.345068, 26.038597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.073549, 19.670820, 26.504230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.842227, 19.391041, 26.336262>,  <11.703434, 19.223173, 26.235481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.842227, 19.391041, 26.336262>,  <12.073549, 19.670820, 26.504230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.842227, 19.391041, 26.336262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542309, -0.054949, 0.838380,
		-0.609478, 0.712567, -0.347540,
		-0.578305, -0.699449, -0.419922,
		11.668736, 19.181206, 26.210285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.466204, 19.952391, 26.571043>,  <12.073549, 19.670820, 26.504230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.466204, 19.952391, 26.571043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.408332, 19.558268, 26.534746>,  <11.373609, 19.321793, 26.512968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.408332, 19.558268, 26.534746>,  <11.466204, 19.952391, 26.571043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408332, 19.558268, 26.534746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494210, -0.007491, 0.869310,
		-0.857219, 0.170616, -0.485866,
		-0.144679, -0.985309, -0.090742,
		11.364928, 19.262674, 26.507524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.712917, 19.741802, 26.676657>,  <11.466204, 19.952391, 26.571043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.712917, 19.741802, 26.676657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.904613, 19.396622, 26.740709>,  <11.019629, 19.189512, 26.779140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.904613, 19.396622, 26.740709>,  <10.712917, 19.741802, 26.676657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904613, 19.396622, 26.740709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463555, -0.093940, 0.881075,
		-0.745283, -0.496475, -0.445045,
		0.479239, -0.862953, 0.160132,
		11.048385, 19.137735, 26.788750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244135, 19.215483, 26.935070>,  <10.712917, 19.741802, 26.676657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244135, 19.215483, 26.935070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.608445, 19.085718, 27.037243>,  <10.827031, 19.007860, 27.098547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.608445, 19.085718, 27.037243>,  <10.244135, 19.215483, 26.935070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.608445, 19.085718, 27.037243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337726, -0.229392, 0.912864,
		-0.237542, -0.917683, -0.318485,
		0.910777, -0.324404, 0.255435,
		10.881678, 18.988396, 27.113873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.142489, 18.583265, 27.236183>,  <10.244135, 19.215483, 26.935070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.142489, 18.583265, 27.236183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.490109, 18.723034, 27.376272>,  <10.698682, 18.806894, 27.460325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.490109, 18.723034, 27.376272>,  <10.142489, 18.583265, 27.236183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.490109, 18.723034, 27.376272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265437, -0.268062, 0.926113,
		0.417485, -0.897801, -0.140210,
		0.869050, 0.349422, 0.350222,
		10.750825, 18.827860, 27.481339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.510125, 18.026794, 27.515537>,  <10.142489, 18.583265, 27.236183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.510125, 18.026794, 27.515537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.290401, 17.703756, 27.601374>,  <10.158566, 17.509933, 27.652876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.290401, 17.703756, 27.601374>,  <10.510125, 18.026794, 27.515537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.290401, 17.703756, 27.601374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131911, -0.337393, -0.932076,
		0.825140, -0.483693, 0.291865,
		-0.549312, -0.807593, 0.214592,
		10.125607, 17.461479, 27.665751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873837, 17.343687, 27.403584>,  <10.510125, 18.026794, 27.515537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873837, 17.343687, 27.403584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.478900, 17.292664, 27.365889>,  <10.241938, 17.262051, 27.343271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.478900, 17.292664, 27.365889>,  <10.873837, 17.343687, 27.403584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.478900, 17.292664, 27.365889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138281, -0.401470, -0.905373,
		0.077653, -0.906946, 0.414028,
		-0.987344, -0.127557, -0.094238,
		10.182696, 17.254396, 27.337618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.725120, 16.624744, 27.241066>,  <10.873837, 17.343687, 27.403584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.725120, 16.624744, 27.241066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.411603, 16.834421, 27.107862>,  <10.223493, 16.960226, 27.027941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.411603, 16.834421, 27.107862>,  <10.725120, 16.624744, 27.241066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.411603, 16.834421, 27.107862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065615, -0.463325, -0.883756,
		-0.617549, -0.714530, 0.328755,
		-0.783791, 0.524192, -0.333010,
		10.176466, 16.991678, 27.007959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461971, 16.214502, 26.882030>,  <10.725120, 16.624744, 27.241066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461971, 16.214502, 26.882030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268831, 16.533484, 26.737297>,  <10.152947, 16.724873, 26.650457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268831, 16.533484, 26.737297>,  <10.461971, 16.214502, 26.882030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268831, 16.533484, 26.737297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069978, -0.376735, -0.923674,
		-0.872902, -0.471317, 0.126102,
		-0.482851, 0.797453, -0.361834,
		10.123976, 16.772718, 26.628746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.023854, 15.950675, 26.370440>,  <10.461971, 16.214502, 26.882030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.023854, 15.950675, 26.370440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.026183, 16.345407, 26.305777>,  <10.027580, 16.582247, 26.266979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.026183, 16.345407, 26.305777>,  <10.023854, 15.950675, 26.370440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026183, 16.345407, 26.305777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083494, -0.161574, -0.983322,
		-0.996491, -0.007772, -0.083336,
		0.005822, 0.986830, -0.161656,
		10.027929, 16.641457, 26.257280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478253, 15.937934, 25.843948>,  <10.023854, 15.950675, 26.370440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478253, 15.937934, 25.843948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.689139, 16.276188, 25.810612>,  <9.815671, 16.479139, 25.790609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.689139, 16.276188, 25.810612>,  <9.478253, 15.937934, 25.843948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.689139, 16.276188, 25.810612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090068, -0.041912, -0.995053,
		-0.844944, 0.532114, 0.054068,
		0.527216, 0.845635, -0.083340,
		9.847304, 16.529879, 25.785610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.073324, 16.484158, 25.281557>,  <9.478253, 15.937934, 25.843948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.073324, 16.484158, 25.281557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.460135, 16.576357, 25.324869>,  <9.692223, 16.631678, 25.350857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.460135, 16.576357, 25.324869>,  <9.073324, 16.484158, 25.281557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.460135, 16.576357, 25.324869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040417, 0.280879, -0.958892,
		-0.251438, 0.931653, 0.262302,
		0.967029, 0.230500, 0.108278,
		9.750244, 16.645508, 25.357353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.130223, 15.243185, 30.083969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.431350, 15.014925, 29.952744>,  <13.612025, 14.877969, 29.874008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.431350, 15.014925, 29.952744>,  <13.130223, 15.243185, 30.083969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431350, 15.014925, 29.952744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655623, 0.605748, 0.450808,
		-0.058529, -0.554462, 0.830148,
		0.752816, -0.570650, -0.328064,
		13.657195, 14.843730, 29.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633086, 15.710464, 30.416151>,  <13.130223, 15.243185, 30.083969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633086, 15.710464, 30.416151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.619071, 15.732040, 30.815323>,  <13.610662, 15.744987, 31.054827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.619071, 15.732040, 30.815323>,  <13.633086, 15.710464, 30.416151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619071, 15.732040, 30.815323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720983, 0.692846, -0.012136,
		-0.692066, 0.719065, -0.063167,
		-0.035039, 0.053941, 0.997929,
		13.608560, 15.748222, 31.114702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995323, 16.335743, 30.473484>,  <13.633086, 15.710464, 30.416151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995323, 16.335743, 30.473484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.994022, 16.192011, 30.846766>,  <13.993242, 16.105772, 31.070734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.994022, 16.192011, 30.846766>,  <13.995323, 16.335743, 30.473484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994022, 16.192011, 30.846766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683261, 0.680604, 0.264447,
		-0.730167, 0.638483, 0.243302,
		-0.003252, -0.359329, 0.933205,
		13.993047, 16.084211, 31.126726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264821, 16.673153, 29.842201>,  <13.995323, 16.335743, 30.473484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264821, 16.673153, 29.842201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.584504, 16.440281, 29.782419>,  <14.776314, 16.300558, 29.746550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.584504, 16.440281, 29.782419>,  <14.264821, 16.673153, 29.842201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584504, 16.440281, 29.782419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173421, 0.014732, -0.984738,
		0.575494, 0.812928, -0.089188,
		0.799207, -0.582178, -0.149457,
		14.824266, 16.265627, 29.737581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733521, 17.029675, 29.365381>,  <14.264821, 16.673153, 29.842201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733521, 17.029675, 29.365381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.767256, 16.631105, 29.363216>,  <14.787497, 16.391964, 29.361917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.767256, 16.631105, 29.363216>,  <14.733521, 17.029675, 29.365381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.767256, 16.631105, 29.363216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085515, 0.012648, -0.996257,
		0.992761, 0.083558, 0.086276,
		0.084337, -0.996423, -0.005411,
		14.792557, 16.332178, 29.361593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224722, 16.851906, 28.785505>,  <14.733521, 17.029675, 29.365381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224722, 16.851906, 28.785505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.017332, 16.517981, 28.859552>,  <14.892899, 16.317625, 28.903980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.017332, 16.517981, 28.859552>,  <15.224722, 16.851906, 28.785505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017332, 16.517981, 28.859552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046922, -0.188386, -0.980973,
		0.853805, -0.517295, 0.058502,
		-0.518474, -0.834815, 0.185118,
		14.861790, 16.267536, 28.915087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674955, 16.360079, 28.615374>,  <15.224722, 16.851906, 28.785505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674955, 16.360079, 28.615374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.305971, 16.207563, 28.591087>,  <15.084580, 16.116055, 28.576515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.305971, 16.207563, 28.591087>,  <15.674955, 16.360079, 28.615374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305971, 16.207563, 28.591087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205250, -0.351087, -0.913570,
		0.327017, -0.855194, 0.402124,
		-0.922460, -0.381288, -0.060717,
		15.029233, 16.093178, 28.572872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756455, 15.723233, 28.238880>,  <15.674955, 16.360079, 28.615374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756455, 15.723233, 28.238880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.360584, 15.771792, 28.208422>,  <15.123061, 15.800928, 28.190147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.360584, 15.771792, 28.208422>,  <15.756455, 15.723233, 28.238880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360584, 15.771792, 28.208422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023010, -0.389841, -0.920595,
		-0.141444, -0.912845, 0.383024,
		-0.989679, 0.121399, -0.076145,
		15.063681, 15.808212, 28.185577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474850, 15.061199, 27.915260>,  <15.756455, 15.723233, 28.238880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474850, 15.061199, 27.915260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.204999, 15.351248, 27.860014>,  <15.043089, 15.525277, 27.826866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.204999, 15.351248, 27.860014>,  <15.474850, 15.061199, 27.915260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204999, 15.351248, 27.860014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096055, -0.271757, -0.957560,
		-0.731883, -0.632729, 0.252986,
		-0.674627, 0.725122, -0.138117,
		15.002611, 15.568785, 27.818579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979951, 14.774879, 27.546879>,  <15.474850, 15.061199, 27.915260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979951, 14.774879, 27.546879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.876366, 15.155325, 27.479567>,  <14.814215, 15.383593, 27.439178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.876366, 15.155325, 27.479567>,  <14.979951, 14.774879, 27.546879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.876366, 15.155325, 27.479567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235096, -0.231052, -0.944111,
		-0.936840, -0.204926, 0.283437,
		-0.258962, 0.951115, -0.168281,
		14.798677, 15.440660, 27.429083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344286, 14.680623, 27.330002>,  <14.979951, 14.774879, 27.546879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.344286, 14.680623, 27.330002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.502042, 15.022305, 27.194479>,  <14.596695, 15.227315, 27.113165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.502042, 15.022305, 27.194479>,  <14.344286, 14.680623, 27.330002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502042, 15.022305, 27.194479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242487, -0.258886, -0.934975,
		-0.886373, 0.450900, 0.105031,
		0.394389, 0.854205, -0.338807,
		14.620358, 15.278567, 27.092836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957634, 14.888664, 26.732344>,  <14.344286, 14.680623, 27.330002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957634, 14.888664, 26.732344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.286349, 15.113256, 26.693548>,  <14.483579, 15.248011, 26.670271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.286349, 15.113256, 26.693548>,  <13.957634, 14.888664, 26.732344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286349, 15.113256, 26.693548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078224, -0.057437, -0.995280,
		-0.564398, 0.825496, -0.003280,
		0.821788, 0.561478, -0.096991,
		14.532886, 15.281699, 26.664452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202409, 14.491639, 26.822533>,  <13.957634, 14.888664, 26.732344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202409, 14.491639, 26.822533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.837541, 14.512456, 26.659937>,  <12.618620, 14.524946, 26.562380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.837541, 14.512456, 26.659937>,  <13.202409, 14.491639, 26.822533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.837541, 14.512456, 26.659937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376931, 0.282732, 0.882035,
		0.160832, 0.957786, -0.238283,
		-0.912171, 0.052043, -0.406491,
		12.563890, 14.528069, 26.537989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960893, 15.119051, 27.084997>,  <13.202409, 14.491639, 26.822533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.960893, 15.119051, 27.084997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.625973, 14.923900, 26.986282>,  <12.425021, 14.806808, 26.927053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.625973, 14.923900, 26.986282>,  <12.960893, 15.119051, 27.084997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625973, 14.923900, 26.986282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452296, 0.364485, 0.813990,
		-0.307178, 0.793174, -0.525849,
		-0.837299, -0.487879, -0.246788,
		12.374783, 14.777536, 26.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407020, 15.555102, 27.204491>,  <12.960893, 15.119051, 27.084997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407020, 15.555102, 27.204491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.240996, 15.191185, 27.203732>,  <12.141382, 14.972835, 27.203276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.240996, 15.191185, 27.203732>,  <12.407020, 15.555102, 27.204491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240996, 15.191185, 27.203732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673182, 0.305710, 0.673326,
		-0.612007, 0.280747, -0.739344,
		-0.415059, -0.909793, -0.001897,
		12.116479, 14.918247, 27.203163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.829205, 15.668276, 27.305656>,  <12.407020, 15.555102, 27.204491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.829205, 15.668276, 27.305656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844984, 15.286776, 27.424856>,  <11.854451, 15.057876, 27.496376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844984, 15.286776, 27.424856>,  <11.829205, 15.668276, 27.305656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844984, 15.286776, 27.424856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619447, 0.210668, 0.756244,
		-0.784047, -0.214427, -0.582487,
		0.039448, -0.953751, 0.298000,
		11.856818, 15.000650, 27.514256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.118752, 15.504725, 27.441595>,  <11.829205, 15.668276, 27.305656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.118752, 15.504725, 27.441595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.327112, 15.244298, 27.662420>,  <11.452127, 15.088041, 27.794916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.327112, 15.244298, 27.662420>,  <11.118752, 15.504725, 27.441595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327112, 15.244298, 27.662420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685441, 0.066433, 0.725091,
		-0.508759, -0.756106, -0.411664,
		0.520898, -0.651068, 0.552065,
		11.483381, 15.048978, 27.828039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.632869, 15.033926, 27.763006>,  <11.118752, 15.504725, 27.441595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.632869, 15.033926, 27.763006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.951364, 14.980859, 27.999111>,  <11.142460, 14.949018, 28.140774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.951364, 14.980859, 27.999111>,  <10.632869, 15.033926, 27.763006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.951364, 14.980859, 27.999111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604980, -0.170302, 0.777815,
		-0.002668, -0.976420, -0.215861,
		0.796236, -0.132667, 0.590261,
		11.190234, 14.941058, 28.176189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.437170, 14.482313, 28.252184>,  <10.632869, 15.033926, 27.763006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.437170, 14.482313, 28.252184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.750406, 14.644181, 28.441080>,  <10.938349, 14.741302, 28.554417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.750406, 14.644181, 28.441080>,  <10.437170, 14.482313, 28.252184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750406, 14.644181, 28.441080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460186, -0.133724, 0.877694,
		0.418326, -0.904633, 0.081505,
		0.783091, 0.404670, 0.472239,
		10.985333, 14.765582, 28.582752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567912, 14.037095, 28.912434>,  <10.437170, 14.482313, 28.252184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567912, 14.037095, 28.912434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.756249, 14.384144, 28.976358>,  <10.869251, 14.592373, 29.014713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.756249, 14.384144, 28.976358>,  <10.567912, 14.037095, 28.912434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756249, 14.384144, 28.976358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411227, 0.055576, 0.909837,
		0.780512, -0.494110, 0.382957,
		0.470842, 0.867621, 0.159814,
		10.897502, 14.644430, 29.024303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788819, 13.970138, 29.527395>,  <10.567912, 14.037095, 28.912434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788819, 13.970138, 29.527395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.813201, 14.366549, 29.479822>,  <10.827830, 14.604397, 29.451279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.813201, 14.366549, 29.479822>,  <10.788819, 13.970138, 29.527395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.813201, 14.366549, 29.479822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509528, 0.133354, 0.850058,
		0.858292, 0.008785, 0.513086,
		0.060954, 0.991029, -0.118933,
		10.831487, 14.663858, 29.444143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.021084, 14.222962, 30.210485>,  <10.788819, 13.970138, 29.527395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.021084, 14.222962, 30.210485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.864212, 14.537657, 30.019806>,  <10.770089, 14.726474, 29.905397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.864212, 14.537657, 30.019806>,  <11.021084, 14.222962, 30.210485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.864212, 14.537657, 30.019806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594283, 0.178867, 0.784114,
		0.702157, 0.590807, 0.397396,
		-0.392179, 0.786736, -0.476699,
		10.746558, 14.773678, 29.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.153749, 14.885801, 30.569647>,  <11.021084, 14.222962, 30.210485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.153749, 14.885801, 30.569647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.829227, 14.954069, 30.345984>,  <10.634515, 14.995029, 30.211786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.829227, 14.954069, 30.345984>,  <11.153749, 14.885801, 30.569647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829227, 14.954069, 30.345984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461505, 0.400167, 0.791757,
		0.358884, 0.900410, -0.245893,
		-0.811304, 0.170668, -0.559158,
		10.585836, 15.005270, 30.178236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872842, 15.407690, 30.844666>,  <11.153749, 14.885801, 30.569647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872842, 15.407690, 30.844666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.564784, 15.336329, 30.599701>,  <10.379950, 15.293511, 30.452723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.564784, 15.336329, 30.599701>,  <10.872842, 15.407690, 30.844666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564784, 15.336329, 30.599701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637832, 0.205041, 0.742380,
		-0.006874, 0.962357, -0.271703,
		-0.770145, -0.178404, -0.612412,
		10.333740, 15.282807, 30.415977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.501060, 16.004509, 30.693640>,  <10.872842, 15.407690, 30.844666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.501060, 16.004509, 30.693640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.257626, 15.690335, 30.648535>,  <10.111565, 15.501831, 30.621471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.257626, 15.690335, 30.648535>,  <10.501060, 16.004509, 30.693640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257626, 15.690335, 30.648535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628324, 0.390232, 0.672999,
		-0.484592, 0.480431, -0.730997,
		-0.608588, -0.785433, -0.112763,
		10.075049, 15.454705, 30.614706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925970, 16.321491, 30.724651>,  <10.501060, 16.004509, 30.693640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925970, 16.321491, 30.724651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.820194, 15.944057, 30.804367>,  <9.756728, 15.717596, 30.852198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.820194, 15.944057, 30.804367>,  <9.925970, 16.321491, 30.724651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.820194, 15.944057, 30.804367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715678, 0.330519, 0.615275,
		-0.646434, 0.020076, -0.762706,
		-0.264441, -0.943586, 0.199290,
		9.740862, 15.660981, 30.864155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.341772, 16.631701, 30.521370>,  <9.925970, 16.321491, 30.724651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.341772, 16.631701, 30.521370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.312850, 17.029018, 30.485283>,  <9.295497, 17.267408, 30.463631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.312850, 17.029018, 30.485283>,  <9.341772, 16.631701, 30.521370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.312850, 17.029018, 30.485283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107131, -0.082199, -0.990841,
		-0.991612, -0.081308, -0.100469,
		-0.072305, 0.993294, -0.090220,
		9.291159, 17.327007, 30.458218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.768298, 16.769533, 30.062122>,  <9.341772, 16.631701, 30.521370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.768298, 16.769533, 30.062122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.021145, 17.079470, 30.059235>,  <9.172853, 17.265430, 30.057501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.021145, 17.079470, 30.059235>,  <8.768298, 16.769533, 30.062122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.021145, 17.079470, 30.059235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038910, 0.022434, -0.998991,
		-0.773896, 0.631760, 0.044329,
		0.632117, 0.774840, -0.007220,
		9.210780, 17.311922, 30.057068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.543682, 17.148439, 29.473934>,  <8.768298, 16.769533, 30.062122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.543682, 17.148439, 29.473934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.916229, 17.272856, 29.549627>,  <9.139757, 17.347506, 29.595043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.916229, 17.272856, 29.549627>,  <8.543682, 17.148439, 29.473934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.916229, 17.272856, 29.549627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188249, 0.033474, -0.981551,
		-0.311637, 0.949807, -0.027377,
		0.931367, 0.311041, 0.189232,
		9.195640, 17.366169, 29.606398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.649607, 17.534761, 28.977869>,  <8.543682, 17.148439, 29.473934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.649607, 17.534761, 28.977869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.024716, 17.489708, 29.109257>,  <9.249783, 17.462677, 29.188089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.024716, 17.489708, 29.109257>,  <8.649607, 17.534761, 28.977869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.024716, 17.489708, 29.109257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338018, 0.079508, -0.937775,
		0.079508, 0.990451, 0.112632,
		0.937775, -0.112632, 0.328468,
		9.306049, 17.455919, 29.207798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.946412, 18.032671, 28.625444>,  <8.649607, 17.534761, 28.977869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.946412, 18.032671, 28.625444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.251187, 17.795851, 28.730461>,  <9.434052, 17.653759, 28.793470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.251187, 17.795851, 28.730461>,  <8.946412, 18.032671, 28.625444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.251187, 17.795851, 28.730461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430346, 0.159880, -0.888392,
		0.483996, 0.789884, 0.376604,
		0.761939, -0.592048, 0.262542,
		9.479769, 17.618237, 28.809223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.570169, 18.363194, 28.492643>,  <8.946412, 18.032671, 28.625444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.570169, 18.363194, 28.492643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.684507, 17.979942, 28.485865>,  <9.753110, 17.749992, 28.481796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.684507, 17.979942, 28.485865>,  <9.570169, 18.363194, 28.492643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.684507, 17.979942, 28.485865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278410, 0.099958, -0.955247,
		0.916941, 0.268333, 0.295324,
		0.285845, -0.958126, -0.016949,
		9.770261, 17.692505, 28.480780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115322, 18.305422, 28.116886>,  <9.570169, 18.363194, 28.492643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115322, 18.305422, 28.116886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.012685, 17.918827, 28.113680>,  <9.951102, 17.686871, 28.111757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.012685, 17.918827, 28.113680>,  <10.115322, 18.305422, 28.116886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.012685, 17.918827, 28.113680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284792, -0.067681, -0.956197,
		0.923609, -0.247635, 0.292614,
		-0.256592, -0.966487, -0.008013,
		9.935707, 17.628881, 28.111277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608778, 17.961843, 28.540045>,  <10.115322, 18.305422, 28.116886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608778, 17.961843, 28.540045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.760713, 18.300415, 28.390764>,  <10.851873, 18.503559, 28.301195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.760713, 18.300415, 28.390764>,  <10.608778, 17.961843, 28.540045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.760713, 18.300415, 28.390764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204101, 0.316812, 0.926268,
		0.902257, -0.428001, -0.052421,
		0.379836, 0.846431, -0.373201,
		10.874663, 18.554344, 28.278805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236376, 18.153490, 28.797142>,  <10.608778, 17.961843, 28.540045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236376, 18.153490, 28.797142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.124756, 18.518814, 28.678488>,  <11.057784, 18.738008, 28.607294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.124756, 18.518814, 28.678488>,  <11.236376, 18.153490, 28.797142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124756, 18.518814, 28.678488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313129, 0.378567, 0.870998,
		0.907789, 0.150167, -0.391623,
		-0.279050, 0.913311, -0.296637,
		11.041040, 18.792807, 28.589497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694014, 18.613367, 29.186962>,  <11.236376, 18.153490, 28.797142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694014, 18.613367, 29.186962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438910, 18.885147, 29.041847>,  <11.285849, 19.048214, 28.954779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438910, 18.885147, 29.041847>,  <11.694014, 18.613367, 29.186962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438910, 18.885147, 29.041847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253437, 0.629891, 0.734171,
		0.727348, 0.376279, -0.573915,
		-0.637757, 0.679449, -0.362787,
		11.247583, 19.088982, 28.933010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.132148, 19.291571, 29.081215>,  <11.694014, 18.613367, 29.186962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.132148, 19.291571, 29.081215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.762115, 19.430708, 29.142179>,  <11.540094, 19.514191, 29.178759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.762115, 19.430708, 29.142179>,  <12.132148, 19.291571, 29.081215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762115, 19.430708, 29.142179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329203, 0.534418, 0.778475,
		0.189335, 0.770327, -0.608891,
		-0.925083, 0.347841, 0.152410,
		11.484590, 19.535061, 29.187902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170726, 20.039158, 29.064289>,  <12.132148, 19.291571, 29.081215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170726, 20.039158, 29.064289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.848342, 19.916811, 29.267021>,  <11.654912, 19.843403, 29.388660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.848342, 19.916811, 29.267021>,  <12.170726, 20.039158, 29.064289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848342, 19.916811, 29.267021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281094, 0.555751, 0.782385,
		-0.520975, 0.773037, -0.361936,
		-0.805960, -0.305865, 0.506829,
		11.606554, 19.825052, 29.419069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889367, 20.608500, 29.324751>,  <12.170726, 20.039158, 29.064289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889367, 20.608500, 29.324751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.722266, 20.326206, 29.553633>,  <11.622005, 20.156830, 29.690962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.722266, 20.326206, 29.553633>,  <11.889367, 20.608500, 29.324751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.722266, 20.326206, 29.553633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129894, 0.576932, 0.806397,
		-0.899227, 0.411201, -0.149344,
		-0.417753, -0.705736, 0.572206,
		11.596940, 20.114485, 29.725294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582888, 21.068624, 29.864899>,  <11.889367, 20.608500, 29.324751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582888, 21.068624, 29.864899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.629874, 20.701593, 30.016821>,  <11.658067, 20.481375, 30.107975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.629874, 20.701593, 30.016821>,  <11.582888, 21.068624, 29.864899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629874, 20.701593, 30.016821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435455, 0.391318, 0.810709,
		-0.892514, 0.070157, 0.445530,
		0.117467, -0.917577, 0.379807,
		11.665114, 20.426321, 30.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.390152, 21.168316, 30.524181>,  <11.582888, 21.068624, 29.864899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.390152, 21.168316, 30.524181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.582927, 20.818735, 30.549316>,  <11.698591, 20.608988, 30.564398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.582927, 20.818735, 30.549316>,  <11.390152, 21.168316, 30.524181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.582927, 20.818735, 30.549316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363897, 0.264877, 0.892983,
		-0.797067, -0.407494, 0.445682,
		0.481937, -0.873950, 0.062839,
		11.727508, 20.556551, 30.568169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.278104, 20.815392, 31.197716>,  <11.390152, 21.168316, 30.524181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.278104, 20.815392, 31.197716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.607708, 20.637230, 31.057646>,  <11.805470, 20.530333, 30.973604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.607708, 20.637230, 31.057646>,  <11.278104, 20.815392, 31.197716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607708, 20.637230, 31.057646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414059, 0.051532, 0.908790,
		-0.386732, -0.893846, 0.226886,
		0.824011, -0.445403, -0.350176,
		11.854911, 20.503609, 30.952593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.196996, 15.923622, 15.100651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503507, 15.962767, 15.354656>,  <13.687413, 15.986254, 15.507060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503507, 15.962767, 15.354656>,  <13.196996, 15.923622, 15.100651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503507, 15.962767, 15.354656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536163, 0.642004, 0.548052,
		-0.354049, -0.760430, 0.544422,
		0.766276, 0.097862, 0.635015,
		13.733390, 15.992126, 15.545160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860725, 16.099957, 15.750368>,  <13.196996, 15.923622, 15.100651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860725, 16.099957, 15.750368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245117, 16.160601, 15.842916>,  <13.475753, 16.196987, 15.898444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245117, 16.160601, 15.842916>,  <12.860725, 16.099957, 15.750368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245117, 16.160601, 15.842916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275441, 0.601508, 0.749880,
		-0.025482, -0.784348, 0.619797,
		0.960980, 0.151609, 0.231369,
		13.533411, 16.206083, 15.912326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022801, 15.805137, 16.465292>,  <12.860725, 16.099957, 15.750368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022801, 15.805137, 16.465292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279847, 16.097784, 16.374269>,  <13.434074, 16.273373, 16.319656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279847, 16.097784, 16.374269>,  <13.022801, 15.805137, 16.465292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279847, 16.097784, 16.374269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252939, 0.482920, 0.838337,
		0.723235, -0.481169, 0.495386,
		0.642614, 0.731618, -0.227559,
		13.472631, 16.317268, 16.306002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348763, 15.872064, 17.132704>,  <13.022801, 15.805137, 16.465292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348763, 15.872064, 17.132704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.440331, 16.213926, 16.946304>,  <13.495273, 16.419044, 16.834465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.440331, 16.213926, 16.946304>,  <13.348763, 15.872064, 17.132704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.440331, 16.213926, 16.946304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043875, 0.487284, 0.872141,
		0.972455, -0.179207, 0.149049,
		0.228923, 0.854657, -0.465999,
		13.509008, 16.470324, 16.806505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971211, 16.201283, 17.447197>,  <13.348763, 15.872064, 17.132704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971211, 16.201283, 17.447197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779421, 16.512625, 17.285078>,  <13.664347, 16.699430, 17.187807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779421, 16.512625, 17.285078>,  <13.971211, 16.201283, 17.447197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779421, 16.512625, 17.285078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039804, 0.442083, 0.896090,
		0.876652, 0.445786, -0.180986,
		-0.479476, 0.778355, -0.405297,
		13.635578, 16.746132, 17.163488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.361164, 16.782084, 17.619379>,  <13.971211, 16.201283, 17.447197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.361164, 16.782084, 17.619379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989977, 16.906919, 17.537918>,  <13.767264, 16.981821, 17.489042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989977, 16.906919, 17.537918>,  <14.361164, 16.782084, 17.619379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989977, 16.906919, 17.537918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038095, 0.464175, 0.884924,
		0.370706, 0.828940, -0.418850,
		-0.927969, 0.312090, -0.203651,
		13.711586, 17.000547, 17.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306645, 17.465881, 17.922977>,  <14.361164, 16.782084, 17.619379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306645, 17.465881, 17.922977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927345, 17.353600, 17.863609>,  <13.699765, 17.286230, 17.827990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927345, 17.353600, 17.863609>,  <14.306645, 17.465881, 17.922977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927345, 17.353600, 17.863609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287979, 0.563384, 0.774382,
		-0.133755, 0.777048, -0.615065,
		-0.948250, -0.280703, -0.148418,
		13.642870, 17.269388, 17.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945794, 18.017572, 18.010014>,  <14.306645, 17.465881, 17.922977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945794, 18.017572, 18.010014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664169, 17.736759, 18.052814>,  <13.495194, 17.568272, 18.078495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664169, 17.736759, 18.052814>,  <13.945794, 18.017572, 18.010014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664169, 17.736759, 18.052814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302207, 0.432553, 0.849452,
		-0.642626, 0.565730, -0.516702,
		-0.704062, -0.702031, 0.107002,
		13.452950, 17.526150, 18.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311028, 18.383488, 18.115007>,  <13.945794, 18.017572, 18.010014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311028, 18.383488, 18.115007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259598, 18.019167, 18.271933>,  <13.228740, 17.800575, 18.366087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259598, 18.019167, 18.271933>,  <13.311028, 18.383488, 18.115007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259598, 18.019167, 18.271933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229909, 0.412193, 0.881612,
		-0.964682, 0.023157, -0.262399,
		-0.128575, -0.910802, 0.392311,
		13.221025, 17.745926, 18.389626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.501291, 18.346315, 18.236937>,  <13.311028, 18.383488, 18.115007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.501291, 18.346315, 18.236937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651355, 18.060505, 18.473143>,  <12.741393, 17.889019, 18.614866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651355, 18.060505, 18.473143>,  <12.501291, 18.346315, 18.236937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651355, 18.060505, 18.473143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700153, 0.199066, 0.685681,
		-0.607487, -0.670692, -0.425595,
		0.375159, -0.714524, 0.590518,
		12.763903, 17.846148, 18.650297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979057, 18.222298, 18.767084>,  <12.501291, 18.346315, 18.236937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979057, 18.222298, 18.767084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301747, 18.048082, 18.926834>,  <12.495361, 17.943552, 19.022684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301747, 18.048082, 18.926834>,  <11.979057, 18.222298, 18.767084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301747, 18.048082, 18.926834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419099, 0.054758, 0.906288,
		-0.416593, -0.898502, -0.138360,
		0.806725, -0.435540, 0.399374,
		12.543765, 17.917421, 19.046646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767326, 17.678085, 19.245346>,  <11.979057, 18.222298, 18.767084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767326, 17.678085, 19.245346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128439, 17.813177, 19.351871>,  <12.345107, 17.894232, 19.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128439, 17.813177, 19.351871>,  <11.767326, 17.678085, 19.245346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128439, 17.813177, 19.351871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321971, 0.120137, 0.939096,
		0.285166, -0.933545, 0.217197,
		0.902781, 0.337730, 0.266315,
		12.399274, 17.914495, 19.431767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.686210, 16.916546, 19.309330>,  <11.767326, 17.678085, 19.245346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.686210, 16.916546, 19.309330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352511, 16.697735, 19.337017>,  <11.152292, 16.566448, 19.353630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352511, 16.697735, 19.337017>,  <11.686210, 16.916546, 19.309330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352511, 16.697735, 19.337017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147505, -0.342364, -0.927917,
		0.531296, -0.763901, 0.366305,
		-0.834246, -0.547030, 0.069218,
		11.102238, 16.533627, 19.357782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812583, 16.309227, 18.905001>,  <11.686210, 16.916546, 19.309330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812583, 16.309227, 18.905001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413479, 16.314932, 18.931139>,  <11.174016, 16.318356, 18.946823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413479, 16.314932, 18.931139>,  <11.812583, 16.309227, 18.905001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413479, 16.314932, 18.931139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060654, -0.604764, -0.794092,
		0.028192, -0.796277, 0.604275,
		-0.997761, 0.014264, 0.065347,
		11.114151, 16.319212, 18.950743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.601255, 15.729449, 18.692223>,  <11.812583, 16.309227, 18.905001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.601255, 15.729449, 18.692223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256923, 15.921168, 18.623819>,  <11.050323, 16.036200, 18.582777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256923, 15.921168, 18.623819>,  <11.601255, 15.729449, 18.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.256923, 15.921168, 18.623819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075205, -0.452167, -0.888757,
		-0.503307, -0.752207, 0.425284,
		-0.860829, 0.479301, -0.171009,
		10.998673, 16.064959, 18.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027631, 15.373102, 18.691574>,  <11.601255, 15.729449, 18.692223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.027631, 15.373102, 18.691574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876216, 15.663677, 18.462141>,  <10.785367, 15.838022, 18.324482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876216, 15.663677, 18.462141>,  <11.027631, 15.373102, 18.691574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.876216, 15.663677, 18.462141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150422, -0.659740, -0.736285,
		-0.913281, -0.192432, 0.359009,
		-0.378537, 0.726438, -0.573583,
		10.762655, 15.881609, 18.290066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.446419, 15.126912, 18.271542>,  <11.027631, 15.373102, 18.691574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.446419, 15.126912, 18.271542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550530, 15.458124, 18.072897>,  <10.612997, 15.656851, 17.953711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550530, 15.458124, 18.072897>,  <10.446419, 15.126912, 18.271542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.550530, 15.458124, 18.072897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170437, -0.466860, -0.867752,
		-0.950372, 0.310498, 0.019614,
		0.260278, 0.828030, -0.496611,
		10.628613, 15.706533, 17.923914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898347, 15.192883, 17.778889>,  <10.446419, 15.126912, 18.271542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898347, 15.192883, 17.778889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.178621, 15.422944, 17.610016>,  <10.346786, 15.560981, 17.508692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.178621, 15.422944, 17.610016>,  <9.898347, 15.192883, 17.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.178621, 15.422944, 17.610016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262349, -0.342578, -0.902116,
		-0.663485, 0.742860, -0.089149,
		0.700686, 0.575152, -0.422183,
		10.388827, 15.595490, 17.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.585151, 15.542446, 17.144197>,  <9.898347, 15.192883, 17.778889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.585151, 15.542446, 17.144197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983779, 15.549280, 17.111811>,  <10.222956, 15.553380, 17.092379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983779, 15.549280, 17.111811>,  <9.585151, 15.542446, 17.144197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.983779, 15.549280, 17.111811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063466, -0.470055, -0.880352,
		-0.053099, 0.882472, -0.467359,
		0.996570, 0.017085, -0.080967,
		10.282750, 15.554405, 17.087521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.771297, 15.811898, 16.428978>,  <9.585151, 15.542446, 17.144197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.771297, 15.811898, 16.428978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.080170, 15.594136, 16.560041>,  <10.265493, 15.463479, 16.638680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.080170, 15.594136, 16.560041>,  <9.771297, 15.811898, 16.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.080170, 15.594136, 16.560041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155153, -0.338510, -0.928083,
		0.616168, 0.767486, -0.176925,
		0.772182, -0.544405, 0.327657,
		10.311824, 15.430815, 16.658339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.150186, 15.814314, 15.817188>,  <9.771297, 15.811898, 16.428978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.150186, 15.814314, 15.817188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300634, 15.527766, 16.052254>,  <10.390903, 15.355838, 16.193293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300634, 15.527766, 16.052254>,  <10.150186, 15.814314, 15.817188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.300634, 15.527766, 16.052254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195999, -0.558370, -0.806106,
		0.905603, 0.418375, -0.069608,
		0.376122, -0.716369, 0.587663,
		10.413471, 15.312856, 16.228552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.716447, 15.637401, 15.535691>,  <10.150186, 15.814314, 15.817188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.716447, 15.637401, 15.535691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.641539, 15.331200, 15.781922>,  <10.596594, 15.147479, 15.929661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.641539, 15.331200, 15.781922>,  <10.716447, 15.637401, 15.535691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.641539, 15.331200, 15.781922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167898, -0.642387, -0.747763,
		0.967853, -0.036679, 0.248826,
		-0.187270, -0.765502, 0.615578,
		10.585358, 15.101549, 15.966596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359571, 15.323527, 15.475451>,  <10.716447, 15.637401, 15.535691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359571, 15.323527, 15.475451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082664, 15.062100, 15.597839>,  <10.916521, 14.905244, 15.671272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082664, 15.062100, 15.597839>,  <11.359571, 15.323527, 15.475451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.082664, 15.062100, 15.597839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256729, -0.619300, -0.741996,
		0.674433, -0.435106, 0.596509,
		-0.692265, -0.653567, 0.305972,
		10.874985, 14.866030, 15.689631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637878, 14.598845, 15.466893>,  <11.359571, 15.323527, 15.475451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637878, 14.598845, 15.466893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.246768, 14.569555, 15.388313>,  <11.012102, 14.551981, 15.341166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.246768, 14.569555, 15.388313>,  <11.637878, 14.598845, 15.466893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246768, 14.569555, 15.388313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203227, -0.561255, -0.802304,
		-0.051509, -0.824397, 0.563663,
		-0.977776, -0.073226, -0.196449,
		10.953435, 14.547587, 15.329378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576562, 13.930929, 15.467447>,  <11.637878, 14.598845, 15.466893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576562, 13.930929, 15.467447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.259632, 14.089248, 15.281731>,  <11.069474, 14.184239, 15.170300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.259632, 14.089248, 15.281731>,  <11.576562, 13.930929, 15.467447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.259632, 14.089248, 15.281731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186369, -0.567616, -0.801922,
		-0.580953, -0.721904, 0.375962,
		-0.792313, 0.395812, -0.464299,
		11.021935, 14.207987, 15.142444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.163842, 13.294853, 15.331351>,  <11.576562, 13.930929, 15.467447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.163842, 13.294853, 15.331351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.134279, 13.594136, 15.067617>,  <11.116542, 13.773706, 14.909377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.134279, 13.594136, 15.067617>,  <11.163842, 13.294853, 15.331351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.134279, 13.594136, 15.067617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049383, -0.657587, -0.751759,
		-0.996042, -0.088120, 0.011652,
		-0.073907, 0.748208, -0.659336,
		11.112107, 13.818599, 14.869817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593398, 12.934545, 15.751203>,  <11.163842, 13.294853, 15.331351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593398, 12.934545, 15.751203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482239, 13.292238, 15.891556>,  <11.415544, 13.506854, 15.975767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482239, 13.292238, 15.891556>,  <11.593398, 12.934545, 15.751203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482239, 13.292238, 15.891556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595736, 0.446978, -0.667315,
		-0.753573, 0.023588, -0.656941,
		-0.277897, 0.894234, 0.350882,
		11.398870, 13.560509, 15.996820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966812, 12.371739, 15.733438>,  <11.593398, 12.934545, 15.751203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966812, 12.371739, 15.733438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263662, 12.139774, 15.867871>,  <12.441772, 12.000595, 15.948531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263662, 12.139774, 15.867871>,  <11.966812, 12.371739, 15.733438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263662, 12.139774, 15.867871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232607, 0.247427, 0.940571,
		-0.628605, -0.776196, 0.048730,
		0.742125, -0.579913, 0.336082,
		12.486300, 11.965800, 15.968696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.780689, 12.148909, 16.334316>,  <11.966812, 12.371739, 15.733438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.780689, 12.148909, 16.334316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.172823, 12.071437, 16.349464>,  <12.408103, 12.024954, 16.358553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.172823, 12.071437, 16.349464>,  <11.780689, 12.148909, 16.334316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172823, 12.071437, 16.349464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002539, 0.204272, 0.978911,
		-0.197332, -0.959563, 0.200746,
		0.980333, -0.193680, 0.037873,
		12.466923, 12.013333, 16.360826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.800049, 11.644934, 16.898378>,  <11.780689, 12.148909, 16.334316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.800049, 11.644934, 16.898378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.142665, 11.846510, 16.853872>,  <12.348235, 11.967456, 16.827169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.142665, 11.846510, 16.853872>,  <11.800049, 11.644934, 16.898378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.142665, 11.846510, 16.853872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033552, 0.269519, 0.962410,
		0.514987, -0.820611, 0.247762,
		0.856541, 0.503942, -0.111266,
		12.399628, 11.997692, 16.820492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066118, 11.506202, 17.498417>,  <11.800049, 11.644934, 16.898378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066118, 11.506202, 17.498417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288156, 11.816392, 17.378077>,  <12.421378, 12.002506, 17.305872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288156, 11.816392, 17.378077>,  <12.066118, 11.506202, 17.498417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288156, 11.816392, 17.378077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061594, 0.399018, 0.914872,
		0.829505, -0.489308, 0.269257,
		0.555093, 0.775475, -0.300849,
		12.454683, 12.049034, 17.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376387, 11.584964, 18.037394>,  <12.066118, 11.506202, 17.498417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376387, 11.584964, 18.037394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.421409, 11.944141, 17.867205>,  <12.448421, 12.159648, 17.765091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.421409, 11.944141, 17.867205>,  <12.376387, 11.584964, 18.037394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421409, 11.944141, 17.867205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023475, 0.430478, 0.902295,
		0.993368, -0.091570, 0.069531,
		0.112554, 0.897944, -0.425474,
		12.455175, 12.213525, 17.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115410, 12.014891, 18.076145>,  <12.376387, 11.584964, 18.037394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115410, 12.014891, 18.076145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873795, 12.328028, 18.016417>,  <12.728826, 12.515910, 17.980579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873795, 12.328028, 18.016417>,  <13.115410, 12.014891, 18.076145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.873795, 12.328028, 18.016417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220431, 0.344165, 0.912667,
		0.765865, 0.518370, -0.380451,
		-0.604037, 0.782843, -0.149319,
		12.692583, 12.562881, 17.971621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.418556, 12.631001, 18.338873>,  <13.115410, 12.014891, 18.076145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.418556, 12.631001, 18.338873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034183, 12.737763, 18.309561>,  <12.803558, 12.801821, 18.291973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034183, 12.737763, 18.309561>,  <13.418556, 12.631001, 18.338873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034183, 12.737763, 18.309561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045589, 0.413770, 0.909239,
		0.273000, 0.870378, -0.409773,
		-0.960933, 0.266904, -0.073279,
		12.745903, 12.817835, 18.287577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450501, 13.307295, 18.315197>,  <13.418556, 12.631001, 18.338873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450501, 13.307295, 18.315197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075211, 13.204336, 18.407696>,  <12.850036, 13.142561, 18.463196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075211, 13.204336, 18.407696>,  <13.450501, 13.307295, 18.315197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075211, 13.204336, 18.407696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010070, 0.647717, 0.761815,
		-0.345870, 0.717085, -0.605114,
		-0.938228, -0.257396, 0.231247,
		12.793742, 13.127117, 18.477070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137883, 13.906470, 18.574404>,  <13.450501, 13.307295, 18.315197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137883, 13.906470, 18.574404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911074, 13.603426, 18.703716>,  <12.774988, 13.421599, 18.781303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911074, 13.603426, 18.703716>,  <13.137883, 13.906470, 18.574404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911074, 13.603426, 18.703716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064492, 0.432101, 0.899516,
		-0.821173, 0.489198, -0.293871,
		-0.567023, -0.757611, 0.323281,
		12.740967, 13.376143, 18.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.637633, 14.218459, 18.941082>,  <13.137883, 13.906470, 18.574404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.637633, 14.218459, 18.941082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661369, 13.847250, 19.088188>,  <12.675611, 13.624525, 19.176453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661369, 13.847250, 19.088188>,  <12.637633, 14.218459, 18.941082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661369, 13.847250, 19.088188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004877, 0.368682, 0.929543,
		-0.998226, -0.053366, 0.026403,
		0.059341, -0.928022, 0.367768,
		12.679172, 13.568843, 19.198519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190373, 14.186996, 19.521784>,  <12.637633, 14.218459, 18.941082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190373, 14.186996, 19.521784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380149, 13.841258, 19.588501>,  <12.494014, 13.633816, 19.628531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380149, 13.841258, 19.588501>,  <12.190373, 14.186996, 19.521784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380149, 13.841258, 19.588501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050653, 0.162357, 0.985431,
		-0.878830, -0.475975, 0.033246,
		0.474438, -0.864343, 0.166794,
		12.522480, 13.581955, 19.638538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.780754, 13.921089, 20.017805>,  <12.190373, 14.186996, 19.521784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.780754, 13.921089, 20.017805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137717, 13.741611, 20.036913>,  <12.351895, 13.633924, 20.048378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137717, 13.741611, 20.036913>,  <11.780754, 13.921089, 20.017805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137717, 13.741611, 20.036913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043803, 0.019218, 0.998855,
		-0.449100, -0.893478, -0.002504,
		0.892407, -0.448696, 0.047768,
		12.405439, 13.607003, 20.051243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744228, 13.371981, 20.546070>,  <11.780754, 13.921089, 20.017805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744228, 13.371981, 20.546070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128198, 13.477324, 20.507727>,  <12.358580, 13.540531, 20.484720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128198, 13.477324, 20.507727>,  <11.744228, 13.371981, 20.546070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128198, 13.477324, 20.507727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106107, -0.024937, 0.994042,
		0.259402, -0.964375, -0.051882,
		0.959923, 0.263362, -0.095859,
		12.416175, 13.556333, 20.478970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013037, 12.909285, 21.002275>,  <11.744228, 13.371981, 20.546070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013037, 12.909285, 21.002275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.251805, 13.225175, 20.945683>,  <12.395066, 13.414709, 20.911726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.251805, 13.225175, 20.945683>,  <12.013037, 12.909285, 21.002275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.251805, 13.225175, 20.945683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141251, 0.070145, 0.987486,
		0.789767, -0.609437, -0.069678,
		0.596922, 0.789726, -0.141482,
		12.430882, 13.462092, 20.903238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498152, 12.850357, 21.534182>,  <12.013037, 12.909285, 21.002275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498152, 12.850357, 21.534182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.517758, 13.227845, 21.403345>,  <12.529522, 13.454338, 21.324842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.517758, 13.227845, 21.403345>,  <12.498152, 12.850357, 21.534182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.517758, 13.227845, 21.403345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054447, 0.324473, 0.944326,
		0.997313, -0.064096, -0.035479,
		0.049015, 0.943721, -0.327091,
		12.532463, 13.510962, 21.305218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.929578, 13.134748, 21.908422>,  <12.498152, 12.850357, 21.534182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.929578, 13.134748, 21.908422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745891, 13.464964, 21.777208>,  <12.635678, 13.663093, 21.698481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745891, 13.464964, 21.777208>,  <12.929578, 13.134748, 21.908422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745891, 13.464964, 21.777208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071290, 0.402330, 0.912715,
		0.885459, 0.395749, -0.243610,
		-0.459218, 0.825538, -0.328033,
		12.608126, 13.712626, 21.678799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429730, 13.741209, 22.118790>,  <12.929578, 13.134748, 21.908422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429730, 13.741209, 22.118790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048948, 13.855316, 22.074245>,  <12.820478, 13.923780, 22.047520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048948, 13.855316, 22.074245>,  <13.429730, 13.741209, 22.118790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048948, 13.855316, 22.074245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004346, 0.376195, 0.926530,
		0.306203, 0.881533, -0.359361,
		-0.951956, 0.285268, -0.111361,
		12.763361, 13.940897, 22.040836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407243, 14.406043, 22.536814>,  <13.429730, 13.741209, 22.118790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407243, 14.406043, 22.536814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024957, 14.300061, 22.485579>,  <12.795585, 14.236472, 22.454838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024957, 14.300061, 22.485579>,  <13.407243, 14.406043, 22.536814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024957, 14.300061, 22.485579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221197, 0.359645, 0.906492,
		-0.194113, 0.894681, -0.402325,
		-0.955716, -0.264955, -0.128089,
		12.738242, 14.220574, 22.447151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003805, 14.871147, 22.774410>,  <13.407243, 14.406043, 22.536814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003805, 14.871147, 22.774410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.761722, 14.553206, 22.792000>,  <12.616471, 14.362442, 22.802553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.761722, 14.553206, 22.792000>,  <13.003805, 14.871147, 22.774410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.761722, 14.553206, 22.792000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189163, 0.197251, 0.961930,
		-0.773265, 0.573851, -0.269734,
		-0.605210, -0.794851, 0.043976,
		12.580159, 14.314752, 22.805193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482633, 15.097463, 23.116550>,  <13.003805, 14.871147, 22.774410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482633, 15.097463, 23.116550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437857, 14.705785, 23.184252>,  <12.410991, 14.470778, 23.224873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437857, 14.705785, 23.184252>,  <12.482633, 15.097463, 23.116550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.437857, 14.705785, 23.184252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324097, 0.196985, 0.925288,
		-0.939377, 0.048723, -0.339405,
		-0.111941, -0.979195, 0.169253,
		12.404274, 14.412026, 23.235027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106345, 15.104390, 23.681801>,  <12.482633, 15.097463, 23.116550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106345, 15.104390, 23.681801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219007, 14.721448, 23.707541>,  <12.286605, 14.491683, 23.722984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219007, 14.721448, 23.707541>,  <12.106345, 15.104390, 23.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219007, 14.721448, 23.707541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239872, -0.005318, 0.970790,
		-0.929049, -0.288865, -0.231140,
		0.281656, -0.957355, 0.064350,
		12.303504, 14.434241, 23.726845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.630378, 14.864670, 24.156473>,  <12.106345, 15.104390, 23.681801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.630378, 14.864670, 24.156473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939873, 14.611544, 24.144625>,  <12.125569, 14.459668, 24.137516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939873, 14.611544, 24.144625>,  <11.630378, 14.864670, 24.156473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.939873, 14.611544, 24.144625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092443, -0.159039, 0.982935,
		-0.626726, -0.757794, -0.181554,
		0.773737, -0.632815, -0.029621,
		12.171994, 14.421700, 24.135738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471663, 14.313816, 24.540634>,  <11.630378, 14.864670, 24.156473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471663, 14.313816, 24.540634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867025, 14.258474, 24.565651>,  <12.104243, 14.225269, 24.580660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867025, 14.258474, 24.565651>,  <11.471663, 14.313816, 24.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867025, 14.258474, 24.565651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062749, 0.002863, 0.998025,
		-0.138263, -0.990378, -0.005852,
		0.988406, -0.138357, 0.062541,
		12.163548, 14.216968, 24.584414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.546385, 13.779424, 25.018991>,  <11.471663, 14.313816, 24.540634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.546385, 13.779424, 25.018991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881246, 13.995181, 24.982700>,  <12.082162, 14.124636, 24.960926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881246, 13.995181, 24.982700>,  <11.546385, 13.779424, 25.018991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881246, 13.995181, 24.982700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126932, -0.030237, 0.991450,
		0.532038, -0.841511, -0.093779,
		0.837152, 0.539393, -0.090728,
		12.132391, 14.156999, 24.955482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.081122, 13.413375, 25.419706>,  <11.546385, 13.779424, 25.018991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.081122, 13.413375, 25.419706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190795, 13.794787, 25.369743>,  <12.256598, 14.023635, 25.339766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190795, 13.794787, 25.369743>,  <12.081122, 13.413375, 25.419706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.190795, 13.794787, 25.369743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187637, 0.074343, 0.979421,
		0.943195, -0.291976, -0.158534,
		0.274181, 0.953532, -0.124905,
		12.273049, 14.080847, 25.332272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.669280, 13.512315, 25.850138>,  <12.081122, 13.413375, 25.419706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.669280, 13.512315, 25.850138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546685, 13.885390, 25.774078>,  <12.473128, 14.109236, 25.728443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546685, 13.885390, 25.774078>,  <12.669280, 13.512315, 25.850138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546685, 13.885390, 25.774078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115189, 0.234633, 0.965235,
		0.944879, 0.273930, -0.179348,
		-0.306488, 0.932689, -0.190147,
		12.454739, 14.165197, 25.717035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.083483, 13.888349, 26.263721>,  <12.669280, 13.512315, 25.850138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.083483, 13.888349, 26.263721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.754174, 14.098544, 26.177853>,  <12.556589, 14.224661, 26.126331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.754174, 14.098544, 26.177853>,  <13.083483, 13.888349, 26.263721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.754174, 14.098544, 26.177853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100247, 0.237646, 0.966165,
		0.558725, 0.816937, -0.142968,
		-0.823272, 0.525488, -0.214674,
		12.507193, 14.256190, 26.113451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
