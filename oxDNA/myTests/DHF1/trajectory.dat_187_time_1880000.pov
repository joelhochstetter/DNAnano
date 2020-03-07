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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.275132, 3.593520, 1.187932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217873, 3.672653, 0.800041>,  <3.183517, 3.720133, 0.567307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217873, 3.672653, 0.800041>,  <3.275132, 3.593520, 1.187932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.217873, 3.672653, 0.800041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919978, 0.387850, -0.056680,
		0.364896, -0.900241, -0.237522,
		-0.143149, 0.197832, -0.969727,
		3.174928, 3.732003, 0.509123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.792414, 3.228877, 0.850491>,  <3.275132, 3.593520, 1.187932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.792414, 3.228877, 0.850491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.692276, 3.542793, 0.623711>,  <3.632193, 3.731143, 0.487643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.692276, 3.542793, 0.623711>,  <3.792414, 3.228877, 0.850491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.692276, 3.542793, 0.623711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967395, 0.179553, -0.178625,
		-0.038385, -0.593182, -0.804153,
		-0.250345, 0.784790, -0.566949,
		3.617172, 3.778230, 0.453626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.110253, 3.197506, 0.095223>,  <3.792414, 3.228877, 0.850491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.110253, 3.197506, 0.095223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041397, 3.571762, 0.218475>,  <4.000083, 3.796316, 0.292426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041397, 3.571762, 0.218475>,  <4.110253, 3.197506, 0.095223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041397, 3.571762, 0.218475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895017, 0.279214, -0.347828,
		-0.411477, 0.215906, -0.885478,
		-0.172140, 0.935641, 0.308130,
		3.989755, 3.852454, 0.310914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.521893, 2.534978, 0.104569>,  <4.110253, 3.197506, 0.095223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.521893, 2.534978, 0.104569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.254822, 2.417252, 0.378090>,  <4.094579, 2.346616, 0.542202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.254822, 2.417252, 0.378090>,  <4.521893, 2.534978, 0.104569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254822, 2.417252, 0.378090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638757, -0.245278, -0.729265,
		0.382356, -0.923697, -0.024230,
		-0.667677, -0.294317, 0.683802,
		4.054519, 2.328957, 0.583230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.260056, 1.890291, -0.150611>,  <4.521893, 2.534978, 0.104569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.260056, 1.890291, -0.150611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985535, 2.080406, 0.069603>,  <3.820822, 2.194475, 0.201732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985535, 2.080406, 0.069603>,  <4.260056, 1.890291, -0.150611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.985535, 2.080406, 0.069603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700970, -0.230355, -0.674965,
		-0.193983, -0.849141, 0.491254,
		-0.686303, 0.475286, 0.550537,
		3.779644, 2.222993, 0.234764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622575, 1.433048, -0.090703>,  <4.260056, 1.890291, -0.150611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622575, 1.433048, -0.090703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493492, 1.799118, 0.005890>,  <3.416043, 2.018760, 0.063846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493492, 1.799118, 0.005890>,  <3.622575, 1.433048, -0.090703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.493492, 1.799118, 0.005890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847094, -0.165438, -0.505036,
		-0.422247, -0.367536, 0.828628,
		-0.322706, 0.915176, 0.241482,
		3.396680, 2.073671, 0.078335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.978756, 1.345781, 0.218263>,  <3.622575, 1.433048, -0.090703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.978756, 1.345781, 0.218263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.986435, 1.723755, 0.087585>,  <2.991042, 1.950539, 0.009179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.986435, 1.723755, 0.087585>,  <2.978756, 1.345781, 0.218263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.986435, 1.723755, 0.087585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803815, -0.179727, -0.567080,
		-0.594570, 0.273487, 0.756103,
		0.019197, 0.944935, -0.326693,
		2.992194, 2.007236, -0.010422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.150733, 1.531942, 0.154159>,  <2.978756, 1.345781, 0.218263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.150733, 1.531942, 0.154159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353233, 1.791016, -0.073601>,  <2.474734, 1.946460, -0.210256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353233, 1.791016, -0.073601>,  <2.150733, 1.531942, 0.154159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353233, 1.791016, -0.073601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695934, -0.083101, -0.713281,
		-0.509299, 0.757363, 0.408675,
		0.506252, 0.647684, -0.569398,
		2.505109, 1.985321, -0.244420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.476902, 1.453210, 3.693212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.692471, 1.647720, 3.418083>,  <1.821812, 1.764426, 3.253006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.692471, 1.647720, 3.418083>,  <1.476902, 1.453210, 3.693212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.692471, 1.647720, 3.418083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525615, 0.443954, 0.725695,
		0.658249, -0.752623, -0.016337,
		0.538922, 0.486275, -0.687823,
		1.854147, 1.793603, 3.211736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.201349, 1.149974, 3.767402>,  <1.476902, 1.453210, 3.693212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.201349, 1.149974, 3.767402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158222, 1.531036, 3.653687>,  <2.132346, 1.759674, 3.585457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158222, 1.531036, 3.653687>,  <2.201349, 1.149974, 3.767402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.158222, 1.531036, 3.653687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560142, 0.294458, 0.774296,
		0.821350, -0.075759, -0.565371,
		-0.107818, 0.952657, -0.284290,
		2.125877, 1.816833, 3.568400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.853462, 1.423437, 3.875828>,  <2.201349, 1.149974, 3.767402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.853462, 1.423437, 3.875828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600685, 1.730408, 3.832558>,  <2.449019, 1.914590, 3.806595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600685, 1.730408, 3.832558>,  <2.853462, 1.423437, 3.875828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600685, 1.730408, 3.832558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441747, 0.471359, 0.763335,
		0.636794, 0.434598, -0.636882,
		-0.631944, 0.767428, -0.108176,
		2.411102, 1.960636, 3.800105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.234665, 2.014534, 3.829369>,  <2.853462, 1.423437, 3.875828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.234665, 2.014534, 3.829369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878239, 2.096725, 3.991249>,  <2.664383, 2.146041, 4.088377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878239, 2.096725, 3.991249>,  <3.234665, 2.014534, 3.829369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.878239, 2.096725, 3.991249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449355, 0.524934, 0.722859,
		-0.063908, 0.825968, -0.560083,
		-0.891065, 0.205480, 0.404700,
		2.610919, 2.158369, 4.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.209687, 2.803398, 3.977007>,  <3.234665, 2.014534, 3.829369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.209687, 2.803398, 3.977007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.005157, 2.555267, 4.214912>,  <2.882440, 2.406389, 4.357656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.005157, 2.555267, 4.214912>,  <3.209687, 2.803398, 3.977007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.005157, 2.555267, 4.214912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430216, 0.414346, 0.802017,
		-0.743951, 0.665966, 0.055010,
		-0.511324, -0.620327, 0.594762,
		2.851760, 2.369169, 4.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.949477, 3.214293, 4.556669>,  <3.209687, 2.803398, 3.977007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.949477, 3.214293, 4.556669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969818, 2.839340, 4.694496>,  <2.982023, 2.614368, 4.777192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969818, 2.839340, 4.694496>,  <2.949477, 3.214293, 4.556669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.969818, 2.839340, 4.694496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501619, 0.322310, 0.802804,
		-0.863593, 0.132017, 0.486599,
		0.050852, -0.937383, 0.344567,
		2.985074, 2.558125, 4.797866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.906658, 3.306535, 5.270401>,  <2.949477, 3.214293, 4.556669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.906658, 3.306535, 5.270401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.060093, 2.940475, 5.220818>,  <3.152154, 2.720840, 5.191067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.060093, 2.940475, 5.220818>,  <2.906658, 3.306535, 5.270401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.060093, 2.940475, 5.220818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602474, 0.146249, 0.784625,
		-0.699919, -0.375654, 0.607452,
		0.383587, -0.915148, -0.123960,
		3.175169, 2.665931, 5.183630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.950136, 3.028252, 5.912313>,  <2.906658, 3.306535, 5.270401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.950136, 3.028252, 5.912313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212482, 2.801559, 5.712852>,  <3.369890, 2.665544, 5.593176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212482, 2.801559, 5.712852>,  <2.950136, 3.028252, 5.912313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212482, 2.801559, 5.712852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536992, -0.113992, 0.835850,
		-0.530545, -0.815979, 0.229567,
		0.655867, -0.566731, -0.498652,
		3.409243, 2.631540, 5.563257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
