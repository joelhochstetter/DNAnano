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
	<24.234175, 35.441185, 34.667728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330139, 35.120239, 34.886322>,  <24.387718, 34.927670, 35.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330139, 35.120239, 34.886322>,  <24.234175, 35.441185, 34.667728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330139, 35.120239, 34.886322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950583, 0.308430, 0.035531,
		-0.197062, 0.510956, 0.836714,
		0.239913, -0.802368, 0.546486,
		24.402113, 34.879528, 35.050266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567039, 35.693806, 35.214684>,  <24.234175, 35.441185, 34.667728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567039, 35.693806, 35.214684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713787, 35.338928, 35.102760>,  <24.801836, 35.126003, 35.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713787, 35.338928, 35.102760>,  <24.567039, 35.693806, 35.214684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713787, 35.338928, 35.102760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930263, 0.351197, 0.106165,
		0.004079, -0.299246, 0.954167,
		0.366870, -0.887194, -0.279811,
		24.823849, 35.072769, 35.018818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073315, 35.410301, 35.703747>,  <24.567039, 35.693806, 35.214684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073315, 35.410301, 35.703747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148647, 35.235989, 35.351696>,  <25.193846, 35.131401, 35.140465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148647, 35.235989, 35.351696>,  <25.073315, 35.410301, 35.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148647, 35.235989, 35.351696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975585, 0.186111, 0.116607,
		0.112986, -0.880601, 0.460191,
		0.188330, -0.435781, -0.880129,
		25.205147, 35.105255, 35.087658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943712, 34.791187, 36.024208>,  <25.073315, 35.410301, 35.703747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943712, 34.791187, 36.024208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188885, 35.018852, 36.243435>,  <25.335987, 35.155453, 36.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188885, 35.018852, 36.243435>,  <24.943712, 34.791187, 36.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188885, 35.018852, 36.243435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700179, -0.069817, -0.710545,
		-0.366151, 0.819256, -0.441308,
		0.612929, 0.569162, 0.548063,
		25.372763, 35.189602, 36.407852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452175, 34.633179, 35.662979>,  <24.943712, 34.791187, 36.024208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452175, 34.633179, 35.662979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593868, 34.913826, 35.910282>,  <25.678885, 35.082214, 36.058666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593868, 34.913826, 35.910282>,  <25.452175, 34.633179, 35.662979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593868, 34.913826, 35.910282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871200, -0.007299, -0.490873,
		-0.339894, 0.712514, -0.613837,
		0.354235, 0.701620, 0.618262,
		25.700138, 35.124313, 36.095760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746910, 35.273273, 35.261864>,  <25.452175, 34.633179, 35.662979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746910, 35.273273, 35.261864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923765, 35.220818, 35.616787>,  <26.029879, 35.189342, 35.829742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923765, 35.220818, 35.616787>,  <25.746910, 35.273273, 35.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923765, 35.220818, 35.616787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876529, -0.146712, -0.458447,
		0.190299, 0.980448, 0.050080,
		0.442136, -0.131139, 0.887310,
		26.056406, 35.181477, 35.882980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265562, 35.784035, 35.335300>,  <25.746910, 35.273273, 35.261864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265562, 35.784035, 35.335300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337704, 35.441608, 35.529053>,  <26.380989, 35.236153, 35.645306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337704, 35.441608, 35.529053>,  <26.265562, 35.784035, 35.335300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337704, 35.441608, 35.529053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830747, -0.131086, -0.540995,
		0.526622, 0.499970, 0.687531,
		0.180355, -0.856065, 0.484381,
		26.391809, 35.184788, 35.674366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945538, 35.790291, 35.306011>,  <26.265562, 35.784035, 35.335300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945538, 35.790291, 35.306011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835997, 35.418308, 35.404140>,  <26.770271, 35.195118, 35.463017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835997, 35.418308, 35.404140>,  <26.945538, 35.790291, 35.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835997, 35.418308, 35.404140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689918, -0.367664, -0.623568,
		0.670089, -0.001511, 0.742280,
		-0.273852, -0.929958, 0.245325,
		26.753841, 35.139320, 35.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577398, 35.462250, 35.573051>,  <26.945538, 35.790291, 35.306011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577398, 35.462250, 35.573051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326468, 35.176495, 35.449051>,  <27.175909, 35.005039, 35.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326468, 35.176495, 35.449051>,  <27.577398, 35.462250, 35.573051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326468, 35.176495, 35.449051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741098, -0.425369, -0.519456,
		0.239231, -0.555612, 0.796281,
		-0.627329, -0.714393, -0.310002,
		27.138269, 34.962177, 35.356049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883593, 34.883125, 35.764202>,  <27.577398, 35.462250, 35.573051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883593, 34.883125, 35.764202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635788, 34.786583, 35.465420>,  <27.487104, 34.728657, 35.286148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635788, 34.786583, 35.465420>,  <27.883593, 34.883125, 35.764202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635788, 34.786583, 35.465420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740258, -0.496247, -0.453605,
		-0.261194, -0.833957, 0.486100,
		-0.619513, -0.241361, -0.746960,
		27.449934, 34.714176, 35.241333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069265, 34.186974, 35.538372>,  <27.883593, 34.883125, 35.764202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069265, 34.186974, 35.538372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836039, 34.298260, 35.233051>,  <27.696102, 34.365032, 35.049858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836039, 34.298260, 35.233051>,  <28.069265, 34.186974, 35.538372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836039, 34.298260, 35.233051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467294, -0.653717, -0.595223,
		-0.664584, -0.703741, 0.251151,
		-0.583065, 0.278214, -0.763304,
		27.661119, 34.381725, 35.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886858, 33.538372, 35.225033>,  <28.069265, 34.186974, 35.538372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886858, 33.538372, 35.225033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799355, 33.807503, 34.942345>,  <27.746853, 33.968979, 34.772732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799355, 33.807503, 34.942345>,  <27.886858, 33.538372, 35.225033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799355, 33.807503, 34.942345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371281, -0.612392, -0.697944,
		-0.902384, -0.415071, -0.115842,
		-0.218756, 0.672823, -0.706721,
		27.733728, 34.009350, 34.730328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397924, 33.258213, 34.700947>,  <27.886858, 33.538372, 35.225033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397924, 33.258213, 34.700947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607445, 33.552395, 34.529022>,  <27.733156, 33.728905, 34.425865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607445, 33.552395, 34.529022>,  <27.397924, 33.258213, 34.700947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607445, 33.552395, 34.529022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415263, -0.661014, -0.624994,
		-0.743767, 0.148887, -0.651646,
		0.523801, 0.735454, -0.429813,
		27.764585, 33.773029, 34.400078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419060, 33.111797, 34.054733>,  <27.397924, 33.258213, 34.700947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419060, 33.111797, 34.054733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716225, 33.379509, 34.049957>,  <27.894524, 33.540134, 34.047092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716225, 33.379509, 34.049957>,  <27.419060, 33.111797, 34.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716225, 33.379509, 34.049957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496655, -0.563082, -0.660509,
		-0.448790, 0.484770, -0.750723,
		0.742914, 0.669280, -0.011942,
		27.939098, 33.580292, 34.046375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436378, 33.355190, 33.391823>,  <27.419060, 33.111797, 34.054733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436378, 33.355190, 33.391823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791956, 33.460770, 33.541546>,  <28.005302, 33.524117, 33.631378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791956, 33.460770, 33.541546>,  <27.436378, 33.355190, 33.391823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791956, 33.460770, 33.541546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428139, -0.188559, -0.883823,
		-0.162705, 0.945926, -0.280626,
		0.888946, 0.263949, 0.374308,
		28.058640, 33.539955, 33.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698877, 33.864471, 32.893963>,  <27.436378, 33.355190, 33.391823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698877, 33.864471, 32.893963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991386, 33.674149, 33.089451>,  <28.166893, 33.559956, 33.206741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991386, 33.674149, 33.089451>,  <27.698877, 33.864471, 32.893963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991386, 33.674149, 33.089451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305298, -0.412397, -0.858325,
		0.609944, 0.776875, -0.156312,
		0.731274, -0.475808, 0.488717,
		28.210768, 33.531406, 33.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201126, 33.746109, 32.358379>,  <27.698877, 33.864471, 32.893963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201126, 33.746109, 32.358379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371256, 33.507050, 32.630234>,  <28.473335, 33.363613, 32.793346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371256, 33.507050, 32.630234>,  <28.201126, 33.746109, 32.358379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371256, 33.507050, 32.630234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498330, -0.472210, -0.727107,
		0.755489, 0.647943, 0.096984,
		0.425327, -0.597652, 0.679639,
		28.498854, 33.327755, 32.834126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966703, 33.791119, 32.205151>,  <28.201126, 33.746109, 32.358379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966703, 33.791119, 32.205151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922981, 33.461796, 32.427940>,  <28.896748, 33.264202, 32.561615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922981, 33.461796, 32.427940>,  <28.966703, 33.791119, 32.205151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922981, 33.461796, 32.427940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678656, -0.471225, -0.563359,
		0.726277, 0.316418, 0.610247,
		-0.109307, -0.823302, 0.556979,
		28.890188, 33.214806, 32.595036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617617, 33.666908, 32.497265>,  <28.966703, 33.791119, 32.205151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617617, 33.666908, 32.497265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399549, 33.331966, 32.481121>,  <29.268709, 33.131001, 32.471436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399549, 33.331966, 32.481121>,  <29.617617, 33.666908, 32.497265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399549, 33.331966, 32.481121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741900, -0.459482, -0.488324,
		0.390356, -0.296162, 0.871728,
		-0.545167, -0.837355, -0.040361,
		29.236000, 33.080761, 32.469013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016947, 33.155308, 32.572445>,  <29.617617, 33.666908, 32.497265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016947, 33.155308, 32.572445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718822, 32.944199, 32.409489>,  <29.539948, 32.817532, 32.311714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718822, 32.944199, 32.409489>,  <30.016947, 33.155308, 32.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718822, 32.944199, 32.409489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665360, -0.549831, -0.504957,
		0.042506, -0.647413, 0.760954,
		-0.745311, -0.527772, -0.407392,
		29.495230, 32.785866, 32.287270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322851, 32.476101, 32.365665>,  <30.016947, 33.155308, 32.572445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322851, 32.476101, 32.365665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984280, 32.506348, 32.154823>,  <29.781136, 32.524498, 32.028320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984280, 32.506348, 32.154823>,  <30.322851, 32.476101, 32.365665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984280, 32.506348, 32.154823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468164, -0.365979, -0.804290,
		-0.253727, -0.927546, 0.274374,
		-0.846431, 0.075618, -0.527102,
		29.730350, 32.529034, 31.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331968, 31.913000, 31.957216>,  <30.322851, 32.476101, 32.365665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331968, 31.913000, 31.957216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079660, 32.169231, 31.782043>,  <29.928276, 32.322971, 31.676939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079660, 32.169231, 31.782043>,  <30.331968, 31.913000, 31.957216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079660, 32.169231, 31.782043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379186, -0.237945, -0.894203,
		-0.677014, -0.730095, -0.092810,
		-0.630770, 0.640580, -0.437934,
		29.890429, 32.361404, 31.650663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292883, 31.528385, 31.368649>,  <30.331968, 31.913000, 31.957216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292883, 31.528385, 31.368649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107096, 31.869196, 31.272055>,  <29.995623, 32.073685, 31.214098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107096, 31.869196, 31.272055>,  <30.292883, 31.528385, 31.368649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107096, 31.869196, 31.272055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352352, -0.072372, -0.933065,
		-0.812475, -0.518468, -0.266600,
		-0.464470, 0.852028, -0.241484,
		29.967754, 32.124805, 31.199610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728710, 31.417040, 30.885546>,  <30.292883, 31.528385, 31.368649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728710, 31.417040, 30.885546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821941, 31.798603, 30.809929>,  <29.877880, 32.027542, 30.764559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821941, 31.798603, 30.809929>,  <29.728710, 31.417040, 30.885546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821941, 31.798603, 30.809929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259383, -0.248335, -0.933301,
		-0.937228, 0.168496, -0.305309,
		0.233076, 0.953907, -0.189041,
		29.891865, 32.084774, 30.753216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431425, 31.705849, 30.258047>,  <29.728710, 31.417040, 30.885546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431425, 31.705849, 30.258047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740812, 31.950735, 30.323698>,  <29.926445, 32.097668, 30.363089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740812, 31.950735, 30.323698>,  <29.431425, 31.705849, 30.258047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740812, 31.950735, 30.323698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335210, -0.175335, -0.925685,
		-0.537939, 0.771007, -0.340836,
		0.773470, 0.612214, 0.164130,
		29.972853, 32.134399, 30.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797728, 31.331940, 30.578278>,  <29.431425, 31.705849, 30.258047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797728, 31.331940, 30.578278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683828, 31.001205, 30.384264>,  <28.615488, 30.802765, 30.267855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683828, 31.001205, 30.384264>,  <28.797728, 31.331940, 30.578278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683828, 31.001205, 30.384264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228473, -0.549940, 0.803347,
		-0.930977, 0.117936, 0.345505,
		-0.284750, -0.826836, -0.485036,
		28.598404, 30.753155, 30.238752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235106, 30.993294, 30.880899>,  <28.797728, 31.331940, 30.578278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235106, 30.993294, 30.880899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512959, 30.772097, 30.696861>,  <28.679670, 30.639380, 30.586439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512959, 30.772097, 30.696861>,  <28.235106, 30.993294, 30.880899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512959, 30.772097, 30.696861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264788, -0.398130, 0.878282,
		-0.668860, -0.731910, -0.130128,
		0.694632, -0.552992, -0.460094,
		28.721348, 30.606199, 30.558832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100201, 30.272243, 30.686714>,  <28.235106, 30.993294, 30.880899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100201, 30.272243, 30.686714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487352, 30.318449, 30.776037>,  <28.719643, 30.346172, 30.829632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487352, 30.318449, 30.776037>,  <28.100201, 30.272243, 30.686714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487352, 30.318449, 30.776037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153291, -0.432878, 0.888323,
		0.199280, -0.894021, -0.401266,
		0.967879, 0.115515, 0.223310,
		28.777716, 30.353104, 30.843029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539658, 29.536610, 30.797825>,  <28.100201, 30.272243, 30.686714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539658, 29.536610, 30.797825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633995, 29.873396, 30.991926>,  <28.690598, 30.075468, 31.108387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633995, 29.873396, 30.991926>,  <28.539658, 29.536610, 30.797825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633995, 29.873396, 30.991926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238602, -0.433884, 0.868800,
		0.942044, -0.320685, 0.098565,
		0.235845, 0.841965, 0.485254,
		28.704748, 30.125986, 31.137503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896646, 29.239456, 30.632015>,  <28.539658, 29.536610, 30.797825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896646, 29.239456, 30.632015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595812, 29.036243, 30.799955>,  <27.415312, 28.914316, 30.900719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595812, 29.036243, 30.799955>,  <27.896646, 29.239456, 30.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595812, 29.036243, 30.799955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162950, -0.760595, -0.628445,
		0.638604, -0.404230, 0.654815,
		-0.752085, -0.508030, 0.419850,
		27.370186, 28.883835, 30.925911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187952, 28.632687, 30.759192>,  <27.896646, 29.239456, 30.632015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187952, 28.632687, 30.759192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791018, 28.636967, 30.709957>,  <27.552856, 28.639534, 30.680416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791018, 28.636967, 30.709957>,  <28.187952, 28.632687, 30.759192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791018, 28.636967, 30.709957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054138, -0.857856, -0.511031,
		-0.111057, -0.513779, 0.850704,
		-0.992338, 0.010699, -0.123086,
		27.493317, 28.640177, 30.673031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258812, 27.820829, 30.712212>,  <28.187952, 28.632687, 30.759192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258812, 27.820829, 30.712212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385916, 27.977739, 31.057501>,  <28.462177, 28.071884, 31.264673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385916, 27.977739, 31.057501>,  <28.258812, 27.820829, 30.712212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385916, 27.977739, 31.057501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812051, 0.582585, 0.034179,
		-0.489493, -0.711840, 0.503667,
		0.317759, 0.392273, 0.863222,
		28.481243, 28.095421, 31.316467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797157, 27.682232, 31.312490>,  <28.258812, 27.820829, 30.712212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797157, 27.682232, 31.312490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995123, 28.028866, 31.338076>,  <28.113903, 28.236847, 31.353426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995123, 28.028866, 31.338076>,  <27.797157, 27.682232, 31.312490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995123, 28.028866, 31.338076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859549, 0.477442, 0.182278,
		0.127421, -0.145192, 0.981164,
		0.494914, 0.866584, 0.063964,
		28.143597, 28.288841, 31.357265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831732, 27.922068, 32.006405>,  <27.797157, 27.682232, 31.312490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831732, 27.922068, 32.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802835, 28.186941, 31.708063>,  <27.785498, 28.345865, 31.529058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802835, 28.186941, 31.708063>,  <27.831732, 27.922068, 32.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802835, 28.186941, 31.708063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938808, 0.207362, 0.275028,
		0.336780, 0.720081, 0.606682,
		-0.072240, 0.662182, -0.745853,
		27.781164, 28.385595, 31.484308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299463, 27.561087, 32.479771>,  <27.831732, 27.922068, 32.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299463, 27.561087, 32.479771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157627, 27.188036, 32.506531>,  <27.072525, 26.964205, 32.522587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157627, 27.188036, 32.506531>,  <27.299463, 27.561087, 32.479771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157627, 27.188036, 32.506531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765216, 0.248331, -0.593949,
		0.537319, -0.261802, -0.801716,
		-0.354588, -0.932626, 0.066902,
		27.051250, 26.908249, 32.526600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725494, 27.821064, 33.000912>,  <27.299463, 27.561087, 32.479771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725494, 27.821064, 33.000912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424829, 28.083683, 32.975769>,  <27.244431, 28.241255, 32.960682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424829, 28.083683, 32.975769>,  <27.725494, 27.821064, 33.000912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424829, 28.083683, 32.975769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589234, 0.711288, 0.383239,
		0.296325, 0.251027, -0.921508,
		-0.751661, 0.656547, -0.062859,
		27.199331, 28.280647, 32.956913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047920, 28.418953, 32.804092>,  <27.725494, 27.821064, 33.000912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047920, 28.418953, 32.804092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692741, 28.534496, 32.947262>,  <27.479633, 28.603823, 33.033165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692741, 28.534496, 32.947262>,  <28.047920, 28.418953, 32.804092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692741, 28.534496, 32.947262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454336, 0.672021, 0.584779,
		-0.071613, 0.681870, -0.727959,
		-0.887947, 0.288860, 0.357924,
		27.426357, 28.621155, 33.054638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954987, 29.131166, 32.687149>,  <28.047920, 28.418953, 32.804092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954987, 29.131166, 32.687149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727301, 29.042761, 33.003922>,  <27.590689, 28.989717, 33.193985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727301, 29.042761, 33.003922>,  <27.954987, 29.131166, 32.687149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727301, 29.042761, 33.003922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415571, 0.753760, 0.509064,
		-0.709435, 0.618868, -0.337202,
		-0.569213, -0.221016, 0.791928,
		27.556538, 28.976456, 33.241501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896603, 29.787460, 32.959953>,  <27.954987, 29.131166, 32.687149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896603, 29.787460, 32.959953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758036, 29.549267, 33.249889>,  <27.674896, 29.406351, 33.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758036, 29.549267, 33.249889>,  <27.896603, 29.787460, 32.959953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758036, 29.549267, 33.249889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204157, 0.706307, 0.677828,
		-0.915595, 0.382793, -0.123104,
		-0.346417, -0.595483, 0.724841,
		27.654110, 29.370623, 33.467342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299120, 30.115948, 33.356388>,  <27.896603, 29.787460, 32.959953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299120, 30.115948, 33.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511028, 29.857489, 33.576149>,  <27.638172, 29.702414, 33.708004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511028, 29.857489, 33.576149>,  <27.299120, 30.115948, 33.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511028, 29.857489, 33.576149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187018, 0.720819, 0.667416,
		-0.827266, -0.250829, 0.502708,
		0.529769, -0.646146, 0.549399,
		27.669960, 29.663645, 33.740971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166403, 30.402405, 33.959045>,  <27.299120, 30.115948, 33.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166403, 30.402405, 33.959045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465960, 30.142210, 34.009686>,  <27.645693, 29.986094, 34.040070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465960, 30.142210, 34.009686>,  <27.166403, 30.402405, 33.959045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465960, 30.142210, 34.009686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354337, 0.554492, 0.752983,
		-0.560006, -0.519043, 0.645746,
		0.748892, -0.650486, 0.126603,
		27.690628, 29.947063, 34.047665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134706, 30.272070, 34.675117>,  <27.166403, 30.402405, 33.959045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134706, 30.272070, 34.675117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502918, 30.153650, 34.573154>,  <27.723846, 30.082600, 34.511978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502918, 30.153650, 34.573154>,  <27.134706, 30.272070, 34.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502918, 30.153650, 34.573154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374435, 0.482455, 0.791856,
		-0.111446, -0.824374, 0.554966,
		0.920532, -0.296047, -0.254907,
		27.779078, 30.064837, 34.496681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363207, 29.880062, 35.287666>,  <27.134706, 30.272070, 34.675117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363207, 29.880062, 35.287666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663240, 30.019884, 35.063103>,  <27.843260, 30.103777, 34.928364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663240, 30.019884, 35.063103>,  <27.363207, 29.880062, 35.287666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663240, 30.019884, 35.063103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333560, 0.533052, 0.777556,
		0.571068, -0.770494, 0.283231,
		0.750079, 0.349563, -0.561415,
		27.888266, 30.124750, 34.894680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865870, 29.973249, 35.739895>,  <27.363207, 29.880062, 35.287666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865870, 29.973249, 35.739895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994392, 30.195877, 35.433434>,  <28.071507, 30.329454, 35.249557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994392, 30.195877, 35.433434>,  <27.865870, 29.973249, 35.739895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994392, 30.195877, 35.433434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259753, 0.726222, 0.636498,
		0.910653, -0.403522, 0.088771,
		0.321309, 0.556571, -0.766153,
		28.090786, 30.362848, 35.203587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549566, 30.135468, 35.913895>,  <27.865870, 29.973249, 35.739895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549566, 30.135468, 35.913895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389570, 30.406206, 35.666706>,  <28.293571, 30.568649, 35.518394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389570, 30.406206, 35.666706>,  <28.549566, 30.135468, 35.913895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389570, 30.406206, 35.666706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047338, 0.688612, 0.723583,
		0.915295, 0.260174, -0.307480,
		-0.399992, 0.676848, -0.617968,
		28.269573, 30.609261, 35.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661791, 30.748411, 36.262428>,  <28.549566, 30.135468, 35.913895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661791, 30.748411, 36.262428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471813, 30.919844, 35.954990>,  <28.357826, 31.022703, 35.770527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471813, 30.919844, 35.954990>,  <28.661791, 30.748411, 36.262428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471813, 30.919844, 35.954990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034932, 0.863522, 0.503100,
		0.879322, 0.265793, -0.395153,
		-0.474944, 0.428583, -0.768599,
		28.329330, 31.048418, 35.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986681, 31.397243, 36.073189>,  <28.661791, 30.748411, 36.262428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986681, 31.397243, 36.073189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596739, 31.399389, 35.984077>,  <28.362774, 31.400677, 35.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596739, 31.399389, 35.984077>,  <28.986681, 31.397243, 36.073189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596739, 31.399389, 35.984077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092597, 0.899566, 0.426857,
		0.202695, 0.436752, -0.876448,
		-0.974854, 0.005365, -0.222780,
		28.304283, 31.400999, 35.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834599, 32.028038, 35.805595>,  <28.986681, 31.397243, 36.073189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834599, 32.028038, 35.805595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459341, 31.908648, 35.875793>,  <28.234186, 31.837013, 35.917912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459341, 31.908648, 35.875793>,  <28.834599, 32.028038, 35.805595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459341, 31.908648, 35.875793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220235, 0.905493, 0.362739,
		-0.267177, 0.301651, -0.915217,
		-0.938143, -0.298479, 0.175493,
		28.177898, 31.819103, 35.928440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335464, 32.574108, 35.466736>,  <28.834599, 32.028038, 35.805595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335464, 32.574108, 35.466736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150690, 32.380058, 35.763725>,  <28.039825, 32.263626, 35.941917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150690, 32.380058, 35.763725>,  <28.335464, 32.574108, 35.466736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150690, 32.380058, 35.763725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019204, 0.842418, 0.538482,
		-0.886706, 0.234485, -0.398459,
		-0.461935, -0.485127, 0.742474,
		28.012110, 32.234520, 35.986469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864368, 32.962440, 35.660839>,  <28.335464, 32.574108, 35.466736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864368, 32.962440, 35.660839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888445, 32.723824, 35.980968>,  <27.902891, 32.580654, 36.173046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888445, 32.723824, 35.980968>,  <27.864368, 32.962440, 35.660839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888445, 32.723824, 35.980968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050777, 0.798906, 0.599309,
		-0.996894, -0.076712, 0.017797,
		0.060193, -0.596544, 0.800320,
		27.906502, 32.544861, 36.221066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371962, 33.205292, 36.064114>,  <27.864368, 32.962440, 35.660839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371962, 33.205292, 36.064114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614487, 33.020699, 36.323166>,  <27.760002, 32.909943, 36.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614487, 33.020699, 36.323166>,  <27.371962, 33.205292, 36.064114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614487, 33.020699, 36.323166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109057, 0.854949, 0.507118,
		-0.787714, -0.236843, 0.568693,
		0.606310, -0.461484, 0.647626,
		27.796379, 32.882252, 36.517452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113758, 33.382076, 36.679710>,  <27.371962, 33.205292, 36.064114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113758, 33.382076, 36.679710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480511, 33.255154, 36.776577>,  <27.700562, 33.179001, 36.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480511, 33.255154, 36.776577>,  <27.113758, 33.382076, 36.679710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480511, 33.255154, 36.776577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033324, 0.665417, 0.745727,
		-0.397768, -0.675673, 0.620682,
		0.916880, -0.317310, 0.242166,
		27.755575, 33.159962, 36.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074730, 33.243618, 37.412342>,  <27.113758, 33.382076, 36.679710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074730, 33.243618, 37.412342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454077, 33.309322, 37.303810>,  <27.681684, 33.348747, 37.238689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454077, 33.309322, 37.303810>,  <27.074730, 33.243618, 37.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454077, 33.309322, 37.303810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034975, 0.796071, 0.604192,
		0.315244, -0.582485, 0.749221,
		0.948366, 0.164264, -0.271329,
		27.738586, 33.358601, 37.222412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412020, 33.369427, 37.987644>,  <27.074730, 33.243618, 37.412342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412020, 33.369427, 37.987644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661236, 33.531544, 37.720043>,  <27.810766, 33.628815, 37.559483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661236, 33.531544, 37.720043>,  <27.412020, 33.369427, 37.987644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661236, 33.531544, 37.720043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048405, 0.833672, 0.550135,
		0.780689, -0.375140, 0.499794,
		0.623042, 0.405292, -0.668997,
		27.848148, 33.653133, 37.519344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862171, 33.725452, 38.399837>,  <27.412020, 33.369427, 37.987644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862171, 33.725452, 38.399837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951502, 33.883099, 38.043232>,  <28.005100, 33.977684, 37.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951502, 33.883099, 38.043232>,  <27.862171, 33.725452, 38.399837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951502, 33.883099, 38.043232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121160, 0.896300, 0.426576,
		0.967185, -0.203281, 0.152416,
		0.223326, 0.394111, -0.891517,
		28.018499, 34.001331, 37.775776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516680, 34.063442, 38.451977>,  <27.862171, 33.725452, 38.399837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516680, 34.063442, 38.451977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358313, 34.223984, 38.121605>,  <28.263292, 34.320309, 37.923382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358313, 34.223984, 38.121605>,  <28.516680, 34.063442, 38.451977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358313, 34.223984, 38.121605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285841, 0.908608, 0.304510,
		0.872665, -0.115525, -0.474458,
		-0.395918, 0.401355, -0.825932,
		28.239538, 34.344391, 37.873825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040251, 34.339397, 38.086617>,  <28.516680, 34.063442, 38.451977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040251, 34.339397, 38.086617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708902, 34.540066, 37.986916>,  <28.510094, 34.660465, 37.927097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708902, 34.540066, 37.986916>,  <29.040251, 34.339397, 38.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708902, 34.540066, 37.986916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426837, 0.853423, 0.299131,
		0.362780, 0.141403, -0.921084,
		-0.828373, 0.501671, -0.249249,
		28.460390, 34.690567, 37.912140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151960, 35.005356, 37.739498>,  <29.040251, 34.339397, 38.086617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151960, 35.005356, 37.739498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796629, 35.090893, 37.902050>,  <28.583429, 35.142216, 37.999580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796629, 35.090893, 37.902050>,  <29.151960, 35.005356, 37.739498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796629, 35.090893, 37.902050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252150, 0.966756, 0.042465,
		-0.383785, 0.140190, -0.912719,
		-0.888330, 0.213845, 0.406376,
		28.530130, 35.155045, 38.023964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136732, 35.672722, 37.445793>,  <29.151960, 35.005356, 37.739498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136732, 35.672722, 37.445793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870502, 35.669552, 37.744308>,  <28.710766, 35.667648, 37.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870502, 35.669552, 37.744308>,  <29.136732, 35.672722, 37.445793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870502, 35.669552, 37.744308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028351, 0.999490, -0.014672,
		-0.745794, -0.030923, -0.665458,
		-0.665573, -0.007925, 0.746291,
		28.670830, 35.667175, 37.968197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771801, 36.078808, 37.588428>,  <29.136732, 35.672722, 37.445793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771801, 36.078808, 37.588428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755880, 36.478397, 37.597137>,  <29.746328, 36.718151, 37.602364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755880, 36.478397, 37.597137>,  <29.771801, 36.078808, 37.588428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755880, 36.478397, 37.597137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495832, 0.000828, 0.868418,
		0.867506, 0.045362, -0.495354,
		-0.039803, 0.998970, 0.021773,
		29.743940, 36.778088, 37.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485867, 36.265511, 37.668549>,  <29.771801, 36.078808, 37.588428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485867, 36.265511, 37.668549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248178, 36.571785, 37.767040>,  <30.105566, 36.755550, 37.826138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248178, 36.571785, 37.767040>,  <30.485867, 36.265511, 37.668549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248178, 36.571785, 37.767040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505018, 0.116922, 0.855153,
		0.625986, 0.632501, -0.456161,
		-0.594221, 0.765684, 0.246233,
		30.069912, 36.801491, 37.840912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980736, 36.670914, 37.823727>,  <30.485867, 36.265511, 37.668549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980736, 36.670914, 37.823727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631620, 36.754234, 38.000294>,  <30.422152, 36.804226, 38.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631620, 36.754234, 38.000294>,  <30.980736, 36.670914, 37.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631620, 36.754234, 38.000294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471519, 0.126130, 0.872789,
		0.126130, 0.969897, -0.208304,
		-0.872789, 0.208304, 0.441416,
		30.369783, 36.816727, 38.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045597, 37.261528, 38.184895>,  <30.980736, 36.670914, 37.823727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045597, 37.261528, 38.184895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748053, 37.076630, 38.377975>,  <30.569527, 36.965691, 38.493824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748053, 37.076630, 38.377975>,  <31.045597, 37.261528, 38.184895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748053, 37.076630, 38.377975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445484, 0.195472, 0.873690,
		-0.498212, 0.864941, 0.060517,
		-0.743861, -0.462243, 0.482704,
		30.524895, 36.937958, 38.522785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729210, 37.751289, 38.631741>,  <31.045597, 37.261528, 38.184895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729210, 37.751289, 38.631741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699139, 37.379276, 38.775627>,  <30.681097, 37.156071, 38.861958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699139, 37.379276, 38.775627>,  <30.729210, 37.751289, 38.631741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699139, 37.379276, 38.775627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524786, 0.269840, 0.807333,
		-0.847908, 0.249465, 0.467780,
		-0.075176, -0.930029, 0.359715,
		30.676586, 37.100269, 38.883541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513899, 37.769913, 39.349556>,  <30.729210, 37.751289, 38.631741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513899, 37.769913, 39.349556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723448, 37.430496, 39.319778>,  <30.849176, 37.226849, 39.301910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723448, 37.430496, 39.319778>,  <30.513899, 37.769913, 39.349556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723448, 37.430496, 39.319778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396049, 0.165268, 0.903234,
		-0.754125, -0.502661, 0.422642,
		0.523870, -0.848539, -0.074445,
		30.880610, 37.175934, 39.297443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565483, 37.363991, 40.051384>,  <30.513899, 37.769913, 39.349556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565483, 37.363991, 40.051384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875639, 37.222267, 39.842297>,  <31.061733, 37.137234, 39.716843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875639, 37.222267, 39.842297>,  <30.565483, 37.363991, 40.051384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875639, 37.222267, 39.842297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521133, -0.108469, 0.846555,
		-0.356642, -0.928816, 0.100537,
		0.775389, -0.354310, -0.522721,
		31.108255, 37.115974, 39.685482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855555, 36.794357, 40.429562>,  <30.565483, 37.363991, 40.051384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855555, 36.794357, 40.429562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143133, 36.930458, 40.187126>,  <31.315680, 37.012119, 40.041664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143133, 36.930458, 40.187126>,  <30.855555, 36.794357, 40.429562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143133, 36.930458, 40.187126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652880, -0.031407, 0.756810,
		0.238470, -0.939810, -0.244723,
		0.718944, 0.340251, -0.606093,
		31.358816, 37.032532, 40.005299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424931, 36.448208, 40.571896>,  <30.855555, 36.794357, 40.429562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424931, 36.448208, 40.571896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595966, 36.758049, 40.385494>,  <31.698587, 36.943954, 40.273655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595966, 36.758049, 40.385494>,  <31.424931, 36.448208, 40.571896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595966, 36.758049, 40.385494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751114, -0.017606, 0.659938,
		0.502987, -0.632201, -0.589344,
		0.427589, 0.774605, -0.465999,
		31.724243, 36.990429, 40.245693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114239, 36.259617, 40.399391>,  <31.424931, 36.448208, 40.571896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114239, 36.259617, 40.399391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136120, 36.658905, 40.389835>,  <32.149250, 36.898476, 40.384102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136120, 36.658905, 40.389835>,  <32.114239, 36.259617, 40.399391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136120, 36.658905, 40.389835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755610, -0.025745, 0.654516,
		0.652734, -0.053856, -0.755670,
		0.054704, 0.998217, -0.023889,
		32.152531, 36.958370, 40.382668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850636, 36.371902, 40.493446>,  <32.114239, 36.259617, 40.399391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850636, 36.371902, 40.493446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690685, 36.734032, 40.550716>,  <32.594715, 36.951309, 40.585079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690685, 36.734032, 40.550716>,  <32.850636, 36.371902, 40.493446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690685, 36.734032, 40.550716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738808, 0.225913, 0.634923,
		0.542462, 0.359668, -0.759193,
		-0.399873, 0.905319, 0.143176,
		32.570724, 37.005627, 40.593670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381142, 36.888550, 40.345947>,  <32.850636, 36.371902, 40.493446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381142, 36.888550, 40.345947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131336, 37.073551, 40.597683>,  <32.981453, 37.184551, 40.748726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131336, 37.073551, 40.597683>,  <33.381142, 36.888550, 40.345947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131336, 37.073551, 40.597683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770049, 0.230096, 0.595047,
		0.130403, 0.856239, -0.499850,
		-0.624516, 0.462505, 0.629340,
		32.943981, 37.212303, 40.786484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690395, 37.581676, 40.487968>,  <33.381142, 36.888550, 40.345947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690395, 37.581676, 40.487968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469906, 37.478199, 40.805264>,  <33.337612, 37.416115, 40.995640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469906, 37.478199, 40.805264>,  <33.690395, 37.581676, 40.487968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469906, 37.478199, 40.805264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780270, 0.176898, 0.599904,
		-0.295513, 0.949624, 0.104338,
		-0.551226, -0.258692, 0.793239,
		33.304539, 37.400593, 41.043236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903370, 38.088291, 40.986130>,  <33.690395, 37.581676, 40.487968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903370, 38.088291, 40.986130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712620, 37.802734, 41.191242>,  <33.598167, 37.631401, 41.314308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712620, 37.802734, 41.191242>,  <33.903370, 38.088291, 40.986130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712620, 37.802734, 41.191242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567071, 0.195860, 0.800043,
		-0.671578, 0.672307, 0.311426,
		-0.476879, -0.713892, 0.512781,
		33.569557, 37.588566, 41.345078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672989, 38.351597, 41.721828>,  <33.903370, 38.088291, 40.986130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672989, 38.351597, 41.721828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686012, 37.953098, 41.753902>,  <33.693825, 37.713997, 41.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686012, 37.953098, 41.753902>,  <33.672989, 38.351597, 41.721828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686012, 37.953098, 41.753902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346883, 0.086507, 0.933911,
		-0.937343, -0.002586, 0.348397,
		0.032554, -0.996248, 0.080189,
		33.695778, 37.654224, 41.777958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455345, 38.246887, 42.344784>,  <33.672989, 38.351597, 41.721828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455345, 38.246887, 42.344784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641388, 37.901775, 42.265503>,  <33.753014, 37.694706, 42.217934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641388, 37.901775, 42.265503>,  <33.455345, 38.246887, 42.344784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641388, 37.901775, 42.265503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294333, -0.060439, 0.953790,
		-0.834892, -0.501951, 0.225835,
		0.465106, -0.862782, -0.198201,
		33.780918, 37.642941, 42.206043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349915, 37.825062, 42.970051>,  <33.455345, 38.246887, 42.344784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349915, 37.825062, 42.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661846, 37.668968, 42.774265>,  <33.849007, 37.575310, 42.656796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661846, 37.668968, 42.774265>,  <33.349915, 37.825062, 42.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661846, 37.668968, 42.774265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437290, -0.219895, 0.872023,
		-0.447927, -0.894070, -0.000835,
		0.779833, -0.390237, -0.489465,
		33.895798, 37.551895, 42.627426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405579, 37.217258, 43.171974>,  <33.349915, 37.825062, 42.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405579, 37.217258, 43.171974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776180, 37.250259, 43.025124>,  <33.998543, 37.270061, 42.937012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776180, 37.250259, 43.025124>,  <33.405579, 37.217258, 43.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776180, 37.250259, 43.025124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372666, -0.336182, 0.864929,
		-0.052063, -0.938176, -0.342220,
		0.926504, 0.082503, -0.367129,
		34.054131, 37.275009, 42.914986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808243, 36.551365, 43.179752>,  <33.405579, 37.217258, 43.171974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808243, 36.551365, 43.179752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054337, 36.866558, 43.189346>,  <34.201992, 37.055676, 43.195103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054337, 36.866558, 43.189346>,  <33.808243, 36.551365, 43.179752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054337, 36.866558, 43.189346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416981, -0.351085, 0.838371,
		0.669043, -0.505789, -0.544572,
		0.615230, 0.787983, 0.023986,
		34.238907, 37.102951, 43.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367966, 36.256611, 43.520779>,  <33.808243, 36.551365, 43.179752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367966, 36.256611, 43.520779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416245, 36.652740, 43.548176>,  <34.445210, 36.890419, 43.564613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416245, 36.652740, 43.548176>,  <34.367966, 36.256611, 43.520779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416245, 36.652740, 43.548176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342825, -0.106337, 0.933361,
		0.931614, -0.089169, -0.352342,
		0.120694, 0.990324, 0.068495,
		34.452454, 36.949837, 43.568726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920906, 36.213852, 43.896290>,  <34.367966, 36.256611, 43.520779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920906, 36.213852, 43.896290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766476, 36.582317, 43.915936>,  <34.673817, 36.803394, 43.927723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766476, 36.582317, 43.915936>,  <34.920906, 36.213852, 43.896290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766476, 36.582317, 43.915936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228180, 0.043776, 0.972634,
		0.893801, 0.386717, -0.227091,
		-0.386075, 0.921159, 0.049114,
		34.650654, 36.858665, 43.930668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454971, 36.679897, 44.094219>,  <34.920906, 36.213852, 43.896290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454971, 36.679897, 44.094219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127888, 36.874260, 44.217670>,  <34.931637, 36.990879, 44.291740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127888, 36.874260, 44.217670>,  <35.454971, 36.679897, 44.094219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127888, 36.874260, 44.217670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363096, 0.019350, 0.931551,
		0.446675, 0.873797, -0.192253,
		-0.817706, 0.485906, 0.308629,
		34.882576, 37.020031, 44.310261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625187, 37.303310, 44.543350>,  <35.454971, 36.679897, 44.094219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625187, 37.303310, 44.543350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245022, 37.218845, 44.634678>,  <35.016922, 37.168167, 44.689476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245022, 37.218845, 44.634678>,  <35.625187, 37.303310, 44.543350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245022, 37.218845, 44.634678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242309, -0.042581, 0.969264,
		-0.194948, 0.976524, 0.091636,
		-0.950411, -0.211160, 0.228319,
		34.959900, 37.155499, 44.703175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480232, 37.672028, 45.121761>,  <35.625187, 37.303310, 44.543350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480232, 37.672028, 45.121761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190590, 37.396202, 45.116447>,  <35.016804, 37.230705, 45.113258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190590, 37.396202, 45.116447>,  <35.480232, 37.672028, 45.121761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190590, 37.396202, 45.116447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055653, -0.077615, 0.995429,
		-0.687444, 0.720052, 0.094578,
		-0.724102, -0.689565, -0.013283,
		34.973358, 37.189331, 45.112461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119053, 37.840992, 45.712208>,  <35.480232, 37.672028, 45.121761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119053, 37.840992, 45.712208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029736, 37.462318, 45.619312>,  <34.976147, 37.235115, 45.563576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029736, 37.462318, 45.619312>,  <35.119053, 37.840992, 45.712208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029736, 37.462318, 45.619312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073655, -0.221191, 0.972445,
		-0.971964, 0.234247, -0.020337,
		-0.223294, -0.946680, -0.232243,
		34.962746, 37.178314, 45.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704449, 37.674328, 46.232677>,  <35.119053, 37.840992, 45.712208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704449, 37.674328, 46.232677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802773, 37.310078, 46.099812>,  <34.861767, 37.091526, 46.020092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802773, 37.310078, 46.099812>,  <34.704449, 37.674328, 46.232677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802773, 37.310078, 46.099812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087721, -0.362174, 0.927973,
		-0.965341, -0.198964, -0.168906,
		0.245807, -0.910628, -0.332168,
		34.876514, 37.036888, 46.000160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247337, 37.167076, 46.611763>,  <34.704449, 37.674328, 46.232677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247337, 37.167076, 46.611763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580475, 36.985451, 46.485146>,  <34.780357, 36.876476, 46.409176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580475, 36.985451, 46.485146>,  <34.247337, 37.167076, 46.611763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580475, 36.985451, 46.485146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168532, -0.336706, 0.926405,
		-0.527232, -0.824895, -0.203898,
		0.832840, -0.454067, -0.316544,
		34.830326, 36.849232, 46.390182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228695, 36.529053, 46.897625>,  <34.247337, 37.167076, 46.611763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228695, 36.529053, 46.897625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619263, 36.539860, 46.811947>,  <34.853603, 36.546345, 46.760540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619263, 36.539860, 46.811947>,  <34.228695, 36.529053, 46.897625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619263, 36.539860, 46.811947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209336, -0.361164, 0.908702,
		-0.052807, -0.932111, -0.358303,
		0.976417, 0.027019, -0.214196,
		34.912189, 36.547966, 46.747688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519451, 35.927597, 47.213440>,  <34.228695, 36.529053, 46.897625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519451, 35.927597, 47.213440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842781, 36.150406, 47.137184>,  <35.036777, 36.284092, 47.091431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842781, 36.150406, 47.137184>,  <34.519451, 35.927597, 47.213440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842781, 36.150406, 47.137184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417680, -0.314348, 0.852484,
		0.414924, -0.768707, -0.486751,
		0.808320, 0.557022, -0.190643,
		35.085278, 36.317513, 47.079990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179676, 35.531628, 47.405079>,  <34.519451, 35.927597, 47.213440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179676, 35.531628, 47.405079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321869, 35.905449, 47.398838>,  <35.407185, 36.129742, 47.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321869, 35.905449, 47.398838>,  <35.179676, 35.531628, 47.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321869, 35.905449, 47.398838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542451, -0.192685, 0.817692,
		0.761170, -0.299138, -0.575445,
		0.355482, 0.934553, -0.015602,
		35.428513, 36.185814, 47.394157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830753, 35.375099, 47.530334>,  <35.179676, 35.531628, 47.405079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830753, 35.375099, 47.530334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841240, 35.771900, 47.579716>,  <35.847530, 36.009983, 47.609344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841240, 35.771900, 47.579716>,  <35.830753, 35.375099, 47.530334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841240, 35.771900, 47.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700641, -0.106318, 0.705549,
		0.713032, 0.067998, -0.697826,
		0.026215, 0.992004, 0.123450,
		35.849106, 36.069500, 47.616753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506977, 35.705338, 47.459774>,  <35.830753, 35.375099, 47.530334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506977, 35.705338, 47.459774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283169, 35.930237, 47.703350>,  <36.148884, 36.065178, 47.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283169, 35.930237, 47.703350>,  <36.506977, 35.705338, 47.459774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283169, 35.930237, 47.703350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699330, -0.074049, 0.710953,
		0.444826, 0.823644, -0.351767,
		-0.559525, 0.562252, 0.608938,
		36.115311, 36.098911, 47.886032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989452, 36.039776, 47.895939>,  <36.506977, 35.705338, 47.459774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989452, 36.039776, 47.895939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645897, 36.083298, 48.096130>,  <36.439766, 36.109409, 48.216244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645897, 36.083298, 48.096130>,  <36.989452, 36.039776, 47.895939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645897, 36.083298, 48.096130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468732, -0.226832, 0.853720,
		0.206409, 0.967838, 0.143825,
		-0.858886, 0.108800, 0.500477,
		36.388229, 36.115936, 48.246273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056713, 36.588978, 48.366783>,  <36.989452, 36.039776, 47.895939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056713, 36.588978, 48.366783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 36.320370, 48.499218>,  <36.632458, 36.159203, 48.578678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 36.320370, 48.499218>,  <37.056713, 36.588978, 48.366783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791553, 36.320370, 48.499218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588170, -0.193460, 0.785258,
		-0.463267, 0.715284, 0.523214,
		-0.662903, -0.671522, 0.331085,
		36.592682, 36.118912, 48.598545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952538, 36.817738, 49.054768>,  <37.056713, 36.588978, 48.366783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952538, 36.817738, 49.054768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765930, 36.465801, 49.091068>,  <36.653965, 36.254639, 49.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765930, 36.465801, 49.091068>,  <36.952538, 36.817738, 49.054768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765930, 36.465801, 49.091068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563000, -0.216242, 0.797666,
		-0.682195, 0.423222, 0.596232,
		-0.466520, -0.879842, 0.090754,
		36.625973, 36.201847, 49.118294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570072, 36.800083, 49.753098>,  <36.952538, 36.817738, 49.054768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570072, 36.800083, 49.753098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580444, 36.419682, 49.629860>,  <36.586670, 36.191441, 49.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580444, 36.419682, 49.629860>,  <36.570072, 36.800083, 49.753098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580444, 36.419682, 49.629860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551844, -0.243361, 0.797649,
		-0.833544, -0.190706, 0.518494,
		0.025935, -0.951003, -0.308092,
		36.588226, 36.134380, 49.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380920, 36.431988, 50.241989>,  <36.570072, 36.800083, 49.753098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380920, 36.431988, 50.241989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600105, 36.162056, 50.044266>,  <36.731617, 36.000095, 49.925632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600105, 36.162056, 50.044266>,  <36.380920, 36.431988, 50.241989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600105, 36.162056, 50.044266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335962, -0.363631, 0.868850,
		-0.766074, -0.642165, 0.027462,
		0.547960, -0.674830, -0.494312,
		36.764492, 35.959606, 49.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111004, 35.807186, 50.534447>,  <36.380920, 36.431988, 50.241989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111004, 35.807186, 50.534447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481380, 35.732803, 50.402962>,  <36.703606, 35.688175, 50.324070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481380, 35.732803, 50.402962>,  <36.111004, 35.807186, 50.534447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481380, 35.732803, 50.402962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243355, -0.371829, 0.895836,
		-0.288812, -0.909485, -0.299038,
		0.925940, -0.185956, -0.328716,
		36.759163, 35.677017, 50.304348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241974, 35.159248, 50.807529>,  <36.111004, 35.807186, 50.534447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241974, 35.159248, 50.807529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598793, 35.302422, 50.697163>,  <36.812885, 35.388325, 50.630943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598793, 35.302422, 50.697163>,  <36.241974, 35.159248, 50.807529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598793, 35.302422, 50.697163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426770, -0.466249, 0.774906,
		0.148719, -0.809008, -0.568673,
		0.892048, 0.357936, -0.275920,
		36.866409, 35.409801, 50.614388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661880, 34.670521, 50.742352>,  <36.241974, 35.159248, 50.807529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661880, 34.670521, 50.742352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906139, 34.977612, 50.820019>,  <37.052696, 35.161865, 50.866619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906139, 34.977612, 50.820019>,  <36.661880, 34.670521, 50.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906139, 34.977612, 50.820019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357740, -0.486186, 0.797274,
		0.706493, -0.417391, -0.571535,
		0.610647, 0.767729, 0.194170,
		37.089333, 35.207932, 50.878269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124130, 34.309135, 51.053288>,  <36.661880, 34.670521, 50.742352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124130, 34.309135, 51.053288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208649, 34.682522, 51.169212>,  <37.259361, 34.906555, 51.238766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208649, 34.682522, 51.169212>,  <37.124130, 34.309135, 51.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208649, 34.682522, 51.169212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421369, -0.354533, 0.834718,
		0.881930, -0.054256, -0.468247,
		0.211297, 0.933468, 0.289812,
		37.272038, 34.962563, 51.256157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732605, 34.190533, 51.187160>,  <37.124130, 34.309135, 51.053288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732605, 34.190533, 51.187160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652050, 34.528805, 51.384853>,  <37.603718, 34.731770, 51.503468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652050, 34.528805, 51.384853>,  <37.732605, 34.190533, 51.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652050, 34.528805, 51.384853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582045, -0.302509, 0.754793,
		0.787825, 0.439670, -0.431304,
		-0.201386, 0.845683, 0.494231,
		37.591633, 34.782509, 51.533123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283989, 34.164310, 51.606346>,  <37.732605, 34.190533, 51.187160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283989, 34.164310, 51.606346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018951, 34.417938, 51.765808>,  <37.859928, 34.570114, 51.861485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018951, 34.417938, 51.765808>,  <38.283989, 34.164310, 51.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018951, 34.417938, 51.765808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282637, -0.281241, 0.917071,
		0.693603, 0.720322, 0.007138,
		-0.662594, 0.634066, 0.398659,
		37.820171, 34.608158, 51.885406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662979, 34.513557, 52.124489>,  <38.283989, 34.164310, 51.606346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662979, 34.513557, 52.124489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273270, 34.521873, 52.214245>,  <38.039444, 34.526863, 52.268101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273270, 34.521873, 52.214245>,  <38.662979, 34.513557, 52.124489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273270, 34.521873, 52.214245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208333, -0.296525, 0.932025,
		0.085914, 0.954799, 0.284566,
		-0.974277, 0.020789, 0.224392,
		37.980988, 34.528111, 52.281563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546982, 34.940586, 52.742966>,  <38.662979, 34.513557, 52.124489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546982, 34.940586, 52.742966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243652, 34.679840, 52.744518>,  <38.061653, 34.523392, 52.745449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243652, 34.679840, 52.744518>,  <38.546982, 34.940586, 52.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243652, 34.679840, 52.744518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199172, -0.226029, 0.953541,
		-0.620700, 0.723870, 0.301237,
		-0.758328, -0.651861, 0.003879,
		38.016155, 34.484283, 52.745682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521954, 34.806789, 53.499710>,  <38.546982, 34.940586, 52.742966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521954, 34.806789, 53.499710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270966, 34.549824, 53.323719>,  <38.120373, 34.395645, 53.218124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270966, 34.549824, 53.323719>,  <38.521954, 34.806789, 53.499710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270966, 34.549824, 53.323719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209883, -0.404605, 0.890081,
		-0.749819, 0.650845, 0.119047,
		-0.627472, -0.642413, -0.439982,
		38.082726, 34.357101, 53.191723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382122, 34.114635, 53.572414>,  <38.521954, 34.806789, 53.499710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382122, 34.114635, 53.572414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146400, 33.911854, 53.824039>,  <38.004967, 33.790184, 53.975014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146400, 33.911854, 53.824039>,  <38.382122, 34.114635, 53.572414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146400, 33.911854, 53.824039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675346, -0.736461, 0.039154,
		0.443429, 0.447907, 0.776370,
		-0.589303, -0.506957, 0.629060,
		37.969608, 33.759766, 54.012756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618675, 34.141823, 54.320427>,  <38.382122, 34.114635, 53.572414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618675, 34.141823, 54.320427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463772, 33.815750, 54.148144>,  <38.370831, 33.620106, 54.044773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463772, 33.815750, 54.148144>,  <38.618675, 34.141823, 54.320427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463772, 33.815750, 54.148144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873437, -0.473950, 0.111709,
		-0.295196, -0.332934, 0.895552,
		-0.387255, -0.815185, -0.430705,
		38.347595, 33.571194, 54.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912239, 33.531746, 54.718403>,  <38.618675, 34.141823, 54.320427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912239, 33.531746, 54.718403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793236, 33.469662, 54.341595>,  <38.721832, 33.432411, 54.115509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793236, 33.469662, 54.341595>,  <38.912239, 33.531746, 54.718403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793236, 33.469662, 54.341595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853091, -0.486205, -0.189316,
		-0.428630, -0.859951, 0.277057,
		-0.297509, -0.155208, -0.942018,
		38.703983, 33.423100, 54.058990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820633, 32.774612, 54.527679>,  <38.912239, 33.531746, 54.718403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820633, 32.774612, 54.527679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922256, 33.040874, 54.247005>,  <38.983231, 33.200630, 54.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922256, 33.040874, 54.247005>,  <38.820633, 32.774612, 54.527679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922256, 33.040874, 54.247005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871738, -0.471859, -0.131993,
		-0.418957, -0.578149, -0.700156,
		0.254063, 0.665652, -0.701683,
		38.998474, 33.240570, 54.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057327, 32.451645, 53.908455>,  <38.820633, 32.774612, 54.527679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057327, 32.451645, 53.908455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253735, 32.799587, 53.927452>,  <39.371578, 33.008354, 53.938850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253735, 32.799587, 53.927452>,  <39.057327, 32.451645, 53.908455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253735, 32.799587, 53.927452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857084, -0.472613, -0.205047,
		-0.155915, 0.141386, -0.977599,
		0.491017, 0.869855, 0.047492,
		39.401039, 33.060543, 53.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014717, 32.071972, 53.253170>,  <39.057327, 32.451645, 53.908455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014717, 32.071972, 53.253170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725883, 32.254883, 53.460819>,  <38.552582, 32.364628, 53.585407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725883, 32.254883, 53.460819>,  <39.014717, 32.071972, 53.253170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725883, 32.254883, 53.460819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192781, 0.853675, -0.483813,
		-0.664398, -0.249278, -0.704582,
		-0.722088, 0.457274, 0.519123,
		38.509258, 32.392067, 53.616558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453373, 32.493832, 52.900215>,  <39.014717, 32.071972, 53.253170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453373, 32.493832, 52.900215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453724, 32.673954, 53.257362>,  <38.453934, 32.782028, 53.471653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453724, 32.673954, 53.257362>,  <38.453373, 32.493832, 52.900215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453724, 32.673954, 53.257362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020828, 0.892687, -0.450195,
		-0.999783, -0.018202, 0.010162,
		0.000877, 0.450309, 0.892872,
		38.453987, 32.809048, 53.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920216, 32.067295, 53.216877>,  <38.453373, 32.493832, 52.900215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920216, 32.067295, 53.216877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756836, 31.704632, 53.174648>,  <37.658810, 31.487034, 53.149311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756836, 31.704632, 53.174648>,  <37.920216, 32.067295, 53.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756836, 31.704632, 53.174648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564173, 0.341684, -0.751639,
		0.717549, -0.247445, -0.651071,
		-0.408450, -0.906655, -0.105573,
		37.634300, 31.432636, 53.142975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033661, 31.836237, 52.509167>,  <37.920216, 32.067295, 53.216877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033661, 31.836237, 52.509167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697830, 31.746557, 52.707092>,  <37.496330, 31.692749, 52.825848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697830, 31.746557, 52.707092>,  <38.033661, 31.836237, 52.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697830, 31.746557, 52.707092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542968, 0.374891, -0.751427,
		-0.017030, -0.899550, -0.436485,
		-0.839581, -0.224201, 0.494811,
		37.445957, 31.679296, 52.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615513, 31.212280, 52.123337>,  <38.033661, 31.836237, 52.509167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615513, 31.212280, 52.123337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388103, 31.493587, 52.294075>,  <37.251659, 31.662373, 52.396519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388103, 31.493587, 52.294075>,  <37.615513, 31.212280, 52.123337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388103, 31.493587, 52.294075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384596, 0.231454, -0.893597,
		-0.727232, -0.672193, 0.138887,
		-0.568524, 0.703268, 0.426843,
		37.217545, 31.704567, 52.422127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934349, 31.067606, 51.863659>,  <37.615513, 31.212280, 52.123337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934349, 31.067606, 51.863659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986889, 31.449362, 51.970909>,  <37.018414, 31.678415, 52.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986889, 31.449362, 51.970909>,  <36.934349, 31.067606, 51.863659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986889, 31.449362, 51.970909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390208, 0.298406, -0.871029,
		-0.911310, 0.009782, 0.411604,
		0.131345, 0.954389, 0.268124,
		37.026291, 31.735678, 52.051346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314320, 31.394028, 51.656322>,  <36.934349, 31.067606, 51.863659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314320, 31.394028, 51.656322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568085, 31.701002, 51.693336>,  <36.720345, 31.885187, 51.715546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568085, 31.701002, 51.693336>,  <36.314320, 31.394028, 51.656322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568085, 31.701002, 51.693336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422765, 0.444699, -0.789628,
		-0.647139, 0.461830, 0.606568,
		0.634414, 0.767434, 0.092536,
		36.758408, 31.931232, 51.721096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902294, 32.057713, 51.726631>,  <36.314320, 31.394028, 51.656322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902294, 32.057713, 51.726631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263817, 32.109951, 51.563622>,  <36.480732, 32.141293, 51.465816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263817, 32.109951, 51.563622>,  <35.902294, 32.057713, 51.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263817, 32.109951, 51.563622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419614, 0.457366, -0.784054,
		0.083992, 0.879637, 0.468172,
		0.903808, 0.130597, -0.407523,
		36.534958, 32.149132, 51.441364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832542, 32.715015, 51.446079>,  <35.902294, 32.057713, 51.726631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832542, 32.715015, 51.446079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145340, 32.523571, 51.286373>,  <36.333019, 32.408703, 51.190548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145340, 32.523571, 51.286373>,  <35.832542, 32.715015, 51.446079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145340, 32.523571, 51.286373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318809, 0.243297, -0.916061,
		0.535581, 0.843643, 0.037670,
		0.781993, -0.478616, -0.399266,
		36.379936, 32.379986, 51.166592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945744, 33.117115, 50.807190>,  <35.832542, 32.715015, 51.446079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945744, 33.117115, 50.807190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147987, 32.775444, 50.758625>,  <36.269333, 32.570442, 50.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147987, 32.775444, 50.758625>,  <35.945744, 33.117115, 50.807190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147987, 32.775444, 50.758625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243643, -0.006370, -0.969844,
		0.827646, 0.519942, -0.211335,
		0.505608, -0.854178, -0.121408,
		36.299671, 32.519192, 50.722202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409157, 33.306053, 50.341808>,  <35.945744, 33.117115, 50.807190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409157, 33.306053, 50.341808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353825, 32.910027, 50.331787>,  <36.320625, 32.672409, 50.325775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353825, 32.910027, 50.331787>,  <36.409157, 33.306053, 50.341808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353825, 32.910027, 50.331787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100747, 0.039233, -0.994138,
		0.985248, -0.134999, -0.105173,
		-0.138334, -0.990069, -0.025053,
		36.312325, 32.613007, 50.324272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964996, 33.032066, 49.984600>,  <36.409157, 33.306053, 50.341808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964996, 33.032066, 49.984600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675503, 32.756317, 49.972122>,  <36.501808, 32.590866, 49.964634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675503, 32.756317, 49.972122>,  <36.964996, 33.032066, 49.984600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675503, 32.756317, 49.972122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046863, 0.094203, -0.994449,
		0.688488, -0.718253, -0.100484,
		-0.723732, -0.689375, -0.031198,
		36.458382, 32.549503, 49.962761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183186, 32.734978, 49.411228>,  <36.964996, 33.032066, 49.984600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183186, 32.734978, 49.411228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 32.608307, 49.474915>,  <36.584736, 32.532303, 49.513126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 32.608307, 49.474915>,  <37.183186, 32.734978, 49.411228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809155, 32.608307, 49.474915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164253, -0.010901, -0.986358,
		0.314094, -0.948470, -0.041822,
		-0.935076, -0.316679, 0.159213,
		36.528633, 32.513302, 49.522678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062698, 32.116070, 49.052013>,  <37.183186, 32.734978, 49.411228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062698, 32.116070, 49.052013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696030, 32.262592, 49.115932>,  <36.476028, 32.350506, 49.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696030, 32.262592, 49.115932>,  <37.062698, 32.116070, 49.052013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696030, 32.262592, 49.115932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224235, -0.140434, -0.964364,
		-0.330813, -0.919835, 0.210871,
		-0.916669, 0.366308, 0.159801,
		36.421028, 32.372486, 49.163872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716034, 31.827332, 48.581135>,  <37.062698, 32.116070, 49.052013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716034, 31.827332, 48.581135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458019, 32.115734, 48.682392>,  <36.303211, 32.288776, 48.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458019, 32.115734, 48.682392>,  <36.716034, 31.827332, 48.581135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458019, 32.115734, 48.682392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368778, -0.003576, -0.929511,
		-0.669278, -0.692919, 0.268198,
		-0.645035, 0.721006, 0.253140,
		36.264507, 32.332035, 48.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127125, 31.646351, 48.297169>,  <36.716034, 31.827332, 48.581135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127125, 31.646351, 48.297169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079018, 32.036129, 48.373055>,  <36.050156, 32.269997, 48.418587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079018, 32.036129, 48.373055>,  <36.127125, 31.646351, 48.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079018, 32.036129, 48.373055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291922, 0.147944, -0.944931,
		-0.948851, -0.169024, 0.266670,
		-0.120264, 0.974445, 0.189719,
		36.042938, 32.328461, 48.429970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578968, 31.745153, 47.911457>,  <36.127125, 31.646351, 48.297169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578968, 31.745153, 47.911457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689247, 32.118881, 48.001823>,  <35.755413, 32.343117, 48.056042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689247, 32.118881, 48.001823>,  <35.578968, 31.745153, 47.911457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689247, 32.118881, 48.001823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122224, 0.267187, -0.955862,
		-0.953443, 0.235913, 0.187858,
		0.275694, 0.934321, 0.225914,
		35.771954, 32.399178, 48.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035599, 32.165939, 47.727451>,  <35.578968, 31.745153, 47.911457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035599, 32.165939, 47.727451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375683, 32.376492, 47.724159>,  <35.579731, 32.502823, 47.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375683, 32.376492, 47.724159>,  <35.035599, 32.165939, 47.727451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375683, 32.376492, 47.724159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214330, 0.331825, -0.918670,
		-0.480844, 0.782823, 0.394940,
		0.850207, 0.526384, -0.008227,
		35.630745, 32.534409, 47.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830742, 32.813545, 47.487358>,  <35.035599, 32.165939, 47.727451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830742, 32.813545, 47.487358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219986, 32.765026, 47.409039>,  <35.453533, 32.735916, 47.362045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219986, 32.765026, 47.409039>,  <34.830742, 32.813545, 47.487358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219986, 32.765026, 47.409039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112439, 0.491758, -0.863442,
		0.201020, 0.862242, 0.464897,
		0.973113, -0.121297, -0.195803,
		35.511921, 32.728638, 47.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977627, 33.351604, 47.156723>,  <34.830742, 32.813545, 47.487358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977627, 33.351604, 47.156723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294865, 33.126446, 47.063648>,  <35.485207, 32.991352, 47.007801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294865, 33.126446, 47.063648>,  <34.977627, 33.351604, 47.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294865, 33.126446, 47.063648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049497, 0.321205, -0.945715,
		0.607079, 0.761562, 0.226886,
		0.793098, -0.562894, -0.232692,
		35.532795, 32.957577, 46.993839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424564, 33.715073, 46.733311>,  <34.977627, 33.351604, 47.156723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424564, 33.715073, 46.733311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513004, 33.336365, 46.639721>,  <35.566071, 33.109138, 46.583569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513004, 33.336365, 46.639721>,  <35.424564, 33.715073, 46.733311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513004, 33.336365, 46.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117131, 0.212391, -0.970139,
		0.968191, 0.241906, -0.063935,
		0.221104, -0.946769, -0.233970,
		35.579334, 33.052334, 46.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966621, 33.748951, 46.215160>,  <35.424564, 33.715073, 46.733311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966621, 33.748951, 46.215160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798111, 33.386932, 46.191795>,  <35.697002, 33.169720, 46.177776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798111, 33.386932, 46.191795>,  <35.966621, 33.748951, 46.215160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798111, 33.386932, 46.191795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021601, 0.074403, -0.996994,
		0.906674, -0.418750, -0.050895,
		-0.421278, -0.905048, -0.058414,
		35.671726, 33.115417, 46.174271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322884, 33.400848, 45.587788>,  <35.966621, 33.748951, 46.215160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322884, 33.400848, 45.587788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985199, 33.194420, 45.645729>,  <35.782589, 33.070560, 45.680496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985199, 33.194420, 45.645729>,  <36.322884, 33.400848, 45.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985199, 33.194420, 45.645729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069662, -0.162320, -0.984276,
		0.531472, -0.841023, 0.101081,
		-0.844207, -0.516074, 0.144856,
		35.731937, 33.039597, 45.689186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243587, 32.906391, 44.925308>,  <36.322884, 33.400848, 45.587788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243587, 32.906391, 44.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882427, 32.869183, 45.093174>,  <35.665730, 32.846859, 45.193893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882427, 32.869183, 45.093174>,  <36.243587, 32.906391, 44.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882427, 32.869183, 45.093174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416607, -0.051098, -0.907650,
		0.105874, -0.994352, 0.007383,
		-0.902901, -0.093021, 0.419664,
		35.611557, 32.841278, 45.219074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917625, 32.461262, 44.532898>,  <36.243587, 32.906391, 44.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917625, 32.461262, 44.532898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630737, 32.676739, 44.709721>,  <35.458607, 32.806026, 44.815815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630737, 32.676739, 44.709721>,  <35.917625, 32.461262, 44.532898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630737, 32.676739, 44.709721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497931, 0.047619, -0.865908,
		-0.487508, -0.841156, 0.234079,
		-0.717218, 0.538692, 0.442052,
		35.415573, 32.838345, 44.842335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324421, 32.035934, 44.395950>,  <35.917625, 32.461262, 44.532898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324421, 32.035934, 44.395950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219166, 32.413067, 44.477753>,  <35.156013, 32.639347, 44.526833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219166, 32.413067, 44.477753>,  <35.324421, 32.035934, 44.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219166, 32.413067, 44.477753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617995, -0.001952, -0.786180,
		-0.740839, -0.333254, 0.583181,
		-0.263136, 0.942835, 0.204503,
		35.140224, 32.695919, 44.539104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572147, 32.051231, 44.334797>,  <35.324421, 32.035934, 44.395950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572147, 32.051231, 44.334797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693653, 32.431168, 44.305073>,  <34.766556, 32.659130, 44.287239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693653, 32.431168, 44.305073>,  <34.572147, 32.051231, 44.334797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693653, 32.431168, 44.305073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668088, 0.156754, -0.727383,
		-0.679253, 0.270599, 0.682196,
		0.303766, 0.949844, -0.074309,
		34.784782, 32.716122, 44.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952839, 32.370033, 44.228424>,  <34.572147, 32.051231, 44.334797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952839, 32.370033, 44.228424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233635, 32.626316, 44.104031>,  <34.402111, 32.780087, 44.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233635, 32.626316, 44.104031>,  <33.952839, 32.370033, 44.228424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233635, 32.626316, 44.104031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428530, 0.031228, -0.902988,
		-0.568840, 0.767150, 0.296483,
		0.701985, 0.640707, -0.310983,
		34.444229, 32.818527, 44.010735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537975, 32.929436, 44.017460>,  <33.952839, 32.370033, 44.228424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537975, 32.929436, 44.017460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885048, 32.973785, 43.823620>,  <34.093292, 33.000397, 43.707314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885048, 32.973785, 43.823620>,  <33.537975, 32.929436, 44.017460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885048, 32.973785, 43.823620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494696, 0.288817, -0.819671,
		0.049080, 0.950943, 0.305450,
		0.867679, 0.110876, -0.484602,
		34.145351, 33.007050, 43.678238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465729, 33.612289, 43.574841>,  <33.537975, 32.929436, 44.017460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465729, 33.612289, 43.574841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768604, 33.447060, 43.372440>,  <33.950329, 33.347923, 43.250999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768604, 33.447060, 43.372440>,  <33.465729, 33.612289, 43.574841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768604, 33.447060, 43.372440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516356, 0.095913, -0.850986,
		0.400050, 0.905634, -0.140667,
		0.757190, -0.413071, -0.505999,
		33.995762, 33.323139, 43.220642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506771, 33.987625, 42.955490>,  <33.465729, 33.612289, 43.574841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506771, 33.987625, 42.955490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701366, 33.650066, 42.865002>,  <33.818123, 33.447533, 42.810711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701366, 33.650066, 42.865002>,  <33.506771, 33.987625, 42.955490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701366, 33.650066, 42.865002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441708, -0.014169, -0.897047,
		0.753806, 0.536325, -0.379647,
		0.486488, -0.843892, -0.226218,
		33.847313, 33.396900, 42.797134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983692, 34.032276, 42.385307>,  <33.506771, 33.987625, 42.955490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983692, 34.032276, 42.385307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867710, 33.649464, 42.383896>,  <33.798122, 33.419777, 42.383049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867710, 33.649464, 42.383896>,  <33.983692, 34.032276, 42.385307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867710, 33.649464, 42.383896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308519, 0.096963, -0.946264,
		0.905949, -0.273284, -0.323378,
		-0.289954, -0.957034, -0.003531,
		33.780724, 33.362354, 42.382835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203693, 33.805813, 41.779007>,  <33.983692, 34.032276, 42.385307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203693, 33.805813, 41.779007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924255, 33.532921, 41.865284>,  <33.756592, 33.369186, 41.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924255, 33.532921, 41.865284>,  <34.203693, 33.805813, 41.779007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924255, 33.532921, 41.865284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191684, -0.111988, -0.975047,
		0.689362, -0.722510, -0.052538,
		-0.698597, -0.682231, 0.215694,
		33.714676, 33.328251, 41.929993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362202, 33.323772, 41.343510>,  <34.203693, 33.805813, 41.779007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362202, 33.323772, 41.343510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984592, 33.245255, 41.449558>,  <33.758026, 33.198143, 41.513187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984592, 33.245255, 41.449558>,  <34.362202, 33.323772, 41.343510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984592, 33.245255, 41.449558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267912, -0.012704, -0.963360,
		0.192475, -0.980462, -0.040597,
		-0.944022, -0.196299, 0.265122,
		33.701385, 33.186367, 41.529095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046555, 32.845131, 40.893921>,  <34.362202, 33.323772, 41.343510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046555, 32.845131, 40.893921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733356, 33.044209, 41.043171>,  <33.545437, 33.163654, 41.132721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733356, 33.044209, 41.043171>,  <34.046555, 32.845131, 40.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733356, 33.044209, 41.043171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379027, 0.093892, -0.920610,
		-0.493212, -0.862258, 0.115121,
		-0.782994, 0.497690, 0.373127,
		33.498459, 33.193516, 41.155109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461536, 32.474300, 40.534702>,  <34.046555, 32.845131, 40.893921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461536, 32.474300, 40.534702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280548, 32.796932, 40.686859>,  <33.171955, 32.990513, 40.778152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280548, 32.796932, 40.686859>,  <33.461536, 32.474300, 40.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280548, 32.796932, 40.686859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424298, 0.180471, -0.887356,
		-0.784376, -0.562899, 0.260575,
		-0.452466, 0.806583, 0.380394,
		33.144810, 33.038906, 40.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803036, 32.453281, 40.262783>,  <33.461536, 32.474300, 40.534702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803036, 32.453281, 40.262783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841068, 32.829823, 40.392284>,  <32.863888, 33.055748, 40.469986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841068, 32.829823, 40.392284>,  <32.803036, 32.453281, 40.262783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841068, 32.829823, 40.392284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315673, 0.336954, -0.887025,
		-0.944092, -0.017862, 0.329197,
		0.095080, 0.941352, 0.323754,
		32.869591, 33.112228, 40.489410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237209, 32.723106, 40.157326>,  <32.803036, 32.453281, 40.262783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237209, 32.723106, 40.157326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499004, 33.025524, 40.154522>,  <32.656082, 33.206974, 40.152840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499004, 33.025524, 40.154522>,  <32.237209, 32.723106, 40.157326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499004, 33.025524, 40.154522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412856, 0.349601, -0.841029,
		-0.633401, 0.553337, 0.540945,
		0.654487, 0.756041, -0.007011,
		32.695351, 33.252335, 40.152420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843584, 33.259125, 40.061852>,  <32.237209, 32.723106, 40.157326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843584, 33.259125, 40.061852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215973, 33.352516, 39.949581>,  <32.439407, 33.408550, 39.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215973, 33.352516, 39.949581>,  <31.843584, 33.259125, 40.061852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215973, 33.352516, 39.949581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338032, 0.260814, -0.904274,
		-0.137927, 0.936730, 0.321734,
		0.930973, 0.233481, -0.280671,
		32.495266, 33.422562, 39.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842342, 33.942738, 39.770382>,  <31.843584, 33.259125, 40.061852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842342, 33.942738, 39.770382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 33.793968, 39.606533>,  <32.375462, 33.704704, 39.508224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 33.793968, 39.606533>,  <31.842342, 33.942738, 39.770382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175541, 33.793968, 39.606533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228158, 0.443556, -0.866719,
		0.504046, 0.815431, 0.284622,
		0.832995, -0.371928, -0.409620,
		32.425438, 33.682388, 39.483646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981054, 34.434105, 39.278187>,  <31.842342, 33.942738, 39.770382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981054, 34.434105, 39.278187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229851, 34.145226, 39.157150>,  <32.379128, 33.971897, 39.084530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229851, 34.145226, 39.157150>,  <31.981054, 34.434105, 39.278187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229851, 34.145226, 39.157150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108288, 0.303390, -0.946693,
		0.775500, 0.621602, 0.110501,
		0.621992, -0.722195, -0.302591,
		32.416447, 33.928566, 39.066372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412064, 34.726601, 38.822010>,  <31.981054, 34.434105, 39.278187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412064, 34.726601, 38.822010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410610, 34.334736, 38.741772>,  <32.409737, 34.099617, 38.693626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410610, 34.334736, 38.741772>,  <32.412064, 34.726601, 38.822010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410610, 34.334736, 38.741772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152915, 0.198787, -0.968039,
		0.988233, 0.027157, -0.150528,
		-0.003635, -0.979666, -0.200601,
		32.409519, 34.040836, 38.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007061, 34.698700, 38.399696>,  <32.412064, 34.726601, 38.822010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007061, 34.698700, 38.399696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802441, 34.361584, 38.332733>,  <32.679668, 34.159313, 38.292557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802441, 34.361584, 38.332733>,  <33.007061, 34.698700, 38.399696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802441, 34.361584, 38.332733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020280, 0.206614, -0.978212,
		0.859012, -0.497013, -0.122785,
		-0.511553, -0.842786, -0.167405,
		32.648975, 34.108749, 38.282513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359310, 34.383114, 37.835320>,  <33.007061, 34.698700, 38.399696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359310, 34.383114, 37.835320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980209, 34.257721, 37.859001>,  <32.752750, 34.182487, 37.873211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980209, 34.257721, 37.859001>,  <33.359310, 34.383114, 37.835320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980209, 34.257721, 37.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143330, 0.252615, -0.956892,
		0.285016, -0.915376, -0.284347,
		-0.947746, -0.313485, 0.059202,
		32.695885, 34.163677, 37.876762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870811, 34.566360, 38.260227>,  <33.359310, 34.383114, 37.835320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870811, 34.566360, 38.260227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953594, 34.333530, 37.945686>,  <34.003265, 34.193832, 37.756962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953594, 34.333530, 37.945686>,  <33.870811, 34.566360, 38.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953594, 34.333530, 37.945686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525387, -0.611907, 0.591218,
		-0.825310, -0.535498, 0.179177,
		0.206957, -0.582076, -0.786357,
		34.015682, 34.158909, 37.709778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800537, 33.727375, 38.435394>,  <33.870811, 34.566360, 38.260227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800537, 33.727375, 38.435394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090706, 33.835766, 38.182304>,  <34.264805, 33.900799, 38.030449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090706, 33.835766, 38.182304>,  <33.800537, 33.727375, 38.435394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090706, 33.835766, 38.182304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661140, -0.530029, 0.531002,
		-0.191474, -0.803518, -0.563645,
		0.725418, 0.270976, -0.632725,
		34.308331, 33.917057, 37.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305344, 33.219212, 38.322212>,  <33.800537, 33.727375, 38.435394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305344, 33.219212, 38.322212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544197, 33.528526, 38.236927>,  <34.687508, 33.714115, 38.185757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544197, 33.528526, 38.236927>,  <34.305344, 33.219212, 38.322212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544197, 33.528526, 38.236927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735157, -0.421247, 0.531126,
		0.320900, -0.473896, -0.820028,
		0.597133, 0.773288, -0.213210,
		34.723335, 33.760513, 38.172962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059616, 32.996490, 38.164600>,  <34.305344, 33.219212, 38.322212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059616, 32.996490, 38.164600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100548, 33.376350, 38.283051>,  <35.125107, 33.604267, 38.354118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100548, 33.376350, 38.283051>,  <35.059616, 32.996490, 38.164600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100548, 33.376350, 38.283051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814132, -0.251006, 0.523627,
		0.571592, 0.187500, -0.798828,
		0.102331, 0.949652, 0.296123,
		35.131248, 33.661247, 38.371887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757149, 33.156971, 37.949730>,  <35.059616, 32.996490, 38.164600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757149, 33.156971, 37.949730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651806, 33.430183, 38.222233>,  <35.588600, 33.594112, 38.385735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651806, 33.430183, 38.222233>,  <35.757149, 33.156971, 37.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651806, 33.430183, 38.222233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786600, -0.256791, 0.561533,
		0.558486, 0.683760, -0.469645,
		-0.263353, 0.683031, 0.681259,
		35.572800, 33.635094, 38.426609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347355, 33.095394, 38.339104>,  <35.757149, 33.156971, 37.949730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347355, 33.095394, 38.339104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122746, 33.332668, 38.569866>,  <35.987980, 33.475033, 38.708324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122746, 33.332668, 38.569866>,  <36.347355, 33.095394, 38.339104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122746, 33.332668, 38.569866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642981, -0.126038, 0.755440,
		0.520828, 0.795139, -0.310633,
		-0.561528, 0.593186, 0.576903,
		35.954288, 33.510624, 38.742935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733669, 33.634338, 38.636639>,  <36.347355, 33.095394, 38.339104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733669, 33.634338, 38.636639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431068, 33.512398, 38.868076>,  <36.249508, 33.439232, 39.006939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431068, 33.512398, 38.868076>,  <36.733669, 33.634338, 38.636639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431068, 33.512398, 38.868076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631604, -0.111053, 0.767296,
		-0.169659, 0.945902, 0.276558,
		-0.756500, -0.304854, 0.578595,
		36.204117, 33.420940, 39.041656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824902, 34.046070, 39.331039>,  <36.733669, 33.634338, 38.636639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824902, 34.046070, 39.331039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581638, 33.735855, 39.398785>,  <36.435680, 33.549725, 39.439430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581638, 33.735855, 39.398785>,  <36.824902, 34.046070, 39.331039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581638, 33.735855, 39.398785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509377, -0.217628, 0.832570,
		-0.608832, 0.592604, 0.527394,
		-0.608160, -0.775538, 0.169360,
		36.399189, 33.503193, 39.449593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837055, 34.043133, 40.093975>,  <36.824902, 34.046070, 39.331039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837055, 34.043133, 40.093975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687313, 33.685925, 39.994083>,  <36.597466, 33.471600, 39.934147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687313, 33.685925, 39.994083>,  <36.837055, 34.043133, 40.093975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687313, 33.685925, 39.994083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356814, -0.387308, 0.850103,
		-0.855886, 0.229134, 0.463635,
		-0.374357, -0.893023, -0.249733,
		36.575005, 33.418018, 39.919163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526943, 33.807922, 40.797977>,  <36.837055, 34.043133, 40.093975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526943, 33.807922, 40.797977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570549, 33.491959, 40.556595>,  <36.596710, 33.302380, 40.411766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570549, 33.491959, 40.556595>,  <36.526943, 33.807922, 40.797977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570549, 33.491959, 40.556595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234261, -0.569558, 0.787862,
		-0.966042, -0.227252, 0.122957,
		0.109012, -0.789912, -0.603453,
		36.603252, 33.254986, 40.375561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158375, 33.275143, 41.161819>,  <36.526943, 33.807922, 40.797977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158375, 33.275143, 41.161819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394684, 33.099659, 40.890965>,  <36.536469, 32.994370, 40.728451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394684, 33.099659, 40.890965>,  <36.158375, 33.275143, 41.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394684, 33.099659, 40.890965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471921, -0.492832, 0.731031,
		-0.654428, -0.751431, -0.084115,
		0.590774, -0.438712, -0.677140,
		36.571915, 32.968044, 40.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173916, 32.499458, 41.290245>,  <36.158375, 33.275143, 41.161819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173916, 32.499458, 41.290245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512447, 32.590225, 41.097481>,  <36.715565, 32.644688, 40.981823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512447, 32.590225, 41.097481>,  <36.173916, 32.499458, 41.290245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512447, 32.590225, 41.097481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532368, -0.390450, 0.751087,
		-0.017725, -0.892220, -0.451254,
		0.846327, 0.226920, -0.481910,
		36.766346, 32.658302, 40.952908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562817, 31.941660, 41.511238>,  <36.173916, 32.499458, 41.290245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562817, 31.941660, 41.511238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825245, 32.202053, 41.358509>,  <36.982704, 32.358288, 41.266872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825245, 32.202053, 41.358509>,  <36.562817, 31.941660, 41.511238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825245, 32.202053, 41.358509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685253, -0.301855, 0.662806,
		0.316221, -0.696494, -0.644127,
		0.656074, 0.650983, -0.381821,
		37.022068, 32.397346, 41.243961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246334, 31.590786, 41.513229>,  <36.562817, 31.941660, 41.511238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246334, 31.590786, 41.513229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333664, 31.980965, 41.501678>,  <37.386063, 32.215073, 41.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333664, 31.980965, 41.501678>,  <37.246334, 31.590786, 41.513229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333664, 31.980965, 41.501678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574384, -0.104522, 0.811885,
		0.788934, -0.193843, -0.583102,
		0.218326, 0.975448, -0.028879,
		37.399162, 32.273598, 41.493015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970299, 31.679710, 41.645615>,  <37.246334, 31.590786, 41.513229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970299, 31.679710, 41.645615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808945, 32.032902, 41.741642>,  <37.712132, 32.244816, 41.799259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808945, 32.032902, 41.741642>,  <37.970299, 31.679710, 41.645615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808945, 32.032902, 41.741642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339372, -0.099281, 0.935398,
		0.849771, 0.458794, -0.259610,
		-0.403381, 0.882978, 0.240068,
		37.687931, 32.297794, 41.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483715, 31.904419, 42.098663>,  <37.970299, 31.679710, 41.645615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483715, 31.904419, 42.098663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163155, 32.134529, 42.164177>,  <37.970818, 32.272594, 42.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163155, 32.134529, 42.164177>,  <38.483715, 31.904419, 42.098663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163155, 32.134529, 42.164177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211137, 0.015882, 0.977328,
		0.559629, 0.817807, -0.134189,
		-0.801396, 0.575273, 0.163781,
		37.922737, 32.307110, 42.213310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721542, 32.423176, 42.501637>,  <38.483715, 31.904419, 42.098663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721542, 32.423176, 42.501637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325146, 32.442284, 42.551685>,  <38.087307, 32.453747, 42.581715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325146, 32.442284, 42.551685>,  <38.721542, 32.423176, 42.501637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325146, 32.442284, 42.551685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128356, 0.072105, 0.989103,
		0.038224, 0.996253, -0.077587,
		-0.990991, 0.047766, 0.125119,
		38.027847, 32.456612, 42.589222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657501, 32.742329, 43.155537>,  <38.721542, 32.423176, 42.501637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657501, 32.742329, 43.155537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294277, 32.579777, 43.114967>,  <38.076344, 32.482246, 43.090626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294277, 32.579777, 43.114967>,  <38.657501, 32.742329, 43.155537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294277, 32.579777, 43.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070301, -0.090840, 0.993381,
		-0.412903, 0.909177, 0.053920,
		-0.908058, -0.406380, -0.101424,
		38.021858, 32.457863, 43.084541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255962, 33.086342, 43.622356>,  <38.657501, 32.742329, 43.155537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255962, 33.086342, 43.622356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064423, 32.741802, 43.554493>,  <37.949497, 32.535080, 43.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064423, 32.741802, 43.554493>,  <38.255962, 33.086342, 43.622356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064423, 32.741802, 43.554493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246647, -0.053472, 0.967629,
		-0.842536, 0.505196, -0.186843,
		-0.478852, -0.861346, -0.169657,
		37.920769, 32.483398, 43.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772022, 33.136963, 44.093197>,  <38.255962, 33.086342, 43.622356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772022, 33.136963, 44.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770603, 32.753025, 43.980988>,  <37.769753, 32.522663, 43.913662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770603, 32.753025, 43.980988>,  <37.772022, 33.136963, 44.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770603, 32.753025, 43.980988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278360, -0.268484, 0.922189,
		-0.960470, 0.081361, -0.266228,
		-0.003553, -0.959842, -0.280519,
		37.769539, 32.465073, 43.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033325, 32.978050, 44.276791>,  <37.772022, 33.136963, 44.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033325, 32.978050, 44.276791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284916, 32.667137, 44.270851>,  <37.435871, 32.480591, 44.267288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284916, 32.667137, 44.270851>,  <37.033325, 32.978050, 44.276791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284916, 32.667137, 44.270851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181298, 0.128077, 0.975053,
		-0.755990, -0.615977, 0.221477,
		0.628976, -0.777283, -0.014850,
		37.473610, 32.433952, 44.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797398, 32.502083, 44.698574>,  <37.033325, 32.978050, 44.276791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797398, 32.502083, 44.698574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191273, 32.435287, 44.678589>,  <37.427597, 32.395210, 44.666595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191273, 32.435287, 44.678589>,  <36.797398, 32.502083, 44.698574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191273, 32.435287, 44.678589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022650, -0.161638, 0.986590,
		-0.172848, -0.972615, -0.155380,
		0.984688, -0.167011, -0.049968,
		37.486679, 32.385189, 44.663601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949127, 31.986855, 45.201900>,  <36.797398, 32.502083, 44.698574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949127, 31.986855, 45.201900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308300, 32.149277, 45.133980>,  <37.523804, 32.246731, 45.093227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308300, 32.149277, 45.133980>,  <36.949127, 31.986855, 45.201900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308300, 32.149277, 45.133980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240578, -0.129758, 0.961917,
		0.368558, -0.904590, -0.214202,
		0.897935, 0.406054, -0.169802,
		37.577682, 32.271091, 45.083038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450802, 31.584745, 45.541931>,  <36.949127, 31.986855, 45.201900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450802, 31.584745, 45.541931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626385, 31.936094, 45.466267>,  <37.731735, 32.146904, 45.420868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626385, 31.936094, 45.466267>,  <37.450802, 31.584745, 45.541931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626385, 31.936094, 45.466267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396591, -0.000491, 0.917995,
		0.806248, -0.477978, -0.348570,
		0.438952, 0.878372, -0.189166,
		37.758072, 32.199604, 45.409515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080624, 31.546045, 45.995373>,  <37.450802, 31.584745, 45.541931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080624, 31.546045, 45.995373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022057, 31.931131, 45.904385>,  <37.986916, 32.162182, 45.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022057, 31.931131, 45.904385>,  <38.080624, 31.546045, 45.995373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022057, 31.931131, 45.904385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376784, 0.266888, 0.887020,
		0.914656, 0.044168, -0.401813,
		-0.146417, 0.962715, -0.227469,
		37.978130, 32.219944, 45.836143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731384, 31.904163, 46.067310>,  <38.080624, 31.546045, 45.995373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731384, 31.904163, 46.067310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454712, 32.189831, 46.110275>,  <38.288708, 32.361233, 46.136055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454712, 32.189831, 46.110275>,  <38.731384, 31.904163, 46.067310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454712, 32.189831, 46.110275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487605, 0.352090, 0.798920,
		0.532742, 0.604977, -0.591767,
		-0.691684, 0.714167, 0.107417,
		38.247208, 32.404079, 46.142502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043835, 32.534920, 46.369198>,  <38.731384, 31.904163, 46.067310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043835, 32.534920, 46.369198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652229, 32.591900, 46.427509>,  <38.417267, 32.626087, 46.462494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652229, 32.591900, 46.427509>,  <39.043835, 32.534920, 46.369198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652229, 32.591900, 46.427509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199321, 0.519720, 0.830760,
		0.042579, 0.842377, -0.537203,
		-0.979009, 0.142449, 0.145774,
		38.358528, 32.634636, 46.471241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955006, 33.255894, 46.458797>,  <39.043835, 32.534920, 46.369198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955006, 33.255894, 46.458797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649353, 33.050697, 46.615234>,  <38.465961, 32.927582, 46.709095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649353, 33.050697, 46.615234>,  <38.955006, 33.255894, 46.458797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649353, 33.050697, 46.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163692, 0.432231, 0.886781,
		-0.623951, 0.741632, -0.246307,
		-0.764127, -0.512989, 0.391090,
		38.420116, 32.896801, 46.732563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466290, 33.715210, 46.770203>,  <38.955006, 33.255894, 46.458797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466290, 33.715210, 46.770203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418324, 33.363361, 46.954327>,  <38.389542, 33.152252, 47.064800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418324, 33.363361, 46.954327>,  <38.466290, 33.715210, 46.770203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418324, 33.363361, 46.954327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013027, 0.465009, 0.885210,
		-0.992698, 0.100157, -0.067222,
		-0.119919, -0.879622, 0.460309,
		38.382347, 33.099476, 47.092419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138184, 33.854546, 47.426533>,  <38.466290, 33.715210, 46.770203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138184, 33.854546, 47.426533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236488, 33.474968, 47.505634>,  <38.295471, 33.247223, 47.553097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236488, 33.474968, 47.505634>,  <38.138184, 33.854546, 47.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236488, 33.474968, 47.505634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099611, 0.227658, 0.968633,
		-0.964197, -0.218359, 0.150476,
		0.245766, -0.948942, 0.197757,
		38.310219, 33.190285, 47.564960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839043, 33.723015, 48.067032>,  <38.138184, 33.854546, 47.426533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839043, 33.723015, 48.067032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118980, 33.439240, 48.033756>,  <38.286942, 33.268974, 48.013790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118980, 33.439240, 48.033756>,  <37.839043, 33.723015, 48.067032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118980, 33.439240, 48.033756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237115, 0.120875, 0.963933,
		-0.673794, -0.694326, 0.252811,
		0.699842, -0.709437, -0.083190,
		38.328934, 33.226410, 48.008801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733932, 33.360016, 48.681255>,  <37.839043, 33.723015, 48.067032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733932, 33.360016, 48.681255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092213, 33.297516, 48.514732>,  <38.307178, 33.260017, 48.414818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092213, 33.297516, 48.514732>,  <37.733932, 33.360016, 48.681255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092213, 33.297516, 48.514732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442276, 0.216140, 0.870446,
		-0.046024, -0.963779, 0.262701,
		0.895697, -0.156248, -0.416309,
		38.360924, 33.250641, 48.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002453, 33.049953, 49.205601>,  <37.733932, 33.360016, 48.681255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002453, 33.049953, 49.205601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298443, 33.190353, 48.976082>,  <38.476036, 33.274593, 48.838371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298443, 33.190353, 48.976082>,  <38.002453, 33.049953, 49.205601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298443, 33.190353, 48.976082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593975, 0.059327, 0.802293,
		0.315646, -0.934494, -0.164585,
		0.739973, 0.351000, -0.573793,
		38.520435, 33.295654, 48.803944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660244, 32.799782, 49.555954>,  <38.002453, 33.049953, 49.205601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660244, 32.799782, 49.555954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822216, 33.075577, 49.315739>,  <38.919399, 33.241055, 49.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822216, 33.075577, 49.315739>,  <38.660244, 32.799782, 49.555954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822216, 33.075577, 49.315739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646864, 0.248165, 0.721097,
		0.646216, -0.680461, -0.345511,
		0.404935, 0.689483, -0.600534,
		38.943695, 33.282421, 49.135578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334049, 32.768909, 49.660404>,  <38.660244, 32.799782, 49.555954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334049, 32.768909, 49.660404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260723, 33.140491, 49.531761>,  <39.216728, 33.363441, 49.454575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260723, 33.140491, 49.531761>,  <39.334049, 32.768909, 49.660404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260723, 33.140491, 49.531761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535600, 0.368713, 0.759726,
		0.824334, -0.032982, -0.565141,
		-0.183317, 0.928958, -0.321609,
		39.205727, 33.419178, 49.435280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879864, 33.015450, 49.679207>,  <39.334049, 32.768909, 49.660404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879864, 33.015450, 49.679207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636391, 33.332806, 49.681496>,  <39.490307, 33.523220, 49.682869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636391, 33.332806, 49.681496>,  <39.879864, 33.015450, 49.679207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636391, 33.332806, 49.681496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531414, 0.402320, 0.745478,
		0.589153, 0.456802, -0.666506,
		-0.608685, 0.793391, 0.005723,
		39.453785, 33.570824, 49.683212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358852, 33.610500, 49.760475>,  <39.879864, 33.015450, 49.679207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358852, 33.610500, 49.760475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998161, 33.734570, 49.880928>,  <39.781746, 33.809013, 49.953201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998161, 33.734570, 49.880928>,  <40.358852, 33.610500, 49.760475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998161, 33.734570, 49.880928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408726, 0.384762, 0.827588,
		0.140834, 0.869338, -0.473727,
		-0.901726, 0.310177, 0.301133,
		39.727642, 33.827621, 49.971268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207386, 34.391903, 49.702408>,  <40.358852, 33.610500, 49.760475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207386, 34.391903, 49.702408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007755, 34.246426, 50.017025>,  <39.887978, 34.159138, 50.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007755, 34.246426, 50.017025>,  <40.207386, 34.391903, 49.702408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007755, 34.246426, 50.017025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618754, 0.485900, 0.617288,
		-0.606685, 0.794751, -0.017465,
		-0.499076, -0.363693, 0.786543,
		39.858032, 34.137318, 50.252987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107719, 34.531361, 50.452084>,  <40.207386, 34.391903, 49.702408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107719, 34.531361, 50.452084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013588, 34.160954, 50.334026>,  <39.957108, 33.938709, 50.263191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013588, 34.160954, 50.334026>,  <40.107719, 34.531361, 50.452084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013588, 34.160954, 50.334026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859891, 0.056831, 0.507304,
		-0.452999, 0.373178, -0.809648,
		-0.235328, -0.926018, -0.295148,
		39.942989, 33.883148, 50.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795197, 34.367916, 50.694218>,  <40.107719, 34.531361, 50.452084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795197, 34.367916, 50.694218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116829, 34.601818, 50.737141>,  <41.309811, 34.742157, 50.762894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116829, 34.601818, 50.737141>,  <40.795197, 34.367916, 50.694218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116829, 34.601818, 50.737141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093215, 0.054263, -0.994166,
		-0.587162, 0.809397, -0.010876,
		0.804084, 0.584750, 0.107309,
		41.358055, 34.777245, 50.769333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765526, 34.877026, 50.208878>,  <40.795197, 34.367916, 50.694218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765526, 34.877026, 50.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157127, 34.849236, 50.285542>,  <41.392086, 34.832561, 50.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157127, 34.849236, 50.285542>,  <40.765526, 34.877026, 50.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157127, 34.849236, 50.285542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196918, 0.078920, -0.977239,
		0.052763, 0.994457, 0.090943,
		0.978999, -0.069471, 0.191662,
		41.450829, 34.828396, 50.343040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082584, 35.448093, 49.906921>,  <40.765526, 34.877026, 50.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082584, 35.448093, 49.906921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358768, 35.163536, 49.959362>,  <41.524479, 34.992802, 49.990826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358768, 35.163536, 49.959362>,  <41.082584, 35.448093, 49.906921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358768, 35.163536, 49.959362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241215, 0.055561, -0.968880,
		0.681968, 0.700597, 0.209961,
		0.690460, -0.711391, 0.131103,
		41.565907, 34.950119, 49.998692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714813, 35.660004, 49.688835>,  <41.082584, 35.448093, 49.906921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714813, 35.660004, 49.688835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769485, 35.266655, 49.641003>,  <41.802288, 35.030647, 49.612305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769485, 35.266655, 49.641003>,  <41.714813, 35.660004, 49.688835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769485, 35.266655, 49.641003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261778, 0.152272, -0.953040,
		0.955401, 0.098955, 0.278237,
		0.136676, -0.983372, -0.119577,
		41.810490, 34.971642, 49.605129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200256, 35.579521, 49.164333>,  <41.714813, 35.660004, 49.688835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200256, 35.579521, 49.164333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019390, 35.223099, 49.180130>,  <41.910870, 35.009243, 49.189606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019390, 35.223099, 49.180130>,  <42.200256, 35.579521, 49.164333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019390, 35.223099, 49.180130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073257, -0.081224, -0.994000,
		0.888919, -0.446562, 0.102004,
		-0.452168, -0.891058, 0.039488,
		41.883739, 34.955780, 49.191975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673496, 35.149448, 48.884182>,  <42.200256, 35.579521, 49.164333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673496, 35.149448, 48.884182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308411, 34.989910, 48.848675>,  <42.089359, 34.894188, 48.827370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308411, 34.989910, 48.848675>,  <42.673496, 35.149448, 48.884182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308411, 34.989910, 48.848675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231142, -0.324827, -0.917094,
		0.336946, -0.857560, 0.388663,
		-0.912711, -0.398847, -0.088769,
		42.034599, 34.870255, 48.822044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711697, 34.655800, 48.285469>,  <42.673496, 35.149448, 48.884182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711697, 34.655800, 48.285469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315052, 34.634186, 48.332424>,  <42.077065, 34.621216, 48.360596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315052, 34.634186, 48.332424>,  <42.711697, 34.655800, 48.285469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315052, 34.634186, 48.332424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091570, -0.347136, -0.933334,
		0.091181, -0.936257, 0.339278,
		-0.991615, -0.054035, 0.117385,
		42.017567, 34.617977, 48.367641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416183, 34.106323, 47.998592>,  <42.711697, 34.655800, 48.285469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416183, 34.106323, 47.998592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081402, 34.325176, 47.993591>,  <41.880531, 34.456490, 47.990593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081402, 34.325176, 47.993591>,  <42.416183, 34.106323, 47.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081402, 34.325176, 47.993591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123481, -0.211044, -0.969646,
		-0.533163, -0.810004, 0.244194,
		-0.836953, 0.547133, -0.012501,
		41.830315, 34.489315, 47.989841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837097, 33.706882, 47.617195>,  <42.416183, 34.106323, 47.998592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837097, 33.706882, 47.617195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726475, 34.091259, 47.613022>,  <41.660103, 34.321884, 47.610519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726475, 34.091259, 47.613022>,  <41.837097, 33.706882, 47.617195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726475, 34.091259, 47.613022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199506, -0.068031, -0.977532,
		-0.940062, -0.268257, 0.210528,
		-0.276553, 0.960942, -0.010434,
		41.643509, 34.379543, 47.609890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000908, 33.667301, 47.629330>,  <41.837097, 33.706882, 47.617195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000908, 33.667301, 47.629330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161621, 33.990932, 47.457764>,  <41.258049, 34.185112, 47.354824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161621, 33.990932, 47.457764>,  <41.000908, 33.667301, 47.629330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161621, 33.990932, 47.457764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492668, -0.203836, -0.846007,
		-0.771911, 0.551225, 0.316707,
		0.401784, 0.809074, -0.428915,
		41.282158, 34.233654, 47.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368019, 34.000050, 47.272896>,  <41.000908, 33.667301, 47.629330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368019, 34.000050, 47.272896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692650, 34.169357, 47.111809>,  <40.887428, 34.270943, 47.015156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692650, 34.169357, 47.111809>,  <40.368019, 34.000050, 47.272896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692650, 34.169357, 47.111809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471067, 0.066337, -0.879600,
		-0.345594, 0.903572, 0.253226,
		0.811580, 0.423270, -0.402717,
		40.936123, 34.296337, 46.990993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121651, 34.586189, 46.840328>,  <40.368019, 34.000050, 47.272896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121651, 34.586189, 46.840328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495564, 34.533695, 46.708294>,  <40.719910, 34.502197, 46.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495564, 34.533695, 46.708294>,  <40.121651, 34.586189, 46.840328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495564, 34.533695, 46.708294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303097, 0.189911, -0.933845,
		0.185245, 0.972990, 0.137747,
		0.934782, -0.131239, -0.330090,
		40.775997, 34.494324, 46.609268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251499, 35.068207, 46.373672>,  <40.121651, 34.586189, 46.840328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251499, 35.068207, 46.373672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511826, 34.776577, 46.288921>,  <40.668022, 34.601601, 46.238071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511826, 34.776577, 46.288921>,  <40.251499, 35.068207, 46.373672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511826, 34.776577, 46.288921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415559, -0.108510, -0.903071,
		0.635412, 0.675782, -0.373592,
		0.650817, -0.729071, -0.211878,
		40.707069, 34.557858, 46.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517990, 35.293411, 45.763756>,  <40.251499, 35.068207, 46.373672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517990, 35.293411, 45.763756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568901, 34.897926, 45.795364>,  <40.599449, 34.660633, 45.814331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568901, 34.897926, 45.795364>,  <40.517990, 35.293411, 45.763756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568901, 34.897926, 45.795364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221760, -0.106023, -0.969320,
		0.966759, 0.105848, -0.232752,
		0.127278, -0.988714, 0.079026,
		40.607086, 34.601311, 45.819073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881176, 35.110645, 45.239742>,  <40.517990, 35.293411, 45.763756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881176, 35.110645, 45.239742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720249, 34.759693, 45.344315>,  <40.623692, 34.549122, 45.407059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720249, 34.759693, 45.344315>,  <40.881176, 35.110645, 45.239742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720249, 34.759693, 45.344315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193115, -0.197801, -0.961031,
		0.894899, -0.437129, -0.089855,
		-0.402322, -0.877378, 0.261428,
		40.599552, 34.496479, 45.422745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248409, 34.585896, 44.834618>,  <40.881176, 35.110645, 45.239742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248409, 34.585896, 44.834618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892433, 34.450081, 44.956417>,  <40.678848, 34.368591, 45.029495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892433, 34.450081, 44.956417>,  <41.248409, 34.585896, 44.834618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892433, 34.450081, 44.956417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266728, -0.154084, -0.951375,
		0.369946, -0.927886, 0.046562,
		-0.889942, -0.339538, 0.304496,
		40.625450, 34.348221, 45.047768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263466, 33.996391, 44.517395>,  <41.248409, 34.585896, 44.834618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263466, 33.996391, 44.517395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879776, 34.065849, 44.606598>,  <40.649563, 34.107525, 44.660118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879776, 34.065849, 44.606598>,  <41.263466, 33.996391, 44.517395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879776, 34.065849, 44.606598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250504, -0.156939, -0.955310,
		-0.130892, -0.972222, 0.194040,
		-0.959226, 0.173651, 0.223003,
		40.592007, 34.117943, 44.673500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997799, 33.556965, 44.096199>,  <41.263466, 33.996391, 44.517395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997799, 33.556965, 44.096199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721375, 33.832222, 44.184643>,  <40.555519, 33.997375, 44.237709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721375, 33.832222, 44.184643>,  <40.997799, 33.556965, 44.096199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721375, 33.832222, 44.184643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242822, 0.067093, -0.967748,
		-0.680785, -0.722466, 0.120731,
		-0.691065, 0.688144, 0.221107,
		40.514053, 34.038666, 44.250977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392529, 33.293808, 43.830803>,  <40.997799, 33.556965, 44.096199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392529, 33.293808, 43.830803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320656, 33.685093, 43.872398>,  <40.277531, 33.919865, 43.897354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320656, 33.685093, 43.872398>,  <40.392529, 33.293808, 43.830803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320656, 33.685093, 43.872398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529506, -0.007089, -0.848277,
		-0.829058, -0.207482, 0.519243,
		-0.179683, 0.978213, 0.103986,
		40.266750, 33.978558, 43.903595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653519, 33.485264, 43.920830>,  <40.392529, 33.293808, 43.830803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653519, 33.485264, 43.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829048, 33.815659, 43.779312>,  <39.934364, 34.013897, 43.694401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829048, 33.815659, 43.779312>,  <39.653519, 33.485264, 43.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829048, 33.815659, 43.779312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688414, 0.055983, -0.723154,
		-0.577513, 0.560896, 0.593191,
		0.438823, 0.825991, -0.353797,
		39.960693, 34.063457, 43.673172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055569, 33.838417, 43.664089>,  <39.653519, 33.485264, 43.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055569, 33.838417, 43.664089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384602, 33.984177, 43.489468>,  <39.582020, 34.071632, 43.384693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384602, 33.984177, 43.489468>,  <39.055569, 33.838417, 43.664089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384602, 33.984177, 43.489468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549118, 0.309527, -0.776313,
		-0.147760, 0.878299, 0.454707,
		0.822579, 0.364396, -0.436554,
		39.631374, 34.093494, 43.358501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873798, 34.502357, 43.408352>,  <39.055569, 33.838417, 43.664089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873798, 34.502357, 43.408352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205711, 34.432976, 43.196171>,  <39.404858, 34.391346, 43.068863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205711, 34.432976, 43.196171>,  <38.873798, 34.502357, 43.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205711, 34.432976, 43.196171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466382, 0.306522, -0.829778,
		0.306522, 0.935927, 0.173451,
		0.829778, -0.173451, -0.530455,
		39.454643, 34.380939, 43.037033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763615, 34.967239, 42.867649>,  <38.873798, 34.502357, 43.408352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763615, 34.967239, 42.867649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062038, 34.736744, 42.734177>,  <39.241093, 34.598446, 42.654095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062038, 34.736744, 42.734177>,  <38.763615, 34.967239, 42.867649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062038, 34.736744, 42.734177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270416, 0.195734, -0.942636,
		0.608499, 0.793494, -0.009796,
		0.746059, -0.576243, -0.333678,
		39.285854, 34.563869, 42.634075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074661, 35.263107, 42.221718>,  <38.763615, 34.967239, 42.867649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074661, 35.263107, 42.221718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171547, 34.876366, 42.189388>,  <39.229679, 34.644321, 42.169991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171547, 34.876366, 42.189388>,  <39.074661, 35.263107, 42.221718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171547, 34.876366, 42.189388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169978, 0.039730, -0.984646,
		0.955217, 0.252236, -0.154720,
		0.242216, -0.966850, -0.080825,
		39.244213, 34.586311, 42.165142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529259, 35.171871, 41.679447>,  <39.074661, 35.263107, 42.221718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529259, 35.171871, 41.679447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394844, 34.795906, 41.703560>,  <39.314194, 34.570328, 41.718025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394844, 34.795906, 41.703560>,  <39.529259, 35.171871, 41.679447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394844, 34.795906, 41.703560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044146, -0.048212, -0.997861,
		0.940813, -0.337981, -0.025292,
		-0.336039, -0.939917, 0.060279,
		39.294033, 34.513931, 41.721645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769787, 34.865768, 41.070251>,  <39.529259, 35.171871, 41.679447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769787, 34.865768, 41.070251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474621, 34.619030, 41.179787>,  <39.297520, 34.470989, 41.245506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474621, 34.619030, 41.179787>,  <39.769787, 34.865768, 41.070251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474621, 34.619030, 41.179787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258154, -0.116906, -0.959004,
		0.623569, -0.778355, -0.072974,
		-0.737915, -0.616844, 0.273835,
		39.253246, 34.433975, 41.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958820, 34.162289, 40.852669>,  <39.769787, 34.865768, 41.070251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958820, 34.162289, 40.852669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562160, 34.154800, 40.903698>,  <39.324165, 34.150307, 40.934315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562160, 34.154800, 40.903698>,  <39.958820, 34.162289, 40.852669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562160, 34.154800, 40.903698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108728, -0.410422, -0.905391,
		0.069306, -0.911704, 0.404961,
		-0.991653, -0.018718, 0.127572,
		39.264664, 34.149185, 40.941971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810066, 33.535583, 40.572491>,  <39.958820, 34.162289, 40.852669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810066, 33.535583, 40.572491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452892, 33.715160, 40.559116>,  <39.238586, 33.822906, 40.551090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452892, 33.715160, 40.559116>,  <39.810066, 33.535583, 40.572491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452892, 33.715160, 40.559116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061802, -0.195819, -0.978691,
		-0.445920, -0.871842, 0.202599,
		-0.892936, 0.448939, -0.033438,
		39.185013, 33.849842, 40.549084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317654, 33.110023, 40.185425>,  <39.810066, 33.535583, 40.572491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317654, 33.110023, 40.185425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134365, 33.465099, 40.167381>,  <39.024391, 33.678146, 40.156555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134365, 33.465099, 40.167381>,  <39.317654, 33.110023, 40.185425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134365, 33.465099, 40.167381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022119, -0.062123, -0.997823,
		-0.888564, -0.456225, 0.048101,
		-0.458220, 0.887694, -0.045109,
		38.996899, 33.731407, 40.153847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809120, 33.052814, 39.669071>,  <39.317654, 33.110023, 40.185425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809120, 33.052814, 39.669071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864502, 33.444790, 39.726410>,  <38.897732, 33.679974, 39.760815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864502, 33.444790, 39.726410>,  <38.809120, 33.052814, 39.669071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864502, 33.444790, 39.726410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100359, 0.157877, -0.982346,
		-0.985270, 0.121627, 0.120205,
		0.138457, 0.979940, 0.143345,
		38.906040, 33.738773, 39.769413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431824, 33.158081, 39.124504>,  <38.809120, 33.052814, 39.669071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431824, 33.158081, 39.124504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644787, 33.482140, 39.222649>,  <38.772564, 33.676575, 39.281536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644787, 33.482140, 39.222649>,  <38.431824, 33.158081, 39.124504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644787, 33.482140, 39.222649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077522, 0.241980, -0.967180,
		-0.842928, 0.533960, 0.066029,
		0.532412, 0.810144, 0.245365,
		38.804512, 33.725182, 39.296257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185078, 33.650177, 38.677094>,  <38.431824, 33.158081, 39.124504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185078, 33.650177, 38.677094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541561, 33.788334, 38.794708>,  <38.755451, 33.871227, 38.865276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541561, 33.788334, 38.794708>,  <38.185078, 33.650177, 38.677094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541561, 33.788334, 38.794708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229560, 0.215653, -0.949103,
		-0.391218, 0.913346, 0.112904,
		0.891207, 0.345388, 0.294035,
		38.808922, 33.891949, 38.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345974, 34.128239, 38.284454>,  <38.185078, 33.650177, 38.677094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345974, 34.128239, 38.284454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719814, 34.075893, 38.416756>,  <38.944118, 34.044487, 38.496136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719814, 34.075893, 38.416756>,  <38.345974, 34.128239, 38.284454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719814, 34.075893, 38.416756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355671, 0.355044, -0.864547,
		-0.004294, 0.925645, 0.378369,
		0.934601, -0.130862, 0.330750,
		39.000195, 34.036636, 38.515980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673100, 34.755436, 38.154301>,  <38.345974, 34.128239, 38.284454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673100, 34.755436, 38.154301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941044, 34.460388, 38.188255>,  <39.101810, 34.283360, 38.208630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941044, 34.460388, 38.188255>,  <38.673100, 34.755436, 38.154301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941044, 34.460388, 38.188255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468411, 0.331121, -0.819116,
		0.576086, 0.588456, 0.567313,
		0.669863, -0.737617, 0.084885,
		39.142002, 34.239101, 38.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212452, 35.016106, 37.810627>,  <38.673100, 34.755436, 38.154301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212452, 35.016106, 37.810627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340996, 34.638088, 37.834679>,  <39.418121, 34.411278, 37.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340996, 34.638088, 37.834679>,  <39.212452, 35.016106, 37.810627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340996, 34.638088, 37.834679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755132, 0.217429, -0.618466,
		0.571404, 0.244159, 0.783508,
		0.321362, -0.945045, 0.060132,
		39.437405, 34.354576, 37.852718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947735, 35.116531, 37.835907>,  <39.212452, 35.016106, 37.810627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947735, 35.116531, 37.835907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864147, 34.753735, 37.689644>,  <39.813995, 34.536057, 37.601887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864147, 34.753735, 37.689644>,  <39.947735, 35.116531, 37.835907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864147, 34.753735, 37.689644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797245, 0.058542, -0.600810,
		0.566334, -0.417069, 0.710858,
		-0.208965, -0.906987, -0.365661,
		39.801456, 34.481640, 37.579945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604687, 34.824898, 37.671082>,  <39.947735, 35.116531, 37.835907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604687, 34.824898, 37.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334232, 34.618385, 37.460827>,  <40.171959, 34.494480, 37.334675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334232, 34.618385, 37.460827>,  <40.604687, 34.824898, 37.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334232, 34.618385, 37.460827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538242, 0.141069, -0.830900,
		0.503128, -0.844722, 0.182502,
		-0.676134, -0.516279, -0.525641,
		40.131393, 34.463501, 37.303135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914959, 34.283134, 37.321510>,  <40.604687, 34.824898, 37.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914959, 34.283134, 37.321510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586319, 34.345314, 37.102123>,  <40.389137, 34.382622, 36.970490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586319, 34.345314, 37.102123>,  <40.914959, 34.283134, 37.321510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586319, 34.345314, 37.102123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566732, 0.118764, -0.815298,
		-0.061597, -0.980679, -0.185673,
		-0.821597, 0.155447, -0.548466,
		40.339840, 34.391949, 36.937584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214535, 34.005627, 36.746719>,  <40.914959, 34.283134, 37.321510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214535, 34.005627, 36.746719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875999, 34.191608, 36.642773>,  <40.672878, 34.303196, 36.580406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875999, 34.191608, 36.642773>,  <41.214535, 34.005627, 36.746719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875999, 34.191608, 36.642773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421632, 0.286678, -0.860257,
		-0.325484, -0.837635, -0.438667,
		-0.846337, 0.464956, -0.259865,
		40.622097, 34.331097, 36.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009518, 33.861416, 36.013416>,  <41.214535, 34.005627, 36.746719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009518, 33.861416, 36.013416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879681, 34.230377, 36.097137>,  <40.801777, 34.451756, 36.147369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879681, 34.230377, 36.097137>,  <41.009518, 33.861416, 36.013416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879681, 34.230377, 36.097137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427254, 0.340414, -0.837599,
		-0.843856, -0.182454, -0.504597,
		-0.324595, 0.922404, 0.209306,
		40.782303, 34.507099, 36.159931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370911, 34.272678, 35.541950>,  <41.009518, 33.861416, 36.013416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370911, 34.272678, 35.541950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251995, 34.595341, 35.746273>,  <41.180645, 34.788937, 35.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251995, 34.595341, 35.746273>,  <41.370911, 34.272678, 35.541950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251995, 34.595341, 35.746273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515984, 0.585881, -0.624903,
		-0.803355, 0.077792, -0.590397,
		-0.297290, 0.806654, 0.510810,
		41.162807, 34.837337, 35.899517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048573, 34.803665, 35.089977>,  <41.370911, 34.272678, 35.541950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048573, 34.803665, 35.089977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183495, 35.001862, 35.410156>,  <41.264446, 35.120781, 35.602264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183495, 35.001862, 35.410156>,  <41.048573, 34.803665, 35.089977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183495, 35.001862, 35.410156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526173, 0.605834, -0.596748,
		-0.780620, 0.622459, -0.056362,
		0.337305, 0.495490, 0.800447,
		41.284687, 35.150509, 35.650291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973270, 35.574440, 35.096695>,  <41.048573, 34.803665, 35.089977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973270, 35.574440, 35.096695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301994, 35.459515, 35.293499>,  <41.499229, 35.390560, 35.411583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301994, 35.459515, 35.293499>,  <40.973270, 35.574440, 35.096695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301994, 35.459515, 35.293499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552598, 0.612275, -0.565469,
		-0.138783, 0.736596, 0.661941,
		0.821812, -0.287310, 0.492014,
		41.548538, 35.373322, 35.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430225, 36.172844, 35.353622>,  <40.973270, 35.574440, 35.096695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430225, 36.172844, 35.353622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704258, 35.882034, 35.371922>,  <41.868679, 35.707550, 35.382900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704258, 35.882034, 35.371922>,  <41.430225, 36.172844, 35.353622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704258, 35.882034, 35.371922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692382, 0.630348, -0.351096,
		0.226416, 0.272208, 0.935221,
		0.685086, -0.727024, 0.045751,
		41.909782, 35.663929, 35.385647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055374, 36.388012, 35.809269>,  <41.430225, 36.172844, 35.353622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055374, 36.388012, 35.809269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115494, 36.145058, 35.497246>,  <42.151566, 35.999287, 35.310032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115494, 36.145058, 35.497246>,  <42.055374, 36.388012, 35.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115494, 36.145058, 35.497246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789245, 0.548897, -0.275328,
		0.595402, -0.574276, 0.561874,
		0.150297, -0.607387, -0.780059,
		42.160583, 35.962841, 35.263229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758518, 36.065693, 35.712795>,  <42.055374, 36.388012, 35.809269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758518, 36.065693, 35.712795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593662, 36.125103, 35.353222>,  <42.494747, 36.160748, 35.137478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593662, 36.125103, 35.353222>,  <42.758518, 36.065693, 35.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593662, 36.125103, 35.353222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671519, 0.716340, -0.189524,
		0.615791, -0.681761, -0.394972,
		-0.412144, 0.148524, -0.898931,
		42.470020, 36.169659, 35.083542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200836, 36.003067, 34.969891>,  <42.758518, 36.065693, 35.712795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200836, 36.003067, 34.969891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926598, 36.290356, 34.922375>,  <42.762054, 36.462730, 34.893864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926598, 36.290356, 34.922375>,  <43.200836, 36.003067, 34.969891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926598, 36.290356, 34.922375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726840, 0.666229, -0.166863,
		-0.040703, -0.200743, -0.978798,
		-0.685600, 0.718221, -0.118791,
		42.720917, 36.505821, 34.886738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712376, 35.499092, 35.408829>,  <43.200836, 36.003067, 34.969891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712376, 35.499092, 35.408829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054089, 35.323681, 35.520466>,  <44.259117, 35.218433, 35.587448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054089, 35.323681, 35.520466>,  <43.712376, 35.499092, 35.408829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054089, 35.323681, 35.520466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233578, -0.155804, -0.959774,
		0.464367, 0.885112, -0.030672,
		0.854286, -0.438523, 0.279093,
		44.310375, 35.192123, 35.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277805, 35.802074, 35.002907>,  <43.712376, 35.499092, 35.408829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277805, 35.802074, 35.002907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391239, 35.438137, 35.124081>,  <44.459301, 35.219776, 35.196785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391239, 35.438137, 35.124081>,  <44.277805, 35.802074, 35.002907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391239, 35.438137, 35.124081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192117, -0.255590, -0.947505,
		0.939506, 0.326895, 0.102315,
		0.283584, -0.909843, 0.302931,
		44.476315, 35.165184, 35.214958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996918, 35.611221, 34.770126>,  <44.277805, 35.802074, 35.002907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996918, 35.611221, 34.770126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766220, 35.291210, 34.836243>,  <44.627804, 35.099201, 34.875912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766220, 35.291210, 34.836243>,  <44.996918, 35.611221, 34.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766220, 35.291210, 34.836243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222896, -0.348758, -0.910321,
		0.785931, -0.488178, 0.379467,
		-0.576741, -0.800032, 0.165287,
		44.593197, 35.051201, 34.885830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346756, 35.085789, 34.394142>,  <44.996918, 35.611221, 34.770126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346756, 35.085789, 34.394142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991497, 34.926094, 34.485184>,  <44.778343, 34.830276, 34.539810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991497, 34.926094, 34.485184>,  <45.346756, 35.085789, 34.394142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991497, 34.926094, 34.485184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001997, -0.498615, -0.866821,
		0.459552, -0.769412, 0.443641,
		-0.888148, -0.399235, 0.227603,
		44.725052, 34.806324, 34.553463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509865, 34.341618, 34.409172>,  <45.346756, 35.085789, 34.394142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509865, 34.341618, 34.409172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123062, 34.402645, 34.327564>,  <44.890980, 34.439262, 34.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123062, 34.402645, 34.327564>,  <45.509865, 34.341618, 34.409172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123062, 34.402645, 34.327564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045747, -0.683823, -0.728212,
		-0.250613, -0.713519, 0.654281,
		-0.967006, 0.152568, -0.204016,
		44.832962, 34.448414, 34.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223488, 33.707058, 34.282719>,  <45.509865, 34.341618, 34.409172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223488, 33.707058, 34.282719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962181, 33.962036, 34.119301>,  <44.805397, 34.115025, 34.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962181, 33.962036, 34.119301>,  <45.223488, 33.707058, 34.282719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962181, 33.962036, 34.119301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005236, -0.535775, -0.844345,
		-0.757113, -0.553718, 0.346664,
		-0.653263, 0.637449, -0.408542,
		44.766201, 34.153271, 33.996738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688931, 33.255901, 33.897038>,  <45.223488, 33.707058, 34.282719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688931, 33.255901, 33.897038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655136, 33.621658, 33.738674>,  <44.634861, 33.841114, 33.643658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655136, 33.621658, 33.738674>,  <44.688931, 33.255901, 33.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655136, 33.621658, 33.738674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033630, -0.394483, -0.918288,
		-0.995857, -0.090896, 0.002577,
		-0.084485, 0.914397, -0.395905,
		44.629791, 33.895977, 33.619904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122932, 33.129738, 33.493500>,  <44.688931, 33.255901, 33.897038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122932, 33.129738, 33.493500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327812, 33.447926, 33.363956>,  <44.450741, 33.638836, 33.286232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327812, 33.447926, 33.363956>,  <44.122932, 33.129738, 33.493500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327812, 33.447926, 33.363956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151639, -0.454909, -0.877533,
		-0.845372, 0.400366, -0.353629,
		0.512203, 0.795465, -0.323856,
		44.481472, 33.686565, 33.266800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732868, 33.417713, 32.898972>,  <44.122932, 33.129738, 33.493500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732868, 33.417713, 32.898972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115223, 33.527519, 32.857162>,  <44.344635, 33.593403, 32.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115223, 33.527519, 32.857162>,  <43.732868, 33.417713, 32.898972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115223, 33.527519, 32.857162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015783, -0.307329, -0.951472,
		-0.293321, 0.911147, -0.289438,
		0.955884, 0.274518, -0.104527,
		44.401989, 33.609875, 32.825806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776730, 33.507114, 32.192978>,  <43.732868, 33.417713, 32.898972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776730, 33.507114, 32.192978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164909, 33.552555, 32.278130>,  <44.397820, 33.579819, 32.329220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164909, 33.552555, 32.278130>,  <43.776730, 33.507114, 32.192978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164909, 33.552555, 32.278130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241273, -0.445181, -0.862324,
		-0.003191, 0.888206, -0.459435,
		0.970452, 0.113600, 0.212879,
		44.456043, 33.586636, 32.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161392, 33.731373, 31.563942>,  <43.776730, 33.507114, 32.192978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161392, 33.731373, 31.563942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444160, 33.564754, 31.792591>,  <44.613823, 33.464783, 31.929781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444160, 33.564754, 31.792591>,  <44.161392, 33.731373, 31.563942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444160, 33.564754, 31.792591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247220, -0.611690, -0.751477,
		0.662680, 0.672552, -0.329439,
		0.706922, -0.416544, 0.571623,
		44.656239, 33.439793, 31.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705944, 33.721157, 31.221945>,  <44.161392, 33.731373, 31.563942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705944, 33.721157, 31.221945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798748, 33.440022, 31.490925>,  <44.854431, 33.271339, 31.652313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798748, 33.440022, 31.490925>,  <44.705944, 33.721157, 31.221945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798748, 33.440022, 31.490925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488360, -0.513706, -0.705415,
		0.841234, 0.492063, 0.224052,
		0.232012, -0.702837, 0.672451,
		44.868351, 33.229172, 31.692659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437092, 33.561707, 31.016415>,  <44.705944, 33.721157, 31.221945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437092, 33.561707, 31.016415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295437, 33.251785, 31.225897>,  <45.210445, 33.065834, 31.351587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295437, 33.251785, 31.225897>,  <45.437092, 33.561707, 31.016415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295437, 33.251785, 31.225897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464911, -0.631755, -0.620276,
		0.811446, 0.023813, 0.583942,
		-0.354138, -0.774802, 0.523706,
		45.189194, 33.019344, 31.383009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939919, 33.111919, 31.255980>,  <45.437092, 33.561707, 31.016415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939919, 33.111919, 31.255980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612709, 32.882439, 31.239508>,  <45.416382, 32.744751, 31.229624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612709, 32.882439, 31.239508>,  <45.939919, 33.111919, 31.255980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612709, 32.882439, 31.239508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500738, -0.675098, -0.541760,
		0.283009, -0.463795, 0.839524,
		-0.818027, -0.573704, -0.041181,
		45.367302, 32.710327, 31.227154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113091, 32.428928, 31.214468>,  <45.939919, 33.111919, 31.255980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113091, 32.428928, 31.214468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739826, 32.391624, 31.075603>,  <45.515869, 32.369244, 30.992285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739826, 32.391624, 31.075603>,  <46.113091, 32.428928, 31.214468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739826, 32.391624, 31.075603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302721, -0.724679, -0.619032,
		-0.193851, -0.682747, 0.704470,
		-0.933157, -0.093257, -0.347162,
		45.459881, 32.363647, 30.971455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086636, 31.663227, 31.112583>,  <46.113091, 32.428928, 31.214468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086636, 31.663227, 31.112583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782791, 31.824795, 30.908688>,  <45.600483, 31.921736, 30.786350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782791, 31.824795, 30.908688>,  <46.086636, 31.663227, 31.112583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782791, 31.824795, 30.908688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042379, -0.751356, -0.658534,
		-0.648991, -0.521834, 0.553624,
		-0.759615, 0.403921, -0.509739,
		45.554905, 31.945971, 30.755766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630623, 31.117435, 30.910139>,  <46.086636, 31.663227, 31.112583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630623, 31.117435, 30.910139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550457, 31.421072, 30.662394>,  <45.502357, 31.603254, 30.513746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550457, 31.421072, 30.662394>,  <45.630623, 31.117435, 30.910139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550457, 31.421072, 30.662394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149198, -0.601167, -0.785072,
		-0.968283, -0.249751, 0.007230,
		-0.200419, 0.759093, -0.619362,
		45.490330, 31.648800, 30.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233288, 30.806328, 30.466728>,  <45.630623, 31.117435, 30.910139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233288, 30.806328, 30.466728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344952, 31.139242, 30.275156>,  <45.411949, 31.338991, 30.160213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344952, 31.139242, 30.275156>,  <45.233288, 30.806328, 30.466728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344952, 31.139242, 30.275156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048406, -0.510319, -0.858622,
		-0.959025, 0.216507, -0.182746,
		0.279157, 0.832285, -0.478928,
		45.428699, 31.388927, 30.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778770, 30.873377, 29.930857>,  <45.233288, 30.806328, 30.466728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778770, 30.873377, 29.930857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105560, 31.080647, 29.829618>,  <45.301632, 31.205008, 29.768875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105560, 31.080647, 29.829618>,  <44.778770, 30.873377, 29.930857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105560, 31.080647, 29.829618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078493, -0.534716, -0.841379,
		-0.571313, 0.667515, -0.477520,
		0.816970, 0.518172, -0.253095,
		45.350651, 31.236097, 29.753691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694126, 30.996826, 29.230070>,  <44.778770, 30.873377, 29.930857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694126, 30.996826, 29.230070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085026, 31.037754, 29.304382>,  <45.319565, 31.062311, 29.348970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085026, 31.037754, 29.304382>,  <44.694126, 30.996826, 29.230070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085026, 31.037754, 29.304382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209431, -0.603912, -0.769044,
		0.033505, 0.790456, -0.611602,
		0.977249, 0.102322, 0.185780,
		45.378201, 31.068451, 29.360117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045841, 31.010767, 28.594208>,  <44.694126, 30.996826, 29.230070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045841, 31.010767, 28.594208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305286, 30.885681, 28.871771>,  <45.460953, 30.810629, 29.038309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305286, 30.885681, 28.871771>,  <45.045841, 31.010767, 28.594208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305286, 30.885681, 28.871771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336338, -0.700088, -0.629884,
		0.682772, 0.641939, -0.348908,
		0.648613, -0.312716, 0.693909,
		45.499870, 30.791866, 29.079943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675282, 30.926668, 28.241510>,  <45.045841, 31.010767, 28.594208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675282, 30.926668, 28.241510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680630, 30.696142, 28.568357>,  <45.683838, 30.557827, 28.764465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680630, 30.696142, 28.568357>,  <45.675282, 30.926668, 28.241510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680630, 30.696142, 28.568357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317439, -0.772472, -0.550017,
		0.948184, 0.266739, 0.172618,
		0.013369, -0.576313, 0.817119,
		45.684639, 30.523249, 28.813494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460541, 30.725906, 28.354864>,  <45.675282, 30.926668, 28.241510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460541, 30.725906, 28.354864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155220, 30.492489, 28.465750>,  <45.972027, 30.352438, 28.532282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155220, 30.492489, 28.465750>,  <46.460541, 30.725906, 28.354864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155220, 30.492489, 28.465750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436223, -0.782046, -0.445099,
		0.476530, -0.218816, 0.851492,
		-0.763301, -0.583543, 0.277216,
		45.926231, 30.317427, 28.548914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767948, 30.034309, 28.696203>,  <46.460541, 30.725906, 28.354864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767948, 30.034309, 28.696203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393951, 29.997948, 28.559071>,  <46.169556, 29.976131, 28.476791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393951, 29.997948, 28.559071>,  <46.767948, 30.034309, 28.696203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393951, 29.997948, 28.559071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205039, -0.927247, -0.313325,
		-0.289408, -0.363249, 0.885603,
		-0.934988, -0.090905, -0.342833,
		46.113457, 29.970676, 28.456221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726826, 29.305315, 28.629850>,  <46.767948, 30.034309, 28.696203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726826, 29.305315, 28.629850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458481, 29.486090, 28.394665>,  <46.297474, 29.594555, 28.253553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458481, 29.486090, 28.394665>,  <46.726826, 29.305315, 28.629850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458481, 29.486090, 28.394665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055427, -0.760076, -0.647466,
		-0.739506, -0.466951, 0.484858,
		-0.670864, 0.451931, -0.587962,
		46.257225, 29.621670, 28.218275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250717, 28.837206, 28.321735>,  <46.726826, 29.305315, 28.629850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250717, 28.837206, 28.321735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265003, 29.155222, 28.079533>,  <46.273575, 29.346031, 27.934212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265003, 29.155222, 28.079533>,  <46.250717, 28.837206, 28.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265003, 29.155222, 28.079533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039401, -0.606543, -0.794074,
		-0.998585, 0.004503, -0.052988,
		0.035715, 0.795038, -0.605507,
		46.275719, 29.393734, 27.897881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990395, 28.089197, 28.212280>,  <46.250717, 28.837206, 28.321735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990395, 28.089197, 28.212280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920147, 27.799067, 28.478531>,  <45.877998, 27.624989, 28.638281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920147, 27.799067, 28.478531>,  <45.990395, 28.089197, 28.212280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920147, 27.799067, 28.478531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341127, 0.679081, 0.649986,
		-0.923466, -0.112912, -0.366689,
		-0.175620, -0.725327, 0.665626,
		45.867462, 27.581469, 28.678219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171867, 28.093058, 28.398813>,  <45.990395, 28.089197, 28.212280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171867, 28.093058, 28.398813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403919, 27.935490, 28.683989>,  <45.543148, 27.840950, 28.855095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403919, 27.935490, 28.683989>,  <45.171867, 28.093058, 28.398813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403919, 27.935490, 28.683989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373980, 0.648753, 0.662765,
		-0.723597, -0.651113, 0.229041,
		0.580126, -0.393918, 0.712939,
		45.577957, 27.817314, 28.897871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788567, 27.930086, 29.031248>,  <45.171867, 28.093058, 28.398813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788567, 27.930086, 29.031248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167751, 28.007729, 29.132200>,  <45.395260, 28.054314, 29.192772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167751, 28.007729, 29.132200>,  <44.788567, 27.930086, 29.031248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167751, 28.007729, 29.132200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312886, 0.421141, 0.851318,
		0.058959, -0.885981, 0.459957,
		0.947959, 0.194107, 0.252381,
		45.452141, 28.065960, 29.207914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999237, 27.679419, 29.664303>,  <44.788567, 27.930086, 29.031248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999237, 27.679419, 29.664303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202091, 28.013943, 29.580973>,  <45.323803, 28.214657, 29.530975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202091, 28.013943, 29.580973>,  <44.999237, 27.679419, 29.664303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202091, 28.013943, 29.580973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415252, 0.448905, 0.791234,
		0.755235, -0.314755, 0.574935,
		0.507136, 0.836309, -0.208326,
		45.354233, 28.264835, 29.518475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291897, 27.748220, 30.258684>,  <44.999237, 27.679419, 29.664303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291897, 27.748220, 30.258684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228565, 28.091606, 30.063553>,  <45.190567, 28.297638, 29.946474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228565, 28.091606, 30.063553>,  <45.291897, 27.748220, 30.258684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228565, 28.091606, 30.063553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386549, 0.400735, 0.830657,
		0.908578, 0.320083, 0.268391,
		-0.158325, 0.858463, -0.487827,
		45.181068, 28.349146, 29.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659771, 28.432335, 30.370541>,  <45.291897, 27.748220, 30.258684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659771, 28.432335, 30.370541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298405, 28.537874, 30.235357>,  <45.081585, 28.601198, 30.154247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298405, 28.537874, 30.235357>,  <45.659771, 28.432335, 30.370541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298405, 28.537874, 30.235357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065396, 0.694214, 0.716791,
		0.423740, 0.669665, -0.609913,
		-0.903420, 0.263847, -0.337960,
		45.027378, 28.617029, 30.133968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663517, 29.169006, 30.111700>,  <45.659771, 28.432335, 30.370541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663517, 29.169006, 30.111700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303997, 29.041662, 30.232237>,  <45.088284, 28.965256, 30.304560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303997, 29.041662, 30.232237>,  <45.663517, 29.169006, 30.111700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303997, 29.041662, 30.232237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015218, 0.664359, 0.747259,
		-0.438097, 0.676221, -0.592280,
		-0.898799, -0.318359, 0.301344,
		45.034359, 28.946154, 30.322639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216484, 29.798805, 30.175478>,  <45.663517, 29.169006, 30.111700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216484, 29.798805, 30.175478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047646, 29.502989, 30.385208>,  <44.946342, 29.325499, 30.511045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047646, 29.502989, 30.385208>,  <45.216484, 29.798805, 30.175478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047646, 29.502989, 30.385208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013977, 0.572995, 0.819440,
		-0.906445, 0.353209, -0.231521,
		-0.422093, -0.739541, 0.524325,
		44.921017, 29.281126, 30.542505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774826, 30.118305, 30.502106>,  <45.216484, 29.798805, 30.175478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774826, 30.118305, 30.502106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873577, 29.809628, 30.736553>,  <44.932827, 29.624420, 30.877222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873577, 29.809628, 30.736553>,  <44.774826, 30.118305, 30.502106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873577, 29.809628, 30.736553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204708, 0.632723, 0.746831,
		-0.947177, -0.064395, 0.314180,
		0.246881, -0.771696, 0.586118,
		44.947639, 29.578119, 30.912388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616482, 30.424673, 31.146725>,  <44.774826, 30.118305, 30.502106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616482, 30.424673, 31.146725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829697, 30.097330, 31.232672>,  <44.957626, 29.900925, 31.284241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829697, 30.097330, 31.232672>,  <44.616482, 30.424673, 31.146725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829697, 30.097330, 31.232672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194408, 0.365621, 0.910234,
		-0.823456, -0.443414, 0.353984,
		0.533035, -0.818355, 0.214870,
		44.989609, 29.851824, 31.297132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482719, 30.201469, 31.907196>,  <44.616482, 30.424673, 31.146725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482719, 30.201469, 31.907196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829872, 30.044727, 31.785061>,  <45.038162, 29.950682, 31.711781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829872, 30.044727, 31.785061>,  <44.482719, 30.201469, 31.907196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829872, 30.044727, 31.785061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470613, 0.451718, 0.757941,
		-0.159077, -0.801498, 0.576451,
		0.867881, -0.391856, -0.305337,
		45.090237, 29.927170, 31.693460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757782, 29.830820, 32.531097>,  <44.482719, 30.201469, 31.907196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757782, 29.830820, 32.531097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072559, 29.901152, 32.294518>,  <45.261425, 29.943352, 32.152569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072559, 29.901152, 32.294518>,  <44.757782, 29.830820, 32.531097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072559, 29.901152, 32.294518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498780, 0.383014, 0.777508,
		0.363235, -0.906856, 0.213714,
		0.786943, 0.175822, -0.591445,
		45.308640, 29.953901, 32.117085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323200, 29.686871, 33.000668>,  <44.757782, 29.830820, 32.531097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323200, 29.686871, 33.000668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451267, 29.924656, 32.705612>,  <45.528107, 30.067327, 32.528580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451267, 29.924656, 32.705612>,  <45.323200, 29.686871, 33.000668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451267, 29.924656, 32.705612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489042, 0.563149, 0.666109,
		0.811376, -0.574001, -0.110416,
		0.320167, 0.594463, -0.737636,
		45.547318, 30.102995, 32.484322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003983, 29.709520, 33.194019>,  <45.323200, 29.686871, 33.000668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003983, 29.709520, 33.194019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938274, 30.016821, 32.946533>,  <45.898849, 30.201200, 32.798042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938274, 30.016821, 32.946533>,  <46.003983, 29.709520, 33.194019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938274, 30.016821, 32.946533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537209, 0.595732, 0.597085,
		0.827298, -0.234296, -0.510571,
		-0.164269, 0.768250, -0.618714,
		45.888992, 30.247295, 32.760918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524666, 30.177177, 33.284725>,  <46.003983, 29.709520, 33.194019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524666, 30.177177, 33.284725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296463, 30.416502, 33.059673>,  <46.159542, 30.560097, 32.924644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296463, 30.416502, 33.059673>,  <46.524666, 30.177177, 33.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296463, 30.416502, 33.059673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360832, 0.797990, 0.482714,
		0.737782, 0.072379, -0.671148,
		-0.570508, 0.598309, -0.562626,
		46.125309, 30.595995, 32.890884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981930, 30.689867, 32.945648>,  <46.524666, 30.177177, 33.284725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981930, 30.689867, 32.945648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606106, 30.825190, 32.966747>,  <46.380611, 30.906384, 32.979408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606106, 30.825190, 32.966747>,  <46.981930, 30.689867, 32.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606106, 30.825190, 32.966747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320920, 0.816421, 0.480070,
		0.119345, 0.467981, -0.875643,
		-0.939557, 0.338305, 0.052749,
		46.324238, 30.926682, 32.982571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062805, 31.413935, 32.781193>,  <46.981930, 30.689867, 32.945648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062805, 31.413935, 32.781193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698292, 31.390501, 32.944233>,  <46.479584, 31.376442, 33.042057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698292, 31.390501, 32.944233>,  <47.062805, 31.413935, 32.781193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698292, 31.390501, 32.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228862, 0.750819, 0.619591,
		-0.342328, 0.657905, -0.670800,
		-0.911281, -0.058582, 0.407596,
		46.424908, 31.372927, 33.066513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824837, 32.079723, 32.711571>,  <47.062805, 31.413935, 32.781193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824837, 32.079723, 32.711571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597340, 31.917591, 32.997852>,  <46.460842, 31.820312, 33.169621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597340, 31.917591, 32.997852>,  <46.824837, 32.079723, 32.711571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597340, 31.917591, 32.997852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221174, 0.762730, 0.607721,
		-0.792218, 0.503935, -0.344151,
		-0.568747, -0.405330, 0.715706,
		46.426716, 31.795992, 33.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288509, 32.578838, 32.783699>,  <46.824837, 32.079723, 32.711571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288509, 32.578838, 32.783699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321941, 32.339371, 33.102348>,  <46.342003, 32.195690, 33.293537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321941, 32.339371, 33.102348>,  <46.288509, 32.578838, 32.783699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321941, 32.339371, 33.102348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019895, 0.800261, 0.599322,
		-0.996302, -0.034244, 0.078800,
		0.083584, -0.598673, 0.796621,
		46.347015, 32.159767, 33.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974270, 32.974949, 33.268810>,  <46.288509, 32.578838, 32.783699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974270, 32.974949, 33.268810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164062, 32.705303, 33.495235>,  <46.277939, 32.543514, 33.631092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164062, 32.705303, 33.495235>,  <45.974270, 32.974949, 33.268810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164062, 32.705303, 33.495235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161893, 0.565265, 0.808867,
		-0.865249, -0.475436, 0.159074,
		0.474484, -0.674118, 0.566065,
		46.306408, 32.503067, 33.665054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585884, 32.818222, 33.918777>,  <45.974270, 32.974949, 33.268810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585884, 32.818222, 33.918777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959419, 32.695278, 33.991974>,  <46.183540, 32.621513, 34.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959419, 32.695278, 33.991974>,  <45.585884, 32.818222, 33.918777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959419, 32.695278, 33.991974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017900, 0.470766, 0.882076,
		-0.357259, -0.826989, 0.434116,
		0.933834, -0.307359, 0.182989,
		46.239571, 32.603069, 34.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598202, 32.718960, 34.583584>,  <45.585884, 32.818222, 33.918777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598202, 32.718960, 34.583584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991985, 32.730423, 34.514290>,  <46.228256, 32.737301, 34.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991985, 32.730423, 34.514290>,  <45.598202, 32.718960, 34.583584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991985, 32.730423, 34.514290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148633, 0.389291, 0.909044,
		0.093492, -0.920669, 0.378983,
		0.984463, 0.028659, -0.173238,
		46.287323, 32.739021, 34.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909538, 32.390041, 35.236931>,  <45.598202, 32.718960, 34.583584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909538, 32.390041, 35.236931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183693, 32.620541, 35.058865>,  <46.348186, 32.758842, 34.952023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183693, 32.620541, 35.058865>,  <45.909538, 32.390041, 35.236931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183693, 32.620541, 35.058865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107711, 0.524390, 0.844638,
		0.720167, -0.626855, 0.297342,
		0.685389, 0.576254, -0.445168,
		46.389309, 32.793415, 34.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394020, 32.469944, 35.726990>,  <45.909538, 32.390041, 35.236931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394020, 32.469944, 35.726990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472595, 32.776730, 35.482635>,  <46.519741, 32.960800, 35.336021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472595, 32.776730, 35.482635>,  <46.394020, 32.469944, 35.726990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472595, 32.776730, 35.482635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063157, 0.631631, 0.772692,
		0.978480, -0.113204, 0.172516,
		0.196438, 0.766960, -0.610888,
		46.531528, 33.006817, 35.299370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987492, 32.735016, 35.990517>,  <46.394020, 32.469944, 35.726990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987492, 32.735016, 35.990517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830177, 33.042892, 35.789356>,  <46.735790, 33.227619, 35.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830177, 33.042892, 35.789356>,  <46.987492, 32.735016, 35.990517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830177, 33.042892, 35.789356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020271, 0.554102, 0.832202,
		0.919193, 0.317099, -0.233522,
		-0.393285, 0.769688, -0.502899,
		46.712193, 33.273800, 35.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285198, 33.359131, 36.265934>,  <46.987492, 32.735016, 35.990517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285198, 33.359131, 36.265934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938225, 33.468235, 36.099483>,  <46.730042, 33.533699, 35.999615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938225, 33.468235, 36.099483>,  <47.285198, 33.359131, 36.265934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938225, 33.468235, 36.099483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195258, 0.582628, 0.788935,
		0.457637, 0.765601, -0.452132,
		-0.867435, 0.272763, -0.416122,
		46.677994, 33.550064, 35.974648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160236, 33.965771, 36.518723>,  <47.285198, 33.359131, 36.265934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160236, 33.965771, 36.518723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789593, 33.900410, 36.383255>,  <46.567207, 33.861195, 36.301975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789593, 33.900410, 36.383255>,  <47.160236, 33.965771, 36.518723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789593, 33.900410, 36.383255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366839, 0.590689, 0.718690,
		0.082609, 0.790181, -0.607281,
		-0.926609, -0.163404, -0.338666,
		46.511608, 33.851387, 36.281654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270927, 34.337029, 35.960449>,  <47.160236, 33.965771, 36.518723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270927, 34.337029, 35.960449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202850, 34.423038, 35.575783>,  <47.162003, 34.474644, 35.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202850, 34.423038, 35.575783>,  <47.270927, 34.337029, 35.960449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202850, 34.423038, 35.575783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581413, 0.809844, 0.078182,
		0.795608, -0.545817, -0.262852,
		-0.170196, 0.215027, -0.961663,
		47.151791, 34.487545, 35.287285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.917324, 34.636036, 35.672523>,  <47.270927, 34.337029, 35.960449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.917324, 34.636036, 35.672523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617928, 34.786140, 35.453823>,  <47.438290, 34.876202, 35.322601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617928, 34.786140, 35.453823>,  <47.917324, 34.636036, 35.672523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.617928, 34.786140, 35.453823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331178, 0.925838, 0.182061,
		0.574526, -0.044802, -0.817259,
		-0.748492, 0.375257, -0.546756,
		47.393379, 34.898716, 35.289795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.208385, 34.901253, 35.118713>,  <47.917324, 34.636036, 35.672523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.208385, 34.901253, 35.118713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869297, 35.096321, 35.202175>,  <47.665844, 35.213364, 35.252251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869297, 35.096321, 35.202175>,  <48.208385, 34.901253, 35.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869297, 35.096321, 35.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523908, 0.831313, 0.185578,
		-0.082956, 0.266635, -0.960221,
		-0.847726, 0.487672, 0.208655,
		47.614979, 35.242622, 35.264771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.920391, 38.980621, 45.437889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582077, 38.819118, 45.577393>,  <37.379089, 38.722218, 45.661095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582077, 38.819118, 45.577393>,  <37.920391, 38.980621, 45.437889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582077, 38.819118, 45.577393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356621, -0.058359, -0.932425,
		0.396826, -0.913003, -0.094629,
		-0.845784, -0.403757, 0.348754,
		37.328342, 38.697990, 45.682018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817520, 38.454594, 44.997753>,  <37.920391, 38.980621, 45.437889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817520, 38.454594, 44.997753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454376, 38.552422, 45.133976>,  <37.236492, 38.611118, 45.215710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454376, 38.552422, 45.133976>,  <37.817520, 38.454594, 44.997753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454376, 38.552422, 45.133976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365934, -0.065697, -0.928319,
		-0.204670, -0.967402, 0.149142,
		-0.907856, 0.244575, 0.340559,
		37.182018, 38.625793, 45.236145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296928, 38.002590, 44.769535>,  <37.817520, 38.454594, 44.997753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296928, 38.002590, 44.769535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060406, 38.291279, 44.913464>,  <36.918491, 38.464493, 44.999821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060406, 38.291279, 44.913464>,  <37.296928, 38.002590, 44.769535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060406, 38.291279, 44.913464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519296, 0.000616, -0.854594,
		-0.617004, -0.692180, 0.374425,
		-0.591302, 0.721725, 0.359826,
		36.883015, 38.507797, 45.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618763, 37.836472, 44.591179>,  <37.296928, 38.002590, 44.769535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618763, 37.836472, 44.591179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 38.233185, 44.642353>,  <36.620506, 38.471210, 44.673058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 38.233185, 44.642353>,  <36.618763, 37.836472, 44.591179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619854, 38.233185, 44.642353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373927, 0.119667, -0.919706,
		-0.927454, -0.045332, 0.371179,
		0.002726, 0.991778, 0.127937,
		36.620670, 38.530720, 44.680733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977371, 38.016068, 44.445122>,  <36.618763, 37.836472, 44.591179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977371, 38.016068, 44.445122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170391, 38.363235, 44.398045>,  <36.286205, 38.571537, 44.369801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170391, 38.363235, 44.398045>,  <35.977371, 38.016068, 44.445122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170391, 38.363235, 44.398045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310821, 0.044066, -0.949447,
		-0.818862, 0.494738, 0.291033,
		0.482552, 0.867924, -0.117691,
		36.315155, 38.623611, 44.362736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436745, 38.563259, 44.197449>,  <35.977371, 38.016068, 44.445122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436745, 38.563259, 44.197449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795380, 38.685287, 44.069031>,  <36.010559, 38.758503, 43.991982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795380, 38.685287, 44.069031>,  <35.436745, 38.563259, 44.197449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795380, 38.685287, 44.069031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387716, 0.190343, -0.901912,
		-0.214039, 0.933114, 0.288940,
		0.896584, 0.305071, -0.321043,
		36.064354, 38.776810, 43.972717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293610, 39.132336, 43.739502>,  <35.436745, 38.563259, 44.197449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293610, 39.132336, 43.739502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675583, 39.040169, 43.664665>,  <35.904766, 38.984867, 43.619762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675583, 39.040169, 43.664665>,  <35.293610, 39.132336, 43.739502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675583, 39.040169, 43.664665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123853, 0.263508, -0.956673,
		0.269734, 0.936735, 0.223096,
		0.954937, -0.230416, -0.187094,
		35.962063, 38.971043, 43.608536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534412, 39.696159, 43.303192>,  <35.293610, 39.132336, 43.739502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534412, 39.696159, 43.303192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763199, 39.375797, 43.232315>,  <35.900471, 39.183578, 43.189789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763199, 39.375797, 43.232315>,  <35.534412, 39.696159, 43.303192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763199, 39.375797, 43.232315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199161, 0.073953, -0.977172,
		0.795729, 0.594203, -0.117211,
		0.571970, -0.800908, -0.177188,
		35.934792, 39.135525, 43.179157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795979, 39.871410, 42.606773>,  <35.534412, 39.696159, 43.303192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795979, 39.871410, 42.606773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891903, 39.490341, 42.681511>,  <35.949459, 39.261700, 42.726353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891903, 39.490341, 42.681511>,  <35.795979, 39.871410, 42.606773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891903, 39.490341, 42.681511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007920, -0.194370, -0.980896,
		0.970786, 0.233754, -0.054158,
		0.239815, -0.952670, 0.186840,
		35.963848, 39.204540, 42.737564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238125, 39.588539, 42.002941>,  <35.795979, 39.871410, 42.606773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238125, 39.588539, 42.002941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118763, 39.257458, 42.193043>,  <36.047146, 39.058811, 42.307102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118763, 39.257458, 42.193043>,  <36.238125, 39.588539, 42.002941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118763, 39.257458, 42.193043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034654, -0.488215, -0.872035,
		0.953809, -0.276690, 0.117004,
		-0.298407, -0.827701, 0.475252,
		36.029240, 39.009148, 42.335617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700550, 39.037651, 41.850807>,  <36.238125, 39.588539, 42.002941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700550, 39.037651, 41.850807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337967, 38.886360, 41.925938>,  <36.120419, 38.795586, 41.971016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337967, 38.886360, 41.925938>,  <36.700550, 39.037651, 41.850807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337967, 38.886360, 41.925938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042338, -0.361144, -0.931548,
		0.420167, -0.852362, 0.311349,
		-0.906458, -0.378224, 0.187828,
		36.066029, 38.772892, 41.982285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672863, 38.363735, 41.604446>,  <36.700550, 39.037651, 41.850807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672863, 38.363735, 41.604446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289139, 38.474815, 41.624840>,  <36.058903, 38.541462, 41.637074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289139, 38.474815, 41.624840>,  <36.672863, 38.363735, 41.604446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289139, 38.474815, 41.624840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191690, -0.508029, -0.839739,
		-0.207296, -0.815346, 0.540592,
		-0.959314, 0.277700, 0.050982,
		36.001343, 38.558125, 41.640133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264740, 37.802788, 41.303402>,  <36.672863, 38.363735, 41.604446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264740, 37.802788, 41.303402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972023, 38.075233, 41.293972>,  <35.796394, 38.238701, 41.288315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972023, 38.075233, 41.293972>,  <36.264740, 37.802788, 41.303402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972023, 38.075233, 41.293972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237628, -0.287418, -0.927860,
		-0.638757, -0.673401, 0.372184,
		-0.731794, 0.681119, -0.023571,
		35.752483, 38.279568, 41.286900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701046, 37.508984, 41.050941>,  <36.264740, 37.802788, 41.303402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701046, 37.508984, 41.050941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613861, 37.895321, 40.994873>,  <35.561550, 38.127121, 40.961231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613861, 37.895321, 40.994873>,  <35.701046, 37.508984, 41.050941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613861, 37.895321, 40.994873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193135, -0.183469, -0.963866,
		-0.956657, -0.183012, 0.226527,
		-0.217960, 0.965839, -0.140171,
		35.548473, 38.185074, 40.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026089, 37.520943, 40.894253>,  <35.701046, 37.508984, 41.050941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026089, 37.520943, 40.894253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207146, 37.844040, 40.743168>,  <35.315781, 38.037899, 40.652515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207146, 37.844040, 40.743168>,  <35.026089, 37.520943, 40.894253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207146, 37.844040, 40.743168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279809, -0.273529, -0.920266,
		-0.846654, 0.522237, 0.102204,
		0.452641, 0.807744, -0.377711,
		35.342937, 38.086365, 40.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620220, 37.624802, 40.308365>,  <35.026089, 37.520943, 40.894253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620220, 37.624802, 40.308365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937695, 37.856766, 40.234863>,  <35.128178, 37.995945, 40.190762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937695, 37.856766, 40.234863>,  <34.620220, 37.624802, 40.308365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937695, 37.856766, 40.234863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244340, 0.027268, -0.969306,
		-0.557099, 0.814225, 0.163337,
		0.793687, 0.579909, -0.183757,
		35.175800, 38.030739, 40.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415802, 38.164326, 39.881195>,  <34.620220, 37.624802, 40.308365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415802, 38.164326, 39.881195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810188, 38.114666, 39.836548>,  <35.046822, 38.084869, 39.809757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810188, 38.114666, 39.836548>,  <34.415802, 38.164326, 39.881195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810188, 38.114666, 39.836548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114071, -0.012790, -0.993390,
		0.121898, 0.992181, -0.026772,
		0.985966, -0.124146, -0.111620,
		35.105980, 38.077423, 39.803062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570587, 38.631393, 39.355442>,  <34.415802, 38.164326, 39.881195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570587, 38.631393, 39.355442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894215, 38.396450, 39.363674>,  <35.088390, 38.255486, 39.368614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894215, 38.396450, 39.363674>,  <34.570587, 38.631393, 39.355442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894215, 38.396450, 39.363674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064768, 0.054296, -0.996422,
		0.584139, 0.807504, 0.081971,
		0.809065, -0.587358, 0.020584,
		35.136932, 38.220242, 39.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913425, 38.846085, 38.752823>,  <34.570587, 38.631393, 39.355442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913425, 38.846085, 38.752823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101948, 38.505699, 38.845547>,  <35.215061, 38.301468, 38.901180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101948, 38.505699, 38.845547>,  <34.913425, 38.846085, 38.752823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101948, 38.505699, 38.845547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229378, -0.135522, -0.963857,
		0.851621, 0.507441, 0.131321,
		0.471304, -0.850963, 0.231809,
		35.243340, 38.250412, 38.915089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713711, 38.901176, 38.686947>,  <34.913425, 38.846085, 38.752823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713711, 38.901176, 38.686947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592163, 38.525871, 38.620823>,  <35.519234, 38.300690, 38.581146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592163, 38.525871, 38.620823>,  <35.713711, 38.901176, 38.686947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592163, 38.525871, 38.620823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299405, 0.070681, -0.951505,
		0.904446, -0.338626, 0.259443,
		-0.303867, -0.938263, -0.165314,
		35.501003, 38.244392, 38.571228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216690, 38.636108, 38.283123>,  <35.713711, 38.901176, 38.686947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216690, 38.636108, 38.283123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927917, 38.363377, 38.235912>,  <35.754654, 38.199738, 38.207588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927917, 38.363377, 38.235912>,  <36.216690, 38.636108, 38.283123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927917, 38.363377, 38.235912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245750, -0.093191, -0.964843,
		0.646857, -0.725554, 0.234836,
		-0.721930, -0.681827, -0.118023,
		35.711338, 38.158829, 38.200504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521168, 38.029186, 38.037926>,  <36.216690, 38.636108, 38.283123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521168, 38.029186, 38.037926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140030, 38.007736, 37.918457>,  <35.911346, 37.994865, 37.846775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140030, 38.007736, 37.918457>,  <36.521168, 38.029186, 38.037926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140030, 38.007736, 37.918457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293783, 0.083460, -0.952222,
		0.075979, -0.995068, -0.063774,
		-0.952848, -0.053613, -0.298675,
		35.854176, 37.991650, 37.828854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367504, 37.455757, 37.497986>,  <36.521168, 38.029186, 38.037926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367504, 37.455757, 37.497986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113258, 37.758278, 37.436016>,  <35.960709, 37.939789, 37.398834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113258, 37.758278, 37.436016>,  <36.367504, 37.455757, 37.497986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113258, 37.758278, 37.436016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370890, 0.123156, -0.920475,
		-0.677076, -0.642528, -0.358784,
		-0.635617, 0.756301, -0.154922,
		35.922573, 37.985168, 37.389538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070644, 37.728741, 37.458103>,  <36.367504, 37.455757, 37.497986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070644, 37.728741, 37.458103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365726, 37.459930, 37.432270>,  <37.542774, 37.298645, 37.416771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365726, 37.459930, 37.432270>,  <37.070644, 37.728741, 37.458103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365726, 37.459930, 37.432270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235880, 0.166930, 0.957338,
		-0.632577, -0.721466, 0.281662,
		0.737704, -0.672028, -0.064583,
		37.587036, 37.258324, 37.412895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107994, 37.440464, 38.151230>,  <37.070644, 37.728741, 37.458103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107994, 37.440464, 38.151230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463486, 37.396248, 37.973270>,  <37.676781, 37.369717, 37.866497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463486, 37.396248, 37.973270>,  <37.107994, 37.440464, 38.151230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463486, 37.396248, 37.973270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436567, -0.092003, 0.894955,
		-0.139869, -0.989603, -0.033504,
		0.888733, -0.110550, -0.444896,
		37.730106, 37.363083, 37.839802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392559, 36.813828, 38.314487>,  <37.107994, 37.440464, 38.151230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392559, 36.813828, 38.314487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687321, 37.065495, 38.215595>,  <37.864178, 37.216496, 38.156258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687321, 37.065495, 38.215595>,  <37.392559, 36.813828, 38.314487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687321, 37.065495, 38.215595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437796, -0.165505, 0.883710,
		0.515083, -0.759445, -0.397408,
		0.736902, 0.629168, -0.247233,
		37.908390, 37.254246, 38.141426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124153, 36.634106, 38.571758>,  <37.392559, 36.813828, 38.314487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124153, 36.634106, 38.571758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163315, 37.026554, 38.505043>,  <38.186813, 37.262024, 38.465012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163315, 37.026554, 38.505043>,  <38.124153, 36.634106, 38.571758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163315, 37.026554, 38.505043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532341, 0.089973, 0.841735,
		0.840849, -0.171201, -0.513481,
		0.097907, 0.981119, -0.166791,
		38.192688, 37.320889, 38.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774448, 36.765316, 38.699638>,  <38.124153, 36.634106, 38.571758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774448, 36.765316, 38.699638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587334, 37.117901, 38.725529>,  <38.475063, 37.329453, 38.741062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587334, 37.117901, 38.725529>,  <38.774448, 36.765316, 38.699638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587334, 37.117901, 38.725529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381185, 0.135133, 0.914569,
		0.797415, 0.452501, -0.399215,
		-0.467791, 0.881466, 0.064729,
		38.446995, 37.382339, 38.744949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233131, 37.273605, 38.891476>,  <38.774448, 36.765316, 38.699638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233131, 37.273605, 38.891476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883812, 37.413631, 39.027008>,  <38.674221, 37.497646, 39.108330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883812, 37.413631, 39.027008>,  <39.233131, 37.273605, 38.891476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883812, 37.413631, 39.027008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428471, 0.220846, 0.876150,
		0.231882, 0.910318, -0.342858,
		-0.873295, 0.350068, 0.338834,
		38.621822, 37.518654, 39.128658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380939, 37.840580, 39.331680>,  <39.233131, 37.273605, 38.891476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380939, 37.840580, 39.331680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001179, 37.768036, 39.434242>,  <38.773323, 37.724510, 39.495781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001179, 37.768036, 39.434242>,  <39.380939, 37.840580, 39.331680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001179, 37.768036, 39.434242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250536, 0.054958, 0.966546,
		-0.189382, 0.981880, -0.006740,
		-0.949403, -0.181358, 0.256404,
		38.716358, 37.713627, 39.511162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284111, 38.276329, 39.933887>,  <39.380939, 37.840580, 39.331680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284111, 38.276329, 39.933887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962387, 38.039295, 39.951416>,  <38.769352, 37.897076, 39.961933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962387, 38.039295, 39.951416>,  <39.284111, 38.276329, 39.933887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962387, 38.039295, 39.951416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050226, 0.005684, 0.998722,
		-0.592079, 0.805486, 0.025192,
		-0.804314, -0.592587, 0.043822,
		38.721092, 37.861519, 39.964561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907455, 38.611015, 40.334248>,  <39.284111, 38.276329, 39.933887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907455, 38.611015, 40.334248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797993, 38.226578, 40.349304>,  <38.732315, 37.995914, 40.358337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797993, 38.226578, 40.349304>,  <38.907455, 38.611015, 40.334248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797993, 38.226578, 40.349304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164481, -0.008202, 0.986346,
		-0.947659, 0.276112, 0.160325,
		-0.273657, -0.961090, 0.037643,
		38.715897, 37.938251, 40.360596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331776, 38.616879, 40.785606>,  <38.907455, 38.611015, 40.334248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331776, 38.616879, 40.785606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484421, 38.247150, 40.784447>,  <38.576008, 38.025314, 40.783752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484421, 38.247150, 40.784447>,  <38.331776, 38.616879, 40.785606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484421, 38.247150, 40.784447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175425, 0.069347, 0.982047,
		-0.907522, -0.375273, 0.188612,
		0.381616, -0.924317, -0.002898,
		38.598907, 37.969856, 40.783577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891369, 38.329018, 41.209351>,  <38.331776, 38.616879, 40.785606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891369, 38.329018, 41.209351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217613, 38.098530, 41.188389>,  <38.413361, 37.960236, 41.175812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217613, 38.098530, 41.188389>,  <37.891369, 38.329018, 41.209351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217613, 38.098530, 41.188389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000207, -0.090280, 0.995916,
		-0.578600, -0.812292, -0.073515,
		0.815612, -0.576222, -0.052404,
		38.462296, 37.925663, 41.172668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720406, 37.793926, 41.739292>,  <37.891369, 38.329018, 41.209351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720406, 37.793926, 41.739292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115437, 37.790401, 41.676544>,  <38.352455, 37.788288, 41.638893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115437, 37.790401, 41.676544>,  <37.720406, 37.793926, 41.739292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115437, 37.790401, 41.676544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155878, -0.070451, 0.985261,
		-0.019723, -0.997477, -0.068205,
		0.987579, -0.008801, -0.156874,
		38.411709, 37.787758, 41.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047123, 37.356396, 42.174019>,  <37.720406, 37.793926, 41.739292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047123, 37.356396, 42.174019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361431, 37.591511, 42.097004>,  <38.550018, 37.732578, 42.050797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361431, 37.591511, 42.097004>,  <38.047123, 37.356396, 42.174019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361431, 37.591511, 42.097004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305652, -0.098394, 0.947046,
		0.537715, -0.803011, -0.256973,
		0.785773, 0.587785, -0.192534,
		38.597164, 37.767845, 42.039246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595551, 36.951450, 42.428997>,  <38.047123, 37.356396, 42.174019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595551, 36.951450, 42.428997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750080, 37.320305, 42.420826>,  <38.842800, 37.541618, 42.415924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750080, 37.320305, 42.420826>,  <38.595551, 36.951450, 42.428997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750080, 37.320305, 42.420826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371450, -0.135268, 0.918547,
		0.844261, -0.362447, -0.394785,
		0.386326, 0.922136, -0.020430,
		38.865978, 37.596947, 42.414696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137390, 36.817684, 42.776497>,  <38.595551, 36.951450, 42.428997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137390, 36.817684, 42.776497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123257, 37.217407, 42.771873>,  <39.114777, 37.457241, 42.769100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123257, 37.217407, 42.771873>,  <39.137390, 36.817684, 42.776497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123257, 37.217407, 42.771873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345397, 0.023066, 0.938173,
		0.937791, 0.029155, -0.345973,
		-0.035333, 0.999309, -0.011561,
		39.112656, 37.517200, 42.768406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759125, 37.075993, 43.079174>,  <39.137390, 36.817684, 42.776497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759125, 37.075993, 43.079174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525883, 37.399574, 43.109055>,  <39.385937, 37.593723, 43.126984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525883, 37.399574, 43.109055>,  <39.759125, 37.075993, 43.079174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525883, 37.399574, 43.109055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326557, 0.149203, 0.933327,
		0.743874, 0.568623, -0.351170,
		-0.583106, 0.808954, 0.074699,
		39.350952, 37.642262, 43.131466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197803, 37.581001, 43.321949>,  <39.759125, 37.075993, 43.079174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197803, 37.581001, 43.321949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823647, 37.694633, 43.406178>,  <39.599152, 37.762814, 43.456715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823647, 37.694633, 43.406178>,  <40.197803, 37.581001, 43.321949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823647, 37.694633, 43.406178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208395, -0.038227, 0.977298,
		0.285684, 0.958037, -0.023445,
		-0.935391, 0.284084, 0.210571,
		39.543030, 37.779858, 43.469349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.778282, 38.686825, 44.185169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522884, 38.397175, 44.080883>,  <39.369644, 38.223385, 44.018311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522884, 38.397175, 44.080883>,  <39.778282, 38.686825, 44.185169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522884, 38.397175, 44.080883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069463, -0.391592, 0.917513,
		-0.766486, 0.567716, 0.300329,
		-0.638493, -0.724123, -0.260715,
		39.331337, 38.179939, 44.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221809, 38.851238, 44.597027>,  <39.778282, 38.686825, 44.185169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221809, 38.851238, 44.597027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250004, 38.463184, 44.504185>,  <39.266922, 38.230350, 44.448479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250004, 38.463184, 44.504185>,  <39.221809, 38.851238, 44.597027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250004, 38.463184, 44.504185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050120, -0.235833, 0.970500,
		-0.996253, -0.056774, -0.065246,
		0.070486, -0.970134, -0.232104,
		39.271149, 38.172146, 44.434555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710274, 38.512260, 44.950912>,  <39.221809, 38.851238, 44.597027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710274, 38.512260, 44.950912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937428, 38.195728, 44.860321>,  <39.073719, 38.005810, 44.805965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937428, 38.195728, 44.860321>,  <38.710274, 38.512260, 44.950912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937428, 38.195728, 44.860321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063538, -0.232188, 0.970593,
		-0.820649, -0.565579, -0.081578,
		0.567889, -0.791334, -0.226481,
		39.107796, 37.958328, 44.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376106, 37.957462, 45.331059>,  <38.710274, 38.512260, 44.950912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376106, 37.957462, 45.331059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750385, 37.843826, 45.247387>,  <38.974953, 37.775642, 45.197186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750385, 37.843826, 45.247387>,  <38.376106, 37.957462, 45.331059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750385, 37.843826, 45.247387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127983, -0.279190, 0.951669,
		-0.328768, -0.917247, -0.224878,
		0.935699, -0.284098, -0.209181,
		39.031094, 37.758598, 45.184631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449841, 37.248310, 45.521835>,  <38.376106, 37.957462, 45.331059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449841, 37.248310, 45.521835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814350, 37.412853, 45.529404>,  <39.033058, 37.511578, 45.533947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814350, 37.412853, 45.529404>,  <38.449841, 37.248310, 45.521835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814350, 37.412853, 45.529404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155022, -0.385272, 0.909689,
		0.381497, -0.826046, -0.414859,
		0.911278, 0.411356, 0.018924,
		39.087734, 37.536259, 45.535080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963223, 36.868515, 46.045536>,  <38.449841, 37.248310, 45.521835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963223, 36.868515, 46.045536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.188923, 37.196514, 46.007133>,  <39.324345, 37.393314, 45.984093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.188923, 37.196514, 46.007133>,  <38.963223, 36.868515, 46.045536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188923, 37.196514, 46.007133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426885, -0.190238, 0.884070,
		0.706674, -0.539822, -0.457388,
		0.564253, 0.820001, -0.096005,
		39.358200, 37.442516, 45.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473732, 36.596466, 46.352211>,  <38.963223, 36.868515, 46.045536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473732, 36.596466, 46.352211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515614, 36.994232, 46.346817>,  <39.540741, 37.232891, 46.343582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515614, 36.994232, 46.346817>,  <39.473732, 36.596466, 46.352211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515614, 36.994232, 46.346817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367680, -0.026108, 0.929586,
		0.924039, -0.102289, -0.368358,
		0.104703, 0.994412, -0.013485,
		39.547024, 37.292557, 46.342773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176609, 36.751492, 46.477280>,  <39.473732, 36.596466, 46.352211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176609, 36.751492, 46.477280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976734, 37.080742, 46.585186>,  <39.856812, 37.278294, 46.649929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976734, 37.080742, 46.585186>,  <40.176609, 36.751492, 46.477280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976734, 37.080742, 46.585186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379403, -0.071989, 0.922427,
		0.778698, 0.563271, -0.276326,
		-0.499683, 0.823130, 0.269764,
		39.826828, 37.327682, 46.666115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637596, 37.083099, 46.639889>,  <40.176609, 36.751492, 46.477280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637596, 37.083099, 46.639889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331722, 37.244835, 46.840595>,  <40.148197, 37.341877, 46.961018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331722, 37.244835, 46.840595>,  <40.637596, 37.083099, 46.639889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331722, 37.244835, 46.840595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577565, 0.084709, 0.811938,
		0.285795, 0.910678, -0.298308,
		-0.764683, 0.404340, 0.501767,
		40.102318, 37.366138, 46.991127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984848, 37.607670, 46.917648>,  <40.637596, 37.083099, 46.639889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984848, 37.607670, 46.917648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645973, 37.597980, 47.129948>,  <40.442650, 37.592167, 47.257328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645973, 37.597980, 47.129948>,  <40.984848, 37.607670, 46.917648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645973, 37.597980, 47.129948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483600, 0.378523, 0.789209,
		-0.220015, 0.925275, -0.308965,
		-0.847186, -0.024222, 0.530744,
		40.391819, 37.590714, 47.289169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002270, 38.320530, 47.455120>,  <40.984848, 37.607670, 46.917648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002270, 38.320530, 47.455120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768669, 38.011909, 47.556042>,  <40.628510, 37.826736, 47.616592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768669, 38.011909, 47.556042>,  <41.002270, 38.320530, 47.455120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768669, 38.011909, 47.556042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348768, 0.042173, 0.936260,
		-0.733011, 0.634770, 0.244463,
		-0.584000, -0.771549, 0.252301,
		40.593468, 37.780445, 47.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747700, 38.428387, 48.137287>,  <41.002270, 38.320530, 47.455120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747700, 38.428387, 48.137287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.651814, 38.041988, 48.098518>,  <40.594280, 37.810150, 48.075256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.651814, 38.041988, 48.098518>,  <40.747700, 38.428387, 48.137287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651814, 38.041988, 48.098518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368358, -0.182865, 0.911522,
		-0.898248, 0.182803, 0.399667,
		-0.239715, -0.965993, -0.096921,
		40.579899, 37.752190, 48.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397236, 38.207539, 48.785374>,  <40.747700, 38.428387, 48.137287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397236, 38.207539, 48.785374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.548504, 37.884312, 48.604702>,  <40.639267, 37.690376, 48.496300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.548504, 37.884312, 48.604702>,  <40.397236, 38.207539, 48.785374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548504, 37.884312, 48.604702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449471, -0.266268, 0.852688,
		-0.809297, -0.525480, 0.262507,
		0.378173, -0.808067, -0.451678,
		40.661957, 37.641891, 48.469200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231121, 37.654564, 49.193962>,  <40.397236, 38.207539, 48.785374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231121, 37.654564, 49.193962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517776, 37.458580, 48.995415>,  <40.689770, 37.340992, 48.876286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517776, 37.458580, 48.995415>,  <40.231121, 37.654564, 49.193962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517776, 37.458580, 48.995415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557690, -0.024824, 0.829678,
		-0.418827, -0.871394, 0.255454,
		0.716635, -0.489956, -0.496364,
		40.732765, 37.311592, 48.846504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285641, 36.979923, 49.588200>,  <40.231121, 37.654564, 49.193962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285641, 36.979923, 49.588200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629658, 37.096947, 49.420998>,  <40.836067, 37.167160, 49.320679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629658, 37.096947, 49.420998>,  <40.285641, 36.979923, 49.588200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629658, 37.096947, 49.420998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461935, -0.098619, 0.881414,
		0.216646, -0.951147, -0.219962,
		0.860047, 0.292563, -0.418003,
		40.887672, 37.184715, 49.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792599, 36.600468, 49.979424>,  <40.285641, 36.979923, 49.588200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792599, 36.600468, 49.979424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991482, 36.896873, 49.798897>,  <41.110813, 37.074715, 49.690582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991482, 36.896873, 49.798897>,  <40.792599, 36.600468, 49.979424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991482, 36.896873, 49.798897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681457, -0.011560, 0.731767,
		0.537030, -0.671393, -0.510715,
		0.497207, 0.741011, -0.451318,
		41.140644, 37.119175, 49.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505302, 36.468994, 50.061897>,  <40.792599, 36.600468, 49.979424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505302, 36.468994, 50.061897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505268, 36.856743, 49.963657>,  <41.505249, 37.089394, 49.904713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505268, 36.856743, 49.963657>,  <41.505302, 36.468994, 50.061897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505268, 36.856743, 49.963657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638974, 0.188973, 0.745655,
		0.769228, -0.156866, -0.619420,
		-0.000086, 0.969372, -0.245597,
		41.505241, 37.147556, 49.889977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233223, 36.720497, 50.058403>,  <41.505302, 36.468994, 50.061897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233223, 36.720497, 50.058403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014263, 37.048016, 50.127605>,  <41.882889, 37.244526, 50.169128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014263, 37.048016, 50.127605>,  <42.233223, 36.720497, 50.058403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014263, 37.048016, 50.127605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590254, 0.231189, 0.773403,
		0.593260, 0.525479, -0.609849,
		-0.547397, 0.818794, 0.173010,
		41.850044, 37.293655, 50.179508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720909, 37.242565, 50.375984>,  <42.233223, 36.720497, 50.058403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720909, 37.242565, 50.375984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.357822, 37.390106, 50.455986>,  <42.139973, 37.478630, 50.503986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.357822, 37.390106, 50.455986>,  <42.720909, 37.242565, 50.375984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357822, 37.390106, 50.455986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279034, 0.174671, 0.944262,
		0.313359, 0.912928, -0.261474,
		-0.907715, 0.368853, 0.200004,
		42.085506, 37.500763, 50.515987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879063, 37.589443, 50.910374>,  <42.720909, 37.242565, 50.375984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879063, 37.589443, 50.910374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480247, 37.605690, 50.936478>,  <42.240959, 37.615440, 50.952141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480247, 37.605690, 50.936478>,  <42.879063, 37.589443, 50.910374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480247, 37.605690, 50.936478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069732, 0.120629, 0.990246,
		0.032352, 0.991866, -0.123105,
		-0.997041, 0.040621, 0.065262,
		42.181137, 37.617878, 50.956055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670895, 38.275208, 51.227024>,  <42.879063, 37.589443, 50.910374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670895, 38.275208, 51.227024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390694, 37.997860, 51.294598>,  <42.222572, 37.831451, 51.335140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390694, 37.997860, 51.294598>,  <42.670895, 38.275208, 51.227024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390694, 37.997860, 51.294598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129057, 0.109739, 0.985546,
		-0.701886, 0.712177, 0.012612,
		-0.700500, -0.693369, 0.168935,
		42.180542, 37.789848, 51.345280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096828, 38.533463, 51.618870>,  <42.670895, 38.275208, 51.227024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096828, 38.533463, 51.618870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094933, 38.137032, 51.672138>,  <42.093796, 37.899174, 51.704098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094933, 38.137032, 51.672138>,  <42.096828, 38.533463, 51.618870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094933, 38.137032, 51.672138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108723, 0.131872, 0.985286,
		-0.994061, 0.019148, 0.107129,
		-0.004739, -0.991082, 0.133171,
		42.093510, 37.839706, 51.712090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646236, 38.362381, 52.138893>,  <42.096828, 38.533463, 51.618870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646236, 38.362381, 52.138893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.922844, 38.074142, 52.159061>,  <42.088810, 37.901199, 52.171162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.922844, 38.074142, 52.159061>,  <41.646236, 38.362381, 52.138893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922844, 38.074142, 52.159061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035031, 0.036264, 0.998728,
		-0.721507, -0.692407, -0.000166,
		0.691520, -0.720595, 0.050421,
		42.130299, 37.857964, 52.174187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162891, 38.146454, 52.570412>,  <41.646236, 38.362381, 52.138893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162891, 38.146454, 52.570412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070744, 37.905655, 52.876232>,  <41.015453, 37.761177, 53.059723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070744, 37.905655, 52.876232>,  <41.162891, 38.146454, 52.570412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070744, 37.905655, 52.876232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705543, -0.437772, -0.557284,
		0.670179, -0.667802, -0.323884,
		-0.230368, -0.601994, 0.764549,
		41.001633, 37.725056, 53.105598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146141, 37.390491, 52.322849>,  <41.162891, 38.146454, 52.570412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146141, 37.390491, 52.322849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.879517, 37.509800, 52.596119>,  <40.719540, 37.581387, 52.760082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.879517, 37.509800, 52.596119>,  <41.146141, 37.390491, 52.322849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879517, 37.509800, 52.596119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744413, -0.218052, -0.631112,
		-0.039276, -0.929240, 0.367384,
		-0.666563, 0.298273, 0.683174,
		40.679546, 37.599281, 52.801071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626774, 36.893093, 52.184086>,  <41.146141, 37.390491, 52.322849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626774, 36.893093, 52.184086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.438900, 37.163227, 52.411533>,  <40.326176, 37.325306, 52.548000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.438900, 37.163227, 52.411533>,  <40.626774, 36.893093, 52.184086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438900, 37.163227, 52.411533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834009, -0.128193, -0.536652,
		-0.289527, -0.726286, 0.623445,
		-0.469684, 0.675334, 0.568614,
		40.297997, 37.365826, 52.582119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018150, 36.583965, 52.325024>,  <40.626774, 36.893093, 52.184086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018150, 36.583965, 52.325024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956707, 36.975910, 52.376053>,  <39.919842, 37.211079, 52.406670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956707, 36.975910, 52.376053>,  <40.018150, 36.583965, 52.325024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956707, 36.975910, 52.376053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824702, -0.056016, -0.562787,
		-0.544307, -0.191661, 0.816698,
		-0.153613, 0.979862, 0.127574,
		39.910622, 37.269867, 52.414326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348408, 36.535564, 52.549900>,  <40.018150, 36.583965, 52.325024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348408, 36.535564, 52.549900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424412, 36.904804, 52.416168>,  <39.470013, 37.126350, 52.335930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424412, 36.904804, 52.416168>,  <39.348408, 36.535564, 52.549900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424412, 36.904804, 52.416168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841338, -0.022418, -0.540045,
		-0.506012, 0.383899, 0.772382,
		0.190007, 0.923103, -0.334332,
		39.481415, 37.181736, 52.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676212, 36.870014, 52.422066>,  <39.348408, 36.535564, 52.549900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676212, 36.870014, 52.422066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928986, 37.093155, 52.206860>,  <39.080650, 37.227039, 52.077736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928986, 37.093155, 52.206860>,  <38.676212, 36.870014, 52.422066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928986, 37.093155, 52.206860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699411, 0.111408, -0.705984,
		-0.333894, 0.822430, 0.460569,
		0.631933, 0.557850, -0.538018,
		39.118565, 37.260509, 52.045456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212307, 37.292625, 51.981045>,  <38.676212, 36.870014, 52.422066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212307, 37.292625, 51.981045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574490, 37.341618, 51.818489>,  <38.791798, 37.371014, 51.720955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574490, 37.341618, 51.818489>,  <38.212307, 37.292625, 51.981045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574490, 37.341618, 51.818489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420175, 0.123118, -0.899052,
		-0.060080, 0.984805, 0.162940,
		0.905452, 0.122478, -0.406393,
		38.846127, 37.378361, 51.696571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120293, 37.838337, 51.550945>,  <38.212307, 37.292625, 51.981045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120293, 37.838337, 51.550945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456718, 37.671299, 51.413414>,  <38.658573, 37.571075, 51.330894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456718, 37.671299, 51.413414>,  <38.120293, 37.838337, 51.550945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456718, 37.671299, 51.413414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212435, 0.329559, -0.919925,
		0.497471, 0.846760, 0.188468,
		0.841067, -0.417599, -0.343828,
		38.709038, 37.546021, 51.310265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322849, 38.318016, 51.016300>,  <38.120293, 37.838337, 51.550945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322849, 38.318016, 51.016300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484703, 37.965504, 50.918644>,  <38.581818, 37.753994, 50.860050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484703, 37.965504, 50.918644>,  <38.322849, 38.318016, 51.016300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484703, 37.965504, 50.918644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289536, 0.129774, -0.948329,
		0.867431, 0.454418, -0.202652,
		0.404639, -0.881285, -0.244140,
		38.606094, 37.701118, 50.845402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731670, 38.475632, 50.426403>,  <38.322849, 38.318016, 51.016300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731670, 38.475632, 50.426403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.654068, 38.084549, 50.394287>,  <38.607506, 37.849899, 50.375015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.654068, 38.084549, 50.394287>,  <38.731670, 38.475632, 50.426403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654068, 38.084549, 50.394287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362164, 0.147446, -0.920379,
		0.911702, -0.149476, -0.382696,
		-0.194001, -0.977710, -0.080292,
		38.595867, 37.791237, 50.370201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129520, 38.184193, 49.782391>,  <38.731670, 38.475632, 50.426403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129520, 38.184193, 49.782391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824284, 37.937069, 49.858288>,  <38.641144, 37.788795, 49.903828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824284, 37.937069, 49.858288>,  <39.129520, 38.184193, 49.782391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824284, 37.937069, 49.858288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296640, 0.073973, -0.952120,
		0.574197, -0.782837, -0.239716,
		-0.763088, -0.617814, 0.189746,
		38.595356, 37.751724, 49.915211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170696, 37.869083, 49.192085>,  <39.129520, 38.184193, 49.782391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170696, 37.869083, 49.192085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819462, 37.759655, 49.349117>,  <38.608723, 37.693996, 49.443336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819462, 37.759655, 49.349117>,  <39.170696, 37.869083, 49.192085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819462, 37.759655, 49.349117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392114, -0.058834, -0.918033,
		0.274244, -0.960051, -0.055610,
		-0.878087, -0.273571, 0.392584,
		38.556034, 37.677582, 49.466892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967541, 37.186283, 48.889366>,  <39.170696, 37.869083, 49.192085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967541, 37.186283, 48.889366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651508, 37.386391, 49.031067>,  <38.461887, 37.506454, 49.116089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651508, 37.386391, 49.031067>,  <38.967541, 37.186283, 48.889366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651508, 37.386391, 49.031067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404524, 0.008702, -0.914486,
		-0.460570, -0.865827, 0.195495,
		-0.790085, 0.500268, 0.354256,
		38.414482, 37.536472, 49.137344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403030, 36.876690, 48.566967>,  <38.967541, 37.186283, 48.889366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403030, 36.876690, 48.566967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259468, 37.235413, 48.670448>,  <38.173332, 37.450645, 48.732536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259468, 37.235413, 48.670448>,  <38.403030, 36.876690, 48.566967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259468, 37.235413, 48.670448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492751, 0.053350, -0.868534,
		-0.792708, -0.439197, 0.422754,
		-0.358903, 0.896806, 0.258706,
		38.151798, 37.504456, 48.748058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804642, 36.876514, 48.240665>,  <38.403030, 36.876690, 48.566967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804642, 36.876514, 48.240665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822205, 37.266457, 48.328060>,  <37.832741, 37.500420, 48.380497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822205, 37.266457, 48.328060>,  <37.804642, 36.876514, 48.240665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822205, 37.266457, 48.328060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400010, 0.217558, -0.890315,
		-0.915459, -0.048308, 0.399502,
		0.043906, 0.974851, 0.218489,
		37.835377, 37.558910, 48.393608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247555, 37.162571, 47.943825>,  <37.804642, 36.876514, 48.240665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247555, 37.162571, 47.943825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.499680, 37.471931, 47.970821>,  <37.650955, 37.657547, 47.987019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.499680, 37.471931, 47.970821>,  <37.247555, 37.162571, 47.943825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499680, 37.471931, 47.970821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312102, 0.332039, -0.890136,
		-0.710844, 0.539999, 0.450669,
		0.630312, 0.773402, 0.067493,
		37.688774, 37.703953, 47.991070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870327, 37.771446, 47.711777>,  <37.247555, 37.162571, 47.943825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870327, 37.771446, 47.711777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251240, 37.884060, 47.664631>,  <37.479790, 37.951626, 47.636341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251240, 37.884060, 47.664631>,  <36.870327, 37.771446, 47.711777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251240, 37.884060, 47.664631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250165, 0.498755, -0.829856,
		-0.174844, 0.819746, 0.545386,
		0.952285, 0.281532, -0.117868,
		37.536926, 37.968521, 47.629272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799904, 38.498871, 47.569183>,  <36.870327, 37.771446, 47.711777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799904, 38.498871, 47.569183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172695, 38.424065, 47.444965>,  <37.396370, 38.379181, 47.370434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172695, 38.424065, 47.444965>,  <36.799904, 38.498871, 47.569183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172695, 38.424065, 47.444965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179688, 0.505688, -0.843796,
		0.314841, 0.842203, 0.437687,
		0.931980, -0.187015, -0.310545,
		37.452290, 38.367962, 47.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948273, 39.121922, 47.212448>,  <36.799904, 38.498871, 47.569183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948273, 39.121922, 47.212448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202511, 38.841526, 47.083054>,  <37.355053, 38.673290, 47.005417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202511, 38.841526, 47.083054>,  <36.948273, 39.121922, 47.212448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202511, 38.841526, 47.083054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086880, 0.351406, -0.932183,
		0.767121, 0.620593, 0.162449,
		0.635592, -0.700984, -0.323488,
		37.393188, 38.631229, 46.986008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503937, 39.433899, 46.851055>,  <36.948273, 39.121922, 47.212448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503937, 39.433899, 46.851055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477757, 39.060593, 46.709789>,  <37.462048, 38.836609, 46.625031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477757, 39.060593, 46.709789>,  <37.503937, 39.433899, 46.851055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477757, 39.060593, 46.709789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026170, 0.355407, -0.934345,
		0.997513, -0.051911, -0.047685,
		-0.065451, -0.933269, -0.353165,
		37.458122, 38.780613, 46.603840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866135, 39.386562, 46.216808>,  <37.503937, 39.433899, 46.851055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866135, 39.386562, 46.216808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617744, 39.074348, 46.188087>,  <37.468712, 38.887020, 46.170856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617744, 39.074348, 46.188087>,  <37.866135, 39.386562, 46.216808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617744, 39.074348, 46.188087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250491, 0.284413, -0.925399,
		0.742729, -0.556662, -0.372130,
		-0.620973, -0.780537, -0.071803,
		37.431454, 38.840187, 46.166546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.446461, 30.603151, 29.455799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214741, 30.822132, 29.214235>,  <46.075710, 30.953520, 29.069296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214741, 30.822132, 29.214235>,  <46.446461, 30.603151, 29.455799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214741, 30.822132, 29.214235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343524, 0.507908, 0.789950,
		0.739190, 0.665076, -0.106169,
		-0.579301, 0.547451, -0.603910,
		46.040951, 30.986368, 29.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682972, 31.314390, 29.417841>,  <46.446461, 30.603151, 29.455799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682972, 31.314390, 29.417841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.289631, 31.260355, 29.369238>,  <46.053627, 31.227934, 29.340076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.289631, 31.260355, 29.369238>,  <46.682972, 31.314390, 29.417841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289631, 31.260355, 29.369238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181329, 0.687215, 0.703460,
		-0.011525, 0.713784, -0.700271,
		-0.983355, -0.135087, -0.121509,
		45.994625, 31.219830, 29.332785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384365, 32.019901, 29.585028>,  <46.682972, 31.314390, 29.417841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384365, 32.019901, 29.585028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.058292, 31.788307, 29.591526>,  <45.862648, 31.649351, 29.595425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.058292, 31.788307, 29.591526>,  <46.384365, 32.019901, 29.585028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058292, 31.788307, 29.591526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470986, 0.678934, 0.563223,
		-0.337126, 0.451475, -0.826145,
		-0.815179, -0.578981, 0.016248,
		45.813740, 31.614613, 29.596401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855427, 32.468872, 29.528606>,  <46.384365, 32.019901, 29.585028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855427, 32.468872, 29.528606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716194, 32.131535, 29.692369>,  <45.632652, 31.929132, 29.790627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716194, 32.131535, 29.692369>,  <45.855427, 32.468872, 29.528606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716194, 32.131535, 29.692369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364469, 0.524102, 0.769727,
		-0.863713, 0.118713, -0.489803,
		-0.348083, -0.843341, 0.409407,
		45.611771, 31.878532, 29.815191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093334, 32.608574, 29.719250>,  <45.855427, 32.468872, 29.528606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093334, 32.608574, 29.719250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191666, 32.295521, 29.948004>,  <45.250664, 32.107689, 30.085257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191666, 32.295521, 29.948004>,  <45.093334, 32.608574, 29.719250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191666, 32.295521, 29.948004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308746, 0.496041, 0.811553,
		-0.918828, -0.376069, -0.119694,
		0.245827, -0.782633, 0.571887,
		45.265415, 32.060730, 30.119570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466011, 32.395840, 30.060520>,  <45.093334, 32.608574, 29.719250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466011, 32.395840, 30.060520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793221, 32.286449, 30.262922>,  <44.989548, 32.220814, 30.384363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793221, 32.286449, 30.262922>,  <44.466011, 32.395840, 30.060520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793221, 32.286449, 30.262922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353880, 0.454231, 0.817584,
		-0.453432, -0.847871, 0.274796,
		0.818027, -0.273474, 0.506008,
		45.038628, 32.204407, 30.414724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194374, 32.188824, 30.694576>,  <44.466011, 32.395840, 30.060520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194374, 32.188824, 30.694576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584309, 32.225731, 30.775745>,  <44.818268, 32.247875, 30.824448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584309, 32.225731, 30.775745>,  <44.194374, 32.188824, 30.694576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584309, 32.225731, 30.775745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222915, 0.405130, 0.886667,
		-0.000396, -0.909591, 0.415504,
		0.974837, 0.092272, 0.202922,
		44.876759, 32.253414, 30.836622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371410, 31.888842, 31.414677>,  <44.194374, 32.188824, 30.694576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371410, 31.888842, 31.414677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647415, 32.166237, 31.331774>,  <44.813019, 32.332676, 31.282032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647415, 32.166237, 31.331774>,  <44.371410, 31.888842, 31.414677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647415, 32.166237, 31.331774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240573, 0.489808, 0.837982,
		0.682649, -0.528355, 0.504808,
		0.690011, 0.693490, -0.207259,
		44.854420, 32.374283, 31.269596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472805, 32.164333, 32.031754>,  <44.371410, 31.888842, 31.414677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472805, 32.164333, 32.031754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707672, 32.419178, 31.832026>,  <44.848591, 32.572086, 31.712189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707672, 32.419178, 31.832026>,  <44.472805, 32.164333, 32.031754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707672, 32.419178, 31.832026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010485, 0.610817, 0.791703,
		0.809396, -0.470099, 0.351973,
		0.587170, 0.637111, -0.499321,
		44.883823, 32.610310, 31.682228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978226, 32.314873, 32.582905>,  <44.472805, 32.164333, 32.031754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978226, 32.314873, 32.582905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965153, 32.603199, 32.305962>,  <44.957310, 32.776196, 32.139797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965153, 32.603199, 32.305962>,  <44.978226, 32.314873, 32.582905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965153, 32.603199, 32.305962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120541, 0.684826, 0.718667,
		0.992170, 0.106947, 0.064505,
		-0.032685, 0.720816, -0.692355,
		44.955349, 32.819443, 32.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365906, 32.784721, 32.816906>,  <44.978226, 32.314873, 32.582905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365906, 32.784721, 32.816906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156006, 33.001938, 32.554684>,  <45.030067, 33.132267, 32.397350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156006, 33.001938, 32.554684>,  <45.365906, 32.784721, 32.816906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156006, 33.001938, 32.554684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082528, 0.734017, 0.674098,
		0.847248, 0.407833, -0.340358,
		-0.524748, 0.543039, -0.655552,
		44.998581, 33.164848, 32.358017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661659, 33.464676, 32.788002>,  <45.365906, 32.784721, 32.816906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661659, 33.464676, 32.788002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291092, 33.521759, 32.648640>,  <45.068752, 33.556007, 32.565022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291092, 33.521759, 32.648640>,  <45.661659, 33.464676, 32.788002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291092, 33.521759, 32.648640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206876, 0.580215, 0.787752,
		0.314567, 0.801863, -0.507999,
		-0.926418, 0.142708, -0.348403,
		45.013168, 33.564571, 32.544117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583916, 34.167973, 32.720745>,  <45.661659, 33.464676, 32.788002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583916, 34.167973, 32.720745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231533, 33.984627, 32.767746>,  <45.020103, 33.874619, 32.795948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231533, 33.984627, 32.767746>,  <45.583916, 34.167973, 32.720745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231533, 33.984627, 32.767746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282443, 0.708605, 0.646610,
		-0.379649, 0.536450, -0.753716,
		-0.880961, -0.458367, 0.117505,
		44.967243, 33.847118, 32.802998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104527, 34.713333, 32.798763>,  <45.583916, 34.167973, 32.720745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104527, 34.713333, 32.798763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891926, 34.410156, 32.950039>,  <44.764366, 34.228249, 33.040806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891926, 34.410156, 32.950039>,  <45.104527, 34.713333, 32.798763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891926, 34.410156, 32.950039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291533, 0.582884, 0.758456,
		-0.795308, 0.292865, -0.530769,
		-0.531502, -0.757943, 0.378192,
		44.732475, 34.182774, 33.063496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427265, 34.998890, 33.020313>,  <45.104527, 34.713333, 32.798763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427265, 34.998890, 33.020313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495609, 34.657650, 33.217506>,  <44.536617, 34.452908, 33.335823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495609, 34.657650, 33.217506>,  <44.427265, 34.998890, 33.020313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495609, 34.657650, 33.217506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294351, 0.433293, 0.851830,
		-0.940300, -0.290654, -0.177077,
		0.170862, -0.853099, 0.492980,
		44.546867, 34.401722, 33.365402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785118, 34.824280, 33.490757>,  <44.427265, 34.998890, 33.020313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785118, 34.824280, 33.490757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108013, 34.636253, 33.633530>,  <44.301750, 34.523438, 33.719193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108013, 34.636253, 33.633530>,  <43.785118, 34.824280, 33.490757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108013, 34.636253, 33.633530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219677, 0.322002, 0.920900,
		-0.547815, -0.821798, 0.156671,
		0.807242, -0.470066, 0.356928,
		44.350185, 34.495235, 33.740608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509720, 34.488075, 34.187180>,  <43.785118, 34.824280, 33.490757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509720, 34.488075, 34.187180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908863, 34.470478, 34.206539>,  <44.148350, 34.459919, 34.218155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908863, 34.470478, 34.206539>,  <43.509720, 34.488075, 34.187180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908863, 34.470478, 34.206539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036166, 0.245451, 0.968734,
		-0.054502, -0.968410, 0.243334,
		0.997858, -0.043998, 0.048401,
		44.208221, 34.457279, 34.221058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602955, 34.111561, 34.827614>,  <43.509720, 34.488075, 34.187180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602955, 34.111561, 34.827614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939743, 34.302124, 34.726326>,  <44.141815, 34.416462, 34.665554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939743, 34.302124, 34.726326>,  <43.602955, 34.111561, 34.827614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939743, 34.302124, 34.726326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161573, 0.225151, 0.960834,
		0.514764, -0.849906, 0.112595,
		0.841969, 0.476410, -0.253221,
		44.192333, 34.445045, 34.650360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063484, 33.937462, 35.275028>,  <43.602955, 34.111561, 34.827614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063484, 33.937462, 35.275028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211807, 34.289268, 35.155724>,  <44.300800, 34.500351, 35.084141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211807, 34.289268, 35.155724>,  <44.063484, 33.937462, 35.275028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211807, 34.289268, 35.155724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107594, 0.278308, 0.954447,
		0.922457, -0.386004, 0.008567,
		0.370804, 0.879514, -0.298259,
		44.323048, 34.553123, 35.066246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662025, 33.945374, 35.626171>,  <44.063484, 33.937462, 35.275028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662025, 33.945374, 35.626171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599583, 34.320526, 35.502228>,  <44.562119, 34.545616, 35.427860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599583, 34.320526, 35.502228>,  <44.662025, 33.945374, 35.626171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599583, 34.320526, 35.502228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307083, 0.344242, 0.887241,
		0.938792, 0.043353, -0.341746,
		-0.156107, 0.937880, -0.309859,
		44.552750, 34.601891, 35.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240479, 34.334949, 35.784107>,  <44.662025, 33.945374, 35.626171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240479, 34.334949, 35.784107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940628, 34.594658, 35.732704>,  <44.760719, 34.750484, 35.701862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940628, 34.594658, 35.732704>,  <45.240479, 34.334949, 35.784107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940628, 34.594658, 35.732704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210244, 0.417688, 0.883931,
		0.627587, 0.635596, -0.449614,
		-0.749621, 0.649272, -0.128505,
		44.715740, 34.789440, 35.694153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961758, 34.370998, 35.655869>,  <45.240479, 34.334949, 35.784107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961758, 34.370998, 35.655869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.289909, 34.142551, 35.667171>,  <46.486801, 34.005482, 35.673954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.289909, 34.142551, 35.667171>,  <45.961758, 34.370998, 35.655869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289909, 34.142551, 35.667171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327423, -0.509694, -0.795617,
		0.468793, 0.643458, -0.605140,
		0.820382, -0.571116, 0.028258,
		46.536026, 33.971218, 35.675648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252125, 34.313564, 35.036144>,  <45.961758, 34.370998, 35.655869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252125, 34.313564, 35.036144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429829, 33.987007, 35.183731>,  <46.536449, 33.791073, 35.272282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429829, 33.987007, 35.183731>,  <46.252125, 34.313564, 35.036144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429829, 33.987007, 35.183731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188588, -0.487832, -0.852323,
		0.875824, 0.309070, -0.370686,
		0.444260, -0.816392, 0.368968,
		46.563107, 33.742088, 35.294422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781879, 34.034161, 34.495113>,  <46.252125, 34.313564, 35.036144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781879, 34.034161, 34.495113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713379, 33.723812, 34.737995>,  <46.672279, 33.537605, 34.883724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713379, 33.723812, 34.737995>,  <46.781879, 34.034161, 34.495113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713379, 33.723812, 34.737995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037750, -0.610692, -0.790968,
		0.984504, -0.158378, 0.075294,
		-0.171253, -0.775869, 0.607207,
		46.662003, 33.491051, 34.920158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222095, 33.542660, 34.327209>,  <46.781879, 34.034161, 34.495113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222095, 33.542660, 34.327209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.961121, 33.295971, 34.503380>,  <46.804535, 33.147957, 34.609081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.961121, 33.295971, 34.503380>,  <47.222095, 33.542660, 34.327209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.961121, 33.295971, 34.503380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217695, -0.709189, -0.670566,
		0.725898, -0.341626, 0.596962,
		-0.652442, -0.616719, 0.440429,
		46.765388, 33.110954, 34.635509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575634, 32.907948, 34.452679>,  <47.222095, 33.542660, 34.327209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575634, 32.907948, 34.452679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178391, 32.864941, 34.434021>,  <46.940044, 32.839134, 34.422825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178391, 32.864941, 34.434021>,  <47.575634, 32.907948, 34.452679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178391, 32.864941, 34.434021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105406, -0.645374, -0.756559,
		0.051245, -0.756262, 0.652259,
		-0.993108, -0.107522, -0.046643,
		46.880459, 32.832684, 34.420029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449814, 32.226727, 34.354759>,  <47.575634, 32.907948, 34.452679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449814, 32.226727, 34.354759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079010, 32.330486, 34.246414>,  <46.856529, 32.392742, 34.181408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079010, 32.330486, 34.246414>,  <47.449814, 32.226727, 34.354759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079010, 32.330486, 34.246414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042854, -0.790752, -0.610635,
		-0.372583, -0.554457, 0.744150,
		-0.927009, 0.259402, -0.270860,
		46.800907, 32.408306, 34.165157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981564, 31.615055, 34.323414>,  <47.449814, 32.226727, 34.354759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981564, 31.615055, 34.323414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.764786, 31.887501, 34.126484>,  <46.634720, 32.050968, 34.008327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.764786, 31.887501, 34.126484>,  <46.981564, 31.615055, 34.323414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764786, 31.887501, 34.126484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279249, -0.698465, -0.658913,
		-0.792665, -0.219613, 0.568729,
		-0.541943, 0.681114, -0.492323,
		46.602203, 32.091835, 33.978786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394001, 31.400185, 34.500076>,  <46.981564, 31.615055, 34.323414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394001, 31.400185, 34.500076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381439, 31.604006, 34.156128>,  <46.373901, 31.726297, 33.949760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381439, 31.604006, 34.156128>,  <46.394001, 31.400185, 34.500076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381439, 31.604006, 34.156128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582895, -0.708188, -0.398376,
		-0.811940, 0.488700, 0.319258,
		-0.031408, 0.509551, -0.859867,
		46.372017, 31.756870, 33.898167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837757, 31.220787, 34.179455>,  <46.394001, 31.400185, 34.500076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837757, 31.220787, 34.179455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016087, 31.397509, 33.868057>,  <46.123085, 31.503542, 33.681221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016087, 31.397509, 33.868057>,  <45.837757, 31.220787, 34.179455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016087, 31.397509, 33.868057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470571, -0.624148, -0.623700,
		-0.761447, 0.644397, -0.070363,
		0.445827, 0.441804, -0.778490,
		46.149834, 31.530050, 33.634510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255878, 31.301254, 33.676682>,  <45.837757, 31.220787, 34.179455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255878, 31.301254, 33.676682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598499, 31.335701, 33.473152>,  <45.804073, 31.356369, 33.351036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598499, 31.335701, 33.473152>,  <45.255878, 31.301254, 33.676682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598499, 31.335701, 33.473152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426001, -0.438517, -0.791344,
		-0.291276, 0.894588, -0.338927,
		0.856552, 0.086116, -0.508825,
		45.855465, 31.361536, 33.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081985, 31.521559, 32.988529>,  <45.255878, 31.301254, 33.676682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081985, 31.521559, 32.988529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436813, 31.336973, 32.993679>,  <45.649708, 31.226223, 32.996769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436813, 31.336973, 32.993679>,  <45.081985, 31.521559, 32.988529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436813, 31.336973, 32.993679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315636, -0.626628, -0.712539,
		0.336879, 0.628005, -0.701515,
		0.887066, -0.461462, 0.012877,
		45.702934, 31.198534, 32.997543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423599, 31.479403, 32.257954>,  <45.081985, 31.521559, 32.988529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423599, 31.479403, 32.257954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626534, 31.185637, 32.438286>,  <45.748295, 31.009377, 32.546486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626534, 31.185637, 32.438286>,  <45.423599, 31.479403, 32.257954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626534, 31.185637, 32.438286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196760, -0.608060, -0.769122,
		0.838988, 0.301493, -0.452991,
		0.507331, -0.734414, 0.450833,
		45.778732, 30.965313, 32.573536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695992, 31.186306, 31.779694>,  <45.423599, 31.479403, 32.257954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695992, 31.186306, 31.779694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776989, 30.911921, 32.059250>,  <45.825588, 30.747290, 32.226982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776989, 30.911921, 32.059250>,  <45.695992, 31.186306, 31.779694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776989, 30.911921, 32.059250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263151, -0.725542, -0.635878,
		0.943264, -0.055151, -0.327432,
		0.202497, -0.685965, 0.698890,
		45.837738, 30.706131, 32.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113583, 30.676645, 31.469616>,  <45.695992, 31.186306, 31.779694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113583, 30.676645, 31.469616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952408, 30.501999, 31.791363>,  <45.855701, 30.397211, 31.984411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952408, 30.501999, 31.791363>,  <46.113583, 30.676645, 31.469616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952408, 30.501999, 31.791363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328742, -0.751173, -0.572423,
		0.854147, -0.495082, 0.159144,
		-0.402941, -0.436616, 0.804366,
		45.831524, 30.371014, 32.032673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392056, 30.065510, 31.399006>,  <46.113583, 30.676645, 31.469616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392056, 30.065510, 31.399006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048767, 30.039204, 31.602623>,  <45.842793, 30.023420, 31.724792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048767, 30.039204, 31.602623>,  <46.392056, 30.065510, 31.399006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048767, 30.039204, 31.602623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337084, -0.675687, -0.655608,
		0.387070, -0.734249, 0.557723,
		-0.858226, -0.065766, 0.509042,
		45.791298, 30.019474, 31.755335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198536, 29.372763, 31.526962>,  <46.392056, 30.065510, 31.399006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198536, 29.372763, 31.526962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.839115, 29.538033, 31.586136>,  <45.623463, 29.637194, 31.621641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.839115, 29.538033, 31.586136>,  <46.198536, 29.372763, 31.526962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839115, 29.538033, 31.586136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422173, -0.721725, -0.548528,
		-0.119869, -0.555338, 0.822941,
		-0.898555, 0.413175, 0.147936,
		45.569550, 29.661985, 31.630516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712414, 28.836615, 31.622610>,  <46.198536, 29.372763, 31.526962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712414, 28.836615, 31.622610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478577, 29.150181, 31.538967>,  <45.338272, 29.338320, 31.488781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478577, 29.150181, 31.538967>,  <45.712414, 28.836615, 31.622610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478577, 29.150181, 31.538967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509463, -0.555274, -0.657356,
		-0.631424, -0.277755, 0.723986,
		-0.584595, 0.783915, -0.209108,
		45.303196, 29.385355, 31.476234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991604, 28.501856, 31.663469>,  <45.712414, 28.836615, 31.622610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991604, 28.501856, 31.663469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960640, 28.831818, 31.439491>,  <44.942062, 29.029795, 31.305105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960640, 28.831818, 31.439491>,  <44.991604, 28.501856, 31.663469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960640, 28.831818, 31.439491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415397, -0.537244, -0.734039,
		-0.906340, 0.175777, 0.384252,
		-0.077410, 0.824906, -0.559944,
		44.937416, 29.079290, 31.271507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363449, 28.413429, 31.309755>,  <44.991604, 28.501856, 31.663469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363449, 28.413429, 31.309755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527592, 28.684576, 31.065752>,  <44.626076, 28.847263, 30.919350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527592, 28.684576, 31.065752>,  <44.363449, 28.413429, 31.309755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527592, 28.684576, 31.065752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357936, -0.495514, -0.791421,
		-0.838744, 0.543106, 0.039296,
		0.410354, 0.677865, -0.610007,
		44.650700, 28.887936, 30.882750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876770, 28.533239, 30.694134>,  <44.363449, 28.413429, 31.309755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876770, 28.533239, 30.694134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241116, 28.657099, 30.584988>,  <44.459721, 28.731415, 30.519501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241116, 28.657099, 30.584988>,  <43.876770, 28.533239, 30.694134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241116, 28.657099, 30.584988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088324, -0.499572, -0.861758,
		-0.403155, 0.809040, -0.427691,
		0.910859, 0.309647, -0.272863,
		44.514374, 28.749992, 30.503128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814499, 28.824718, 30.019056>,  <43.876770, 28.533239, 30.694134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814499, 28.824718, 30.019056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187462, 28.683298, 30.049040>,  <44.411240, 28.598446, 30.067030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187462, 28.683298, 30.049040>,  <43.814499, 28.824718, 30.019056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187462, 28.683298, 30.049040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115663, -0.488404, -0.864918,
		0.342403, 0.797786, -0.496284,
		0.932407, -0.353553, 0.074956,
		44.467182, 28.577232, 30.071527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.497936, 37.083374, 41.204037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208683, 37.359039, 41.185558>,  <39.035130, 37.524437, 41.174469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208683, 37.359039, 41.185558>,  <39.497936, 37.083374, 41.204037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208683, 37.359039, 41.185558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323157, -0.396685, -0.859192,
		-0.610446, -0.606383, 0.509563,
		-0.723135, 0.689159, -0.046198,
		38.991741, 37.565788, 41.171700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077110, 36.786304, 40.716362>,  <39.497936, 37.083374, 41.204037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077110, 36.786304, 40.716362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914219, 37.150757, 40.741665>,  <38.816486, 37.369431, 40.756847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914219, 37.150757, 40.741665>,  <39.077110, 36.786304, 40.716362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914219, 37.150757, 40.741665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379818, -0.105959, -0.918973,
		-0.830605, -0.398256, 0.389214,
		-0.407227, 0.911134, 0.063255,
		38.792049, 37.424095, 40.760643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330894, 36.771778, 40.416325>,  <39.077110, 36.786304, 40.716362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330894, 36.771778, 40.416325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477074, 37.142601, 40.382824>,  <38.564781, 37.365093, 40.362724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477074, 37.142601, 40.382824>,  <38.330894, 36.771778, 40.416325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477074, 37.142601, 40.382824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492197, 0.116088, -0.862708,
		-0.790057, 0.356496, 0.498719,
		0.365448, 0.927056, -0.083750,
		38.586708, 37.420719, 40.357700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774750, 37.011139, 40.130024>,  <38.330894, 36.771778, 40.416325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774750, 37.011139, 40.130024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062691, 37.283657, 40.076885>,  <38.235455, 37.447166, 40.045002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062691, 37.283657, 40.076885>,  <37.774750, 37.011139, 40.130024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062691, 37.283657, 40.076885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364375, 0.208005, -0.907725,
		-0.590794, 0.701837, 0.397979,
		0.719857, 0.681292, -0.132844,
		38.278648, 37.488045, 40.037033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440842, 37.676636, 39.799599>,  <37.774750, 37.011139, 40.130024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440842, 37.676636, 39.799599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830841, 37.661007, 39.712105>,  <38.064842, 37.651630, 39.659607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830841, 37.661007, 39.712105>,  <37.440842, 37.676636, 39.799599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830841, 37.661007, 39.712105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196952, 0.303790, -0.932160,
		0.102868, 0.951938, 0.288501,
		0.975002, -0.039068, -0.218737,
		38.123341, 37.649288, 39.646484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573730, 38.219296, 39.403862>,  <37.440842, 37.676636, 39.799599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573730, 38.219296, 39.403862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860844, 37.954918, 39.316280>,  <38.033112, 37.796291, 39.263733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860844, 37.954918, 39.316280>,  <37.573730, 38.219296, 39.403862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860844, 37.954918, 39.316280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114361, 0.198283, -0.973450,
		0.686813, 0.723764, 0.066737,
		0.717781, -0.660946, -0.218954,
		38.076180, 37.756634, 39.250595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700138, 38.417633, 38.687691>,  <37.573730, 38.219296, 39.403862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700138, 38.417633, 38.687691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955055, 38.113621, 38.738625>,  <38.108006, 37.931213, 38.769184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955055, 38.113621, 38.738625>,  <37.700138, 38.417633, 38.687691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955055, 38.113621, 38.738625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003537, -0.162349, -0.986727,
		0.770614, 0.629284, -0.100776,
		0.637292, -0.760030, 0.127334,
		38.146244, 37.885612, 38.776825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233795, 38.591167, 38.204075>,  <37.700138, 38.417633, 38.687691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233795, 38.591167, 38.204075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262676, 38.199150, 38.278160>,  <38.280003, 37.963940, 38.322613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262676, 38.199150, 38.278160>,  <38.233795, 38.591167, 38.204075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262676, 38.199150, 38.278160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051225, -0.189100, -0.980621,
		0.996074, 0.061312, -0.063856,
		0.072199, -0.980042, 0.185217,
		38.284336, 37.905136, 38.333725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658192, 38.245148, 37.777996>,  <38.233795, 38.591167, 38.204075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658192, 38.245148, 37.777996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428020, 37.936008, 37.885021>,  <38.289917, 37.750526, 37.949234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428020, 37.936008, 37.885021>,  <38.658192, 38.245148, 37.777996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428020, 37.936008, 37.885021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050716, -0.360238, -0.931481,
		0.816277, -0.522432, 0.246488,
		-0.575430, -0.772847, 0.267558,
		38.255390, 37.704155, 37.965290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882462, 37.582775, 37.438904>,  <38.658192, 38.245148, 37.777996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882462, 37.582775, 37.438904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505135, 37.525398, 37.558617>,  <38.278736, 37.490971, 37.630444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505135, 37.525398, 37.558617>,  <38.882462, 37.582775, 37.438904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505135, 37.525398, 37.558617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218631, -0.409871, -0.885554,
		0.249697, -0.900794, 0.355278,
		-0.943319, -0.143445, 0.299285,
		38.222137, 37.482365, 37.648403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631184, 36.883732, 37.198345>,  <38.882462, 37.582775, 37.438904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631184, 36.883732, 37.198345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326298, 37.140537, 37.231422>,  <38.143364, 37.294621, 37.251266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326298, 37.140537, 37.231422>,  <38.631184, 36.883732, 37.198345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326298, 37.140537, 37.231422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363036, -0.318213, -0.875754,
		-0.535935, -0.697535, 0.475623,
		-0.762219, 0.642016, 0.082689,
		38.097633, 37.333141, 37.256229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148010, 36.640827, 37.735928>,  <38.631184, 36.883732, 37.198345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148010, 36.640827, 37.735928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337265, 36.309845, 37.856899>,  <39.450817, 36.111256, 37.929482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337265, 36.309845, 37.856899>,  <39.148010, 36.640827, 37.735928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337265, 36.309845, 37.856899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398215, -0.507076, -0.764395,
		0.785854, 0.241233, -0.569421,
		0.473137, -0.827454, 0.302425,
		39.479206, 36.061607, 37.947628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549911, 36.455063, 37.229252>,  <39.148010, 36.640827, 37.735928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549911, 36.455063, 37.229252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489735, 36.118229, 37.436428>,  <39.453629, 35.916130, 37.560734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489735, 36.118229, 37.436428>,  <39.549911, 36.455063, 37.229252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489735, 36.118229, 37.436428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042664, -0.517885, -0.854386,
		0.987698, -0.150632, 0.041985,
		-0.150441, -0.842084, 0.517941,
		39.444603, 35.865604, 37.591812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995911, 35.918095, 36.890594>,  <39.549911, 36.455063, 37.229252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995911, 35.918095, 36.890594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744690, 35.672100, 37.081318>,  <39.593956, 35.524502, 37.195751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744690, 35.672100, 37.081318>,  <39.995911, 35.918095, 36.890594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744690, 35.672100, 37.081318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107735, -0.538105, -0.835964,
		0.770679, -0.576396, 0.271701,
		-0.628051, -0.614988, 0.476804,
		39.556274, 35.487602, 37.224358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168392, 35.478916, 36.324345>,  <39.995911, 35.918095, 36.890594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168392, 35.478916, 36.324345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312866, 35.120068, 36.222584>,  <40.399551, 34.904758, 36.161530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312866, 35.120068, 36.222584>,  <40.168392, 35.478916, 36.324345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312866, 35.120068, 36.222584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417300, -0.399474, 0.816260,
		-0.833911, -0.188660, -0.518653,
		0.361184, -0.897122, -0.254398,
		40.421223, 34.850929, 36.146263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632591, 35.110298, 36.318451>,  <40.168392, 35.478916, 36.324345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632591, 35.110298, 36.318451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933559, 34.857056, 36.391167>,  <40.114140, 34.705109, 36.434795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933559, 34.857056, 36.391167>,  <39.632591, 35.110298, 36.318451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933559, 34.857056, 36.391167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518375, -0.398861, 0.756437,
		-0.406426, -0.663365, -0.628303,
		0.752400, -0.633132, 0.181764,
		40.159283, 34.667126, 36.445705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297260, 34.583416, 36.269009>,  <39.632591, 35.110298, 36.318451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297260, 34.583416, 36.269009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623528, 34.500340, 36.484993>,  <39.819286, 34.450493, 36.614582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623528, 34.500340, 36.484993>,  <39.297260, 34.583416, 36.269009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623528, 34.500340, 36.484993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576919, -0.361510, 0.732445,
		0.043076, -0.908941, -0.414694,
		0.815665, -0.207693, 0.539958,
		39.868229, 34.438030, 36.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240715, 33.875313, 36.577629>,  <39.297260, 34.583416, 36.269009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240715, 33.875313, 36.577629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517059, 34.040203, 36.815208>,  <39.682865, 34.139137, 36.957756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517059, 34.040203, 36.815208>,  <39.240715, 33.875313, 36.577629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517059, 34.040203, 36.815208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472788, -0.363933, 0.802512,
		0.546972, -0.835240, -0.056534,
		0.690864, 0.412223, 0.593952,
		39.724319, 34.163872, 36.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235043, 33.419762, 37.155350>,  <39.240715, 33.875313, 36.577629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235043, 33.419762, 37.155350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420963, 33.753304, 37.274437>,  <39.532516, 33.953430, 37.345890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420963, 33.753304, 37.274437>,  <39.235043, 33.419762, 37.155350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420963, 33.753304, 37.274437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211558, -0.221920, 0.951837,
		0.859767, -0.505404, 0.073259,
		0.464805, 0.833857, 0.297722,
		39.560406, 34.003460, 37.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631374, 33.137947, 37.682140>,  <39.235043, 33.419762, 37.155350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631374, 33.137947, 37.682140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601543, 33.526901, 37.770603>,  <39.583645, 33.760273, 37.823681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601543, 33.526901, 37.770603>,  <39.631374, 33.137947, 37.682140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601543, 33.526901, 37.770603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332510, -0.233328, 0.913781,
		0.940146, -0.005385, 0.340729,
		-0.074581, 0.972383, 0.221153,
		39.579170, 33.818615, 37.836948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052071, 33.315800, 38.309715>,  <39.631374, 33.137947, 37.682140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052071, 33.315800, 38.309715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785419, 33.613304, 38.290035>,  <39.625427, 33.791809, 38.278229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785419, 33.613304, 38.290035>,  <40.052071, 33.315800, 38.309715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785419, 33.613304, 38.290035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210448, -0.124479, 0.969648,
		0.715065, 0.656749, 0.239505,
		-0.666629, 0.743764, -0.049201,
		39.585430, 33.836433, 38.275276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199917, 33.696312, 38.814411>,  <40.052071, 33.315800, 38.309715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199917, 33.696312, 38.814411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825142, 33.811115, 38.734631>,  <39.600277, 33.879997, 38.686760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825142, 33.811115, 38.734631>,  <40.199917, 33.696312, 38.814411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825142, 33.811115, 38.734631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179017, 0.096060, 0.979145,
		0.300179, 0.953101, -0.038623,
		-0.936934, 0.287005, -0.199456,
		39.544060, 33.897217, 38.674793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007969, 34.290886, 39.237324>,  <40.199917, 33.696312, 38.814411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007969, 34.290886, 39.237324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643219, 34.168228, 39.128181>,  <39.424370, 34.094635, 39.062695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643219, 34.168228, 39.128181>,  <40.007969, 34.290886, 39.237324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643219, 34.168228, 39.128181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301665, 0.049873, 0.952109,
		-0.278346, 0.950518, -0.137981,
		-0.911878, -0.306640, -0.272856,
		39.369656, 34.076237, 39.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546612, 34.777943, 39.428734>,  <40.007969, 34.290886, 39.237324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546612, 34.777943, 39.428734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317410, 34.450741, 39.408596>,  <39.179890, 34.254421, 39.396511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317410, 34.450741, 39.408596>,  <39.546612, 34.777943, 39.428734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317410, 34.450741, 39.408596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316155, 0.163949, 0.934434,
		-0.756116, 0.551354, -0.352559,
		-0.573006, -0.818003, -0.050349,
		39.145508, 34.205341, 39.393490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123009, 35.002728, 39.971489>,  <39.546612, 34.777943, 39.428734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123009, 35.002728, 39.971489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011860, 34.623909, 39.907120>,  <38.945171, 34.396618, 39.868500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011860, 34.623909, 39.907120>,  <39.123009, 35.002728, 39.971489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011860, 34.623909, 39.907120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164039, -0.118276, 0.979337,
		-0.946508, 0.298527, -0.122487,
		-0.277872, -0.947044, -0.160920,
		38.928497, 34.339794, 39.858845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483948, 34.940117, 40.243996>,  <39.123009, 35.002728, 39.971489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483948, 34.940117, 40.243996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620872, 34.566040, 40.207676>,  <38.703026, 34.341595, 40.185883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620872, 34.566040, 40.207676>,  <38.483948, 34.940117, 40.243996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620872, 34.566040, 40.207676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028634, -0.086208, 0.995865,
		-0.939151, -0.343494, -0.002731,
		0.342309, -0.935190, -0.090798,
		38.723564, 34.285484, 40.180435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112137, 34.574013, 40.635357>,  <38.483948, 34.940117, 40.243996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112137, 34.574013, 40.635357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434639, 34.338142, 40.616440>,  <38.628139, 34.196621, 40.605087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434639, 34.338142, 40.616440>,  <38.112137, 34.574013, 40.635357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434639, 34.338142, 40.616440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100855, 0.058239, 0.993195,
		-0.582907, -0.805539, 0.106427,
		0.806255, -0.589674, -0.047295,
		38.676517, 34.161240, 40.602253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974201, 34.117779, 41.031338>,  <38.112137, 34.574013, 40.635357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974201, 34.117779, 41.031338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373760, 34.131416, 41.018387>,  <38.613495, 34.139599, 41.010616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373760, 34.131416, 41.018387>,  <37.974201, 34.117779, 41.031338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373760, 34.131416, 41.018387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033025, -0.018698, 0.999280,
		0.033468, -0.999243, -0.019803,
		0.998894, 0.034098, -0.032374,
		38.673428, 34.141647, 41.008675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846718, 33.329052, 40.934868>,  <37.974201, 34.117779, 41.031338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846718, 33.329052, 40.934868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588326, 33.035759, 41.019798>,  <37.433292, 32.859783, 41.070755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588326, 33.035759, 41.019798>,  <37.846718, 33.329052, 40.934868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588326, 33.035759, 41.019798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261015, -0.049216, -0.964079,
		0.717346, -0.678192, -0.159593,
		-0.645977, -0.733234, 0.212323,
		37.394531, 32.815788, 41.083496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870041, 32.988945, 40.371216>,  <37.846718, 33.329052, 40.934868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870041, 32.988945, 40.371216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525539, 32.886009, 40.546497>,  <37.318840, 32.824245, 40.651665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525539, 32.886009, 40.546497>,  <37.870041, 32.988945, 40.371216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525539, 32.886009, 40.546497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457144, 0.015715, -0.889254,
		0.221956, -0.966193, -0.131177,
		-0.861252, -0.257342, 0.438201,
		37.267162, 32.808807, 40.677959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571510, 32.424332, 39.931175>,  <37.870041, 32.988945, 40.371216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571510, 32.424332, 39.931175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268944, 32.575233, 40.144909>,  <37.087402, 32.665775, 40.273148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268944, 32.575233, 40.144909>,  <37.571510, 32.424332, 39.931175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268944, 32.575233, 40.144909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568463, 0.024926, -0.822331,
		-0.323552, -0.925772, 0.195604,
		-0.756415, 0.377260, 0.534332,
		37.042019, 32.688412, 40.305210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872494, 32.207623, 39.638348>,  <37.571510, 32.424332, 39.931175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872494, 32.207623, 39.638348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792164, 32.523010, 39.870892>,  <36.743965, 32.712242, 40.010418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792164, 32.523010, 39.870892>,  <36.872494, 32.207623, 39.638348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792164, 32.523010, 39.870892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542718, 0.404507, -0.736092,
		-0.815553, -0.463339, 0.346684,
		-0.200824, 0.788473, 0.581360,
		36.731918, 32.759552, 40.045300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185211, 32.265125, 39.480835>,  <36.872494, 32.207623, 39.638348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185211, 32.265125, 39.480835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295513, 32.611423, 39.647903>,  <36.361694, 32.819202, 39.748146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295513, 32.611423, 39.647903>,  <36.185211, 32.265125, 39.480835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295513, 32.611423, 39.647903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573111, 0.496921, -0.651624,
		-0.771688, -0.059685, 0.633194,
		0.275755, 0.865741, 0.417674,
		36.378239, 32.871147, 39.773205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543747, 32.541412, 39.670425>,  <36.185211, 32.265125, 39.480835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543747, 32.541412, 39.670425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827335, 32.811813, 39.590054>,  <35.997490, 32.974056, 39.541832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827335, 32.811813, 39.590054>,  <35.543747, 32.541412, 39.670425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827335, 32.811813, 39.590054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617093, 0.456732, -0.640775,
		-0.341398, 0.578283, 0.740970,
		0.708974, 0.676006, -0.200926,
		36.040028, 33.014614, 39.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135609, 33.187637, 39.715878>,  <35.543747, 32.541412, 39.670425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135609, 33.187637, 39.715878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478050, 33.254368, 39.520218>,  <35.683514, 33.294407, 39.402824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478050, 33.254368, 39.520218>,  <35.135609, 33.187637, 39.715878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478050, 33.254368, 39.520218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513509, 0.381409, -0.768658,
		0.058335, 0.909229, 0.412189,
		0.856099, 0.166822, -0.489147,
		35.734879, 33.304413, 39.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088600, 33.931919, 39.631889>,  <35.135609, 33.187637, 39.715878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088600, 33.931919, 39.631889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334690, 33.809620, 39.341228>,  <35.482342, 33.736240, 39.166832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334690, 33.809620, 39.341228>,  <35.088600, 33.931919, 39.631889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334690, 33.809620, 39.341228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518308, 0.537647, -0.665050,
		0.594021, 0.785781, 0.172299,
		0.615220, -0.305750, -0.726651,
		35.519257, 33.717896, 39.123234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271515, 34.531727, 39.293831>,  <35.088600, 33.931919, 39.631889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271515, 34.531727, 39.293831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351700, 34.232395, 39.040909>,  <35.399811, 34.052795, 38.889156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351700, 34.232395, 39.040909>,  <35.271515, 34.531727, 39.293831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351700, 34.232395, 39.040909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567477, 0.437417, -0.697593,
		0.798613, 0.498663, -0.336974,
		0.200465, -0.748332, -0.632307,
		35.411839, 34.007896, 38.851215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347900, 34.905350, 38.650417>,  <35.271515, 34.531727, 39.293831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347900, 34.905350, 38.650417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264725, 34.525646, 38.556042>,  <35.214821, 34.297825, 38.499416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264725, 34.525646, 38.556042>,  <35.347900, 34.905350, 38.650417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264725, 34.525646, 38.556042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560024, 0.313304, -0.766951,
		0.801957, -0.027346, -0.596756,
		-0.207939, -0.949259, -0.235941,
		35.202343, 34.240868, 38.485260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459625, 34.793831, 37.968491>,  <35.347900, 34.905350, 38.650417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459625, 34.793831, 37.968491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227924, 34.472424, 38.023369>,  <35.088902, 34.279579, 38.056297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227924, 34.472424, 38.023369>,  <35.459625, 34.793831, 37.968491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227924, 34.472424, 38.023369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574820, 0.283313, -0.767669,
		0.577967, -0.523539, -0.625988,
		-0.579255, -0.803518, 0.137195,
		35.054150, 34.231369, 38.064526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261536, 34.452461, 37.253925>,  <35.459625, 34.793831, 37.968491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261536, 34.452461, 37.253925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990826, 34.382359, 37.539936>,  <34.828400, 34.340298, 37.711540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990826, 34.382359, 37.539936>,  <35.261536, 34.452461, 37.253925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990826, 34.382359, 37.539936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735630, 0.123157, -0.666094,
		0.028679, -0.976789, -0.212277,
		-0.676777, -0.175260, 0.715023,
		34.787792, 34.329781, 37.754444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.719898, 32.097473, 44.455196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336815, 32.184696, 44.530289>,  <38.106964, 32.237030, 44.575344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336815, 32.184696, 44.530289>,  <38.719898, 32.097473, 44.455196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336815, 32.184696, 44.530289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249839, -0.306575, -0.918473,
		-0.142726, -0.926533, 0.348089,
		-0.957711, 0.218056, 0.187728,
		38.049503, 32.250114, 44.586605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298561, 31.471107, 44.375511>,  <38.719898, 32.097473, 44.455196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298561, 31.471107, 44.375511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072666, 31.792496, 44.300137>,  <37.937130, 31.985329, 44.254910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072666, 31.792496, 44.300137>,  <38.298561, 31.471107, 44.375511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072666, 31.792496, 44.300137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189009, -0.348189, -0.918172,
		-0.803337, -0.482907, 0.348497,
		-0.564734, 0.803471, -0.188440,
		37.903244, 32.033539, 44.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772469, 31.172197, 43.957249>,  <38.298561, 31.471107, 44.375511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772469, 31.172197, 43.957249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755001, 31.568823, 43.908428>,  <37.744522, 31.806797, 43.879135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755001, 31.568823, 43.908428>,  <37.772469, 31.172197, 43.957249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755001, 31.568823, 43.908428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224001, -0.128779, -0.966043,
		-0.973610, -0.014846, 0.227735,
		-0.043669, 0.991562, -0.122055,
		37.741901, 31.866291, 43.871811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412693, 31.294371, 43.392513>,  <37.772469, 31.172197, 43.957249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412693, 31.294371, 43.392513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566360, 31.661905, 43.428631>,  <37.658562, 31.882425, 43.450302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566360, 31.661905, 43.428631>,  <37.412693, 31.294371, 43.392513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566360, 31.661905, 43.428631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260172, 0.201577, -0.944286,
		-0.885846, 0.339273, 0.316496,
		0.384169, 0.918836, 0.090297,
		37.681610, 31.937555, 43.455719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947895, 31.771955, 42.999844>,  <37.412693, 31.294371, 43.392513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947895, 31.771955, 42.999844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269825, 32.008232, 43.022953>,  <37.462982, 32.149998, 43.036819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269825, 32.008232, 43.022953>,  <36.947895, 31.771955, 42.999844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269825, 32.008232, 43.022953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123167, 0.261454, -0.957325,
		-0.580588, 0.763366, 0.283179,
		0.804828, 0.590690, 0.057775,
		37.511272, 32.185440, 43.040287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775208, 32.412098, 42.790543>,  <36.947895, 31.771955, 42.999844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775208, 32.412098, 42.790543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169991, 32.417042, 42.726349>,  <37.406860, 32.420010, 42.687832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169991, 32.417042, 42.726349>,  <36.775208, 32.412098, 42.790543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169991, 32.417042, 42.726349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158932, 0.232795, -0.959451,
		0.025498, 0.972447, 0.231725,
		0.986960, 0.012364, -0.160489,
		37.466080, 32.420750, 42.678204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900963, 33.007301, 42.549404>,  <36.775208, 32.412098, 42.790543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900963, 33.007301, 42.549404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229862, 32.804379, 42.446220>,  <37.427200, 32.682625, 42.384312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229862, 32.804379, 42.446220>,  <36.900963, 33.007301, 42.549404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229862, 32.804379, 42.446220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111361, 0.301081, -0.947074,
		0.558125, 0.807458, 0.191070,
		0.822250, -0.507308, -0.257960,
		37.476536, 32.652187, 42.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319267, 33.487965, 42.208687>,  <36.900963, 33.007301, 42.549404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319267, 33.487965, 42.208687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418560, 33.125256, 42.072372>,  <37.478134, 32.907631, 41.990582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418560, 33.125256, 42.072372>,  <37.319267, 33.487965, 42.208687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418560, 33.125256, 42.072372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109251, 0.323349, -0.939952,
		0.962521, 0.270555, -0.018801,
		0.248230, -0.906777, -0.340789,
		37.493031, 32.853222, 41.970135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570248, 33.579865, 41.532253>,  <37.319267, 33.487965, 42.208687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570248, 33.579865, 41.532253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517136, 33.183460, 41.525772>,  <37.485268, 32.945618, 41.521885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517136, 33.183460, 41.525772>,  <37.570248, 33.579865, 41.532253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517136, 33.183460, 41.525772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301043, 0.055897, -0.951971,
		0.944321, -0.121523, -0.305760,
		-0.132778, -0.991014, -0.016201,
		37.477303, 32.886158, 41.520912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247513, 33.692585, 41.619930>,  <37.570248, 33.579865, 41.532253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247513, 33.692585, 41.619930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558556, 33.927036, 41.528900>,  <38.745182, 34.067707, 41.474281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558556, 33.927036, 41.528900>,  <38.247513, 33.692585, 41.619930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558556, 33.927036, 41.528900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261238, 0.028050, 0.964867,
		0.571917, -0.809734, -0.131307,
		0.777603, 0.586126, -0.227576,
		38.791836, 34.102875, 41.460629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812954, 33.317947, 41.844048>,  <38.247513, 33.692585, 41.619930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812954, 33.317947, 41.844048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936790, 33.697289, 41.816391>,  <39.011093, 33.924892, 41.799797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936790, 33.697289, 41.816391>,  <38.812954, 33.317947, 41.844048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936790, 33.697289, 41.816391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518856, -0.107551, 0.848069,
		0.796833, -0.298427, -0.525355,
		0.309590, 0.948353, -0.069141,
		39.029667, 33.981796, 41.795650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487904, 33.364731, 42.114124>,  <38.812954, 33.317947, 41.844048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487904, 33.364731, 42.114124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451942, 33.763054, 42.120945>,  <39.430367, 34.002048, 42.125038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451942, 33.763054, 42.120945>,  <39.487904, 33.364731, 42.114124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451942, 33.763054, 42.120945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570331, 0.037442, 0.820561,
		0.816481, 0.083492, -0.571304,
		-0.089901, 0.995805, 0.017047,
		39.424973, 34.061794, 42.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200890, 33.659660, 42.203705>,  <39.487904, 33.364731, 42.114124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200890, 33.659660, 42.203705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939034, 33.939552, 42.318123>,  <39.781921, 34.107487, 42.386772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939034, 33.939552, 42.318123>,  <40.200890, 33.659660, 42.203705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939034, 33.939552, 42.318123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551266, 0.182983, 0.814016,
		0.517252, 0.690574, -0.505527,
		-0.654641, 0.699732, 0.286042,
		39.742641, 34.149471, 42.403934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498035, 34.369835, 42.315845>,  <40.200890, 33.659660, 42.203705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498035, 34.369835, 42.315845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174747, 34.367458, 42.551384>,  <39.980774, 34.366032, 42.692707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174747, 34.367458, 42.551384>,  <40.498035, 34.369835, 42.315845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174747, 34.367458, 42.551384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572638, 0.225286, 0.788246,
		-0.137341, 0.974275, -0.178680,
		-0.808222, -0.005939, 0.588847,
		39.932281, 34.365677, 42.728039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622562, 34.784756, 42.798615>,  <40.498035, 34.369835, 42.315845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622562, 34.784756, 42.798615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.328644, 34.587494, 42.984890>,  <40.152290, 34.469135, 43.096653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.328644, 34.587494, 42.984890>,  <40.622562, 34.784756, 42.798615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328644, 34.587494, 42.984890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551438, -0.034572, 0.833499,
		-0.394947, 0.869253, 0.297349,
		-0.734801, -0.493158, 0.465685,
		40.108204, 34.439545, 43.124596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492020, 35.202927, 43.381294>,  <40.622562, 34.784756, 42.798615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492020, 35.202927, 43.381294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320049, 34.846348, 43.438549>,  <40.216866, 34.632401, 43.472904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320049, 34.846348, 43.438549>,  <40.492020, 35.202927, 43.381294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320049, 34.846348, 43.438549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210758, 0.055070, 0.975986,
		-0.877919, 0.449774, 0.164203,
		-0.429930, -0.891443, 0.143140,
		40.191071, 34.578915, 43.481491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954372, 35.178848, 43.991474>,  <40.492020, 35.202927, 43.381294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954372, 35.178848, 43.991474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047699, 34.791481, 43.956306>,  <40.103695, 34.559059, 43.935207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047699, 34.791481, 43.956306>,  <39.954372, 35.178848, 43.991474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047699, 34.791481, 43.956306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121099, -0.060773, 0.990778,
		-0.964830, -0.241813, 0.103095,
		0.233317, -0.968418, -0.087919,
		40.117695, 34.500957, 43.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640480, 34.997562, 44.556419>,  <39.954372, 35.178848, 43.991474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640480, 34.997562, 44.556419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876938, 34.691513, 44.454327>,  <40.018810, 34.507885, 44.393070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876938, 34.691513, 44.454327>,  <39.640480, 34.997562, 44.556419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876938, 34.691513, 44.454327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099612, -0.244769, 0.964451,
		-0.800394, -0.595550, -0.068477,
		0.591140, -0.765120, -0.255236,
		40.054279, 34.461979, 44.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391758, 34.417355, 44.986420>,  <39.640480, 34.997562, 44.556419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391758, 34.417355, 44.986420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762287, 34.303253, 44.887985>,  <39.984604, 34.234791, 44.828922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762287, 34.303253, 44.887985>,  <39.391758, 34.417355, 44.986420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762287, 34.303253, 44.887985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165856, -0.277729, 0.946234,
		-0.338265, -0.917331, -0.209954,
		0.926320, -0.285256, -0.246091,
		40.040184, 34.217678, 44.814159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500729, 33.767963, 45.360798>,  <39.391758, 34.417355, 44.986420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500729, 33.767963, 45.360798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840637, 33.951199, 45.256458>,  <40.044582, 34.061142, 45.193855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840637, 33.951199, 45.256458>,  <39.500729, 33.767963, 45.360798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840637, 33.951199, 45.256458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374699, -0.176824, 0.910128,
		0.370797, -0.871140, -0.321906,
		0.849770, 0.458091, -0.260849,
		40.095570, 34.088627, 45.178204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978561, 33.390694, 45.702045>,  <39.500729, 33.767963, 45.360798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978561, 33.390694, 45.702045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.177742, 33.724953, 45.609314>,  <40.297249, 33.925507, 45.553673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.177742, 33.724953, 45.609314>,  <39.978561, 33.390694, 45.702045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177742, 33.724953, 45.609314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321313, 0.070523, 0.944344,
		0.805484, -0.544725, -0.233387,
		0.497948, 0.835644, -0.231832,
		40.327126, 33.975647, 45.539764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671658, 33.265705, 45.963940>,  <39.978561, 33.390694, 45.702045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671658, 33.265705, 45.963940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670998, 33.661442, 45.905704>,  <40.670601, 33.898884, 45.870762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670998, 33.661442, 45.905704>,  <40.671658, 33.265705, 45.963940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670998, 33.661442, 45.905704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510323, 0.126038, 0.850697,
		0.859981, -0.072892, -0.505093,
		-0.001652, 0.989344, -0.145589,
		40.670502, 33.958244, 45.862026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445477, 33.517422, 45.996262>,  <40.671658, 33.265705, 45.963940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445477, 33.517422, 45.996262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.216442, 33.836056, 46.073822>,  <41.079021, 34.027237, 46.120358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.216442, 33.836056, 46.073822>,  <41.445477, 33.517422, 45.996262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216442, 33.836056, 46.073822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554070, 0.201658, 0.807676,
		0.604281, 0.569898, -0.556831,
		-0.572583, 0.796586, 0.193905,
		41.044666, 34.075031, 46.131992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.244179, 36.734161, 48.544525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547009, 36.570473, 48.340809>,  <35.728706, 36.472260, 48.218578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547009, 36.570473, 48.340809>,  <35.244179, 36.734161, 48.544525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547009, 36.570473, 48.340809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336182, 0.424394, -0.840756,
		0.560197, 0.807728, 0.183723,
		0.757074, -0.409225, -0.509288,
		35.774132, 36.447704, 48.188023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405781, 37.191864, 47.990826>,  <35.244179, 36.734161, 48.544525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405781, 37.191864, 47.990826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596970, 36.862465, 47.868584>,  <35.711685, 36.664825, 47.795238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596970, 36.862465, 47.868584>,  <35.405781, 37.191864, 47.990826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596970, 36.862465, 47.868584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351760, 0.139347, -0.925660,
		0.804862, 0.549943, -0.223068,
		0.477977, -0.823495, -0.305604,
		35.740364, 36.615417, 47.776901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827290, 37.402519, 47.407314>,  <35.405781, 37.191864, 47.990826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827290, 37.402519, 47.407314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.726345, 37.015770, 47.391956>,  <35.665779, 36.783722, 47.382740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.726345, 37.015770, 47.391956>,  <35.827290, 37.402519, 47.407314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726345, 37.015770, 47.391956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313896, 0.119336, -0.941928,
		0.915304, -0.225656, -0.333613,
		-0.252364, -0.966870, -0.038396,
		35.650635, 36.725708, 47.380436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101700, 37.180565, 46.770222>,  <35.827290, 37.402519, 47.407314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101700, 37.180565, 46.770222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 36.916256, 46.863403>,  <35.645046, 36.757671, 46.919312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 36.916256, 46.863403>,  <36.101700, 37.180565, 46.770222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816292, 36.916256, 46.863403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385373, 0.092463, -0.918117,
		0.585128, -0.744869, -0.320618,
		-0.713522, -0.660773, 0.232950,
		35.602234, 36.718025, 46.933289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212418, 36.580238, 46.376038>,  <36.101700, 37.180565, 46.770222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212418, 36.580238, 46.376038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830799, 36.563683, 46.494755>,  <35.601830, 36.553749, 46.565983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830799, 36.563683, 46.494755>,  <36.212418, 36.580238, 46.376038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830799, 36.563683, 46.494755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287813, -0.149203, -0.945993,
		0.083441, -0.987940, 0.130433,
		-0.954045, -0.041394, 0.296791,
		35.544586, 36.551266, 46.583794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866196, 36.081554, 45.959461>,  <36.212418, 36.580238, 46.376038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866196, 36.081554, 45.959461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.560860, 36.310322, 46.079617>,  <35.377659, 36.447582, 46.151711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.560860, 36.310322, 46.079617>,  <35.866196, 36.081554, 45.959461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560860, 36.310322, 46.079617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379935, -0.021383, -0.924766,
		-0.522464, -0.820035, 0.233613,
		-0.763335, 0.571914, 0.300388,
		35.331860, 36.481895, 46.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310970, 35.871601, 45.557571>,  <35.866196, 36.081554, 45.959461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310970, 35.871601, 45.557571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177269, 36.228954, 45.677662>,  <35.097050, 36.443367, 45.749718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177269, 36.228954, 45.677662>,  <35.310970, 35.871601, 45.557571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177269, 36.228954, 45.677662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410914, 0.148541, -0.899492,
		-0.848189, -0.424027, 0.317454,
		-0.334254, 0.893385, 0.300229,
		35.076992, 36.496971, 45.767731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610050, 35.946278, 45.300896>,  <35.310970, 35.871601, 45.557571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610050, 35.946278, 45.300896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720356, 36.323303, 45.376282>,  <34.786541, 36.549519, 45.421513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720356, 36.323303, 45.376282>,  <34.610050, 35.946278, 45.300896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720356, 36.323303, 45.376282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298681, 0.270386, -0.915249,
		-0.913643, 0.196103, 0.356090,
		0.275765, 0.942568, 0.188464,
		34.803085, 36.606075, 45.432819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049660, 36.235985, 45.003143>,  <34.610050, 35.946278, 45.300896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049660, 36.235985, 45.003143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328648, 36.517189, 45.058731>,  <34.496040, 36.685913, 45.092083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328648, 36.517189, 45.058731>,  <34.049660, 36.235985, 45.003143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328648, 36.517189, 45.058731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259323, 0.428386, -0.865585,
		-0.668047, 0.567681, 0.481093,
		0.697470, 0.703010, 0.138969,
		34.537888, 36.728092, 45.100422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724972, 36.902061, 44.958042>,  <34.049660, 36.235985, 45.003143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724972, 36.902061, 44.958042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115620, 36.967171, 44.901878>,  <34.350010, 37.006237, 44.868179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115620, 36.967171, 44.901878>,  <33.724972, 36.902061, 44.958042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115620, 36.967171, 44.901878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200302, 0.451939, -0.869270,
		-0.078034, 0.877073, 0.473977,
		0.976622, 0.162771, -0.140413,
		34.408607, 37.016003, 44.859756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772442, 37.550591, 44.673702>,  <33.724972, 36.902061, 44.958042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772442, 37.550591, 44.673702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121586, 37.389809, 44.563030>,  <34.331074, 37.293339, 44.496628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121586, 37.389809, 44.563030>,  <33.772442, 37.550591, 44.673702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121586, 37.389809, 44.563030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132761, 0.350003, -0.927293,
		0.469565, 0.846129, 0.252140,
		0.872859, -0.401950, -0.276682,
		34.383442, 37.269222, 44.480026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927219, 37.940430, 44.103012>,  <33.772442, 37.550591, 44.673702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927219, 37.940430, 44.103012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192844, 37.645039, 44.056225>,  <34.352219, 37.467804, 44.028152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192844, 37.645039, 44.056225>,  <33.927219, 37.940430, 44.103012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192844, 37.645039, 44.056225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024661, 0.177991, -0.983723,
		0.747273, 0.650366, 0.136408,
		0.664059, -0.738474, -0.116970,
		34.392063, 37.423496, 44.021133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491631, 38.245399, 43.645363>,  <33.927219, 37.940430, 44.103012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491631, 38.245399, 43.645363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497410, 37.845802, 43.628365>,  <34.500877, 37.606045, 43.618164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497410, 37.845802, 43.628365>,  <34.491631, 38.245399, 43.645363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497410, 37.845802, 43.628365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106979, 0.040714, -0.993427,
		0.994156, 0.018897, -0.106283,
		0.014445, -0.998992, -0.042497,
		34.501743, 37.546104, 43.615616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971020, 38.179649, 43.128994>,  <34.491631, 38.245399, 43.645363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971020, 38.179649, 43.128994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752357, 37.845390, 43.150352>,  <34.621159, 37.644833, 43.163170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752357, 37.845390, 43.150352>,  <34.971020, 38.179649, 43.128994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752357, 37.845390, 43.150352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299240, 0.135398, -0.944523,
		0.782062, -0.532310, -0.324077,
		-0.546658, -0.835652, 0.053399,
		34.588360, 37.594696, 43.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621796, 37.883945, 42.907326>,  <34.971020, 38.179649, 43.128994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621796, 37.883945, 42.907326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746605, 38.213745, 42.718502>,  <35.821491, 38.411625, 42.605206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746605, 38.213745, 42.718502>,  <35.621796, 37.883945, 42.907326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746605, 38.213745, 42.718502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336722, 0.368646, 0.866440,
		0.888402, -0.429305, -0.162600,
		0.312025, 0.824499, -0.472062,
		35.840214, 38.461094, 42.576885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317844, 37.938416, 43.087307>,  <35.621796, 37.883945, 42.907326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317844, 37.938416, 43.087307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188354, 38.302586, 42.984291>,  <36.110661, 38.521088, 42.922482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188354, 38.302586, 42.984291>,  <36.317844, 37.938416, 43.087307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188354, 38.302586, 42.984291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469528, 0.390899, 0.791670,
		0.821429, 0.135362, -0.554015,
		-0.323725, 0.910426, -0.257539,
		36.091236, 38.575714, 42.907028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843357, 38.214260, 43.066849>,  <36.317844, 37.938416, 43.087307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843357, 38.214260, 43.066849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568935, 38.500561, 43.119041>,  <36.404282, 38.672340, 43.150356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568935, 38.500561, 43.119041>,  <36.843357, 38.214260, 43.066849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568935, 38.500561, 43.119041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472419, 0.301861, 0.828071,
		0.553308, 0.629743, -0.545228,
		-0.686055, 0.715754, 0.130480,
		36.363117, 38.715286, 43.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218372, 38.802162, 43.326447>,  <36.843357, 38.214260, 43.066849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218372, 38.802162, 43.326447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832775, 38.853237, 43.419758>,  <36.601418, 38.883881, 43.475746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832775, 38.853237, 43.419758>,  <37.218372, 38.802162, 43.326447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832775, 38.853237, 43.419758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228583, -0.050510, 0.972213,
		0.135921, 0.990528, 0.019504,
		-0.963989, 0.127686, 0.233283,
		36.543579, 38.891544, 43.489742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278988, 39.224339, 43.805553>,  <37.218372, 38.802162, 43.326447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278988, 39.224339, 43.805553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906586, 39.083626, 43.844501>,  <36.683144, 38.999199, 43.867870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906586, 39.083626, 43.844501>,  <37.278988, 39.224339, 43.805553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906586, 39.083626, 43.844501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111126, -0.019066, 0.993623,
		-0.347685, 0.935887, 0.056844,
		-0.931003, -0.351785, 0.097372,
		36.627285, 38.978092, 43.873714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999275, 39.733597, 44.292835>,  <37.278988, 39.224339, 43.805553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999275, 39.733597, 44.292835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786678, 39.394909, 44.302467>,  <36.659119, 39.191696, 44.308247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786678, 39.394909, 44.302467>,  <36.999275, 39.733597, 44.292835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786678, 39.394909, 44.302467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145946, -0.063530, 0.987251,
		-0.834397, 0.528230, 0.157341,
		-0.531491, -0.846722, 0.024083,
		36.627232, 39.140892, 44.309692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504372, 39.805321, 44.792793>,  <36.999275, 39.733597, 44.292835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504372, 39.805321, 44.792793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567848, 39.412083, 44.756256>,  <36.605934, 39.176140, 44.734333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567848, 39.412083, 44.756256>,  <36.504372, 39.805321, 44.792793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567848, 39.412083, 44.756256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198346, -0.058885, 0.978362,
		-0.967200, -0.173376, 0.185648,
		0.158693, -0.983094, -0.091342,
		36.615456, 39.117153, 44.728855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121330, 39.499874, 45.324692>,  <36.504372, 39.805321, 44.792793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121330, 39.499874, 45.324692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354412, 39.191475, 45.221909>,  <36.494259, 39.006435, 45.160236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354412, 39.191475, 45.221909>,  <36.121330, 39.499874, 45.324692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354412, 39.191475, 45.221909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290047, -0.098070, 0.951975,
		-0.759167, -0.629246, 0.166479,
		0.582700, -0.770994, -0.256962,
		36.529221, 38.960178, 45.144821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122040, 38.955799, 45.932693>,  <36.121330, 39.499874, 45.324692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122040, 38.955799, 45.932693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448055, 38.852154, 45.725399>,  <36.643665, 38.789967, 45.601021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448055, 38.852154, 45.725399>,  <36.122040, 38.955799, 45.932693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448055, 38.852154, 45.725399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473544, -0.217488, 0.853496,
		-0.333863, -0.941041, -0.054559,
		0.815041, -0.259115, -0.518236,
		36.692566, 38.774422, 45.569927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271450, 38.180706, 46.101772>,  <36.122040, 38.955799, 45.932693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271450, 38.180706, 46.101772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606739, 38.353947, 45.969227>,  <36.807915, 38.457890, 45.889698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606739, 38.353947, 45.969227>,  <36.271450, 38.180706, 46.101772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606739, 38.353947, 45.969227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475413, -0.282723, 0.833097,
		0.267129, -0.855858, -0.442887,
		0.838227, 0.433099, -0.331363,
		36.858208, 38.483875, 45.869820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780346, 37.699261, 46.167385>,  <36.271450, 38.180706, 46.101772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780346, 37.699261, 46.167385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969891, 38.051304, 46.155647>,  <37.083618, 38.262531, 46.148605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969891, 38.051304, 46.155647>,  <36.780346, 37.699261, 46.167385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969891, 38.051304, 46.155647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585132, -0.289789, 0.757392,
		0.658082, -0.376075, -0.652300,
		0.473866, 0.880108, -0.029349,
		37.112049, 38.315338, 46.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500519, 37.568279, 46.214680>,  <36.780346, 37.699261, 46.167385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500519, 37.568279, 46.214680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.529617, 37.948963, 46.333984>,  <37.547077, 38.177372, 46.405567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.529617, 37.948963, 46.333984>,  <37.500519, 37.568279, 46.214680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529617, 37.948963, 46.333984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532667, -0.289902, 0.795124,
		0.843192, 0.101028, -0.528034,
		0.072748, 0.951709, 0.298257,
		37.551441, 38.234474, 46.423462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157215, 37.620804, 46.519672>,  <37.500519, 37.568279, 46.214680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157215, 37.620804, 46.519672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949642, 37.931183, 46.663124>,  <37.825100, 38.117409, 46.749195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949642, 37.931183, 46.663124>,  <38.157215, 37.620804, 46.519672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949642, 37.931183, 46.663124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418652, -0.135081, 0.898045,
		0.745278, 0.616167, -0.254753,
		-0.518933, 0.775946, 0.358632,
		37.793961, 38.163967, 46.770714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652927, 37.924709, 47.021095>,  <38.157215, 37.620804, 46.519672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652927, 37.924709, 47.021095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277180, 38.038113, 47.098251>,  <38.051731, 38.106155, 47.144543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277180, 38.038113, 47.098251>,  <38.652927, 37.924709, 47.021095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277180, 38.038113, 47.098251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190291, -0.036949, 0.981032,
		0.285261, 0.958257, -0.019241,
		-0.939370, 0.283511, 0.192888,
		37.995369, 38.123165, 47.156116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200127, 38.399426, 46.966297>,  <38.652927, 37.924709, 47.021095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200127, 38.399426, 46.966297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410995, 38.075951, 46.861904>,  <39.537518, 37.881866, 46.799271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410995, 38.075951, 46.861904>,  <39.200127, 38.399426, 46.966297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410995, 38.075951, 46.861904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267568, 0.133530, -0.954242,
		0.806535, 0.572877, -0.145987,
		0.527170, -0.808691, -0.260980,
		39.569145, 37.833344, 46.783611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684734, 38.604279, 46.442860>,  <39.200127, 38.399426, 46.966297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684734, 38.604279, 46.442860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629803, 38.209339, 46.411140>,  <39.596844, 37.972378, 46.392109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629803, 38.209339, 46.411140>,  <39.684734, 38.604279, 46.442860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629803, 38.209339, 46.411140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283602, 0.115897, -0.951913,
		0.949058, -0.108232, -0.295929,
		-0.137324, -0.987347, -0.079298,
		39.588604, 37.913136, 46.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964859, 38.570316, 45.826267>,  <39.684734, 38.604279, 46.442860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964859, 38.570316, 45.826267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809963, 38.204777, 45.875126>,  <39.717026, 37.985451, 45.904442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809963, 38.204777, 45.875126>,  <39.964859, 38.570316, 45.826267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809963, 38.204777, 45.875126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250401, -0.023263, -0.967863,
		0.887325, -0.405380, -0.219821,
		-0.387239, -0.913852, 0.122150,
		39.693790, 37.930622, 45.911770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325680, 37.887947, 45.561451>,  <39.964859, 38.570316, 45.826267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325680, 37.887947, 45.561451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932190, 37.816071, 45.561909>,  <39.696098, 37.772945, 45.562183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932190, 37.816071, 45.561909>,  <40.325680, 37.887947, 45.561451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932190, 37.816071, 45.561909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052395, -0.292921, -0.954700,
		0.171889, -0.939100, 0.297568,
		-0.983722, -0.179693, 0.001146,
		39.637074, 37.762161, 45.562252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238094, 37.374458, 44.961193>,  <40.325680, 37.887947, 45.561451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238094, 37.374458, 44.961193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862072, 37.483501, 45.043152>,  <39.636459, 37.548927, 45.092327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862072, 37.483501, 45.043152>,  <40.238094, 37.374458, 44.961193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862072, 37.483501, 45.043152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243758, -0.116951, -0.962759,
		-0.238496, -0.954990, 0.176391,
		-0.940054, 0.272611, 0.204895,
		39.580055, 37.565285, 45.104622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854782, 36.994770, 44.464298>,  <40.238094, 37.374458, 44.961193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854782, 36.994770, 44.464298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.624638, 37.295162, 44.593903>,  <39.486549, 37.475399, 44.671665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.624638, 37.295162, 44.593903>,  <39.854782, 36.994770, 44.464298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624638, 37.295162, 44.593903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333314, 0.146473, -0.931369,
		-0.746901, -0.643871, 0.166039,
		-0.575361, 0.750983, 0.324012,
		39.452030, 37.520458, 44.691105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166386, 36.917118, 44.188156>,  <39.854782, 36.994770, 44.464298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166386, 36.917118, 44.188156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202637, 37.306786, 44.270882>,  <39.224388, 37.540588, 44.320518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202637, 37.306786, 44.270882>,  <39.166386, 36.917118, 44.188156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202637, 37.306786, 44.270882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339956, 0.225460, -0.913016,
		-0.936065, 0.012434, 0.351609,
		0.090626, 0.974173, 0.206818,
		39.229824, 37.599037, 44.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505802, 37.300194, 43.989445>,  <39.166386, 36.917118, 44.188156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505802, 37.300194, 43.989445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832005, 37.531590, 43.982464>,  <39.027725, 37.670425, 43.978275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832005, 37.531590, 43.982464>,  <38.505802, 37.300194, 43.989445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832005, 37.531590, 43.982464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179190, 0.223708, -0.958043,
		-0.550310, 0.784417, 0.286094,
		0.815506, 0.578485, -0.017451,
		39.076656, 37.705135, 43.977230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246372, 37.948063, 43.767277>,  <38.505802, 37.300194, 43.989445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246372, 37.948063, 43.767277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631241, 37.912376, 43.664310>,  <38.862164, 37.890965, 43.602531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631241, 37.912376, 43.664310>,  <38.246372, 37.948063, 43.767277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631241, 37.912376, 43.664310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239439, 0.173827, -0.955224,
		0.129965, 0.980727, 0.145891,
		0.962174, -0.089213, -0.257416,
		38.919891, 37.885612, 43.587086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590881, 38.603413, 43.378838>,  <38.246372, 37.948063, 43.767277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590881, 38.603413, 43.378838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816010, 38.293602, 43.263367>,  <38.951088, 38.107716, 43.194084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816010, 38.293602, 43.263367>,  <38.590881, 38.603413, 43.378838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816010, 38.293602, 43.263367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065136, 0.389716, -0.918629,
		0.824006, 0.498223, 0.269791,
		0.562824, -0.774529, -0.288677,
		38.984856, 38.061245, 43.176765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975758, 38.871960, 42.762638>,  <38.590881, 38.603413, 43.378838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975758, 38.871960, 42.762638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.010063, 38.473518, 42.754452>,  <39.030647, 38.234451, 42.749538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.010063, 38.473518, 42.754452>,  <38.975758, 38.871960, 42.762638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010063, 38.473518, 42.754452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105980, 0.029547, -0.993929,
		0.990663, 0.083075, 0.108101,
		0.085765, -0.996105, -0.020467,
		39.035793, 38.174686, 42.748310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527042, 38.725494, 42.289112>,  <38.975758, 38.871960, 42.762638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527042, 38.725494, 42.289112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281620, 38.409748, 42.297665>,  <39.134369, 38.220299, 42.302795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281620, 38.409748, 42.297665>,  <39.527042, 38.725494, 42.289112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281620, 38.409748, 42.297665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129129, -0.127010, -0.983460,
		0.779024, -0.600643, 0.179857,
		-0.613552, -0.789365, 0.021383,
		39.097553, 38.172939, 42.304081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625900, 38.435490, 41.689869>,  <39.527042, 38.725494, 42.289112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625900, 38.435490, 41.689869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308228, 38.226471, 41.813950>,  <39.117626, 38.101059, 41.888397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308228, 38.226471, 41.813950>,  <39.625900, 38.435490, 41.689869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308228, 38.226471, 41.813950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065637, -0.433720, -0.898654,
		0.604130, -0.734052, 0.310152,
		-0.794178, -0.522546, 0.310204,
		39.069973, 38.069706, 41.907009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719120, 37.742229, 41.492455>,  <39.625900, 38.435490, 41.689869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719120, 37.742229, 41.492455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322048, 37.785828, 41.513264>,  <39.083805, 37.811985, 41.525749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322048, 37.785828, 41.513264>,  <39.719120, 37.742229, 41.492455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322048, 37.785828, 41.513264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095465, -0.444330, -0.890763,
		-0.073974, -0.889208, 0.451482,
		-0.992680, 0.108994, 0.052019,
		39.024242, 37.818527, 41.528870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.880903, 33.014084, 30.681263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589724, 32.774982, 30.546930>,  <30.415016, 32.631523, 30.466330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589724, 32.774982, 30.546930>,  <30.880903, 33.014084, 30.681263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589724, 32.774982, 30.546930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535219, 0.189279, 0.823234,
		-0.428524, 0.779015, -0.457714,
		-0.727947, -0.597753, -0.335833,
		30.371340, 32.595657, 30.446180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223417, 33.339672, 30.806187>,  <30.880903, 33.014084, 30.681263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223417, 33.339672, 30.806187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148132, 32.948921, 30.765623>,  <30.102962, 32.714470, 30.741285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148132, 32.948921, 30.765623>,  <30.223417, 33.339672, 30.806187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148132, 32.948921, 30.765623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570868, 0.024795, 0.820668,
		-0.799179, 0.212349, -0.562335,
		-0.188211, -0.976879, -0.101408,
		30.091669, 32.655857, 30.735201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607716, 33.261204, 30.752609>,  <30.223417, 33.339672, 30.806187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607716, 33.261204, 30.752609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711226, 32.905373, 30.903173>,  <29.773331, 32.691872, 30.993511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711226, 32.905373, 30.903173>,  <29.607716, 33.261204, 30.752609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711226, 32.905373, 30.903173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684700, 0.105939, 0.721085,
		-0.681339, -0.444325, -0.581681,
		0.258773, -0.889580, 0.376409,
		29.788858, 32.638500, 31.016096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025974, 32.925545, 30.865044>,  <29.607716, 33.261204, 30.752609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025974, 32.925545, 30.865044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281487, 32.749908, 31.117760>,  <29.434793, 32.644527, 31.269390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281487, 32.749908, 31.117760>,  <29.025974, 32.925545, 30.865044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281487, 32.749908, 31.117760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683382, 0.053469, 0.728100,
		-0.353484, -0.896850, -0.265912,
		0.638778, -0.439092, 0.631791,
		29.473120, 32.618179, 31.307297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631504, 32.487621, 31.390135>,  <29.025974, 32.925545, 30.865044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631504, 32.487621, 31.390135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978886, 32.493244, 31.588362>,  <29.187315, 32.496616, 31.707298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978886, 32.493244, 31.588362>,  <28.631504, 32.487621, 31.390135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978886, 32.493244, 31.588362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493466, 0.120727, 0.861346,
		-0.047725, -0.992586, 0.111780,
		0.868455, 0.014052, 0.495569,
		29.239422, 32.497459, 31.737032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453039, 32.210648, 31.914707>,  <28.631504, 32.487621, 31.390135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453039, 32.210648, 31.914707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791653, 32.390305, 32.029007>,  <28.994822, 32.498100, 32.097588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791653, 32.390305, 32.029007>,  <28.453039, 32.210648, 31.914707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791653, 32.390305, 32.029007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422488, 0.240289, 0.873937,
		0.323862, -0.860541, 0.393171,
		0.846532, 0.449145, 0.285748,
		29.045612, 32.525047, 32.114731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597664, 32.006142, 32.582520>,  <28.453039, 32.210648, 31.914707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597664, 32.006142, 32.582520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813112, 32.339287, 32.531570>,  <28.942381, 32.539173, 32.500999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813112, 32.339287, 32.531570>,  <28.597664, 32.006142, 32.582520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813112, 32.339287, 32.531570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370257, 0.369771, 0.852162,
		0.756834, -0.411831, 0.507540,
		0.538620, 0.832866, -0.127372,
		28.974699, 32.589146, 32.493359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540632, 32.172955, 33.267143>,  <28.597664, 32.006142, 32.582520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540632, 32.172955, 33.267143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682142, 32.490040, 33.068565>,  <28.767048, 32.680290, 32.949421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682142, 32.490040, 33.068565>,  <28.540632, 32.172955, 33.267143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682142, 32.490040, 33.068565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337965, 0.603244, 0.722410,
		0.872138, -0.087790, 0.481320,
		0.353774, 0.792710, -0.496442,
		28.788275, 32.727852, 32.919632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027176, 32.522991, 33.694492>,  <28.540632, 32.172955, 33.267143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027176, 32.522991, 33.694492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860168, 32.774509, 33.432106>,  <28.759964, 32.925423, 33.274673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860168, 32.774509, 33.432106>,  <29.027176, 32.522991, 33.694492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860168, 32.774509, 33.432106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156974, 0.661133, 0.733663,
		0.895007, 0.409287, -0.177331,
		-0.417518, 0.628798, -0.655966,
		28.734913, 32.963150, 33.235317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155176, 33.065018, 34.022381>,  <29.027176, 32.522991, 33.694492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155176, 33.065018, 34.022381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872276, 33.211670, 33.780594>,  <28.702536, 33.299660, 33.635521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872276, 33.211670, 33.780594>,  <29.155176, 33.065018, 34.022381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872276, 33.211670, 33.780594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156306, 0.752767, 0.639461,
		0.689469, 0.546740, -0.475087,
		-0.707249, 0.366629, -0.604468,
		28.660101, 33.321659, 33.599255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243368, 33.761662, 34.161945>,  <29.155176, 33.065018, 34.022381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243368, 33.761662, 34.161945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885740, 33.706646, 33.991428>,  <28.671164, 33.673637, 33.889118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885740, 33.706646, 33.991428>,  <29.243368, 33.761662, 34.161945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885740, 33.706646, 33.991428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400605, 0.671283, 0.623615,
		0.200389, 0.728328, -0.655272,
		-0.894069, -0.137540, -0.426290,
		28.617519, 33.665382, 33.863541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915550, 34.376633, 33.964649>,  <29.243368, 33.761662, 34.161945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915550, 34.376633, 33.964649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595917, 34.136154, 33.966908>,  <28.404137, 33.991867, 33.968262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595917, 34.136154, 33.966908>,  <28.915550, 34.376633, 33.964649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595917, 34.136154, 33.966908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501817, 0.672109, 0.544472,
		-0.331129, 0.432244, -0.838760,
		-0.799083, -0.601194, 0.005647,
		28.356192, 33.955795, 33.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337307, 34.757065, 33.746719>,  <28.915550, 34.376633, 33.964649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337307, 34.757065, 33.746719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151020, 34.463203, 33.944061>,  <28.039248, 34.286888, 34.062466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151020, 34.463203, 33.944061>,  <28.337307, 34.757065, 33.746719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151020, 34.463203, 33.944061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481555, 0.678122, 0.555207,
		-0.742436, 0.020993, -0.669588,
		-0.465718, -0.734649, 0.493353,
		28.011305, 34.242809, 34.092068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609436, 34.918251, 33.843620>,  <28.337307, 34.757065, 33.746719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609436, 34.918251, 33.843620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634996, 34.631638, 34.121468>,  <27.650333, 34.459671, 34.288177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634996, 34.631638, 34.121468>,  <27.609436, 34.918251, 33.843620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634996, 34.631638, 34.121468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650819, 0.497741, 0.573314,
		-0.756539, -0.488709, -0.434525,
		0.063902, -0.716532, 0.694622,
		27.654167, 34.416679, 34.329853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973955, 34.687855, 33.980137>,  <27.609436, 34.918251, 33.843620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973955, 34.687855, 33.980137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179047, 34.586864, 34.308372>,  <27.302101, 34.526272, 34.505314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179047, 34.586864, 34.308372>,  <26.973955, 34.687855, 33.980137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179047, 34.586864, 34.308372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749989, 0.333490, 0.571227,
		-0.417880, -0.908317, -0.018365,
		0.512731, -0.252478, 0.820586,
		27.332867, 34.511120, 34.554550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547098, 34.295856, 34.436394>,  <26.973955, 34.687855, 33.980137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547098, 34.295856, 34.436394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833332, 34.421410, 34.686008>,  <27.005072, 34.496742, 34.835777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833332, 34.421410, 34.686008>,  <26.547098, 34.295856, 34.436394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833332, 34.421410, 34.686008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697545, 0.273719, 0.662200,
		0.037038, -0.909153, 0.414812,
		0.715583, 0.313877, 0.624037,
		27.048006, 34.515572, 34.873219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458721, 33.919643, 35.149704>,  <26.547098, 34.295856, 34.436394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458721, 33.919643, 35.149704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674900, 34.250977, 35.208736>,  <26.804607, 34.449776, 35.244156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674900, 34.250977, 35.208736>,  <26.458721, 33.919643, 35.149704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674900, 34.250977, 35.208736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520298, 0.191183, 0.832309,
		0.661217, -0.526602, 0.534305,
		0.540446, 0.828335, 0.147576,
		26.837034, 34.499477, 35.253010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483303, 33.921234, 35.853409>,  <26.458721, 33.919643, 35.149704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483303, 33.921234, 35.853409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587095, 34.290051, 35.738514>,  <26.649370, 34.511341, 35.669579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587095, 34.290051, 35.738514>,  <26.483303, 33.921234, 35.853409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587095, 34.290051, 35.738514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398606, 0.373156, 0.837776,
		0.879650, -0.102892, 0.464359,
		0.259479, 0.922045, -0.287233,
		26.664940, 34.566666, 35.652344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665783, 34.261616, 36.471397>,  <26.483303, 33.921234, 35.853409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665783, 34.261616, 36.471397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581066, 34.552399, 36.210114>,  <26.530237, 34.726868, 36.053345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581066, 34.552399, 36.210114>,  <26.665783, 34.261616, 36.471397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581066, 34.552399, 36.210114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581214, 0.443646, 0.682180,
		0.785707, 0.524134, 0.328555,
		-0.211791, 0.726954, -0.653209,
		26.517529, 34.770485, 36.014153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717415, 34.872463, 36.903645>,  <26.665783, 34.261616, 36.471397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717415, 34.872463, 36.903645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471172, 34.943119, 36.596443>,  <26.323427, 34.985512, 36.412121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471172, 34.943119, 36.596443>,  <26.717415, 34.872463, 36.903645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471172, 34.943119, 36.596443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694185, 0.339739, 0.634574,
		0.373010, 0.923784, -0.086527,
		-0.615606, 0.176636, -0.768003,
		26.286491, 34.996109, 36.366043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290148, 35.138664, 37.445850>,  <26.717415, 34.872463, 36.903645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290148, 35.138664, 37.445850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642920, 35.006176, 37.580013>,  <27.854582, 34.926685, 37.660511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642920, 35.006176, 37.580013>,  <27.290148, 35.138664, 37.445850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642920, 35.006176, 37.580013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128863, -0.853837, -0.504338,
		0.453426, 0.401569, -0.795705,
		0.881929, -0.331217, 0.335405,
		27.907497, 34.906811, 37.680634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659910, 34.906666, 36.887321>,  <27.290148, 35.138664, 37.445850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659910, 34.906666, 36.887321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828201, 34.727005, 37.202599>,  <27.929176, 34.619209, 37.391766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828201, 34.727005, 37.202599>,  <27.659910, 34.906666, 36.887321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828201, 34.727005, 37.202599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034775, -0.860212, -0.508749,
		0.906519, 0.241455, -0.346298,
		0.420730, -0.449148, 0.788195,
		27.954420, 34.592262, 37.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297289, 34.574493, 36.666027>,  <27.659910, 34.906666, 36.887321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297289, 34.574493, 36.666027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160360, 34.396503, 36.997040>,  <28.078203, 34.289711, 37.195648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160360, 34.396503, 36.997040>,  <28.297289, 34.574493, 36.666027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160360, 34.396503, 36.997040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039024, -0.886722, -0.460653,
		0.938772, -0.125398, 0.320910,
		-0.342323, -0.444972, 0.827536,
		28.057663, 34.263012, 37.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769072, 34.094891, 36.728519>,  <28.297289, 34.574493, 36.666027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769072, 34.094891, 36.728519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473885, 33.972095, 36.968906>,  <28.296772, 33.898418, 37.113140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473885, 33.972095, 36.968906>,  <28.769072, 34.094891, 36.728519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473885, 33.972095, 36.968906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018758, -0.899525, -0.436466,
		0.674577, -0.310824, 0.669578,
		-0.737966, -0.306989, 0.600968,
		28.252495, 33.879997, 37.149197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958044, 33.401402, 36.779564>,  <28.769072, 34.094891, 36.728519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958044, 33.401402, 36.779564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590464, 33.385006, 36.936459>,  <28.369915, 33.375168, 37.030594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590464, 33.385006, 36.936459>,  <28.958044, 33.401402, 36.779564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590464, 33.385006, 36.936459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140129, -0.895746, -0.421904,
		0.368633, -0.442673, 0.817405,
		-0.918952, -0.040985, 0.392233,
		28.314777, 33.372711, 37.054127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896494, 32.746578, 37.254841>,  <28.958044, 33.401402, 36.779564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896494, 32.746578, 37.254841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548193, 32.883896, 37.114025>,  <28.339212, 32.966286, 37.029533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548193, 32.883896, 37.114025>,  <28.896494, 32.746578, 37.254841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548193, 32.883896, 37.114025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197086, -0.899581, -0.389758,
		-0.450494, -0.270000, 0.850973,
		-0.870754, 0.343298, -0.352042,
		28.286966, 32.986885, 37.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428827, 32.138924, 37.323177>,  <28.896494, 32.746578, 37.254841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428827, 32.138924, 37.323177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212238, 32.374233, 37.082932>,  <28.082285, 32.515419, 36.938786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212238, 32.374233, 37.082932>,  <28.428827, 32.138924, 37.323177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212238, 32.374233, 37.082932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348281, -0.807182, -0.476612,
		-0.765182, -0.048893, 0.641955,
		-0.541478, 0.588275, -0.600612,
		28.049795, 32.550716, 36.902748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847263, 31.810371, 37.264969>,  <28.428827, 32.138924, 37.323177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847263, 31.810371, 37.264969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879782, 32.048145, 36.944958>,  <27.899292, 32.190811, 36.752953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879782, 32.048145, 36.944958>,  <27.847263, 31.810371, 37.264969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879782, 32.048145, 36.944958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154713, -0.785425, -0.599310,
		-0.984609, 0.172494, 0.028116,
		0.081294, 0.594436, -0.800023,
		27.904169, 32.226475, 36.704952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377417, 31.521547, 36.903568>,  <27.847263, 31.810371, 37.264969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377417, 31.521547, 36.903568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.587351, 31.723383, 36.629360>,  <27.713312, 31.844484, 36.464836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.587351, 31.723383, 36.629360>,  <27.377417, 31.521547, 36.903568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587351, 31.723383, 36.629360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095653, -0.765292, -0.636536,
		-0.845812, 0.399649, -0.353387,
		0.524836, 0.504588, -0.685521,
		27.744802, 31.874760, 36.423702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009068, 31.449203, 36.297039>,  <27.377417, 31.521547, 36.903568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009068, 31.449203, 36.297039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366274, 31.583750, 36.177452>,  <27.580597, 31.664476, 36.105698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366274, 31.583750, 36.177452>,  <27.009068, 31.449203, 36.297039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366274, 31.583750, 36.177452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023869, -0.698807, -0.714911,
		-0.449395, 0.631290, -0.632074,
		0.893014, 0.336365, -0.298972,
		27.634178, 31.684660, 36.087761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046759, 31.497028, 35.564392>,  <27.009068, 31.449203, 36.297039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046759, 31.497028, 35.564392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432295, 31.457876, 35.663532>,  <27.663616, 31.434385, 35.723015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432295, 31.457876, 35.663532>,  <27.046759, 31.497028, 35.564392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432295, 31.457876, 35.663532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140918, -0.602182, -0.785824,
		0.226168, 0.792336, -0.566614,
		0.963841, -0.097882, 0.247849,
		27.721447, 31.428511, 35.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342789, 31.415071, 34.961399>,  <27.046759, 31.497028, 35.564392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342789, 31.415071, 34.961399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645552, 31.300690, 35.196457>,  <27.827209, 31.232061, 35.337490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645552, 31.300690, 35.196457>,  <27.342789, 31.415071, 34.961399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645552, 31.300690, 35.196457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294374, -0.653621, -0.697225,
		0.583469, 0.700721, -0.410553,
		0.756907, -0.285953, 0.587642,
		27.872623, 31.214903, 35.372749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890810, 31.403728, 34.564465>,  <27.342789, 31.415071, 34.961399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890810, 31.403728, 34.564465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996510, 31.163019, 34.865940>,  <28.059929, 31.018593, 35.046825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996510, 31.163019, 34.865940>,  <27.890810, 31.403728, 34.564465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996510, 31.163019, 34.865940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378761, -0.653927, -0.654920,
		0.886968, 0.458528, 0.055130,
		0.264248, -0.601774, 0.753685,
		28.075785, 30.982487, 35.092045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524761, 31.156317, 34.233215>,  <27.890810, 31.403728, 34.564465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524761, 31.156317, 34.233215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392387, 30.919220, 34.526920>,  <28.312963, 30.776962, 34.703144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392387, 30.919220, 34.526920>,  <28.524761, 31.156317, 34.233215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392387, 30.919220, 34.526920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125637, -0.798851, -0.588262,
		0.935252, -0.102428, 0.338839,
		-0.330937, -0.592744, 0.734259,
		28.293106, 30.741396, 34.747196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914846, 30.526245, 34.194092>,  <28.524761, 31.156317, 34.233215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914846, 30.526245, 34.194092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592741, 30.414862, 34.403477>,  <28.399477, 30.348032, 34.529106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592741, 30.414862, 34.403477>,  <28.914846, 30.526245, 34.194092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592741, 30.414862, 34.403477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098508, -0.807757, -0.581227,
		0.584677, -0.519606, 0.623027,
		-0.805264, -0.278457, 0.523462,
		28.351162, 30.331326, 34.560516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954847, 29.831051, 34.024887>,  <28.914846, 30.526245, 34.194092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954847, 29.831051, 34.024887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590336, 29.893896, 34.177147>,  <28.371630, 29.931602, 34.268501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590336, 29.893896, 34.177147>,  <28.954847, 29.831051, 34.024887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590336, 29.893896, 34.177147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308984, -0.871929, -0.379826,
		0.272221, -0.463741, 0.843114,
		-0.911276, 0.157112, 0.380646,
		28.316954, 29.941031, 34.291340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654373, 29.132303, 34.273911>,  <28.954847, 29.831051, 34.024887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654373, 29.132303, 34.273911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347738, 29.384846, 34.227043>,  <28.163757, 29.536371, 34.198921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347738, 29.384846, 34.227043>,  <28.654373, 29.132303, 34.273911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347738, 29.384846, 34.227043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554976, -0.743202, -0.373701,
		-0.323020, -0.221448, 0.920119,
		-0.766589, 0.631357, -0.117171,
		28.117762, 29.574253, 34.191891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087805, 28.750620, 34.548531>,  <28.654373, 29.132303, 34.273911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087805, 28.750620, 34.548531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978352, 29.030169, 34.284195>,  <27.912680, 29.197897, 34.125595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978352, 29.030169, 34.284195>,  <28.087805, 28.750620, 34.548531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978352, 29.030169, 34.284195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406730, -0.706681, -0.578941,
		-0.871605, 0.110364, 0.477624,
		-0.273634, 0.698872, -0.660835,
		27.896261, 29.239830, 34.085945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382336, 28.551386, 34.428001>,  <28.087805, 28.750620, 34.548531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382336, 28.551386, 34.428001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472349, 28.794449, 34.123341>,  <27.526358, 28.940287, 33.940544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472349, 28.794449, 34.123341>,  <27.382336, 28.551386, 34.428001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472349, 28.794449, 34.123341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625073, -0.509607, -0.591256,
		-0.747424, 0.609141, 0.265151,
		0.225036, 0.607658, -0.761650,
		27.539860, 28.976746, 33.894844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779594, 28.809238, 34.241310>,  <27.382336, 28.551386, 34.428001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779594, 28.809238, 34.241310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006918, 28.854189, 33.915268>,  <27.143312, 28.881159, 33.719643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006918, 28.854189, 33.915268>,  <26.779594, 28.809238, 34.241310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006918, 28.854189, 33.915268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622196, -0.589539, -0.515087,
		-0.538421, 0.799884, -0.265119,
		0.568308, 0.112378, -0.815106,
		27.177410, 28.887903, 33.670734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355751, 28.771536, 33.739677>,  <26.779594, 28.809238, 34.241310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355751, 28.771536, 33.739677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697376, 28.738029, 33.534325>,  <26.902351, 28.717926, 33.411114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697376, 28.738029, 33.534325>,  <26.355751, 28.771536, 33.739677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697376, 28.738029, 33.534325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473504, -0.533770, -0.700631,
		-0.215338, 0.841471, -0.495537,
		0.854063, -0.083766, -0.513381,
		26.953594, 28.712900, 33.380310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193714, 29.045837, 33.149521>,  <26.355751, 28.771536, 33.739677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193714, 29.045837, 33.149521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504744, 28.806599, 33.071896>,  <26.691360, 28.663055, 33.025318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504744, 28.806599, 33.071896>,  <26.193714, 29.045837, 33.149521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504744, 28.806599, 33.071896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553948, -0.505542, -0.661489,
		0.297524, 0.621860, -0.724410,
		0.777573, -0.598095, -0.194067,
		26.738016, 28.627171, 33.013676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.913811, 34.217117, 46.168736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546566, 34.300049, 46.303837>,  <41.326218, 34.349808, 46.384899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546566, 34.300049, 46.303837>,  <41.913811, 34.217117, 46.168736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546566, 34.300049, 46.303837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388662, 0.304348, 0.869663,
		0.077514, 0.929724, -0.360008,
		-0.918114, 0.207332, 0.337757,
		41.271133, 34.362247, 46.405163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914104, 34.889122, 46.402699>,  <41.913811, 34.217117, 46.168736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914104, 34.889122, 46.402699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.618176, 34.702351, 46.596458>,  <41.440617, 34.590290, 46.712715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.618176, 34.702351, 46.596458>,  <41.914104, 34.889122, 46.402699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618176, 34.702351, 46.596458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333317, 0.371040, 0.866735,
		-0.584430, 0.802690, -0.118871,
		-0.739825, -0.466924, 0.484397,
		41.396229, 34.562275, 46.741779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676968, 35.383862, 46.927406>,  <41.914104, 34.889122, 46.402699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676968, 35.383862, 46.927406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539196, 35.025524, 47.039715>,  <41.456532, 34.810520, 47.107101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539196, 35.025524, 47.039715>,  <41.676968, 35.383862, 46.927406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539196, 35.025524, 47.039715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026264, 0.289762, 0.956738,
		-0.938445, 0.336902, -0.076274,
		-0.344428, -0.895843, 0.280774,
		41.435867, 34.756771, 47.123947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096054, 35.496723, 47.493473>,  <41.676968, 35.383862, 46.927406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096054, 35.496723, 47.493473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264069, 35.137585, 47.546288>,  <41.364876, 34.922100, 47.577976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264069, 35.137585, 47.546288>,  <41.096054, 35.496723, 47.493473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264069, 35.137585, 47.546288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106814, 0.193390, 0.975290,
		-0.901199, -0.395555, 0.177134,
		0.420037, -0.897851, 0.132032,
		41.390079, 34.868229, 47.585896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727131, 35.195274, 48.047550>,  <41.096054, 35.496723, 47.493473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727131, 35.195274, 48.047550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071201, 34.992584, 48.024502>,  <41.277645, 34.870968, 48.010674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071201, 34.992584, 48.024502>,  <40.727131, 35.195274, 48.047550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071201, 34.992584, 48.024502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102986, 0.061929, 0.992753,
		-0.499489, -0.859878, 0.105456,
		0.860177, -0.506729, -0.057622,
		41.329254, 34.840565, 48.007214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706871, 34.656334, 48.545757>,  <40.727131, 35.195274, 48.047550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706871, 34.656334, 48.545757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100986, 34.645359, 48.478287>,  <41.337456, 34.638775, 48.437805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100986, 34.645359, 48.478287>,  <40.706871, 34.656334, 48.545757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100986, 34.645359, 48.478287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168839, 0.003599, 0.985637,
		-0.026440, -0.999617, 0.008179,
		0.985289, -0.027441, -0.168679,
		41.396572, 34.637127, 48.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983845, 34.100307, 48.935230>,  <40.706871, 34.656334, 48.545757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983845, 34.100307, 48.935230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282433, 34.362614, 48.890049>,  <41.461586, 34.519997, 48.862942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282433, 34.362614, 48.890049>,  <40.983845, 34.100307, 48.935230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282433, 34.362614, 48.890049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144343, 0.006130, 0.989509,
		0.649579, -0.754940, -0.090079,
		0.746467, 0.655766, -0.112952,
		41.506374, 34.559345, 48.856163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439308, 33.769382, 49.357113>,  <40.983845, 34.100307, 48.935230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439308, 33.769382, 49.357113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.570377, 34.139408, 49.280281>,  <41.649017, 34.361423, 49.234180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.570377, 34.139408, 49.280281>,  <41.439308, 33.769382, 49.357113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570377, 34.139408, 49.280281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207046, 0.128052, 0.969915,
		0.921825, -0.357585, -0.149571,
		0.327674, 0.925060, -0.192078,
		41.668678, 34.416927, 49.222656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089611, 33.687592, 49.588131>,  <41.439308, 33.769382, 49.357113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089611, 33.687592, 49.588131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.990692, 34.074589, 49.609280>,  <41.931339, 34.306789, 49.621967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.990692, 34.074589, 49.609280>,  <42.089611, 33.687592, 49.588131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990692, 34.074589, 49.609280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402683, 0.052992, 0.913804,
		0.881300, 0.247271, -0.402699,
		-0.247297, 0.967496, 0.052870,
		41.916504, 34.364838, 49.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463509, 34.035225, 50.099888>,  <42.089611, 33.687592, 49.588131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463509, 34.035225, 50.099888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188942, 34.323032, 50.057674>,  <42.024204, 34.495716, 50.032345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188942, 34.323032, 50.057674>,  <42.463509, 34.035225, 50.099888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188942, 34.323032, 50.057674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051172, 0.192550, 0.979952,
		0.725410, 0.667250, -0.168988,
		-0.686412, 0.719515, -0.105533,
		41.983017, 34.538887, 50.026016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698822, 34.606724, 50.459644>,  <42.463509, 34.035225, 50.099888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698822, 34.606724, 50.459644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.300877, 34.641602, 50.439091>,  <42.062107, 34.662529, 50.426758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.300877, 34.641602, 50.439091>,  <42.698822, 34.606724, 50.459644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300877, 34.641602, 50.439091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014751, 0.377374, 0.925943,
		0.100125, 0.921947, -0.374150,
		-0.994866, 0.087191, -0.051384,
		42.002419, 34.667759, 50.423676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572384, 35.170025, 50.976482>,  <42.698822, 34.606724, 50.459644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572384, 35.170025, 50.976482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.196831, 35.046913, 50.914810>,  <41.971500, 34.973045, 50.877808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.196831, 35.046913, 50.914810>,  <42.572384, 35.170025, 50.976482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196831, 35.046913, 50.914810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279449, 0.419898, 0.863478,
		-0.201017, 0.853791, -0.480243,
		-0.938882, -0.307777, -0.154185,
		41.915165, 34.954578, 50.868553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182304, 35.648396, 51.134735>,  <42.572384, 35.170025, 50.976482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182304, 35.648396, 51.134735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.981541, 35.307053, 51.191132>,  <41.861084, 35.102249, 51.224968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.981541, 35.307053, 51.191132>,  <42.182304, 35.648396, 51.134735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981541, 35.307053, 51.191132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266318, 0.307566, 0.913498,
		-0.822900, 0.420942, -0.381632,
		-0.501907, -0.853353, 0.140992,
		41.830967, 35.051048, 51.233429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284592, 36.249989, 51.407616>,  <42.182304, 35.648396, 51.134735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284592, 36.249989, 51.407616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473225, 35.897297, 51.402515>,  <42.586403, 35.685680, 51.399456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473225, 35.897297, 51.402515>,  <42.284592, 36.249989, 51.407616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473225, 35.897297, 51.402515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234774, -0.111597, -0.965623,
		0.849995, 0.458365, -0.259634,
		0.471582, -0.881730, -0.012755,
		42.614700, 35.632778, 51.398689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864388, 36.579235, 51.891968>,  <42.284592, 36.249989, 51.407616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864388, 36.579235, 51.891968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.931946, 36.972393, 51.862610>,  <41.972481, 37.208290, 51.844994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.931946, 36.972393, 51.862610>,  <41.864388, 36.579235, 51.891968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931946, 36.972393, 51.862610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420786, 0.004565, -0.907148,
		-0.891299, 0.184097, 0.414361,
		0.168895, 0.982897, -0.073396,
		41.982613, 37.267262, 51.840591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236748, 36.891514, 51.627079>,  <41.864388, 36.579235, 51.891968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236748, 36.891514, 51.627079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520824, 37.156212, 51.530979>,  <41.691273, 37.315029, 51.473320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520824, 37.156212, 51.530979>,  <41.236748, 36.891514, 51.627079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520824, 37.156212, 51.530979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370620, 0.061291, -0.926760,
		-0.598554, 0.747220, 0.288784,
		0.710193, 0.661745, -0.240249,
		41.733883, 37.354736, 51.458904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926861, 37.499325, 51.195595>,  <41.236748, 36.891514, 51.627079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926861, 37.499325, 51.195595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.306736, 37.592346, 51.111679>,  <41.534660, 37.648159, 51.061329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.306736, 37.592346, 51.111679>,  <40.926861, 37.499325, 51.195595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306736, 37.592346, 51.111679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258292, 0.202686, -0.944565,
		-0.177138, 0.951230, 0.252554,
		0.949688, 0.232551, -0.209791,
		41.591644, 37.662113, 51.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968006, 38.136742, 50.824963>,  <40.926861, 37.499325, 51.195595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968006, 38.136742, 50.824963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.295010, 37.927109, 50.729450>,  <41.491211, 37.801327, 50.672142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.295010, 37.927109, 50.729450>,  <40.968006, 38.136742, 50.824963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295010, 37.927109, 50.729450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195367, 0.137664, -0.971020,
		0.541768, 0.840466, 0.010153,
		0.817508, -0.524085, -0.238781,
		41.540260, 37.769882, 50.657814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216858, 38.409454, 50.151489>,  <40.968006, 38.136742, 50.824963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216858, 38.409454, 50.151489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.396961, 38.053268, 50.177834>,  <41.505024, 37.839558, 50.193638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.396961, 38.053268, 50.177834>,  <41.216858, 38.409454, 50.151489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396961, 38.053268, 50.177834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230151, -0.187005, -0.955018,
		0.862729, 0.414844, -0.289142,
		0.450255, -0.890468, 0.065858,
		41.532036, 37.786129, 50.197590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549770, 38.387131, 49.543667>,  <41.216858, 38.409454, 50.151489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549770, 38.387131, 49.543667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.532864, 38.001480, 49.648487>,  <41.522720, 37.770088, 49.711380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.532864, 38.001480, 49.648487>,  <41.549770, 38.387131, 49.543667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532864, 38.001480, 49.648487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206062, -0.248236, -0.946529,
		0.977625, -0.094011, -0.188177,
		-0.042271, -0.964127, 0.262054,
		41.520184, 37.712242, 49.727104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044689, 37.920715, 49.147400>,  <41.549770, 38.387131, 49.543667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044689, 37.920715, 49.147400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.737022, 37.691471, 49.260483>,  <41.552422, 37.553925, 49.328331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.737022, 37.691471, 49.260483>,  <42.044689, 37.920715, 49.147400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737022, 37.691471, 49.260483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199731, -0.204627, -0.958246,
		0.607032, -0.793518, 0.042924,
		-0.769168, -0.573112, 0.282705,
		41.506271, 37.519539, 49.345295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945862, 37.473122, 48.681061>,  <42.044689, 37.920715, 49.147400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945862, 37.473122, 48.681061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611404, 37.375549, 48.877579>,  <41.410732, 37.317005, 48.995487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611404, 37.375549, 48.877579>,  <41.945862, 37.473122, 48.681061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611404, 37.375549, 48.877579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465575, -0.157958, -0.870798,
		0.290020, -0.956842, 0.018506,
		-0.836139, -0.243933, 0.491293,
		41.360561, 37.302368, 49.024967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810112, 36.945549, 48.297260>,  <41.945862, 37.473122, 48.681061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810112, 36.945549, 48.297260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.466217, 37.055714, 48.469307>,  <41.259880, 37.121811, 48.572536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.466217, 37.055714, 48.469307>,  <41.810112, 36.945549, 48.297260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466217, 37.055714, 48.469307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467750, -0.086421, -0.879625,
		-0.205087, -0.957434, 0.203123,
		-0.859738, 0.275411, 0.430116,
		41.208294, 37.138336, 48.598343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206875, 36.601257, 47.908703>,  <41.810112, 36.945549, 48.297260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206875, 36.601257, 47.908703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.025112, 36.905128, 48.094776>,  <40.916054, 37.087452, 48.206421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.025112, 36.905128, 48.094776>,  <41.206875, 36.601257, 47.908703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025112, 36.905128, 48.094776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633993, 0.091029, -0.767962,
		-0.625752, -0.643892, 0.440269,
		-0.454408, 0.759682, 0.465185,
		40.888790, 37.133034, 48.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496811, 36.473976, 47.845997>,  <41.206875, 36.601257, 47.908703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496811, 36.473976, 47.845997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.521355, 36.862392, 47.938351>,  <40.536079, 37.095444, 47.993763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.521355, 36.862392, 47.938351>,  <40.496811, 36.473976, 47.845997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521355, 36.862392, 47.938351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736791, 0.200114, -0.645828,
		-0.673331, -0.130489, 0.727735,
		0.061357, 0.971044, 0.230886,
		40.539761, 37.153706, 48.007618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886688, 36.676899, 48.009556>,  <40.496811, 36.473976, 47.845997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886688, 36.676899, 48.009556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.074493, 37.015259, 47.908356>,  <40.187176, 37.218277, 47.847637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.074493, 37.015259, 47.908356>,  <39.886688, 36.676899, 48.009556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074493, 37.015259, 47.908356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718794, 0.199798, -0.665895,
		-0.512734, 0.494499, 0.701837,
		0.469510, 0.845903, -0.253000,
		40.215347, 37.269032, 47.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372459, 37.330742, 48.039959>,  <39.886688, 36.676899, 48.009556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372459, 37.330742, 48.039959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676361, 37.432171, 47.800468>,  <39.858704, 37.493027, 47.656773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676361, 37.432171, 47.800468>,  <39.372459, 37.330742, 48.039959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676361, 37.432171, 47.800468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642686, 0.153164, -0.750663,
		-0.098641, 0.955114, 0.279332,
		0.759753, 0.253569, -0.598731,
		39.904285, 37.508240, 47.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112453, 37.979641, 47.642593>,  <39.372459, 37.330742, 48.039959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112453, 37.979641, 47.642593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408058, 37.801235, 47.440628>,  <39.585419, 37.694191, 47.319450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408058, 37.801235, 47.440628>,  <39.112453, 37.979641, 47.642593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408058, 37.801235, 47.440628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563532, 0.001452, -0.826093,
		0.369184, 0.895024, -0.250271,
		0.739009, -0.446016, -0.504910,
		39.629761, 37.667431, 47.289154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714203, 38.526886, 47.550011>,  <39.112453, 37.979641, 47.642593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714203, 38.526886, 47.550011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363628, 38.336128, 47.576633>,  <38.153282, 38.221676, 47.592606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363628, 38.336128, 47.576633>,  <38.714203, 38.526886, 47.550011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363628, 38.336128, 47.576633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162093, -0.162055, 0.973378,
		-0.453410, 0.863894, 0.219332,
		-0.876439, -0.476891, 0.066554,
		38.100697, 38.193062, 47.596600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454704, 38.719452, 48.206085>,  <38.714203, 38.526886, 47.550011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454704, 38.719452, 48.206085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206181, 38.413250, 48.139175>,  <38.057068, 38.229530, 48.099030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206181, 38.413250, 48.139175>,  <38.454704, 38.719452, 48.206085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206181, 38.413250, 48.139175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000766, -0.214071, 0.976818,
		-0.783565, 0.606778, 0.133590,
		-0.621310, -0.765502, -0.167274,
		38.019787, 38.183598, 48.088993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963486, 38.811077, 48.688423>,  <38.454704, 38.719452, 48.206085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963486, 38.811077, 48.688423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932220, 38.424438, 48.590786>,  <37.913460, 38.192455, 48.532204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932220, 38.424438, 48.590786>,  <37.963486, 38.811077, 48.688423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932220, 38.424438, 48.590786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036541, -0.247452, 0.968211,
		-0.996271, 0.066761, 0.054662,
		-0.078165, -0.966597, -0.244090,
		37.908772, 38.134460, 48.517559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590588, 38.587391, 49.180401>,  <37.963486, 38.811077, 48.688423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590588, 38.587391, 49.180401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750443, 38.245102, 49.048927>,  <37.846355, 38.039730, 48.970043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750443, 38.245102, 49.048927>,  <37.590588, 38.587391, 49.180401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750443, 38.245102, 49.048927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088573, -0.320836, 0.942984,
		-0.912383, -0.405967, -0.052426,
		0.399641, -0.855719, -0.328683,
		37.870335, 37.988388, 48.950321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362026, 38.103664, 49.629078>,  <37.590588, 38.587391, 49.180401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362026, 38.103664, 49.629078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688618, 37.934372, 49.471989>,  <37.884575, 37.832798, 49.377735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688618, 37.934372, 49.471989>,  <37.362026, 38.103664, 49.629078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688618, 37.934372, 49.471989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310863, -0.250943, 0.916729,
		-0.486538, -0.870577, -0.073324,
		0.816483, -0.423230, -0.392723,
		37.933563, 37.807404, 49.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364876, 37.449856, 49.878796>,  <37.362026, 38.103664, 49.629078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364876, 37.449856, 49.878796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739796, 37.519474, 49.758018>,  <37.964748, 37.561245, 49.685555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739796, 37.519474, 49.758018>,  <37.364876, 37.449856, 49.878796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739796, 37.519474, 49.758018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344987, -0.340444, 0.874690,
		0.049445, -0.924016, -0.379144,
		0.937304, 0.174048, -0.301940,
		38.020988, 37.571690, 49.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746742, 36.799091, 50.079823>,  <37.364876, 37.449856, 49.878796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746742, 36.799091, 50.079823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996254, 37.108566, 50.035442>,  <38.145962, 37.294250, 50.008816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996254, 37.108566, 50.035442>,  <37.746742, 36.799091, 50.079823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996254, 37.108566, 50.035442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340902, -0.141572, 0.929378,
		0.703343, -0.617545, -0.352061,
		0.623775, 0.773690, -0.110949,
		38.183388, 37.340672, 50.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937096, 36.013958, 50.248508>,  <37.746742, 36.799091, 50.079823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937096, 36.013958, 50.248508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627232, 35.788879, 50.363934>,  <37.441315, 35.653831, 50.433189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627232, 35.788879, 50.363934>,  <37.937096, 36.013958, 50.248508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627232, 35.788879, 50.363934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368162, 0.030294, -0.929268,
		0.514156, -0.826106, -0.230632,
		-0.774661, -0.562699, 0.288566,
		37.394833, 35.620071, 50.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852814, 35.497620, 49.758850>,  <37.937096, 36.013958, 50.248508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852814, 35.497620, 49.758850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491787, 35.508965, 49.930695>,  <37.275169, 35.515770, 50.033802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491787, 35.508965, 49.930695>,  <37.852814, 35.497620, 49.758850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491787, 35.508965, 49.930695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430040, -0.010919, -0.902744,
		-0.020913, -0.999538, 0.022052,
		-0.902567, 0.028362, 0.429613,
		37.221016, 35.517475, 50.059578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389122, 34.966450, 49.481258>,  <37.852814, 35.497620, 49.758850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389122, 34.966450, 49.481258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142754, 35.250252, 49.618229>,  <36.994934, 35.420532, 49.700409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142754, 35.250252, 49.618229>,  <37.389122, 34.966450, 49.481258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142754, 35.250252, 49.618229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341491, 0.151250, -0.927635,
		-0.709949, -0.688282, 0.149131,
		-0.615919, 0.709501, 0.342422,
		36.957977, 35.463100, 49.720955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771996, 34.881794, 49.133007>,  <37.389122, 34.966450, 49.481258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771996, 34.881794, 49.133007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726151, 35.257328, 49.262897>,  <36.698643, 35.482651, 49.340832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726151, 35.257328, 49.262897>,  <36.771996, 34.881794, 49.133007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726151, 35.257328, 49.262897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606049, 0.192927, -0.771676,
		-0.787127, -0.285245, 0.546870,
		-0.114611, 0.938837, 0.324731,
		36.691769, 35.538979, 49.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114120, 35.037460, 49.061638>,  <36.771996, 34.881794, 49.133007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114120, 35.037460, 49.061638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262283, 35.407734, 49.092392>,  <36.351181, 35.629898, 49.110844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262283, 35.407734, 49.092392>,  <36.114120, 35.037460, 49.061638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262283, 35.407734, 49.092392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629519, 0.311037, -0.712013,
		-0.683010, 0.215338, 0.697945,
		0.370410, 0.925681, 0.076882,
		36.373405, 35.685440, 49.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570194, 35.453094, 49.040653>,  <36.114120, 35.037460, 49.061638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570194, 35.453094, 49.040653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881348, 35.670521, 48.914520>,  <36.068039, 35.800976, 48.838840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881348, 35.670521, 48.914520>,  <35.570194, 35.453094, 49.040653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881348, 35.670521, 48.914520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565908, 0.387772, -0.727586,
		-0.273215, 0.744424, 0.609250,
		0.777883, 0.543567, -0.315330,
		36.114712, 35.833591, 48.819920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321701, 36.151119, 48.945019>,  <35.570194, 35.453094, 49.040653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321701, 36.151119, 48.945019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648663, 36.123173, 48.716293>,  <35.844841, 36.106407, 48.579060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648663, 36.123173, 48.716293>,  <35.321701, 36.151119, 48.945019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648663, 36.123173, 48.716293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438790, 0.567636, -0.696601,
		0.373249, 0.820310, 0.433332,
		0.817403, -0.069864, -0.571814,
		35.893883, 36.102215, 48.544750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.471199, 33.817616, 51.244919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486206, 34.142078, 51.011471>,  <39.495209, 34.336758, 50.871403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486206, 34.142078, 51.011471>,  <39.471199, 33.817616, 51.244919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486206, 34.142078, 51.011471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194986, -0.566862, -0.800405,
		-0.980088, 0.143827, 0.136897,
		0.037518, 0.811161, -0.583619,
		39.497463, 34.385426, 50.836384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923035, 33.771935, 50.717407>,  <39.471199, 33.817616, 51.244919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923035, 33.771935, 50.717407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.183064, 34.036953, 50.568577>,  <39.339081, 34.195965, 50.479279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.183064, 34.036953, 50.568577>,  <38.923035, 33.771935, 50.717407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183064, 34.036953, 50.568577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340268, -0.183999, -0.922151,
		-0.679432, 0.726066, 0.105832,
		0.650069, 0.662550, -0.372072,
		39.378086, 34.235718, 50.456955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597935, 34.354019, 50.309505>,  <38.923035, 33.771935, 50.717407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597935, 34.354019, 50.309505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964554, 34.257675, 50.181797>,  <39.184525, 34.199867, 50.105171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964554, 34.257675, 50.181797>,  <38.597935, 34.354019, 50.309505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964554, 34.257675, 50.181797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370894, -0.213260, -0.903857,
		0.149618, 0.946840, -0.284796,
		0.916543, -0.240863, -0.319270,
		39.239517, 34.185417, 50.086018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688618, 34.608257, 49.685543>,  <38.597935, 34.354019, 50.309505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688618, 34.608257, 49.685543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934902, 34.293228, 49.675503>,  <39.082672, 34.104210, 49.669479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934902, 34.293228, 49.675503>,  <38.688618, 34.608257, 49.685543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934902, 34.293228, 49.675503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351213, -0.245780, -0.903461,
		0.705368, 0.565091, -0.427935,
		0.615716, -0.787569, -0.025102,
		39.119617, 34.056957, 49.667973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085373, 34.609760, 49.078373>,  <38.688618, 34.608257, 49.685543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085373, 34.609760, 49.078373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.084911, 34.224751, 49.186855>,  <39.084633, 33.993744, 49.251945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.084911, 34.224751, 49.186855>,  <39.085373, 34.609760, 49.078373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084911, 34.224751, 49.186855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192425, -0.265922, -0.944594,
		0.981311, -0.053280, -0.184905,
		-0.001158, -0.962521, 0.271205,
		39.084564, 33.935993, 49.268215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352875, 34.325325, 48.460876>,  <39.085373, 34.609760, 49.078373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352875, 34.325325, 48.460876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.216377, 34.005482, 48.658531>,  <39.134480, 33.813576, 48.777126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.216377, 34.005482, 48.658531>,  <39.352875, 34.325325, 48.460876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216377, 34.005482, 48.658531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421341, -0.339803, -0.840836,
		0.840253, -0.495129, -0.220955,
		-0.341242, -0.799613, 0.494139,
		39.114006, 33.765598, 48.806774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483929, 33.703110, 47.979946>,  <39.352875, 34.325325, 48.460876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483929, 33.703110, 47.979946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.224377, 33.569023, 48.253178>,  <39.068645, 33.488571, 48.417114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.224377, 33.569023, 48.253178>,  <39.483929, 33.703110, 47.979946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224377, 33.569023, 48.253178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389149, -0.625235, -0.676494,
		0.653852, -0.704779, 0.275252,
		-0.648876, -0.335213, 0.683076,
		39.029713, 33.468460, 48.458099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612411, 33.020039, 48.029800>,  <39.483929, 33.703110, 47.979946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612411, 33.020039, 48.029800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.230968, 33.095520, 48.123634>,  <39.002102, 33.140808, 48.179935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.230968, 33.095520, 48.123634>,  <39.612411, 33.020039, 48.029800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230968, 33.095520, 48.123634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296914, -0.718358, -0.629130,
		0.049800, -0.669593, 0.741057,
		-0.953605, 0.188699, 0.234586,
		38.944885, 33.152130, 48.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278923, 32.354378, 48.087566>,  <39.612411, 33.020039, 48.029800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278923, 32.354378, 48.087566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979225, 32.614372, 48.036720>,  <38.799408, 32.770370, 48.006214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979225, 32.614372, 48.036720>,  <39.278923, 32.354378, 48.087566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979225, 32.614372, 48.036720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424688, -0.618783, -0.660869,
		-0.508212, -0.441166, 0.739658,
		-0.749240, 0.649986, -0.127115,
		38.754452, 32.809368, 47.998585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677372, 31.991919, 47.848480>,  <39.278923, 32.354378, 48.087566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677372, 31.991919, 47.848480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.560905, 32.365059, 47.763618>,  <38.491024, 32.588943, 47.712700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.560905, 32.365059, 47.763618>,  <38.677372, 31.991919, 47.848480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560905, 32.365059, 47.763618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423739, -0.324580, -0.845632,
		-0.857711, -0.156320, 0.489792,
		-0.291166, 0.932851, -0.212157,
		38.473557, 32.644913, 47.699970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045235, 31.954113, 47.582436>,  <38.677372, 31.991919, 47.848480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045235, 31.954113, 47.582436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.188717, 32.299316, 47.440140>,  <38.274807, 32.506439, 47.354763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.188717, 32.299316, 47.440140>,  <38.045235, 31.954113, 47.582436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188717, 32.299316, 47.440140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472771, -0.160636, -0.866420,
		-0.804871, 0.478971, 0.350384,
		0.358706, 0.863008, -0.355735,
		38.296329, 32.558220, 47.333420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415974, 32.159203, 47.136265>,  <38.045235, 31.954113, 47.582436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415974, 32.159203, 47.136265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726460, 32.387886, 47.029945>,  <37.912750, 32.525097, 46.966152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726460, 32.387886, 47.029945>,  <37.415974, 32.159203, 47.136265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726460, 32.387886, 47.029945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256585, -0.098647, -0.961474,
		-0.575900, 0.814507, 0.070120,
		0.776211, 0.571705, -0.265801,
		37.959324, 32.559399, 46.950207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814213, 32.782967, 47.288139>,  <37.415974, 32.159203, 47.136265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814213, 32.782967, 47.288139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.415218, 32.756668, 47.298763>,  <36.175823, 32.740891, 47.305138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.415218, 32.756668, 47.298763>,  <36.814213, 32.782967, 47.288139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415218, 32.756668, 47.298763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024066, 0.038380, 0.998973,
		-0.066698, 0.997098, -0.036701,
		-0.997483, -0.065746, 0.026556,
		36.115974, 32.736946, 47.306728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554230, 33.434433, 47.610153>,  <36.814213, 32.782967, 47.288139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554230, 33.434433, 47.610153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.279575, 33.146122, 47.648125>,  <36.114784, 32.973137, 47.670910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.279575, 33.146122, 47.648125>,  <36.554230, 33.434433, 47.610153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279575, 33.146122, 47.648125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015820, 0.145365, 0.989252,
		-0.726830, 0.677754, -0.111216,
		-0.686636, -0.720777, 0.094933,
		36.073586, 32.929890, 47.676605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215546, 33.626026, 48.137165>,  <36.554230, 33.434433, 47.610153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215546, 33.626026, 48.137165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.073303, 33.253448, 48.106312>,  <35.987957, 33.029900, 48.087799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.073303, 33.253448, 48.106312>,  <36.215546, 33.626026, 48.137165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073303, 33.253448, 48.106312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041790, -0.098286, 0.994280,
		-0.933702, 0.350348, 0.073876,
		-0.355605, -0.931449, -0.077129,
		35.966621, 32.974014, 48.083172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922211, 33.581970, 48.649986>,  <36.215546, 33.626026, 48.137165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922211, 33.581970, 48.649986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965393, 33.190559, 48.579750>,  <35.991302, 32.955711, 48.537609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965393, 33.190559, 48.579750>,  <35.922211, 33.581970, 48.649986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965393, 33.190559, 48.579750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144258, -0.159334, 0.976628,
		-0.983633, -0.130765, 0.123959,
		0.107958, -0.978526, -0.175590,
		35.997780, 32.897003, 48.527073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520756, 33.328144, 49.069775>,  <35.922211, 33.581970, 48.649986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520756, 33.328144, 49.069775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742451, 33.010921, 48.968670>,  <35.875465, 32.820587, 48.908009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742451, 33.010921, 48.968670>,  <35.520756, 33.328144, 49.069775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742451, 33.010921, 48.968670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061108, -0.264082, 0.962562,
		-0.830115, -0.548931, -0.097901,
		0.554234, -0.793055, -0.252762,
		35.908722, 32.773006, 48.892841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193459, 32.743046, 49.300175>,  <35.520756, 33.328144, 49.069775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193459, 32.743046, 49.300175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572708, 32.627365, 49.247368>,  <35.800259, 32.557957, 49.215683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572708, 32.627365, 49.247368>,  <35.193459, 32.743046, 49.300175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572708, 32.627365, 49.247368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082975, -0.175749, 0.980932,
		-0.306887, -0.940997, -0.142635,
		0.948122, -0.289200, -0.132015,
		35.857143, 32.540607, 49.207764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232426, 32.163918, 49.660534>,  <35.193459, 32.743046, 49.300175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232426, 32.163918, 49.660534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.614246, 32.276863, 49.622364>,  <35.843338, 32.344631, 49.599461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.614246, 32.276863, 49.622364>,  <35.232426, 32.163918, 49.660534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614246, 32.276863, 49.622364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164732, -0.232976, 0.958429,
		0.248395, -0.930587, -0.268901,
		0.954549, 0.282366, -0.095428,
		35.900612, 32.361572, 49.593735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520702, 31.614319, 49.871151>,  <35.232426, 32.163918, 49.660534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520702, 31.614319, 49.871151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790352, 31.909372, 49.886436>,  <35.952141, 32.086403, 49.895607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790352, 31.909372, 49.886436>,  <35.520702, 31.614319, 49.871151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790352, 31.909372, 49.886436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263730, -0.288700, 0.920379,
		0.689935, -0.610368, -0.389155,
		0.674119, 0.737634, 0.038212,
		35.992588, 32.130661, 49.897900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058990, 31.294685, 50.251133>,  <35.520702, 31.614319, 49.871151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058990, 31.294685, 50.251133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188202, 31.672956, 50.236446>,  <36.265728, 31.899920, 50.227634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188202, 31.672956, 50.236446>,  <36.058990, 31.294685, 50.251133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188202, 31.672956, 50.236446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443483, -0.116982, 0.888616,
		0.836048, -0.303332, -0.457180,
		0.323027, 0.945677, -0.036720,
		36.285110, 31.956659, 50.225430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905491, 31.394251, 50.509674>,  <36.058990, 31.294685, 50.251133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905491, 31.394251, 50.509674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754929, 31.761803, 50.556961>,  <36.664589, 31.982334, 50.585331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754929, 31.761803, 50.556961>,  <36.905491, 31.394251, 50.509674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754929, 31.761803, 50.556961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367591, 0.031003, 0.929471,
		0.850408, 0.393314, -0.349442,
		-0.376408, 0.918881, 0.118214,
		36.642006, 32.037468, 50.592426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517357, 31.859884, 50.750450>,  <36.905491, 31.394251, 50.509674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517357, 31.859884, 50.750450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175205, 32.033592, 50.863396>,  <36.969913, 32.137817, 50.931164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175205, 32.033592, 50.863396>,  <37.517357, 31.859884, 50.750450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175205, 32.033592, 50.863396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375802, 0.145113, 0.915268,
		0.356500, 0.889017, -0.287328,
		-0.855383, 0.434271, 0.282362,
		36.918591, 32.163876, 50.948105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759426, 32.431805, 50.994850>,  <37.517357, 31.859884, 50.750450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759426, 32.431805, 50.994850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.398479, 32.368587, 51.155231>,  <37.181911, 32.330658, 51.251461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.398479, 32.368587, 51.155231>,  <37.759426, 32.431805, 50.994850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398479, 32.368587, 51.155231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423249, -0.149626, 0.893573,
		-0.081228, 0.976030, 0.201908,
		-0.902365, -0.158041, 0.400950,
		37.127769, 32.321175, 51.275517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687969, 32.813530, 51.668045>,  <37.759426, 32.431805, 50.994850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687969, 32.813530, 51.668045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.397629, 32.541645, 51.710236>,  <37.223423, 32.378513, 51.735550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.397629, 32.541645, 51.710236>,  <37.687969, 32.813530, 51.668045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397629, 32.541645, 51.710236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239395, -0.105874, 0.965133,
		-0.644847, 0.725796, 0.239569,
		-0.725853, -0.679714, 0.105479,
		37.179874, 32.337730, 51.741879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105564, 33.009075, 52.150478>,  <37.687969, 32.813530, 51.668045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105564, 33.009075, 52.150478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.188366, 32.619946, 52.108997>,  <37.238049, 32.386467, 52.084110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.188366, 32.619946, 52.108997>,  <37.105564, 33.009075, 52.150478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188366, 32.619946, 52.108997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283059, -0.041912, 0.958186,
		-0.936497, -0.227702, 0.266692,
		0.207003, -0.972828, -0.103704,
		37.250465, 32.328098, 52.077885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350616, 33.478806, 52.632607>,  <37.105564, 33.009075, 52.150478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350616, 33.478806, 52.632607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546329, 33.768230, 52.827366>,  <37.663757, 33.941883, 52.944221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546329, 33.768230, 52.827366>,  <37.350616, 33.478806, 52.632607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546329, 33.768230, 52.827366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085703, 0.595475, -0.798789,
		-0.867907, 0.349101, 0.353364,
		0.489278, 0.723559, 0.486898,
		37.693111, 33.985298, 52.973434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837421, 34.037281, 52.862789>,  <37.350616, 33.478806, 52.632607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837421, 34.037281, 52.862789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205326, 34.190609, 52.829071>,  <37.426067, 34.282604, 52.808842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205326, 34.190609, 52.829071>,  <36.837421, 34.037281, 52.862789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205326, 34.190609, 52.829071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307240, 0.569570, -0.762361,
		-0.244215, 0.727089, 0.641639,
		0.919763, 0.383317, -0.084293,
		37.481255, 34.305603, 52.803783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749325, 34.740421, 52.827209>,  <36.837421, 34.037281, 52.862789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749325, 34.740421, 52.827209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107380, 34.675972, 52.660950>,  <37.322212, 34.637302, 52.561195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107380, 34.675972, 52.660950>,  <36.749325, 34.740421, 52.827209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107380, 34.675972, 52.660950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215989, 0.658880, -0.720574,
		0.389965, 0.734790, 0.554988,
		0.895140, -0.161127, -0.415646,
		37.375923, 34.627632, 52.536255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906445, 35.335342, 52.570351>,  <36.749325, 34.740421, 52.827209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906445, 35.335342, 52.570351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.170010, 35.109497, 52.371540>,  <37.328148, 34.973988, 52.252254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.170010, 35.109497, 52.371540>,  <36.906445, 35.335342, 52.570351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170010, 35.109497, 52.371540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201543, 0.504079, -0.839812,
		0.724714, 0.653539, 0.218351,
		0.658916, -0.564616, -0.497029,
		37.367683, 34.940113, 52.222431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197769, 35.809856, 52.117989>,  <36.906445, 35.335342, 52.570351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197769, 35.809856, 52.117989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317833, 35.464703, 51.955341>,  <37.389870, 35.257610, 51.857754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317833, 35.464703, 51.955341>,  <37.197769, 35.809856, 52.117989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317833, 35.464703, 51.955341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206444, 0.357410, -0.910845,
		0.931282, 0.357341, -0.070857,
		0.300157, -0.862882, -0.406620,
		37.407879, 35.205837, 51.833355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657959, 36.165264, 51.641045>,  <37.197769, 35.809856, 52.117989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657959, 36.165264, 51.641045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560650, 35.795155, 51.524635>,  <37.502266, 35.573090, 51.454788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560650, 35.795155, 51.524635>,  <37.657959, 36.165264, 51.641045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560650, 35.795155, 51.524635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208608, 0.342925, -0.915907,
		0.947260, -0.162104, -0.276442,
		-0.243271, -0.925270, -0.291023,
		37.487667, 35.517574, 51.437328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003605, 36.157043, 50.957077>,  <37.657959, 36.165264, 51.641045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003605, 36.157043, 50.957077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.712582, 35.883400, 50.936489>,  <37.537968, 35.719212, 50.924137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.712582, 35.883400, 50.936489>,  <38.003605, 36.157043, 50.957077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712582, 35.883400, 50.936489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179813, 0.262559, -0.948014,
		0.662061, -0.680481, -0.314039,
		-0.727559, -0.684112, -0.051471,
		37.494312, 35.678165, 50.921047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450104, 36.524025, 50.430492>,  <38.003605, 36.157043, 50.957077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450104, 36.524025, 50.430492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.500919, 36.919613, 50.400043>,  <38.531410, 37.156967, 50.381775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.500919, 36.919613, 50.400043>,  <38.450104, 36.524025, 50.430492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500919, 36.919613, 50.400043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627590, -0.020717, 0.778269,
		0.768110, -0.146644, -0.623301,
		0.127041, 0.988972, -0.076119,
		38.539032, 37.216305, 50.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130085, 36.657322, 50.302979>,  <38.450104, 36.524025, 50.430492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130085, 36.657322, 50.302979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.985462, 36.974403, 50.499306>,  <38.898689, 37.164650, 50.617104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.985462, 36.974403, 50.499306>,  <39.130085, 36.657322, 50.302979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985462, 36.974403, 50.499306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735614, -0.080913, 0.672552,
		0.572846, 0.604218, -0.553867,
		-0.361552, 0.792701, 0.490822,
		38.876995, 37.212215, 50.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608303, 36.781933, 50.839191>,  <39.130085, 36.657322, 50.302979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608303, 36.781933, 50.839191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.339123, 37.038887, 50.985878>,  <39.177616, 37.193058, 51.073891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.339123, 37.038887, 50.985878>,  <39.608303, 36.781933, 50.839191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339123, 37.038887, 50.985878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580821, 0.151918, 0.799729,
		0.458022, 0.751175, -0.475344,
		-0.672950, 0.642384, 0.366717,
		39.137238, 37.231602, 51.095894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919357, 37.442612, 50.982079>,  <39.608303, 36.781933, 50.839191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919357, 37.442612, 50.982079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.596413, 37.424984, 51.217445>,  <39.402645, 37.414410, 51.358665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.596413, 37.424984, 51.217445>,  <39.919357, 37.442612, 50.982079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596413, 37.424984, 51.217445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530861, 0.381108, 0.756930,
		-0.257605, 0.923480, -0.284297,
		-0.807358, -0.044067, 0.588415,
		39.354206, 37.411762, 51.393970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938896, 37.978565, 51.388889>,  <39.919357, 37.442612, 50.982079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938896, 37.978565, 51.388889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.666344, 37.769066, 51.593403>,  <39.502811, 37.643368, 51.716110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.666344, 37.769066, 51.593403>,  <39.938896, 37.978565, 51.388889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666344, 37.769066, 51.593403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347735, 0.383031, 0.855785,
		-0.644050, 0.760907, -0.078866,
		-0.681381, -0.523744, 0.511286,
		39.461929, 37.611942, 51.746788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673218, 38.448902, 51.894085>,  <39.938896, 37.978565, 51.388889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673218, 38.448902, 51.894085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598049, 38.079041, 52.026566>,  <39.552948, 37.857124, 52.106052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598049, 38.079041, 52.026566>,  <39.673218, 38.448902, 51.894085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598049, 38.079041, 52.026566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548730, 0.180831, 0.816208,
		-0.814604, 0.335124, 0.473405,
		-0.187924, -0.924658, 0.331199,
		39.541672, 37.801643, 52.125927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649708, 38.482845, 52.618317>,  <39.673218, 38.448902, 51.894085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649708, 38.482845, 52.618317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.719799, 38.098011, 52.534710>,  <39.761852, 37.867111, 52.484547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.719799, 38.098011, 52.534710>,  <39.649708, 38.482845, 52.618317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719799, 38.098011, 52.534710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695924, -0.029137, 0.717524,
		-0.696409, -0.271193, 0.664431,
		0.175227, -0.962084, -0.209021,
		39.772366, 37.809387, 52.472004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688549, 38.316231, 53.234249>,  <39.649708, 38.482845, 52.618317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688549, 38.316231, 53.234249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.881634, 38.018105, 53.050297>,  <39.997482, 37.839226, 52.939926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.881634, 38.018105, 53.050297>,  <39.688549, 38.316231, 53.234249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881634, 38.018105, 53.050297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764108, 0.101833, 0.637000,
		-0.427938, -0.658883, 0.618661,
		0.482709, -0.745320, -0.459880,
		40.026447, 37.794510, 52.912334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983269, 37.891197, 53.814682>,  <39.688549, 38.316231, 53.234249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983269, 37.891197, 53.814682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.195129, 37.828793, 53.481186>,  <40.322247, 37.791351, 53.281086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.195129, 37.828793, 53.481186>,  <39.983269, 37.891197, 53.814682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195129, 37.828793, 53.481186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839561, -0.043621, 0.541511,
		-0.120852, -0.986791, 0.107879,
		0.529653, -0.156014, -0.833743,
		40.354027, 37.781990, 53.231064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.634418, 37.802532, 37.615429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026928, 37.835728, 37.684967>,  <35.262432, 37.855644, 37.726688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026928, 37.835728, 37.684967>,  <34.634418, 37.802532, 37.615429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026928, 37.835728, 37.684967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174776, 0.004008, 0.984600,
		0.081022, -0.996542, 0.018439,
		0.981269, 0.082997, 0.173847,
		35.321308, 37.860626, 37.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783253, 37.262585, 38.067188>,  <34.634418, 37.802532, 37.615429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783253, 37.262585, 38.067188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063816, 37.544155, 38.111923>,  <35.232155, 37.713097, 38.138763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063816, 37.544155, 38.111923>,  <34.783253, 37.262585, 38.067188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063816, 37.544155, 38.111923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002920, -0.159748, 0.987154,
		0.712751, -0.692074, -0.114105,
		0.701412, 0.703928, 0.111839,
		35.274239, 37.755333, 38.145473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216675, 36.951675, 38.526489>,  <34.783253, 37.262585, 38.067188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216675, 36.951675, 38.526489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298622, 37.343182, 38.529373>,  <35.347790, 37.578083, 38.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298622, 37.343182, 38.529373>,  <35.216675, 36.951675, 38.526489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298622, 37.343182, 38.529373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055233, -0.018912, 0.998295,
		0.977230, -0.204119, -0.057935,
		0.204866, 0.978764, 0.007208,
		35.360081, 37.636810, 38.531536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649132, 37.016846, 38.976006>,  <35.216675, 36.951675, 38.526489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649132, 37.016846, 38.976006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541119, 37.401714, 38.961514>,  <35.476311, 37.632633, 38.952820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541119, 37.401714, 38.961514>,  <35.649132, 37.016846, 38.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541119, 37.401714, 38.961514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236007, 0.102624, 0.966318,
		0.933478, 0.252390, -0.254790,
		-0.270036, 0.962168, -0.036231,
		35.460106, 37.690365, 38.950645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238911, 37.503357, 39.323769>,  <35.649132, 37.016846, 38.976006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238911, 37.503357, 39.323769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890255, 37.698544, 39.342205>,  <35.681061, 37.815655, 39.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890255, 37.698544, 39.342205>,  <36.238911, 37.503357, 39.323769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890255, 37.698544, 39.342205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200315, 0.268829, 0.942128,
		0.447339, 0.830432, -0.332070,
		-0.871643, 0.487969, 0.046091,
		35.628761, 37.844933, 39.356033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392422, 38.099041, 39.696281>,  <36.238911, 37.503357, 39.323769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392422, 38.099041, 39.696281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993038, 38.085335, 39.713741>,  <35.753407, 38.077110, 39.724216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993038, 38.085335, 39.713741>,  <36.392422, 38.099041, 39.696281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993038, 38.085335, 39.713741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027308, 0.381356, 0.924025,
		-0.048306, 0.923793, -0.379833,
		-0.998459, -0.034264, 0.043649,
		35.693501, 38.075054, 39.726837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143597, 38.809929, 39.825714>,  <36.392422, 38.099041, 39.696281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143597, 38.809929, 39.825714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861786, 38.561005, 39.962166>,  <35.692699, 38.411648, 40.044037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861786, 38.561005, 39.962166>,  <36.143597, 38.809929, 39.825714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861786, 38.561005, 39.962166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091815, 0.396711, 0.913340,
		-0.703712, 0.674794, -0.222356,
		-0.704528, -0.622313, 0.341126,
		35.650429, 38.374310, 40.064503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709873, 39.258183, 40.270130>,  <36.143597, 38.809929, 39.825714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709873, 39.258183, 40.270130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579895, 38.894592, 40.374569>,  <35.501907, 38.676437, 40.437233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579895, 38.894592, 40.374569>,  <35.709873, 39.258183, 40.270130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579895, 38.894592, 40.374569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035040, 0.287457, 0.957152,
		-0.945084, 0.301872, -0.125258,
		-0.324944, -0.908978, 0.261094,
		35.482410, 38.621899, 40.452896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182903, 39.350349, 40.681622>,  <35.709873, 39.258183, 40.270130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182903, 39.350349, 40.681622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315266, 38.985420, 40.778099>,  <35.394684, 38.766464, 40.835987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315266, 38.985420, 40.778099>,  <35.182903, 39.350349, 40.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315266, 38.985420, 40.778099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012854, 0.251214, 0.967846,
		-0.943576, -0.323367, 0.071402,
		0.330906, -0.912319, 0.241196,
		35.414539, 38.711723, 40.850456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890312, 39.191849, 41.314190>,  <35.182903, 39.350349, 40.681622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890312, 39.191849, 41.314190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195049, 38.932964, 41.303432>,  <35.377892, 38.777634, 41.296978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195049, 38.932964, 41.303432>,  <34.890312, 39.191849, 41.314190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195049, 38.932964, 41.303432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045918, 0.012546, 0.998866,
		-0.646137, -0.762210, 0.039276,
		0.761838, -0.647208, -0.026893,
		35.423599, 38.738800, 41.295364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717640, 38.628117, 41.784992>,  <34.890312, 39.191849, 41.314190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717640, 38.628117, 41.784992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115086, 38.639351, 41.741283>,  <35.353554, 38.646091, 41.715057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115086, 38.639351, 41.741283>,  <34.717640, 38.628117, 41.784992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115086, 38.639351, 41.741283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106389, 0.089214, 0.990314,
		0.037563, -0.995616, 0.085657,
		0.993615, 0.028087, -0.109274,
		35.413170, 38.647778, 41.708500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948685, 38.289566, 42.341419>,  <34.717640, 38.628117, 41.784992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948685, 38.289566, 42.341419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295418, 38.447826, 42.220055>,  <35.503460, 38.542782, 42.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295418, 38.447826, 42.220055>,  <34.948685, 38.289566, 42.341419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295418, 38.447826, 42.220055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261501, 0.157350, 0.952291,
		0.424513, -0.904822, 0.032934,
		0.866837, 0.395648, -0.303410,
		35.555470, 38.566521, 42.129032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245655, 37.514202, 42.435482>,  <34.948685, 38.289566, 42.341419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245655, 37.514202, 42.435482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880905, 37.440346, 42.582119>,  <34.662056, 37.396030, 42.670101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880905, 37.440346, 42.582119>,  <35.245655, 37.514202, 42.435482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880905, 37.440346, 42.582119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395766, 0.158649, -0.904544,
		0.108858, -0.969916, -0.217744,
		-0.911877, -0.184643, 0.366590,
		34.607342, 37.384953, 42.692097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933277, 36.970390, 42.026283>,  <35.245655, 37.514202, 42.435482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933277, 36.970390, 42.026283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618233, 37.140587, 42.204552>,  <34.429207, 37.242702, 42.311512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618233, 37.140587, 42.204552>,  <34.933277, 36.970390, 42.026283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618233, 37.140587, 42.204552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538380, -0.123435, -0.833613,
		-0.299682, -0.896506, 0.326294,
		-0.787615, 0.425489, 0.445670,
		34.381947, 37.268234, 42.338253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454082, 36.561981, 41.903111>,  <34.933277, 36.970390, 42.026283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454082, 36.561981, 41.903111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247990, 36.891304, 41.998363>,  <34.124332, 37.088898, 42.055515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247990, 36.891304, 41.998363>,  <34.454082, 36.561981, 41.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247990, 36.891304, 41.998363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623121, -0.169082, -0.763630,
		-0.588435, -0.541834, 0.600134,
		-0.515233, 0.823303, 0.238134,
		34.093418, 37.138294, 42.069805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747208, 36.376251, 42.032063>,  <34.454082, 36.561981, 41.903111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747208, 36.376251, 42.032063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751591, 36.765522, 41.940147>,  <33.754219, 36.999084, 41.884998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751591, 36.765522, 41.940147>,  <33.747208, 36.376251, 42.032063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751591, 36.765522, 41.940147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832305, -0.118490, -0.541506,
		-0.554210, 0.197191, 0.808682,
		0.010959, 0.973178, -0.229791,
		33.754879, 37.057476, 41.871208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008533, 36.622940, 42.034435>,  <33.747208, 36.376251, 42.032063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008533, 36.622940, 42.034435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208855, 36.898006, 41.824173>,  <33.329048, 37.063046, 41.698017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208855, 36.898006, 41.824173>,  <33.008533, 36.622940, 42.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208855, 36.898006, 41.824173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756004, 0.051789, -0.652515,
		-0.421488, 0.724180, 0.545813,
		0.500805, 0.687664, -0.525655,
		33.359097, 37.104305, 41.666477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403423, 37.131336, 41.945900>,  <33.008533, 36.622940, 42.034435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403423, 37.131336, 41.945900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687012, 37.224598, 41.679668>,  <32.857166, 37.280556, 41.519932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687012, 37.224598, 41.679668>,  <32.403423, 37.131336, 41.945900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687012, 37.224598, 41.679668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698366, 0.100723, -0.708618,
		-0.098181, 0.967208, 0.234239,
		0.708974, 0.233158, -0.665577,
		32.899704, 37.294544, 41.479996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088676, 37.681484, 41.586338>,  <32.403423, 37.131336, 41.945900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088676, 37.681484, 41.586338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366737, 37.536751, 41.337875>,  <32.533573, 37.449909, 41.188797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366737, 37.536751, 41.337875>,  <32.088676, 37.681484, 41.586338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366737, 37.536751, 41.337875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649522, 0.054105, -0.758415,
		0.308031, 0.930669, -0.197410,
		0.695153, -0.361838, -0.621156,
		32.575283, 37.428200, 41.151527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990446, 38.110519, 40.937469>,  <32.088676, 37.681484, 41.586338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990446, 38.110519, 40.937469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180359, 37.781197, 40.813053>,  <32.294308, 37.583603, 40.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180359, 37.781197, 40.813053>,  <31.990446, 38.110519, 40.937469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180359, 37.781197, 40.813053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597665, -0.042184, -0.800636,
		0.646048, 0.566027, -0.512090,
		0.474784, -0.823307, -0.311041,
		32.322792, 37.534206, 40.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080063, 38.254532, 40.238323>,  <31.990446, 38.110519, 40.937469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080063, 38.254532, 40.238323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114700, 37.857456, 40.271942>,  <32.135483, 37.619209, 40.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114700, 37.857456, 40.271942>,  <32.080063, 38.254532, 40.238323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114700, 37.857456, 40.271942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486009, -0.115737, -0.866256,
		0.869653, 0.034170, -0.492480,
		0.086598, -0.992692, 0.084045,
		32.140678, 37.559650, 40.297157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202213, 37.981121, 39.558807>,  <32.080063, 38.254532, 40.238323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202213, 37.981121, 39.558807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097569, 37.652237, 39.761009>,  <32.034782, 37.454906, 39.882332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097569, 37.652237, 39.761009>,  <32.202213, 37.981121, 39.558807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097569, 37.652237, 39.761009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591793, -0.277095, -0.756967,
		0.762457, -0.497184, -0.414086,
		-0.261610, -0.822209, 0.505503,
		32.019085, 37.405575, 39.912659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368286, 37.343418, 39.190655>,  <32.202213, 37.981121, 39.558807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368286, 37.343418, 39.190655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059437, 37.263439, 39.431934>,  <31.874128, 37.215450, 39.576702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059437, 37.263439, 39.431934>,  <32.368286, 37.343418, 39.190655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059437, 37.263439, 39.431934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589269, -0.130071, -0.797398,
		0.237896, -0.971135, -0.017392,
		-0.772119, -0.199946, 0.603203,
		31.827801, 37.203457, 39.612896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112221, 36.589176, 39.068653>,  <32.368286, 37.343418, 39.190655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112221, 36.589176, 39.068653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804203, 36.763912, 39.254642>,  <31.619392, 36.868755, 39.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804203, 36.763912, 39.254642>,  <32.112221, 36.589176, 39.068653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804203, 36.763912, 39.254642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615180, -0.315275, -0.722603,
		-0.169065, -0.842481, 0.511510,
		-0.770046, 0.436837, 0.464975,
		31.573189, 36.894966, 39.394135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613251, 36.145538, 38.895966>,  <32.112221, 36.589176, 39.068653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613251, 36.145538, 38.895966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385176, 36.445515, 39.030117>,  <31.248331, 36.625500, 39.110607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385176, 36.445515, 39.030117>,  <31.613251, 36.145538, 38.895966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385176, 36.445515, 39.030117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736777, -0.286238, -0.612558,
		-0.363384, -0.596370, 0.715748,
		-0.570185, 0.749941, 0.335377,
		31.214121, 36.670498, 39.130730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926111, 35.856670, 39.107204>,  <31.613251, 36.145538, 38.895966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926111, 35.856670, 39.107204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869205, 36.236629, 38.995876>,  <30.835062, 36.464603, 38.929077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869205, 36.236629, 38.995876>,  <30.926111, 35.856670, 39.107204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869205, 36.236629, 38.995876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668537, -0.299567, -0.680675,
		-0.729945, 0.089233, 0.677656,
		-0.142264, 0.949893, -0.278323,
		30.826527, 36.521599, 38.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955854, 35.356228, 38.609718>,  <30.926111, 35.856670, 39.107204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955854, 35.356228, 38.609718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340469, 35.420361, 38.698929>,  <31.571238, 35.458839, 38.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340469, 35.420361, 38.698929>,  <30.955854, 35.356228, 38.609718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340469, 35.420361, 38.698929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036417, -0.879207, 0.475046,
		0.272254, -0.448652, -0.851228,
		0.961536, 0.160332, 0.223029,
		31.628931, 35.468460, 38.765839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535946, 34.932144, 38.169189>,  <30.955854, 35.356228, 38.609718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535946, 34.932144, 38.169189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647163, 35.018337, 38.543625>,  <31.713894, 35.070053, 38.768288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647163, 35.018337, 38.543625>,  <31.535946, 34.932144, 38.169189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647163, 35.018337, 38.543625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235220, -0.960118, 0.151145,
		0.931323, 0.178161, -0.317640,
		0.278044, 0.215480, 0.936087,
		31.730577, 35.082981, 38.824451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696835, 34.219833, 38.084869>,  <31.535946, 34.932144, 38.169189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696835, 34.219833, 38.084869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858551, 34.011906, 37.783848>,  <31.955582, 33.887150, 37.603233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858551, 34.011906, 37.783848>,  <31.696835, 34.219833, 38.084869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858551, 34.011906, 37.783848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524602, -0.542207, 0.656357,
		-0.749227, -0.660151, 0.053489,
		0.404292, -0.519820, -0.752552,
		31.979839, 33.855961, 37.558083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620808, 33.438942, 38.099163>,  <31.696835, 34.219833, 38.084869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620808, 33.438942, 38.099163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954803, 33.604176, 37.953751>,  <32.155201, 33.703316, 37.866505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954803, 33.604176, 37.953751>,  <31.620808, 33.438942, 38.099163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954803, 33.604176, 37.953751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508184, -0.325501, 0.797369,
		0.211054, -0.850534, -0.481713,
		0.834988, 0.413087, -0.363530,
		32.205299, 33.728100, 37.844692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097504, 32.939911, 37.952694>,  <31.620808, 33.438942, 38.099163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097504, 32.939911, 37.952694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252182, 33.288853, 38.072330>,  <32.344990, 33.498219, 38.144112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252182, 33.288853, 38.072330>,  <32.097504, 32.939911, 37.952694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252182, 33.288853, 38.072330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353291, -0.439715, 0.825734,
		0.851852, -0.213640, -0.478232,
		0.386696, 0.872358, 0.299095,
		32.368191, 33.550560, 38.162060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570312, 32.780117, 38.451015>,  <32.097504, 32.939911, 37.952694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570312, 32.780117, 38.451015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532520, 33.174789, 38.503971>,  <32.509846, 33.411594, 38.535744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532520, 33.174789, 38.503971>,  <32.570312, 32.780117, 38.451015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532520, 33.174789, 38.503971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519929, -0.064495, 0.851771,
		0.848968, 0.149310, -0.506912,
		-0.094485, 0.986685, 0.132385,
		32.504173, 33.470795, 38.543686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212711, 33.008862, 38.602486>,  <32.570312, 32.780117, 38.451015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212711, 33.008862, 38.602486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978363, 33.293537, 38.757542>,  <32.837753, 33.464340, 38.850574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978363, 33.293537, 38.757542>,  <33.212711, 33.008862, 38.602486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978363, 33.293537, 38.757542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617678, 0.082490, 0.782093,
		0.524628, 0.697638, -0.487921,
		-0.585867, 0.711686, 0.387638,
		32.802605, 33.507042, 38.873833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580959, 33.222618, 39.180519>,  <33.212711, 33.008862, 38.602486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580959, 33.222618, 39.180519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227497, 33.386272, 39.271526>,  <33.015419, 33.484463, 39.326130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227497, 33.386272, 39.271526>,  <33.580959, 33.222618, 39.180519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227497, 33.386272, 39.271526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277445, 0.066239, 0.958455,
		0.377065, 0.910068, -0.172045,
		-0.883655, 0.409133, 0.227518,
		32.962402, 33.509010, 39.339783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659081, 33.875187, 39.540283>,  <33.580959, 33.222618, 39.180519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659081, 33.875187, 39.540283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299858, 33.736340, 39.648357>,  <33.084324, 33.653030, 39.713200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299858, 33.736340, 39.648357>,  <33.659081, 33.875187, 39.540283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299858, 33.736340, 39.648357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282631, 0.015310, 0.959106,
		-0.337057, 0.937697, 0.084356,
		-0.898060, -0.347115, 0.270183,
		33.030441, 33.632206, 39.729412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416462, 34.324730, 40.230812>,  <33.659081, 33.875187, 39.540283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416462, 34.324730, 40.230812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 33.991093, 40.210079>,  <33.064991, 33.790909, 40.197639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 33.991093, 40.210079>,  <33.416462, 34.324730, 40.230812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196793, 33.991093, 40.210079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065570, -0.104838, 0.992325,
		-0.833129, 0.541565, 0.112266,
		-0.549178, -0.834096, -0.051833,
		33.032040, 33.740864, 40.194530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991314, 34.351757, 40.801586>,  <33.416462, 34.324730, 40.230812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991314, 34.351757, 40.801586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967251, 33.962868, 40.711109>,  <32.952812, 33.729534, 40.656822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967251, 33.962868, 40.711109>,  <32.991314, 34.351757, 40.801586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967251, 33.962868, 40.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082516, -0.230670, 0.969527,
		-0.994772, 0.039661, 0.094101,
		-0.060159, -0.972223, -0.226192,
		32.949203, 33.671200, 40.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611980, 34.108047, 41.319862>,  <32.991314, 34.351757, 40.801586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611980, 34.108047, 41.319862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792545, 33.792603, 41.152859>,  <32.900883, 33.603336, 41.052654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792545, 33.792603, 41.152859>,  <32.611980, 34.108047, 41.319862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792545, 33.792603, 41.152859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167819, -0.384517, 0.907735,
		-0.876393, -0.479829, -0.041231,
		0.451411, -0.788613, -0.417512,
		32.927967, 33.556019, 41.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432583, 33.540638, 41.733433>,  <32.611980, 34.108047, 41.319862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432583, 33.540638, 41.733433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777809, 33.434612, 41.561447>,  <32.984943, 33.370998, 41.458256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777809, 33.434612, 41.561447>,  <32.432583, 33.540638, 41.733433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777809, 33.434612, 41.561447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258514, -0.499499, 0.826844,
		-0.433925, -0.824770, -0.362578,
		0.863064, -0.265057, -0.429960,
		33.036728, 33.355095, 41.432457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491890, 32.806984, 41.915760>,  <32.432583, 33.540638, 41.733433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491890, 32.806984, 41.915760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860306, 32.920891, 41.809486>,  <33.081356, 32.989235, 41.745720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860306, 32.920891, 41.809486>,  <32.491890, 32.806984, 41.915760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860306, 32.920891, 41.809486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357543, -0.347763, 0.866732,
		0.154420, -0.893291, -0.422120,
		0.921042, 0.284767, -0.265689,
		33.136620, 33.006321, 41.729778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945400, 32.376266, 42.351223>,  <32.491890, 32.806984, 41.915760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945400, 32.376266, 42.351223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192184, 32.649452, 42.194805>,  <33.340256, 32.813366, 42.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192184, 32.649452, 42.194805>,  <32.945400, 32.376266, 42.351223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192184, 32.649452, 42.194805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547765, -0.015889, 0.836481,
		0.565075, -0.730277, -0.383908,
		0.616963, 0.682966, -0.391042,
		33.377274, 32.854343, 42.077492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702385, 32.055637, 42.493656>,  <32.945400, 32.376266, 42.351223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702385, 32.055637, 42.493656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734127, 32.451042, 42.442200>,  <33.753174, 32.688286, 42.411327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734127, 32.451042, 42.442200>,  <33.702385, 32.055637, 42.493656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734127, 32.451042, 42.442200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598884, 0.055887, 0.798884,
		0.796895, -0.140436, -0.587568,
		0.079355, 0.988511, -0.128641,
		33.757935, 32.747597, 42.403606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407185, 32.268333, 42.408657>,  <33.702385, 32.055637, 42.493656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407185, 32.268333, 42.408657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219872, 32.590637, 42.553688>,  <34.107483, 32.784019, 42.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219872, 32.590637, 42.553688>,  <34.407185, 32.268333, 42.408657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219872, 32.590637, 42.553688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723627, 0.114256, 0.680668,
		0.507029, 0.581114, -0.636575,
		-0.468278, 0.805762, 0.362579,
		34.079388, 32.832367, 42.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938923, 32.505810, 42.855579>,  <34.407185, 32.268333, 42.408657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938923, 32.505810, 42.855579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645470, 32.761478, 42.947876>,  <34.469398, 32.914879, 43.003254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645470, 32.761478, 42.947876>,  <34.938923, 32.505810, 42.855579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645470, 32.761478, 42.947876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432377, 0.177111, 0.884128,
		0.524242, 0.748393, -0.406297,
		-0.733635, 0.639171, 0.230739,
		34.425381, 32.953228, 43.017097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241783, 33.202858, 43.094471>,  <34.938923, 32.505810, 42.855579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241783, 33.202858, 43.094471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880024, 33.141125, 43.253593>,  <34.662968, 33.104084, 43.349068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880024, 33.141125, 43.253593>,  <35.241783, 33.202858, 43.094471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880024, 33.141125, 43.253593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405189, -0.018384, 0.914048,
		-0.133751, 0.987848, 0.079160,
		-0.904396, -0.154330, 0.397806,
		34.608704, 33.094826, 43.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127357, 33.801540, 43.509621>,  <35.241783, 33.202858, 43.094471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127357, 33.801540, 43.509621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905556, 33.512653, 43.674995>,  <34.772476, 33.339321, 43.774220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905556, 33.512653, 43.674995>,  <35.127357, 33.801540, 43.509621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905556, 33.512653, 43.674995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429197, 0.177441, 0.885609,
		-0.712964, 0.668517, 0.211583,
		-0.554501, -0.722219, 0.413435,
		34.739204, 33.295986, 43.799026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136311, 33.971195, 44.178955>,  <35.127357, 33.801540, 43.509621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136311, 33.971195, 44.178955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006237, 33.595127, 44.219604>,  <34.928192, 33.369484, 44.243992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006237, 33.595127, 44.219604>,  <35.136311, 33.971195, 44.178955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006237, 33.595127, 44.219604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451327, -0.059868, 0.890348,
		-0.830999, 0.335391, 0.443794,
		-0.325184, -0.940175, 0.101621,
		34.908684, 33.313076, 44.250092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766129, 33.899784, 44.836750>,  <35.136311, 33.971195, 44.178955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766129, 33.899784, 44.836750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891998, 33.533085, 44.738323>,  <34.967522, 33.313065, 44.679268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891998, 33.533085, 44.738323>,  <34.766129, 33.899784, 44.836750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891998, 33.533085, 44.738323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290120, -0.153934, 0.944529,
		-0.903774, -0.368610, 0.217528,
		0.314678, -0.916750, -0.246063,
		34.986401, 33.258060, 44.664505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545383, 33.566181, 45.396549>,  <34.766129, 33.899784, 44.836750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545383, 33.566181, 45.396549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801743, 33.311008, 45.225769>,  <34.955559, 33.157906, 45.123299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801743, 33.311008, 45.225769>,  <34.545383, 33.566181, 45.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801743, 33.311008, 45.225769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361362, -0.239986, 0.901013,
		-0.677249, -0.731743, 0.076718,
		0.640898, -0.637933, -0.426955,
		34.994011, 33.119629, 45.097683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458916, 32.903427, 45.808765>,  <34.545383, 33.566181, 45.396549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458916, 32.903427, 45.808765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815693, 32.882107, 45.629166>,  <35.029758, 32.869312, 45.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815693, 32.882107, 45.629166>,  <34.458916, 32.903427, 45.808765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815693, 32.882107, 45.629166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402502, -0.358807, 0.842170,
		-0.205996, -0.931889, -0.298579,
		0.891940, -0.053305, -0.449000,
		35.083275, 32.866116, 45.494465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727448, 32.272976, 45.966255>,  <34.458916, 32.903427, 45.808765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727448, 32.272976, 45.966255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035088, 32.508686, 45.867275>,  <35.219673, 32.650112, 45.807888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035088, 32.508686, 45.867275>,  <34.727448, 32.272976, 45.966255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035088, 32.508686, 45.867275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482474, -0.281387, 0.829482,
		0.419162, -0.757349, -0.500726,
		0.769105, 0.589274, -0.247454,
		35.265820, 32.685467, 45.793037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363125, 31.877556, 46.068195>,  <34.727448, 32.272976, 45.966255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363125, 31.877556, 46.068195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450848, 32.267242, 46.089382>,  <35.503483, 32.501053, 46.102097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450848, 32.267242, 46.089382>,  <35.363125, 31.877556, 46.068195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450848, 32.267242, 46.089382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534232, -0.165337, 0.829012,
		0.816396, -0.153508, -0.556717,
		0.219305, 0.974217, 0.052971,
		35.516640, 32.559509, 46.105274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072582, 31.894749, 46.352699>,  <35.363125, 31.877556, 46.068195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072582, 31.894749, 46.352699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919617, 32.256023, 46.430683>,  <35.827839, 32.472790, 46.477474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919617, 32.256023, 46.430683>,  <36.072582, 31.894749, 46.352699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919617, 32.256023, 46.430683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435073, -0.010138, 0.900338,
		0.815152, 0.429123, -0.389076,
		-0.382412, 0.903189, 0.194964,
		35.804893, 32.526981, 46.489174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577492, 32.301525, 46.622871>,  <36.072582, 31.894749, 46.352699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577492, 32.301525, 46.622871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235603, 32.468578, 46.746178>,  <36.030468, 32.568810, 46.820160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235603, 32.468578, 46.746178>,  <36.577492, 32.301525, 46.622871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235603, 32.468578, 46.746178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364944, 0.061157, 0.929018,
		0.369140, 0.906554, -0.204686,
		-0.854723, 0.417637, 0.308266,
		35.979187, 32.593868, 46.838657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043594, 32.697762, 46.602406>,  <36.577492, 32.301525, 46.622871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043594, 32.697762, 46.602406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442314, 32.671593, 46.584068>,  <37.681545, 32.655891, 46.573067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442314, 32.671593, 46.584068>,  <37.043594, 32.697762, 46.602406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442314, 32.671593, 46.584068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051868, -0.093593, -0.994259,
		0.060759, 0.993459, -0.096688,
		0.996804, -0.065426, -0.045842,
		37.741356, 32.651966, 46.570316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 33.277351, 46.203785>,  <37.043594, 32.697762, 46.602406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296993, 33.277351, 46.203785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548759, 32.966591, 46.197327>,  <37.699818, 32.780132, 46.193451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548759, 32.966591, 46.197327>,  <37.296993, 33.277351, 46.203785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548759, 32.966591, 46.197327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075800, -0.040701, -0.996292,
		0.773365, 0.628303, -0.084507,
		0.629413, -0.776903, -0.016149,
		37.737583, 32.733521, 46.192482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671700, 33.415291, 45.603420>,  <37.296993, 33.277351, 46.203785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671700, 33.415291, 45.603420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761372, 33.033298, 45.681137>,  <37.815174, 32.804104, 45.727768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761372, 33.033298, 45.681137>,  <37.671700, 33.415291, 45.603420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761372, 33.033298, 45.681137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046318, -0.188704, -0.980941,
		0.973446, 0.228908, 0.001929,
		0.224181, -0.954983, 0.194296,
		37.828625, 32.746803, 45.739426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257545, 33.338062, 45.192719>,  <37.671700, 33.415291, 45.603420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257545, 33.338062, 45.192719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082996, 32.984512, 45.260052>,  <37.978268, 32.772381, 45.300453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082996, 32.984512, 45.260052>,  <38.257545, 33.338062, 45.192719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082996, 32.984512, 45.260052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062375, -0.216353, -0.974321,
		0.897602, -0.414666, 0.149542,
		-0.436372, -0.883880, 0.168334,
		37.952084, 32.719349, 45.310551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754787, 32.861961, 44.867081>,  <38.257545, 33.338062, 45.192719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754787, 32.861961, 44.867081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396713, 32.690891, 44.917259>,  <38.181870, 32.588249, 44.947365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396713, 32.690891, 44.917259>,  <38.754787, 32.861961, 44.867081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396713, 32.690891, 44.917259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028781, -0.336343, -0.941300,
		0.444759, -0.839030, 0.313399,
		-0.895188, -0.427671, 0.125443,
		38.128159, 32.562592, 44.954891>
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
