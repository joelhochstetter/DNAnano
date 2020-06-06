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
	<24.289978, 35.359756, 34.976845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256300, 34.961563, 34.994423>,  <24.236094, 34.722649, 35.004971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256300, 34.961563, 34.994423>,  <24.289978, 35.359756, 34.976845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256300, 34.961563, 34.994423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521250, -0.006412, 0.853380,
		-0.849241, 0.094757, 0.519434,
		-0.084194, -0.995480, 0.043947,
		24.231041, 34.662918, 35.007607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793247, 34.870323, 35.363125>,  <24.289978, 35.359756, 34.976845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793247, 34.870323, 35.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192614, 34.874073, 35.385323>,  <25.432234, 34.876324, 35.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192614, 34.874073, 35.385323>,  <24.793247, 34.870323, 35.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192614, 34.874073, 35.385323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055526, -0.002753, -0.998453,
		-0.009210, 0.999952, -0.003269,
		0.998415, 0.009377, 0.055498,
		25.492138, 34.876884, 35.401974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986893, 35.318954, 34.869621>,  <24.793247, 34.870323, 35.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986893, 35.318954, 34.869621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313372, 35.092434, 34.915443>,  <25.509258, 34.956520, 34.942936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313372, 35.092434, 34.915443>,  <24.986893, 35.318954, 34.869621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313372, 35.092434, 34.915443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018818, -0.172117, -0.984897,
		0.577468, 0.806025, -0.129824,
		0.816196, -0.566303, 0.114560,
		25.558231, 34.922543, 34.949810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620222, 35.604866, 34.688454>,  <24.986893, 35.318954, 34.869621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620222, 35.604866, 34.688454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688906, 35.211346, 34.667820>,  <25.730116, 34.975235, 34.655441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688906, 35.211346, 34.667820>,  <25.620222, 35.604866, 34.688454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688906, 35.211346, 34.667820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133045, 0.075041, -0.988265,
		0.976123, 0.162829, 0.143774,
		0.171707, -0.983797, -0.051585,
		25.740417, 34.916206, 34.652344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071186, 35.502407, 34.199757>,  <25.620222, 35.604866, 34.688454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071186, 35.502407, 34.199757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940998, 35.125011, 34.224758>,  <25.862885, 34.898575, 34.239758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940998, 35.125011, 34.224758>,  <26.071186, 35.502407, 34.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940998, 35.125011, 34.224758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084505, -0.094858, -0.991898,
		0.941769, -0.317551, 0.110603,
		-0.325470, -0.943485, 0.062500,
		25.843357, 34.841965, 34.243507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614408, 35.023037, 33.958103>,  <26.071186, 35.502407, 34.199757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614408, 35.023037, 33.958103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251560, 34.859161, 33.919559>,  <26.033852, 34.760834, 33.896435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251560, 34.859161, 33.919559>,  <26.614408, 35.023037, 33.958103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251560, 34.859161, 33.919559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230776, -0.292724, -0.927931,
		0.351959, -0.863982, 0.360083,
		-0.907121, -0.409692, -0.096360,
		25.979424, 34.736256, 33.890652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705370, 34.379818, 33.602551>,  <26.614408, 35.023037, 33.958103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705370, 34.379818, 33.602551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316685, 34.457027, 33.548115>,  <26.083473, 34.503353, 33.515453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316685, 34.457027, 33.548115>,  <26.705370, 34.379818, 33.602551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316685, 34.457027, 33.548115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071475, -0.308860, -0.948418,
		-0.225095, -0.931316, 0.286326,
		-0.971712, 0.193019, -0.136088,
		26.025171, 34.514935, 33.507290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539085, 33.833447, 33.301582>,  <26.705370, 34.379818, 33.602551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539085, 33.833447, 33.301582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275795, 34.110237, 33.182991>,  <26.117821, 34.276314, 33.111835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275795, 34.110237, 33.182991>,  <26.539085, 33.833447, 33.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275795, 34.110237, 33.182991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162728, -0.253734, -0.953488,
		-0.735022, -0.675857, 0.054409,
		-0.658226, 0.691981, -0.296480,
		26.078327, 34.317833, 33.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085688, 33.545757, 32.998581>,  <26.539085, 33.833447, 33.301582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085688, 33.545757, 32.998581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097332, 33.918018, 32.852684>,  <26.104319, 34.141376, 32.765144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097332, 33.918018, 32.852684>,  <26.085688, 33.545757, 32.998581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097332, 33.918018, 32.852684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132317, -0.365273, -0.921449,
		-0.990780, -0.021438, -0.133774,
		0.029110, 0.930654, -0.364742,
		26.106066, 34.197216, 32.743263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620848, 33.497845, 32.470848>,  <26.085688, 33.545757, 32.998581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620848, 33.497845, 32.470848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856936, 33.817623, 32.426086>,  <25.998589, 34.009491, 32.399231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856936, 33.817623, 32.426086>,  <25.620848, 33.497845, 32.470848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856936, 33.817623, 32.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402454, -0.411581, -0.817699,
		-0.699766, 0.437586, -0.564665,
		0.590219, 0.799449, -0.111903,
		26.034000, 34.057457, 32.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484413, 33.752506, 31.830019>,  <25.620848, 33.497845, 32.470848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484413, 33.752506, 31.830019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854786, 33.868179, 31.927195>,  <26.077009, 33.937584, 31.985500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854786, 33.868179, 31.927195>,  <25.484413, 33.752506, 31.830019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854786, 33.868179, 31.927195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338113, -0.348043, -0.874383,
		-0.168301, 0.891763, -0.420041,
		0.925934, 0.289181, 0.242941,
		26.132566, 33.954933, 32.000076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015694, 33.132404, 31.741655>,  <25.484413, 33.752506, 31.830019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015694, 33.132404, 31.741655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836941, 33.119839, 31.384039>,  <25.729689, 33.112297, 31.169470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836941, 33.119839, 31.384039>,  <26.015694, 33.132404, 31.741655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836941, 33.119839, 31.384039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254147, 0.953747, -0.160550,
		0.857732, -0.298965, -0.418229,
		-0.446883, -0.031417, -0.894041,
		25.702875, 33.110413, 31.115828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515791, 33.421627, 31.276932>,  <26.015694, 33.132404, 31.741655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515791, 33.421627, 31.276932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138889, 33.476139, 31.154564>,  <25.912748, 33.508846, 31.081142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138889, 33.476139, 31.154564>,  <26.515791, 33.421627, 31.276932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138889, 33.476139, 31.154564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195989, 0.965092, -0.173737,
		0.271564, -0.223661, -0.936071,
		-0.942253, 0.136279, -0.305919,
		25.856213, 33.517021, 31.062788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149300, 32.948723, 31.528622>,  <26.515791, 33.421627, 31.276932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149300, 32.948723, 31.528622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213406, 33.304462, 31.357330>,  <27.251869, 33.517906, 31.254555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213406, 33.304462, 31.357330>,  <27.149300, 32.948723, 31.528622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213406, 33.304462, 31.357330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537168, 0.442549, 0.718054,
		0.828110, 0.114953, 0.548653,
		0.160264, 0.889346, -0.428228,
		27.261484, 33.571266, 31.228863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166542, 33.274426, 32.073196>,  <27.149300, 32.948723, 31.528622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166542, 33.274426, 32.073196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084930, 33.540089, 31.785513>,  <27.035963, 33.699486, 31.612902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084930, 33.540089, 31.785513>,  <27.166542, 33.274426, 32.073196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084930, 33.540089, 31.785513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727599, 0.388637, 0.565297,
		0.654959, 0.638637, 0.403946,
		-0.204031, 0.664157, -0.719213,
		27.023722, 33.739334, 31.569750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221609, 33.839600, 32.419067>,  <27.166542, 33.274426, 32.073196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221609, 33.839600, 32.419067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959866, 33.927231, 32.129566>,  <26.802820, 33.979809, 31.955866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959866, 33.927231, 32.129566>,  <27.221609, 33.839600, 32.419067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959866, 33.927231, 32.129566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530841, 0.548549, 0.645989,
		0.538536, 0.806907, -0.242652,
		-0.654360, 0.219079, -0.723753,
		26.763557, 33.992954, 31.912441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225643, 34.611500, 32.300247>,  <27.221609, 33.839600, 32.419067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225643, 34.611500, 32.300247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890900, 34.425175, 32.185226>,  <26.690054, 34.313381, 32.116215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890900, 34.425175, 32.185226>,  <27.225643, 34.611500, 32.300247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890900, 34.425175, 32.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528485, 0.550524, 0.646241,
		-0.142724, 0.692779, -0.706886,
		-0.836859, -0.465813, -0.287550,
		26.639841, 34.285431, 32.098961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681179, 35.142757, 32.097691>,  <27.225643, 34.611500, 32.300247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681179, 35.142757, 32.097691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492893, 34.804680, 32.198944>,  <26.379921, 34.601833, 32.259697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492893, 34.804680, 32.198944>,  <26.681179, 35.142757, 32.097691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492893, 34.804680, 32.198944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628801, 0.522628, 0.575733,
		-0.618899, 0.111838, -0.777468,
		-0.470716, -0.845194, 0.253130,
		26.351679, 34.551121, 32.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002863, 35.413925, 32.205662>,  <26.681179, 35.142757, 32.097691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002863, 35.413925, 32.205662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036402, 35.053452, 32.375767>,  <26.056524, 34.837170, 32.477829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036402, 35.053452, 32.375767>,  <26.002863, 35.413925, 32.205662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036402, 35.053452, 32.375767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508943, 0.328172, 0.795789,
		-0.856707, -0.283156, -0.431134,
		0.083846, -0.901180, 0.425258,
		26.061556, 34.783096, 32.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566710, 35.431896, 32.750259>,  <26.002863, 35.413925, 32.205662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566710, 35.431896, 32.750259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688204, 35.061295, 32.839108>,  <25.761101, 34.838936, 32.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688204, 35.061295, 32.839108>,  <25.566710, 35.431896, 32.750259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688204, 35.061295, 32.839108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481700, 0.051812, 0.874803,
		-0.822016, -0.372705, -0.430559,
		0.303735, -0.926502, 0.222122,
		25.779324, 34.783344, 32.905743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969835, 35.002525, 32.921078>,  <25.566710, 35.431896, 32.750259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969835, 35.002525, 32.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299007, 34.839302, 33.079205>,  <25.496511, 34.741367, 33.174080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299007, 34.839302, 33.079205>,  <24.969835, 35.002525, 32.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299007, 34.839302, 33.079205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477094, -0.118535, 0.870822,
		-0.308489, -0.905228, -0.292228,
		0.822931, -0.408059, 0.395312,
		25.545887, 34.716885, 33.197800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639961, 34.637878, 33.490444>,  <24.969835, 35.002525, 32.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639961, 34.637878, 33.490444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037786, 34.596317, 33.493183>,  <25.276482, 34.571381, 33.494827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037786, 34.596317, 33.493183>,  <24.639961, 34.637878, 33.490444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037786, 34.596317, 33.493183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024379, -0.168390, 0.985419,
		-0.101229, -0.980230, -0.170008,
		0.994565, -0.103897, 0.006851,
		25.336155, 34.565147, 33.495239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783770, 34.152229, 33.951515>,  <24.639961, 34.637878, 33.490444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783770, 34.152229, 33.951515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144747, 34.321709, 33.920330>,  <25.361334, 34.423397, 33.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144747, 34.321709, 33.920330>,  <24.783770, 34.152229, 33.951515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144747, 34.321709, 33.920330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149380, -0.138018, 0.979100,
		0.404083, -0.895227, -0.187846,
		0.902443, 0.423698, -0.077959,
		25.415480, 34.448818, 33.896942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539095, 33.786877, 34.543091>,  <24.783770, 34.152229, 33.951515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539095, 33.786877, 34.543091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168194, 33.814644, 34.690269>,  <23.945654, 33.831306, 34.778576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168194, 33.814644, 34.690269>,  <24.539095, 33.786877, 34.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168194, 33.814644, 34.690269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119201, 0.986267, 0.114320,
		-0.354957, 0.149863, -0.922793,
		-0.927252, 0.069420, 0.367946,
		23.890018, 33.835468, 34.800652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234501, 33.694271, 34.282158>,  <24.539095, 33.786877, 34.543091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234501, 33.694271, 34.282158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435345, 34.040150, 34.276836>,  <25.555851, 34.247677, 34.273643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435345, 34.040150, 34.276836>,  <25.234501, 33.694271, 34.282158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435345, 34.040150, 34.276836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239316, -0.124144, 0.962973,
		0.831031, -0.486704, -0.269271,
		0.502111, 0.864701, -0.013308,
		25.585978, 34.299561, 34.272842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014826, 33.657005, 34.565601>,  <25.234501, 33.694271, 34.282158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014826, 33.657005, 34.565601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861452, 34.024593, 34.602417>,  <25.769428, 34.245148, 34.624504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861452, 34.024593, 34.602417>,  <26.014826, 33.657005, 34.565601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861452, 34.024593, 34.602417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188752, -0.019577, 0.981830,
		0.904074, 0.393842, -0.165951,
		-0.383437, 0.918970, 0.092037,
		25.746422, 34.300285, 34.630028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368729, 33.848782, 35.130203>,  <26.014826, 33.657005, 34.565601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368729, 33.848782, 35.130203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110785, 34.151981, 35.091019>,  <25.956018, 34.333900, 35.067509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110785, 34.151981, 35.091019>,  <26.368729, 33.848782, 35.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110785, 34.151981, 35.091019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028058, 0.151561, 0.988050,
		0.763784, 0.634406, -0.119003,
		-0.644861, 0.757996, -0.097960,
		25.917326, 34.379379, 35.061630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630495, 34.449673, 35.446449>,  <26.368729, 33.848782, 35.130203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630495, 34.449673, 35.446449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231480, 34.477684, 35.447803>,  <25.992071, 34.494492, 35.448616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231480, 34.477684, 35.447803>,  <26.630495, 34.449673, 35.446449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231480, 34.477684, 35.447803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031003, 0.397288, 0.917170,
		0.062885, 0.915018, -0.398482,
		-0.997539, 0.070030, 0.003385,
		25.932219, 34.498692, 35.448818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224522, 34.356194, 35.745991>,  <26.630495, 34.449673, 35.446449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224522, 34.356194, 35.745991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190273, 34.754635, 35.754490>,  <27.169724, 34.993698, 35.759590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190273, 34.754635, 35.754490>,  <27.224522, 34.356194, 35.745991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190273, 34.754635, 35.754490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955059, 0.088131, -0.283011,
		-0.283781, -0.003938, -0.958881,
		-0.085621, 0.996101, 0.021249,
		27.164587, 35.053467, 35.760864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778639, 34.702278, 35.456303>,  <27.224522, 34.356194, 35.745991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778639, 34.702278, 35.456303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644234, 35.077927, 35.427597>,  <27.563591, 35.303314, 35.410374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644234, 35.077927, 35.427597>,  <27.778639, 34.702278, 35.456303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644234, 35.077927, 35.427597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660172, 0.289182, 0.693215,
		0.671765, 0.185550, -0.717149,
		-0.336013, 0.939119, -0.071767,
		27.543430, 35.359661, 35.406067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428537, 35.142281, 35.455467>,  <27.778639, 34.702278, 35.456303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428537, 35.142281, 35.455467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101803, 35.348324, 35.559345>,  <27.905762, 35.471951, 35.621674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101803, 35.348324, 35.559345>,  <28.428537, 35.142281, 35.455467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101803, 35.348324, 35.559345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501121, 0.410601, 0.761764,
		0.285762, 0.752374, -0.593526,
		-0.816834, 0.515111, 0.259696,
		27.856752, 35.502857, 35.637253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644367, 34.769444, 36.014526>,  <28.428537, 35.142281, 35.455467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644367, 34.769444, 36.014526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912855, 34.560089, 35.804562>,  <29.073948, 34.434479, 35.678581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912855, 34.560089, 35.804562>,  <28.644367, 34.769444, 36.014526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912855, 34.560089, 35.804562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677183, 0.720969, 0.147063,
		0.301475, -0.454174, 0.838355,
		0.671220, -0.523384, -0.524913,
		29.114222, 34.403072, 35.647087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289627, 34.648632, 36.360836>,  <28.644367, 34.769444, 36.014526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289627, 34.648632, 36.360836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388088, 34.648182, 35.973145>,  <29.447165, 34.647911, 35.740528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388088, 34.648182, 35.973145>,  <29.289627, 34.648632, 36.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388088, 34.648182, 35.973145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616761, 0.771590, 0.155741,
		0.747673, -0.636120, 0.190622,
		0.246152, -0.001125, -0.969231,
		29.461933, 34.647846, 35.682377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038830, 34.587246, 36.318367>,  <29.289627, 34.648632, 36.360836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038830, 34.587246, 36.318367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929909, 34.731815, 35.961666>,  <29.864557, 34.818558, 35.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929909, 34.731815, 35.961666>,  <30.038830, 34.587246, 36.318367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929909, 34.731815, 35.961666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638375, 0.761294, 0.113617,
		0.719951, -0.538336, -0.438024,
		-0.272301, 0.361422, -0.891755,
		29.848219, 34.840240, 35.694141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621721, 34.917953, 36.070992>,  <30.038830, 34.587246, 36.318367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621721, 34.917953, 36.070992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311892, 35.049370, 35.854809>,  <30.125994, 35.128220, 35.725101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311892, 35.049370, 35.854809>,  <30.621721, 34.917953, 36.070992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311892, 35.049370, 35.854809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425353, 0.902991, -0.060680,
		0.468088, -0.276885, -0.839183,
		-0.774576, 0.328545, -0.540453,
		30.079519, 35.147934, 35.692673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932091, 35.539948, 36.267971>,  <30.621721, 34.917953, 36.070992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932091, 35.539948, 36.267971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883923, 35.781151, 35.952534>,  <30.855021, 35.925873, 35.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883923, 35.781151, 35.952534>,  <30.932091, 35.539948, 36.267971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883923, 35.781151, 35.952534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735689, -0.587562, -0.336945,
		-0.666528, 0.539584, 0.514382,
		-0.120421, 0.603009, -0.788593,
		30.847795, 35.962055, 35.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265043, 35.806080, 36.151131>,  <30.932091, 35.539948, 36.267971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265043, 35.806080, 36.151131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393940, 35.821190, 35.772770>,  <30.471277, 35.830257, 35.545753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393940, 35.821190, 35.772770>,  <30.265043, 35.806080, 36.151131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393940, 35.821190, 35.772770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817578, -0.492588, -0.298199,
		-0.477207, 0.869442, -0.127845,
		0.322241, 0.037779, -0.945903,
		30.490612, 35.832523, 35.488998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785013, 35.912724, 35.715816>,  <30.265043, 35.806080, 36.151131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785013, 35.912724, 35.715816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046453, 35.706093, 35.494564>,  <30.203318, 35.582115, 35.361813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046453, 35.706093, 35.494564>,  <29.785013, 35.912724, 35.715816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046453, 35.706093, 35.494564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710453, -0.670698, -0.213120,
		-0.260888, 0.532267, -0.805375,
		0.653600, -0.516581, -0.553128,
		30.242533, 35.551117, 35.328625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406517, 35.711002, 35.027275>,  <29.785013, 35.912724, 35.715816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406517, 35.711002, 35.027275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707052, 35.479645, 35.154369>,  <29.887373, 35.340832, 35.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707052, 35.479645, 35.154369>,  <29.406517, 35.711002, 35.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707052, 35.479645, 35.154369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576841, -0.809483, -0.109507,
		0.320542, -0.101009, -0.941833,
		0.751336, -0.578390, 0.317740,
		29.932453, 35.306129, 35.249691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560711, 35.226116, 34.463520>,  <29.406517, 35.711002, 35.027275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560711, 35.226116, 34.463520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659262, 35.108009, 34.832760>,  <29.718391, 35.037148, 35.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659262, 35.108009, 34.832760>,  <29.560711, 35.226116, 34.463520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659262, 35.108009, 34.832760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395460, -0.900193, -0.182386,
		0.884822, -0.320114, -0.338551,
		0.246376, -0.295263, 0.923103,
		29.733175, 35.019432, 35.109692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923937, 34.642143, 34.468025>,  <29.560711, 35.226116, 34.463520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923937, 34.642143, 34.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737289, 34.636616, 34.821766>,  <29.625301, 34.633301, 35.034012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737289, 34.636616, 34.821766>,  <29.923937, 34.642143, 34.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737289, 34.636616, 34.821766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476872, -0.838166, -0.264710,
		0.744890, -0.545241, 0.384515,
		-0.466618, -0.013815, 0.884351,
		29.597303, 34.632473, 35.087070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887201, 33.969246, 34.631676>,  <29.923937, 34.642143, 34.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887201, 33.969246, 34.631676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611179, 34.131744, 34.871273>,  <29.445566, 34.229244, 35.015030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611179, 34.131744, 34.871273>,  <29.887201, 33.969246, 34.631676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611179, 34.131744, 34.871273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611973, -0.769363, -0.183221,
		0.386410, -0.493000, 0.779512,
		-0.690055, 0.406242, 0.598992,
		29.404163, 34.253616, 35.050972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812822, 33.548931, 35.248711>,  <29.887201, 33.969246, 34.631676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812822, 33.548931, 35.248711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477192, 33.709187, 35.101501>,  <29.275814, 33.805340, 35.013176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477192, 33.709187, 35.101501>,  <29.812822, 33.548931, 35.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477192, 33.709187, 35.101501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384018, -0.915370, -0.120949,
		-0.385336, 0.039843, 0.921916,
		-0.839075, 0.400638, -0.368025,
		29.225470, 33.829376, 34.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323906, 34.143112, 35.420914>,  <29.812822, 33.548931, 35.248711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323906, 34.143112, 35.420914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168333, 34.441742, 35.205006>,  <30.074989, 34.620922, 35.075462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168333, 34.441742, 35.205006>,  <30.323906, 34.143112, 35.420914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168333, 34.441742, 35.205006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764713, 0.588359, 0.262769,
		0.513757, -0.310571, -0.799749,
		-0.388931, 0.746578, -0.539772,
		30.051653, 34.665714, 35.043076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883869, 34.473644, 35.083511>,  <30.323906, 34.143112, 35.420914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883869, 34.473644, 35.083511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602819, 34.756207, 35.049301>,  <30.434189, 34.925743, 35.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602819, 34.756207, 35.049301>,  <30.883869, 34.473644, 35.083511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602819, 34.756207, 35.049301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686178, 0.704466, 0.181352,
		0.188359, 0.068735, -0.979692,
		-0.702624, 0.706402, -0.085528,
		30.392033, 34.968128, 35.023643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277279, 34.967842, 34.818748>,  <30.883869, 34.473644, 35.083511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277279, 34.967842, 34.818748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950251, 35.121361, 34.990459>,  <30.754034, 35.213474, 35.093487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950251, 35.121361, 34.990459>,  <31.277279, 34.967842, 34.818748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950251, 35.121361, 34.990459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492625, 0.852195, 0.176306,
		-0.298161, 0.355615, -0.885798,
		-0.817570, 0.383799, 0.429277,
		30.704979, 35.236500, 35.119244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044485, 35.524658, 34.428284>,  <31.277279, 34.967842, 34.818748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044485, 35.524658, 34.428284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977247, 35.556271, 34.821323>,  <30.936905, 35.575237, 35.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977247, 35.556271, 34.821323>,  <31.044485, 35.524658, 34.428284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977247, 35.556271, 34.821323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356304, 0.934262, -0.014192,
		-0.919126, 0.347717, -0.185204,
		-0.168094, 0.079033, 0.982598,
		30.926819, 35.579979, 35.116104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646528, 36.175877, 34.558655>,  <31.044485, 35.524658, 34.428284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646528, 36.175877, 34.558655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838245, 36.075642, 34.895103>,  <30.953276, 36.015503, 35.096973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838245, 36.075642, 34.895103>,  <30.646528, 36.175877, 34.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838245, 36.075642, 34.895103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241257, 0.959071, 0.148248,
		-0.843844, 0.131872, 0.520132,
		0.479293, -0.250584, 0.841122,
		30.982033, 36.000465, 35.147438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302652, 36.339382, 35.268314>,  <30.646528, 36.175877, 34.558655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302652, 36.339382, 35.268314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699471, 36.372574, 35.230461>,  <30.937561, 36.392490, 35.207748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699471, 36.372574, 35.230461>,  <30.302652, 36.339382, 35.268314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699471, 36.372574, 35.230461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073988, 0.992736, 0.094878,
		0.101822, -0.087122, 0.990980,
		0.992047, 0.082981, -0.094637,
		30.997086, 36.397469, 35.202068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466240, 36.925442, 35.701401>,  <30.302652, 36.339382, 35.268314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466240, 36.925442, 35.701401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772793, 36.875153, 35.449417>,  <30.956724, 36.844978, 35.298225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772793, 36.875153, 35.449417>,  <30.466240, 36.925442, 35.701401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772793, 36.875153, 35.449417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242863, 0.964582, 0.102950,
		0.594706, -0.231894, 0.769773,
		0.766383, -0.125725, -0.629961,
		31.002708, 36.837437, 35.260429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862497, 37.271236, 36.019753>,  <30.466240, 36.925442, 35.701401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862497, 37.271236, 36.019753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028563, 37.256104, 35.656170>,  <31.128201, 37.247025, 35.438019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028563, 37.256104, 35.656170>,  <30.862497, 37.271236, 36.019753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028563, 37.256104, 35.656170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274120, 0.957902, 0.085329,
		0.867467, -0.284590, 0.408056,
		0.415162, -0.037836, -0.908960,
		31.153111, 37.244751, 35.383480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595440, 37.621082, 36.126003>,  <30.862497, 37.271236, 36.019753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595440, 37.621082, 36.126003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536345, 37.637840, 35.730747>,  <31.500887, 37.647896, 35.493595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536345, 37.637840, 35.730747>,  <31.595440, 37.621082, 36.126003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536345, 37.637840, 35.730747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430322, 0.902299, -0.026080,
		0.890503, -0.429071, -0.151334,
		-0.147739, 0.041898, -0.988139,
		31.492023, 37.650410, 35.434307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258724, 37.799362, 35.772068>,  <31.595440, 37.621082, 36.126003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258724, 37.799362, 35.772068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928606, 37.922104, 35.582447>,  <31.730536, 37.995747, 35.468674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928606, 37.922104, 35.582447>,  <32.258724, 37.799362, 35.772068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928606, 37.922104, 35.582447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355201, 0.934695, -0.013364,
		0.438996, -0.179414, -0.880394,
		-0.825297, 0.306850, -0.474055,
		31.681017, 38.014160, 35.440231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390495, 38.136463, 35.093887>,  <32.258724, 37.799362, 35.772068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390495, 38.136463, 35.093887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072300, 38.284962, 35.285461>,  <31.881384, 38.374062, 35.400406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072300, 38.284962, 35.285461>,  <32.390495, 38.136463, 35.093887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072300, 38.284962, 35.285461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417884, 0.908444, -0.010103,
		-0.438836, 0.192102, -0.877792,
		-0.795484, 0.371249, 0.478935,
		31.833654, 38.396336, 35.429142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670010, 38.700047, 34.927990>,  <32.390495, 38.136463, 35.093887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670010, 38.700047, 34.927990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916256, 38.934326, 34.717094>,  <33.064003, 39.074894, 34.590557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916256, 38.934326, 34.717094>,  <32.670010, 38.700047, 34.927990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916256, 38.934326, 34.717094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305543, -0.439307, -0.844780,
		-0.726402, 0.681153, -0.091489,
		0.615616, 0.585696, -0.527235,
		33.100941, 39.110035, 34.558926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091579, 39.182831, 34.944065>,  <32.670010, 38.700047, 34.927990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091579, 39.182831, 34.944065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861372, 39.480194, 34.807755>,  <31.723248, 39.658611, 34.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861372, 39.480194, 34.807755>,  <32.091579, 39.182831, 34.944065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861372, 39.480194, 34.807755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196765, 0.278585, 0.940040,
		0.793764, 0.608063, -0.014055,
		-0.575519, 0.743404, -0.340776,
		31.688717, 39.703217, 34.705521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329639, 39.820396, 35.156311>,  <32.091579, 39.182831, 34.944065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329639, 39.820396, 35.156311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938251, 39.875977, 35.095276>,  <31.703419, 39.909325, 35.058655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938251, 39.875977, 35.095276>,  <32.329639, 39.820396, 35.156311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938251, 39.875977, 35.095276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100634, 0.324249, 0.940604,
		0.180175, 0.935711, -0.303286,
		-0.978473, 0.138952, -0.152586,
		31.644709, 39.917664, 35.049500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860186, 39.496727, 35.680962>,  <32.329639, 39.820396, 35.156311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860186, 39.496727, 35.680962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499758, 39.605839, 35.546104>,  <31.283501, 39.671307, 35.465191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499758, 39.605839, 35.546104>,  <31.860186, 39.496727, 35.680962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499758, 39.605839, 35.546104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268465, -0.961398, -0.060339,
		-0.340584, 0.036140, 0.939519,
		-0.901071, 0.272779, -0.337139,
		31.229437, 39.687672, 35.444962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320564, 39.221821, 36.116230>,  <31.860186, 39.496727, 35.680962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320564, 39.221821, 36.116230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228184, 39.286598, 35.732471>,  <31.172754, 39.325462, 35.502216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228184, 39.286598, 35.732471>,  <31.320564, 39.221821, 36.116230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228184, 39.286598, 35.732471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182275, -0.975795, -0.120829,
		-0.955739, 0.146968, 0.254879,
		-0.230952, 0.161939, -0.959394,
		31.158897, 39.335178, 35.444653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681417, 38.847279, 35.858162>,  <31.320564, 39.221821, 36.116230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681417, 38.847279, 35.858162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913607, 38.876598, 35.533772>,  <31.052919, 38.894192, 35.339138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913607, 38.876598, 35.533772>,  <30.681417, 38.847279, 35.858162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913607, 38.876598, 35.533772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188109, -0.956930, -0.221133,
		-0.792255, 0.280913, -0.541682,
		0.580471, 0.073298, -0.810975,
		31.087748, 38.898586, 35.290478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533962, 38.317390, 35.417240>,  <30.681417, 38.847279, 35.858162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533962, 38.317390, 35.417240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871660, 38.441719, 35.242592>,  <31.074280, 38.516315, 35.137802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871660, 38.441719, 35.242592>,  <30.533962, 38.317390, 35.417240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871660, 38.441719, 35.242592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133589, -0.910986, -0.390204,
		-0.519039, 0.271101, -0.810619,
		0.844247, 0.310821, -0.436621,
		31.124935, 38.534966, 35.111607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556599, 38.176678, 34.696384>,  <30.533962, 38.317390, 35.417240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556599, 38.176678, 34.696384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892916, 38.148247, 34.911053>,  <31.094706, 38.131187, 35.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892916, 38.148247, 34.911053>,  <30.556599, 38.176678, 34.696384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892916, 38.148247, 34.911053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097814, -0.955084, -0.279728,
		0.532446, 0.287687, -0.796076,
		0.840794, -0.071073, 0.536670,
		31.145153, 38.126926, 35.072052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180506, 37.862453, 34.251427>,  <30.556599, 38.176678, 34.696384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180506, 37.862453, 34.251427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188585, 37.781254, 34.643013>,  <31.193434, 37.732533, 34.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188585, 37.781254, 34.643013>,  <31.180506, 37.862453, 34.251427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188585, 37.781254, 34.643013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217933, -0.956519, -0.193849,
		0.975755, -0.209434, -0.063563,
		0.020201, -0.203002, 0.978970,
		31.194645, 37.720352, 34.936703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583122, 37.229893, 34.195477>,  <31.180506, 37.862453, 34.251427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583122, 37.229893, 34.195477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453428, 37.241844, 34.573677>,  <31.375612, 37.249016, 34.800598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453428, 37.241844, 34.573677>,  <31.583122, 37.229893, 34.195477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453428, 37.241844, 34.573677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148429, -0.988728, -0.019658,
		0.934259, -0.146714, 0.325015,
		-0.324236, 0.029876, 0.945504,
		31.356157, 37.250809, 34.857327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074848, 36.769806, 34.529831>,  <31.583122, 37.229893, 34.195477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074848, 36.769806, 34.529831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741785, 36.783432, 34.750927>,  <31.541946, 36.791607, 34.883583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741785, 36.783432, 34.750927>,  <32.074848, 36.769806, 34.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741785, 36.783432, 34.750927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069085, -0.996699, -0.042638,
		0.549463, -0.073689, 0.832262,
		-0.832657, 0.034069, 0.552740,
		31.491987, 36.793652, 34.916748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155983, 36.231544, 34.950691>,  <32.074848, 36.769806, 34.529831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155983, 36.231544, 34.950691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765575, 36.310776, 34.914589>,  <31.531330, 36.358315, 34.892929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765575, 36.310776, 34.914589>,  <32.155983, 36.231544, 34.950691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765575, 36.310776, 34.914589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190876, -0.978141, -0.082503,
		-0.104625, -0.063297, 0.992495,
		-0.976022, 0.198075, -0.090257,
		31.472769, 36.370197, 34.887512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517815, 36.090935, 34.284073>,  <32.155983, 36.231544, 34.950691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517815, 36.090935, 34.284073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203468, 36.097401, 34.036800>,  <32.014858, 36.101280, 33.888435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203468, 36.097401, 34.036800>,  <32.517815, 36.090935, 34.284073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203468, 36.097401, 34.036800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417833, -0.723072, -0.550075,
		-0.455880, -0.690584, 0.561487,
		-0.785868, 0.016161, -0.618183,
		31.967709, 36.102249, 33.851345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165745, 35.471954, 34.187958>,  <32.517815, 36.090935, 34.284073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165745, 35.471954, 34.187958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189831, 35.613617, 33.814659>,  <32.204281, 35.698612, 33.590679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189831, 35.613617, 33.814659>,  <32.165745, 35.471954, 34.187958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189831, 35.613617, 33.814659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430409, -0.852774, -0.295846,
		-0.900624, -0.383863, -0.203779,
		0.060213, 0.354155, -0.933246,
		32.207893, 35.719864, 33.534687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880867, 34.934483, 33.717884>,  <32.165745, 35.471954, 34.187958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880867, 34.934483, 33.717884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150139, 35.170254, 33.539265>,  <32.311703, 35.311714, 33.432091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150139, 35.170254, 33.539265>,  <31.880867, 34.934483, 33.717884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150139, 35.170254, 33.539265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444791, -0.805170, -0.392254,
		-0.590753, 0.065436, -0.804195,
		0.673181, 0.589424, -0.446551,
		32.352093, 35.347080, 33.405300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904037, 34.658562, 33.016254>,  <31.880867, 34.934483, 33.717884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904037, 34.658562, 33.016254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234505, 34.882671, 33.040035>,  <32.432785, 35.017139, 33.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234505, 34.882671, 33.040035>,  <31.904037, 34.658562, 33.016254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234505, 34.882671, 33.040035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497774, -0.676397, -0.542871,
		-0.263943, 0.478098, -0.837709,
		0.826169, 0.560277, 0.059455,
		32.482357, 35.050755, 33.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068016, 34.788582, 32.327774>,  <31.904037, 34.658562, 33.016254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068016, 34.788582, 32.327774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389080, 34.812782, 32.565117>,  <32.581718, 34.827301, 32.707523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389080, 34.812782, 32.565117>,  <32.068016, 34.788582, 32.327774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389080, 34.812782, 32.565117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484580, -0.646164, -0.589623,
		0.347736, 0.760797, -0.547967,
		0.802659, 0.060500, 0.593361,
		32.629879, 34.830933, 32.743126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482052, 34.859013, 31.856876>,  <32.068016, 34.788582, 32.327774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482052, 34.859013, 31.856876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681816, 34.736576, 32.181072>,  <32.801674, 34.663113, 32.375591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681816, 34.736576, 32.181072>,  <32.482052, 34.859013, 31.856876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681816, 34.736576, 32.181072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578081, -0.579064, -0.574898,
		0.645299, 0.755639, -0.112244,
		0.499412, -0.306095, 0.810490,
		32.831638, 34.644749, 32.424221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059566, 34.868942, 31.696621>,  <32.482052, 34.859013, 31.856876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059566, 34.868942, 31.696621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102245, 34.624329, 32.010216>,  <33.127853, 34.477558, 32.198372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102245, 34.624329, 32.010216>,  <33.059566, 34.868942, 31.696621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102245, 34.624329, 32.010216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401352, -0.694908, -0.596674,
		0.909688, 0.378319, 0.171297,
		0.106698, -0.611538, 0.783988,
		33.134254, 34.440868, 32.245411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756245, 34.653568, 31.591303>,  <33.059566, 34.868942, 31.696621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756245, 34.653568, 31.591303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592686, 34.378929, 31.831766>,  <33.494553, 34.214146, 31.976044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592686, 34.378929, 31.831766>,  <33.756245, 34.653568, 31.591303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592686, 34.378929, 31.831766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461010, -0.723921, -0.513233,
		0.787575, 0.067282, 0.612535,
		-0.408896, -0.686594, 0.601159,
		33.470016, 34.172951, 32.012115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313053, 34.251831, 31.813791>,  <33.756245, 34.653568, 31.591303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313053, 34.251831, 31.813791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975060, 34.040009, 31.843643>,  <33.772263, 33.912914, 31.861553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975060, 34.040009, 31.843643>,  <34.313053, 34.251831, 31.813791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975060, 34.040009, 31.843643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394200, -0.711054, -0.582244,
		0.361396, -0.462568, 0.809582,
		-0.844985, -0.529558, 0.074628,
		33.721565, 33.881142, 31.866032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568016, 33.537376, 31.912807>,  <34.313053, 34.251831, 31.813791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568016, 33.537376, 31.912807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184689, 33.477253, 31.815626>,  <33.954693, 33.441181, 31.757318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184689, 33.477253, 31.815626>,  <34.568016, 33.537376, 31.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184689, 33.477253, 31.815626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279371, -0.670876, -0.686933,
		-0.059742, -0.726178, 0.684907,
		-0.958323, -0.150304, -0.242952,
		33.897190, 33.432163, 31.742741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499329, 32.869625, 32.060726>,  <34.568016, 33.537376, 31.912807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499329, 32.869625, 32.060726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239971, 32.981724, 31.777586>,  <34.084358, 33.048985, 31.607702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239971, 32.981724, 31.777586>,  <34.499329, 32.869625, 32.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239971, 32.981724, 31.777586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412839, -0.651769, -0.636209,
		-0.639646, -0.704742, 0.306908,
		-0.648396, 0.280245, -0.707846,
		34.045452, 33.065796, 31.565231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292500, 32.209976, 31.724224>,  <34.499329, 32.869625, 32.060726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292500, 32.209976, 31.724224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198524, 32.494194, 31.458916>,  <34.142139, 32.664726, 31.299730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198524, 32.494194, 31.458916>,  <34.292500, 32.209976, 31.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198524, 32.494194, 31.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381954, -0.559993, -0.735200,
		-0.893820, -0.426068, -0.139830,
		-0.234941, 0.710545, -0.663271,
		34.128040, 32.707359, 31.259935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233376, 31.843109, 31.049337>,  <34.292500, 32.209976, 31.724224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233376, 31.843109, 31.049337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232033, 32.225029, 30.930441>,  <34.231228, 32.454182, 30.859104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232033, 32.225029, 30.930441>,  <34.233376, 31.843109, 31.049337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232033, 32.225029, 30.930441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321390, -0.280440, -0.904468,
		-0.946941, -0.098569, -0.305920,
		-0.003360, 0.954797, -0.297239,
		34.231026, 32.511467, 30.841269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934647, 31.807732, 30.390545>,  <34.233376, 31.843109, 31.049337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934647, 31.807732, 30.390545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100212, 32.171749, 30.399426>,  <34.199551, 32.390160, 30.404755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100212, 32.171749, 30.399426>,  <33.934647, 31.807732, 30.390545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100212, 32.171749, 30.399426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240228, -0.085673, -0.966929,
		-0.878045, 0.405563, -0.254080,
		0.413918, 0.910043, 0.022203,
		34.224388, 32.444763, 30.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720753, 32.085220, 29.818184>,  <33.934647, 31.807732, 30.390545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720753, 32.085220, 29.818184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033459, 32.321709, 29.897478>,  <34.221081, 32.463604, 29.945055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033459, 32.321709, 29.897478>,  <33.720753, 32.085220, 29.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033459, 32.321709, 29.897478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205821, 0.055441, -0.977018,
		-0.588628, 0.804599, -0.078345,
		0.781764, 0.591225, 0.198237,
		34.267986, 32.499077, 29.956949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745277, 32.591057, 29.348434>,  <33.720753, 32.085220, 29.818184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745277, 32.591057, 29.348434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119579, 32.638786, 29.481169>,  <34.344162, 32.667423, 29.560810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119579, 32.638786, 29.481169>,  <33.745277, 32.591057, 29.348434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119579, 32.638786, 29.481169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301336, 0.218204, -0.928215,
		-0.183170, 0.968580, 0.168228,
		0.935759, 0.119328, 0.331837,
		34.400307, 32.674583, 29.580719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856510, 33.147900, 29.048344>,  <33.745277, 32.591057, 29.348434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856510, 33.147900, 29.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206337, 32.963223, 29.107647>,  <34.416233, 32.852417, 29.143229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206337, 32.963223, 29.107647>,  <33.856510, 33.147900, 29.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206337, 32.963223, 29.107647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288152, 0.248907, -0.924669,
		0.390009, 0.851403, 0.350722,
		0.874564, -0.461691, 0.148258,
		34.468704, 32.824715, 29.152124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418583, 33.557842, 28.844191>,  <33.856510, 33.147900, 29.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418583, 33.557842, 28.844191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569794, 33.187901, 28.827490>,  <34.660522, 32.965935, 28.817469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569794, 33.187901, 28.827490>,  <34.418583, 33.557842, 28.844191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569794, 33.187901, 28.827490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308763, 0.168467, -0.936100,
		0.872788, 0.340982, 0.349246,
		0.378030, -0.924851, -0.041753,
		34.683201, 32.910446, 28.814964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052486, 33.664345, 28.402723>,  <34.418583, 33.557842, 28.844191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052486, 33.664345, 28.402723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958920, 33.275562, 28.412352>,  <34.902779, 33.042294, 28.418129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958920, 33.275562, 28.412352>,  <35.052486, 33.664345, 28.402723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958920, 33.275562, 28.412352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463637, -0.133271, -0.875945,
		0.854590, -0.193736, 0.481811,
		-0.233914, -0.971959, 0.024069,
		34.888744, 32.983974, 28.419573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553272, 33.430923, 28.184189>,  <35.052486, 33.664345, 28.402723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553272, 33.430923, 28.184189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312569, 33.113785, 28.145653>,  <35.168148, 32.923500, 28.122532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312569, 33.113785, 28.145653>,  <35.553272, 33.430923, 28.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312569, 33.113785, 28.145653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392167, -0.188238, -0.900428,
		0.695768, -0.579620, 0.424202,
		-0.601757, -0.792848, -0.096338,
		35.132042, 32.875931, 28.116751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016365, 32.743286, 27.926249>,  <35.553272, 33.430923, 28.184189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016365, 32.743286, 27.926249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634445, 32.668793, 27.833572>,  <35.405293, 32.624096, 27.777967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634445, 32.668793, 27.833572>,  <36.016365, 32.743286, 27.926249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634445, 32.668793, 27.833572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290335, -0.416976, -0.861299,
		0.063797, -0.889633, 0.452199,
		-0.954796, -0.186238, -0.231689,
		35.348007, 32.612923, 27.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947235, 32.155590, 27.617119>,  <36.016365, 32.743286, 27.926249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947235, 32.155590, 27.617119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603333, 32.318432, 27.493773>,  <35.396992, 32.416138, 27.419765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603333, 32.318432, 27.493773>,  <35.947235, 32.155590, 27.617119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603333, 32.318432, 27.493773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134900, -0.401329, -0.905945,
		-0.492568, -0.820489, 0.290127,
		-0.859755, 0.407101, -0.308366,
		35.345406, 32.440563, 27.401262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647179, 31.735165, 27.143938>,  <35.947235, 32.155590, 27.617119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647179, 31.735165, 27.143938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439034, 32.067986, 27.067081>,  <35.314148, 32.267677, 27.020967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439034, 32.067986, 27.067081>,  <35.647179, 31.735165, 27.143938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439034, 32.067986, 27.067081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042427, -0.249915, -0.967338,
		-0.852892, -0.495213, 0.165347,
		-0.520361, 0.832050, -0.192140,
		35.282925, 32.317600, 27.009439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069397, 31.516752, 26.701857>,  <35.647179, 31.735165, 27.143938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069397, 31.516752, 26.701857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106632, 31.910471, 26.641869>,  <35.128975, 32.146702, 26.605875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106632, 31.910471, 26.641869>,  <35.069397, 31.516752, 26.701857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106632, 31.910471, 26.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153272, -0.162995, -0.974649,
		-0.983790, 0.067743, -0.166039,
		0.093089, 0.984299, -0.149970,
		35.134560, 32.205761, 26.596878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670719, 31.663782, 26.137375>,  <35.069397, 31.516752, 26.701857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670719, 31.663782, 26.137375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930019, 31.966852, 26.167555>,  <35.085602, 32.148693, 26.185663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930019, 31.966852, 26.167555>,  <34.670719, 31.663782, 26.137375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930019, 31.966852, 26.167555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238919, -0.108322, -0.964979,
		-0.722969, 0.643579, -0.251243,
		0.648255, 0.757676, 0.075450,
		35.124496, 32.194157, 26.190189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492886, 32.122940, 25.654270>,  <34.670719, 31.663782, 26.137375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492886, 32.122940, 25.654270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873192, 32.228703, 25.718927>,  <35.101376, 32.292160, 25.757721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873192, 32.228703, 25.718927>,  <34.492886, 32.122940, 25.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873192, 32.228703, 25.718927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188801, -0.080575, -0.978704,
		-0.245755, 0.961038, -0.126529,
		0.950767, 0.264411, 0.161644,
		35.158421, 32.308025, 25.767420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550819, 32.541115, 25.122177>,  <34.492886, 32.122940, 25.654270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550819, 32.541115, 25.122177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 32.452446, 25.226301>,  <35.152248, 32.399242, 25.288774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 32.452446, 25.226301>,  <34.550819, 32.541115, 25.122177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926712, 32.452446, 25.226301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255230, -0.051775, -0.965493,
		0.227503, 0.973745, 0.007923,
		0.939734, -0.221674, 0.260308,
		35.208633, 32.385944, 25.304394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966022, 33.021065, 24.957861>,  <34.550819, 32.541115, 25.122177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966022, 33.021065, 24.957861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230221, 32.721569, 24.980225>,  <35.388741, 32.541870, 24.993643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230221, 32.721569, 24.980225>,  <34.966022, 33.021065, 24.957861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230221, 32.721569, 24.980225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316849, 0.210447, -0.924835,
		0.680698, 0.628566, 0.376238,
		0.660498, -0.748744, 0.055909,
		35.428371, 32.496944, 24.996998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548878, 33.284119, 24.597387>,  <34.966022, 33.021065, 24.957861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548878, 33.284119, 24.597387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600616, 32.887535, 24.604162>,  <35.631660, 32.649586, 24.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600616, 32.887535, 24.604162>,  <35.548878, 33.284119, 24.597387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600616, 32.887535, 24.604162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533004, 0.055116, -0.844315,
		0.836167, 0.118238, 0.535579,
		0.129349, -0.991454, 0.016936,
		35.639420, 32.590099, 24.609243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264469, 33.071682, 24.689009>,  <35.548878, 33.284119, 24.597387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264469, 33.071682, 24.689009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073212, 32.774265, 24.502028>,  <35.958458, 32.595814, 24.389839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073212, 32.774265, 24.502028>,  <36.264469, 33.071682, 24.689009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073212, 32.774265, 24.502028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586854, 0.125502, -0.799907,
		0.653435, -0.656801, 0.376345,
		-0.478148, -0.743547, -0.467454,
		35.929768, 32.551201, 24.361792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796227, 32.673653, 24.230560>,  <36.264469, 33.071682, 24.689009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796227, 32.673653, 24.230560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458549, 32.512577, 24.089037>,  <36.255943, 32.415932, 24.004122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458549, 32.512577, 24.089037>,  <36.796227, 32.673653, 24.230560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458549, 32.512577, 24.089037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442364, -0.150579, -0.884104,
		0.302740, -0.902868, 0.305251,
		-0.844194, -0.402686, -0.353810,
		36.205292, 32.391773, 23.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000908, 32.113396, 23.758152>,  <36.796227, 32.673653, 24.230560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000908, 32.113396, 23.758152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621609, 32.189293, 23.656307>,  <36.394028, 32.234833, 23.595201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621609, 32.189293, 23.656307>,  <37.000908, 32.113396, 23.758152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621609, 32.189293, 23.656307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203174, -0.253657, -0.945716,
		-0.244012, -0.948505, 0.201982,
		-0.948250, 0.189728, -0.254606,
		36.337135, 32.246216, 23.579924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818272, 31.488909, 23.411217>,  <37.000908, 32.113396, 23.758152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818272, 31.488909, 23.411217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575035, 31.786730, 23.301039>,  <36.429092, 31.965422, 23.234932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575035, 31.786730, 23.301039>,  <36.818272, 31.488909, 23.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575035, 31.786730, 23.301039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307189, -0.099255, -0.946458,
		-0.732027, -0.660144, -0.168363,
		-0.608088, 0.744553, -0.275447,
		36.392609, 32.010098, 23.218405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383793, 31.289387, 22.947477>,  <36.818272, 31.488909, 23.411217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383793, 31.289387, 22.947477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383881, 31.685005, 22.888439>,  <36.383934, 31.922377, 22.853016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383881, 31.685005, 22.888439>,  <36.383793, 31.289387, 22.947477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383881, 31.685005, 22.888439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399535, -0.135388, -0.906665,
		-0.916718, -0.058774, -0.395188,
		0.000215, 0.989048, -0.147595,
		36.383945, 31.981720, 22.844160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282066, 31.392015, 22.275246>,  <36.383793, 31.289387, 22.947477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282066, 31.392015, 22.275246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434490, 31.752512, 22.357761>,  <36.525944, 31.968809, 22.407270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434490, 31.752512, 22.357761>,  <36.282066, 31.392015, 22.275246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434490, 31.752512, 22.357761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347939, 0.066932, -0.935125,
		-0.856581, 0.428117, -0.288072,
		0.381062, 0.901241, 0.206291,
		36.548809, 32.022884, 22.419649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273464, 31.733229, 21.622526>,  <36.282066, 31.392015, 22.275246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273464, 31.733229, 21.622526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476929, 32.029724, 21.797718>,  <36.599007, 32.207623, 21.902834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476929, 32.029724, 21.797718>,  <36.273464, 31.733229, 21.622526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476929, 32.029724, 21.797718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190450, 0.399234, -0.896851,
		-0.839639, 0.539606, 0.061905,
		0.508661, 0.741241, 0.437980,
		36.629528, 32.252098, 21.929111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992485, 32.289524, 21.381483>,  <36.273464, 31.733229, 21.622526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992485, 32.289524, 21.381483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348782, 32.423107, 21.504807>,  <36.562561, 32.503258, 21.578800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348782, 32.423107, 21.504807>,  <35.992485, 32.289524, 21.381483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348782, 32.423107, 21.504807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004262, 0.672159, -0.740395,
		-0.454492, 0.660814, 0.597296,
		0.890740, 0.333958, 0.308308,
		36.616005, 32.523296, 21.597300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936420, 33.086269, 21.333225>,  <35.992485, 32.289524, 21.381483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936420, 33.086269, 21.333225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315308, 32.961964, 21.301725>,  <36.542641, 32.887379, 21.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315308, 32.961964, 21.301725>,  <35.936420, 33.086269, 21.333225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315308, 32.961964, 21.301725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117448, 0.564948, -0.816725,
		0.298298, 0.764369, 0.571628,
		0.947219, -0.310764, -0.078749,
		36.599472, 32.868736, 21.278101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409412, 33.685120, 21.374582>,  <35.936420, 33.086269, 21.333225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409412, 33.685120, 21.374582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643440, 33.406952, 21.207689>,  <36.783855, 33.240051, 21.107553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643440, 33.406952, 21.207689>,  <36.409412, 33.685120, 21.374582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643440, 33.406952, 21.207689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276676, 0.654773, -0.703365,
		0.762329, 0.296078, 0.575493,
		0.585068, -0.695421, -0.417234,
		36.818962, 33.198326, 21.082520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896931, 34.035126, 21.192097>,  <36.409412, 33.685120, 21.374582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896931, 34.035126, 21.192097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955750, 33.717342, 20.956400>,  <36.991043, 33.526672, 20.814981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955750, 33.717342, 20.956400>,  <36.896931, 34.035126, 21.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955750, 33.717342, 20.956400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338965, 0.600120, -0.724540,
		0.929235, -0.093187, 0.357544,
		0.147052, -0.794463, -0.589240,
		36.999866, 33.479004, 20.779627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410233, 34.357651, 20.702168>,  <36.896931, 34.035126, 21.192097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410233, 34.357651, 20.702168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306824, 34.004539, 20.545259>,  <37.244778, 33.792675, 20.451115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306824, 34.004539, 20.545259>,  <37.410233, 34.357651, 20.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306824, 34.004539, 20.545259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432748, 0.257217, -0.864042,
		0.863653, -0.393127, 0.315523,
		-0.258520, -0.882775, -0.392271,
		37.229267, 33.739708, 20.427578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991280, 34.106918, 20.374510>,  <37.410233, 34.357651, 20.702168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991280, 34.106918, 20.374510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670238, 33.948547, 20.196043>,  <37.477612, 33.853523, 20.088963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670238, 33.948547, 20.196043>,  <37.991280, 34.106918, 20.374510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670238, 33.948547, 20.196043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321590, 0.342758, -0.882665,
		0.502398, -0.851915, -0.147774,
		-0.802606, -0.395926, -0.446168,
		37.429455, 33.829769, 20.062193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241699, 33.819988, 19.777655>,  <37.991280, 34.106918, 20.374510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241699, 33.819988, 19.777655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846729, 33.852940, 19.723680>,  <37.609749, 33.872711, 19.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846729, 33.852940, 19.723680>,  <38.241699, 33.819988, 19.777655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846729, 33.852940, 19.723680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154162, 0.312486, -0.937329,
		-0.035051, -0.946343, -0.321256,
		-0.987424, 0.082380, -0.134937,
		37.550503, 33.877655, 19.683199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087578, 33.529903, 19.103258>,  <38.241699, 33.819988, 19.777655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087578, 33.529903, 19.103258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775963, 33.770485, 19.174089>,  <37.588993, 33.914833, 19.216587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775963, 33.770485, 19.174089>,  <38.087578, 33.529903, 19.103258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775963, 33.770485, 19.174089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124685, 0.425405, -0.896373,
		-0.614457, -0.676228, -0.406398,
		-0.779036, 0.601454, 0.177077,
		37.542252, 33.950920, 19.227213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481384, 33.499943, 18.538248>,  <38.087578, 33.529903, 19.103258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481384, 33.499943, 18.538248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503807, 33.868393, 18.692335>,  <37.517262, 34.089462, 18.784788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503807, 33.868393, 18.692335>,  <37.481384, 33.499943, 18.538248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503807, 33.868393, 18.692335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060414, 0.381989, -0.922190,
		-0.996598, 0.074965, -0.034237,
		0.056054, 0.921121, 0.385219,
		37.520622, 34.144730, 18.807901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986923, 33.936546, 18.203648>,  <37.481384, 33.499943, 18.538248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986923, 33.936546, 18.203648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 34.159096, 18.347513>,  <37.466320, 34.292625, 18.433832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 34.159096, 18.347513>,  <36.986923, 33.936546, 18.203648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286545, 34.159096, 18.347513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144402, 0.392716, -0.908252,
		-0.646576, 0.732270, 0.213825,
		0.749058, 0.556377, 0.359662,
		37.511261, 34.326008, 18.455412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618336, 34.624859, 18.345547>,  <36.986923, 33.936546, 18.203648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618336, 34.624859, 18.345547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640587, 35.024090, 18.334591>,  <36.653938, 35.263630, 18.328018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640587, 35.024090, 18.334591>,  <36.618336, 34.624859, 18.345547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640587, 35.024090, 18.334591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103080, -0.033024, -0.994125,
		-0.993116, 0.052478, -0.104719,
		0.055628, 0.998076, -0.027387,
		36.657276, 35.323513, 18.326374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224388, 34.861866, 17.744225>,  <36.618336, 34.624859, 18.345547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224388, 34.861866, 17.744225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506157, 35.129082, 17.840153>,  <36.675217, 35.289413, 17.897711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506157, 35.129082, 17.840153>,  <36.224388, 34.861866, 17.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506157, 35.129082, 17.840153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307905, 0.016827, -0.951268,
		-0.639522, 0.743934, -0.193840,
		0.704419, 0.668041, 0.239822,
		36.717484, 35.329494, 17.912100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512585, 35.230648, 17.069475>,  <36.224388, 34.861866, 17.744225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512585, 35.230648, 17.069475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 35.291779, 17.363356>,  <36.935593, 35.328457, 17.539684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 35.291779, 17.363356>,  <36.512585, 35.230648, 17.069475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776966, 35.291779, 17.363356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749715, -0.177158, -0.637607,
		0.032715, 0.972244, -0.231669,
		0.660951, 0.152827, 0.734702,
		36.975250, 35.337627, 17.583767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066750, 35.815170, 16.818481>,  <36.512585, 35.230648, 17.069475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066750, 35.815170, 16.818481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184948, 35.540348, 17.084003>,  <37.255867, 35.375454, 17.243317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184948, 35.540348, 17.084003>,  <37.066750, 35.815170, 16.818481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184948, 35.540348, 17.084003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709146, -0.307843, -0.634306,
		0.640150, 0.658174, 0.396252,
		0.295500, -0.687052, 0.663807,
		37.273598, 35.334232, 17.283146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711040, 35.904430, 17.131386>,  <37.066750, 35.815170, 16.818481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711040, 35.904430, 17.131386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673256, 35.506260, 17.125713>,  <37.650585, 35.267357, 17.122309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673256, 35.506260, 17.125713>,  <37.711040, 35.904430, 17.131386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673256, 35.506260, 17.125713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808958, -0.068446, -0.583868,
		0.580228, -0.066625, 0.811725,
		-0.094460, -0.995428, -0.014183,
		37.644917, 35.207630, 17.121458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954651, 35.566715, 17.819796>,  <37.711040, 35.904430, 17.131386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954651, 35.566715, 17.819796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569836, 35.650108, 17.749344>,  <37.338947, 35.700146, 17.707073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569836, 35.650108, 17.749344>,  <37.954651, 35.566715, 17.819796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569836, 35.650108, 17.749344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174485, 0.026397, 0.984306,
		0.209863, 0.977669, 0.010983,
		-0.962036, 0.208486, -0.176128,
		37.281223, 35.712654, 17.696505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607307, 36.205933, 18.244745>,  <37.954651, 35.566715, 17.819796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607307, 36.205933, 18.244745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312260, 35.958942, 18.135464>,  <37.135231, 35.810749, 18.069895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312260, 35.958942, 18.135464>,  <37.607307, 36.205933, 18.244745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312260, 35.958942, 18.135464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440039, 0.132701, 0.888119,
		-0.512141, 0.775312, -0.369597,
		-0.737616, -0.617480, -0.273206,
		37.090977, 35.773697, 18.053501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982803, 36.582542, 18.263443>,  <37.607307, 36.205933, 18.244745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982803, 36.582542, 18.263443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916668, 36.189869, 18.301304>,  <36.876987, 35.954266, 18.324020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916668, 36.189869, 18.301304>,  <36.982803, 36.582542, 18.263443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916668, 36.189869, 18.301304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289215, 0.140016, 0.946969,
		-0.942878, 0.129191, -0.307068,
		-0.165334, -0.981685, 0.094654,
		36.867069, 35.895363, 18.329700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352840, 36.563351, 18.523104>,  <36.982803, 36.582542, 18.263443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352840, 36.563351, 18.523104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515762, 36.209831, 18.615194>,  <36.613518, 35.997719, 18.670448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515762, 36.209831, 18.615194>,  <36.352840, 36.563351, 18.523104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515762, 36.209831, 18.615194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500726, -0.005280, 0.865590,
		-0.763790, -0.467841, -0.444691,
		0.407307, -0.883797, 0.230227,
		36.637955, 35.944691, 18.684263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778690, 36.124699, 18.827520>,  <36.352840, 36.563351, 18.523104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778690, 36.124699, 18.827520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135448, 35.971462, 18.923660>,  <36.349503, 35.879520, 18.981344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135448, 35.971462, 18.923660>,  <35.778690, 36.124699, 18.827520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135448, 35.971462, 18.923660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250095, 0.024993, 0.967899,
		-0.376802, -0.923372, -0.073518,
		0.891893, -0.383093, 0.240348,
		36.403015, 35.856533, 18.995764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618393, 35.486080, 19.138123>,  <35.778690, 36.124699, 18.827520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618393, 35.486080, 19.138123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976994, 35.602638, 19.271612>,  <36.192154, 35.672573, 19.351706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976994, 35.602638, 19.271612>,  <35.618393, 35.486080, 19.138123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976994, 35.602638, 19.271612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328785, -0.067299, 0.942004,
		0.296953, -0.954233, 0.035472,
		0.896504, 0.291394, 0.333723,
		36.245945, 35.690056, 19.371729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811596, 35.071587, 19.665791>,  <35.618393, 35.486080, 19.138123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811596, 35.071587, 19.665791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049339, 35.387836, 19.724648>,  <36.191986, 35.577587, 19.759962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049339, 35.387836, 19.724648>,  <35.811596, 35.071587, 19.665791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049339, 35.387836, 19.724648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180989, -0.046767, 0.982373,
		0.783572, -0.610509, 0.115298,
		0.594355, 0.790628, 0.147141,
		36.227646, 35.625023, 19.768789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220306, 34.797634, 20.169565>,  <35.811596, 35.071587, 19.665791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220306, 34.797634, 20.169565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295956, 35.186878, 20.222155>,  <36.341343, 35.420425, 20.253708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295956, 35.186878, 20.222155>,  <36.220306, 34.797634, 20.169565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295956, 35.186878, 20.222155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051313, -0.143501, 0.988319,
		0.980613, -0.180163, -0.077072,
		0.189119, 0.973113, 0.131474,
		36.352692, 35.478813, 20.261597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842178, 34.824654, 20.777859>,  <36.220306, 34.797634, 20.169565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842178, 34.824654, 20.777859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646759, 35.172352, 20.747576>,  <36.529507, 35.380970, 20.729406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646759, 35.172352, 20.747576>,  <36.842178, 34.824654, 20.777859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646759, 35.172352, 20.747576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016879, 0.077337, 0.996862,
		0.872376, 0.488289, -0.023111,
		-0.488544, 0.869248, -0.075709,
		36.500195, 35.433125, 20.724863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207802, 35.194988, 21.200850>,  <36.842178, 34.824654, 20.777859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207802, 35.194988, 21.200850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843235, 35.354416, 21.159927>,  <36.624496, 35.450073, 21.135374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843235, 35.354416, 21.159927>,  <37.207802, 35.194988, 21.200850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843235, 35.354416, 21.159927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071568, 0.091289, 0.993249,
		0.405219, 0.912583, -0.054678,
		-0.911414, 0.398571, -0.102304,
		36.569809, 35.473988, 21.129236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256130, 35.792542, 21.554703>,  <37.207802, 35.194988, 21.200850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256130, 35.792542, 21.554703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858486, 35.754082, 21.534687>,  <36.619900, 35.731007, 21.522678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858486, 35.754082, 21.534687>,  <37.256130, 35.792542, 21.554703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858486, 35.754082, 21.534687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069392, 0.209928, 0.975251,
		-0.083264, 0.972978, -0.215364,
		-0.994109, -0.096148, -0.050037,
		36.560253, 35.725239, 21.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899429, 36.419170, 21.872114>,  <37.256130, 35.792542, 21.554703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899429, 36.419170, 21.872114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656372, 36.101646, 21.882156>,  <36.510536, 35.911133, 21.888182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656372, 36.101646, 21.882156>,  <36.899429, 36.419170, 21.872114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656372, 36.101646, 21.882156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159342, 0.152817, 0.975324,
		-0.778060, 0.588650, -0.219346,
		-0.607645, -0.793812, 0.025104,
		36.474079, 35.863503, 21.889688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339310, 36.686909, 22.255577>,  <36.899429, 36.419170, 21.872114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339310, 36.686909, 22.255577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320377, 36.289120, 22.293049>,  <36.309017, 36.050446, 22.315531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320377, 36.289120, 22.293049>,  <36.339310, 36.686909, 22.255577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320377, 36.289120, 22.293049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124908, 0.098940, 0.987223,
		-0.991038, 0.035028, -0.128902,
		-0.047334, -0.994476, 0.093678,
		36.306175, 35.990776, 22.321152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782185, 36.597897, 22.664412>,  <36.339310, 36.686909, 22.255577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782185, 36.597897, 22.664412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002377, 36.264515, 22.683668>,  <36.134491, 36.064484, 22.695221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002377, 36.264515, 22.683668>,  <35.782185, 36.597897, 22.664412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002377, 36.264515, 22.683668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141798, -0.036518, 0.989222,
		-0.822717, -0.551375, -0.138285,
		0.550482, -0.833458, 0.048140,
		36.167522, 36.014477, 22.698111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445953, 36.250359, 23.157896>,  <35.782185, 36.597897, 22.664412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445953, 36.250359, 23.157896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796349, 36.057507, 23.163504>,  <36.006584, 35.941795, 23.166868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796349, 36.057507, 23.163504>,  <35.445953, 36.250359, 23.157896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796349, 36.057507, 23.163504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042204, -0.047663, 0.997971,
		-0.480489, -0.874799, -0.062100,
		0.875985, -0.482135, 0.014018,
		36.059143, 35.912865, 23.167709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312767, 35.652561, 23.468025>,  <35.445953, 36.250359, 23.157896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312767, 35.652561, 23.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705929, 35.707233, 23.517357>,  <35.941826, 35.740036, 23.546955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705929, 35.707233, 23.517357>,  <35.312767, 35.652561, 23.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705929, 35.707233, 23.517357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111823, -0.088897, 0.989744,
		0.146239, -0.986619, -0.072094,
		0.982909, 0.136677, 0.123327,
		36.000801, 35.748238, 23.554356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571579, 35.046909, 23.932878>,  <35.312767, 35.652561, 23.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571579, 35.046909, 23.932878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854080, 35.325867, 23.981621>,  <36.023582, 35.493240, 24.010866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854080, 35.325867, 23.981621>,  <35.571579, 35.046909, 23.932878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854080, 35.325867, 23.981621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111765, -0.060135, 0.991913,
		0.699081, -0.714162, 0.035473,
		0.706254, 0.697393, 0.121858,
		36.065956, 35.535084, 24.018179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964161, 34.801834, 24.442127>,  <35.571579, 35.046909, 23.932878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964161, 34.801834, 24.442127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028038, 35.195587, 24.412479>,  <36.066364, 35.431839, 24.394691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028038, 35.195587, 24.412479>,  <35.964161, 34.801834, 24.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028038, 35.195587, 24.412479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112273, 0.092707, 0.989344,
		0.980762, -0.149670, 0.125323,
		0.159693, 0.984380, -0.074119,
		36.075947, 35.490902, 24.390244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416492, 34.976650, 24.971729>,  <35.964161, 34.801834, 24.442127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416492, 34.976650, 24.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238281, 35.321720, 24.875982>,  <36.131355, 35.528763, 24.818533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238281, 35.321720, 24.875982>,  <36.416492, 34.976650, 24.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238281, 35.321720, 24.875982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150334, 0.191486, 0.969914,
		0.882553, 0.468114, 0.044375,
		-0.445533, 0.862672, -0.239370,
		36.104622, 35.580521, 24.804171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632561, 35.362499, 25.469751>,  <36.416492, 34.976650, 24.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632561, 35.362499, 25.469751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325062, 35.569134, 25.318932>,  <36.140564, 35.693115, 25.228439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325062, 35.569134, 25.318932>,  <36.632561, 35.362499, 25.469751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325062, 35.569134, 25.318932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223426, 0.335484, 0.915167,
		0.599261, 0.787772, -0.142481,
		-0.768744, 0.516590, -0.377051,
		36.094440, 35.724110, 25.205816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789982, 35.858273, 25.896111>,  <36.632561, 35.362499, 25.469751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789982, 35.858273, 25.896111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421810, 35.911709, 25.749157>,  <36.200909, 35.943771, 25.660984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421810, 35.911709, 25.749157>,  <36.789982, 35.858273, 25.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421810, 35.911709, 25.749157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287838, 0.404304, 0.868152,
		0.264514, 0.904815, -0.333679,
		-0.920425, 0.133593, -0.367384,
		36.145683, 35.951786, 25.638941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411560, 36.512566, 26.157879>,  <36.789982, 35.858273, 25.896111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411560, 36.512566, 26.157879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093758, 36.300301, 26.039791>,  <35.903076, 36.172939, 25.968939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093758, 36.300301, 26.039791>,  <36.411560, 36.512566, 26.157879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093758, 36.300301, 26.039791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400699, 0.092843, 0.911494,
		-0.456290, 0.842480, -0.286402,
		-0.794506, -0.530667, -0.295217,
		35.855408, 36.141102, 25.951225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769524, 36.847614, 26.480476>,  <36.411560, 36.512566, 26.157879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769524, 36.847614, 26.480476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603786, 36.498611, 26.376894>,  <35.504345, 36.289211, 26.314745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603786, 36.498611, 26.376894>,  <35.769524, 36.847614, 26.480476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603786, 36.498611, 26.376894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556576, 0.017793, 0.830606,
		-0.720099, 0.488283, -0.492987,
		-0.414343, -0.872504, -0.258954,
		35.479485, 36.236862, 26.299208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991673, 36.958057, 26.541100>,  <35.769524, 36.847614, 26.480476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991673, 36.958057, 26.541100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 36.572357, 26.560020>,  <35.158543, 36.340939, 26.571373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 36.572357, 26.560020>,  <34.991673, 36.958057, 26.541100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095966, 36.572357, 26.560020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428357, -0.071639, 0.900765,
		-0.865175, -0.255123, -0.431723,
		0.260734, -0.964251, 0.047304,
		35.174187, 36.283081, 26.574211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336163, 36.625175, 26.486902>,  <34.991673, 36.958057, 26.541100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336163, 36.625175, 26.486902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576408, 36.372437, 26.682875>,  <34.720558, 36.220795, 26.800459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576408, 36.372437, 26.682875>,  <34.336163, 36.625175, 26.486902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576408, 36.372437, 26.682875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624416, 0.012034, 0.781000,
		-0.499365, -0.775003, -0.387305,
		0.600616, -0.631843, 0.489933,
		34.756592, 36.182884, 26.829855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837677, 36.177982, 26.860901>,  <34.336163, 36.625175, 26.486902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837677, 36.177982, 26.860901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196911, 36.128399, 27.029697>,  <34.412453, 36.098648, 27.130976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196911, 36.128399, 27.029697>,  <33.837677, 36.177982, 26.860901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196911, 36.128399, 27.029697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420621, 0.038326, 0.906427,
		-0.128535, -0.991547, -0.017721,
		0.898085, -0.123962, 0.421991,
		34.466335, 36.091209, 27.156294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833302, 35.621376, 27.269670>,  <33.837677, 36.177982, 26.860901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833302, 35.621376, 27.269670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104240, 35.875233, 27.418495>,  <34.266804, 36.027546, 27.507790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104240, 35.875233, 27.418495>,  <33.833302, 35.621376, 27.269670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104240, 35.875233, 27.418495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273604, -0.252145, 0.928204,
		0.682895, -0.730511, 0.002852,
		0.677344, 0.634647, 0.372059,
		34.307446, 36.065628, 27.530113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047062, 35.286800, 27.876894>,  <33.833302, 35.621376, 27.269670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047062, 35.286800, 27.876894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167603, 35.666664, 27.911135>,  <34.239929, 35.894585, 27.931679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167603, 35.666664, 27.911135>,  <34.047062, 35.286800, 27.876894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167603, 35.666664, 27.911135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231502, -0.014218, 0.972730,
		0.924982, -0.312953, 0.215564,
		0.301354, 0.949662, 0.085601,
		34.258007, 35.951561, 27.936815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429771, 35.224281, 28.441742>,  <34.047062, 35.286800, 27.876894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429771, 35.224281, 28.441742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337151, 35.609795, 28.388809>,  <34.281578, 35.841103, 28.357050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337151, 35.609795, 28.388809>,  <34.429771, 35.224281, 28.441742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337151, 35.609795, 28.388809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401679, 0.029176, 0.915316,
		0.886024, 0.265096, 0.380375,
		-0.231548, 0.963781, -0.132334,
		34.267685, 35.898930, 28.349110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827652, 35.621105, 29.038986>,  <34.429771, 35.224281, 28.441742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827652, 35.621105, 29.038986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546398, 35.855404, 28.877743>,  <34.377647, 35.995983, 28.780996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546398, 35.855404, 28.877743>,  <34.827652, 35.621105, 29.038986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546398, 35.855404, 28.877743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173211, 0.408742, 0.896063,
		0.689636, 0.699876, -0.185943,
		-0.703136, 0.585750, -0.403109,
		34.335457, 36.031128, 28.756809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932632, 36.222477, 29.407080>,  <34.827652, 35.621105, 29.038986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932632, 36.222477, 29.407080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562889, 36.258076, 29.258680>,  <34.341042, 36.279434, 29.169641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562889, 36.258076, 29.258680>,  <34.932632, 36.222477, 29.407080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562889, 36.258076, 29.258680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283731, 0.489738, 0.824411,
		0.255061, 0.867316, -0.427443,
		-0.924360, 0.088996, -0.370997,
		34.285580, 36.284775, 29.147381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710655, 36.917587, 29.584435>,  <34.932632, 36.222477, 29.407080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710655, 36.917587, 29.584435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354874, 36.746120, 29.521051>,  <34.141403, 36.643238, 29.483023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354874, 36.746120, 29.521051>,  <34.710655, 36.917587, 29.584435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354874, 36.746120, 29.521051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359934, 0.443400, 0.820880,
		-0.281627, 0.787171, -0.548679,
		-0.889457, -0.428670, -0.158456,
		34.088036, 36.617519, 29.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088924, 37.495571, 29.516314>,  <34.710655, 36.917587, 29.584435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088924, 37.495571, 29.516314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954784, 37.130707, 29.610556>,  <33.874302, 36.911789, 29.667101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954784, 37.130707, 29.610556>,  <34.088924, 37.495571, 29.516314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954784, 37.130707, 29.610556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546044, 0.391986, 0.740394,
		-0.767711, 0.119638, -0.629530,
		-0.335346, -0.912159, 0.235604,
		33.854179, 36.857059, 29.681236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421852, 37.598766, 29.710388>,  <34.088924, 37.495571, 29.516314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421852, 37.598766, 29.710388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502972, 37.230564, 29.843981>,  <33.551643, 37.009644, 29.924135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502972, 37.230564, 29.843981>,  <33.421852, 37.598766, 29.710388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502972, 37.230564, 29.843981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645317, 0.130896, 0.752617,
		-0.736505, -0.368152, -0.567472,
		0.202798, -0.920506, 0.333980,
		33.563812, 36.954411, 29.944174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740639, 37.255680, 29.863770>,  <33.421852, 37.598766, 29.710388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740639, 37.255680, 29.863770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027512, 37.084267, 30.083593>,  <33.199635, 36.981419, 30.215487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027512, 37.084267, 30.083593>,  <32.740639, 37.255680, 29.863770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027512, 37.084267, 30.083593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554516, 0.126728, 0.822467,
		-0.422099, -0.894594, -0.146742,
		0.717178, -0.428534, 0.549559,
		33.242664, 36.955708, 30.248461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410419, 36.801514, 30.334290>,  <32.740639, 37.255680, 29.863770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410419, 36.801514, 30.334290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772118, 36.832558, 30.502254>,  <32.989136, 36.851185, 30.603033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772118, 36.832558, 30.502254>,  <32.410419, 36.801514, 30.334290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772118, 36.832558, 30.502254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422338, 0.017287, 0.906273,
		0.063086, -0.996833, 0.048413,
		0.904240, 0.077620, 0.419910,
		33.043388, 36.855843, 30.628227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319862, 36.461704, 31.038540>,  <32.410419, 36.801514, 30.334290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319862, 36.461704, 31.038540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669529, 36.653576, 31.068832>,  <32.879330, 36.768700, 31.087008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669529, 36.653576, 31.068832>,  <32.319862, 36.461704, 31.038540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669529, 36.653576, 31.068832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169363, 0.154988, 0.973291,
		0.455135, -0.863645, 0.216726,
		0.874168, 0.479684, 0.075729,
		32.931778, 36.797482, 31.091551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772491, 36.161114, 31.491480>,  <32.319862, 36.461704, 31.038540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772491, 36.161114, 31.491480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910561, 36.536400, 31.481667>,  <32.993401, 36.761574, 31.475779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910561, 36.536400, 31.481667>,  <32.772491, 36.161114, 31.491480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910561, 36.536400, 31.481667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170919, 0.088541, 0.981299,
		0.922845, -0.334523, 0.190922,
		0.345172, 0.938219, -0.024533,
		33.014111, 36.817867, 31.474306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130070, 36.270607, 32.093639>,  <32.772491, 36.161114, 31.491480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130070, 36.270607, 32.093639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053375, 36.645367, 31.976702>,  <33.007359, 36.870220, 31.906538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053375, 36.645367, 31.976702>,  <33.130070, 36.270607, 32.093639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053375, 36.645367, 31.976702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164458, 0.262991, 0.950678,
		0.967570, 0.230357, 0.103655,
		-0.191735, 0.936895, -0.292346,
		32.995853, 36.926434, 31.888998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487877, 36.696323, 32.500336>,  <33.130070, 36.270607, 32.093639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487877, 36.696323, 32.500336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193626, 36.928577, 32.360783>,  <33.017075, 37.067928, 32.277050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193626, 36.928577, 32.360783>,  <33.487877, 36.696323, 32.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193626, 36.928577, 32.360783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173660, 0.336171, 0.925652,
		0.654750, 0.741519, -0.146463,
		-0.735625, 0.580636, -0.348880,
		32.972939, 37.102768, 32.256119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617886, 37.270130, 32.772701>,  <33.487877, 36.696323, 32.500336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617886, 37.270130, 32.772701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226738, 37.292786, 32.692139>,  <32.992050, 37.306381, 32.643799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226738, 37.292786, 32.692139>,  <33.617886, 37.270130, 32.772701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226738, 37.292786, 32.692139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175672, 0.300587, 0.937436,
		0.113641, 0.952071, -0.283984,
		-0.977868, 0.056643, -0.201411,
		32.933376, 37.309780, 32.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391479, 38.013344, 32.856308>,  <33.617886, 37.270130, 32.772701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391479, 38.013344, 32.856308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 37.757980, 32.910992>,  <32.906708, 37.604763, 32.943802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 37.757980, 32.910992>,  <33.391479, 38.013344, 32.856308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088497, 37.757980, 32.910992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153376, 0.377538, 0.913204,
		-0.634612, 0.670746, -0.383886,
		-0.757459, -0.638409, 0.136714,
		32.861259, 37.566460, 32.952007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061584, 38.214191, 32.624622>,  <33.391479, 38.013344, 32.856308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061584, 38.214191, 32.624622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340919, 38.316772, 32.891922>,  <34.508522, 38.378323, 33.052303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340919, 38.316772, 32.891922>,  <34.061584, 38.214191, 32.624622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340919, 38.316772, 32.891922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562029, 0.381652, -0.733801,
		-0.443225, 0.888016, 0.122387,
		0.698337, 0.256454, 0.668249,
		34.550419, 38.393707, 33.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296230, 38.869305, 32.481606>,  <34.061584, 38.214191, 32.624622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296230, 38.869305, 32.481606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602554, 38.760681, 32.714771>,  <34.786350, 38.695507, 32.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602554, 38.760681, 32.714771>,  <34.296230, 38.869305, 32.481606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602554, 38.760681, 32.714771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635771, 0.455884, -0.622869,
		-0.096593, 0.847599, 0.521772,
		0.765810, -0.271563, 0.582914,
		34.832298, 38.679211, 32.889645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722485, 39.481785, 32.529953>,  <34.296230, 38.869305, 32.481606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722485, 39.481785, 32.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965919, 39.177650, 32.620731>,  <35.111980, 38.995171, 32.675198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965919, 39.177650, 32.620731>,  <34.722485, 39.481785, 32.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965919, 39.177650, 32.620731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679380, 0.351533, -0.644102,
		0.409954, 0.546179, 0.730497,
		0.608589, -0.760337, 0.226950,
		35.148495, 38.949551, 32.688816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413933, 39.804867, 32.655525>,  <34.722485, 39.481785, 32.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413933, 39.804867, 32.655525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468231, 39.421535, 32.554981>,  <35.500809, 39.191536, 32.494656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468231, 39.421535, 32.554981>,  <35.413933, 39.804867, 32.655525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468231, 39.421535, 32.554981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649756, 0.277642, -0.707624,
		0.747924, -0.067271, 0.660367,
		0.135743, -0.958327, -0.251365,
		35.508953, 39.134037, 32.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182228, 39.731232, 32.605350>,  <35.413933, 39.804867, 32.655525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182228, 39.731232, 32.605350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004814, 39.433628, 32.405464>,  <35.898365, 39.255066, 32.285530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004814, 39.433628, 32.405464>,  <36.182228, 39.731232, 32.605350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004814, 39.433628, 32.405464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607972, 0.159901, -0.777690,
		0.658517, -0.648749, 0.381417,
		-0.443537, -0.744013, -0.499719,
		35.871754, 39.210423, 32.255550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709377, 39.322250, 32.345539>,  <36.182228, 39.731232, 32.605350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709377, 39.322250, 32.345539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414448, 39.189095, 32.110409>,  <36.237488, 39.109203, 31.969332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414448, 39.189095, 32.110409>,  <36.709377, 39.322250, 32.345539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414448, 39.189095, 32.110409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626310, -0.010772, -0.779500,
		0.253152, -0.942906, 0.216431,
		-0.737326, -0.332885, -0.587824,
		36.193249, 39.089230, 31.934061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928253, 38.679012, 32.016178>,  <36.709377, 39.322250, 32.345539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928253, 38.679012, 32.016178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636234, 38.837509, 31.793459>,  <36.461021, 38.932610, 31.659828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636234, 38.837509, 31.793459>,  <36.928253, 38.679012, 32.016178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636234, 38.837509, 31.793459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598036, -0.023882, -0.801113,
		-0.330736, -0.917833, -0.219535,
		-0.730046, 0.396247, -0.556796,
		36.417221, 38.956383, 31.626421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935062, 38.207932, 31.429274>,  <36.928253, 38.679012, 32.016178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935062, 38.207932, 31.429274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722233, 38.522663, 31.304188>,  <36.594536, 38.711502, 31.229137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722233, 38.522663, 31.304188>,  <36.935062, 38.207932, 31.429274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722233, 38.522663, 31.304188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330184, -0.147270, -0.932357,
		-0.779661, -0.599339, -0.181440,
		-0.532078, 0.786831, -0.312714,
		36.562611, 38.758713, 31.210373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617775, 38.023251, 30.727880>,  <36.935062, 38.207932, 31.429274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617775, 38.023251, 30.727880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585358, 38.421932, 30.728983>,  <36.565907, 38.661140, 30.729645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585358, 38.421932, 30.728983>,  <36.617775, 38.023251, 30.727880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585358, 38.421932, 30.728983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282415, 0.025615, -0.958950,
		-0.955863, -0.076935, -0.283561,
		-0.081041, 0.996707, 0.002757,
		36.561047, 38.720943, 30.729811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179592, 38.271820, 30.145247>,  <36.617775, 38.023251, 30.727880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179592, 38.271820, 30.145247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405193, 38.584743, 30.251001>,  <36.540554, 38.772495, 30.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405193, 38.584743, 30.251001>,  <36.179592, 38.271820, 30.145247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405193, 38.584743, 30.251001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388006, 0.031565, -0.921116,
		-0.728941, 0.622093, -0.285737,
		0.564001, 0.782307, 0.264385,
		36.574394, 38.819435, 30.330317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093674, 38.804764, 29.551394>,  <36.179592, 38.271820, 30.145247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093674, 38.804764, 29.551394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413750, 38.921555, 29.760941>,  <36.605797, 38.991627, 29.886669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413750, 38.921555, 29.760941>,  <36.093674, 38.804764, 29.551394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413750, 38.921555, 29.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522389, 0.089774, -0.847968,
		-0.294615, 0.952204, -0.080688,
		0.800195, 0.291974, 0.523870,
		36.653809, 39.009148, 29.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297371, 39.381020, 29.235018>,  <36.093674, 38.804764, 29.551394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297371, 39.381020, 29.235018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658291, 39.308392, 29.391418>,  <36.874844, 39.264812, 29.485258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658291, 39.308392, 29.391418>,  <36.297371, 39.381020, 29.235018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658291, 39.308392, 29.391418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383409, -0.076681, -0.920390,
		0.197101, 0.980383, 0.000428,
		0.902302, -0.181574, 0.391002,
		36.928982, 39.253918, 29.508718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736618, 39.772629, 28.856115>,  <36.297371, 39.381020, 29.235018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736618, 39.772629, 28.856115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972443, 39.486267, 29.005722>,  <37.113937, 39.314449, 29.095486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972443, 39.486267, 29.005722>,  <36.736618, 39.772629, 28.856115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972443, 39.486267, 29.005722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354150, -0.187057, -0.916290,
		0.725942, 0.672671, 0.143257,
		0.589564, -0.715908, 0.374019,
		37.149311, 39.271496, 29.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405712, 39.838215, 28.531910>,  <36.736618, 39.772629, 28.856115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405712, 39.838215, 28.531910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413593, 39.455372, 28.647535>,  <37.418320, 39.225666, 28.716909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413593, 39.455372, 28.647535>,  <37.405712, 39.838215, 28.531910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413593, 39.455372, 28.647535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351425, -0.264042, -0.898211,
		0.936009, 0.119278, 0.331150,
		0.019700, -0.957107, 0.289063,
		37.419502, 39.168240, 28.734255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099712, 39.613556, 28.311407>,  <37.405712, 39.838215, 28.531910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099712, 39.613556, 28.311407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859818, 39.294994, 28.342514>,  <37.715881, 39.103855, 28.361177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859818, 39.294994, 28.342514>,  <38.099712, 39.613556, 28.311407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859818, 39.294994, 28.342514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401566, -0.383608, -0.831619,
		0.692139, -0.467526, 0.549875,
		-0.599740, -0.796407, 0.077768,
		37.679893, 39.056072, 28.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484467, 39.055294, 28.053801>,  <38.099712, 39.613556, 28.311407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484467, 39.055294, 28.053801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106804, 38.923889, 28.043550>,  <37.880207, 38.845047, 28.037401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106804, 38.923889, 28.043550>,  <38.484467, 39.055294, 28.053801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106804, 38.923889, 28.043550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201826, -0.515081, -0.833041,
		0.260463, -0.791690, 0.552617,
		-0.944153, -0.328509, -0.025624,
		37.823559, 38.825336, 28.035864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595566, 38.311169, 27.962883>,  <38.484467, 39.055294, 28.053801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595566, 38.311169, 27.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229519, 38.389614, 27.821970>,  <38.009892, 38.436684, 27.737423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229519, 38.389614, 27.821970>,  <38.595566, 38.311169, 27.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229519, 38.389614, 27.821970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163021, -0.619152, -0.768163,
		-0.368766, -0.760387, 0.534625,
		-0.915115, 0.196117, -0.352281,
		37.954983, 38.448448, 27.716286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232906, 37.562229, 27.878876>,  <38.595566, 38.311169, 27.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232906, 37.562229, 27.878876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049973, 37.838516, 27.654819>,  <37.940212, 38.004288, 27.520386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049973, 37.838516, 27.654819>,  <38.232906, 37.562229, 27.878876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049973, 37.838516, 27.654819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109484, -0.668812, -0.735325,
		-0.882530, -0.274962, 0.381493,
		-0.457334, 0.690714, -0.560143,
		37.912773, 38.045731, 27.486776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683758, 37.081055, 27.541615>,  <38.232906, 37.562229, 27.878876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683758, 37.081055, 27.541615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698364, 37.441628, 27.369061>,  <37.707130, 37.657970, 27.265528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698364, 37.441628, 27.369061>,  <37.683758, 37.081055, 27.541615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698364, 37.441628, 27.369061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254166, -0.409098, -0.876378,
		-0.966471, 0.141647, 0.214173,
		0.036519, 0.901429, -0.431383,
		37.709320, 37.712055, 27.239645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104729, 37.076630, 27.054306>,  <37.683758, 37.081055, 27.541615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104729, 37.076630, 27.054306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341381, 37.364315, 26.908590>,  <37.483372, 37.536926, 26.821161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341381, 37.364315, 26.908590>,  <37.104729, 37.076630, 27.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341381, 37.364315, 26.908590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131613, -0.359633, -0.923766,
		-0.795393, 0.594474, -0.118113,
		0.591632, 0.719211, -0.364290,
		37.518871, 37.580078, 26.799303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781757, 37.384003, 26.458832>,  <37.104729, 37.076630, 27.054306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781757, 37.384003, 26.458832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171356, 37.471237, 26.434265>,  <37.405117, 37.523579, 26.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171356, 37.471237, 26.434265>,  <36.781757, 37.384003, 26.458832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171356, 37.471237, 26.434265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000040, -0.270903, -0.962607,
		-0.226566, 0.937578, -0.263849,
		0.973996, 0.218083, -0.061415,
		37.463554, 37.536663, 26.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918655, 37.329155, 25.706123>,  <36.781757, 37.384003, 26.458832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918655, 37.329155, 25.706123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281647, 37.356205, 25.871973>,  <37.499439, 37.372437, 25.971483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281647, 37.356205, 25.871973>,  <36.918655, 37.329155, 25.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281647, 37.356205, 25.871973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420012, -0.166709, -0.892075,
		0.008793, 0.983684, -0.179688,
		0.907476, 0.067627, 0.414625,
		37.553890, 37.376492, 25.996361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323338, 37.646389, 25.124983>,  <36.918655, 37.329155, 25.706123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323338, 37.646389, 25.124983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546124, 37.436577, 25.382559>,  <37.679794, 37.310688, 25.537104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546124, 37.436577, 25.382559>,  <37.323338, 37.646389, 25.124983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546124, 37.436577, 25.382559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414521, -0.496295, -0.762800,
		0.719698, 0.691777, -0.058987,
		0.556963, -0.524534, 0.643939,
		37.713211, 37.279217, 25.575741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960133, 37.755421, 24.914272>,  <37.323338, 37.646389, 25.124983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960133, 37.755421, 24.914272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962791, 37.410629, 25.117031>,  <37.964386, 37.203754, 25.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962791, 37.410629, 25.117031>,  <37.960133, 37.755421, 24.914272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962791, 37.410629, 25.117031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498647, -0.436532, -0.748860,
		0.866779, 0.257740, 0.426924,
		0.006645, -0.861980, 0.506898,
		37.964787, 37.152035, 25.269100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626270, 37.482590, 24.802868>,  <37.960133, 37.755421, 24.914272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626270, 37.482590, 24.802868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410141, 37.166946, 24.919731>,  <38.280464, 36.977558, 24.989849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410141, 37.166946, 24.919731>,  <38.626270, 37.482590, 24.802868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410141, 37.166946, 24.919731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465118, -0.569426, -0.677805,
		0.701226, -0.230344, 0.674703,
		-0.540321, -0.789111, 0.292159,
		38.248043, 36.930214, 25.007380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091202, 36.856998, 24.974428>,  <38.626270, 37.482590, 24.802868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091202, 36.856998, 24.974428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729450, 36.734333, 24.855730>,  <38.512402, 36.660732, 24.784512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729450, 36.734333, 24.855730>,  <39.091202, 36.856998, 24.974428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729450, 36.734333, 24.855730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424634, -0.577817, -0.697003,
		0.042282, -0.756362, 0.652785,
		-0.904377, -0.306666, -0.296746,
		38.458138, 36.642334, 24.766706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093971, 36.113453, 25.035679>,  <39.091202, 36.856998, 24.974428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093971, 36.113453, 25.035679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836838, 36.224243, 24.750008>,  <38.682560, 36.290718, 24.578604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836838, 36.224243, 24.750008>,  <39.093971, 36.113453, 25.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836838, 36.224243, 24.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495807, -0.560244, -0.663552,
		-0.583906, -0.780646, 0.222812,
		-0.642829, 0.276980, -0.714180,
		38.643990, 36.307339, 24.535753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252815, 35.679970, 24.544292>,  <39.093971, 36.113453, 25.035679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252815, 35.679970, 24.544292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964813, 35.876961, 24.348722>,  <38.792011, 35.995155, 24.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964813, 35.876961, 24.348722>,  <39.252815, 35.679970, 24.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964813, 35.876961, 24.348722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105724, -0.618473, -0.778661,
		-0.685863, -0.612335, 0.393240,
		-0.720010, 0.492480, -0.488926,
		38.748810, 36.024704, 24.202044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658329, 35.259880, 24.331581>,  <39.252815, 35.679970, 24.544292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658329, 35.259880, 24.331581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685844, 35.548439, 24.055943>,  <38.702354, 35.721573, 23.890560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685844, 35.548439, 24.055943>,  <38.658329, 35.259880, 24.331581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685844, 35.548439, 24.055943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179297, -0.688424, -0.702798,
		-0.981387, -0.075208, -0.176701,
		0.068790, 0.721398, -0.689095,
		38.706482, 35.764858, 23.849215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360825, 34.938156, 23.550238>,  <38.658329, 35.259880, 24.331581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360825, 34.938156, 23.550238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585442, 35.256409, 23.459339>,  <38.720211, 35.447361, 23.404800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585442, 35.256409, 23.459339>,  <38.360825, 34.938156, 23.550238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585442, 35.256409, 23.459339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495630, -0.543344, -0.677590,
		-0.662584, 0.267866, -0.699450,
		0.561545, 0.795629, -0.227248,
		38.753906, 35.495098, 23.391165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427822, 34.831440, 22.888451>,  <38.360825, 34.938156, 23.550238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427822, 34.831440, 22.888451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696941, 35.122242, 22.943312>,  <38.858414, 35.296722, 22.976229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696941, 35.122242, 22.943312>,  <38.427822, 34.831440, 22.888451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696941, 35.122242, 22.943312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638374, -0.476781, -0.604283,
		-0.373923, 0.494116, -0.784877,
		0.672800, 0.727000, 0.137152,
		38.898781, 35.340343, 22.984457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518066, 35.115349, 22.199753>,  <38.427822, 34.831440, 22.888451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518066, 35.115349, 22.199753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841488, 35.178219, 22.426569>,  <39.035542, 35.215942, 22.562658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841488, 35.178219, 22.426569>,  <38.518066, 35.115349, 22.199753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841488, 35.178219, 22.426569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583399, -0.339767, -0.737702,
		0.076713, 0.927283, -0.366416,
		0.808555, 0.157175, 0.567041,
		39.084053, 35.225372, 22.596682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905781, 35.600010, 21.863916>,  <38.518066, 35.115349, 22.199753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905781, 35.600010, 21.863916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161869, 35.404652, 22.101097>,  <39.315521, 35.287437, 22.243404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161869, 35.404652, 22.101097>,  <38.905781, 35.600010, 21.863916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161869, 35.404652, 22.101097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432711, -0.408497, -0.803674,
		0.634727, 0.771104, -0.050195,
		0.640221, -0.488393, 0.592949,
		39.353935, 35.258133, 22.278982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514408, 35.646942, 21.449453>,  <38.905781, 35.600010, 21.863916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514408, 35.646942, 21.449453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578468, 35.357010, 21.717476>,  <39.616905, 35.183052, 21.878290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578468, 35.357010, 21.717476>,  <39.514408, 35.646942, 21.449453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578468, 35.357010, 21.717476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561371, -0.491474, -0.665820,
		0.811921, 0.482780, 0.328190,
		0.160147, -0.724829, 0.670056,
		39.626511, 35.139561, 21.918493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220295, 35.644520, 21.366484>,  <39.514408, 35.646942, 21.449453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220295, 35.644520, 21.366484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089378, 35.308159, 21.538887>,  <40.010830, 35.106342, 21.642328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089378, 35.308159, 21.538887>,  <40.220295, 35.644520, 21.366484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089378, 35.308159, 21.538887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452211, -0.539894, -0.709944,
		0.829690, -0.037452, 0.556967,
		-0.327292, -0.840900, 0.431008,
		39.991192, 35.055889, 21.668190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844650, 35.212929, 21.353121>,  <40.220295, 35.644520, 21.366484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844650, 35.212929, 21.353121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537445, 34.963417, 21.411161>,  <40.353123, 34.813709, 21.445986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537445, 34.963417, 21.411161>,  <40.844650, 35.212929, 21.353121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537445, 34.963417, 21.411161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446880, -0.684264, -0.576265,
		0.458748, -0.377737, 0.804279,
		-0.768016, -0.623777, 0.145101,
		40.307041, 34.776283, 21.454691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183708, 34.503597, 21.522181>,  <40.844650, 35.212929, 21.353121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183708, 34.503597, 21.522181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797657, 34.474800, 21.421499>,  <40.566029, 34.457523, 21.361092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797657, 34.474800, 21.421499>,  <41.183708, 34.503597, 21.522181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797657, 34.474800, 21.421499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221042, -0.739253, -0.636118,
		-0.140275, -0.669569, 0.729384,
		-0.965124, -0.071993, -0.251702,
		40.508121, 34.453201, 21.345989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474945, 33.814922, 21.455593>,  <41.183708, 34.503597, 21.522181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474945, 33.814922, 21.455593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758991, 33.558449, 21.571949>,  <41.929417, 33.404564, 21.641764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758991, 33.558449, 21.571949>,  <41.474945, 33.814922, 21.455593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758991, 33.558449, 21.571949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091912, 0.325195, 0.941170,
		-0.698063, -0.695073, 0.171992,
		0.710112, -0.641188, 0.290892,
		41.972027, 33.366093, 21.659216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163097, 33.376511, 21.967850>,  <41.474945, 33.814922, 21.455593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163097, 33.376511, 21.967850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557850, 33.381611, 22.032221>,  <41.794701, 33.384670, 22.070845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557850, 33.381611, 22.032221>,  <41.163097, 33.376511, 21.967850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557850, 33.381611, 22.032221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158647, 0.261028, 0.952206,
		-0.029868, -0.965247, 0.259627,
		0.986883, 0.012749, 0.160930,
		41.853916, 33.385437, 22.080500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336700, 32.997795, 22.528435>,  <41.163097, 33.376511, 21.967850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336700, 32.997795, 22.528435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665936, 33.223343, 22.501345>,  <41.863476, 33.358673, 22.485090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665936, 33.223343, 22.501345>,  <41.336700, 32.997795, 22.528435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665936, 33.223343, 22.501345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125294, 0.296601, 0.946747,
		0.553926, -0.770766, 0.314777,
		0.823084, 0.563868, -0.067723,
		41.912861, 33.392502, 22.481028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644878, 32.937073, 23.162163>,  <41.336700, 32.997795, 22.528435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644878, 32.937073, 23.162163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804726, 33.274994, 23.019831>,  <41.900635, 33.477745, 22.934431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804726, 33.274994, 23.019831>,  <41.644878, 32.937073, 23.162163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804726, 33.274994, 23.019831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043264, 0.370358, 0.927881,
		0.915660, -0.386193, 0.111452,
		0.399618, 0.844802, -0.355830,
		41.924610, 33.528435, 22.913082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301697, 33.004574, 23.701870>,  <41.644878, 32.937073, 23.162163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301697, 33.004574, 23.701870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256817, 33.361431, 23.526831>,  <42.229889, 33.575546, 23.421806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256817, 33.361431, 23.526831>,  <42.301697, 33.004574, 23.701870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256817, 33.361431, 23.526831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019815, 0.442301, 0.896648,
		0.993489, 0.091929, -0.067302,
		-0.112196, 0.892143, -0.437599,
		42.223160, 33.629074, 23.395552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681545, 33.500610, 23.949520>,  <42.301697, 33.004574, 23.701870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681545, 33.500610, 23.949520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431206, 33.763672, 23.781807>,  <42.281002, 33.921509, 23.681179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431206, 33.763672, 23.781807>,  <42.681545, 33.500610, 23.949520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431206, 33.763672, 23.781807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001708, 0.538738, 0.842471,
		0.779940, 0.526545, -0.338293,
		-0.625851, 0.657655, -0.419285,
		42.243450, 33.960968, 23.656021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902287, 34.118862, 23.984491>,  <42.681545, 33.500610, 23.949520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902287, 34.118862, 23.984491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503254, 34.138988, 23.965342>,  <42.263832, 34.151066, 23.953852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503254, 34.138988, 23.965342>,  <42.902287, 34.118862, 23.984491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503254, 34.138988, 23.965342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015778, 0.507080, 0.861755,
		0.067638, 0.860429, -0.505061,
		-0.997585, 0.050318, -0.047874,
		42.203979, 34.154083, 23.950979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875076, 34.687393, 24.133635>,  <42.902287, 34.118862, 23.984491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875076, 34.687393, 24.133635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491783, 34.577827, 24.166498>,  <42.261806, 34.512089, 24.186216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491783, 34.577827, 24.166498>,  <42.875076, 34.687393, 24.133635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491783, 34.577827, 24.166498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074600, 0.516784, 0.852859,
		-0.276072, 0.811113, -0.515636,
		-0.958238, -0.273917, 0.082161,
		42.204311, 34.495651, 24.191147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689308, 35.135185, 24.590363>,  <42.875076, 34.687393, 24.133635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689308, 35.135185, 24.590363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344280, 34.932861, 24.585848>,  <42.137264, 34.811466, 24.583139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344280, 34.932861, 24.585848>,  <42.689308, 35.135185, 24.590363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344280, 34.932861, 24.585848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215593, 0.347295, 0.912637,
		-0.457701, 0.789648, -0.408616,
		-0.862572, -0.505809, -0.011285,
		42.085510, 34.781120, 24.582462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112000, 35.578350, 24.706923>,  <42.689308, 35.135185, 24.590363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112000, 35.578350, 24.706923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017380, 35.211586, 24.835493>,  <41.960609, 34.991528, 24.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017380, 35.211586, 24.835493>,  <42.112000, 35.578350, 24.706923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017380, 35.211586, 24.835493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375621, 0.391394, 0.840071,
		-0.896077, 0.077982, -0.436995,
		-0.236548, -0.916913, 0.321427,
		41.946415, 34.936512, 24.931921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379395, 35.651310, 24.774612>,  <42.112000, 35.578350, 24.706923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379395, 35.651310, 24.774612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478561, 35.320236, 24.975998>,  <41.538063, 35.121593, 25.096828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478561, 35.320236, 24.975998>,  <41.379395, 35.651310, 24.774612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478561, 35.320236, 24.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780983, 0.136751, 0.609397,
		-0.573237, -0.544279, -0.612503,
		0.247922, -0.827683, 0.503464,
		41.552937, 35.071930, 25.127037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831753, 35.245621, 24.956068>,  <41.379395, 35.651310, 24.774612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831753, 35.245621, 24.956068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105667, 35.183071, 25.240776>,  <41.270016, 35.145542, 25.411600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105667, 35.183071, 25.240776>,  <40.831753, 35.245621, 24.956068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105667, 35.183071, 25.240776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652403, 0.303654, 0.694381,
		-0.324712, -0.939863, 0.105922,
		0.684786, -0.156370, 0.711770,
		41.311104, 35.136162, 25.454308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408978, 35.039398, 25.472837>,  <40.831753, 35.245621, 24.956068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408978, 35.039398, 25.472837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756172, 35.135139, 25.646875>,  <40.964489, 35.192585, 25.751299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756172, 35.135139, 25.646875>,  <40.408978, 35.039398, 25.472837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756172, 35.135139, 25.646875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496148, 0.454835, 0.739568,
		-0.020879, -0.857808, 0.513546,
		0.867987, 0.239354, 0.435097,
		41.016567, 35.206947, 25.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485851, 34.733997, 26.090223>,  <40.408978, 35.039398, 25.472837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485851, 34.733997, 26.090223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728992, 35.051552, 26.096729>,  <40.874878, 35.242085, 26.100634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728992, 35.051552, 26.096729>,  <40.485851, 34.733997, 26.090223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728992, 35.051552, 26.096729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548211, 0.404751, 0.731876,
		0.574442, -0.453788, 0.681244,
		0.607850, 0.793885, 0.016266,
		40.911346, 35.289719, 26.101608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520279, 34.842113, 26.772377>,  <40.485851, 34.733997, 26.090223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520279, 34.842113, 26.772377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646336, 35.184650, 26.608732>,  <40.721970, 35.390171, 26.510546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646336, 35.184650, 26.608732>,  <40.520279, 34.842113, 26.772377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646336, 35.184650, 26.608732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508518, 0.516334, 0.689064,
		0.801310, -0.009111, 0.598180,
		0.315138, 0.856339, -0.409110,
		40.740875, 35.441551, 26.486000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938122, 35.169361, 27.276621>,  <40.520279, 34.842113, 26.772377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938122, 35.169361, 27.276621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803947, 35.437447, 27.011805>,  <40.723442, 35.598297, 26.852915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803947, 35.437447, 27.011805>,  <40.938122, 35.169361, 27.276621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803947, 35.437447, 27.011805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254434, 0.612186, 0.748660,
		0.907052, 0.419576, -0.034827,
		-0.335440, 0.670212, -0.662039,
		40.703316, 35.638512, 26.813192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074131, 35.756973, 27.622326>,  <40.938122, 35.169361, 27.276621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074131, 35.756973, 27.622326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845547, 35.906269, 27.329988>,  <40.708397, 35.995846, 27.154587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845547, 35.906269, 27.329988>,  <41.074131, 35.756973, 27.622326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845547, 35.906269, 27.329988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302220, 0.732272, 0.610279,
		0.762955, 0.569623, -0.305661,
		-0.571456, 0.373239, -0.730842,
		40.674110, 36.018242, 27.110735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244255, 36.459213, 27.444241>,  <41.074131, 35.756973, 27.622326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244255, 36.459213, 27.444241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857582, 36.464123, 27.341961>,  <40.625580, 36.467068, 27.280594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857582, 36.464123, 27.341961>,  <41.244255, 36.459213, 27.444241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857582, 36.464123, 27.341961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163982, 0.737323, 0.655336,
		0.196574, 0.675429, -0.710742,
		-0.966679, 0.012273, -0.255697,
		40.567577, 36.467804, 27.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052155, 37.093365, 27.575235>,  <41.244255, 36.459213, 27.444241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052155, 37.093365, 27.575235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689987, 36.929054, 27.532387>,  <40.472687, 36.830467, 27.506678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689987, 36.929054, 27.532387>,  <41.052155, 37.093365, 27.575235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689987, 36.929054, 27.532387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360754, 0.611520, 0.704202,
		-0.223766, 0.676243, -0.701872,
		-0.905420, -0.410779, -0.107120,
		40.418362, 36.805820, 27.500250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529659, 37.653915, 27.402275>,  <41.052155, 37.093365, 27.575235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529659, 37.653915, 27.402275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331360, 37.344799, 27.560780>,  <40.212379, 37.159328, 27.655882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331360, 37.344799, 27.560780>,  <40.529659, 37.653915, 27.402275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331360, 37.344799, 27.560780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436519, 0.616179, 0.655572,
		-0.750790, 0.152022, -0.642809,
		-0.495747, -0.772795, 0.396261,
		40.182636, 37.112961, 27.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930206, 37.905548, 27.558573>,  <40.529659, 37.653915, 27.402275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930206, 37.905548, 27.558573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946121, 37.568939, 27.774076>,  <39.955669, 37.366974, 27.903379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946121, 37.568939, 27.774076>,  <39.930206, 37.905548, 27.558573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946121, 37.568939, 27.774076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443974, 0.468152, 0.764016,
		-0.895156, -0.269592, -0.354988,
		0.039785, -0.841519, 0.538761,
		39.958057, 37.316483, 27.935705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238045, 37.729122, 27.831398>,  <39.930206, 37.905548, 27.558573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238045, 37.729122, 27.831398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490028, 37.521538, 28.062510>,  <39.641220, 37.396988, 28.201176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490028, 37.521538, 28.062510>,  <39.238045, 37.729122, 27.831398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490028, 37.521538, 28.062510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363806, 0.460087, 0.809917,
		-0.686147, -0.720413, 0.101033,
		0.629958, -0.518966, 0.577778,
		39.679016, 37.365849, 28.235844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846172, 37.691532, 28.515818>,  <39.238045, 37.729122, 27.831398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846172, 37.691532, 28.515818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209484, 37.551426, 28.607327>,  <39.427471, 37.467361, 28.662231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209484, 37.551426, 28.607327>,  <38.846172, 37.691532, 28.515818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209484, 37.551426, 28.607327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200871, 0.114551, 0.972897,
		-0.366982, -0.929618, 0.033686,
		0.908281, -0.350269, 0.228771,
		39.481968, 37.446346, 28.675959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692009, 37.278954, 29.167452>,  <38.846172, 37.691532, 28.515818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692009, 37.278954, 29.167452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073891, 37.397697, 29.159269>,  <39.303020, 37.468945, 29.154360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073891, 37.397697, 29.159269>,  <38.692009, 37.278954, 29.167452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073891, 37.397697, 29.159269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080578, 0.324084, 0.942590,
		0.286449, -0.898244, 0.333324,
		0.954701, 0.296863, -0.020455,
		39.360302, 37.486755, 29.153133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021629, 36.939201, 29.778782>,  <38.692009, 37.278954, 29.167452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021629, 36.939201, 29.778782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227875, 37.261959, 29.663500>,  <39.351624, 37.455612, 29.594330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227875, 37.261959, 29.663500>,  <39.021629, 36.939201, 29.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227875, 37.261959, 29.663500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039304, 0.313738, 0.948696,
		0.855919, -0.500488, 0.130054,
		0.515614, 0.806895, -0.288205,
		39.382561, 37.504028, 29.577038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372181, 36.977627, 30.291050>,  <39.021629, 36.939201, 29.778782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372181, 36.977627, 30.291050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385403, 37.323387, 30.090363>,  <39.393333, 37.530842, 29.969950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385403, 37.323387, 30.090363>,  <39.372181, 36.977627, 30.291050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385403, 37.323387, 30.090363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073886, 0.502732, 0.861278,
		0.996719, 0.008604, 0.080483,
		0.033051, 0.864399, -0.501719,
		39.395317, 37.582706, 29.939846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743034, 37.367542, 30.686918>,  <39.372181, 36.977627, 30.291050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743034, 37.367542, 30.686918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532589, 37.633049, 30.474272>,  <39.406322, 37.792355, 30.346684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532589, 37.633049, 30.474272>,  <39.743034, 37.367542, 30.686918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532589, 37.633049, 30.474272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176066, 0.526561, 0.831706,
		0.831989, 0.531170, -0.160162,
		-0.526112, 0.663771, -0.531614,
		39.374756, 37.832180, 30.314787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059635, 38.010426, 30.774744>,  <39.743034, 37.367542, 30.686918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059635, 38.010426, 30.774744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671928, 38.072407, 30.698307>,  <39.439304, 38.109596, 30.652445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671928, 38.072407, 30.698307>,  <40.059635, 38.010426, 30.774744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671928, 38.072407, 30.698307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093498, 0.486450, 0.868691,
		0.227565, 0.859858, -0.457010,
		-0.969264, 0.154955, -0.191094,
		39.381149, 38.118893, 30.640978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835976, 38.762371, 30.940218>,  <40.059635, 38.010426, 30.774744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835976, 38.762371, 30.940218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505520, 38.537106, 30.947506>,  <39.307247, 38.401947, 30.951880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505520, 38.537106, 30.947506>,  <39.835976, 38.762371, 30.940218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505520, 38.537106, 30.947506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249230, 0.394231, 0.884571,
		-0.505344, 0.726241, -0.466049,
		-0.826143, -0.563166, 0.018221,
		39.257675, 38.368156, 30.952972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386288, 39.187527, 31.155607>,  <39.835976, 38.762371, 30.940218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386288, 39.187527, 31.155607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197109, 38.841686, 31.223484>,  <39.083603, 38.634182, 31.264210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197109, 38.841686, 31.223484>,  <39.386288, 39.187527, 31.155607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197109, 38.841686, 31.223484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285754, 0.332695, 0.898698,
		-0.833467, 0.376545, -0.404409,
		-0.472946, -0.864597, 0.169691,
		39.055225, 38.582306, 31.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795185, 39.409763, 31.397234>,  <39.386288, 39.187527, 31.155607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795185, 39.409763, 31.397234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817181, 39.026020, 31.507948>,  <38.830379, 38.795773, 31.574375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817181, 39.026020, 31.507948>,  <38.795185, 39.409763, 31.397234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817181, 39.026020, 31.507948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188158, 0.262279, 0.946470,
		-0.980598, -0.104128, -0.166088,
		0.054992, -0.959358, 0.276783,
		38.833679, 38.738213, 31.590982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185150, 39.330692, 31.787277>,  <38.795185, 39.409763, 31.397234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185150, 39.330692, 31.787277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465324, 39.062500, 31.885130>,  <38.633430, 38.901585, 31.943842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465324, 39.062500, 31.885130>,  <38.185150, 39.330692, 31.787277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465324, 39.062500, 31.885130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128014, 0.219181, 0.967250,
		-0.702140, -0.708814, 0.067691,
		0.700436, -0.670480, 0.244634,
		38.675457, 38.861355, 31.958521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928837, 39.045147, 32.415062>,  <38.185150, 39.330692, 31.787277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928837, 39.045147, 32.415062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314182, 38.938141, 32.407318>,  <38.545387, 38.873940, 32.402672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314182, 38.938141, 32.407318>,  <37.928837, 39.045147, 32.415062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314182, 38.938141, 32.407318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031326, 0.040537, 0.998687,
		-0.266375, -0.962701, 0.047432,
		0.963360, -0.267512, -0.019360,
		38.603191, 38.857887, 32.401508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907417, 38.463554, 32.849728>,  <37.928837, 39.045147, 32.415062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907417, 38.463554, 32.849728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296566, 38.553635, 32.870949>,  <38.530056, 38.607681, 32.883682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296566, 38.553635, 32.870949>,  <37.907417, 38.463554, 32.849728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296566, 38.553635, 32.870949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045821, -0.037228, 0.998256,
		0.226781, -0.973601, -0.025899,
		0.972868, 0.225199, 0.053054,
		38.588425, 38.621193, 32.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265991, 38.040997, 33.439274>,  <37.907417, 38.463554, 32.849728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265991, 38.040997, 33.439274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505005, 38.348343, 33.347557>,  <38.648411, 38.532749, 33.292526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505005, 38.348343, 33.347557>,  <38.265991, 38.040997, 33.439274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505005, 38.348343, 33.347557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112377, 0.202887, 0.972733,
		0.793933, -0.607004, 0.034885,
		0.597530, 0.768364, -0.229292,
		38.684265, 38.578854, 33.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963291, 37.909615, 33.744591>,  <38.265991, 38.040997, 33.439274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963291, 37.909615, 33.744591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936771, 38.304916, 33.689529>,  <38.920860, 38.542099, 33.656494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936771, 38.304916, 33.689529>,  <38.963291, 37.909615, 33.744591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936771, 38.304916, 33.689529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298209, 0.151278, 0.942436,
		0.952195, 0.021438, -0.304738,
		-0.066304, 0.988259, -0.137653,
		38.916882, 38.601395, 33.648232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507572, 38.159294, 34.142944>,  <38.963291, 37.909615, 33.744591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507572, 38.159294, 34.142944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235916, 38.446049, 34.079903>,  <39.072922, 38.618103, 34.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235916, 38.446049, 34.079903>,  <39.507572, 38.159294, 34.142944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235916, 38.446049, 34.079903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063801, 0.156252, 0.985654,
		0.731231, 0.679452, -0.060379,
		-0.679140, 0.716889, -0.157606,
		39.032173, 38.661114, 34.032619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710876, 38.551392, 34.515778>,  <39.507572, 38.159294, 34.142944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710876, 38.551392, 34.515778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351818, 38.718433, 34.459446>,  <39.136383, 38.818657, 34.425648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351818, 38.718433, 34.459446>,  <39.710876, 38.551392, 34.515778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351818, 38.718433, 34.459446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045796, 0.406202, 0.912635,
		0.438324, 0.812777, -0.383752,
		-0.897650, 0.417604, -0.140827,
		39.082523, 38.843716, 34.417198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799606, 39.285683, 34.648422>,  <39.710876, 38.551392, 34.515778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799606, 39.285683, 34.648422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425739, 39.159904, 34.714779>,  <39.201420, 39.084438, 34.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425739, 39.159904, 34.714779>,  <39.799606, 39.285683, 34.648422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425739, 39.159904, 34.714779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016021, 0.428881, 0.903219,
		-0.355158, 0.846869, -0.395824,
		-0.934669, -0.314444, 0.165888,
		39.145340, 39.065571, 34.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574993, 39.869579, 35.019890>,  <39.799606, 39.285683, 34.648422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574993, 39.869579, 35.019890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282917, 39.606419, 35.093639>,  <39.107674, 39.448524, 35.137890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282917, 39.606419, 35.093639>,  <39.574993, 39.869579, 35.019890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282917, 39.606419, 35.093639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051833, 0.322417, 0.945177,
		-0.681278, 0.680600, -0.269526,
		-0.730187, -0.657899, 0.184378,
		39.063862, 39.409050, 35.148952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126179, 40.187576, 35.561321>,  <39.574993, 39.869579, 35.019890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126179, 40.187576, 35.561321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 39.806015, 35.594917>,  <38.941792, 39.577076, 35.615074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 39.806015, 35.594917>,  <39.126179, 40.187576, 35.561321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010937, 39.806015, 35.594917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142129, 0.129338, 0.981362,
		-0.946991, 0.270801, -0.172841,
		-0.288109, -0.953907, 0.083993,
		38.924503, 39.519844, 35.620117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464012, 40.215420, 35.915813>,  <39.126179, 40.187576, 35.561321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464012, 40.215420, 35.915813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636787, 39.855602, 35.941887>,  <38.740452, 39.639709, 35.957531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636787, 39.855602, 35.941887>,  <38.464012, 40.215420, 35.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636787, 39.855602, 35.941887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109810, 0.019289, 0.993766,
		-0.895195, -0.436400, -0.090447,
		0.431934, -0.899546, 0.065188,
		38.766369, 39.585739, 35.961445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120766, 39.919086, 36.547539>,  <38.464012, 40.215420, 35.915813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120766, 39.919086, 36.547539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438736, 39.682919, 36.491676>,  <38.629517, 39.541218, 36.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438736, 39.682919, 36.491676>,  <38.120766, 39.919086, 36.547539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438736, 39.682919, 36.491676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053114, -0.161580, 0.985429,
		-0.604382, -0.790757, -0.097084,
		0.794922, -0.590419, -0.139657,
		38.677212, 39.505795, 36.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026379, 39.359608, 36.943081>,  <38.120766, 39.919086, 36.547539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026379, 39.359608, 36.943081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419403, 39.330158, 36.874779>,  <38.655216, 39.312489, 36.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419403, 39.330158, 36.874779>,  <38.026379, 39.359608, 36.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419403, 39.330158, 36.874779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155676, -0.176515, 0.971909,
		-0.101698, -0.981541, -0.161974,
		0.982560, -0.073625, -0.170753,
		38.714172, 39.308071, 36.823551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219818, 38.831001, 37.287407>,  <38.026379, 39.359608, 36.943081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219818, 38.831001, 37.287407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562679, 39.033623, 37.250107>,  <38.768394, 39.155193, 37.227726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562679, 39.033623, 37.250107>,  <38.219818, 38.831001, 37.287407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562679, 39.033623, 37.250107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122328, -0.024343, 0.992191,
		0.500327, -0.861866, -0.082831,
		0.857152, 0.506552, -0.093251,
		38.819824, 39.185589, 37.222130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568642, 38.555611, 37.787457>,  <38.219818, 38.831001, 37.287407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568642, 38.555611, 37.787457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728455, 38.913067, 37.705700>,  <38.824341, 39.127541, 37.656647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728455, 38.913067, 37.705700>,  <38.568642, 38.555611, 37.787457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728455, 38.913067, 37.705700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124313, 0.168083, 0.977903,
		0.908253, -0.416108, -0.043938,
		0.399528, 0.893645, -0.204390,
		38.848312, 39.181160, 37.644382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074360, 38.485085, 38.158245>,  <38.568642, 38.555611, 37.787457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074360, 38.485085, 38.158245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077747, 38.880596, 38.098583>,  <39.079781, 39.117905, 38.062786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077747, 38.880596, 38.098583>,  <39.074360, 38.485085, 38.158245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077747, 38.880596, 38.098583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267844, 0.141468, 0.953020,
		0.963425, -0.048020, -0.263641,
		0.008468, 0.988778, -0.149155,
		39.080288, 39.177231, 38.053837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707726, 38.763458, 38.469963>,  <39.074360, 38.485085, 38.158245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707726, 38.763458, 38.469963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441299, 39.056988, 38.416512>,  <39.281445, 39.233105, 38.384441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441299, 39.056988, 38.416512>,  <39.707726, 38.763458, 38.469963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441299, 39.056988, 38.416512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086085, 0.253589, 0.963474,
		0.740906, 0.630237, -0.232078,
		-0.666069, 0.733822, -0.133632,
		39.241478, 39.277134, 38.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915367, 39.400177, 38.631516>,  <39.707726, 38.763458, 38.469963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915367, 39.400177, 38.631516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522358, 39.424858, 38.701775>,  <39.286552, 39.439667, 38.743931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522358, 39.424858, 38.701775>,  <39.915367, 39.400177, 38.631516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522358, 39.424858, 38.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185400, 0.238821, 0.953201,
		0.016867, 0.969101, -0.246085,
		-0.982518, 0.061701, 0.175643,
		39.227604, 39.443367, 38.754467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713940, 40.125355, 38.756298>,  <39.915367, 39.400177, 38.631516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713940, 40.125355, 38.756298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472534, 39.878361, 38.958084>,  <39.327690, 39.730164, 39.079155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472534, 39.878361, 38.958084>,  <39.713940, 40.125355, 38.756298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472534, 39.878361, 38.958084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271202, 0.435990, 0.858115,
		-0.749815, 0.654695, -0.095662,
		-0.603512, -0.617484, 0.504467,
		39.291481, 39.693115, 39.109425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573891, 40.523418, 39.273838>,  <39.713940, 40.125355, 38.756298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573891, 40.523418, 39.273838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462852, 40.161255, 39.402317>,  <39.396229, 39.943954, 39.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462852, 40.161255, 39.402317>,  <39.573891, 40.523418, 39.273838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462852, 40.161255, 39.402317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383601, 0.202062, 0.901122,
		-0.880789, 0.373360, 0.291226,
		-0.277597, -0.905413, 0.321195,
		39.379574, 39.889629, 39.498676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174244, 40.594757, 39.808964>,  <39.573891, 40.523418, 39.273838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174244, 40.594757, 39.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330509, 40.230606, 39.863518>,  <39.424267, 40.012115, 39.896248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330509, 40.230606, 39.863518>,  <39.174244, 40.594757, 39.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330509, 40.230606, 39.863518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257537, 0.250327, 0.933280,
		-0.883775, -0.329474, 0.332248,
		0.390662, -0.910375, 0.136381,
		39.447708, 39.957493, 39.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864059, 40.141262, 40.396095>,  <39.174244, 40.594757, 39.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864059, 40.141262, 40.396095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233059, 39.990852, 40.361237>,  <39.454460, 39.900608, 40.340321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233059, 39.990852, 40.361237>,  <38.864059, 40.141262, 40.396095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233059, 39.990852, 40.361237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151851, 0.145966, 0.977566,
		-0.354866, -0.915042, 0.191754,
		0.922503, -0.376023, -0.087151,
		39.509811, 39.878044, 40.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070576, 40.227146, 41.004585>,  <38.864059, 40.141262, 40.396095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070576, 40.227146, 41.004585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401760, 40.024643, 40.908104>,  <39.600471, 39.903141, 40.850216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401760, 40.024643, 40.908104>,  <39.070576, 40.227146, 41.004585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401760, 40.024643, 40.908104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318901, 0.071267, 0.945105,
		-0.461277, -0.859432, 0.220453,
		0.827964, -0.506258, -0.241200,
		39.650150, 39.872765, 40.835743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256145, 39.651085, 41.500359>,  <39.070576, 40.227146, 41.004585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256145, 39.651085, 41.500359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588440, 39.804325, 41.338810>,  <39.787819, 39.896267, 41.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588440, 39.804325, 41.338810>,  <39.256145, 39.651085, 41.500359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588440, 39.804325, 41.338810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329373, 0.246604, 0.911427,
		0.448760, -0.890182, 0.078682,
		0.830739, 0.383096, -0.403868,
		39.837662, 39.919254, 41.217651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764317, 39.450874, 41.925930>,  <39.256145, 39.651085, 41.500359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764317, 39.450874, 41.925930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941803, 39.743118, 41.718342>,  <40.048294, 39.918465, 41.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941803, 39.743118, 41.718342>,  <39.764317, 39.450874, 41.925930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941803, 39.743118, 41.718342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363993, 0.382255, 0.849347,
		0.818917, -0.565770, -0.096323,
		0.443715, 0.730606, -0.518972,
		40.074917, 39.962299, 41.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426914, 39.500782, 42.272476>,  <39.764317, 39.450874, 41.925930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426914, 39.500782, 42.272476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333355, 39.835815, 42.074993>,  <40.277218, 40.036835, 41.956505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333355, 39.835815, 42.074993>,  <40.426914, 39.500782, 42.272476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333355, 39.835815, 42.074993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170623, 0.535272, 0.827267,
		0.957173, 0.109259, -0.268110,
		-0.233898, 0.837583, -0.493706,
		40.263187, 40.087090, 41.926880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047314, 39.782261, 42.308334>,  <40.426914, 39.500782, 42.272476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047314, 39.782261, 42.308334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825275, 40.104652, 42.226105>,  <40.692051, 40.298088, 42.176765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825275, 40.104652, 42.226105>,  <41.047314, 39.782261, 42.308334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825275, 40.104652, 42.226105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472999, 0.509167, 0.719042,
		0.684205, 0.301903, -0.663866,
		-0.555099, 0.805980, -0.205575,
		40.658745, 40.346447, 42.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485218, 40.389053, 42.290424>,  <41.047314, 39.782261, 42.308334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485218, 40.389053, 42.290424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124126, 40.539494, 42.373978>,  <40.907471, 40.629757, 42.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124126, 40.539494, 42.373978>,  <41.485218, 40.389053, 42.290424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124126, 40.539494, 42.373978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424498, 0.699834, 0.574486,
		0.069880, 0.607274, -0.791413,
		-0.902728, 0.376099, 0.208882,
		40.853310, 40.652325, 42.436642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574623, 41.123013, 42.273907>,  <41.485218, 40.389053, 42.290424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574623, 41.123013, 42.273907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233265, 41.039467, 42.464943>,  <41.028450, 40.989338, 42.579567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233265, 41.039467, 42.464943>,  <41.574623, 41.123013, 42.273907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233265, 41.039467, 42.464943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188565, 0.730472, 0.656395,
		-0.485969, 0.650220, -0.583994,
		-0.853392, -0.208867, 0.477595,
		40.977249, 40.976807, 42.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261787, 41.781261, 42.354382>,  <41.574623, 41.123013, 42.273907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261787, 41.781261, 42.354382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148403, 41.506599, 42.622162>,  <41.080372, 41.341805, 42.782829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148403, 41.506599, 42.622162>,  <41.261787, 41.781261, 42.354382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148403, 41.506599, 42.622162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081713, 0.678247, 0.730277,
		-0.955496, 0.261708, -0.136149,
		-0.283462, -0.686652, 0.669447,
		41.063366, 41.300606, 42.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662228, 42.043232, 42.781666>,  <41.261787, 41.781261, 42.354382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662228, 42.043232, 42.781666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924873, 41.794296, 42.952099>,  <41.082462, 41.644936, 43.054359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924873, 41.794296, 42.952099>,  <40.662228, 42.043232, 42.781666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924873, 41.794296, 42.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147670, 0.660070, 0.736547,
		-0.739628, -0.420709, 0.525313,
		0.656615, -0.622344, 0.426080,
		41.121857, 41.607594, 43.079922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576309, 41.935345, 43.540108>,  <40.662228, 42.043232, 42.781666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576309, 41.935345, 43.540108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961159, 41.867626, 43.454636>,  <41.192066, 41.826996, 43.403351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961159, 41.867626, 43.454636>,  <40.576309, 41.935345, 43.540108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961159, 41.867626, 43.454636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272439, 0.625513, 0.731102,
		0.009889, -0.761625, 0.647942,
		0.962122, -0.169295, -0.213682,
		41.249794, 41.816837, 43.390530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027843, 41.667015, 44.136875>,  <40.576309, 41.935345, 43.540108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027843, 41.667015, 44.136875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289368, 41.832813, 43.883663>,  <41.446281, 41.932293, 43.731735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289368, 41.832813, 43.883663>,  <41.027843, 41.667015, 44.136875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289368, 41.832813, 43.883663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391605, 0.530491, 0.751814,
		0.647443, -0.739440, 0.184519,
		0.653807, 0.414497, -0.633031,
		41.485512, 41.957161, 43.693752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429775, 41.185432, 44.063053>,  <41.027843, 41.667015, 44.136875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429775, 41.185432, 44.063053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581852, 41.319313, 44.407944>,  <40.673096, 41.399643, 44.614876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581852, 41.319313, 44.407944>,  <40.429775, 41.185432, 44.063053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581852, 41.319313, 44.407944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804003, -0.580418, -0.129206,
		0.457205, 0.742353, -0.489771,
		0.380188, 0.334704, 0.862224,
		40.695908, 41.419724, 44.666611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537697, 40.600063, 43.747391>,  <40.429775, 41.185432, 44.063053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537697, 40.600063, 43.747391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695816, 40.836578, 43.466217>,  <40.790688, 40.978485, 43.297512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695816, 40.836578, 43.466217>,  <40.537697, 40.600063, 43.747391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695816, 40.836578, 43.466217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130126, -0.721502, -0.680075,
		-0.909289, 0.360303, -0.208266,
		0.395298, 0.591284, -0.702939,
		40.814404, 41.013962, 43.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224354, 40.401886, 43.237492>,  <40.537697, 40.600063, 43.747391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224354, 40.401886, 43.237492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559490, 40.540070, 43.068405>,  <40.760571, 40.622978, 42.966953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559490, 40.540070, 43.068405>,  <40.224354, 40.401886, 43.237492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559490, 40.540070, 43.068405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000758, -0.773577, -0.633702,
		-0.545918, 0.531260, -0.647871,
		0.837839, 0.345458, -0.422712,
		40.810841, 40.643707, 42.941593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819859, 40.963409, 43.189930>,  <40.224354, 40.401886, 43.237492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819859, 40.963409, 43.189930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177635, 40.969128, 43.011150>,  <40.392303, 40.972557, 42.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177635, 40.969128, 43.011150>,  <39.819859, 40.963409, 43.189930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177635, 40.969128, 43.011150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392214, -0.455008, -0.799460,
		-0.214794, 0.890373, -0.401373,
		0.894445, 0.014295, -0.446950,
		40.445969, 40.973415, 42.877064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653393, 41.118767, 42.526093>,  <39.819859, 40.963409, 43.189930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653393, 41.118767, 42.526093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027248, 40.977890, 42.506439>,  <40.251560, 40.893364, 42.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027248, 40.977890, 42.506439>,  <39.653393, 41.118767, 42.526093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027248, 40.977890, 42.506439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194053, -0.389342, -0.900420,
		0.297992, 0.851100, -0.432237,
		0.934636, -0.352195, -0.049138,
		40.307640, 40.872231, 42.491699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960030, 41.403667, 41.821270>,  <39.653393, 41.118767, 42.526093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960030, 41.403667, 41.821270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153366, 41.075500, 41.943447>,  <40.269367, 40.878601, 42.016754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153366, 41.075500, 41.943447>,  <39.960030, 41.403667, 41.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153366, 41.075500, 41.943447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158698, -0.425243, -0.891058,
		0.860925, 0.382215, -0.335737,
		0.483346, -0.820414, 0.305445,
		40.298370, 40.829376, 42.035080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274345, 41.127373, 41.269543>,  <39.960030, 41.403667, 41.821270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274345, 41.127373, 41.269543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255062, 40.797573, 41.495064>,  <40.243492, 40.599693, 41.630379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255062, 40.797573, 41.495064>,  <40.274345, 41.127373, 41.269543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255062, 40.797573, 41.495064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120773, -0.555508, -0.822694,
		0.991509, -0.107756, -0.072795,
		-0.048212, -0.824500, 0.563805,
		40.240597, 40.550224, 41.664204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782158, 40.854183, 40.945862>,  <40.274345, 41.127373, 41.269543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782158, 40.854183, 40.945862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588326, 40.557461, 41.131294>,  <40.472027, 40.379425, 41.242554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588326, 40.557461, 41.131294>,  <40.782158, 40.854183, 40.945862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588326, 40.557461, 41.131294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140649, -0.456986, -0.878283,
		0.863367, -0.490798, 0.117110,
		-0.484577, -0.741809, 0.463577,
		40.442951, 40.334919, 41.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882607, 40.276993, 40.585503>,  <40.782158, 40.854183, 40.945862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882607, 40.276993, 40.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551304, 40.177731, 40.786465>,  <40.352524, 40.118176, 40.907043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551304, 40.177731, 40.786465>,  <40.882607, 40.276993, 40.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551304, 40.177731, 40.786465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347763, -0.475395, -0.808122,
		0.439380, -0.844050, 0.307450,
		-0.828255, -0.248153, 0.502408,
		40.302826, 40.103283, 40.937187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724342, 39.667450, 40.263477>,  <40.882607, 40.276993, 40.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724342, 39.667450, 40.263477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404907, 39.780788, 40.475883>,  <40.213245, 39.848793, 40.603329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404907, 39.780788, 40.475883>,  <40.724342, 39.667450, 40.263477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404907, 39.780788, 40.475883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599366, -0.293771, -0.744620,
		-0.054991, -0.912914, 0.404431,
		-0.798584, 0.283349, 0.531015,
		40.165333, 39.865791, 40.635189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288746, 38.968971, 40.423389>,  <40.724342, 39.667450, 40.263477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288746, 38.968971, 40.423389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085121, 39.307327, 40.359737>,  <39.962948, 39.510342, 40.321545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085121, 39.307327, 40.359737>,  <40.288746, 38.968971, 40.423389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085121, 39.307327, 40.359737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478510, -0.431801, -0.764576,
		-0.715463, -0.313069, 0.624581,
		-0.509060, 0.845894, -0.159131,
		39.932404, 39.561096, 40.311996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586739, 38.852848, 40.431042>,  <40.288746, 38.968971, 40.423389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586739, 38.852848, 40.431042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606213, 39.180412, 40.202301>,  <39.617897, 39.376949, 40.065056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606213, 39.180412, 40.202301>,  <39.586739, 38.852848, 40.431042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606213, 39.180412, 40.202301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638831, -0.414584, -0.648085,
		-0.767805, 0.396871, 0.502961,
		0.048687, 0.818910, -0.571853,
		39.620819, 39.426086, 40.030746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186749, 38.677444, 39.928635>,  <39.586739, 38.852848, 40.431042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186749, 38.677444, 39.928635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232784, 39.050457, 39.791729>,  <39.260406, 39.274265, 39.709583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232784, 39.050457, 39.791729>,  <39.186749, 38.677444, 39.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232784, 39.050457, 39.791729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563207, -0.222568, -0.795777,
		-0.818262, 0.284350, 0.499592,
		0.115086, 0.932528, -0.342266,
		39.267311, 39.330215, 39.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547554, 38.951836, 39.807220>,  <39.186749, 38.677444, 39.928635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547554, 38.951836, 39.807220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798111, 39.153435, 39.569355>,  <38.948444, 39.274395, 39.426636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798111, 39.153435, 39.569355>,  <38.547554, 38.951836, 39.807220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798111, 39.153435, 39.569355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669216, -0.043503, -0.741793,
		-0.399734, 0.862606, 0.310037,
		0.626388, 0.504002, -0.594660,
		38.986027, 39.304634, 39.390957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126839, 39.521816, 39.425995>,  <38.547554, 38.951836, 39.807220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126839, 39.521816, 39.425995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470970, 39.467327, 39.229515>,  <38.677448, 39.434635, 39.111626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470970, 39.467327, 39.229515>,  <38.126839, 39.521816, 39.425995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470970, 39.467327, 39.229515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481570, 0.098708, -0.870831,
		0.167112, 0.985749, 0.019320,
		0.860328, -0.136222, -0.491202,
		38.729069, 39.426460, 39.082153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957985, 39.740654, 38.728302>,  <38.126839, 39.521816, 39.425995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957985, 39.740654, 38.728302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350090, 39.661575, 38.729431>,  <38.585354, 39.614128, 38.730110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350090, 39.661575, 38.729431>,  <37.957985, 39.740654, 38.728302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350090, 39.661575, 38.729431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031572, 0.142404, -0.989305,
		0.195180, 0.969865, 0.145834,
		0.980259, -0.197697, 0.002826,
		38.644169, 39.602264, 38.730278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353436, 40.260124, 38.319782>,  <37.957985, 39.740654, 38.728302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353436, 40.260124, 38.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590733, 39.938274, 38.329948>,  <38.733109, 39.745163, 38.336048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590733, 39.938274, 38.329948>,  <38.353436, 40.260124, 38.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590733, 39.938274, 38.329948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071671, 0.021349, -0.997200,
		0.801829, 0.593400, 0.070334,
		0.593240, -0.804625, 0.025411,
		38.768703, 39.696888, 38.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880188, 40.548710, 37.952366>,  <38.353436, 40.260124, 38.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880188, 40.548710, 37.952366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891010, 40.149521, 37.975399>,  <38.897503, 39.910007, 37.989220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891010, 40.149521, 37.975399>,  <38.880188, 40.548710, 37.952366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891010, 40.149521, 37.975399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001939, -0.057549, -0.998341,
		0.999632, 0.027119, 0.000378,
		0.027052, -0.997974, 0.057581,
		38.899124, 39.850128, 37.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161510, 40.381824, 37.325520>,  <38.880188, 40.548710, 37.952366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161510, 40.381824, 37.325520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106731, 39.999954, 37.431225>,  <39.073864, 39.770832, 37.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106731, 39.999954, 37.431225>,  <39.161510, 40.381824, 37.325520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106731, 39.999954, 37.431225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157659, -0.242372, -0.957288,
		0.977951, -0.172762, -0.117321,
		-0.136948, -0.954677, 0.264266,
		39.065647, 39.713551, 37.510506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709206, 40.008331, 37.009232>,  <39.161510, 40.381824, 37.325520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709206, 40.008331, 37.009232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430847, 39.731915, 37.087395>,  <39.263832, 39.566063, 37.134293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430847, 39.731915, 37.087395>,  <39.709206, 40.008331, 37.009232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430847, 39.731915, 37.087395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003105, -0.274992, -0.961441,
		0.718136, -0.668457, 0.193511,
		-0.695896, -0.691046, 0.195406,
		39.222076, 39.524601, 37.146015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930077, 39.589096, 36.568794>,  <39.709206, 40.008331, 37.009232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930077, 39.589096, 36.568794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544815, 39.517067, 36.648705>,  <39.313660, 39.473850, 36.696651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544815, 39.517067, 36.648705>,  <39.930077, 39.589096, 36.568794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544815, 39.517067, 36.648705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140687, -0.295727, -0.944856,
		0.229222, -0.938146, 0.259497,
		-0.963153, -0.180074, 0.199772,
		39.255871, 39.463043, 36.708637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794712, 38.837463, 36.322685>,  <39.930077, 39.589096, 36.568794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794712, 38.837463, 36.322685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460903, 39.056587, 36.346264>,  <39.260616, 39.188061, 36.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460903, 39.056587, 36.346264>,  <39.794712, 38.837463, 36.322685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460903, 39.056587, 36.346264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245258, -0.273541, -0.930067,
		-0.493375, -0.790620, 0.362631,
		-0.834523, 0.547810, 0.058948,
		39.210545, 39.220928, 36.363949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313614, 38.405708, 36.048996>,  <39.794712, 38.837463, 36.322685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313614, 38.405708, 36.048996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150696, 38.769764, 36.018654>,  <39.052944, 38.988197, 36.000450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150696, 38.769764, 36.018654>,  <39.313614, 38.405708, 36.048996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150696, 38.769764, 36.018654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347414, -0.231210, -0.908760,
		-0.844640, -0.343777, 0.410366,
		-0.407291, 0.910142, -0.075856,
		39.028507, 39.042809, 35.995895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652393, 37.930458, 36.446503>,  <39.313614, 38.405708, 36.048996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652393, 37.930458, 36.446503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909271, 37.956715, 36.751995>,  <40.063396, 37.972469, 36.935291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909271, 37.956715, 36.751995>,  <39.652393, 37.930458, 36.446503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909271, 37.956715, 36.751995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671699, 0.528237, 0.519408,
		-0.369336, -0.846556, 0.383320,
		0.642192, 0.065640, 0.763728,
		40.101929, 37.976406, 36.981113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753704, 37.606750, 35.716923>,  <39.652393, 37.930458, 36.446503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753704, 37.606750, 35.716923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054398, 37.858276, 35.796413>,  <40.234814, 38.009190, 35.844109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054398, 37.858276, 35.796413>,  <39.753704, 37.606750, 35.716923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054398, 37.858276, 35.796413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419537, -0.688504, 0.591567,
		0.508808, -0.361327, -0.781381,
		0.751734, 0.628812, 0.198726,
		40.279919, 38.046921, 35.856030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423309, 37.495018, 35.353611>,  <39.753704, 37.606750, 35.716923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423309, 37.495018, 35.353611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496063, 37.673538, 35.704094>,  <40.539715, 37.780651, 35.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496063, 37.673538, 35.704094>,  <40.423309, 37.495018, 35.353611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496063, 37.673538, 35.704094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801464, -0.583548, 0.130871,
		0.569715, 0.678443, -0.463832,
		0.181880, 0.446304, 0.876203,
		40.550629, 37.807430, 35.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200195, 37.652103, 35.424564>,  <40.423309, 37.495018, 35.353611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200195, 37.652103, 35.424564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052505, 37.627617, 35.795494>,  <40.963894, 37.612923, 36.018051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052505, 37.627617, 35.795494>,  <41.200195, 37.652103, 35.424564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052505, 37.627617, 35.795494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686633, -0.690390, 0.227810,
		0.626268, 0.720843, 0.296940,
		-0.369220, -0.061218, 0.927324,
		40.941738, 37.609253, 36.073692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736809, 37.798592, 35.885715>,  <41.200195, 37.652103, 35.424564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736809, 37.798592, 35.885715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474876, 37.544540, 36.049576>,  <41.317719, 37.392109, 36.147892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474876, 37.544540, 36.049576>,  <41.736809, 37.798592, 35.885715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474876, 37.544540, 36.049576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719679, -0.689522, 0.081370,
		0.230780, 0.348097, 0.908608,
		-0.654830, -0.635128, 0.409646,
		41.278427, 37.354004, 36.172470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875675, 37.593147, 36.646049>,  <41.736809, 37.798592, 35.885715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875675, 37.593147, 36.646049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710766, 37.302948, 36.425617>,  <41.611820, 37.128830, 36.293358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710766, 37.302948, 36.425617>,  <41.875675, 37.593147, 36.646049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710766, 37.302948, 36.425617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741144, -0.618849, 0.260253,
		-0.529848, -0.301137, 0.792829,
		-0.412270, -0.725495, -0.551082,
		41.587086, 37.085300, 36.260292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983208, 36.990719, 37.104622>,  <41.875675, 37.593147, 36.646049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983208, 36.990719, 37.104622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965317, 36.865971, 36.724995>,  <41.954582, 36.791122, 36.497219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965317, 36.865971, 36.724995>,  <41.983208, 36.990719, 37.104622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965317, 36.865971, 36.724995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813251, -0.563115, 0.146714,
		-0.580192, -0.765270, 0.278819,
		-0.044732, -0.311872, -0.949071,
		41.951897, 36.772408, 36.440273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040539, 36.250305, 36.993958>,  <41.983208, 36.990719, 37.104622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040539, 36.250305, 36.993958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158203, 36.429588, 36.656300>,  <42.228802, 36.537159, 36.453705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158203, 36.429588, 36.656300>,  <42.040539, 36.250305, 36.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158203, 36.429588, 36.656300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918428, -0.376986, 0.119882,
		-0.264497, -0.810548, -0.522545,
		0.294162, 0.448211, -0.844142,
		42.246452, 36.564053, 36.403057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321011, 35.719868, 36.422199>,  <42.040539, 36.250305, 36.993958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321011, 35.719868, 36.422199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461071, 36.093437, 36.450989>,  <42.545109, 36.317577, 36.468262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461071, 36.093437, 36.450989>,  <42.321011, 35.719868, 36.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461071, 36.093437, 36.450989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933342, -0.354361, 0.057461,
		0.079169, 0.047055, -0.995750,
		0.350151, 0.933924, 0.071973,
		42.566116, 36.373615, 36.472580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866390, 35.695091, 35.917721>,  <42.321011, 35.719868, 36.422199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866390, 35.695091, 35.917721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931370, 35.980274, 36.190575>,  <42.970360, 36.151382, 36.354286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931370, 35.980274, 36.190575>,  <42.866390, 35.695091, 35.917721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931370, 35.980274, 36.190575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964941, -0.259222, 0.041133,
		0.206150, 0.651536, -0.730071,
		0.162451, 0.712955, 0.682132,
		42.980106, 36.194160, 36.395214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329819, 36.168152, 35.822742>,  <42.866390, 35.695091, 35.917721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329819, 36.168152, 35.822742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370491, 36.167961, 36.220669>,  <43.394894, 36.167847, 36.459423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370491, 36.167961, 36.220669>,  <43.329819, 36.168152, 35.822742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370491, 36.167961, 36.220669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983180, -0.152461, -0.100566,
		0.151718, 0.988309, -0.015035,
		0.101682, -0.000476, 0.994817,
		43.400997, 36.167820, 36.519115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812248, 36.665123, 35.926167>,  <43.329819, 36.168152, 35.822742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812248, 36.665123, 35.926167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819420, 36.377075, 36.203613>,  <43.823723, 36.204247, 36.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819420, 36.377075, 36.203613>,  <43.812248, 36.665123, 35.926167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819420, 36.377075, 36.203613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974479, -0.142668, -0.173308,
		0.223759, 0.679023, 0.699185,
		0.017928, -0.720121, 0.693617,
		43.824799, 36.161037, 36.411697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398312, 36.857235, 36.312454>,  <43.812248, 36.665123, 35.926167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398312, 36.857235, 36.312454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314964, 36.466824, 36.337616>,  <44.264957, 36.232578, 36.352715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314964, 36.466824, 36.337616>,  <44.398312, 36.857235, 36.312454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314964, 36.466824, 36.337616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947550, -0.217389, -0.234287,
		0.242346, 0.010791, 0.970130,
		-0.208367, -0.976025, 0.062909,
		44.252453, 36.174015, 36.356487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637196, 37.446312, 36.115120>,  <44.398312, 36.857235, 36.312454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637196, 37.446312, 36.115120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000538, 37.342072, 36.245945>,  <45.218544, 37.279526, 36.324440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000538, 37.342072, 36.245945>,  <44.637196, 37.446312, 36.115120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000538, 37.342072, 36.245945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036264, -0.828228, -0.559216,
		0.416614, 0.496109, -0.761780,
		0.908360, -0.260602, 0.327061,
		45.273045, 37.263889, 36.344063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995716, 37.109161, 35.596764>,  <44.637196, 37.446312, 36.115120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995716, 37.109161, 35.596764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210518, 36.953091, 35.895935>,  <45.339397, 36.859447, 36.075439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210518, 36.953091, 35.895935>,  <44.995716, 37.109161, 35.596764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210518, 36.953091, 35.895935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096004, -0.852583, -0.513698,
		0.838101, 0.347660, -0.420379,
		0.537000, -0.390173, 0.747927,
		45.371616, 36.836040, 36.120312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469448, 36.704384, 35.334198>,  <44.995716, 37.109161, 35.596764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469448, 36.704384, 35.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450634, 36.567200, 35.709469>,  <45.439346, 36.484890, 35.934631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450634, 36.567200, 35.709469>,  <45.469448, 36.704384, 35.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450634, 36.567200, 35.709469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169000, -0.928405, -0.330913,
		0.984493, 0.142988, 0.101625,
		-0.047032, -0.342956, 0.938173,
		45.436523, 36.464314, 35.990921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991680, 36.204952, 35.364372>,  <45.469448, 36.704384, 35.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991680, 36.204952, 35.364372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730698, 36.080700, 35.640869>,  <45.574108, 36.006149, 35.806767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730698, 36.080700, 35.640869>,  <45.991680, 36.204952, 35.364372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730698, 36.080700, 35.640869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305495, -0.942546, -0.135204,
		0.693523, 0.122955, 0.709865,
		-0.652456, -0.310628, 0.691239,
		45.534962, 35.987511, 35.848240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697269, 36.178261, 35.520348>,  <45.991680, 36.204952, 35.364372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697269, 36.178261, 35.520348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052830, 36.341698, 35.437481>,  <47.266167, 36.439758, 35.387760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052830, 36.341698, 35.437481>,  <46.697269, 36.178261, 35.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052830, 36.341698, 35.437481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417819, -0.908530, 0.000889,
		-0.187851, -0.087347, -0.978306,
		0.888898, 0.408588, -0.207164,
		47.319500, 36.464275, 35.375332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966316, 35.830147, 34.827923>,  <46.697269, 36.178261, 35.520348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966316, 35.830147, 34.827923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242355, 35.950291, 35.091297>,  <47.407978, 36.022377, 35.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242355, 35.950291, 35.091297>,  <46.966316, 35.830147, 34.827923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242355, 35.950291, 35.091297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393946, -0.919111, 0.006383,
		0.607095, 0.254985, -0.752607,
		0.690102, 0.300362, 0.658439,
		47.449387, 36.040398, 35.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533676, 35.483795, 34.576916>,  <46.966316, 35.830147, 34.827923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533676, 35.483795, 34.576916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610439, 35.585953, 34.955956>,  <47.656498, 35.647247, 35.183380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610439, 35.585953, 34.955956>,  <47.533676, 35.483795, 34.576916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610439, 35.585953, 34.955956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104223, -0.965391, 0.239077,
		0.975864, 0.052882, -0.211882,
		0.191906, 0.255389, 0.947601,
		47.668011, 35.662571, 35.240234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.005062, 34.958088, 34.945435>,  <47.533676, 35.483795, 34.576916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.005062, 34.958088, 34.945435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788395, 35.125118, 35.237251>,  <47.658394, 35.225338, 35.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788395, 35.125118, 35.237251>,  <48.005062, 34.958088, 34.945435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788395, 35.125118, 35.237251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001918, -0.867270, 0.497835,
		0.840592, 0.271059, 0.468969,
		-0.541665, 0.417577, 0.729540,
		47.625896, 35.250393, 35.456112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.518139, 31.150982, 27.308239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126415, 31.186825, 27.235668>,  <37.891380, 31.208330, 27.192125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126415, 31.186825, 27.235668>,  <38.518139, 31.150982, 27.308239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126415, 31.186825, 27.235668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139777, 0.348722, 0.926744,
		0.146312, 0.932932, -0.328983,
		-0.979314, 0.089609, -0.181425,
		37.832623, 31.213707, 27.181240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398384, 31.824253, 27.647190>,  <38.518139, 31.150982, 27.308239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398384, 31.824253, 27.647190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051254, 31.634766, 27.587233>,  <37.842976, 31.521072, 27.551258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051254, 31.634766, 27.587233>,  <38.398384, 31.824253, 27.647190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051254, 31.634766, 27.587233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277669, 0.212207, 0.936946,
		-0.412041, 0.854727, -0.315696,
		-0.867826, -0.473719, -0.149893,
		37.790905, 31.492649, 27.542265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949459, 32.290730, 27.897186>,  <38.398384, 31.824253, 27.647190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949459, 32.290730, 27.897186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768410, 31.934052, 27.898369>,  <37.659779, 31.720045, 27.899078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768410, 31.934052, 27.898369>,  <37.949459, 32.290730, 27.897186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768410, 31.934052, 27.898369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418767, 0.215492, 0.882155,
		-0.787250, 0.398050, -0.470950,
		-0.452628, -0.891695, 0.002956,
		37.632622, 31.666544, 27.899256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242092, 32.424259, 28.069155>,  <37.949459, 32.290730, 27.897186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242092, 32.424259, 28.069155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275246, 32.032093, 28.140619>,  <37.295135, 31.796793, 28.183498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275246, 32.032093, 28.140619>,  <37.242092, 32.424259, 28.069155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275246, 32.032093, 28.140619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598333, 0.094414, 0.795665,
		-0.796949, -0.172843, -0.578789,
		0.082879, -0.980414, 0.178661,
		37.300110, 31.737968, 28.194218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611298, 32.093861, 28.055210>,  <37.242092, 32.424259, 28.069155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611298, 32.093861, 28.055210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859623, 31.883354, 28.287636>,  <37.008617, 31.757050, 28.427092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859623, 31.883354, 28.287636>,  <36.611298, 32.093861, 28.055210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859623, 31.883354, 28.287636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594693, 0.166818, 0.786455,
		-0.510818, -0.833795, -0.209405,
		0.620810, -0.526267, 0.581066,
		37.045868, 31.725473, 28.461956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209629, 31.809364, 28.520372>,  <36.611298, 32.093861, 28.055210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209629, 31.809364, 28.520372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556194, 31.777107, 28.717484>,  <36.764133, 31.757753, 28.835751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556194, 31.777107, 28.717484>,  <36.209629, 31.809364, 28.520372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556194, 31.777107, 28.717484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491368, 0.037893, 0.870128,
		-0.088844, -0.996022, -0.006796,
		0.866409, -0.080645, 0.492780,
		36.816116, 31.752914, 28.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026222, 31.586243, 29.215029>,  <36.209629, 31.809364, 28.520372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026222, 31.586243, 29.215029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414429, 31.654673, 29.282938>,  <36.647354, 31.695730, 29.323685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414429, 31.654673, 29.282938>,  <36.026222, 31.586243, 29.215029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414429, 31.654673, 29.282938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213539, 0.283693, 0.934837,
		0.111759, -0.943532, 0.311860,
		0.970521, 0.171071, 0.169776,
		36.705585, 31.705994, 29.333870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151917, 31.235922, 29.824772>,  <36.026222, 31.586243, 29.215029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151917, 31.235922, 29.824772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446507, 31.503559, 29.784931>,  <36.623260, 31.664143, 29.761026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446507, 31.503559, 29.784931>,  <36.151917, 31.235922, 29.824772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446507, 31.503559, 29.784931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173213, 0.328852, 0.928361,
		0.653916, -0.666459, 0.358086,
		0.736472, 0.669095, -0.099603,
		36.667450, 31.704288, 29.755051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469612, 31.265633, 30.479704>,  <36.151917, 31.235922, 29.824772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469612, 31.265633, 30.479704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631039, 31.598028, 30.326555>,  <36.727894, 31.797466, 30.234667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631039, 31.598028, 30.326555>,  <36.469612, 31.265633, 30.479704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631039, 31.598028, 30.326555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241440, 0.306907, 0.920606,
		0.882521, -0.463964, -0.076777,
		0.403565, 0.830991, -0.382871,
		36.752110, 31.847326, 30.211695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920616, 31.423595, 30.988462>,  <36.469612, 31.265633, 30.479704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920616, 31.423595, 30.988462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869556, 31.753386, 30.767937>,  <36.838921, 31.951260, 30.635620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869556, 31.753386, 30.767937>,  <36.920616, 31.423595, 30.988462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869556, 31.753386, 30.767937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168612, 0.565811, 0.807111,
		0.977382, 0.010070, -0.211243,
		-0.127651, 0.824473, -0.551316,
		36.831261, 32.000729, 30.602543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538288, 31.793816, 31.028889>,  <36.920616, 31.423595, 30.988462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538288, 31.793816, 31.028889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202656, 32.006130, 30.981216>,  <37.001274, 32.133518, 30.952612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202656, 32.006130, 30.981216>,  <37.538288, 31.793816, 31.028889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202656, 32.006130, 30.981216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275040, 0.602947, 0.748871,
		0.469351, 0.595586, -0.651910,
		-0.839085, 0.530785, -0.119183,
		36.950932, 32.165367, 30.945461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706234, 32.492435, 31.192730>,  <37.538288, 31.793816, 31.028889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706234, 32.492435, 31.192730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307655, 32.502960, 31.224737>,  <37.068508, 32.509274, 31.243942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307655, 32.502960, 31.224737>,  <37.706234, 32.492435, 31.192730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307655, 32.502960, 31.224737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073851, 0.729786, 0.679676,
		-0.040512, 0.683170, -0.729135,
		-0.996446, 0.026312, 0.080018,
		37.008720, 32.510853, 31.248743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592289, 33.177757, 31.209463>,  <37.706234, 32.492435, 31.192730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592289, 33.177757, 31.209463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279472, 32.996704, 31.380831>,  <37.091782, 32.888073, 31.483652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279472, 32.996704, 31.380831>,  <37.592289, 33.177757, 31.209463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279472, 32.996704, 31.380831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155926, 0.523454, 0.837665,
		-0.603411, 0.721887, -0.338783,
		-0.782037, -0.452632, 0.428419,
		37.044861, 32.860916, 31.509356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207970, 33.758171, 31.428465>,  <37.592289, 33.177757, 31.209463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207970, 33.758171, 31.428465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077854, 33.433205, 31.622026>,  <36.999786, 33.238224, 31.738163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077854, 33.433205, 31.622026>,  <37.207970, 33.758171, 31.428465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077854, 33.433205, 31.622026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028465, 0.503093, 0.863764,
		-0.945186, 0.294747, -0.140526,
		-0.325289, -0.812417, 0.483906,
		36.980267, 33.189480, 31.767199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739716, 34.059513, 31.886654>,  <37.207970, 33.758171, 31.428465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739716, 34.059513, 31.886654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802769, 33.703121, 32.056973>,  <36.840599, 33.489285, 32.159164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802769, 33.703121, 32.056973>,  <36.739716, 34.059513, 31.886654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802769, 33.703121, 32.056973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036241, 0.425677, 0.904149,
		-0.986833, -0.157952, 0.034809,
		0.157629, -0.890983, 0.425797,
		36.850056, 33.435825, 32.184711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164940, 33.908279, 32.397419>,  <36.739716, 34.059513, 31.886654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164940, 33.908279, 32.397419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496483, 33.700680, 32.480972>,  <36.695412, 33.576122, 32.531105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496483, 33.700680, 32.480972>,  <36.164940, 33.908279, 32.397419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496483, 33.700680, 32.480972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052593, 0.444001, 0.894482,
		-0.556975, -0.730416, 0.395311,
		0.828862, -0.518995, 0.208883,
		36.745140, 33.544983, 32.543636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138874, 33.862865, 33.114056>,  <36.164940, 33.908279, 32.397419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138874, 33.862865, 33.114056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519176, 33.754593, 33.053658>,  <36.747356, 33.689629, 33.017418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519176, 33.754593, 33.053658>,  <36.138874, 33.862865, 33.114056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519176, 33.754593, 33.053658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224866, 0.267129, 0.937058,
		-0.213307, -0.924865, 0.314841,
		0.950755, -0.270678, -0.150991,
		36.804401, 33.673389, 33.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278168, 33.498627, 33.737225>,  <36.138874, 33.862865, 33.114056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278168, 33.498627, 33.737225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615860, 33.637463, 33.573860>,  <36.818474, 33.720764, 33.475842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615860, 33.637463, 33.573860>,  <36.278168, 33.498627, 33.737225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615860, 33.637463, 33.573860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260861, 0.399572, 0.878802,
		0.468218, -0.848450, 0.246788,
		0.844230, 0.347093, -0.408415,
		36.869129, 33.741589, 33.451336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782032, 33.348007, 34.329865>,  <36.278168, 33.498627, 33.737225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782032, 33.348007, 34.329865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900990, 33.639648, 34.083298>,  <36.972363, 33.814632, 33.935360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900990, 33.639648, 34.083298>,  <36.782032, 33.348007, 34.329865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900990, 33.639648, 34.083298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341524, 0.521668, 0.781808,
		0.891582, -0.443024, -0.093866,
		0.297393, 0.729104, -0.616413,
		36.990208, 33.858379, 33.898373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284752, 33.677795, 34.605495>,  <36.782032, 33.348007, 34.329865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284752, 33.677795, 34.605495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248325, 33.964455, 34.328907>,  <37.226471, 34.136448, 34.162956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248325, 33.964455, 34.328907>,  <37.284752, 33.677795, 34.605495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248325, 33.964455, 34.328907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243920, 0.689255, 0.682225,
		0.965510, -0.106535, -0.237571,
		-0.091066, 0.716644, -0.691469,
		37.221004, 34.179447, 34.121468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856071, 34.075851, 34.701229>,  <37.284752, 33.677795, 34.605495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856071, 34.075851, 34.701229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592739, 34.318775, 34.523342>,  <37.434742, 34.464531, 34.416611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592739, 34.318775, 34.523342>,  <37.856071, 34.075851, 34.701229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592739, 34.318775, 34.523342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210489, 0.715762, 0.665867,
		0.722701, 0.344752, -0.599040,
		-0.658329, 0.607314, -0.444716,
		37.395241, 34.500969, 34.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199368, 34.736286, 34.525814>,  <37.856071, 34.075851, 34.701229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199368, 34.736286, 34.525814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809849, 34.819092, 34.563461>,  <37.576138, 34.868774, 34.586048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809849, 34.819092, 34.563461>,  <38.199368, 34.736286, 34.525814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809849, 34.819092, 34.563461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224744, 0.812991, 0.537155,
		0.034686, 0.544233, -0.838217,
		-0.973800, 0.207016, 0.094114,
		37.517708, 34.881195, 34.591694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956020, 35.365635, 34.783169>,  <38.199368, 34.736286, 34.525814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956020, 35.365635, 34.783169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933933, 35.764526, 34.803120>,  <37.920681, 36.003860, 34.815090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933933, 35.764526, 34.803120>,  <37.956020, 35.365635, 34.783169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933933, 35.764526, 34.803120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364744, 0.066651, -0.928719,
		-0.929469, -0.033091, -0.367413,
		-0.055221, 0.997227, 0.049880,
		37.917366, 36.063694, 34.818085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564198, 35.606247, 34.205814>,  <37.956020, 35.365635, 34.783169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564198, 35.606247, 34.205814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854046, 35.844044, 34.345245>,  <38.027954, 35.986721, 34.428905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854046, 35.844044, 34.345245>,  <37.564198, 35.606247, 34.205814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854046, 35.844044, 34.345245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376153, 0.082634, -0.922865,
		-0.577440, 0.799844, -0.163742,
		0.724618, 0.594492, 0.348580,
		38.071430, 36.022392, 34.449818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605225, 36.154205, 33.690495>,  <37.564198, 35.606247, 34.205814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605225, 36.154205, 33.690495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945038, 36.081764, 33.888683>,  <38.148926, 36.038300, 34.007599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945038, 36.081764, 33.888683>,  <37.605225, 36.154205, 33.690495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945038, 36.081764, 33.888683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518635, 0.114902, -0.847240,
		0.096508, 0.976729, 0.191540,
		0.849532, -0.181105, 0.495477,
		38.199898, 36.027431, 34.037327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133060, 36.607567, 33.425640>,  <37.605225, 36.154205, 33.690495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133060, 36.607567, 33.425640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338856, 36.305012, 33.587219>,  <38.462334, 36.123478, 33.684166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338856, 36.305012, 33.587219>,  <38.133060, 36.607567, 33.425640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338856, 36.305012, 33.587219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581472, -0.038481, -0.812656,
		0.630229, 0.652988, 0.420021,
		0.514491, -0.756390, 0.403946,
		38.493202, 36.078094, 33.708405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873878, 36.758018, 33.264332>,  <38.133060, 36.607567, 33.425640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873878, 36.758018, 33.264332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868111, 36.372711, 33.371597>,  <38.864651, 36.141529, 33.435955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868111, 36.372711, 33.371597>,  <38.873878, 36.758018, 33.264332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868111, 36.372711, 33.371597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688410, -0.204070, -0.696022,
		0.725178, 0.174573, 0.666064,
		-0.014417, -0.963265, 0.268165,
		38.863785, 36.083733, 33.452045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573673, 36.606606, 33.300999>,  <38.873878, 36.758018, 33.264332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573673, 36.606606, 33.300999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351204, 36.278255, 33.249107>,  <39.217720, 36.081245, 33.217972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351204, 36.278255, 33.249107>,  <39.573673, 36.606606, 33.300999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351204, 36.278255, 33.249107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631607, -0.316060, -0.707940,
		0.540130, -0.475676, 0.694256,
		-0.556177, -0.820877, -0.129726,
		39.184349, 36.031994, 33.210190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065178, 36.114491, 33.037617>,  <39.573673, 36.606606, 33.300999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065178, 36.114491, 33.037617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731426, 35.903572, 32.973408>,  <39.531174, 35.777020, 32.934883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731426, 35.903572, 32.973408>,  <40.065178, 36.114491, 33.037617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731426, 35.903572, 32.973408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429292, -0.439030, -0.789279,
		0.345711, -0.727469, 0.592683,
		-0.834381, -0.527296, -0.160520,
		39.481113, 35.745384, 32.925251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306561, 35.411591, 32.899220>,  <40.065178, 36.114491, 33.037617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306561, 35.411591, 32.899220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942730, 35.466537, 32.742348>,  <39.724434, 35.499504, 32.648224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942730, 35.466537, 32.742348>,  <40.306561, 35.411591, 32.899220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942730, 35.466537, 32.742348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311824, -0.398182, -0.862680,
		-0.274661, -0.906963, 0.319343,
		-0.909575, 0.137366, -0.392178,
		39.669857, 35.507748, 32.624695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239536, 34.721085, 32.532326>,  <40.306561, 35.411591, 32.899220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239536, 34.721085, 32.532326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985809, 34.979740, 32.362854>,  <39.833572, 35.134933, 32.261169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985809, 34.979740, 32.362854>,  <40.239536, 34.721085, 32.532326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985809, 34.979740, 32.362854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314541, -0.284756, -0.905527,
		-0.706195, -0.707651, -0.022770,
		-0.634313, 0.646641, -0.423678,
		39.795517, 35.173733, 32.235752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031391, 34.370647, 31.969582>,  <40.239536, 34.721085, 32.532326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031391, 34.370647, 31.969582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887230, 34.734688, 31.887775>,  <39.800732, 34.953110, 31.838692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887230, 34.734688, 31.887775>,  <40.031391, 34.370647, 31.969582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887230, 34.734688, 31.887775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116639, -0.173560, -0.977892,
		-0.925474, -0.376293, -0.043601,
		-0.360407, 0.910099, -0.204516,
		39.779106, 35.007717, 31.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508408, 34.270695, 31.548595>,  <40.031391, 34.370647, 31.969582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508408, 34.270695, 31.548595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.625401, 34.649620, 31.496376>,  <39.695595, 34.876976, 31.465044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.625401, 34.649620, 31.496376>,  <39.508408, 34.270695, 31.548595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625401, 34.649620, 31.496376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049170, -0.121441, -0.991380,
		-0.955006, 0.296380, 0.011061,
		0.292482, 0.947318, -0.130550,
		39.713146, 34.933815, 31.457211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955181, 34.709259, 31.064140>,  <39.508408, 34.270695, 31.548595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955181, 34.709259, 31.064140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332722, 34.836788, 31.029520>,  <39.559246, 34.913307, 31.008747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332722, 34.836788, 31.029520>,  <38.955181, 34.709259, 31.064140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332722, 34.836788, 31.029520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022922, -0.198157, -0.979902,
		-0.329566, 0.926869, -0.179723,
		0.943854, 0.318822, -0.086552,
		39.615879, 34.932434, 31.003555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035618, 35.163464, 30.359751>,  <38.955181, 34.709259, 31.064140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035618, 35.163464, 30.359751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370808, 34.998745, 30.502985>,  <39.571922, 34.899914, 30.588924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370808, 34.998745, 30.502985>,  <39.035618, 35.163464, 30.359751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370808, 34.998745, 30.502985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253117, -0.288027, -0.923565,
		0.483456, 0.864561, -0.137128,
		0.837975, -0.411793, 0.358083,
		39.622200, 34.875206, 30.610411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648033, 35.405651, 29.981100>,  <39.035618, 35.163464, 30.359751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648033, 35.405651, 29.981100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762653, 35.053459, 30.132170>,  <39.831425, 34.842144, 30.222811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762653, 35.053459, 30.132170>,  <39.648033, 35.405651, 29.981100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762653, 35.053459, 30.132170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264521, -0.306173, -0.914487,
		0.920824, 0.361950, 0.145173,
		0.286551, -0.880483, 0.377675,
		39.848618, 34.789314, 30.245472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279968, 35.218998, 29.582718>,  <39.648033, 35.405651, 29.981100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279968, 35.218998, 29.582718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097050, 34.894753, 29.729029>,  <39.987297, 34.700207, 29.816814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097050, 34.894753, 29.729029>,  <40.279968, 35.218998, 29.582718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097050, 34.894753, 29.729029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119039, -0.463393, -0.878121,
		0.881311, -0.358020, 0.308402,
		-0.457296, -0.810610, 0.365775,
		39.959862, 34.651569, 29.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703587, 34.661381, 29.258430>,  <40.279968, 35.218998, 29.582718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703587, 34.661381, 29.258430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355862, 34.506592, 29.381426>,  <40.147224, 34.413719, 29.455223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355862, 34.506592, 29.381426>,  <40.703587, 34.661381, 29.258430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355862, 34.506592, 29.381426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054026, -0.543995, -0.837347,
		0.491299, -0.744530, 0.451996,
		-0.869314, -0.386968, 0.307488,
		40.095066, 34.390503, 29.473673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747250, 34.043762, 29.072803>,  <40.703587, 34.661381, 29.258430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747250, 34.043762, 29.072803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354046, 34.084831, 29.133656>,  <40.118122, 34.109474, 29.170166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354046, 34.084831, 29.133656>,  <40.747250, 34.043762, 29.072803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354046, 34.084831, 29.133656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183304, -0.590853, -0.785679,
		0.009216, -0.800219, 0.599637,
		-0.983013, 0.102675, 0.152128,
		40.059143, 34.115635, 29.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508724, 33.412830, 29.186440>,  <40.747250, 34.043762, 29.072803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508724, 33.412830, 29.186440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.205051, 33.635193, 29.051025>,  <40.022846, 33.768612, 28.969776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.205051, 33.635193, 29.051025>,  <40.508724, 33.412830, 29.186440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205051, 33.635193, 29.051025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119173, -0.630051, -0.767355,
		-0.639890, -0.542206, 0.544566,
		-0.759169, 0.555921, -0.338547,
		39.977295, 33.801964, 28.949465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.953217, 32.978470, 28.944696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816414, 33.306671, 28.761477>,  <39.734333, 33.503590, 28.651545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816414, 33.306671, 28.761477>,  <39.953217, 32.978470, 28.944696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816414, 33.306671, 28.761477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036821, -0.475369, -0.879016,
		-0.938974, -0.317499, 0.132369,
		-0.342011, 0.820499, -0.458050,
		39.713810, 33.552822, 28.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304218, 32.815247, 28.549683>,  <39.953217, 32.978470, 28.944696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304218, 32.815247, 28.549683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483009, 33.132904, 28.384981>,  <39.590282, 33.323498, 28.286160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483009, 33.132904, 28.384981>,  <39.304218, 32.815247, 28.549683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483009, 33.132904, 28.384981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185301, -0.368114, -0.911129,
		-0.875143, 0.483552, -0.017382,
		0.446976, 0.794147, -0.411755,
		39.617104, 33.371147, 28.261456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928364, 32.823078, 27.902821>,  <39.304218, 32.815247, 28.549683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928364, 32.823078, 27.902821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227173, 33.076744, 27.823025>,  <39.406460, 33.228943, 27.775146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227173, 33.076744, 27.823025>,  <38.928364, 32.823078, 27.902821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227173, 33.076744, 27.823025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021838, -0.276507, -0.960764,
		-0.664440, 0.722069, -0.192708,
		0.747022, 0.634162, -0.199491,
		39.451279, 33.266991, 27.763178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763382, 33.195576, 27.239950>,  <38.928364, 32.823078, 27.902821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763382, 33.195576, 27.239950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160126, 33.225185, 27.281404>,  <39.398170, 33.242950, 27.306276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160126, 33.225185, 27.281404>,  <38.763382, 33.195576, 27.239950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160126, 33.225185, 27.281404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114275, -0.158064, -0.980794,
		-0.056223, 0.984650, -0.165236,
		0.991857, 0.074026, 0.103634,
		39.457684, 33.247395, 27.312494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953079, 33.664635, 26.789120>,  <38.763382, 33.195576, 27.239950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953079, 33.664635, 26.789120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261734, 33.427113, 26.880310>,  <39.446926, 33.284599, 26.935024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261734, 33.427113, 26.880310>,  <38.953079, 33.664635, 26.789120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261734, 33.427113, 26.880310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091682, -0.250841, -0.963677,
		0.629419, 0.764512, -0.139118,
		0.771639, -0.593802, 0.227976,
		39.493225, 33.248974, 26.948704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511879, 33.740700, 26.311338>,  <38.953079, 33.664635, 26.789120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511879, 33.740700, 26.311338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643967, 33.397911, 26.469606>,  <39.723221, 33.192238, 26.564568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643967, 33.397911, 26.469606>,  <39.511879, 33.740700, 26.311338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643967, 33.397911, 26.469606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270000, -0.315912, -0.909560,
		0.904463, 0.407188, 0.127061,
		0.330222, -0.856970, 0.395672,
		39.743034, 33.140820, 26.588308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146469, 33.580441, 25.967957>,  <39.511879, 33.740700, 26.311338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146469, 33.580441, 25.967957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043694, 33.219711, 26.106918>,  <39.982029, 33.003273, 26.190296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043694, 33.219711, 26.106918>,  <40.146469, 33.580441, 25.967957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043694, 33.219711, 26.106918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570175, -0.431704, -0.698951,
		0.780309, 0.018493, 0.625121,
		-0.256942, -0.901826, 0.347406,
		39.966610, 32.949165, 26.211140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719322, 33.242119, 25.915878>,  <40.146469, 33.580441, 25.967957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719322, 33.242119, 25.915878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462193, 32.938183, 25.954683>,  <40.307915, 32.755821, 25.977966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462193, 32.938183, 25.954683>,  <40.719322, 33.242119, 25.915878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462193, 32.938183, 25.954683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562921, -0.554485, -0.612916,
		0.519511, -0.339390, 0.784170,
		-0.642828, -0.759843, 0.097012,
		40.269344, 32.710232, 25.983788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207867, 32.641415, 25.892076>,  <40.719322, 33.242119, 25.915878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207867, 32.641415, 25.892076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833393, 32.504936, 25.858257>,  <40.608711, 32.423050, 25.837965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833393, 32.504936, 25.858257>,  <41.207867, 32.641415, 25.892076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833393, 32.504936, 25.858257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295135, -0.632288, -0.716315,
		0.190945, -0.695555, 0.692635,
		-0.936181, -0.341198, -0.084550,
		40.552540, 32.402576, 25.832891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137836, 31.973497, 26.061483>,  <41.207867, 32.641415, 25.892076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137836, 31.973497, 26.061483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849640, 32.054031, 25.796043>,  <40.676723, 32.102352, 25.636780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849640, 32.054031, 25.796043>,  <41.137836, 31.973497, 26.061483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849640, 32.054031, 25.796043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422617, -0.631214, -0.650356,
		-0.549809, -0.749022, 0.369697,
		-0.720489, 0.201332, -0.663597,
		40.633495, 32.114429, 25.596964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967339, 31.261799, 25.749176>,  <41.137836, 31.973497, 26.061483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967339, 31.261799, 25.749176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848667, 31.552942, 25.501884>,  <40.777466, 31.727629, 25.353510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848667, 31.552942, 25.501884>,  <40.967339, 31.261799, 25.749176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848667, 31.552942, 25.501884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352308, -0.518290, -0.779265,
		-0.887615, -0.448999, -0.102663,
		-0.296680, 0.727857, -0.618227,
		40.759663, 31.771299, 25.316416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752476, 30.935686, 25.163671>,  <40.967339, 31.261799, 25.749176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752476, 30.935686, 25.163671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769070, 31.301638, 25.003033>,  <40.779026, 31.521208, 24.906651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769070, 31.301638, 25.003033>,  <40.752476, 30.935686, 25.163671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769070, 31.301638, 25.003033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133055, -0.403420, -0.905289,
		-0.990240, -0.015881, -0.138464,
		0.041482, 0.914877, -0.401596,
		40.781513, 31.576101, 24.882553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221428, 30.958889, 24.641369>,  <40.752476, 30.935686, 25.163671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221428, 30.958889, 24.641369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.505505, 31.233965, 24.581093>,  <40.675949, 31.399012, 24.544928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.505505, 31.233965, 24.581093>,  <40.221428, 30.958889, 24.641369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505505, 31.233965, 24.581093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170876, -0.376025, -0.910718,
		-0.682956, 0.621036, -0.384560,
		0.710192, 0.687692, -0.150688,
		40.718563, 31.440273, 24.535887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068638, 31.164423, 23.989138>,  <40.221428, 30.958889, 24.641369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068638, 31.164423, 23.989138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437180, 31.316330, 24.022316>,  <40.658306, 31.407475, 24.042223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437180, 31.316330, 24.022316>,  <40.068638, 31.164423, 23.989138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437180, 31.316330, 24.022316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205755, -0.295423, -0.932947,
		-0.329797, 0.876643, -0.350329,
		0.921357, 0.379765, 0.082944,
		40.713585, 31.430260, 24.047199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218239, 31.586939, 23.442644>,  <40.068638, 31.164423, 23.989138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218239, 31.586939, 23.442644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584370, 31.491693, 23.572557>,  <40.804047, 31.434546, 23.650505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584370, 31.491693, 23.572557>,  <40.218239, 31.586939, 23.442644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584370, 31.491693, 23.572557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276093, -0.216093, -0.936524,
		0.293182, 0.946893, -0.132053,
		0.915323, -0.238113, 0.324785,
		40.858967, 31.420259, 23.669992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636322, 31.860844, 22.958033>,  <40.218239, 31.586939, 23.442644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636322, 31.860844, 22.958033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.874310, 31.593027, 23.135902>,  <41.017101, 31.432337, 23.242624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.874310, 31.593027, 23.135902>,  <40.636322, 31.860844, 22.958033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874310, 31.593027, 23.135902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401981, -0.231210, -0.885976,
		0.696008, 0.705875, 0.131580,
		0.594965, -0.669539, 0.444672,
		41.052799, 31.392166, 23.269304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360161, 32.064365, 22.843502>,  <40.636322, 31.860844, 22.958033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360161, 32.064365, 22.843502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368290, 31.670328, 22.911833>,  <41.373169, 31.433907, 22.952831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368290, 31.670328, 22.911833>,  <41.360161, 32.064365, 22.843502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368290, 31.670328, 22.911833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553219, -0.131242, -0.822633,
		0.832788, 0.111223, 0.542304,
		0.020323, -0.985091, 0.170827,
		41.374386, 31.374802, 22.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042412, 31.955469, 22.756020>,  <41.360161, 32.064365, 22.843502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042412, 31.955469, 22.756020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.847115, 31.608759, 22.715393>,  <41.729935, 31.400732, 22.691017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.847115, 31.608759, 22.715393>,  <42.042412, 31.955469, 22.756020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847115, 31.608759, 22.715393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573364, -0.230858, -0.786103,
		0.657929, -0.442045, 0.609693,
		-0.488245, -0.866776, -0.101564,
		41.700642, 31.348726, 22.684923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564556, 31.385305, 22.739071>,  <42.042412, 31.955469, 22.756020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564556, 31.385305, 22.739071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225563, 31.282063, 22.553530>,  <42.022167, 31.220118, 22.442205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225563, 31.282063, 22.553530>,  <42.564556, 31.385305, 22.739071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225563, 31.282063, 22.553530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509814, -0.152336, -0.846690,
		0.147875, -0.954031, 0.260688,
		-0.847480, -0.258106, -0.463851,
		41.971317, 31.204630, 22.414373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587669, 30.741602, 22.290842>,  <42.564556, 31.385305, 22.739071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587669, 30.741602, 22.290842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.276611, 30.933966, 22.128859>,  <42.089977, 31.049383, 22.031668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.276611, 30.933966, 22.128859>,  <42.587669, 30.741602, 22.290842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276611, 30.933966, 22.128859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281226, -0.310007, -0.908189,
		-0.562297, -0.820135, 0.105831,
		-0.777646, 0.480910, -0.404959,
		42.043316, 31.078239, 22.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397175, 30.290033, 21.732784>,  <42.587669, 30.741602, 22.290842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397175, 30.290033, 21.732784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.184570, 30.619366, 21.653160>,  <42.057007, 30.816965, 21.605385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.184570, 30.619366, 21.653160>,  <42.397175, 30.290033, 21.732784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184570, 30.619366, 21.653160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076663, -0.187282, -0.979310,
		-0.843575, -0.535775, 0.036423,
		-0.531511, 0.823329, -0.199060,
		42.025116, 30.866364, 21.593441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837654, 30.128708, 21.207428>,  <42.397175, 30.290033, 21.732784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837654, 30.128708, 21.207428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.919495, 30.519958, 21.192436>,  <41.968597, 30.754709, 21.183441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.919495, 30.519958, 21.192436>,  <41.837654, 30.128708, 21.207428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919495, 30.519958, 21.192436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142033, -0.067549, -0.987555,
		-0.968487, 0.196728, -0.152746,
		0.204597, 0.978128, -0.037479,
		41.980873, 30.813396, 21.181192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489658, 30.447178, 20.584944>,  <41.837654, 30.128708, 21.207428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489658, 30.447178, 20.584944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801060, 30.690681, 20.646065>,  <41.987900, 30.836784, 20.682737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801060, 30.690681, 20.646065>,  <41.489658, 30.447178, 20.584944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801060, 30.690681, 20.646065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125338, 0.087761, -0.988225,
		-0.615003, 0.788485, -0.007979,
		0.778500, 0.608761, 0.152801,
		42.034611, 30.873310, 20.691904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377033, 31.171633, 20.266275>,  <41.489658, 30.447178, 20.584944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377033, 31.171633, 20.266275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.754456, 31.041084, 20.288843>,  <41.980907, 30.962755, 20.302383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.754456, 31.041084, 20.288843>,  <41.377033, 31.171633, 20.266275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754456, 31.041084, 20.288843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121101, 0.181405, -0.975924,
		0.308281, 0.927670, 0.210690,
		0.943556, -0.326373, 0.056419,
		42.037521, 30.943172, 20.305769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804539, 31.779617, 20.123995>,  <41.377033, 31.171633, 20.266275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804539, 31.779617, 20.123995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506527, 31.697493, 19.870136>,  <40.327721, 31.648218, 19.717821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506527, 31.697493, 19.870136>,  <40.804539, 31.779617, 20.123995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506527, 31.697493, 19.870136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640823, -0.043778, 0.766439,
		-0.185144, 0.977716, -0.098954,
		-0.745029, -0.205314, -0.634648,
		40.283020, 31.635899, 19.679741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275085, 32.252613, 20.208868>,  <40.804539, 31.779617, 20.123995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275085, 32.252613, 20.208868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067356, 31.958752, 20.034241>,  <39.942719, 31.782434, 19.929464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067356, 31.958752, 20.034241>,  <40.275085, 32.252613, 20.208868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067356, 31.958752, 20.034241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640388, -0.003723, 0.768042,
		-0.565869, 0.678435, -0.468528,
		-0.519322, -0.734651, -0.436569,
		39.911560, 31.738356, 19.903271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514324, 32.379177, 20.314632>,  <40.275085, 32.252613, 20.208868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514324, 32.379177, 20.314632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519753, 31.992844, 20.211107>,  <39.523010, 31.761044, 20.148993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519753, 31.992844, 20.211107>,  <39.514324, 32.379177, 20.314632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519753, 31.992844, 20.211107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721865, -0.188574, 0.665846,
		-0.691901, 0.177791, -0.699760,
		0.013575, -0.965831, -0.258815,
		39.523827, 31.703094, 20.133463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840252, 32.171249, 20.331760>,  <39.514324, 32.379177, 20.314632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840252, 32.171249, 20.331760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065712, 31.845928, 20.389505>,  <39.200989, 31.650736, 20.424152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065712, 31.845928, 20.389505>,  <38.840252, 32.171249, 20.331760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065712, 31.845928, 20.389505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474257, -0.175549, 0.862706,
		-0.676298, -0.554728, -0.484662,
		0.563650, -0.813301, 0.144360,
		39.234806, 31.601938, 20.432814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337280, 31.760765, 20.578978>,  <38.840252, 32.171249, 20.331760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337280, 31.760765, 20.578978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677616, 31.599812, 20.714127>,  <38.881817, 31.503239, 20.795216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677616, 31.599812, 20.714127>,  <38.337280, 31.760765, 20.578978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677616, 31.599812, 20.714127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423249, -0.143845, 0.894521,
		-0.311342, -0.904098, -0.292699,
		0.850839, -0.402387, 0.337874,
		38.932869, 31.479095, 20.815489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254578, 31.154240, 20.934238>,  <38.337280, 31.760765, 20.578978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254578, 31.154240, 20.934238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605759, 31.266024, 21.089727>,  <38.816467, 31.333094, 21.183022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605759, 31.266024, 21.089727>,  <38.254578, 31.154240, 20.934238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605759, 31.266024, 21.089727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323912, -0.251168, 0.912138,
		0.352542, -0.926723, -0.129992,
		0.877949, 0.279461, 0.388725,
		38.869144, 31.349861, 21.206345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417217, 30.615303, 21.406780>,  <38.254578, 31.154240, 20.934238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417217, 30.615303, 21.406780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630447, 30.940201, 21.501513>,  <38.758385, 31.135139, 21.558352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630447, 30.940201, 21.501513>,  <38.417217, 30.615303, 21.406780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630447, 30.940201, 21.501513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399971, -0.004734, 0.916516,
		0.745557, -0.583296, 0.322351,
		0.533074, 0.812246, 0.236831,
		38.790371, 31.183874, 21.572561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628269, 30.509367, 22.117756>,  <38.417217, 30.615303, 21.406780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628269, 30.509367, 22.117756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.696785, 30.901896, 22.082731>,  <38.737896, 31.137413, 22.061716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.696785, 30.901896, 22.082731>,  <38.628269, 30.509367, 22.117756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696785, 30.901896, 22.082731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145000, 0.113017, 0.982956,
		0.974491, -0.155678, 0.161651,
		0.171294, 0.981321, -0.087561,
		38.748173, 31.196293, 22.056463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101765, 30.668705, 22.692568>,  <38.628269, 30.509367, 22.117756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101765, 30.668705, 22.692568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966911, 31.025738, 22.572809>,  <38.885998, 31.239958, 22.500954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966911, 31.025738, 22.572809>,  <39.101765, 30.668705, 22.692568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966911, 31.025738, 22.572809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149764, 0.263118, 0.953069,
		0.929468, 0.366151, 0.044970,
		-0.337135, 0.892582, -0.299396,
		38.865772, 31.293512, 22.482990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525146, 31.242989, 22.938536>,  <39.101765, 30.668705, 22.692568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525146, 31.242989, 22.938536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147110, 31.365717, 22.893530>,  <38.920288, 31.439354, 22.866526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147110, 31.365717, 22.893530>,  <39.525146, 31.242989, 22.938536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147110, 31.365717, 22.893530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016222, 0.387913, 0.921553,
		0.326399, 0.869128, -0.371591,
		-0.945093, 0.306822, -0.112515,
		38.863583, 31.457764, 22.859776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474056, 31.682415, 23.436615>,  <39.525146, 31.242989, 22.938536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474056, 31.682415, 23.436615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091812, 31.622992, 23.334843>,  <38.862465, 31.587337, 23.273779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091812, 31.622992, 23.334843>,  <39.474056, 31.682415, 23.436615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091812, 31.622992, 23.334843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286110, 0.261788, 0.921742,
		-0.070325, 0.953623, -0.292672,
		-0.955613, -0.148557, -0.254431,
		38.805130, 31.578424, 23.258512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212162, 32.204655, 23.596186>,  <39.474056, 31.682415, 23.436615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212162, 32.204655, 23.596186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913383, 31.939146, 23.611593>,  <38.734116, 31.779842, 23.620838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913383, 31.939146, 23.611593>,  <39.212162, 32.204655, 23.596186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913383, 31.939146, 23.611593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100297, 0.169756, 0.980369,
		-0.657276, 0.728419, -0.193373,
		-0.746946, -0.663768, 0.038518,
		38.689301, 31.740015, 23.623148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662518, 32.490620, 24.107807>,  <39.212162, 32.204655, 23.596186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662518, 32.490620, 24.107807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.565372, 32.104549, 24.068937>,  <38.507084, 31.872906, 24.045616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.565372, 32.104549, 24.068937>,  <38.662518, 32.490620, 24.107807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565372, 32.104549, 24.068937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336810, -0.010040, 0.941519,
		-0.909711, 0.261393, -0.322644,
		-0.242867, -0.965180, -0.097174,
		38.492512, 31.814995, 24.039785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083313, 32.438286, 24.501324>,  <38.662518, 32.490620, 24.107807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083313, 32.438286, 24.501324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184029, 32.054989, 24.447102>,  <38.244457, 31.825010, 24.414568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184029, 32.054989, 24.447102>,  <38.083313, 32.438286, 24.501324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184029, 32.054989, 24.447102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447421, -0.239459, 0.861669,
		-0.858148, -0.156307, -0.489030,
		0.251787, -0.958242, -0.135556,
		38.259563, 31.767517, 24.406435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549591, 32.136547, 24.729736>,  <38.083313, 32.438286, 24.501324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549591, 32.136547, 24.729736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801460, 31.825804, 24.730185>,  <37.952583, 31.639359, 24.730453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801460, 31.825804, 24.730185>,  <37.549591, 32.136547, 24.729736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801460, 31.825804, 24.730185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446961, -0.361098, 0.818434,
		-0.635402, -0.515849, -0.574599,
		0.629675, -0.776858, 0.001122,
		37.990364, 31.592747, 24.730522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139381, 31.587215, 24.890484>,  <37.549591, 32.136547, 24.729736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139381, 31.587215, 24.890484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503731, 31.470427, 25.007143>,  <37.722340, 31.400352, 25.077139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503731, 31.470427, 25.007143>,  <37.139381, 31.587215, 24.890484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503731, 31.470427, 25.007143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364439, -0.237523, 0.900426,
		-0.193622, -0.926465, -0.322759,
		0.910876, -0.291969, 0.291650,
		37.776993, 31.382835, 25.094637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035488, 30.949545, 25.294632>,  <37.139381, 31.587215, 24.890484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035488, 30.949545, 25.294632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394516, 31.103209, 25.381151>,  <37.609932, 31.195408, 25.433064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394516, 31.103209, 25.381151>,  <37.035488, 30.949545, 25.294632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394516, 31.103209, 25.381151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168238, -0.155033, 0.973479,
		0.407507, -0.910156, -0.074523,
		0.897571, 0.384161, 0.216300,
		37.663788, 31.218456, 25.446041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318222, 30.507860, 25.709925>,  <37.035488, 30.949545, 25.294632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318222, 30.507860, 25.709925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503654, 30.849625, 25.803801>,  <37.614914, 31.054684, 25.860126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503654, 30.849625, 25.803801>,  <37.318222, 30.507860, 25.709925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503654, 30.849625, 25.803801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240267, -0.133729, 0.961451,
		0.852858, -0.502095, 0.143293,
		0.463578, 0.854410, 0.234689,
		37.642727, 31.105947, 25.874207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818474, 30.307756, 26.115049>,  <37.318222, 30.507860, 25.709925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818474, 30.307756, 26.115049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755787, 30.692307, 26.205561>,  <37.718174, 30.923037, 26.259867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755787, 30.692307, 26.205561>,  <37.818474, 30.307756, 26.115049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755787, 30.692307, 26.205561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132468, -0.247497, 0.959790,
		0.978720, 0.120439, 0.166138,
		-0.156715, 0.961374, 0.226276,
		37.708771, 30.980719, 26.273443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274231, 30.477423, 26.650038>,  <37.818474, 30.307756, 26.115049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274231, 30.477423, 26.650038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000748, 30.768320, 26.674225>,  <37.836658, 30.942860, 26.688736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000748, 30.768320, 26.674225>,  <38.274231, 30.477423, 26.650038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000748, 30.768320, 26.674225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119122, -0.192968, 0.973947,
		0.719966, 0.658694, 0.218564,
		-0.683709, 0.727245, 0.060465,
		37.795635, 30.986494, 26.692364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.737370, 35.610435, 31.107546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387302, 35.423862, 31.056131>,  <40.177261, 35.311920, 31.025282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387302, 35.423862, 31.056131>,  <40.737370, 35.610435, 31.107546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387302, 35.423862, 31.056131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339105, 0.401865, 0.850595,
		-0.345089, 0.788002, -0.509869,
		-0.875169, -0.466430, -0.128536,
		40.124752, 35.283932, 31.017570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183411, 36.120564, 31.244984>,  <40.737370, 35.610435, 31.107546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183411, 36.120564, 31.244984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031597, 35.755089, 31.303141>,  <39.940510, 35.535805, 31.338036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031597, 35.755089, 31.303141>,  <40.183411, 36.120564, 31.244984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031597, 35.755089, 31.303141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352519, 0.288112, 0.890349,
		-0.855388, 0.286659, -0.431438,
		-0.379529, -0.913684, 0.145395,
		39.917740, 35.480984, 31.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584175, 36.248055, 31.512417>,  <40.183411, 36.120564, 31.244984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584175, 36.248055, 31.512417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649536, 35.867390, 31.616447>,  <39.688751, 35.638992, 31.678865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649536, 35.867390, 31.616447>,  <39.584175, 36.248055, 31.512417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649536, 35.867390, 31.616447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238568, 0.217681, 0.946414,
		-0.957280, -0.216690, -0.191467,
		0.163400, -0.951662, 0.260077,
		39.698555, 35.581890, 31.694471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951653, 36.032112, 31.714891>,  <39.584175, 36.248055, 31.512417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951653, 36.032112, 31.714891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194599, 35.761311, 31.881155>,  <39.340366, 35.598831, 31.980913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194599, 35.761311, 31.881155>,  <38.951653, 36.032112, 31.714891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194599, 35.761311, 31.881155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416829, 0.173834, 0.892208,
		-0.676281, -0.715159, -0.176613,
		0.607369, -0.677001, 0.415660,
		39.376808, 35.558208, 32.005852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504288, 35.640217, 32.077854>,  <38.951653, 36.032112, 31.714891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504288, 35.640217, 32.077854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868347, 35.594177, 32.237045>,  <39.086784, 35.566551, 32.332558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868347, 35.594177, 32.237045>,  <38.504288, 35.640217, 32.077854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868347, 35.594177, 32.237045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370640, 0.202944, 0.906333,
		-0.185087, -0.972402, 0.142048,
		0.910148, -0.115101, 0.397973,
		39.141392, 35.559647, 32.356438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386963, 35.161758, 32.530804>,  <38.504288, 35.640217, 32.077854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386963, 35.161758, 32.530804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.708019, 35.368462, 32.649960>,  <38.900654, 35.492481, 32.721451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.708019, 35.368462, 32.649960>,  <38.386963, 35.161758, 32.530804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708019, 35.368462, 32.649960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471406, 0.243588, 0.847609,
		0.365446, -0.820748, 0.439115,
		0.802637, 0.516756, 0.297887,
		38.948811, 35.523487, 32.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462605, 34.976231, 33.209549>,  <38.386963, 35.161758, 32.530804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462605, 34.976231, 33.209549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701477, 35.296467, 33.189861>,  <38.844803, 35.488609, 33.178047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701477, 35.296467, 33.189861>,  <38.462605, 34.976231, 33.209549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701477, 35.296467, 33.189861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263838, 0.254010, 0.930521,
		0.757469, -0.542708, 0.362918,
		0.597186, 0.800592, -0.049218,
		38.880634, 35.536644, 33.175095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959934, 34.859127, 33.789703>,  <38.462605, 34.976231, 33.209549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959934, 34.859127, 33.789703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918369, 35.241192, 33.678799>,  <38.893429, 35.470428, 33.612255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918369, 35.241192, 33.678799>,  <38.959934, 34.859127, 33.789703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918369, 35.241192, 33.678799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305666, 0.234606, 0.922783,
		0.946451, 0.180640, 0.267580,
		-0.103916, 0.955159, -0.277259,
		38.887196, 35.527740, 33.595619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165054, 35.144573, 34.302086>,  <38.959934, 34.859127, 33.789703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165054, 35.144573, 34.302086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942245, 35.424515, 34.123230>,  <38.808559, 35.592480, 34.015915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942245, 35.424515, 34.123230>,  <39.165054, 35.144573, 34.302086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942245, 35.424515, 34.123230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288574, 0.341752, 0.894389,
		0.778749, 0.627229, 0.011595,
		-0.557024, 0.699850, -0.447140,
		38.775139, 35.634468, 33.989086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228935, 35.791714, 34.738235>,  <39.165054, 35.144573, 34.302086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228935, 35.791714, 34.738235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912457, 35.876869, 34.508911>,  <38.722569, 35.927963, 34.371315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912457, 35.876869, 34.508911>,  <39.228935, 35.791714, 34.738235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912457, 35.876869, 34.508911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412524, 0.506290, 0.757294,
		0.451480, 0.835674, -0.312754,
		-0.791195, 0.212885, -0.573315,
		38.675098, 35.940735, 34.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145576, 36.602367, 34.767254>,  <39.228935, 35.791714, 34.738235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145576, 36.602367, 34.767254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.802673, 36.412395, 34.687714>,  <38.596931, 36.298412, 34.639988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.802673, 36.412395, 34.687714>,  <39.145576, 36.602367, 34.767254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802673, 36.412395, 34.687714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361631, 0.280470, 0.889134,
		-0.366505, 0.834132, -0.412186,
		-0.857261, -0.474932, -0.198854,
		38.545494, 36.269917, 34.628056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426720, 36.975285, 34.764355>,  <39.145576, 36.602367, 34.767254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426720, 36.975285, 34.764355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396210, 36.601738, 34.904114>,  <38.377903, 36.377609, 34.987968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396210, 36.601738, 34.904114>,  <38.426720, 36.975285, 34.764355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396210, 36.601738, 34.904114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206098, 0.357617, 0.910842,
		-0.975554, -0.002533, -0.219746,
		-0.076278, -0.933865, 0.349397,
		38.373325, 36.321579, 35.008934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630562, 37.150482, 35.432899>,  <38.426720, 36.975285, 34.764355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630562, 37.150482, 35.432899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878822, 37.401234, 35.621284>,  <39.027779, 37.551685, 35.734318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878822, 37.401234, 35.621284>,  <38.630562, 37.150482, 35.432899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878822, 37.401234, 35.621284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308174, 0.747350, -0.588640,
		-0.720984, 0.220203, 0.657034,
		0.620654, 0.626880, 0.470966,
		39.065018, 37.589298, 35.762573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247646, 37.594101, 35.898758>,  <38.630562, 37.150482, 35.432899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247646, 37.594101, 35.898758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576965, 37.711033, 35.704136>,  <38.774555, 37.781193, 35.587364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576965, 37.711033, 35.704136>,  <38.247646, 37.594101, 35.898758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576965, 37.711033, 35.704136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564958, 0.504871, -0.652632,
		0.054865, 0.812189, 0.580809,
		0.823294, 0.292326, -0.486552,
		38.823952, 37.798729, 35.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611519, 38.263897, 35.780743>,  <38.247646, 37.594101, 35.898758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611519, 38.263897, 35.780743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.698261, 38.648506, 35.713272>,  <38.750305, 38.879272, 35.672791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.698261, 38.648506, 35.713272>,  <38.611519, 38.263897, 35.780743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698261, 38.648506, 35.713272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078946, -0.154950, -0.984763,
		-0.973007, 0.226864, 0.042307,
		0.216852, 0.961521, -0.168677,
		38.763317, 38.936962, 35.662670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206455, 38.423794, 35.236572>,  <38.611519, 38.263897, 35.780743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206455, 38.423794, 35.236572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480934, 38.714607, 35.227146>,  <38.645622, 38.889095, 35.221489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480934, 38.714607, 35.227146>,  <38.206455, 38.423794, 35.236572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480934, 38.714607, 35.227146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033625, -0.000660, -0.999434,
		-0.726640, 0.686599, 0.023994,
		0.686195, 0.727036, -0.023566,
		38.686794, 38.932716, 35.220078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865028, 38.890007, 34.853413>,  <38.206455, 38.423794, 35.236572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865028, 38.890007, 34.853413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263248, 38.921349, 34.832466>,  <38.502182, 38.940155, 34.819901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263248, 38.921349, 34.832466>,  <37.865028, 38.890007, 34.853413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263248, 38.921349, 34.832466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048035, -0.056138, -0.997267,
		-0.081079, 0.995344, -0.052124,
		0.995549, 0.078354, -0.052363,
		38.561913, 38.944855, 34.816757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889194, 39.291477, 34.312733>,  <37.865028, 38.890007, 34.853413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889194, 39.291477, 34.312733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274803, 39.187099, 34.333000>,  <38.506168, 39.124474, 34.345161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274803, 39.187099, 34.333000>,  <37.889194, 39.291477, 34.312733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274803, 39.187099, 34.333000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040252, -0.045120, -0.998170,
		0.262751, 0.964299, -0.032994,
		0.964024, -0.260942, 0.050670,
		38.564011, 39.108818, 34.348202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196556, 39.609768, 33.775570>,  <37.889194, 39.291477, 34.312733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196556, 39.609768, 33.775570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495491, 39.365509, 33.880337>,  <38.674850, 39.218952, 33.943199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495491, 39.365509, 33.880337>,  <38.196556, 39.609768, 33.775570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495491, 39.365509, 33.880337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261756, -0.091744, -0.960763,
		0.610716, 0.786572, 0.091277,
		0.747335, -0.610646, 0.261919,
		38.719692, 39.182316, 33.958912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863815, 39.884533, 33.470455>,  <38.196556, 39.609768, 33.775570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863815, 39.884533, 33.470455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891251, 39.487053, 33.505909>,  <38.907711, 39.248566, 33.527184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891251, 39.487053, 33.505909>,  <38.863815, 39.884533, 33.470455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891251, 39.487053, 33.505909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043223, -0.085803, -0.995374,
		0.996708, 0.072102, 0.037066,
		0.068588, -0.993700, 0.088637,
		38.911827, 39.188942, 33.532501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430939, 39.676548, 33.061291>,  <38.863815, 39.884533, 33.470455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430939, 39.676548, 33.061291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209080, 39.349190, 33.121410>,  <39.075966, 39.152775, 33.157482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209080, 39.349190, 33.121410>,  <39.430939, 39.676548, 33.061291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209080, 39.349190, 33.121410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269652, -0.347667, -0.898006,
		0.787181, -0.457549, 0.413516,
		-0.554648, -0.818399, 0.150298,
		39.042686, 39.103672, 33.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720081, 39.147747, 32.650452>,  <39.430939, 39.676548, 33.061291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720081, 39.147747, 32.650452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356152, 39.001148, 32.728325>,  <39.137794, 38.913189, 32.775051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356152, 39.001148, 32.728325>,  <39.720081, 39.147747, 32.650452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356152, 39.001148, 32.728325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012621, -0.493351, -0.869739,
		0.414803, -0.788851, 0.453488,
		-0.909823, -0.366494, 0.194688,
		39.083206, 38.891201, 32.786732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792316, 38.426445, 32.503006>,  <39.720081, 39.147747, 32.650452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792316, 38.426445, 32.503006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413288, 38.552406, 32.481285>,  <39.185871, 38.627983, 32.468254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413288, 38.552406, 32.481285>,  <39.792316, 38.426445, 32.503006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413288, 38.552406, 32.481285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090235, -0.426686, -0.899887,
		-0.306549, -0.847805, 0.432729,
		-0.947568, 0.314907, -0.054298,
		39.129017, 38.646877, 32.464996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481575, 37.853344, 32.264755>,  <39.792316, 38.426445, 32.503006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481575, 37.853344, 32.264755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 38.169891, 32.159054>,  <39.128761, 38.359821, 32.095631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 38.169891, 32.159054>,  <39.481575, 37.853344, 32.264755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261066, 38.169891, 32.159054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246953, -0.457308, -0.854332,
		-0.796942, -0.405708, 0.447532,
		-0.551270, 0.791372, -0.264257,
		39.095684, 38.407303, 32.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927052, 37.540359, 32.025669>,  <39.481575, 37.853344, 32.264755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927052, 37.540359, 32.025669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933605, 37.911766, 31.877298>,  <38.937538, 38.134609, 31.788277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933605, 37.911766, 31.877298>,  <38.927052, 37.540359, 32.025669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933605, 37.911766, 31.877298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010942, -0.371119, -0.928521,
		-0.999806, 0.011153, -0.016240,
		0.016383, 0.928518, -0.370925,
		38.938519, 38.190323, 31.766022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514080, 37.437801, 31.474592>,  <38.927052, 37.540359, 32.025669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514080, 37.437801, 31.474592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683937, 37.795406, 31.417423>,  <38.785851, 38.009968, 31.383121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683937, 37.795406, 31.417423>,  <38.514080, 37.437801, 31.474592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683937, 37.795406, 31.417423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096055, -0.112482, -0.989000,
		-0.900253, 0.433697, 0.038110,
		0.424640, 0.894010, -0.142921,
		38.811329, 38.063610, 31.374546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088387, 37.776150, 31.031590>,  <38.514080, 37.437801, 31.474592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088387, 37.776150, 31.031590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461052, 37.919899, 31.010244>,  <38.684650, 38.006149, 30.997437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461052, 37.919899, 31.010244>,  <38.088387, 37.776150, 31.031590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461052, 37.919899, 31.010244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018353, -0.193242, -0.980980,
		-0.362854, 0.912965, -0.186632,
		0.931665, 0.359378, -0.053363,
		38.740551, 38.027714, 30.994236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109447, 38.310966, 30.521255>,  <38.088387, 37.776150, 31.031590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109447, 38.310966, 30.521255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465988, 38.135956, 30.568695>,  <38.679913, 38.030949, 30.597158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465988, 38.135956, 30.568695>,  <38.109447, 38.310966, 30.521255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465988, 38.135956, 30.568695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013270, -0.236334, -0.971581,
		0.453120, 0.867593, -0.204851,
		0.891350, -0.437525, 0.118600,
		38.733395, 38.004700, 30.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059402, 38.905151, 30.028090>,  <38.109447, 38.310966, 30.521255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059402, 38.905151, 30.028090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 39.011669, 29.863249>,  <37.501736, 39.075581, 29.764343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 39.011669, 29.863249>,  <38.059402, 38.905151, 30.028090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710861, 39.011669, 29.863249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397156, 0.110399, 0.911087,
		0.288113, 0.957549, 0.009564,
		-0.871354, 0.266294, -0.412103,
		37.449455, 39.091557, 29.739618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772507, 39.380142, 30.533518>,  <38.059402, 38.905151, 30.028090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772507, 39.380142, 30.533518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.449490, 39.265148, 30.327520>,  <37.255680, 39.196152, 30.203922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.449490, 39.265148, 30.327520>,  <37.772507, 39.380142, 30.533518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449490, 39.265148, 30.327520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586813, 0.303810, 0.750567,
		-0.059318, 0.908323, -0.414042,
		-0.807547, -0.287487, -0.514995,
		37.207226, 39.178902, 30.173021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231361, 39.896896, 30.560755>,  <37.772507, 39.380142, 30.533518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231361, 39.896896, 30.560755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020161, 39.565174, 30.487581>,  <36.893440, 39.366142, 30.443678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020161, 39.565174, 30.487581>,  <37.231361, 39.896896, 30.560755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020161, 39.565174, 30.487581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603455, 0.214818, 0.767916,
		-0.597540, 0.515854, -0.613873,
		-0.528003, -0.829306, -0.182932,
		36.861759, 39.316383, 30.432701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514877, 40.052620, 30.682234>,  <37.231361, 39.896896, 30.560755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514877, 40.052620, 30.682234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528023, 39.654961, 30.723379>,  <36.535912, 39.416363, 30.748066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528023, 39.654961, 30.723379>,  <36.514877, 40.052620, 30.682234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528023, 39.654961, 30.723379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715331, 0.048478, 0.697102,
		-0.698012, -0.096494, -0.709555,
		0.032868, -0.994152, 0.102863,
		36.537884, 39.356716, 30.754238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810959, 39.806606, 30.777218>,  <36.514877, 40.052620, 30.682234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810959, 39.806606, 30.777218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.040878, 39.506138, 30.907047>,  <36.178829, 39.325855, 30.984945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.040878, 39.506138, 30.907047>,  <35.810959, 39.806606, 30.777218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040878, 39.506138, 30.907047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494868, -0.003201, 0.868962,
		-0.651703, -0.660097, -0.373572,
		0.574795, -0.751174, 0.324575,
		36.213318, 39.280785, 31.004419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385029, 39.282005, 30.939827>,  <35.810959, 39.806606, 30.777218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385029, 39.282005, 30.939827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.719223, 39.195332, 31.141823>,  <35.919739, 39.143326, 31.263020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.719223, 39.195332, 31.141823>,  <35.385029, 39.282005, 30.939827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719223, 39.195332, 31.141823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543505, -0.190306, 0.817549,
		-0.081047, -0.957513, -0.276766,
		0.835484, -0.216684, 0.504989,
		35.969868, 39.130325, 31.293320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257015, 38.558002, 31.195366>,  <35.385029, 39.282005, 30.939827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257015, 38.558002, 31.195366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.534126, 38.735435, 31.422804>,  <35.700394, 38.841896, 31.559267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.534126, 38.735435, 31.422804>,  <35.257015, 38.558002, 31.195366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534126, 38.735435, 31.422804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460556, -0.334578, 0.822159,
		0.554931, -0.831442, -0.027495,
		0.692777, 0.443579, 0.568593,
		35.741959, 38.868507, 31.593382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425987, 38.083687, 31.659519>,  <35.257015, 38.558002, 31.195366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425987, 38.083687, 31.659519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.556000, 38.420998, 31.830744>,  <35.634007, 38.623386, 31.933479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.556000, 38.420998, 31.830744>,  <35.425987, 38.083687, 31.659519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556000, 38.420998, 31.830744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432903, -0.269760, 0.860130,
		0.840805, -0.464874, 0.277380,
		0.325026, 0.843280, 0.428061,
		35.653507, 38.673981, 31.959162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833443, 37.903545, 32.189137>,  <35.425987, 38.083687, 31.659519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833443, 37.903545, 32.189137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706398, 38.272846, 32.275608>,  <35.630173, 38.494427, 32.327492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706398, 38.272846, 32.275608>,  <35.833443, 37.903545, 32.189137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706398, 38.272846, 32.275608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390129, -0.335023, 0.857647,
		0.864248, 0.188060, 0.466593,
		-0.317609, 0.923251, 0.216175,
		35.611115, 38.549820, 32.340462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882736, 37.864796, 32.931160>,  <35.833443, 37.903545, 32.189137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882736, 37.864796, 32.931160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658592, 38.187092, 32.854446>,  <35.524105, 38.380470, 32.808418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658592, 38.187092, 32.854446>,  <35.882736, 37.864796, 32.931160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658592, 38.187092, 32.854446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428289, -0.083693, 0.899758,
		0.708918, 0.586329, 0.391988,
		-0.560360, 0.805739, -0.191787,
		35.490482, 38.428814, 32.796909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846127, 38.250751, 33.515484>,  <35.882736, 37.864796, 32.931160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846127, 38.250751, 33.515484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527508, 38.374809, 33.307899>,  <35.336334, 38.449245, 33.183350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527508, 38.374809, 33.307899>,  <35.846127, 38.250751, 33.515484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527508, 38.374809, 33.307899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578233, -0.140208, 0.803734,
		0.176512, 0.940293, 0.291019,
		-0.796548, 0.310146, -0.518961,
		35.288544, 38.467854, 33.152210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546558, 38.656284, 33.901520>,  <35.846127, 38.250751, 33.515484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546558, 38.656284, 33.901520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227005, 38.592438, 33.669552>,  <35.035275, 38.554131, 33.530373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227005, 38.592438, 33.669552>,  <35.546558, 38.656284, 33.901520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227005, 38.592438, 33.669552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589158, 0.013470, 0.807905,
		-0.121147, 0.987087, -0.104803,
		-0.798884, -0.159621, -0.579918,
		34.987339, 38.544552, 33.495575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.732018, 37.782223, 26.391216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339920, 37.704094, 26.403742>,  <38.104664, 37.657219, 26.411257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339920, 37.704094, 26.403742>,  <38.732018, 37.782223, 26.391216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339920, 37.704094, 26.403742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117490, 0.702218, 0.702201,
		-0.159144, 0.684646, -0.711290,
		-0.980240, -0.195320, 0.031315,
		38.045849, 37.645496, 26.413136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394993, 38.438599, 26.418236>,  <38.732018, 37.782223, 26.391216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394993, 38.438599, 26.418236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122223, 38.171726, 26.538137>,  <37.958561, 38.011604, 26.610079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122223, 38.171726, 26.538137>,  <38.394993, 38.438599, 26.418236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122223, 38.171726, 26.538137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285820, 0.620304, 0.730432,
		-0.673268, 0.412422, -0.613692,
		-0.681922, -0.667182, 0.299752,
		37.917648, 37.971573, 26.628063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768764, 38.806839, 26.485970>,  <38.394993, 38.438599, 26.418236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768764, 38.806839, 26.485970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759022, 38.468948, 26.699829>,  <37.753178, 38.266216, 26.828144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759022, 38.468948, 26.699829>,  <37.768764, 38.806839, 26.485970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759022, 38.468948, 26.699829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441494, 0.488917, 0.752359,
		-0.896934, -0.217719, -0.384848,
		-0.024356, -0.844724, 0.534648,
		37.751717, 38.215530, 26.860224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025665, 38.817242, 26.772573>,  <37.768764, 38.806839, 26.485970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025665, 38.817242, 26.772573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306736, 38.619137, 26.976908>,  <37.475380, 38.500275, 27.099508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306736, 38.619137, 26.976908>,  <37.025665, 38.817242, 26.772573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306736, 38.619137, 26.976908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377381, 0.349227, 0.857685,
		-0.603180, -0.795458, 0.058490,
		0.702679, -0.495265, 0.510837,
		37.517540, 38.470558, 27.130159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720646, 38.529213, 27.342247>,  <37.025665, 38.817242, 26.772573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720646, 38.529213, 27.342247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101799, 38.494423, 27.458492>,  <37.330490, 38.473549, 27.528240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101799, 38.494423, 27.458492>,  <36.720646, 38.529213, 27.342247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101799, 38.494423, 27.458492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257383, 0.275213, 0.926289,
		-0.160542, -0.957441, 0.239859,
		0.952880, -0.086972, 0.290613,
		37.387665, 38.468330, 27.545675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714699, 38.132843, 27.968681>,  <36.720646, 38.529213, 27.342247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714699, 38.132843, 27.968681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053814, 38.343185, 27.996193>,  <37.257282, 38.469391, 28.012699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053814, 38.343185, 27.996193>,  <36.714699, 38.132843, 27.968681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053814, 38.343185, 27.996193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184583, 0.171001, 0.967826,
		0.497175, -0.833208, 0.242037,
		0.847789, 0.525854, 0.068779,
		37.308151, 38.500942, 28.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031799, 37.962440, 28.571423>,  <36.714699, 38.132843, 27.968681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031799, 37.962440, 28.571423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232605, 38.303551, 28.513790>,  <37.353088, 38.508217, 28.479210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232605, 38.303551, 28.513790>,  <37.031799, 37.962440, 28.571423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232605, 38.303551, 28.513790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076598, 0.209782, 0.974743,
		0.861461, -0.478297, 0.170634,
		0.502013, 0.852774, -0.144082,
		37.383209, 38.559383, 28.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530624, 37.983093, 29.187378>,  <37.031799, 37.962440, 28.571423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530624, 37.983093, 29.187378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517536, 38.360733, 29.056162>,  <37.509686, 38.587315, 28.977432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517536, 38.360733, 29.056162>,  <37.530624, 37.983093, 29.187378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517536, 38.360733, 29.056162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064815, 0.325523, 0.943310,
		0.997361, 0.052125, 0.050541,
		-0.032718, 0.944096, -0.328042,
		37.507721, 38.643963, 28.957748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009716, 38.412495, 29.513235>,  <37.530624, 37.983093, 29.187378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009716, 38.412495, 29.513235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733746, 38.679665, 29.401606>,  <37.568165, 38.839966, 29.334627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733746, 38.679665, 29.401606>,  <38.009716, 38.412495, 29.513235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733746, 38.679665, 29.401606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150727, 0.244522, 0.957857,
		0.708016, 0.702913, -0.068027,
		-0.689924, 0.667924, -0.279074,
		37.526768, 38.880043, 29.317883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765095, 38.614456, 29.557495>,  <38.009716, 38.412495, 29.513235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765095, 38.614456, 29.557495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999699, 38.392765, 29.793747>,  <39.140461, 38.259750, 29.935497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999699, 38.392765, 29.793747>,  <38.765095, 38.614456, 29.557495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999699, 38.392765, 29.793747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405817, -0.429999, -0.806482,
		0.700945, 0.712694, -0.027282,
		0.586506, -0.554228, 0.590629,
		39.175652, 38.226498, 29.970936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455746, 38.764404, 29.312103>,  <38.765095, 38.614456, 29.557495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455746, 38.764404, 29.312103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436317, 38.413681, 29.503454>,  <39.424660, 38.203247, 29.618265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436317, 38.413681, 29.503454>,  <39.455746, 38.764404, 29.312103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436317, 38.413681, 29.503454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395418, -0.456691, -0.796918,
		0.917216, 0.150453, 0.368888,
		-0.048568, -0.876811, 0.478376,
		39.421745, 38.150639, 29.646967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139668, 38.489582, 29.227667>,  <39.455746, 38.764404, 29.312103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139668, 38.489582, 29.227667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901707, 38.184273, 29.328465>,  <39.758930, 38.001087, 29.388943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901707, 38.184273, 29.328465>,  <40.139668, 38.489582, 29.227667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901707, 38.184273, 29.328465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347655, -0.526999, -0.775505,
		0.724722, -0.373746, 0.578871,
		-0.594906, -0.763273, 0.251993,
		39.723236, 37.955292, 29.404062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574337, 37.996948, 29.092714>,  <40.139668, 38.489582, 29.227667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574337, 37.996948, 29.092714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212120, 37.829727, 29.121637>,  <39.994789, 37.729397, 29.138992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212120, 37.829727, 29.121637>,  <40.574337, 37.996948, 29.092714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212120, 37.829727, 29.121637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275661, -0.709323, -0.648747,
		0.322499, -0.567534, 0.757561,
		-0.905541, -0.418051, 0.072309,
		39.940456, 37.704311, 29.143330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715103, 37.274513, 29.044609>,  <40.574337, 37.996948, 29.092714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715103, 37.274513, 29.044609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332939, 37.301865, 28.929705>,  <40.103642, 37.318275, 28.860762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332939, 37.301865, 28.929705>,  <40.715103, 37.274513, 29.044609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332939, 37.301865, 28.929705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157199, -0.705720, -0.690831,
		-0.249964, -0.705183, 0.663502,
		-0.955409, 0.068381, -0.287259,
		40.046318, 37.322380, 28.843527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461929, 36.620930, 29.026337>,  <40.715103, 37.274513, 29.044609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461929, 36.620930, 29.026337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236774, 36.846661, 28.784777>,  <40.101681, 36.982098, 28.639841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236774, 36.846661, 28.784777>,  <40.461929, 36.620930, 29.026337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236774, 36.846661, 28.784777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064946, -0.698183, -0.712967,
		-0.823980, -0.440539, 0.356346,
		-0.562885, 0.564327, -0.603900,
		40.067909, 37.015957, 28.603607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050484, 36.148098, 28.635592>,  <40.461929, 36.620930, 29.026337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050484, 36.148098, 28.635592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012856, 36.497147, 28.443890>,  <39.990280, 36.706577, 28.328869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012856, 36.497147, 28.443890>,  <40.050484, 36.148098, 28.635592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012856, 36.497147, 28.443890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019062, -0.482879, -0.875480,
		-0.995383, -0.073221, 0.062058,
		-0.094070, 0.872621, -0.479254,
		39.984634, 36.758934, 28.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651131, 35.980740, 28.058165>,  <40.050484, 36.148098, 28.635592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651131, 35.980740, 28.058165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801121, 36.336071, 27.952133>,  <39.891117, 36.549271, 27.888514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801121, 36.336071, 27.952133>,  <39.651131, 35.980740, 28.058165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801121, 36.336071, 27.952133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256755, -0.374276, -0.891064,
		-0.890768, 0.266070, -0.368428,
		0.374979, 0.888327, -0.265079,
		39.913616, 36.602570, 27.872610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306789, 36.198395, 27.416117>,  <39.651131, 35.980740, 28.058165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306789, 36.198395, 27.416117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656483, 36.391911, 27.432474>,  <39.866299, 36.508018, 27.442289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656483, 36.391911, 27.432474>,  <39.306789, 36.198395, 27.416117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656483, 36.391911, 27.432474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205496, -0.292395, -0.933957,
		-0.439877, 0.824898, -0.355037,
		0.874231, 0.483785, 0.040896,
		39.918751, 36.537045, 27.444742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390129, 36.345898, 26.706007>,  <39.306789, 36.198395, 27.416117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390129, 36.345898, 26.706007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744308, 36.413540, 26.879162>,  <39.956814, 36.454124, 26.983055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744308, 36.413540, 26.879162>,  <39.390129, 36.345898, 26.706007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744308, 36.413540, 26.879162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458990, -0.464309, -0.757460,
		0.072902, 0.869380, -0.488737,
		0.885445, 0.169105, 0.432886,
		40.009941, 36.464272, 27.009027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834766, 36.280216, 26.163141>,  <39.390129, 36.345898, 26.706007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834766, 36.280216, 26.163141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110710, 36.249783, 26.451115>,  <40.276276, 36.231522, 26.623898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110710, 36.249783, 26.451115>,  <39.834766, 36.280216, 26.163141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110710, 36.249783, 26.451115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632061, -0.421571, -0.650213,
		0.352972, 0.903598, -0.242737,
		0.689862, -0.076083, 0.719932,
		40.317669, 36.226959, 26.667093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445026, 36.585770, 25.932955>,  <39.834766, 36.280216, 26.163141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445026, 36.585770, 25.932955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527855, 36.316406, 26.216824>,  <40.577553, 36.154789, 26.387146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527855, 36.316406, 26.216824>,  <40.445026, 36.585770, 25.932955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527855, 36.316406, 26.216824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587857, -0.494191, -0.640468,
		0.782014, 0.549810, 0.293537,
		0.207072, -0.673412, 0.709674,
		40.589977, 36.114384, 26.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226200, 36.588200, 26.039337>,  <40.445026, 36.585770, 25.932955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226200, 36.588200, 26.039337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055080, 36.246147, 26.156464>,  <40.952408, 36.040916, 26.226740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055080, 36.246147, 26.156464>,  <41.226200, 36.588200, 26.039337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055080, 36.246147, 26.156464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656529, -0.516638, -0.549595,
		0.621257, -0.042871, 0.782434,
		-0.427797, -0.855130, 0.292818,
		40.926743, 35.989609, 26.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795528, 36.251549, 26.218603>,  <41.226200, 36.588200, 26.039337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795528, 36.251549, 26.218603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528893, 35.953579, 26.207602>,  <41.368912, 35.774799, 26.201000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528893, 35.953579, 26.207602>,  <41.795528, 36.251549, 26.218603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528893, 35.953579, 26.207602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665685, -0.578267, -0.471668,
		0.335449, -0.332718, 0.881347,
		-0.666586, -0.744920, -0.027506,
		41.328918, 35.730103, 26.199350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.998688, 31.319542, 24.546539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878849, 31.699455, 24.582655>,  <35.806946, 31.927404, 24.604324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878849, 31.699455, 24.582655>,  <35.998688, 31.319542, 24.546539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878849, 31.699455, 24.582655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050236, -0.110207, 0.992638,
		0.952744, 0.292852, 0.080731,
		-0.299593, 0.949785, 0.090288,
		35.788971, 31.984390, 24.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196487, 31.456465, 25.174957>,  <35.998688, 31.319542, 24.546539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196487, 31.456465, 25.174957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960613, 31.774445, 25.117929>,  <35.819088, 31.965233, 25.083714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960613, 31.774445, 25.117929>,  <36.196487, 31.456465, 25.174957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960613, 31.774445, 25.117929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156782, 0.060494, 0.985779,
		0.792271, 0.603649, 0.088962,
		-0.589683, 0.794952, -0.142569,
		35.783707, 32.012932, 25.075159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390804, 31.959602, 25.624140>,  <36.196487, 31.456465, 25.174957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390804, 31.959602, 25.624140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020905, 32.089100, 25.544109>,  <35.798965, 32.166798, 25.496090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020905, 32.089100, 25.544109>,  <36.390804, 31.959602, 25.624140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020905, 32.089100, 25.544109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155814, 0.157578, 0.975137,
		0.347221, 0.932931, -0.095276,
		-0.924748, 0.323742, -0.200078,
		35.743481, 32.186222, 25.484087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350826, 32.693211, 25.806860>,  <36.390804, 31.959602, 25.624140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350826, 32.693211, 25.806860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986557, 32.528027, 25.811523>,  <35.767994, 32.428917, 25.814322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986557, 32.528027, 25.811523>,  <36.350826, 32.693211, 25.806860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986557, 32.528027, 25.811523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127981, 0.308834, 0.942466,
		-0.392802, 0.856788, -0.334099,
		-0.910674, -0.412960, 0.011658,
		35.713356, 32.404137, 25.815022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095818, 33.036407, 26.371202>,  <36.350826, 32.693211, 25.806860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095818, 33.036407, 26.371202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 32.807667, 26.286747>,  <35.588474, 32.670422, 26.236074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 32.807667, 26.286747>,  <36.095818, 33.036407, 26.371202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778728, 32.807667, 26.286747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498022, 0.407830, 0.765277,
		-0.351514, 0.711805, -0.608089,
		-0.792724, -0.571847, -0.211137,
		35.540913, 32.636112, 26.223406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368855, 33.449085, 26.302500>,  <36.095818, 33.036407, 26.371202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368855, 33.449085, 26.302500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.299873, 33.071976, 26.416645>,  <35.258484, 32.845711, 26.485132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.299873, 33.071976, 26.416645>,  <35.368855, 33.449085, 26.302500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299873, 33.071976, 26.416645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490795, 0.333424, 0.804953,
		-0.854037, -0.001237, -0.520211,
		-0.172455, -0.942776, 0.285363,
		35.248138, 32.789143, 26.502254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759403, 33.450031, 26.703014>,  <35.368855, 33.449085, 26.302500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759403, 33.450031, 26.703014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933956, 33.107861, 26.814598>,  <35.038689, 32.902557, 26.881548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933956, 33.107861, 26.814598>,  <34.759403, 33.450031, 26.703014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933956, 33.107861, 26.814598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342651, 0.128679, 0.930609,
		-0.831960, -0.501690, -0.236958,
		0.436386, -0.855423, 0.278960,
		35.064873, 32.851234, 26.898287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266788, 33.109135, 27.084612>,  <34.759403, 33.450031, 26.703014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266788, 33.109135, 27.084612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600372, 32.910522, 27.180920>,  <34.800522, 32.791355, 27.238705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600372, 32.910522, 27.180920>,  <34.266788, 33.109135, 27.084612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600372, 32.910522, 27.180920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244744, 0.058237, 0.967837,
		-0.494579, -0.866065, -0.072955,
		0.833961, -0.496527, 0.240767,
		34.850559, 32.761562, 27.253149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110092, 32.530762, 27.451071>,  <34.266788, 33.109135, 27.084612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110092, 32.530762, 27.451071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493580, 32.576447, 27.555237>,  <34.723671, 32.603859, 27.617737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493580, 32.576447, 27.555237>,  <34.110092, 32.530762, 27.451071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493580, 32.576447, 27.555237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257639, -0.038699, 0.965466,
		0.120349, -0.992702, -0.007675,
		0.958717, 0.114216, 0.260416,
		34.781197, 32.610710, 27.633362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232025, 31.925726, 27.929348>,  <34.110092, 32.530762, 27.451071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232025, 31.925726, 27.929348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509064, 32.207962, 27.989283>,  <34.675285, 32.377304, 28.025244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509064, 32.207962, 27.989283>,  <34.232025, 31.925726, 27.929348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509064, 32.207962, 27.989283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166617, -0.045617, 0.984966,
		0.701818, -0.707150, 0.085969,
		0.692597, 0.705591, 0.149838,
		34.716843, 32.419640, 28.034235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591454, 31.685444, 28.545279>,  <34.232025, 31.925726, 27.929348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591454, 31.685444, 28.545279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698990, 32.068203, 28.501331>,  <34.763512, 32.297859, 28.474964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698990, 32.068203, 28.501331>,  <34.591454, 31.685444, 28.545279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698990, 32.068203, 28.501331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106112, 0.142795, 0.984048,
		0.957323, -0.252890, 0.139927,
		0.268836, 0.956899, -0.109866,
		34.779640, 32.355274, 28.468372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136417, 31.713156, 28.918930>,  <34.591454, 31.685444, 28.545279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136417, 31.713156, 28.918930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.028698, 32.097073, 28.887243>,  <34.964066, 32.327423, 28.868231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.028698, 32.097073, 28.887243>,  <35.136417, 31.713156, 28.918930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028698, 32.097073, 28.887243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160229, 0.036454, 0.986407,
		0.949633, 0.278334, 0.143969,
		-0.269302, 0.959792, -0.079215,
		34.947906, 32.385010, 28.863480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507874, 32.137840, 29.502628>,  <35.136417, 31.713156, 28.918930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507874, 32.137840, 29.502628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198425, 32.359833, 29.380314>,  <35.012756, 32.493027, 29.306925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198425, 32.359833, 29.380314>,  <35.507874, 32.137840, 29.502628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198425, 32.359833, 29.380314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100080, 0.369502, 0.923825,
		0.625694, 0.745294, -0.230312,
		-0.773622, 0.554982, -0.305784,
		34.966339, 32.526329, 29.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629448, 32.675434, 29.905859>,  <35.507874, 32.137840, 29.502628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629448, 32.675434, 29.905859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241760, 32.667477, 29.807707>,  <35.009148, 32.662701, 29.748816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241760, 32.667477, 29.807707>,  <35.629448, 32.675434, 29.905859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241760, 32.667477, 29.807707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242986, 0.237452, 0.940518,
		0.039551, 0.971195, -0.234979,
		-0.969223, -0.019898, -0.245378,
		34.950993, 32.661507, 29.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245659, 32.950939, 29.809351>,  <35.629448, 32.675434, 29.905859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245659, 32.950939, 29.809351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465034, 32.721897, 30.053099>,  <36.596661, 32.584473, 30.199348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465034, 32.721897, 30.053099>,  <36.245659, 32.950939, 29.809351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465034, 32.721897, 30.053099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293020, -0.550932, -0.781417,
		0.783169, 0.607118, -0.134367,
		0.548439, -0.572610, 0.609371,
		36.629566, 32.550114, 30.235910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931602, 33.005432, 29.651117>,  <36.245659, 32.950939, 29.809351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931602, 33.005432, 29.651117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899685, 32.645248, 29.822138>,  <36.880535, 32.429138, 29.924751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899685, 32.645248, 29.822138>,  <36.931602, 33.005432, 29.651117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899685, 32.645248, 29.822138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274373, -0.432192, -0.859029,
		0.958308, 0.048767, 0.281547,
		-0.079790, -0.900462, 0.427553,
		36.875748, 32.375111, 29.950403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556221, 32.710087, 29.607407>,  <36.931602, 33.005432, 29.651117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556221, 32.710087, 29.607407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297970, 32.409912, 29.663980>,  <37.143021, 32.229805, 29.697926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297970, 32.409912, 29.663980>,  <37.556221, 32.710087, 29.607407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297970, 32.409912, 29.663980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366401, -0.466912, -0.804825,
		0.670011, -0.467795, 0.576414,
		-0.645628, -0.750440, 0.141435,
		37.104282, 32.184780, 29.706411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910168, 32.064529, 29.596931>,  <37.556221, 32.710087, 29.607407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910168, 32.064529, 29.596931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533489, 31.959730, 29.512482>,  <37.307484, 31.896851, 29.461811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533489, 31.959730, 29.512482>,  <37.910168, 32.064529, 29.596931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533489, 31.959730, 29.512482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323359, -0.531193, -0.783117,
		0.093025, -0.805725, 0.584939,
		-0.941693, -0.261995, -0.211125,
		37.250980, 31.881132, 29.449144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869770, 31.339243, 29.463255>,  <37.910168, 32.064529, 29.596931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869770, 31.339243, 29.463255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553410, 31.500252, 29.278885>,  <37.363594, 31.596857, 29.168262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553410, 31.500252, 29.278885>,  <37.869770, 31.339243, 29.463255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553410, 31.500252, 29.278885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245620, -0.481069, -0.841572,
		-0.560491, -0.778811, 0.281609,
		-0.790899, 0.402525, -0.460926,
		37.316139, 31.621008, 29.140608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727989, 30.816753, 29.045927>,  <37.869770, 31.339243, 29.463255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727989, 30.816753, 29.045927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516167, 31.115480, 28.885010>,  <37.389072, 31.294716, 28.788460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516167, 31.115480, 28.885010>,  <37.727989, 30.816753, 29.045927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516167, 31.115480, 28.885010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226068, -0.332846, -0.915482,
		-0.817599, -0.575740, 0.007428,
		-0.529551, 0.746818, -0.402291,
		37.357300, 31.339525, 28.764322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249817, 30.504570, 28.567747>,  <37.727989, 30.816753, 29.045927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249817, 30.504570, 28.567747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287731, 30.881603, 28.439651>,  <37.310482, 31.107822, 28.362795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287731, 30.881603, 28.439651>,  <37.249817, 30.504570, 28.567747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287731, 30.881603, 28.439651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079704, -0.327838, -0.941366,
		-0.992302, 0.063706, -0.106202,
		0.094788, 0.942583, -0.320237,
		37.316166, 31.164379, 28.343580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952381, 30.497202, 27.897503>,  <37.249817, 30.504570, 28.567747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952381, 30.497202, 27.897503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132240, 30.854418, 27.890594>,  <37.240154, 31.068747, 27.886450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132240, 30.854418, 27.890594>,  <36.952381, 30.497202, 27.897503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132240, 30.854418, 27.890594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259886, -0.149305, -0.954027,
		-0.854563, 0.424486, -0.299223,
		0.449646, 0.893040, -0.017273,
		37.267136, 31.122330, 27.885412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702354, 30.793526, 27.371214>,  <36.952381, 30.497202, 27.897503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702354, 30.793526, 27.371214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023510, 31.021601, 27.440796>,  <37.216202, 31.158445, 27.482546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023510, 31.021601, 27.440796>,  <36.702354, 30.793526, 27.371214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023510, 31.021601, 27.440796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248982, -0.055604, -0.966911,
		-0.541649, 0.819630, -0.186610,
		0.802885, 0.570189, 0.173955,
		37.264374, 31.192657, 27.492983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603374, 31.461029, 26.956751>,  <36.702354, 30.793526, 27.371214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603374, 31.461029, 26.956751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989536, 31.374723, 27.015316>,  <37.221233, 31.322939, 27.050455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989536, 31.374723, 27.015316>,  <36.603374, 31.461029, 26.956751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989536, 31.374723, 27.015316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165842, 0.074776, -0.983313,
		0.201217, 0.973578, 0.107972,
		0.965406, -0.215766, 0.146414,
		37.279160, 31.309994, 27.059240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008415, 32.038658, 26.741402>,  <36.603374, 31.461029, 26.956751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008415, 32.038658, 26.741402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238087, 31.711479, 26.727024>,  <37.375889, 31.515173, 26.718397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238087, 31.711479, 26.727024>,  <37.008415, 32.038658, 26.741402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238087, 31.711479, 26.727024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273112, 0.232737, -0.933404,
		0.771837, 0.526120, 0.357022,
		0.574175, -0.817943, -0.035945,
		37.410339, 31.466097, 26.716240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677109, 32.260281, 26.395052>,  <37.008415, 32.038658, 26.741402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677109, 32.260281, 26.395052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669235, 31.860359, 26.395216>,  <37.664513, 31.620405, 26.395315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669235, 31.860359, 26.395216>,  <37.677109, 32.260281, 26.395052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669235, 31.860359, 26.395216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505915, -0.010313, -0.862522,
		0.862359, -0.016767, 0.506019,
		-0.019681, -0.999806, 0.000410,
		37.663330, 31.560417, 26.395340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374237, 32.124832, 26.237411>,  <37.677109, 32.260281, 26.395052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374237, 32.124832, 26.237411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127373, 31.828979, 26.130032>,  <37.979256, 31.651468, 26.065603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127373, 31.828979, 26.130032>,  <38.374237, 32.124832, 26.237411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127373, 31.828979, 26.130032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482643, -0.086394, -0.871546,
		0.621427, -0.667448, 0.410295,
		-0.617159, -0.739627, -0.268452,
		37.942226, 31.607092, 26.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777298, 31.780704, 25.834509>,  <38.374237, 32.124832, 26.237411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777298, 31.780704, 25.834509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.435265, 31.608112, 25.719503>,  <38.230045, 31.504557, 25.650501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.435265, 31.608112, 25.719503>,  <38.777298, 31.780704, 25.834509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435265, 31.608112, 25.719503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426163, -0.269007, -0.863725,
		0.295339, -0.861080, 0.413904,
		-0.855079, -0.431482, -0.287512,
		38.178741, 31.478668, 25.633249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417175, 31.711174, 26.129669>,  <38.777298, 31.780704, 25.834509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417175, 31.711174, 26.129669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661350, 32.025372, 26.088957>,  <39.807858, 32.213890, 26.064529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661350, 32.025372, 26.088957>,  <39.417175, 31.711174, 26.129669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661350, 32.025372, 26.088957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240576, 0.306307, 0.921032,
		0.754642, -0.537749, 0.375953,
		0.610441, 0.785495, -0.101783,
		39.844482, 32.261021, 26.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762100, 31.840849, 26.797680>,  <39.417175, 31.711174, 26.129669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762100, 31.840849, 26.797680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.833263, 32.195633, 26.627197>,  <39.875961, 32.408504, 26.524908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.833263, 32.195633, 26.627197>,  <39.762100, 31.840849, 26.797680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833263, 32.195633, 26.627197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036998, 0.438838, 0.897804,
		0.983351, -0.143958, 0.110888,
		0.177908, 0.886959, -0.426206,
		39.886635, 32.461720, 26.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301910, 32.190941, 27.169132>,  <39.762100, 31.840849, 26.797680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301910, 32.190941, 27.169132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125774, 32.494102, 26.976599>,  <40.020092, 32.675999, 26.861078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125774, 32.494102, 26.976599>,  <40.301910, 32.190941, 27.169132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125774, 32.494102, 26.976599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147081, 0.589760, 0.794072,
		0.885700, 0.278869, -0.371170,
		-0.440344, 0.757902, -0.481334,
		39.993671, 32.721474, 26.832199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710632, 32.794121, 27.283800>,  <40.301910, 32.190941, 27.169132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710632, 32.794121, 27.283800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351509, 32.920033, 27.160603>,  <40.136036, 32.995579, 27.086683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351509, 32.920033, 27.160603>,  <40.710632, 32.794121, 27.283800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351509, 32.920033, 27.160603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070865, 0.586988, 0.806489,
		0.434657, 0.745894, -0.504693,
		-0.897804, 0.314781, -0.307996,
		40.082169, 33.014465, 27.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732944, 33.431816, 27.529253>,  <40.710632, 32.794121, 27.283800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732944, 33.431816, 27.529253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348499, 33.357193, 27.447809>,  <40.117832, 33.312420, 27.398943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348499, 33.357193, 27.447809>,  <40.732944, 33.431816, 27.529253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348499, 33.357193, 27.447809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272936, 0.529475, 0.803220,
		-0.042044, 0.827557, -0.559804,
		-0.961113, -0.186561, -0.203609,
		40.060165, 33.301224, 27.386726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431286, 34.087349, 27.520111>,  <40.732944, 33.431816, 27.529253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431286, 34.087349, 27.520111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.138378, 33.824757, 27.592571>,  <39.962635, 33.667202, 27.636047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.138378, 33.824757, 27.592571>,  <40.431286, 34.087349, 27.520111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138378, 33.824757, 27.592571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237237, 0.495243, 0.835735,
		-0.638358, 0.569007, -0.518392,
		-0.732269, -0.656480, 0.181153,
		39.918697, 33.627811, 27.646917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920879, 34.470535, 27.626596>,  <40.431286, 34.087349, 27.520111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920879, 34.470535, 27.626596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828434, 34.138180, 27.829067>,  <39.772964, 33.938766, 27.950550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828434, 34.138180, 27.829067>,  <39.920879, 34.470535, 27.626596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828434, 34.138180, 27.829067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191949, 0.548977, 0.813499,
		-0.953803, 0.090852, -0.286365,
		-0.231116, -0.830885, 0.506177,
		39.759098, 33.888916, 27.980921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423958, 34.717552, 28.088444>,  <39.920879, 34.470535, 27.626596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423958, 34.717552, 28.088444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.512489, 34.357445, 28.238396>,  <39.565609, 34.141380, 28.328367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.512489, 34.357445, 28.238396>,  <39.423958, 34.717552, 28.088444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512489, 34.357445, 28.238396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042157, 0.392885, 0.918621,
		-0.974289, -0.187510, 0.124907,
		0.221324, -0.900268, 0.374878,
		39.578888, 34.087364, 28.350859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937622, 34.515186, 28.683641>,  <39.423958, 34.717552, 28.088444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937622, 34.515186, 28.683641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259922, 34.292908, 28.765587>,  <39.453300, 34.159542, 28.814754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259922, 34.292908, 28.765587>,  <38.937622, 34.515186, 28.683641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259922, 34.292908, 28.765587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041873, 0.398491, 0.916216,
		-0.590776, -0.729661, 0.344352,
		0.805749, -0.555697, 0.204866,
		39.501648, 34.126198, 28.827047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800365, 34.151535, 29.347439>,  <38.937622, 34.515186, 28.683641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800365, 34.151535, 29.347439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197773, 34.121300, 29.313486>,  <39.436218, 34.103161, 29.293114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197773, 34.121300, 29.313486>,  <38.800365, 34.151535, 29.347439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197773, 34.121300, 29.313486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094586, 0.135726, 0.986221,
		-0.063025, -0.987859, 0.141996,
		0.993520, -0.075587, -0.084883,
		39.495831, 34.098625, 29.288021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056442, 33.733521, 29.908087>,  <38.800365, 34.151535, 29.347439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056442, 33.733521, 29.908087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366573, 33.945972, 29.771397>,  <39.552650, 34.073441, 29.689383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366573, 33.945972, 29.771397>,  <39.056442, 33.733521, 29.908087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366573, 33.945972, 29.771397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160873, 0.357143, 0.920091,
		0.610729, -0.768345, 0.191459,
		0.775326, 0.531126, -0.341724,
		39.599171, 34.105309, 29.668879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454472, 33.566887, 30.324205>,  <39.056442, 33.733521, 29.908087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454472, 33.566887, 30.324205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617599, 33.895210, 30.164228>,  <39.715477, 34.092205, 30.068243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617599, 33.895210, 30.164228>,  <39.454472, 33.566887, 30.324205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617599, 33.895210, 30.164228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284613, 0.301919, 0.909857,
		0.867571, -0.484884, -0.110485,
		0.407818, 0.820812, -0.399940,
		39.739944, 34.141453, 30.044247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092403, 33.618496, 30.717951>,  <39.454472, 33.566887, 30.324205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092403, 33.618496, 30.717951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016956, 33.983887, 30.573736>,  <39.971687, 34.203121, 30.487207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016956, 33.983887, 30.573736>,  <40.092403, 33.618496, 30.717951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016956, 33.983887, 30.573736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142906, 0.337687, 0.930347,
		0.971598, 0.226998, 0.066849,
		-0.188613, 0.913477, -0.360535,
		39.960373, 34.257931, 30.465576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516354, 34.202877, 30.935081>,  <40.092403, 33.618496, 30.717951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516354, 34.202877, 30.935081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151199, 34.340309, 30.846909>,  <39.932106, 34.422768, 30.794004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151199, 34.340309, 30.846909>,  <40.516354, 34.202877, 30.935081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151199, 34.340309, 30.846909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136838, 0.251194, 0.958215,
		0.384598, 0.904905, -0.182296,
		-0.912885, 0.343582, -0.220434,
		39.877335, 34.443382, 30.780779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.088337, 35.548553, 26.384153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.750408, 35.446934, 26.195795>,  <41.547653, 35.385963, 26.082779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.750408, 35.446934, 26.195795>,  <42.088337, 35.548553, 26.384153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750408, 35.446934, 26.195795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504377, -0.671848, -0.542424,
		-0.178570, -0.695759, 0.695724,
		-0.844818, -0.254046, -0.470896,
		41.496964, 35.370720, 26.054525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130501, 34.822624, 26.390190>,  <42.088337, 35.548553, 26.384153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130501, 34.822624, 26.390190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884338, 34.932720, 26.094753>,  <41.736641, 34.998775, 25.917490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884338, 34.932720, 26.094753>,  <42.130501, 34.822624, 26.390190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884338, 34.932720, 26.094753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453809, -0.642431, -0.617527,
		-0.644509, -0.715189, 0.270395,
		-0.615359, 0.275294, -0.738612,
		41.699718, 35.015293, 25.873175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966335, 34.120594, 25.916103>,  <42.130501, 34.822624, 26.390190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966335, 34.120594, 25.916103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819096, 34.396534, 25.666748>,  <41.730751, 34.562096, 25.517136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819096, 34.396534, 25.666748>,  <41.966335, 34.120594, 25.916103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819096, 34.396534, 25.666748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124543, -0.627840, -0.768313,
		-0.921406, -0.360457, 0.145194,
		-0.368103, 0.689846, -0.623388,
		41.708664, 34.603489, 25.479731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580383, 33.765339, 25.354677>,  <41.966335, 34.120594, 25.916103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580383, 33.765339, 25.354677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682755, 34.127102, 25.218124>,  <41.744179, 34.344162, 25.136192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682755, 34.127102, 25.218124>,  <41.580383, 33.765339, 25.354677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682755, 34.127102, 25.218124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215655, -0.397661, -0.891829,
		-0.942333, 0.154625, -0.296814,
		0.255931, 0.904410, -0.341383,
		41.759533, 34.398426, 25.115709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288486, 33.785381, 24.741793>,  <41.580383, 33.765339, 25.354677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288486, 33.785381, 24.741793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528786, 34.099747, 24.683222>,  <41.672966, 34.288368, 24.648079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528786, 34.099747, 24.683222>,  <41.288486, 33.785381, 24.741793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528786, 34.099747, 24.683222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116859, -0.094864, -0.988608,
		-0.790852, 0.611014, 0.034852,
		0.600747, 0.785915, -0.146426,
		41.709011, 34.335522, 24.639294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948170, 34.153790, 24.333061>,  <41.288486, 33.785381, 24.741793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948170, 34.153790, 24.333061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333679, 34.251995, 24.291359>,  <41.564983, 34.310917, 24.266336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333679, 34.251995, 24.291359>,  <40.948170, 34.153790, 24.333061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333679, 34.251995, 24.291359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077284, -0.117068, -0.990112,
		-0.255292, 0.962298, -0.093852,
		0.963770, 0.245515, -0.104257,
		41.622810, 34.325649, 24.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019821, 34.590683, 23.737488>,  <40.948170, 34.153790, 24.333061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019821, 34.590683, 23.737488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.381714, 34.429245, 23.792002>,  <41.598850, 34.332382, 23.824709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.381714, 34.429245, 23.792002>,  <41.019821, 34.590683, 23.737488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381714, 34.429245, 23.792002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121289, -0.062621, -0.990640,
		0.408351, 0.912793, -0.007704,
		0.904731, -0.403594, 0.136283,
		41.653133, 34.308167, 23.832888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320564, 34.627781, 23.064848>,  <41.019821, 34.590683, 23.737488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320564, 34.627781, 23.064848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615055, 34.443760, 23.263374>,  <41.791748, 34.333347, 23.382490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615055, 34.443760, 23.263374>,  <41.320564, 34.627781, 23.064848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615055, 34.443760, 23.263374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308814, -0.424195, -0.851289,
		0.602171, 0.780007, -0.170232,
		0.736223, -0.460051, 0.496315,
		41.835922, 34.305744, 23.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890636, 34.739895, 22.747274>,  <41.320564, 34.627781, 23.064848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890636, 34.739895, 22.747274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.992092, 34.417492, 22.961201>,  <42.052963, 34.224052, 23.089556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.992092, 34.417492, 22.961201>,  <41.890636, 34.739895, 22.747274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992092, 34.417492, 22.961201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247542, -0.480399, -0.841392,
		0.935089, 0.345797, 0.077673,
		0.253637, -0.806003, 0.534815,
		42.068184, 34.175690, 23.121645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579330, 34.616871, 22.595842>,  <41.890636, 34.739895, 22.747274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579330, 34.616871, 22.595842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407753, 34.270294, 22.698040>,  <42.304806, 34.062347, 22.759359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407753, 34.270294, 22.698040>,  <42.579330, 34.616871, 22.595842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407753, 34.270294, 22.698040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198715, -0.366413, -0.908985,
		0.881202, -0.339135, 0.329347,
		-0.428946, -0.866446, 0.255493,
		42.279068, 34.010361, 22.774689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963367, 34.109154, 22.337172>,  <42.579330, 34.616871, 22.595842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963367, 34.109154, 22.337172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.628407, 33.899105, 22.397844>,  <42.427429, 33.773075, 22.434248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.628407, 33.899105, 22.397844>,  <42.963367, 34.109154, 22.337172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628407, 33.899105, 22.397844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095256, -0.413466, -0.905523,
		0.538226, -0.743836, 0.396258,
		-0.837400, -0.525122, 0.151684,
		42.377186, 33.741570, 22.443350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122280, 33.380188, 22.303993>,  <42.963367, 34.109154, 22.337172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122280, 33.380188, 22.303993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731274, 33.379974, 22.219656>,  <42.496670, 33.379845, 22.169054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731274, 33.379974, 22.219656>,  <43.122280, 33.380188, 22.303993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731274, 33.379974, 22.219656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195047, -0.382086, -0.903309,
		-0.080077, -0.924127, 0.373601,
		-0.977520, -0.000535, -0.210844,
		42.438019, 33.379814, 22.156403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003059, 32.705799, 22.100981>,  <43.122280, 33.380188, 22.303993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003059, 32.705799, 22.100981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.677322, 32.891094, 21.961119>,  <42.481880, 33.002270, 21.877201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.677322, 32.891094, 21.961119>,  <43.003059, 32.705799, 22.100981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677322, 32.891094, 21.961119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183089, -0.366650, -0.912166,
		-0.550750, -0.806832, 0.213764,
		-0.814342, 0.463238, -0.349655,
		42.433022, 33.030067, 21.856222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377716, 32.348228, 21.714722>,  <43.003059, 32.705799, 22.100981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377716, 32.348228, 21.714722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469784, 32.705925, 21.561174>,  <42.525024, 32.920544, 21.469046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469784, 32.705925, 21.561174>,  <42.377716, 32.348228, 21.714722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469784, 32.705925, 21.561174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166991, -0.424900, -0.889704,
		-0.958716, 0.140680, -0.247129,
		0.230169, 0.894242, -0.383866,
		42.538834, 32.974197, 21.446014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000340, 32.086506, 21.118528>,  <42.377716, 32.348228, 21.714722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000340, 32.086506, 21.118528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023094, 31.687891, 21.142773>,  <42.036747, 31.448721, 21.157318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023094, 31.687891, 21.142773>,  <42.000340, 32.086506, 21.118528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023094, 31.687891, 21.142773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496426, 0.024437, 0.867735,
		-0.866213, -0.079450, -0.493318,
		0.056886, -0.996539, 0.060609,
		42.040161, 31.388929, 21.160955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269440, 31.880648, 21.315758>,  <42.000340, 32.086506, 21.118528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269440, 31.880648, 21.315758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530861, 31.598011, 21.424273>,  <41.687714, 31.428429, 21.489382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530861, 31.598011, 21.424273>,  <41.269440, 31.880648, 21.315758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530861, 31.598011, 21.424273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444099, -0.067752, 0.893412,
		-0.612898, -0.704370, -0.358077,
		0.653553, -0.706592, 0.271285,
		41.726929, 31.386034, 21.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875862, 31.464628, 21.660154>,  <41.269440, 31.880648, 21.315758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875862, 31.464628, 21.660154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.244751, 31.358362, 21.772528>,  <41.466084, 31.294603, 21.839952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.244751, 31.358362, 21.772528>,  <40.875862, 31.464628, 21.660154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244751, 31.358362, 21.772528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321353, -0.122583, 0.938992,
		-0.215021, -0.956240, -0.198422,
		0.922225, -0.265666, 0.280932,
		41.521420, 31.278664, 21.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884544, 30.719957, 21.903917>,  <40.875862, 31.464628, 21.660154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884544, 30.719957, 21.903917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.203213, 30.911564, 22.051352>,  <41.394413, 31.026527, 22.139812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.203213, 30.911564, 22.051352>,  <40.884544, 30.719957, 21.903917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203213, 30.911564, 22.051352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364767, -0.105200, 0.925137,
		0.481929, -0.871480, 0.090918,
		0.796674, 0.479015, 0.368586,
		41.442215, 31.055267, 22.161928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212833, 30.204090, 22.424904>,  <40.884544, 30.719957, 21.903917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212833, 30.204090, 22.424904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347927, 30.570431, 22.511766>,  <41.428982, 30.790236, 22.563883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347927, 30.570431, 22.511766>,  <41.212833, 30.204090, 22.424904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347927, 30.570431, 22.511766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257476, -0.132017, 0.957224,
		0.905341, -0.379198, 0.191223,
		0.337733, 0.915850, 0.217155,
		41.449245, 30.845186, 22.576912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546963, 30.145275, 23.149578>,  <41.212833, 30.204090, 22.424904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546963, 30.145275, 23.149578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453156, 30.525604, 23.068647>,  <41.396870, 30.753801, 23.020088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453156, 30.525604, 23.068647>,  <41.546963, 30.145275, 23.149578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453156, 30.525604, 23.068647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327130, 0.118803, 0.937482,
		0.915416, 0.286045, 0.283181,
		-0.234519, 0.950823, -0.202328,
		41.382801, 30.810852, 23.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830826, 30.451151, 23.754232>,  <41.546963, 30.145275, 23.149578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830826, 30.451151, 23.754232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603580, 30.748156, 23.612289>,  <41.467232, 30.926357, 23.527122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603580, 30.748156, 23.612289>,  <41.830826, 30.451151, 23.754232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603580, 30.748156, 23.612289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061682, 0.391571, 0.918078,
		0.820635, 0.543461, -0.176657,
		-0.568114, 0.742510, -0.354859,
		41.433147, 30.970909, 23.505833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018475, 31.073574, 24.077427>,  <41.830826, 30.451151, 23.754232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018475, 31.073574, 24.077427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673462, 31.212748, 23.930468>,  <41.466454, 31.296251, 23.842291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673462, 31.212748, 23.930468>,  <42.018475, 31.073574, 24.077427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673462, 31.212748, 23.930468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130775, 0.548129, 0.826107,
		0.488814, 0.760589, -0.427277,
		-0.862530, 0.347936, -0.367399,
		41.414703, 31.317129, 23.820248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948200, 31.810415, 24.301069>,  <42.018475, 31.073574, 24.077427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948200, 31.810415, 24.301069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.572536, 31.694809, 24.226820>,  <41.347137, 31.625444, 24.182270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.572536, 31.694809, 24.226820>,  <41.948200, 31.810415, 24.301069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572536, 31.694809, 24.226820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338462, 0.686495, 0.643559,
		-0.058569, 0.667228, -0.742547,
		-0.939156, -0.289016, -0.185624,
		41.290791, 31.608105, 24.171133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545376, 32.454296, 24.244854>,  <41.948200, 31.810415, 24.301069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545376, 32.454296, 24.244854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.280582, 32.167278, 24.331490>,  <41.121708, 31.995068, 24.383471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.280582, 32.167278, 24.331490>,  <41.545376, 32.454296, 24.244854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280582, 32.167278, 24.331490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438094, 0.604887, 0.664970,
		-0.608159, 0.345311, -0.714775,
		-0.661979, -0.717546, 0.216589,
		41.081989, 31.952015, 24.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845062, 32.761116, 24.354195>,  <41.545376, 32.454296, 24.244854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845062, 32.761116, 24.354195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807930, 32.398079, 24.517979>,  <40.785648, 32.180256, 24.616249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807930, 32.398079, 24.517979>,  <40.845062, 32.761116, 24.354195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807930, 32.398079, 24.517979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483760, 0.400550, 0.778162,
		-0.870263, -0.125842, -0.476242,
		-0.092833, -0.907592, 0.409461,
		40.780079, 32.125801, 24.640818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176937, 32.687584, 24.632383>,  <40.845062, 32.761116, 24.354195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176937, 32.687584, 24.632383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.365318, 32.399319, 24.835890>,  <40.478348, 32.226360, 24.957994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.365318, 32.399319, 24.835890>,  <40.176937, 32.687584, 24.632383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365318, 32.399319, 24.835890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445955, 0.303114, 0.842167,
		-0.761136, -0.623508, -0.178632,
		0.470953, -0.720666, 0.508768,
		40.506603, 32.183121, 24.988520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619663, 32.362755, 24.921144>,  <40.176937, 32.687584, 24.632383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619663, 32.362755, 24.921144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949795, 32.268490, 25.126390>,  <40.147873, 32.211929, 25.249538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949795, 32.268490, 25.126390>,  <39.619663, 32.362755, 24.921144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949795, 32.268490, 25.126390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505804, 0.095349, 0.857363,
		-0.250973, -0.967146, -0.040504,
		0.825333, -0.235662, 0.513116,
		40.197395, 32.197792, 25.280325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489639, 31.751337, 25.408478>,  <39.619663, 32.362755, 24.921144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489639, 31.751337, 25.408478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768627, 31.996468, 25.557056>,  <39.936020, 32.143547, 25.646204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768627, 31.996468, 25.557056>,  <39.489639, 31.751337, 25.408478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768627, 31.996468, 25.557056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547411, 0.121122, 0.828052,
		0.462462, -0.780880, 0.419948,
		0.697474, 0.612827, 0.371448,
		39.977871, 32.180317, 25.668491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014069, 31.105171, 25.390558>,  <39.489639, 31.751337, 25.408478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014069, 31.105171, 25.390558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635365, 31.189409, 25.293152>,  <38.408142, 31.239952, 25.234709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635365, 31.189409, 25.293152>,  <39.014069, 31.105171, 25.390558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635365, 31.189409, 25.293152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238463, -0.049464, -0.969891,
		-0.216300, -0.976321, -0.003389,
		-0.946757, 0.210596, -0.243515,
		38.351337, 31.252588, 25.220097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901779, 30.660305, 24.801317>,  <39.014069, 31.105171, 25.390558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901779, 30.660305, 24.801317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632797, 30.955706, 24.781626>,  <38.471409, 31.132946, 24.769812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632797, 30.955706, 24.781626>,  <38.901779, 30.660305, 24.801317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632797, 30.955706, 24.781626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039882, -0.030258, -0.998746,
		-0.739064, -0.673574, -0.009105,
		-0.672454, 0.738500, -0.049227,
		38.431061, 31.177256, 24.766857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529461, 30.537252, 24.183764>,  <38.901779, 30.660305, 24.801317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529461, 30.537252, 24.183764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460903, 30.923767, 24.260614>,  <38.419769, 31.155676, 24.306725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460903, 30.923767, 24.260614>,  <38.529461, 30.537252, 24.183764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460903, 30.923767, 24.260614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025682, 0.190565, -0.981338,
		-0.984867, -0.173134, -0.007846,
		-0.171398, 0.966286, 0.192127,
		38.409485, 31.213654, 24.318253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974899, 30.645020, 23.798239>,  <38.529461, 30.537252, 24.183764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974899, 30.645020, 23.798239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130802, 31.004885, 23.876923>,  <38.224342, 31.220804, 23.924133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130802, 31.004885, 23.876923>,  <37.974899, 30.645020, 23.798239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130802, 31.004885, 23.876923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095356, 0.251880, -0.963049,
		-0.915967, 0.356599, 0.183960,
		0.389758, 0.899663, 0.196710,
		38.247730, 31.274784, 23.935936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630074, 30.965212, 23.344570>,  <37.974899, 30.645020, 23.798239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630074, 30.965212, 23.344570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933750, 31.205311, 23.445238>,  <38.115955, 31.349371, 23.505638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933750, 31.205311, 23.445238>,  <37.630074, 30.965212, 23.344570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933750, 31.205311, 23.445238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140620, 0.226267, -0.963862,
		-0.635501, 0.767141, 0.087372,
		0.759187, 0.600249, 0.251668,
		38.161507, 31.385386, 23.520739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554909, 31.462154, 22.888741>,  <37.630074, 30.965212, 23.344570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554909, 31.462154, 22.888741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925285, 31.511839, 23.031403>,  <38.147511, 31.541649, 23.117001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925285, 31.511839, 23.031403>,  <37.554909, 31.462154, 22.888741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925285, 31.511839, 23.031403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338811, 0.144012, -0.929767,
		-0.166848, 0.981750, 0.091263,
		0.925942, 0.124209, 0.356656,
		38.203068, 31.549101, 23.138399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734154, 32.075092, 22.591459>,  <37.554909, 31.462154, 22.888741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734154, 32.075092, 22.591459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065735, 31.873178, 22.687817>,  <38.264683, 31.752029, 22.745630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065735, 31.873178, 22.687817>,  <37.734154, 32.075092, 22.591459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065735, 31.873178, 22.687817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340594, 0.113943, -0.933281,
		0.443658, 0.855692, 0.266380,
		0.828953, -0.504785, 0.240892,
		38.314423, 31.721743, 22.760084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519115, 32.810085, 22.610022>,  <37.734154, 32.075092, 22.591459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519115, 32.810085, 22.610022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222458, 32.686874, 22.371668>,  <37.044464, 32.612949, 22.228655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222458, 32.686874, 22.371668>,  <37.519115, 32.810085, 22.610022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222458, 32.686874, 22.371668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551241, -0.226310, 0.803068,
		-0.382222, 0.924068, -0.001956,
		-0.741647, -0.308028, -0.595885,
		36.999966, 32.594467, 22.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951138, 33.170521, 22.811913>,  <37.519115, 32.810085, 22.610022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951138, 33.170521, 22.811913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815731, 32.825176, 22.662235>,  <36.734486, 32.617970, 22.572430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815731, 32.825176, 22.662235>,  <36.951138, 33.170521, 22.811913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815731, 32.825176, 22.662235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641365, -0.079277, 0.763129,
		-0.688519, 0.498324, -0.526891,
		-0.338515, -0.863359, -0.374191,
		36.714176, 32.566170, 22.549978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213181, 33.266670, 22.798386>,  <36.951138, 33.170521, 22.811913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213181, 33.266670, 22.798386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278042, 32.871967, 22.796455>,  <36.316959, 32.635147, 22.795298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278042, 32.871967, 22.796455>,  <36.213181, 33.266670, 22.798386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278042, 32.871967, 22.796455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631285, -0.107500, 0.768064,
		-0.758409, -0.121500, -0.640354,
		0.162158, -0.986753, -0.004828,
		36.326691, 32.575943, 22.795008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550861, 32.954956, 22.776773>,  <36.213181, 33.266670, 22.798386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550861, 32.954956, 22.776773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811089, 32.687187, 22.920237>,  <35.967224, 32.526527, 23.006315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811089, 32.687187, 22.920237>,  <35.550861, 32.954956, 22.776773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811089, 32.687187, 22.920237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581766, -0.135716, 0.801954,
		-0.488170, -0.730380, -0.477739,
		0.650568, -0.669422, 0.358658,
		36.006260, 32.486362, 23.027834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128750, 32.456394, 23.138615>,  <35.550861, 32.954956, 22.776773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128750, 32.456394, 23.138615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504642, 32.426853, 23.272152>,  <35.730179, 32.409126, 23.352274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504642, 32.426853, 23.272152>,  <35.128750, 32.456394, 23.138615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504642, 32.426853, 23.272152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339786, -0.092971, 0.935896,
		-0.038077, -0.992926, -0.112461,
		0.939732, -0.073849, 0.333842,
		35.786560, 32.404697, 23.372305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146278, 31.830708, 23.499622>,  <35.128750, 32.456394, 23.138615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146278, 31.830708, 23.499622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472248, 32.003075, 23.654646>,  <35.667831, 32.106495, 23.747660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472248, 32.003075, 23.654646>,  <35.146278, 31.830708, 23.499622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472248, 32.003075, 23.654646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339408, -0.187196, 0.921824,
		0.469780, -0.882761, -0.006294,
		0.814928, 0.430919, 0.387557,
		35.716728, 32.132351, 23.770912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414753, 31.402550, 23.973753>,  <35.146278, 31.830708, 23.499622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414753, 31.402550, 23.973753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554001, 31.752254, 24.109091>,  <35.637550, 31.962076, 24.190294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554001, 31.752254, 24.109091>,  <35.414753, 31.402550, 23.973753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554001, 31.752254, 24.109091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158657, -0.300769, 0.940408,
		0.923925, -0.381059, 0.034002,
		0.348124, 0.874261, 0.338345,
		35.658440, 32.014534, 24.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.760994, 34.713970, 20.367485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977413, 34.478096, 20.607332>,  <40.107265, 34.336571, 20.751240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977413, 34.478096, 20.607332>,  <39.760994, 34.713970, 20.367485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977413, 34.478096, 20.607332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532683, 0.311435, 0.786929,
		-0.650782, -0.745171, -0.145615,
		0.541046, -0.589685, 0.599616,
		40.139729, 34.301189, 20.787218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309662, 34.258862, 20.882799>,  <39.760994, 34.713970, 20.367485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309662, 34.258862, 20.882799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678326, 34.335503, 21.017752>,  <39.899525, 34.381489, 21.098722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678326, 34.335503, 21.017752>,  <39.309662, 34.258862, 20.882799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678326, 34.335503, 21.017752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382125, 0.297650, 0.874863,
		0.067204, -0.935251, 0.347548,
		0.921664, 0.191601, 0.337380,
		39.954826, 34.392982, 21.118965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266308, 33.978310, 21.532051>,  <39.309662, 34.258862, 20.882799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266308, 33.978310, 21.532051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582317, 34.223495, 21.527401>,  <39.771923, 34.370605, 21.524611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582317, 34.223495, 21.527401>,  <39.266308, 33.978310, 21.532051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582317, 34.223495, 21.527401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235550, 0.320989, 0.917323,
		0.566017, -0.721971, 0.397973,
		0.790026, 0.612963, -0.011625,
		39.819324, 34.407383, 21.523914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557285, 33.935429, 22.199751>,  <39.266308, 33.978310, 21.532051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557285, 33.935429, 22.199751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667046, 34.283142, 22.035290>,  <39.732903, 34.491772, 21.936613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667046, 34.283142, 22.035290>,  <39.557285, 33.935429, 22.199751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667046, 34.283142, 22.035290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208145, 0.471120, 0.857159,
		0.938819, -0.149626, 0.310212,
		0.274400, 0.869286, -0.411153,
		39.749367, 34.543926, 21.911943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956230, 34.172649, 22.670256>,  <39.557285, 33.935429, 22.199751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956230, 34.172649, 22.670256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850384, 34.480556, 22.437899>,  <39.786877, 34.665302, 22.298485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850384, 34.480556, 22.437899>,  <39.956230, 34.172649, 22.670256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850384, 34.480556, 22.437899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307855, 0.503419, 0.807338,
		0.913896, 0.392463, 0.103765,
		-0.264613, 0.769767, -0.580895,
		39.771000, 34.711487, 22.263630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247887, 34.705147, 22.988161>,  <39.956230, 34.172649, 22.670256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247887, 34.705147, 22.988161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964600, 34.877270, 22.764280>,  <39.794628, 34.980545, 22.629951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964600, 34.877270, 22.764280>,  <40.247887, 34.705147, 22.988161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964600, 34.877270, 22.764280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170061, 0.665459, 0.726804,
		0.685209, 0.609916, -0.398108,
		-0.708214, 0.430310, -0.559702,
		39.752136, 35.006363, 22.596371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200417, 35.429806, 23.278589>,  <40.247887, 34.705147, 22.988161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200417, 35.429806, 23.278589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.874474, 35.422703, 23.046835>,  <39.678905, 35.418442, 22.907784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.874474, 35.422703, 23.046835>,  <40.200417, 35.429806, 23.278589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874474, 35.422703, 23.046835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393190, 0.751357, 0.529967,
		0.425915, 0.659657, -0.619233,
		-0.814861, -0.017755, -0.579385,
		39.630016, 35.417377, 22.873020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955135, 36.065872, 23.223310>,  <40.200417, 35.429806, 23.278589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955135, 36.065872, 23.223310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623043, 35.864765, 23.127033>,  <39.423786, 35.744099, 23.069267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623043, 35.864765, 23.127033>,  <39.955135, 36.065872, 23.223310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623043, 35.864765, 23.127033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548362, 0.659168, 0.514583,
		-0.100061, 0.559211, -0.822964,
		-0.830233, -0.502772, -0.240694,
		39.373974, 35.713932, 23.054825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367290, 36.595596, 23.090448>,  <39.955135, 36.065872, 23.223310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367290, 36.595596, 23.090448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170158, 36.260750, 23.185411>,  <39.051880, 36.059841, 23.242390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170158, 36.260750, 23.185411>,  <39.367290, 36.595596, 23.090448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170158, 36.260750, 23.185411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531477, 0.505632, 0.679609,
		-0.688952, 0.208752, -0.694095,
		-0.492826, -0.837114, 0.237409,
		39.022312, 36.009617, 23.256634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708530, 36.710068, 22.973892>,  <39.367290, 36.595596, 23.090448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708530, 36.710068, 22.973892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.732845, 36.432224, 23.260618>,  <38.747437, 36.265518, 23.432653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.732845, 36.432224, 23.260618>,  <38.708530, 36.710068, 22.973892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732845, 36.432224, 23.260618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544467, 0.578820, 0.607061,
		-0.836576, -0.427187, -0.343004,
		0.060791, -0.694607, 0.716817,
		38.751083, 36.223843, 23.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096550, 36.851448, 23.297544>,  <38.708530, 36.710068, 22.973892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096550, 36.851448, 23.297544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298527, 36.642376, 23.572304>,  <38.419712, 36.516933, 23.737160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298527, 36.642376, 23.572304>,  <38.096550, 36.851448, 23.297544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298527, 36.642376, 23.572304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572454, 0.392811, 0.719719,
		-0.646008, -0.756637, -0.100866,
		0.504945, -0.522685, 0.686899,
		38.450008, 36.485569, 23.778374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625893, 36.563175, 23.810328>,  <38.096550, 36.851448, 23.297544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625893, 36.563175, 23.810328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976471, 36.534100, 24.000719>,  <38.186817, 36.516655, 24.114954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976471, 36.534100, 24.000719>,  <37.625893, 36.563175, 23.810328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976471, 36.534100, 24.000719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426992, 0.339530, 0.838091,
		-0.222529, -0.937782, 0.266543,
		0.876447, -0.072688, 0.475981,
		38.239407, 36.512295, 24.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250870, 35.910652, 23.646486>,  <37.625893, 36.563175, 23.810328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250870, 35.910652, 23.646486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854328, 35.859535, 23.634541>,  <36.616405, 35.828865, 23.627373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854328, 35.859535, 23.634541>,  <37.250870, 35.910652, 23.646486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854328, 35.859535, 23.634541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049573, -0.153940, -0.986836,
		0.121515, -0.979781, 0.158943,
		-0.991351, -0.127795, -0.029864,
		36.556923, 35.821198, 23.625582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242565, 35.296406, 23.238834>,  <37.250870, 35.910652, 23.646486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242565, 35.296406, 23.238834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873596, 35.449181, 23.216021>,  <36.652214, 35.540844, 23.202332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873596, 35.449181, 23.216021>,  <37.242565, 35.296406, 23.238834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873596, 35.449181, 23.216021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022764, -0.093655, -0.995344,
		-0.385502, -0.919430, 0.077695,
		-0.922426, 0.381938, -0.057034,
		36.596867, 35.563763, 23.198910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805401, 34.864479, 22.750586>,  <37.242565, 35.296406, 23.238834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805401, 34.864479, 22.750586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.601501, 35.208488, 22.741409>,  <36.479164, 35.414894, 22.735903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.601501, 35.208488, 22.741409>,  <36.805401, 34.864479, 22.750586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601501, 35.208488, 22.741409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063876, -0.064425, -0.995876,
		-0.857952, -0.506176, 0.087775,
		-0.509744, 0.860020, -0.022941,
		36.448578, 35.466496, 22.734528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210968, 34.718189, 22.284403>,  <36.805401, 34.864479, 22.750586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210968, 34.718189, 22.284403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234367, 35.116997, 22.304535>,  <36.248405, 35.356281, 22.316614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234367, 35.116997, 22.304535>,  <36.210968, 34.718189, 22.284403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234367, 35.116997, 22.304535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123264, 0.057245, -0.990721,
		-0.990648, 0.051748, 0.126245,
		0.058495, 0.997018, 0.050331,
		36.251915, 35.416103, 22.319633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574551, 34.959454, 21.980587>,  <36.210968, 34.718189, 22.284403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574551, 34.959454, 21.980587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.857491, 35.240723, 21.951708>,  <36.027256, 35.409485, 21.934381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.857491, 35.240723, 21.951708>,  <35.574551, 34.959454, 21.980587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857491, 35.240723, 21.951708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097238, -0.004369, -0.995252,
		-0.700145, 0.711010, 0.065284,
		0.707349, 0.703168, -0.072197,
		36.069695, 35.451672, 21.930048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250843, 35.484108, 21.458008>,  <35.574551, 34.959454, 21.980587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250843, 35.484108, 21.458008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647411, 35.534912, 21.470299>,  <35.885353, 35.565395, 21.477673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647411, 35.534912, 21.470299>,  <35.250843, 35.484108, 21.458008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647411, 35.534912, 21.470299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012647, 0.140771, -0.989961,
		-0.130064, 0.981861, 0.137957,
		0.991425, 0.127013, 0.030727,
		35.944839, 35.573017, 21.479517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463020, 36.086193, 21.146721>,  <35.250843, 35.484108, 21.458008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463020, 36.086193, 21.146721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817150, 35.901012, 21.129351>,  <36.029629, 35.789906, 21.118929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817150, 35.901012, 21.129351>,  <35.463020, 36.086193, 21.146721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817150, 35.901012, 21.129351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146078, 0.365581, -0.919245,
		0.441441, 0.807482, 0.391283,
		0.885320, -0.462950, -0.043427,
		36.082745, 35.762127, 21.116322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920990, 36.619625, 20.678492>,  <35.463020, 36.086193, 21.146721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920990, 36.619625, 20.678492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.097675, 36.260929, 20.689404>,  <36.203686, 36.045712, 20.695950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.097675, 36.260929, 20.689404>,  <35.920990, 36.619625, 20.678492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097675, 36.260929, 20.689404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322292, 0.130228, -0.937640,
		0.837270, 0.422957, 0.346536,
		0.441710, -0.896743, 0.027279,
		36.230186, 35.991905, 20.697588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520512, 36.794182, 20.346481>,  <35.920990, 36.619625, 20.678492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520512, 36.794182, 20.346481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463161, 36.399288, 20.318743>,  <36.428753, 36.162350, 20.302099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463161, 36.399288, 20.318743>,  <36.520512, 36.794182, 20.346481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463161, 36.399288, 20.318743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222084, 0.036191, -0.974355,
		0.964428, -0.155099, 0.214060,
		-0.143374, -0.987236, -0.069348,
		36.420151, 36.103119, 20.297937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037453, 36.598732, 19.963182>,  <36.520512, 36.794182, 20.346481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037453, 36.598732, 19.963182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.793087, 36.286552, 19.909996>,  <36.646465, 36.099243, 19.878084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.793087, 36.286552, 19.909996>,  <37.037453, 36.598732, 19.963182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793087, 36.286552, 19.909996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440954, -0.195943, -0.875880,
		0.657524, -0.593724, 0.463847,
		-0.610918, -0.780448, -0.132968,
		36.609810, 36.052418, 19.870106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434254, 36.107819, 19.682230>,  <37.037453, 36.598732, 19.963182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434254, 36.107819, 19.682230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070423, 35.971161, 19.587618>,  <36.852123, 35.889168, 19.530849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070423, 35.971161, 19.587618>,  <37.434254, 36.107819, 19.682230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070423, 35.971161, 19.587618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331869, -0.254710, -0.908287,
		0.250065, -0.904655, 0.345060,
		-0.909577, -0.341646, -0.236532,
		36.797550, 35.868668, 19.516659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482113, 35.368519, 19.415878>,  <37.434254, 36.107819, 19.682230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482113, 35.368519, 19.415878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145939, 35.526302, 19.267244>,  <36.944237, 35.620972, 19.178064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145939, 35.526302, 19.267244>,  <37.482113, 35.368519, 19.415878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145939, 35.526302, 19.267244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246214, -0.332885, -0.910256,
		-0.482754, -0.856498, 0.182646,
		-0.840432, 0.394460, -0.371584,
		36.893810, 35.644642, 19.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264687, 34.882214, 18.983366>,  <37.482113, 35.368519, 19.415878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264687, 34.882214, 18.983366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041946, 35.198627, 18.882034>,  <36.908302, 35.388477, 18.821236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041946, 35.198627, 18.882034>,  <37.264687, 34.882214, 18.983366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041946, 35.198627, 18.882034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027607, -0.287197, -0.957473,
		-0.830152, -0.540165, 0.138089,
		-0.556853, 0.791037, -0.253330,
		36.874889, 35.435940, 18.806036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558868, 34.757816, 19.474487>,  <37.264687, 34.882214, 18.983366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558868, 34.757816, 19.474487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851059, 34.502586, 19.377111>,  <37.026371, 34.349449, 19.318686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851059, 34.502586, 19.377111>,  <36.558868, 34.757816, 19.474487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851059, 34.502586, 19.377111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225115, -0.561505, 0.796263,
		-0.644771, -0.526848, -0.553806,
		0.730475, -0.638077, -0.243441,
		37.070202, 34.311165, 19.304079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236084, 34.174934, 19.579441>,  <36.558868, 34.757816, 19.474487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236084, 34.174934, 19.579441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.627480, 34.092571, 19.584614>,  <36.862316, 34.043152, 19.587717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.627480, 34.092571, 19.584614>,  <36.236084, 34.174934, 19.579441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627480, 34.092571, 19.584614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165005, -0.743384, 0.648193,
		-0.123857, -0.636381, -0.761366,
		0.978485, -0.205912, 0.012933,
		36.921024, 34.030796, 19.588493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410774, 33.372227, 19.396416>,  <36.236084, 34.174934, 19.579441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410774, 33.372227, 19.396416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706898, 33.524132, 19.618311>,  <36.884571, 33.615273, 19.751448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706898, 33.524132, 19.618311>,  <36.410774, 33.372227, 19.396416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706898, 33.524132, 19.618311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235060, -0.626863, 0.742826,
		0.629838, -0.680314, -0.374803,
		0.740305, 0.379759, 0.554736,
		36.928989, 33.638058, 19.784731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645790, 32.768982, 19.737465>,  <36.410774, 33.372227, 19.396416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645790, 32.768982, 19.737465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839066, 33.047466, 19.949810>,  <36.955032, 33.214558, 20.077217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839066, 33.047466, 19.949810>,  <36.645790, 32.768982, 19.737465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839066, 33.047466, 19.949810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111826, -0.552300, 0.826111,
		0.868344, -0.458534, -0.189011,
		0.483191, 0.696213, 0.530863,
		36.984024, 33.256329, 20.109068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154377, 32.400162, 20.063824>,  <36.645790, 32.768982, 19.737465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154377, 32.400162, 20.063824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107189, 32.730503, 20.284389>,  <37.078876, 32.928707, 20.416729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107189, 32.730503, 20.284389>,  <37.154377, 32.400162, 20.063824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107189, 32.730503, 20.284389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064300, -0.560479, 0.825669,
		0.990934, 0.061945, 0.119220,
		-0.117966, 0.825849, 0.551415,
		37.071800, 32.978256, 20.449814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627804, 32.270782, 20.595648>,  <37.154377, 32.400162, 20.063824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627804, 32.270782, 20.595648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380184, 32.555172, 20.729090>,  <37.231613, 32.725807, 20.809155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380184, 32.555172, 20.729090>,  <37.627804, 32.270782, 20.595648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380184, 32.555172, 20.729090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105868, -0.496451, 0.861585,
		0.778183, 0.498046, 0.382597,
		-0.619050, 0.710976, 0.333603,
		37.194469, 32.768463, 20.829170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894852, 32.561954, 21.197113>,  <37.627804, 32.270782, 20.595648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894852, 32.561954, 21.197113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.502632, 32.634693, 21.226685>,  <37.267300, 32.678337, 21.244427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.502632, 32.634693, 21.226685>,  <37.894852, 32.561954, 21.197113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502632, 32.634693, 21.226685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020985, -0.277352, 0.960539,
		0.195173, 0.943402, 0.268140,
		-0.980544, 0.181845, 0.073929,
		37.208469, 32.689247, 21.248863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836784, 32.818905, 21.902649>,  <37.894852, 32.561954, 21.197113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836784, 32.818905, 21.902649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.464180, 32.726368, 21.790390>,  <37.240616, 32.670845, 21.723036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.464180, 32.726368, 21.790390>,  <37.836784, 32.818905, 21.902649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464180, 32.726368, 21.790390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265585, -0.094519, 0.959443,
		-0.248483, 0.968271, 0.026606,
		-0.931515, -0.231339, -0.280645,
		37.184727, 32.656967, 21.706196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383759, 32.442905, 22.127220>,  <37.836784, 32.818905, 21.902649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383759, 32.442905, 22.127220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527981, 32.089043, 22.245459>,  <38.614513, 31.876724, 22.316402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527981, 32.089043, 22.245459>,  <38.383759, 32.442905, 22.127220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527981, 32.089043, 22.245459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484584, -0.093127, -0.869773,
		0.796982, 0.456841, 0.395115,
		0.360552, -0.884660, 0.295598,
		38.636147, 31.823645, 22.334139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121578, 32.416492, 21.915100>,  <38.383759, 32.442905, 22.127220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121578, 32.416492, 21.915100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043026, 32.027962, 21.968710>,  <38.995895, 31.794844, 22.000875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043026, 32.027962, 21.968710>,  <39.121578, 32.416492, 21.915100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043026, 32.027962, 21.968710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612366, -0.228247, -0.756909,
		0.765795, -0.066571, 0.639629,
		-0.196381, -0.971325, 0.134025,
		38.984112, 31.736565, 22.008917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735828, 32.081242, 21.698009>,  <39.121578, 32.416492, 21.915100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735828, 32.081242, 21.698009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465431, 31.786694, 21.709284>,  <39.303192, 31.609964, 21.716049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465431, 31.786694, 21.709284>,  <39.735828, 32.081242, 21.698009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465431, 31.786694, 21.709284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359409, -0.362851, -0.859747,
		0.643319, -0.571052, 0.509942,
		-0.675993, -0.736369, 0.028187,
		39.262634, 31.565783, 21.717739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086720, 31.412165, 21.649530>,  <39.735828, 32.081242, 21.698009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086720, 31.412165, 21.649530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712795, 31.408449, 21.507521>,  <39.488441, 31.406219, 21.422316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712795, 31.408449, 21.507521>,  <40.086720, 31.412165, 21.649530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712795, 31.408449, 21.507521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352087, -0.155138, -0.923021,
		-0.046502, -0.987849, 0.148295,
		-0.934811, -0.009290, -0.355024,
		39.432350, 31.405663, 21.401014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176277, 31.125813, 21.136221>,  <40.086720, 31.412165, 21.649530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176277, 31.125813, 21.136221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808601, 31.249994, 21.039305>,  <39.587994, 31.324503, 20.981155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808601, 31.249994, 21.039305>,  <40.176277, 31.125813, 21.136221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808601, 31.249994, 21.039305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298942, 0.149556, -0.942479,
		-0.256359, -0.938751, -0.230278,
		-0.919192, 0.310453, -0.242292,
		39.532845, 31.343130, 20.966618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949226, 30.584089, 20.655516>,  <40.176277, 31.125813, 21.136221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949226, 30.584089, 20.655516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737286, 30.916174, 20.586227>,  <39.610123, 31.115425, 20.544655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737286, 30.916174, 20.586227>,  <39.949226, 30.584089, 20.655516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737286, 30.916174, 20.586227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401821, 0.065881, -0.913345,
		-0.746859, -0.553539, -0.368504,
		-0.529850, 0.830213, -0.173220,
		39.578331, 31.165237, 20.534262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777676, 30.483551, 19.965904>,  <39.949226, 30.584089, 20.655516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777676, 30.483551, 19.965904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661556, 30.863569, 20.011753>,  <39.591885, 31.091579, 20.039263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661556, 30.863569, 20.011753>,  <39.777676, 30.483551, 19.965904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661556, 30.863569, 20.011753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305964, 0.205644, -0.929568,
		-0.906704, -0.234782, -0.350378,
		-0.290299, 0.950046, 0.114623,
		39.574467, 31.148582, 20.046141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338604, 30.739065, 19.369160>,  <39.777676, 30.483551, 19.965904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338604, 30.739065, 19.369160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511349, 31.058924, 19.536043>,  <39.614994, 31.250839, 19.636173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511349, 31.058924, 19.536043>,  <39.338604, 30.739065, 19.369160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511349, 31.058924, 19.536043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321176, 0.295904, -0.899604,
		-0.842819, 0.522500, -0.129038,
		0.431860, 0.799647, 0.417208,
		39.640907, 31.298819, 19.661205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135571, 31.512362, 19.099821>,  <39.338604, 30.739065, 19.369160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135571, 31.512362, 19.099821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504715, 31.540426, 19.251297>,  <39.726200, 31.557264, 19.342182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504715, 31.540426, 19.251297>,  <39.135571, 31.512362, 19.099821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504715, 31.540426, 19.251297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289955, 0.520587, -0.803066,
		-0.253484, 0.850921, 0.460086,
		0.922861, 0.070160, 0.378689,
		39.781574, 31.561474, 19.364904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.223774, 34.903027, 34.423801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618263, 34.949589, 34.470806>,  <36.854958, 34.977528, 34.499008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618263, 34.949589, 34.470806>,  <36.223774, 34.903027, 34.423801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618263, 34.949589, 34.470806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155591, -0.411828, -0.897880,
		-0.056128, 0.903796, -0.424267,
		0.986226, 0.116408, 0.117508,
		36.914131, 34.984512, 34.506058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508965, 35.283356, 33.896854>,  <36.223774, 34.903027, 34.423801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508965, 35.283356, 33.896854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796661, 35.046146, 34.041637>,  <36.969280, 34.903820, 34.128510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796661, 35.046146, 34.041637>,  <36.508965, 35.283356, 33.896854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796661, 35.046146, 34.041637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053922, -0.471768, -0.880072,
		0.692664, 0.652503, -0.307339,
		0.719242, -0.593022, 0.361961,
		37.012436, 34.868240, 34.150227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030750, 35.222706, 33.395660>,  <36.508965, 35.283356, 33.896854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030750, 35.222706, 33.395660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062172, 34.885620, 33.608696>,  <37.081024, 34.683369, 33.736519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062172, 34.885620, 33.608696>,  <37.030750, 35.222706, 33.395660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062172, 34.885620, 33.608696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300785, -0.489313, -0.818597,
		0.950452, 0.224498, 0.215040,
		0.078551, -0.842718, 0.532593,
		37.085739, 34.632805, 33.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552727, 34.825840, 33.087379>,  <37.030750, 35.222706, 33.395660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552727, 34.825840, 33.087379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377392, 34.547985, 33.315533>,  <37.272190, 34.381271, 33.452423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377392, 34.547985, 33.315533>,  <37.552727, 34.825840, 33.087379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377392, 34.547985, 33.315533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161268, -0.685082, -0.710391,
		0.884224, -0.219407, 0.412320,
		-0.438338, -0.694639, 0.570383,
		37.245892, 34.339592, 33.486649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886135, 34.239826, 32.786762>,  <37.552727, 34.825840, 33.087379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886135, 34.239826, 32.786762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595673, 34.091690, 33.018467>,  <37.421394, 34.002808, 33.157490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595673, 34.091690, 33.018467>,  <37.886135, 34.239826, 32.786762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595673, 34.091690, 33.018467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073112, -0.796158, -0.600656,
		0.683629, -0.478522, 0.551061,
		-0.726159, -0.370337, 0.579262,
		37.377827, 33.980591, 33.192245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029259, 33.473499, 32.795971>,  <37.886135, 34.239826, 32.786762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029259, 33.473499, 32.795971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640717, 33.526028, 32.875191>,  <37.407593, 33.557545, 32.922722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640717, 33.526028, 32.875191>,  <38.029259, 33.473499, 32.795971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640717, 33.526028, 32.875191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233408, -0.683696, -0.691433,
		0.044608, -0.717854, 0.694763,
		-0.971355, 0.131319, 0.198051,
		37.349312, 33.565422, 32.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812714, 32.814861, 32.797092>,  <38.029259, 33.473499, 32.795971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812714, 32.814861, 32.797092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488392, 33.039211, 32.730133>,  <37.293800, 33.173820, 32.689957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488392, 33.039211, 32.730133>,  <37.812714, 32.814861, 32.797092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488392, 33.039211, 32.730133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220602, -0.557730, -0.800170,
		-0.542157, -0.611851, 0.575938,
		-0.810802, 0.560871, -0.167401,
		37.245152, 33.207474, 32.679913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217148, 32.359856, 32.722004>,  <37.812714, 32.814861, 32.797092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217148, 32.359856, 32.722004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115978, 32.700184, 32.537769>,  <37.055275, 32.904381, 32.427231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115978, 32.700184, 32.537769>,  <37.217148, 32.359856, 32.722004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115978, 32.700184, 32.537769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409423, -0.525462, -0.745830,
		-0.876585, -0.000066, 0.481247,
		-0.252926, 0.850817, -0.460585,
		37.040100, 32.955429, 32.399593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525005, 32.311993, 32.589466>,  <37.217148, 32.359856, 32.722004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525005, 32.311993, 32.589466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653858, 32.577969, 32.319923>,  <36.731171, 32.737553, 32.158195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653858, 32.577969, 32.319923>,  <36.525005, 32.311993, 32.589466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653858, 32.577969, 32.319923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490393, -0.491656, -0.719576,
		-0.809781, 0.562254, 0.167703,
		0.322132, 0.664939, -0.673859,
		36.750496, 32.777451, 32.117767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052197, 32.253639, 32.067451>,  <36.525005, 32.311993, 32.589466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052197, 32.253639, 32.067451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336418, 32.466290, 31.883070>,  <36.506950, 32.593880, 31.772440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336418, 32.466290, 31.883070>,  <36.052197, 32.253639, 32.067451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336418, 32.466290, 31.883070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214345, -0.460432, -0.861428,
		-0.670197, 0.710898, -0.213212,
		0.710558, 0.531626, -0.460957,
		36.549587, 32.625778, 31.744783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749104, 32.382679, 31.435205>,  <36.052197, 32.253639, 32.067451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749104, 32.382679, 31.435205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138172, 32.445229, 31.366556>,  <36.371613, 32.482758, 31.325367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138172, 32.445229, 31.366556>,  <35.749104, 32.382679, 31.435205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138172, 32.445229, 31.366556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098198, -0.392761, -0.914383,
		-0.210391, 0.906249, -0.366673,
		0.972673, 0.156372, -0.171625,
		36.429974, 32.492142, 31.315069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842545, 32.857136, 30.776918>,  <35.749104, 32.382679, 31.435205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842545, 32.857136, 30.776918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183174, 32.654736, 30.831736>,  <36.387554, 32.533295, 30.864626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183174, 32.654736, 30.831736>,  <35.842545, 32.857136, 30.776918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183174, 32.654736, 30.831736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115084, -0.435485, -0.892809,
		0.511444, 0.744523, -0.429081,
		0.851576, -0.506002, 0.137043,
		36.438648, 32.502934, 30.872849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328766, 33.120403, 30.381090>,  <35.842545, 32.857136, 30.776918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328766, 33.120403, 30.381090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007702, 32.941414, 30.223354>,  <34.815063, 32.834023, 30.128714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007702, 32.941414, 30.223354>,  <35.328766, 33.120403, 30.381090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007702, 32.941414, 30.223354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575865, 0.409294, 0.707713,
		-0.155280, 0.795141, -0.586208,
		-0.802663, -0.447470, -0.394338,
		34.766903, 32.807175, 30.105053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856953, 33.556664, 30.399708>,  <35.328766, 33.120403, 30.381090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856953, 33.556664, 30.399708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666656, 33.205070, 30.412741>,  <34.552479, 32.994114, 30.420561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666656, 33.205070, 30.412741>,  <34.856953, 33.556664, 30.399708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666656, 33.205070, 30.412741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485277, 0.293187, 0.823740,
		-0.733605, 0.376076, -0.566031,
		-0.475742, -0.878981, 0.032583,
		34.523933, 32.941376, 30.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268810, 33.780846, 30.640577>,  <34.856953, 33.556664, 30.399708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268810, 33.780846, 30.640577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249035, 33.382034, 30.664213>,  <34.237167, 33.142746, 30.678394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249035, 33.382034, 30.664213>,  <34.268810, 33.780846, 30.640577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249035, 33.382034, 30.664213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583440, 0.076849, 0.808512,
		-0.810650, 0.005499, -0.585505,
		-0.049442, -0.997028, 0.059089,
		34.234203, 33.082928, 30.681940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597355, 33.678410, 30.486719>,  <34.268810, 33.780846, 30.640577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597355, 33.678410, 30.486719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741920, 33.360874, 30.682356>,  <33.828659, 33.170353, 30.799738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741920, 33.360874, 30.682356>,  <33.597355, 33.678410, 30.486719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741920, 33.360874, 30.682356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505826, 0.273724, 0.818056,
		-0.783277, -0.543048, -0.302616,
		0.361410, -0.793835, 0.489090,
		33.850342, 33.122723, 30.829082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018188, 33.321930, 30.824097>,  <33.597355, 33.678410, 30.486719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018188, 33.321930, 30.824097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345585, 33.231560, 31.035389>,  <33.542023, 33.177338, 31.162165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345585, 33.231560, 31.035389>,  <33.018188, 33.321930, 30.824097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345585, 33.231560, 31.035389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448620, 0.323041, 0.833298,
		-0.358905, -0.919022, 0.163051,
		0.818491, -0.225927, 0.528233,
		33.591133, 33.163780, 31.193859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667496, 33.329609, 31.416544>,  <33.018188, 33.321930, 30.824097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667496, 33.329609, 31.416544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054989, 33.354691, 31.512568>,  <33.287483, 33.369740, 31.570181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054989, 33.354691, 31.512568>,  <32.667496, 33.329609, 31.416544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054989, 33.354691, 31.512568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236019, 0.531244, 0.813680,
		-0.076510, -0.844895, 0.529432,
		0.968732, 0.062701, 0.240057,
		33.345608, 33.373501, 31.584585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724190, 33.138405, 32.131786>,  <32.667496, 33.329609, 31.416544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724190, 33.138405, 32.131786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036560, 33.373203, 32.046383>,  <33.223984, 33.514084, 31.995142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036560, 33.373203, 32.046383>,  <32.724190, 33.138405, 32.131786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036560, 33.373203, 32.046383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119820, 0.476247, 0.871110,
		0.613021, -0.654692, 0.442249,
		0.780928, 0.586999, -0.213504,
		33.270840, 33.549301, 31.982332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073940, 33.246883, 32.823757>,  <32.724190, 33.138405, 32.131786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073940, 33.246883, 32.823757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168018, 33.536308, 32.564178>,  <33.224464, 33.709965, 32.408432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168018, 33.536308, 32.564178>,  <33.073940, 33.246883, 32.823757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168018, 33.536308, 32.564178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089649, 0.680983, 0.726791,
		0.967806, -0.112756, 0.225028,
		0.235191, 0.723566, -0.648951,
		33.238575, 33.753380, 32.369492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481632, 33.665554, 33.151737>,  <33.073940, 33.246883, 32.823757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481632, 33.665554, 33.151737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351830, 33.909714, 32.862709>,  <33.273949, 34.056210, 32.689293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351830, 33.909714, 32.862709>,  <33.481632, 33.665554, 33.151737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351830, 33.909714, 32.862709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162527, 0.716570, 0.678316,
		0.931815, 0.337558, -0.133328,
		-0.324510, 0.610395, -0.722573,
		33.254478, 34.092831, 32.645939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512943, 34.273735, 33.507481>,  <33.481632, 33.665554, 33.151737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512943, 34.273735, 33.507481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322418, 34.386147, 33.174217>,  <33.208103, 34.453594, 32.974258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322418, 34.386147, 33.174217>,  <33.512943, 34.273735, 33.507481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322418, 34.386147, 33.174217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235133, 0.872330, 0.428665,
		0.847256, 0.400080, -0.349419,
		-0.476309, 0.281029, -0.833158,
		33.179527, 34.470455, 32.924271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829258, 34.907951, 33.256081>,  <33.512943, 34.273735, 33.507481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829258, 34.907951, 33.256081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445335, 34.875870, 33.148499>,  <33.214981, 34.856621, 33.083950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445335, 34.875870, 33.148499>,  <33.829258, 34.907951, 33.256081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445335, 34.875870, 33.148499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191409, 0.887921, 0.418282,
		0.205259, 0.452950, -0.867586,
		-0.959808, -0.080208, -0.268952,
		33.157394, 34.851807, 33.067814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570171, 35.612320, 33.391933>,  <33.829258, 34.907951, 33.256081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570171, 35.612320, 33.391933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223370, 35.440876, 33.290272>,  <33.015289, 35.338009, 33.229275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223370, 35.440876, 33.290272>,  <33.570171, 35.612320, 33.391933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223370, 35.440876, 33.290272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464899, 0.879358, 0.102949,
		0.179364, 0.207412, -0.961670,
		-0.867005, -0.428614, -0.254151,
		32.963268, 35.312290, 33.214027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287292, 36.056553, 32.824013>,  <33.570171, 35.612320, 33.391933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287292, 36.056553, 32.824013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015987, 35.845306, 33.028385>,  <32.853203, 35.718559, 33.151009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015987, 35.845306, 33.028385>,  <33.287292, 36.056553, 32.824013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015987, 35.845306, 33.028385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467476, 0.846584, 0.254486,
		-0.566946, -0.066241, -0.821088,
		-0.678262, -0.528118, 0.510933,
		32.812508, 35.686871, 33.181664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830505, 36.563904, 33.081470>,  <33.287292, 36.056553, 32.824013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830505, 36.563904, 33.081470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662788, 36.256123, 33.274193>,  <32.562160, 36.071453, 33.389824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662788, 36.256123, 33.274193>,  <32.830505, 36.563904, 33.081470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662788, 36.256123, 33.274193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697627, 0.612693, 0.371380,
		-0.580958, -0.180403, -0.793689,
		-0.419290, -0.769455, 0.481803,
		32.537003, 36.025288, 33.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642986, 36.579174, 33.756382>,  <32.830505, 36.563904, 33.081470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642986, 36.579174, 33.756382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501041, 36.952271, 33.730888>,  <32.415874, 37.176128, 33.715591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501041, 36.952271, 33.730888>,  <32.642986, 36.579174, 33.756382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501041, 36.952271, 33.730888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120103, -0.022126, -0.992515,
		-0.927171, -0.359864, -0.104174,
		-0.354866, 0.932742, -0.063735,
		32.394581, 37.232094, 33.711769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976984, 36.590275, 33.301975>,  <32.642986, 36.579174, 33.756382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976984, 36.590275, 33.301975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147358, 36.952175, 33.303219>,  <32.249580, 37.169315, 33.303967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147358, 36.952175, 33.303219>,  <31.976984, 36.590275, 33.301975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147358, 36.952175, 33.303219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039030, 0.021812, -0.999000,
		-0.903912, 0.425387, 0.044603,
		0.425934, 0.904749, 0.003114,
		32.275139, 37.223598, 33.304153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744390, 36.808525, 32.656212>,  <31.976984, 36.590275, 33.301975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744390, 36.808525, 32.656212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042290, 37.043663, 32.782574>,  <32.221027, 37.184746, 32.858391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042290, 37.043663, 32.782574>,  <31.744390, 36.808525, 32.656212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042290, 37.043663, 32.782574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210577, 0.242186, -0.947103,
		-0.633254, 0.771873, 0.056581,
		0.744747, 0.587842, 0.315904,
		32.265713, 37.220016, 32.877346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721716, 37.386574, 32.255775>,  <31.744390, 36.808525, 32.656212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721716, 37.386574, 32.255775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.365204, 32.380219>,  <32.328995, 37.352383, 32.454884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.365204, 32.380219>,  <31.721716, 37.386574, 32.255775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101265, 37.365204, 32.380219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315169, 0.105039, -0.943205,
		0.017713, 0.993032, 0.116507,
		0.948870, -0.053427, 0.311112,
		32.385925, 37.349174, 32.473553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054607, 37.829124, 31.724926>,  <31.721716, 37.386574, 32.255775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054607, 37.829124, 31.724926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349419, 37.621964, 31.898624>,  <32.526306, 37.497669, 32.002842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349419, 37.621964, 31.898624>,  <32.054607, 37.829124, 31.724926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349419, 37.621964, 31.898624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397243, -0.187864, -0.898279,
		0.546797, 0.834558, 0.067271,
		0.737028, -0.517900, 0.434246,
		32.570526, 37.466595, 32.028896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725040, 38.123161, 31.453308>,  <32.054607, 37.829124, 31.724926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725040, 38.123161, 31.453308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826725, 37.760254, 31.587317>,  <32.887733, 37.542511, 31.667721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826725, 37.760254, 31.587317>,  <32.725040, 38.123161, 31.453308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826725, 37.760254, 31.587317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498910, -0.173736, -0.849061,
		0.828533, 0.382984, 0.408480,
		0.254209, -0.907270, 0.335020,
		32.902988, 37.488071, 31.687822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363152, 38.066803, 31.338772>,  <32.725040, 38.123161, 31.453308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363152, 38.066803, 31.338772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243526, 37.686897, 31.375664>,  <33.171753, 37.458954, 31.397799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243526, 37.686897, 31.375664>,  <33.363152, 38.066803, 31.338772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243526, 37.686897, 31.375664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508182, -0.240330, -0.827039,
		0.807658, -0.200468, 0.554528,
		-0.299064, -0.949766, 0.092230,
		33.153809, 37.401966, 31.403334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927681, 37.667713, 31.083389>,  <33.363152, 38.066803, 31.338772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927681, 37.667713, 31.083389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607803, 37.427593, 31.078655>,  <33.415878, 37.283524, 31.075815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607803, 37.427593, 31.078655>,  <33.927681, 37.667713, 31.083389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607803, 37.427593, 31.078655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345428, -0.443862, -0.826841,
		0.491095, -0.665306, 0.562311,
		-0.799691, -0.600295, -0.011837,
		33.367897, 37.247505, 31.075104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238117, 36.978355, 31.068966>,  <33.927681, 37.667713, 31.083389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238117, 36.978355, 31.068966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857822, 36.951618, 30.947889>,  <33.629646, 36.935574, 30.875242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857822, 36.951618, 30.947889>,  <34.238117, 36.978355, 31.068966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857822, 36.951618, 30.947889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308005, -0.313938, -0.898096,
		-0.034991, -0.947087, 0.319063,
		-0.950741, -0.066848, -0.302693,
		33.572601, 36.931564, 30.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148396, 36.299114, 30.873106>,  <34.238117, 36.978355, 31.068966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148396, 36.299114, 30.873106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885208, 36.530674, 30.680460>,  <33.727295, 36.669609, 30.564873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885208, 36.530674, 30.680460>,  <34.148396, 36.299114, 30.873106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885208, 36.530674, 30.680460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215273, -0.468272, -0.856959,
		-0.721615, -0.667535, 0.183490,
		-0.657973, 0.578895, -0.481614,
		33.687817, 36.704342, 30.535976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617443, 35.867977, 30.518347>,  <34.148396, 36.299114, 30.873106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617443, 35.867977, 30.518347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635960, 36.205956, 30.305208>,  <33.647068, 36.408741, 30.177324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635960, 36.205956, 30.305208>,  <33.617443, 35.867977, 30.518347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635960, 36.205956, 30.305208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096842, -0.534703, -0.839473,
		-0.994223, -0.012745, -0.106576,
		0.046288, 0.844944, -0.532848,
		33.649845, 36.459438, 30.145353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363796, 35.659229, 29.870924>,  <33.617443, 35.867977, 30.518347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363796, 35.659229, 29.870924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523087, 36.020706, 29.807993>,  <33.618660, 36.237595, 29.770235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523087, 36.020706, 29.807993>,  <33.363796, 35.659229, 29.870924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523087, 36.020706, 29.807993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044218, -0.190225, -0.980744,
		-0.916222, 0.383599, -0.115712,
		0.398224, 0.903696, -0.157327,
		33.642555, 36.291817, 29.760796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059593, 35.861122, 29.184780>,  <33.363796, 35.659229, 29.870924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059593, 35.861122, 29.184780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380352, 36.077904, 29.285385>,  <33.572807, 36.207973, 29.345749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380352, 36.077904, 29.285385>,  <33.059593, 35.861122, 29.184780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380352, 36.077904, 29.285385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317860, -0.030528, -0.947646,
		-0.505899, 0.839856, -0.196745,
		0.801893, 0.541950, 0.251512,
		33.620918, 36.240490, 29.360838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129951, 36.409977, 28.658640>,  <33.059593, 35.861122, 29.184780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129951, 36.409977, 28.658640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490410, 36.369553, 28.827267>,  <33.706684, 36.345299, 28.928442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490410, 36.369553, 28.827267>,  <33.129951, 36.409977, 28.658640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490410, 36.369553, 28.827267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415650, -0.074835, -0.906441,
		0.123150, 0.992062, -0.025433,
		0.901149, -0.101057, 0.421566,
		33.760754, 36.339237, 28.953737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512131, 36.875347, 28.221298>,  <33.129951, 36.409977, 28.658640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512131, 36.875347, 28.221298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757099, 36.615131, 28.400965>,  <33.904079, 36.459003, 28.508764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757099, 36.615131, 28.400965>,  <33.512131, 36.875347, 28.221298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757099, 36.615131, 28.400965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545084, -0.064028, -0.835933,
		0.572563, 0.756772, 0.315385,
		0.612418, -0.650535, 0.449164,
		33.940823, 36.419971, 28.535713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142117, 37.152596, 28.205183>,  <33.512131, 36.875347, 28.221298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142117, 37.152596, 28.205183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.151722, 36.753426, 28.229073>,  <34.157486, 36.513924, 28.243406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.151722, 36.753426, 28.229073>,  <34.142117, 37.152596, 28.205183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151722, 36.753426, 28.229073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631342, -0.031184, -0.774877,
		0.775133, 0.056309, 0.629284,
		0.024009, -0.997926, 0.059722,
		34.158924, 36.454048, 28.246988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789730, 37.103527, 28.094589>,  <34.142117, 37.152596, 28.205183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789730, 37.103527, 28.094589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611893, 36.750458, 28.033634>,  <34.505192, 36.538616, 27.997061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611893, 36.750458, 28.033634>,  <34.789730, 37.103527, 28.094589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611893, 36.750458, 28.033634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571467, -0.148508, -0.807076,
		0.689755, -0.445904, 0.570445,
		-0.444594, -0.882675, -0.152385,
		34.478516, 36.485657, 27.987919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394970, 36.545048, 27.995127>,  <34.789730, 37.103527, 28.094589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394970, 36.545048, 27.995127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065327, 36.365189, 27.857334>,  <34.867542, 36.257275, 27.774658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065327, 36.365189, 27.857334>,  <35.394970, 36.545048, 27.995127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065327, 36.365189, 27.857334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479480, -0.229973, -0.846883,
		0.301578, -0.863093, 0.405119,
		-0.824105, -0.449648, -0.344481,
		34.818096, 36.230293, 27.753990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692146, 35.954548, 27.752254>,  <35.394970, 36.545048, 27.995127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692146, 35.954548, 27.752254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336056, 35.965084, 27.570353>,  <35.122402, 35.971405, 27.461212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336056, 35.965084, 27.570353>,  <35.692146, 35.954548, 27.752254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336056, 35.965084, 27.570353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444237, -0.170566, -0.879523,
		-0.100739, -0.984994, 0.140138,
		-0.890227, 0.026348, -0.454754,
		35.068989, 35.972988, 27.433928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656090, 35.364491, 27.325077>,  <35.692146, 35.954548, 27.752254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656090, 35.364491, 27.325077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399574, 35.632099, 27.174795>,  <35.245663, 35.792664, 27.084625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399574, 35.632099, 27.174795>,  <35.656090, 35.364491, 27.325077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399574, 35.632099, 27.174795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477258, -0.035612, -0.878041,
		-0.600809, -0.742388, -0.296459,
		-0.641290, 0.669023, -0.375707,
		35.207188, 35.832806, 27.062082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610806, 35.081177, 26.747412>,  <35.656090, 35.364491, 27.325077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610806, 35.081177, 26.747412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442230, 35.439659, 26.691973>,  <35.341084, 35.654747, 26.658709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442230, 35.439659, 26.691973>,  <35.610806, 35.081177, 26.747412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442230, 35.439659, 26.691973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321882, 0.004946, -0.946767,
		-0.847810, -0.443616, -0.290557,
		-0.421438, 0.896203, -0.138599,
		35.315800, 35.708519, 26.650393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233528, 35.005512, 26.071033>,  <35.610806, 35.081177, 26.747412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233528, 35.005512, 26.071033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310951, 35.392666, 26.135202>,  <35.357403, 35.624958, 26.173704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310951, 35.392666, 26.135202>,  <35.233528, 35.005512, 26.071033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310951, 35.392666, 26.135202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217268, 0.117169, -0.969054,
		-0.956730, 0.222420, -0.187612,
		0.193555, 0.967885, 0.160423,
		35.369019, 35.683033, 26.183329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789448, 35.508217, 25.679317>,  <35.233528, 35.005512, 26.071033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789448, 35.508217, 25.679317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134727, 35.689049, 25.769215>,  <35.341896, 35.797546, 25.823153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134727, 35.689049, 25.769215>,  <34.789448, 35.508217, 25.679317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134727, 35.689049, 25.769215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262480, -0.021597, -0.964696,
		-0.431261, 0.891718, -0.137304,
		0.863202, 0.452075, 0.224744,
		35.393688, 35.824673, 25.836637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903549, 35.929085, 25.177525>,  <34.789448, 35.508217, 25.679317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903549, 35.929085, 25.177525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275818, 35.957497, 25.321081>,  <35.499180, 35.974545, 25.407215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275818, 35.957497, 25.321081>,  <34.903549, 35.929085, 25.177525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275818, 35.957497, 25.321081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354450, 0.067972, -0.932601,
		-0.090637, 0.995156, 0.038083,
		0.930672, 0.071029, 0.358893,
		35.555019, 35.978806, 25.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140450, 36.424316, 24.709305>,  <34.903549, 35.929085, 25.177525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140450, 36.424316, 24.709305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449215, 36.232658, 24.876431>,  <35.634476, 36.117664, 24.976706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449215, 36.232658, 24.876431>,  <35.140450, 36.424316, 24.709305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449215, 36.232658, 24.876431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390822, -0.160695, -0.906331,
		0.501405, 0.862900, 0.063217,
		0.771914, -0.479145, 0.417813,
		35.680790, 36.088913, 25.001774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709415, 36.765892, 24.520855>,  <35.140450, 36.424316, 24.709305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709415, 36.765892, 24.520855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825890, 36.395153, 24.615648>,  <35.895775, 36.172710, 24.672525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825890, 36.395153, 24.615648>,  <35.709415, 36.765892, 24.520855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825890, 36.395153, 24.615648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413636, -0.101392, -0.904779,
		0.862623, 0.361481, 0.353855,
		0.291182, -0.926850, 0.236985,
		35.913242, 36.117100, 24.686745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372452, 36.780014, 24.269884>,  <35.709415, 36.765892, 24.520855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372452, 36.780014, 24.269884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279663, 36.392799, 24.308025>,  <36.223988, 36.160469, 24.330910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279663, 36.392799, 24.308025>,  <36.372452, 36.780014, 24.269884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279663, 36.392799, 24.308025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409589, -0.186121, -0.893082,
		0.882284, -0.168117, 0.439673,
		-0.231975, -0.968037, 0.095353,
		36.210072, 36.102386, 24.336632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921368, 36.436081, 24.052536>,  <36.372452, 36.780014, 24.269884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921368, 36.436081, 24.052536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638149, 36.153709, 24.045195>,  <36.468220, 35.984287, 24.040789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638149, 36.153709, 24.045195>,  <36.921368, 36.436081, 24.052536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638149, 36.153709, 24.045195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287193, -0.264114, -0.920741,
		0.645130, -0.657197, 0.389743,
		-0.708045, -0.705929, -0.018354,
		36.425735, 35.941933, 24.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237980, 36.156254, 24.575964>,  <36.921368, 36.436081, 24.052536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237980, 36.156254, 24.575964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615936, 36.274879, 24.631439>,  <37.842709, 36.346054, 24.664724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615936, 36.274879, 24.631439>,  <37.237980, 36.156254, 24.575964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615936, 36.274879, 24.631439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211967, 0.231307, 0.949509,
		0.249503, -0.926580, 0.281420,
		0.944890, 0.296557, 0.138693,
		37.899403, 36.363850, 24.673046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468800, 35.900574, 25.270351>,  <37.237980, 36.156254, 24.575964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468800, 35.900574, 25.270351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699326, 36.214584, 25.179495>,  <37.837643, 36.402988, 25.124981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699326, 36.214584, 25.179495>,  <37.468800, 35.900574, 25.270351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699326, 36.214584, 25.179495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095973, 0.341035, 0.935139,
		0.811570, -0.517138, 0.271885,
		0.576318, 0.785025, -0.227143,
		37.872223, 36.450092, 25.111353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900719, 35.980114, 25.796858>,  <37.468800, 35.900574, 25.270351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900719, 35.980114, 25.796858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915730, 36.347916, 25.640345>,  <37.924736, 36.568596, 25.546436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915730, 36.347916, 25.640345>,  <37.900719, 35.980114, 25.796858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915730, 36.347916, 25.640345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117052, 0.392909, 0.912097,
		0.992417, 0.011575, 0.122373,
		0.037524, 0.919504, -0.391284,
		37.926987, 36.623768, 25.522959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419781, 36.383633, 26.150244>,  <37.900719, 35.980114, 25.796858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419781, 36.383633, 26.150244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175095, 36.654182, 25.986135>,  <38.028282, 36.816513, 25.887671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175095, 36.654182, 25.986135>,  <38.419781, 36.383633, 26.150244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175095, 36.654182, 25.986135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064954, 0.473926, 0.878166,
		0.788410, 0.563833, -0.245973,
		-0.611712, 0.676377, -0.410271,
		37.991581, 36.857094, 25.863054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655788, 37.015614, 26.442558>,  <38.419781, 36.383633, 26.150244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655788, 37.015614, 26.442558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300617, 37.132259, 26.300262>,  <38.087517, 37.202248, 26.214886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300617, 37.132259, 26.300262>,  <38.655788, 37.015614, 26.442558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300617, 37.132259, 26.300262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117675, 0.603623, 0.788538,
		0.444683, 0.742023, -0.501656,
		-0.887924, 0.291617, -0.355738,
		38.034241, 37.219746, 26.193541>
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
