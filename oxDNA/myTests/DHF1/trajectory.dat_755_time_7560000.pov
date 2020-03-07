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
	<-0.969880, 2.473279, 2.982332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.898083, 2.858870, 3.060848>,  <-0.855004, 3.090224, 3.107958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.898083, 2.858870, 3.060848>,  <-0.969880, 2.473279, 2.982332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.898083, 2.858870, 3.060848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979373, -0.156278, -0.128088,
		-0.092798, 0.215234, -0.972144,
		0.179493, 0.963977, 0.196292,
		-0.844235, 3.148063, 3.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.565614, 2.771093, 2.479550>,  <-0.969880, 2.473279, 2.982332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.565614, 2.771093, 2.479550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.493027, 2.965450, 2.821539>,  <-0.449474, 3.082065, 3.026732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.493027, 2.965450, 2.821539>,  <-0.565614, 2.771093, 2.479550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.493027, 2.965450, 2.821539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980457, -0.156574, -0.119120,
		0.075986, 0.859879, -0.504811,
		0.181469, 0.485894, 0.854972,
		-0.438586, 3.111218, 3.078030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.200178, 3.416947, 2.401292>,  <-0.565614, 2.771093, 2.479550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.200178, 3.416947, 2.401292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.115513, 3.251289, 2.755396>,  <-0.064714, 3.151895, 2.967858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.115513, 3.251289, 2.755396>,  <-0.200178, 3.416947, 2.401292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.115513, 3.251289, 2.755396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972974, 0.003745, -0.230882,
		0.092303, 0.910204, 0.403743,
		0.211662, -0.414143, 0.885260,
		-0.052014, 3.127046, 3.020974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.432341, 3.618505, 2.483536>,  <-0.200178, 3.416947, 2.401292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.432341, 3.618505, 2.483536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.407406, 3.322435, 2.751345>,  <0.392445, 3.144794, 2.912030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.407406, 3.322435, 2.751345>,  <0.432341, 3.618505, 2.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.407406, 3.322435, 2.751345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984330, -0.156465, -0.081326,
		0.164951, 0.653959, 0.738328,
		-0.062339, -0.740173, 0.669520,
		0.388704, 3.100384, 2.952201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.958211, 3.735244, 3.149788>,  <0.432341, 3.618505, 2.483536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.958211, 3.735244, 3.149788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.870590, 3.350943, 3.081705>,  <0.818018, 3.120362, 3.040855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.870590, 3.350943, 3.081705>,  <0.958211, 3.735244, 3.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.870590, 3.350943, 3.081705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975410, -0.219977, -0.013637,
		-0.024340, -0.169010, 0.985314,
		-0.219051, -0.960753, -0.170208,
		0.804875, 3.062717, 3.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.388205, 3.355294, 3.575727>,  <0.958211, 3.735244, 3.149788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.388205, 3.355294, 3.575727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.294388, 3.055099, 3.328579>,  <1.238098, 2.874983, 3.180290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.294388, 3.055099, 3.328579>,  <1.388205, 3.355294, 3.575727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.294388, 3.055099, 3.328579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945135, -0.324729, 0.035655,
		-0.227398, -0.575607, 0.785472,
		-0.234542, -0.750485, -0.617869,
		1.224025, 2.829954, 3.143218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.616769, 2.694724, 3.888437>,  <1.388205, 3.355294, 3.575727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.616769, 2.694724, 3.888437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.576553, 2.599840, 3.501940>,  <1.552424, 2.542910, 3.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.576553, 2.599840, 3.501940>,  <1.616769, 2.694724, 3.888437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.576553, 2.599840, 3.501940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800166, -0.596443, 0.063165,
		-0.591292, -0.766804, 0.249773,
		-0.100540, -0.237209, -0.966242,
		1.546391, 2.528677, 3.212067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.815233, 2.007985, 3.926558>,  <1.616769, 2.694724, 3.888437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.815233, 2.007985, 3.926558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.834988, 2.147541, 3.552214>,  <1.846841, 2.231275, 3.327607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.834988, 2.147541, 3.552214>,  <1.815233, 2.007985, 3.926558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.834988, 2.147541, 3.552214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811905, -0.559743, -0.165827,
		-0.581697, -0.751640, -0.310910,
		0.049387, 0.348890, -0.935861,
		1.849804, 2.252208, 3.271455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.766762, 2.283866, 3.538139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773788, 2.055733, 3.209648>,  <2.778004, 1.918853, 3.012554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773788, 2.055733, 3.209648>,  <2.766762, 2.283866, 3.538139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.773788, 2.055733, 3.209648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779529, 0.522156, -0.345959,
		0.626120, -0.634093, 0.453762,
		0.017565, -0.570332, -0.821226,
		2.779058, 1.884633, 2.963280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.870313, 2.828279, 3.083262>,  <2.766762, 2.283866, 3.538139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.870313, 2.828279, 3.083262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751511, 2.528339, 2.846783>,  <2.680229, 2.348376, 2.704895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751511, 2.528339, 2.846783>,  <2.870313, 2.828279, 3.083262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.751511, 2.528339, 2.846783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952995, 0.271611, 0.134268,
		0.059895, 0.603287, -0.795272,
		-0.297007, -0.749848, -0.591198,
		2.662409, 2.303385, 2.669423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444997, 3.048903, 2.440252>,  <2.870313, 2.828279, 3.083262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444997, 3.048903, 2.440252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335739, 2.690651, 2.580673>,  <2.270185, 2.475700, 2.664926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335739, 2.690651, 2.580673>,  <2.444997, 3.048903, 2.440252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.335739, 2.690651, 2.580673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954620, 0.297398, 0.015977,
		-0.118712, -0.330759, -0.936219,
		-0.273145, -0.895630, 0.351054,
		2.253796, 2.421962, 2.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.874615, 2.729357, 2.051710>,  <2.444997, 3.048903, 2.440252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.874615, 2.729357, 2.051710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.870583, 2.565971, 2.416798>,  <1.868163, 2.467940, 2.635850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.870583, 2.565971, 2.416798>,  <1.874615, 2.729357, 2.051710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.870583, 2.565971, 2.416798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998178, 0.058407, 0.015114,
		-0.059483, -0.910904, -0.408308,
		-0.010080, -0.408463, 0.912719,
		1.867558, 2.443432, 2.690613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.299082, 2.364175, 1.992961>,  <1.874615, 2.729357, 2.051710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.299082, 2.364175, 1.992961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396629, 2.409042, 2.378281>,  <1.455158, 2.435963, 2.609473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396629, 2.409042, 2.378281>,  <1.299082, 2.364175, 1.992961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.396629, 2.409042, 2.378281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944166, 0.254360, 0.209407,
		-0.221536, -0.960583, 0.167936,
		0.243869, 0.112169, 0.963299,
		1.469790, 2.442693, 2.667270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.735117, 2.017630, 2.304803>,  <1.299082, 2.364175, 1.992961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.735117, 2.017630, 2.304803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.899483, 2.256248, 2.580566>,  <0.998102, 2.399419, 2.746024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.899483, 2.256248, 2.580566>,  <0.735117, 2.017630, 2.304803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.899483, 2.256248, 2.580566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897570, 0.132217, 0.420578,
		0.159747, -0.791607, 0.589778,
		0.410912, 0.596554, 0.689402,
		1.022757, 2.435212, 2.787389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.402163, 1.831984, 3.009893>,  <0.735117, 2.017630, 2.304803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.402163, 1.831984, 3.009893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.543060, 2.203686, 3.054459>,  <0.627599, 2.426707, 3.081198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.543060, 2.203686, 3.054459>,  <0.402163, 1.831984, 3.009893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.543060, 2.203686, 3.054459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854367, 0.270668, 0.443616,
		0.382076, -0.251448, 0.889265,
		0.352242, 0.929254, 0.111413,
		0.648733, 2.482462, 3.087883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.238244, 2.035608, 3.747826>,  <0.402163, 1.831984, 3.009893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.238244, 2.035608, 3.747826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.285881, 2.363159, 3.523235>,  <0.314463, 2.559690, 3.388481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.285881, 2.363159, 3.523235>,  <0.238244, 2.035608, 3.747826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.285881, 2.363159, 3.523235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870882, 0.357741, 0.337025,
		0.476846, 0.448842, 0.755750,
		0.119092, 0.818879, -0.561476,
		0.321609, 2.608823, 3.354793>
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
