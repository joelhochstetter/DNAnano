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
	<24.315485, 34.556351, 35.381001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312866, 34.800560, 35.064213>,  <24.311295, 34.947086, 34.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312866, 34.800560, 35.064213>,  <24.315485, 34.556351, 35.381001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312866, 34.800560, 35.064213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657724, -0.593935, -0.463293,
		-0.753231, -0.523931, -0.397668,
		-0.006545, 0.610522, -0.791972,
		24.310904, 34.983715, 34.826622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.070089, 34.174858, 34.740448>,  <24.315485, 34.556351, 35.381001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.070089, 34.174858, 34.740448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313593, 34.484737, 34.672031>,  <24.459696, 34.670666, 34.630981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313593, 34.484737, 34.672031>,  <24.070089, 34.174858, 34.740448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313593, 34.484737, 34.672031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602071, -0.591518, -0.536300,
		-0.516646, 0.223496, -0.826514,
		0.608759, 0.774698, -0.171045,
		24.496220, 34.717148, 34.620716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.236479, 34.142330, 34.067783>,  <24.070089, 34.174858, 34.740448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.236479, 34.142330, 34.067783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525713, 34.336056, 34.264793>,  <24.699253, 34.452290, 34.382999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525713, 34.336056, 34.264793>,  <24.236479, 34.142330, 34.067783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525713, 34.336056, 34.264793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688127, -0.567203, -0.452505,
		0.060210, 0.666124, -0.743407,
		0.723087, 0.484314, 0.492529,
		24.742640, 34.481350, 34.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804115, 34.348751, 33.510670>,  <24.236479, 34.142330, 34.067783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804115, 34.348751, 33.510670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965437, 34.340820, 33.876610>,  <25.062229, 34.336063, 34.096176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965437, 34.340820, 33.876610>,  <24.804115, 34.348751, 33.510670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965437, 34.340820, 33.876610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734883, -0.588697, -0.336723,
		0.545247, 0.808110, -0.222853,
		0.403302, -0.019827, 0.914852,
		25.086428, 34.334873, 34.151066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612253, 34.526524, 33.437405>,  <24.804115, 34.348751, 33.510670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612253, 34.526524, 33.437405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556770, 34.343498, 33.788723>,  <25.523481, 34.233685, 33.999512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556770, 34.343498, 33.788723>,  <25.612253, 34.526524, 33.437405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556770, 34.343498, 33.788723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680973, -0.687993, -0.250881,
		0.719053, 0.563294, 0.407017,
		-0.138706, -0.457564, 0.878291,
		25.515158, 34.206230, 34.052212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192127, 34.389915, 33.783161>,  <25.612253, 34.526524, 33.437405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192127, 34.389915, 33.783161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930897, 34.106419, 33.889874>,  <25.774158, 33.936321, 33.953899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930897, 34.106419, 33.889874>,  <26.192127, 34.389915, 33.783161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930897, 34.106419, 33.889874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650939, -0.705400, -0.280516,
		0.386999, -0.009543, 0.922031,
		-0.653077, -0.708745, 0.266777,
		25.734974, 33.893795, 33.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604046, 33.764381, 34.174911>,  <26.192127, 34.389915, 33.783161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604046, 33.764381, 34.174911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262232, 33.626839, 34.019203>,  <26.057142, 33.544315, 33.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262232, 33.626839, 34.019203>,  <26.604046, 33.764381, 34.174911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262232, 33.626839, 34.019203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487617, -0.789237, -0.373276,
		-0.178875, -0.508793, 0.842101,
		-0.854537, -0.343853, -0.389271,
		26.005871, 33.523682, 33.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505827, 33.107487, 34.367489>,  <26.604046, 33.764381, 34.174911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505827, 33.107487, 34.367489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324993, 33.174229, 34.016998>,  <26.216492, 33.214275, 33.806702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324993, 33.174229, 34.016998>,  <26.505827, 33.107487, 34.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324993, 33.174229, 34.016998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624773, -0.641880, -0.444578,
		-0.636612, -0.748432, 0.185942,
		-0.452088, 0.166852, -0.876228,
		26.189367, 33.224285, 33.754131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296047, 32.463066, 34.061474>,  <26.505827, 33.107487, 34.367489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296047, 32.463066, 34.061474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338219, 32.726055, 33.763046>,  <26.363522, 32.883846, 33.583988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338219, 32.726055, 33.763046>,  <26.296047, 32.463066, 34.061474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338219, 32.726055, 33.763046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677914, -0.596416, -0.429791,
		-0.727542, -0.460460, -0.508585,
		0.105427, 0.657469, -0.746070,
		26.369846, 32.923294, 33.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401115, 32.113873, 33.296253>,  <26.296047, 32.463066, 34.061474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401115, 32.113873, 33.296253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565619, 32.474548, 33.242847>,  <26.664320, 32.690952, 33.210804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565619, 32.474548, 33.242847>,  <26.401115, 32.113873, 33.296253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565619, 32.474548, 33.242847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814186, -0.429239, -0.390966,
		-0.409841, 0.052078, -0.910669,
		0.411256, 0.901688, -0.133518,
		26.688995, 32.745056, 33.202793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734318, 31.970467, 32.722961>,  <26.401115, 32.113873, 33.296253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734318, 31.970467, 32.722961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877522, 32.327034, 32.834099>,  <26.963444, 32.540974, 32.900784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877522, 32.327034, 32.834099>,  <26.734318, 31.970467, 32.722961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877522, 32.327034, 32.834099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911246, -0.268677, -0.312158,
		-0.203613, 0.364942, -0.908493,
		0.358011, 0.891420, 0.277846,
		26.984924, 32.594460, 32.917454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044455, 32.204327, 32.228798>,  <26.734318, 31.970467, 32.722961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044455, 32.204327, 32.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217176, 32.380852, 32.543449>,  <27.320810, 32.486767, 32.732243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217176, 32.380852, 32.543449>,  <27.044455, 32.204327, 32.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217176, 32.380852, 32.543449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901342, -0.178682, -0.394532,
		-0.033553, 0.879386, -0.474927,
		0.431807, 0.441309, 0.786632,
		27.346718, 32.513245, 32.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828045, 32.190075, 32.068466>,  <27.044455, 32.204327, 32.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828045, 32.190075, 32.068466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111757, 32.327816, 32.314503>,  <28.281984, 32.410461, 32.462124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111757, 32.327816, 32.314503>,  <27.828045, 32.190075, 32.068466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111757, 32.327816, 32.314503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672223, 0.593098, 0.443115,
		-0.212220, -0.727773, 0.652158,
		0.709281, 0.344357, 0.615093,
		28.324541, 32.431122, 32.499031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705343, 31.970888, 32.847816>,  <27.828045, 32.190075, 32.068466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705343, 31.970888, 32.847816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918266, 32.304466, 32.789600>,  <28.046021, 32.504612, 32.754669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918266, 32.304466, 32.789600>,  <27.705343, 31.970888, 32.847816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918266, 32.304466, 32.789600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648668, 0.512273, 0.562856,
		0.543951, -0.205200, 0.813640,
		0.532304, 0.833948, -0.145545,
		28.077959, 32.554649, 32.745937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788160, 32.299751, 33.471848>,  <27.705343, 31.970888, 32.847816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788160, 32.299751, 33.471848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794518, 32.569717, 33.176758>,  <27.798332, 32.731697, 32.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794518, 32.569717, 33.176758>,  <27.788160, 32.299751, 33.471848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794518, 32.569717, 33.176758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830117, 0.420192, 0.366528,
		0.557362, 0.606576, 0.566934,
		0.015894, 0.674911, -0.737728,
		27.799286, 32.772190, 32.955441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726400, 33.045971, 33.718983>,  <27.788160, 32.299751, 33.471848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726400, 33.045971, 33.718983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600437, 33.003532, 33.341713>,  <27.524860, 32.978069, 33.115353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600437, 33.003532, 33.341713>,  <27.726400, 33.045971, 33.718983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600437, 33.003532, 33.341713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888669, 0.381945, 0.253744,
		0.333319, 0.918075, -0.214560,
		-0.314906, -0.106096, -0.943174,
		27.505966, 32.971703, 33.058762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441574, 33.700523, 33.509632>,  <27.726400, 33.045971, 33.718983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441574, 33.700523, 33.509632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304672, 33.382782, 33.308887>,  <27.222530, 33.192139, 33.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304672, 33.382782, 33.308887>,  <27.441574, 33.700523, 33.509632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304672, 33.382782, 33.308887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920400, 0.390874, 0.009006,
		0.189012, 0.464999, -0.864899,
		-0.342254, -0.794351, -0.501865,
		27.201996, 33.144478, 33.158329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077490, 33.906586, 32.899731>,  <27.441574, 33.700523, 33.509632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077490, 33.906586, 32.899731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944288, 33.548565, 33.018387>,  <26.864367, 33.333752, 33.089581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944288, 33.548565, 33.018387>,  <27.077490, 33.906586, 32.899731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944288, 33.548565, 33.018387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905177, 0.391565, 0.165325,
		-0.264128, -0.213461, -0.940569,
		-0.333004, -0.895048, 0.296643,
		26.844387, 33.280052, 33.107380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453918, 33.877155, 32.616833>,  <27.077490, 33.906586, 32.899731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453918, 33.877155, 32.616833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438885, 33.586391, 32.891113>,  <26.429865, 33.411934, 33.055679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438885, 33.586391, 32.891113>,  <26.453918, 33.877155, 32.616833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438885, 33.586391, 32.891113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979484, 0.162751, 0.118844,
		-0.197988, -0.667165, -0.718117,
		-0.037585, -0.726913, 0.685699,
		26.427608, 33.368317, 33.096825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854994, 33.424480, 32.521107>,  <26.453918, 33.877155, 32.616833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854994, 33.424480, 32.521107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953348, 33.408115, 32.908482>,  <26.012362, 33.398296, 33.140907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953348, 33.408115, 32.908482>,  <25.854994, 33.424480, 32.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953348, 33.408115, 32.908482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909542, 0.335638, 0.245113,
		-0.335072, -0.941102, 0.045314,
		0.245885, -0.040916, 0.968435,
		26.027113, 33.395840, 33.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330868, 32.903572, 32.925957>,  <25.854994, 33.424480, 32.521107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330868, 32.903572, 32.925957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499414, 33.199001, 33.136463>,  <25.600542, 33.376259, 33.262768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499414, 33.199001, 33.136463>,  <25.330868, 32.903572, 32.925957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499414, 33.199001, 33.136463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894214, 0.241679, 0.376793,
		0.151101, -0.629366, 0.762277,
		0.421367, 0.738573, 0.526270,
		25.625824, 33.420574, 33.294346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883163, 32.992100, 33.408112>,  <25.330868, 32.903572, 32.925957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883163, 32.992100, 33.408112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209251, 33.148956, 33.578590>,  <25.404903, 33.243069, 33.680878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209251, 33.148956, 33.578590>,  <24.883163, 32.992100, 33.408112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209251, 33.148956, 33.578590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578120, 0.594912, 0.558441,
		-0.034566, -0.701646, 0.711686,
		0.815219, 0.392137, 0.426200,
		25.453817, 33.266598, 33.706451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845953, 32.965603, 34.181587>,  <24.883163, 32.992100, 33.408112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845953, 32.965603, 34.181587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098259, 33.263893, 34.095764>,  <25.249641, 33.442867, 34.044270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098259, 33.263893, 34.095764>,  <24.845953, 32.965603, 34.181587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098259, 33.263893, 34.095764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681705, 0.664619, 0.305875,
		0.370696, -0.046671, 0.927581,
		0.630764, 0.745723, -0.214555,
		25.287487, 33.487610, 34.031399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308281, 33.154636, 34.698967>,  <24.845953, 32.965603, 34.181587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308281, 33.154636, 34.698967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552118, 33.447842, 34.578247>,  <25.698421, 33.623764, 34.505814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552118, 33.447842, 34.578247>,  <25.308281, 33.154636, 34.698967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552118, 33.447842, 34.578247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704343, 0.675536, 0.218066,
		0.363723, 0.079640, 0.928096,
		0.609596, 0.733014, -0.301802,
		25.734997, 33.667747, 34.487705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510096, 33.697937, 35.214771>,  <25.308281, 33.154636, 34.698967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510096, 33.697937, 35.214771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541384, 33.860882, 34.850807>,  <25.560156, 33.958649, 34.632427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541384, 33.860882, 34.850807>,  <25.510096, 33.697937, 35.214771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541384, 33.860882, 34.850807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712439, 0.661285, 0.234806,
		0.697361, 0.629890, 0.341944,
		0.078220, 0.407359, -0.909912,
		25.564850, 33.983089, 34.577835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702703, 34.354641, 35.321457>,  <25.510096, 33.697937, 35.214771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702703, 34.354641, 35.321457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515511, 34.344200, 34.968117>,  <25.403194, 34.337936, 34.756111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515511, 34.344200, 34.968117>,  <25.702703, 34.354641, 35.321457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515511, 34.344200, 34.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624386, 0.717143, 0.309595,
		0.625409, 0.696437, -0.351908,
		-0.467982, -0.026103, -0.883353,
		25.375116, 34.336369, 34.703110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772409, 35.003551, 35.001850>,  <25.702703, 34.354641, 35.321457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772409, 35.003551, 35.001850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441349, 34.825649, 34.864922>,  <25.242714, 34.718906, 34.782764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441349, 34.825649, 34.864922>,  <25.772409, 35.003551, 35.001850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441349, 34.825649, 34.864922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542295, 0.790882, 0.283587,
		0.144610, 0.420351, -0.895764,
		-0.827650, -0.444758, -0.342324,
		25.193054, 34.692223, 34.762226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150534, 34.796181, 35.714516>,  <25.772409, 35.003551, 35.001850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150534, 34.796181, 35.714516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257259, 34.416351, 35.648647>,  <26.321295, 34.188454, 35.609127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257259, 34.416351, 35.648647>,  <26.150534, 34.796181, 35.714516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257259, 34.416351, 35.648647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475107, -0.278263, 0.834771,
		-0.838500, -0.144492, -0.525394,
		0.266816, -0.949574, -0.164675,
		26.337303, 34.131477, 35.599243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912510, 34.980755, 35.689819>,  <26.150534, 34.796181, 35.714516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912510, 34.980755, 35.689819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889418, 34.620506, 35.517521>,  <26.875563, 34.404358, 35.414143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889418, 34.620506, 35.517521>,  <26.912510, 34.980755, 35.689819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889418, 34.620506, 35.517521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628651, 0.367976, -0.685122,
		0.775542, 0.231240, -0.587420,
		-0.057729, -0.900623, -0.430750,
		26.872099, 34.350319, 35.388294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986986, 35.124477, 34.962444>,  <26.912510, 34.980755, 35.689819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986986, 35.124477, 34.962444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770128, 34.791817, 35.010502>,  <26.640013, 34.592220, 35.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770128, 34.791817, 35.010502>,  <26.986986, 35.124477, 34.962444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770128, 34.791817, 35.010502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771568, 0.436066, -0.463174,
		0.332810, -0.343804, -0.878087,
		-0.542145, -0.831652, 0.120141,
		26.607485, 34.542320, 35.046543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650639, 35.475830, 35.102184>,  <26.986986, 35.124477, 34.962444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650639, 35.475830, 35.102184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881081, 35.802700, 35.109364>,  <28.019346, 35.998821, 35.113670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881081, 35.802700, 35.109364>,  <27.650639, 35.475830, 35.102184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881081, 35.802700, 35.109364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633063, 0.432202, 0.642210,
		0.517044, -0.381341, 0.766319,
		0.576105, 0.817179, 0.017945,
		28.053913, 36.047852, 35.114746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049042, 35.646339, 35.889267>,  <27.650639, 35.475830, 35.102184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049042, 35.646339, 35.889267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955881, 35.939468, 35.633537>,  <27.899984, 36.115345, 35.480099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955881, 35.939468, 35.633537>,  <28.049042, 35.646339, 35.889267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955881, 35.939468, 35.633537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681657, 0.345863, 0.644765,
		0.693614, 0.585966, 0.418979,
		-0.232901, 0.732818, -0.639323,
		27.886011, 36.159313, 35.441742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209742, 36.263130, 36.128391>,  <28.049042, 35.646339, 35.889267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209742, 36.263130, 36.128391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929272, 36.371845, 35.864731>,  <27.760990, 36.437077, 35.706535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929272, 36.371845, 35.864731>,  <28.209742, 36.263130, 36.128391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929272, 36.371845, 35.864731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467268, 0.523109, 0.712754,
		0.538528, 0.807767, -0.239793,
		-0.701176, 0.271791, -0.659152,
		27.718918, 36.453381, 35.666985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189009, 36.992638, 36.192631>,  <28.209742, 36.263130, 36.128391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189009, 36.992638, 36.192631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843792, 36.855721, 36.044041>,  <27.636662, 36.773571, 35.954887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843792, 36.855721, 36.044041>,  <28.189009, 36.992638, 36.192631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843792, 36.855721, 36.044041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502509, 0.506990, 0.700318,
		-0.051379, 0.791074, -0.609559,
		-0.863044, -0.342290, -0.371474,
		27.584879, 36.753033, 35.932598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689907, 37.622433, 36.092304>,  <28.189009, 36.992638, 36.192631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689907, 37.622433, 36.092304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480686, 37.284782, 36.045197>,  <27.355154, 37.082191, 36.016930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480686, 37.284782, 36.045197>,  <27.689907, 37.622433, 36.092304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480686, 37.284782, 36.045197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815289, 0.455256, 0.357836,
		-0.248441, 0.283186, -0.926328,
		-0.523050, -0.844126, -0.117774,
		27.323771, 37.031544, 36.009865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997335, 37.842335, 36.015110>,  <27.689907, 37.622433, 36.092304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997335, 37.842335, 36.015110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885080, 37.458412, 36.015999>,  <26.817726, 37.228058, 36.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885080, 37.458412, 36.015999>,  <26.997335, 37.842335, 36.015110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885080, 37.458412, 36.015999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927969, 0.271919, 0.254820,
		-0.245183, 0.069450, -0.966986,
		-0.280639, -0.959811, 0.002222,
		26.800888, 37.170467, 36.016666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332918, 38.032288, 35.990372>,  <26.997335, 37.842335, 36.015110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332918, 38.032288, 35.990372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401104, 37.657730, 36.113075>,  <26.442017, 37.432995, 36.186699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401104, 37.657730, 36.113075>,  <26.332918, 38.032288, 35.990372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401104, 37.657730, 36.113075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788094, 0.057307, 0.612881,
		-0.591480, -0.346229, -0.728201,
		0.170466, -0.936398, 0.306758,
		26.452244, 37.376812, 36.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639729, 37.569576, 35.959049>,  <26.332918, 38.032288, 35.990372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639729, 37.569576, 35.959049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886993, 37.400497, 36.224140>,  <26.035353, 37.299049, 36.383194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886993, 37.400497, 36.224140>,  <25.639729, 37.569576, 35.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886993, 37.400497, 36.224140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753158, -0.077168, 0.653298,
		-0.225004, -0.902981, -0.366058,
		0.618163, -0.422695, 0.662725,
		26.072443, 37.273689, 36.422958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295563, 37.018959, 36.366707>,  <25.639729, 37.569576, 35.959049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295563, 37.018959, 36.366707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590477, 37.170601, 36.590382>,  <25.767426, 37.261585, 36.724586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590477, 37.170601, 36.590382>,  <25.295563, 37.018959, 36.366707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590477, 37.170601, 36.590382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644261, 0.145452, 0.750847,
		0.203317, -0.913849, 0.351485,
		0.737285, 0.379108, 0.559185,
		25.811663, 37.284332, 36.758137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246143, 36.807159, 37.177803>,  <25.295563, 37.018959, 36.366707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246143, 36.807159, 37.177803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347773, 37.180538, 37.076519>,  <25.408751, 37.404568, 37.015747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347773, 37.180538, 37.076519>,  <25.246143, 36.807159, 37.177803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347773, 37.180538, 37.076519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641932, 0.358574, 0.677752,
		0.723444, -0.009654, 0.690316,
		0.254072, 0.933451, -0.253211,
		25.423994, 37.460575, 37.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350487, 37.165638, 37.804543>,  <25.246143, 36.807159, 37.177803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350487, 37.165638, 37.804543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287354, 37.435413, 37.516037>,  <25.249474, 37.597279, 37.342934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287354, 37.435413, 37.516037>,  <25.350487, 37.165638, 37.804543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287354, 37.435413, 37.516037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675840, 0.458759, 0.576871,
		0.719952, 0.578505, 0.383408,
		-0.157831, 0.674442, -0.721261,
		25.240004, 37.637745, 37.299660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011618, 37.507462, 37.843876>,  <25.350487, 37.165638, 37.804543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011618, 37.507462, 37.843876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882339, 37.288746, 37.534924>,  <25.804771, 37.157516, 37.349552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882339, 37.288746, 37.534924>,  <26.011618, 37.507462, 37.843876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882339, 37.288746, 37.534924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900392, 0.073532, -0.428820,
		0.291268, -0.834035, 0.468560,
		-0.323197, -0.546790, -0.772376,
		25.785381, 37.124710, 37.303211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692806, 37.394833, 37.528370>,  <26.011618, 37.507462, 37.843876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692806, 37.394833, 37.528370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403011, 37.239845, 37.300339>,  <26.229134, 37.146854, 37.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403011, 37.239845, 37.300339>,  <26.692806, 37.394833, 37.528370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403011, 37.239845, 37.300339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659050, -0.147112, -0.737571,
		0.201919, -0.910070, 0.361941,
		-0.724488, -0.387467, -0.570077,
		26.185665, 37.123604, 37.129314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924202, 36.700718, 37.214279>,  <26.692806, 37.394833, 37.528370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924202, 36.700718, 37.214279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659641, 36.873882, 36.969284>,  <26.500904, 36.977779, 36.822289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659641, 36.873882, 36.969284>,  <26.924202, 36.700718, 37.214279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659641, 36.873882, 36.969284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549153, -0.276698, -0.788587,
		-0.510859, -0.857921, -0.054724,
		-0.661404, 0.432908, -0.612483,
		26.461220, 37.003754, 36.785538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773895, 36.183922, 36.741695>,  <26.924202, 36.700718, 37.214279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773895, 36.183922, 36.741695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685982, 36.534912, 36.571178>,  <26.633234, 36.745506, 36.468868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685982, 36.534912, 36.571178>,  <26.773895, 36.183922, 36.741695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685982, 36.534912, 36.571178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406099, -0.315021, -0.857814,
		-0.887006, -0.361649, -0.287108,
		-0.219783, 0.877480, -0.426291,
		26.620047, 36.798157, 36.443291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392460, 36.218632, 36.196754>,  <26.773895, 36.183922, 36.741695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392460, 36.218632, 36.196754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671465, 36.493893, 36.116833>,  <26.838867, 36.659050, 36.068878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671465, 36.493893, 36.116833>,  <26.392460, 36.218632, 36.196754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671465, 36.493893, 36.116833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306790, -0.538774, -0.784603,
		-0.647577, 0.485972, -0.586920,
		0.697513, 0.688152, -0.199806,
		26.880718, 36.700340, 36.056892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471453, 36.382889, 35.447025>,  <26.392460, 36.218632, 36.196754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471453, 36.382889, 35.447025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824829, 36.495834, 35.596584>,  <27.036856, 36.563602, 35.686317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824829, 36.495834, 35.596584>,  <26.471453, 36.382889, 35.447025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824829, 36.495834, 35.596584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465242, -0.434161, -0.771398,
		-0.055488, 0.855437, -0.514925,
		0.883443, 0.282368, 0.373895,
		27.089863, 36.580544, 35.708752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778734, 36.827602, 34.927383>,  <26.471453, 36.382889, 35.447025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778734, 36.827602, 34.927383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088961, 36.712856, 35.152313>,  <27.275097, 36.644009, 35.287270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088961, 36.712856, 35.152313>,  <26.778734, 36.827602, 34.927383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088961, 36.712856, 35.152313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475403, -0.320639, -0.819258,
		0.415320, 0.902717, -0.112299,
		0.775566, -0.286866, 0.562322,
		27.321630, 36.626797, 35.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317493, 36.909344, 34.536961>,  <26.778734, 36.827602, 34.927383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317493, 36.909344, 34.536961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486404, 36.680210, 34.817970>,  <27.587751, 36.542728, 34.986576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486404, 36.680210, 34.817970>,  <27.317493, 36.909344, 34.536961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486404, 36.680210, 34.817970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625164, -0.377161, -0.683315,
		0.656392, 0.727742, 0.198849,
		0.422279, -0.572835, 0.702524,
		27.613089, 36.508358, 35.028728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041306, 36.977932, 34.423073>,  <27.317493, 36.909344, 34.536961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041306, 36.977932, 34.423073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954308, 36.632511, 34.605049>,  <27.902109, 36.425259, 34.714233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954308, 36.632511, 34.605049>,  <28.041306, 36.977932, 34.423073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954308, 36.632511, 34.605049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587209, -0.488078, -0.645729,
		0.779669, 0.126704, 0.613240,
		-0.217493, -0.863554, 0.454941,
		27.889059, 36.373444, 34.741531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599918, 36.580566, 34.328678>,  <28.041306, 36.977932, 34.423073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599918, 36.580566, 34.328678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324486, 36.309269, 34.431320>,  <28.159225, 36.146492, 34.492905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324486, 36.309269, 34.431320>,  <28.599918, 36.580566, 34.328678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324486, 36.309269, 34.431320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488781, -0.695493, -0.526671,
		0.535677, -0.237231, 0.810414,
		-0.688581, -0.678241, 0.256605,
		28.117912, 36.105797, 34.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995314, 36.246449, 34.860008>,  <28.599918, 36.580566, 34.328678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995314, 36.246449, 34.860008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102428, 36.090248, 35.212326>,  <29.166698, 35.996529, 35.423717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102428, 36.090248, 35.212326>,  <28.995314, 36.246449, 34.860008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102428, 36.090248, 35.212326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726123, 0.682670, 0.081902,
		-0.633273, 0.617631, 0.466365,
		0.267788, -0.390504, 0.880793,
		29.182764, 35.973095, 35.476562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006239, 36.689400, 35.389774>,  <28.995314, 36.246449, 34.860008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006239, 36.689400, 35.389774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302122, 36.433754, 35.474033>,  <29.479652, 36.280369, 35.524590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302122, 36.433754, 35.474033>,  <29.006239, 36.689400, 35.389774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302122, 36.433754, 35.474033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613432, 0.769108, 0.179372,
		-0.276647, -0.003466, 0.960965,
		0.739707, -0.639110, 0.210646,
		29.524035, 36.242020, 35.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429537, 37.171844, 35.567913>,  <29.006239, 36.689400, 35.389774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429537, 37.171844, 35.567913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644526, 36.838852, 35.621719>,  <29.773520, 36.639057, 35.654003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644526, 36.838852, 35.621719>,  <29.429537, 37.171844, 35.567913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644526, 36.838852, 35.621719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814747, 0.553780, 0.171802,
		-0.217514, 0.017257, 0.975904,
		0.537471, -0.832484, 0.134515,
		29.805767, 36.589108, 35.662075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709064, 37.090714, 36.203720>,  <29.429537, 37.171844, 35.567913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709064, 37.090714, 36.203720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983454, 36.939327, 35.955139>,  <30.148087, 36.848495, 35.805992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983454, 36.939327, 35.955139>,  <29.709064, 37.090714, 36.203720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983454, 36.939327, 35.955139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708675, 0.541167, 0.452678,
		0.164983, -0.750931, 0.639439,
		0.685974, -0.378470, -0.621450,
		30.189245, 36.825787, 35.768703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975634, 36.840050, 36.774574>,  <29.709064, 37.090714, 36.203720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975634, 36.840050, 36.774574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219925, 37.150997, 36.714306>,  <30.366501, 37.337566, 36.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219925, 37.150997, 36.714306>,  <29.975634, 36.840050, 36.774574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219925, 37.150997, 36.714306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712631, -0.456641, 0.532575,
		0.345205, -0.432634, -0.832863,
		0.610730, 0.777372, -0.150673,
		30.403143, 37.384209, 36.669106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700127, 36.607803, 36.612171>,  <29.975634, 36.840050, 36.774574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700127, 36.607803, 36.612171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725233, 36.982788, 36.749126>,  <30.740297, 37.207779, 36.831299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725233, 36.982788, 36.749126>,  <30.700127, 36.607803, 36.612171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725233, 36.982788, 36.749126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799023, -0.252763, 0.545595,
		0.598016, 0.239328, -0.764917,
		0.062766, 0.937461, 0.342385,
		30.744062, 37.264027, 36.851841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449203, 36.927067, 36.488453>,  <30.700127, 36.607803, 36.612171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449203, 36.927067, 36.488453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270082, 37.053570, 36.822987>,  <31.162611, 37.129471, 37.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270082, 37.053570, 36.822987>,  <31.449203, 36.927067, 36.488453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270082, 37.053570, 36.822987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738279, -0.396875, 0.545375,
		0.504400, 0.861668, -0.055766,
		-0.447800, 0.316258, 0.836335,
		31.135742, 37.148449, 37.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019032, 36.526539, 36.578846>,  <31.449203, 36.927067, 36.488453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019032, 36.526539, 36.578846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235126, 36.407417, 36.893669>,  <32.364784, 36.335945, 37.082561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235126, 36.407417, 36.893669>,  <32.019032, 36.526539, 36.578846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235126, 36.407417, 36.893669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838988, 0.118225, -0.531152,
		0.065132, 0.947277, 0.313726,
		0.540238, -0.297808, 0.787054,
		32.397198, 36.318073, 37.129784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394993, 37.052315, 36.897766>,  <32.019032, 36.526539, 36.578846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394993, 37.052315, 36.897766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591194, 36.707161, 36.946503>,  <32.708916, 36.500069, 36.975746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591194, 36.707161, 36.946503>,  <32.394993, 37.052315, 36.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591194, 36.707161, 36.946503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833813, 0.424070, -0.353440,
		0.253307, 0.274956, 0.927488,
		0.490501, -0.862881, 0.121842,
		32.738346, 36.448296, 36.983055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003426, 37.119495, 37.196751>,  <32.394993, 37.052315, 36.897766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003426, 37.119495, 37.196751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075409, 36.758186, 37.040951>,  <33.118599, 36.541401, 36.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075409, 36.758186, 37.040951>,  <33.003426, 37.119495, 37.196751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075409, 36.758186, 37.040951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755610, 0.380458, -0.533203,
		0.629817, -0.198356, 0.750989,
		0.179956, -0.903276, -0.389499,
		33.129395, 36.487206, 36.924103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793194, 36.780914, 37.284382>,  <33.003426, 37.119495, 37.196751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793194, 36.780914, 37.284382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574871, 36.677006, 36.965733>,  <33.443878, 36.614662, 36.774544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574871, 36.677006, 36.965733>,  <33.793194, 36.780914, 37.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574871, 36.677006, 36.965733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641688, 0.481784, -0.596759,
		0.538822, -0.836901, -0.096270,
		-0.545810, -0.259772, -0.796625,
		33.411129, 36.599075, 36.726746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244907, 36.476562, 36.737579>,  <33.793194, 36.780914, 37.284382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244907, 36.476562, 36.737579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939877, 36.678291, 36.575520>,  <33.756859, 36.799328, 36.478283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939877, 36.678291, 36.575520>,  <34.244907, 36.476562, 36.737579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939877, 36.678291, 36.575520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637637, 0.480363, -0.602221,
		-0.109096, -0.717573, -0.687886,
		-0.762572, 0.504321, -0.405146,
		33.711105, 36.829586, 36.453976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147591, 36.425713, 36.044449>,  <34.244907, 36.476562, 36.737579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147591, 36.425713, 36.044449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026035, 36.783928, 36.174469>,  <33.953102, 36.998859, 36.252480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026035, 36.783928, 36.174469>,  <34.147591, 36.425713, 36.044449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026035, 36.783928, 36.174469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517659, 0.441638, -0.732793,
		-0.799799, -0.054426, -0.597795,
		-0.303892, 0.895541, 0.325048,
		33.934868, 37.052589, 36.271984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448627, 36.447891, 35.751534>,  <34.147591, 36.425713, 36.044449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448627, 36.447891, 35.751534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628021, 36.409698, 36.107006>,  <33.735657, 36.386784, 36.320290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628021, 36.409698, 36.107006>,  <33.448627, 36.447891, 35.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628021, 36.409698, 36.107006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888496, 0.155703, -0.431661,
		-0.097154, 0.983178, 0.154665,
		0.448482, -0.095482, 0.888677,
		33.762566, 36.381054, 36.373608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514759, 35.829445, 36.160126>,  <33.448627, 36.447891, 35.751534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514759, 35.829445, 36.160126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135384, 35.949436, 36.201061>,  <32.907757, 36.021431, 36.225624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135384, 35.949436, 36.201061>,  <33.514759, 35.829445, 36.160126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135384, 35.949436, 36.201061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316850, -0.889126, -0.330243,
		-0.008069, -0.345643, 0.938331,
		-0.948441, 0.299975, 0.102343,
		32.850853, 36.039429, 36.231766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053856, 35.400799, 36.638561>,  <33.514759, 35.829445, 36.160126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053856, 35.400799, 36.638561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836884, 35.577778, 36.352901>,  <32.706699, 35.683964, 36.181507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836884, 35.577778, 36.352901>,  <33.053856, 35.400799, 36.638561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836884, 35.577778, 36.352901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311971, -0.895377, -0.317764,
		-0.780024, 0.050427, 0.623714,
		-0.542435, 0.442445, -0.714147,
		32.674152, 35.710510, 36.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501514, 34.958542, 36.357117>,  <33.053856, 35.400799, 36.638561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501514, 34.958542, 36.357117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514442, 35.227238, 36.061085>,  <32.522202, 35.388454, 35.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514442, 35.227238, 36.061085>,  <32.501514, 34.958542, 36.357117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514442, 35.227238, 36.061085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211499, -0.719104, -0.661934,
		-0.976844, 0.177923, 0.118829,
		0.032323, 0.671739, -0.740083,
		32.524139, 35.428761, 35.839062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959585, 34.690620, 35.973869>,  <32.501514, 34.958542, 36.357117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959585, 34.690620, 35.973869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193428, 34.920185, 35.744484>,  <32.333733, 35.057922, 35.606853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193428, 34.920185, 35.744484>,  <31.959585, 34.690620, 35.973869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193428, 34.920185, 35.744484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048521, -0.680831, -0.730832,
		-0.809863, 0.455075, -0.370173,
		0.584609, 0.573912, -0.573461,
		32.368813, 35.092358, 35.572445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870541, 34.408566, 35.369476>,  <31.959585, 34.690620, 35.973869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870541, 34.408566, 35.369476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172501, 34.648838, 35.264175>,  <32.353676, 34.793003, 35.200996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172501, 34.648838, 35.264175>,  <31.870541, 34.408566, 35.369476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172501, 34.648838, 35.264175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275346, -0.654590, -0.704057,
		-0.595239, 0.459008, -0.659547,
		0.754901, 0.600685, -0.263252,
		32.398972, 34.829044, 35.185200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818281, 34.545940, 34.702789>,  <31.870541, 34.408566, 35.369476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818281, 34.545940, 34.702789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206169, 34.607742, 34.778446>,  <32.438900, 34.644825, 34.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206169, 34.607742, 34.778446>,  <31.818281, 34.545940, 34.702789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206169, 34.607742, 34.778446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243722, -0.662081, -0.708695,
		0.015728, 0.733332, -0.679689,
		0.969718, 0.154508, 0.189142,
		32.497086, 34.654095, 34.835190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087784, 34.767620, 34.099991>,  <31.818281, 34.545940, 34.702789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087784, 34.767620, 34.099991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405243, 34.627975, 34.299286>,  <32.595718, 34.544189, 34.418861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405243, 34.627975, 34.299286>,  <32.087784, 34.767620, 34.099991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405243, 34.627975, 34.299286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167237, -0.662216, -0.730412,
		0.584939, 0.663014, -0.467181,
		0.793649, -0.349116, 0.498236,
		32.643337, 34.523239, 34.448757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553864, 34.644600, 33.514297>,  <32.087784, 34.767620, 34.099991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553864, 34.644600, 33.514297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677315, 34.422359, 33.823112>,  <32.751385, 34.289013, 34.008404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677315, 34.422359, 33.823112>,  <32.553864, 34.644600, 33.514297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677315, 34.422359, 33.823112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218222, -0.748657, -0.626013,
		0.925811, 0.361684, -0.109814,
		0.308632, -0.555606, 0.772042,
		32.769905, 34.255676, 34.054726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181602, 34.452984, 33.312077>,  <32.553864, 34.644600, 33.514297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181602, 34.452984, 33.312077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072346, 34.192547, 33.595333>,  <33.006790, 34.036285, 33.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072346, 34.192547, 33.595333>,  <33.181602, 34.452984, 33.312077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072346, 34.192547, 33.595333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334220, -0.754510, -0.564810,
		0.902047, 0.082402, 0.423698,
		-0.273143, -0.651094, 0.708145,
		32.990402, 33.997219, 33.807777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852085, 34.053291, 33.533524>,  <33.181602, 34.452984, 33.312077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852085, 34.053291, 33.533524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521534, 33.845577, 33.620651>,  <33.323204, 33.720947, 33.672928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521534, 33.845577, 33.620651>,  <33.852085, 34.053291, 33.533524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521534, 33.845577, 33.620651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361304, -0.785635, -0.502232,
		0.431930, -0.336332, 0.836849,
		-0.826375, -0.519286, 0.217821,
		33.273621, 33.689793, 33.685997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001675, 33.423786, 33.577774>,  <33.852085, 34.053291, 33.533524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001675, 33.423786, 33.577774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609447, 33.355610, 33.538906>,  <33.374111, 33.314705, 33.515587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609447, 33.355610, 33.538906>,  <34.001675, 33.423786, 33.577774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609447, 33.355610, 33.538906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194978, -0.791576, -0.579130,
		0.021793, -0.586820, 0.809424,
		-0.980565, -0.170441, -0.097166,
		33.315277, 33.304478, 33.509758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951527, 32.679737, 33.557770>,  <34.001675, 33.423786, 33.577774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951527, 32.679737, 33.557770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592075, 32.813778, 33.444504>,  <33.376404, 32.894203, 33.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592075, 32.813778, 33.444504>,  <33.951527, 32.679737, 33.557770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592075, 32.813778, 33.444504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079893, -0.759635, -0.645424,
		-0.431380, -0.557372, 0.709400,
		-0.898626, 0.335099, -0.283161,
		33.322487, 32.914307, 33.359554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518810, 32.096367, 33.400234>,  <33.951527, 32.679737, 33.557770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518810, 32.096367, 33.400234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337177, 32.387821, 33.195141>,  <33.228199, 32.562695, 33.072083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337177, 32.387821, 33.195141>,  <33.518810, 32.096367, 33.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337177, 32.387821, 33.195141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207588, -0.646174, -0.734416,
		-0.866439, -0.227048, 0.444672,
		-0.454083, 0.728635, -0.512738,
		33.200951, 32.606411, 33.041321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871841, 31.872904, 33.211037>,  <33.518810, 32.096367, 33.400234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871841, 31.872904, 33.211037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961338, 32.158348, 32.945496>,  <33.015038, 32.329613, 32.786171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961338, 32.158348, 32.945496>,  <32.871841, 31.872904, 33.211037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961338, 32.158348, 32.945496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177651, -0.639850, -0.747684,
		-0.958321, 0.285223, -0.016388,
		0.223742, 0.713610, -0.663852,
		33.028461, 32.372433, 32.746342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402767, 31.779001, 32.684071>,  <32.871841, 31.872904, 33.211037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402767, 31.779001, 32.684071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659302, 32.011189, 32.483372>,  <32.813221, 32.150501, 32.362953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659302, 32.011189, 32.483372>,  <32.402767, 31.779001, 32.684071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659302, 32.011189, 32.483372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083481, -0.597270, -0.797684,
		-0.762708, 0.553467, -0.334591,
		0.641333, 0.580468, -0.501746,
		32.851700, 32.185329, 32.332848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125263, 32.039783, 32.121864>,  <32.402767, 31.779001, 32.684071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125263, 32.039783, 32.121864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513874, 32.056221, 32.028522>,  <32.747040, 32.066086, 31.972519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513874, 32.056221, 32.028522>,  <32.125263, 32.039783, 32.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513874, 32.056221, 32.028522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191934, -0.440980, -0.876754,
		-0.138935, 0.896575, -0.420535,
		0.971524, 0.041096, -0.233351,
		32.805332, 32.068550, 31.958517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197037, 32.425259, 31.553493>,  <32.125263, 32.039783, 32.121864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197037, 32.425259, 31.553493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505863, 32.171776, 31.572781>,  <32.691158, 32.019684, 31.584352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505863, 32.171776, 31.572781>,  <32.197037, 32.425259, 31.553493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505863, 32.171776, 31.572781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201383, -0.315897, -0.927175,
		0.602792, 0.706131, -0.371512,
		0.772066, -0.633710, 0.048218,
		32.737484, 31.981663, 31.587246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589554, 32.528549, 30.981234>,  <32.197037, 32.425259, 31.553493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589554, 32.528549, 30.981234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710678, 32.162460, 31.087578>,  <32.783352, 31.942808, 31.151384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710678, 32.162460, 31.087578>,  <32.589554, 32.528549, 30.981234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710678, 32.162460, 31.087578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083118, -0.303253, -0.949278,
		0.949419, 0.265353, -0.167899,
		0.302810, -0.915219, 0.265859,
		32.801521, 31.887896, 31.167336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987087, 32.310574, 30.407249>,  <32.589554, 32.528549, 30.981234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987087, 32.310574, 30.407249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962883, 31.966486, 30.609777>,  <32.948360, 31.760033, 30.731295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962883, 31.966486, 30.609777>,  <32.987087, 32.310574, 30.407249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962883, 31.966486, 30.609777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058531, -0.509433, -0.858517,
		0.996450, -0.022312, 0.081174,
		-0.060508, -0.860221, 0.506319,
		32.944729, 31.708420, 30.761673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457844, 31.850386, 30.021845>,  <32.987087, 32.310574, 30.407249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457844, 31.850386, 30.021845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193970, 31.632153, 30.228594>,  <33.035645, 31.501213, 30.352644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193970, 31.632153, 30.228594>,  <33.457844, 31.850386, 30.021845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193970, 31.632153, 30.228594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195358, -0.539619, -0.818930,
		0.725709, -0.641209, 0.249394,
		-0.659683, -0.545584, 0.516872,
		32.996063, 31.468477, 30.383656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580376, 31.223875, 29.791290>,  <33.457844, 31.850386, 30.021845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580376, 31.223875, 29.791290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204781, 31.245964, 29.927086>,  <32.979424, 31.259216, 30.008564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204781, 31.245964, 29.927086>,  <33.580376, 31.223875, 29.791290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204781, 31.245964, 29.927086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326901, -0.450202, -0.830936,
		0.106955, -0.891217, 0.440785,
		-0.938987, 0.055220, 0.339491,
		32.923084, 31.262531, 30.028933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224197, 30.618633, 29.660673>,  <33.580376, 31.223875, 29.791290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224197, 30.618633, 29.660673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929653, 30.886951, 29.696024>,  <32.752926, 31.047943, 29.717234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929653, 30.886951, 29.696024>,  <33.224197, 30.618633, 29.660673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929653, 30.886951, 29.696024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518770, -0.475907, -0.710205,
		-0.434336, -0.568818, 0.698425,
		-0.736363, 0.670789, 0.088382,
		32.708744, 31.088190, 29.722536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635326, 30.197384, 29.740524>,  <33.224197, 30.618633, 29.660673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635326, 30.197384, 29.740524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515236, 30.567976, 29.649750>,  <32.443184, 30.790331, 29.595285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515236, 30.567976, 29.649750>,  <32.635326, 30.197384, 29.740524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515236, 30.567976, 29.649750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625198, -0.370810, -0.686751,
		-0.720412, -0.064298, 0.690560,
		-0.300224, 0.926480, -0.226937,
		32.425167, 30.845921, 29.581669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944126, 30.206692, 29.826788>,  <32.635326, 30.197384, 29.740524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944126, 30.206692, 29.826788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020782, 30.501661, 29.567719>,  <32.066776, 30.678644, 29.412277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020782, 30.501661, 29.567719>,  <31.944126, 30.206692, 29.826788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020782, 30.501661, 29.567719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769098, -0.297125, -0.565867,
		-0.609724, 0.606565, 0.510211,
		0.191639, 0.737425, -0.647672,
		32.078274, 30.722889, 29.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304855, 30.325581, 29.606951>,  <31.944126, 30.206692, 29.826788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304855, 30.325581, 29.606951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533524, 30.528576, 29.349068>,  <31.670725, 30.650373, 29.194338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533524, 30.528576, 29.349068>,  <31.304855, 30.325581, 29.606951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533524, 30.528576, 29.349068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758770, 0.028015, -0.650756,
		-0.312190, 0.861203, 0.401082,
		0.571669, 0.507489, -0.644709,
		31.705025, 30.680822, 29.155655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880659, 30.776787, 29.310118>,  <31.304855, 30.325581, 29.606951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880659, 30.776787, 29.310118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191549, 30.767090, 29.058615>,  <31.378082, 30.761272, 28.907713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191549, 30.767090, 29.058615>,  <30.880659, 30.776787, 29.310118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191549, 30.767090, 29.058615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624133, 0.097155, -0.775254,
		0.079879, 0.994974, 0.060383,
		0.777224, -0.024240, -0.628757,
		31.424717, 30.759817, 28.869987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811817, 31.353722, 28.705475>,  <30.880659, 30.776787, 29.310118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811817, 31.353722, 28.705475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049538, 31.066025, 28.561533>,  <31.192169, 30.893406, 28.475168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049538, 31.066025, 28.561533>,  <30.811817, 31.353722, 28.705475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049538, 31.066025, 28.561533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540902, -0.026328, -0.840673,
		0.595174, 0.694260, -0.404686,
		0.594300, -0.719243, -0.359857,
		31.227827, 30.850252, 28.453575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746752, 31.490980, 28.141548>,  <30.811817, 31.353722, 28.705475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746752, 31.490980, 28.141548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929306, 31.137581, 28.099321>,  <31.038837, 30.925541, 28.073986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929306, 31.137581, 28.099321>,  <30.746752, 31.490980, 28.141548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929306, 31.137581, 28.099321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499291, -0.156083, -0.852260,
		0.736493, 0.441666, -0.512356,
		0.456384, -0.883498, -0.105566,
		31.066221, 30.872532, 28.067652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973515, 31.459248, 27.534576>,  <30.746752, 31.490980, 28.141548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973515, 31.459248, 27.534576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971699, 31.070091, 27.627064>,  <30.970610, 30.836597, 27.682556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971699, 31.070091, 27.627064>,  <30.973515, 31.459248, 27.534576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971699, 31.070091, 27.627064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378616, -0.212336, -0.900868,
		0.925542, -0.091631, -0.367389,
		-0.004538, -0.972891, 0.231219,
		30.970337, 30.778223, 27.696430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340448, 31.150095, 27.013662>,  <30.973515, 31.459248, 27.534576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340448, 31.150095, 27.013662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111485, 30.855989, 27.158844>,  <30.974106, 30.679525, 27.245953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111485, 30.855989, 27.158844>,  <31.340448, 31.150095, 27.013662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111485, 30.855989, 27.158844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300944, -0.223374, -0.927112,
		0.762747, -0.639915, -0.093412,
		-0.572407, -0.735264, 0.362956,
		30.939762, 30.635410, 27.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242992, 30.714926, 26.502058>,  <31.340448, 31.150095, 27.013662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242992, 30.714926, 26.502058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986671, 30.513031, 26.733442>,  <30.832880, 30.391893, 26.872272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986671, 30.513031, 26.733442>,  <31.242992, 30.714926, 26.502058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986671, 30.513031, 26.733442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246994, -0.577882, -0.777847,
		0.726890, -0.641321, 0.245640,
		-0.640800, -0.504738, 0.578459,
		30.794432, 30.361610, 26.906981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362658, 29.902050, 26.546545>,  <31.242992, 30.714926, 26.502058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362658, 29.902050, 26.546545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974962, 29.982563, 26.603205>,  <30.742346, 30.030870, 26.637201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974962, 29.982563, 26.603205>,  <31.362658, 29.902050, 26.546545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974962, 29.982563, 26.603205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209249, -0.370843, -0.904815,
		-0.129594, -0.906621, 0.401553,
		-0.969237, 0.201283, 0.141651,
		30.684191, 30.042948, 26.645700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916447, 29.185205, 26.422726>,  <31.362658, 29.902050, 26.546545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916447, 29.185205, 26.422726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641047, 29.474411, 26.400036>,  <30.475807, 29.647934, 26.386423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641047, 29.474411, 26.400036>,  <30.916447, 29.185205, 26.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641047, 29.474411, 26.400036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393853, -0.438431, -0.807873,
		-0.608974, -0.533879, 0.586621,
		-0.688499, 0.723016, -0.056723,
		30.434496, 29.691315, 26.383018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299696, 28.788769, 26.417578>,  <30.916447, 29.185205, 26.422726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299696, 28.788769, 26.417578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226551, 29.152065, 26.267027>,  <30.182665, 29.370043, 26.176697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226551, 29.152065, 26.267027>,  <30.299696, 28.788769, 26.417578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226551, 29.152065, 26.267027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445375, -0.417823, -0.791874,
		-0.876472, 0.022825, 0.480912,
		-0.182861, 0.908241, -0.376376,
		30.171692, 29.424538, 26.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618065, 28.671652, 26.059561>,  <30.299696, 28.788769, 26.417578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618065, 28.671652, 26.059561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785980, 29.003098, 25.911413>,  <29.886730, 29.201965, 25.822525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785980, 29.003098, 25.911413>,  <29.618065, 28.671652, 26.059561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785980, 29.003098, 25.911413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373398, -0.214265, -0.902588,
		-0.827255, 0.517192, 0.219457,
		0.419789, 0.828615, -0.370370,
		29.911917, 29.251682, 25.800303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255251, 28.897869, 25.422728>,  <29.618065, 28.671652, 26.059561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255251, 28.897869, 25.422728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605478, 29.083935, 25.370565>,  <29.815615, 29.195574, 25.339268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605478, 29.083935, 25.370565>,  <29.255251, 28.897869, 25.422728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605478, 29.083935, 25.370565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115349, -0.060834, -0.991460,
		-0.469124, 0.883132, 0.000392,
		0.875567, 0.465163, -0.130407,
		29.868149, 29.223484, 25.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080164, 29.325048, 25.024927>,  <29.255251, 28.897869, 25.422728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080164, 29.325048, 25.024927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479313, 29.312832, 25.001881>,  <29.718801, 29.305502, 24.988052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479313, 29.312832, 25.001881>,  <29.080164, 29.325048, 25.024927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479313, 29.312832, 25.001881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055812, 0.056963, -0.996815,
		0.033726, 0.997909, 0.055137,
		0.997872, -0.030541, -0.057617,
		29.778675, 29.303669, 24.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312994, 29.870800, 24.497965>,  <29.080164, 29.325048, 25.024927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312994, 29.870800, 24.497965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625088, 29.623362, 24.535000>,  <29.812344, 29.474899, 24.557220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625088, 29.623362, 24.535000>,  <29.312994, 29.870800, 24.497965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625088, 29.623362, 24.535000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145862, 0.036004, -0.988650,
		0.608241, 0.784884, 0.118322,
		0.780235, -0.618596, 0.092586,
		29.859158, 29.437782, 24.562775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850782, 30.130569, 24.020458>,  <29.312994, 29.870800, 24.497965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850782, 30.130569, 24.020458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951450, 29.746410, 24.068296>,  <30.011850, 29.515915, 24.096998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951450, 29.746410, 24.068296>,  <29.850782, 30.130569, 24.020458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951450, 29.746410, 24.068296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187491, -0.072849, -0.979561,
		0.949479, 0.268947, 0.161732,
		0.251668, -0.960396, 0.119594,
		30.026951, 29.458292, 24.104174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317204, 29.958155, 23.577202>,  <29.850782, 30.130569, 24.020458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317204, 29.958155, 23.577202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166712, 29.593189, 23.641644>,  <30.076416, 29.374210, 23.680307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166712, 29.593189, 23.641644>,  <30.317204, 29.958155, 23.577202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166712, 29.593189, 23.641644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344770, -0.023525, -0.938392,
		0.859991, -0.408593, -0.305722,
		-0.376229, -0.912413, 0.161102,
		30.053843, 29.319466, 23.689974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496008, 29.547787, 23.019215>,  <30.317204, 29.958155, 23.577202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496008, 29.547787, 23.019215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205688, 29.325302, 23.181126>,  <30.031496, 29.191811, 23.278273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205688, 29.325302, 23.181126>,  <30.496008, 29.547787, 23.019215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205688, 29.325302, 23.181126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295463, -0.279317, -0.913610,
		0.621222, -0.782694, 0.038388,
		-0.725800, -0.556212, 0.404775,
		29.987949, 29.158438, 23.302559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432001, 28.946947, 22.620739>,  <30.496008, 29.547787, 23.019215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432001, 28.946947, 22.620739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066566, 28.982464, 22.779470>,  <29.847305, 29.003775, 22.874708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066566, 28.982464, 22.779470>,  <30.432001, 28.946947, 22.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066566, 28.982464, 22.779470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406418, -0.231589, -0.883850,
		0.013424, -0.968753, 0.247663,
		-0.913589, 0.088790, 0.396828,
		29.792490, 29.009102, 22.898520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042482, 28.356180, 22.460968>,  <30.432001, 28.946947, 22.620739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042482, 28.356180, 22.460968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799000, 28.668810, 22.515547>,  <29.652910, 28.856388, 22.548294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799000, 28.668810, 22.515547>,  <30.042482, 28.356180, 22.460968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799000, 28.668810, 22.515547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363918, -0.122225, -0.923377,
		-0.705012, -0.611719, 0.358829,
		-0.608704, 0.781576, 0.136446,
		29.616388, 28.903282, 22.556480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437403, 28.107767, 22.245945>,  <30.042482, 28.356180, 22.460968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437403, 28.107767, 22.245945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394190, 28.504774, 22.223169>,  <29.368261, 28.742977, 22.209505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394190, 28.504774, 22.223169>,  <29.437403, 28.107767, 22.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394190, 28.504774, 22.223169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330705, -0.089890, -0.939443,
		-0.937530, -0.082660, 0.337941,
		-0.108032, 0.992515, -0.056938,
		29.361780, 28.802528, 22.206087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982864, 28.234858, 21.750946>,  <29.437403, 28.107767, 22.245945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982864, 28.234858, 21.750946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102123, 28.616640, 21.746481>,  <29.173677, 28.845709, 21.743803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102123, 28.616640, 21.746481>,  <28.982864, 28.234858, 21.750946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102123, 28.616640, 21.746481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433915, 0.125109, -0.892225,
		-0.850192, 0.270857, 0.451453,
		0.298146, 0.954455, -0.011162,
		29.191566, 28.902977, 21.743132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349604, 28.623404, 21.598852>,  <28.982864, 28.234858, 21.750946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349604, 28.623404, 21.598852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680531, 28.807152, 21.469532>,  <28.879087, 28.917400, 21.391939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680531, 28.807152, 21.469532>,  <28.349604, 28.623404, 21.598852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680531, 28.807152, 21.469532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403777, 0.086185, -0.910789,
		-0.390527, 0.884053, 0.256786,
		0.827316, 0.459372, -0.323303,
		28.928726, 28.944963, 21.372541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150789, 29.288254, 21.191463>,  <28.349604, 28.623404, 21.598852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150789, 29.288254, 21.191463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517260, 29.161371, 21.093481>,  <28.737141, 29.085241, 21.034691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517260, 29.161371, 21.093481>,  <28.150789, 29.288254, 21.191463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517260, 29.161371, 21.093481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140174, 0.318979, -0.937339,
		0.375466, 0.893103, 0.247777,
		0.916175, -0.317207, -0.244956,
		28.792112, 29.066210, 21.019995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012365, 30.008484, 21.141270>,  <28.150789, 29.288254, 21.191463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012365, 30.008484, 21.141270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298916, 30.193335, 20.932178>,  <28.470846, 30.304245, 20.806725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298916, 30.193335, 20.932178>,  <28.012365, 30.008484, 21.141270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298916, 30.193335, 20.932178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239479, -0.540825, -0.806324,
		-0.655326, 0.702815, -0.276765,
		0.716378, 0.462126, -0.522726,
		28.513830, 30.331972, 20.775360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741817, 30.199282, 20.500240>,  <28.012365, 30.008484, 21.141270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741817, 30.199282, 20.500240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131741, 30.196016, 20.411083>,  <28.365694, 30.194057, 20.357588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131741, 30.196016, 20.411083>,  <27.741817, 30.199282, 20.500240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131741, 30.196016, 20.411083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195027, -0.516099, -0.834030,
		-0.108228, 0.856490, -0.504690,
		0.974808, -0.008163, -0.222895,
		28.424183, 30.193567, 20.344215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781290, 30.067669, 19.860767>,  <27.741817, 30.199282, 20.500240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781290, 30.067669, 19.860767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153473, 29.963551, 19.963917>,  <28.376781, 29.901079, 20.025806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153473, 29.963551, 19.963917>,  <27.781290, 30.067669, 19.860767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153473, 29.963551, 19.963917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067111, -0.570820, -0.818328,
		0.360208, 0.778724, -0.513653,
		0.930455, -0.260296, 0.257875,
		28.432610, 29.885462, 20.041279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031805, 29.405338, 19.872299>,  <27.781290, 30.067669, 19.860767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031805, 29.405338, 19.872299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268787, 29.513268, 19.568670>,  <28.410976, 29.578024, 19.386494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268787, 29.513268, 19.568670>,  <28.031805, 29.405338, 19.872299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268787, 29.513268, 19.568670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526985, 0.582874, 0.618501,
		0.609330, -0.766455, 0.203135,
		0.592456, 0.269822, -0.759073,
		28.446524, 29.594213, 19.340948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750561, 29.226171, 19.981838>,  <28.031805, 29.405338, 19.872299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750561, 29.226171, 19.981838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681959, 29.551823, 19.759928>,  <28.640799, 29.747213, 19.626781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681959, 29.551823, 19.759928>,  <28.750561, 29.226171, 19.981838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681959, 29.551823, 19.759928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755116, 0.470310, 0.456736,
		0.632760, -0.340589, -0.695423,
		-0.171505, 0.814130, -0.554778,
		28.630508, 29.796062, 19.593494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455307, 29.509964, 19.934776>,  <28.750561, 29.226171, 19.981838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455307, 29.509964, 19.934776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152142, 29.769640, 19.909115>,  <28.970242, 29.925446, 19.893719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152142, 29.769640, 19.909115>,  <29.455307, 29.509964, 19.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152142, 29.769640, 19.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386187, 0.525761, 0.757915,
		0.525761, 0.549660, -0.649191,
		-0.757915, 0.649191, -0.064154,
		28.924767, 29.964397, 19.889868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659218, 30.328272, 19.867207>,  <29.455307, 29.509964, 19.934776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659218, 30.328272, 19.867207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297768, 30.270941, 20.028660>,  <29.080898, 30.236542, 20.125532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297768, 30.270941, 20.028660>,  <29.659218, 30.328272, 19.867207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297768, 30.270941, 20.028660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259848, 0.565694, 0.782604,
		-0.340501, 0.812064, -0.473932,
		-0.903625, -0.143327, 0.403632,
		29.026680, 30.227943, 20.149750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412828, 30.999361, 20.085798>,  <29.659218, 30.328272, 19.867207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412828, 30.999361, 20.085798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195663, 30.722998, 20.276751>,  <29.065365, 30.557180, 20.391321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195663, 30.722998, 20.276751>,  <29.412828, 30.999361, 20.085798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195663, 30.722998, 20.276751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164780, 0.469758, 0.867280,
		-0.823463, 0.549521, -0.141190,
		-0.542914, -0.690908, 0.477379,
		29.032789, 30.515726, 20.419964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862860, 31.315357, 20.367258>,  <29.412828, 30.999361, 20.085798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862860, 31.315357, 20.367258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946062, 30.992798, 20.588692>,  <28.995983, 30.799261, 20.721552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946062, 30.992798, 20.588692>,  <28.862860, 31.315357, 20.367258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946062, 30.992798, 20.588692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173099, 0.587377, 0.790585,
		-0.962689, -0.068620, 0.261764,
		0.208004, -0.806399, 0.553583,
		29.008463, 30.750877, 20.754766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382421, 31.258434, 20.997215>,  <28.862860, 31.315357, 20.367258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382421, 31.258434, 20.997215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722292, 31.056469, 21.058022>,  <28.926214, 30.935289, 21.094505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722292, 31.056469, 21.058022>,  <28.382421, 31.258434, 20.997215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722292, 31.056469, 21.058022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206942, 0.584466, 0.784585,
		-0.484997, -0.635186, 0.601096,
		0.849678, -0.504914, 0.152018,
		28.977196, 30.904995, 21.103626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360777, 30.899998, 21.710596>,  <28.382421, 31.258434, 20.997215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360777, 30.899998, 21.710596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745205, 30.933714, 21.605345>,  <28.975863, 30.953943, 21.542194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745205, 30.933714, 21.605345>,  <28.360777, 30.899998, 21.710596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745205, 30.933714, 21.605345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209053, 0.400852, 0.891972,
		0.180662, -0.912256, 0.367626,
		0.961071, 0.084292, -0.263128,
		29.033525, 30.959002, 21.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736864, 30.757887, 22.305523>,  <28.360777, 30.899998, 21.710596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736864, 30.757887, 22.305523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971022, 30.976683, 22.066153>,  <29.111517, 31.107960, 21.922529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971022, 30.976683, 22.066153>,  <28.736864, 30.757887, 22.305523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971022, 30.976683, 22.066153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342361, 0.502299, 0.794031,
		0.734917, -0.669699, 0.106773,
		0.585393, 0.546992, -0.598427,
		29.146639, 31.140779, 21.886625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373037, 30.800446, 22.664762>,  <28.736864, 30.757887, 22.305523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373037, 30.800446, 22.664762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412275, 31.092911, 22.394716>,  <29.435818, 31.268389, 22.232689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412275, 31.092911, 22.394716>,  <29.373037, 30.800446, 22.664762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412275, 31.092911, 22.394716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448483, 0.573114, 0.685859,
		0.888392, -0.370058, -0.271693,
		0.098096, 0.731162, -0.675115,
		29.441704, 31.312260, 22.192183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051245, 31.072712, 22.718494>,  <29.373037, 30.800446, 22.664762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051245, 31.072712, 22.718494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845556, 31.365438, 22.539598>,  <29.722143, 31.541075, 22.432261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845556, 31.365438, 22.539598>,  <30.051245, 31.072712, 22.718494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845556, 31.365438, 22.539598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270229, 0.633154, 0.725322,
		0.813974, 0.252117, -0.523338,
		-0.514219, 0.731815, -0.447242,
		29.691290, 31.584984, 22.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524847, 31.540709, 22.674831>,  <30.051245, 31.072712, 22.718494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524847, 31.540709, 22.674831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168581, 31.716682, 22.628927>,  <29.954821, 31.822268, 22.601385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168581, 31.716682, 22.628927>,  <30.524847, 31.540709, 22.674831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168581, 31.716682, 22.628927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198287, 0.603006, 0.772700,
		0.409139, 0.665463, -0.624311,
		-0.890667, 0.439934, -0.114761,
		29.901381, 31.848663, 22.594500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704300, 32.281174, 22.647795>,  <30.524847, 31.540709, 22.674831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704300, 32.281174, 22.647795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314613, 32.259892, 22.735497>,  <30.080801, 32.247124, 22.788118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314613, 32.259892, 22.735497>,  <30.704300, 32.281174, 22.647795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314613, 32.259892, 22.735497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134535, 0.643133, 0.753843,
		-0.181119, 0.763903, -0.619393,
		-0.974216, -0.053205, 0.219255,
		30.022348, 32.243931, 22.801273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612309, 32.979382, 22.644812>,  <30.704300, 32.281174, 22.647795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612309, 32.979382, 22.644812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322882, 32.790974, 22.846638>,  <30.149225, 32.677929, 22.967733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322882, 32.790974, 22.846638>,  <30.612309, 32.979382, 22.644812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322882, 32.790974, 22.846638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012861, 0.740063, 0.672414,
		-0.690132, 0.480049, -0.541545,
		-0.723569, -0.471020, 0.504568,
		30.105810, 32.649670, 22.998009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345535, 33.537506, 23.007076>,  <30.612309, 32.979382, 22.644812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345535, 33.537506, 23.007076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184105, 33.210972, 23.172352>,  <30.087246, 33.015053, 23.271517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184105, 33.210972, 23.172352>,  <30.345535, 33.537506, 23.007076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184105, 33.210972, 23.172352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130900, 0.498471, 0.856967,
		-0.905534, 0.291764, -0.308029,
		-0.403576, -0.816334, 0.413190,
		30.063032, 32.966072, 23.296309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655706, 33.729980, 23.432428>,  <30.345535, 33.537506, 23.007076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655706, 33.729980, 23.432428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821012, 33.393379, 23.571615>,  <29.920197, 33.191418, 23.655128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821012, 33.393379, 23.571615>,  <29.655706, 33.729980, 23.432428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821012, 33.393379, 23.571615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020598, 0.373390, 0.927446,
		-0.910377, -0.390450, 0.136977,
		0.413267, -0.841504, 0.347968,
		29.944992, 33.140926, 23.676006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216831, 33.577538, 23.943073>,  <29.655706, 33.729980, 23.432428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216831, 33.577538, 23.943073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534864, 33.356331, 24.042686>,  <29.725683, 33.223606, 24.102455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534864, 33.356331, 24.042686>,  <29.216831, 33.577538, 23.943073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534864, 33.356331, 24.042686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018842, 0.387888, 0.921514,
		-0.606210, -0.737371, 0.297983,
		0.795082, -0.553016, 0.249035,
		29.773390, 33.190426, 24.117397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989424, 33.213737, 24.548424>,  <29.216831, 33.577538, 23.943073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989424, 33.213737, 24.548424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389292, 33.215603, 24.558544>,  <29.629211, 33.216721, 24.564617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389292, 33.215603, 24.558544>,  <28.989424, 33.213737, 24.548424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389292, 33.215603, 24.558544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025703, 0.223489, 0.974367,
		-0.001114, -0.974695, 0.223535,
		0.999669, 0.004660, 0.025302,
		29.689192, 33.217003, 24.566135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099115, 32.885109, 25.238037>,  <28.989424, 33.213737, 24.548424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099115, 32.885109, 25.238037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448677, 33.034187, 25.113209>,  <29.658415, 33.123634, 25.038313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448677, 33.034187, 25.113209>,  <29.099115, 32.885109, 25.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448677, 33.034187, 25.113209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209896, 0.289735, 0.933808,
		0.438444, -0.881562, 0.174974,
		0.873905, 0.372696, -0.312069,
		29.710848, 33.145996, 25.019588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495396, 32.723614, 25.765226>,  <29.099115, 32.885109, 25.238037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495396, 32.723614, 25.765226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702942, 33.014862, 25.586067>,  <29.827471, 33.189610, 25.478571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702942, 33.014862, 25.586067>,  <29.495396, 32.723614, 25.765226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702942, 33.014862, 25.586067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197029, 0.407981, 0.891477,
		0.831839, -0.550808, 0.068227,
		0.518868, 0.728122, -0.447900,
		29.858603, 33.233299, 25.451696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160753, 32.773907, 26.170988>,  <29.495396, 32.723614, 25.765226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160753, 32.773907, 26.170988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083405, 33.117466, 25.981293>,  <30.036995, 33.323601, 25.867476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083405, 33.117466, 25.981293>,  <30.160753, 32.773907, 26.170988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083405, 33.117466, 25.981293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220049, 0.509014, 0.832155,
		0.956131, 0.056561, -0.287429,
		-0.193372, 0.858898, -0.474238,
		30.025393, 33.375134, 25.839022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755783, 33.159771, 26.358559>,  <30.160753, 32.773907, 26.170988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755783, 33.159771, 26.358559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459602, 33.407223, 26.253471>,  <30.281893, 33.555695, 26.190418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459602, 33.407223, 26.253471>,  <30.755783, 33.159771, 26.358559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459602, 33.407223, 26.253471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186105, 0.564322, 0.804304,
		0.645828, 0.546657, -0.532985,
		-0.740454, 0.618633, -0.262719,
		30.237467, 33.592812, 26.174656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068518, 33.793095, 26.408066>,  <30.755783, 33.159771, 26.358559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068518, 33.793095, 26.408066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672407, 33.843433, 26.431793>,  <30.434742, 33.873638, 26.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672407, 33.843433, 26.431793>,  <31.068518, 33.793095, 26.408066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672407, 33.843433, 26.431793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120032, 0.557208, 0.821651,
		0.070352, 0.820780, -0.566895,
		-0.990274, 0.125850, 0.059319,
		30.375324, 33.881187, 26.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018223, 34.548447, 26.686724>,  <31.068518, 33.793095, 26.408066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018223, 34.548447, 26.686724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660406, 34.385220, 26.759693>,  <30.445717, 34.287285, 26.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660406, 34.385220, 26.759693>,  <31.018223, 34.548447, 26.686724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660406, 34.385220, 26.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021325, 0.446620, 0.894470,
		-0.446475, 0.796251, -0.408222,
		-0.894542, -0.408063, 0.182425,
		30.392044, 34.262802, 26.814421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720478, 35.104092, 26.939631>,  <31.018223, 34.548447, 26.686724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720478, 35.104092, 26.939631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481369, 34.805336, 27.056135>,  <30.337904, 34.626083, 27.126038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481369, 34.805336, 27.056135>,  <30.720478, 35.104092, 26.939631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481369, 34.805336, 27.056135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006884, 0.368087, 0.929766,
		-0.801637, 0.553782, -0.225174,
		-0.597771, -0.746885, 0.291260,
		30.302038, 34.581272, 27.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166790, 35.405697, 27.243305>,  <30.720478, 35.104092, 26.939631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166790, 35.405697, 27.243305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158369, 35.033283, 27.389040>,  <30.153316, 34.809837, 27.476480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158369, 35.033283, 27.389040>,  <30.166790, 35.405697, 27.243305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158369, 35.033283, 27.389040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077451, 0.364840, 0.927843,
		-0.996774, -0.008683, -0.079790,
		-0.021055, -0.931030, 0.364336,
		30.152052, 34.753975, 27.498341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785217, 35.393311, 27.913698>,  <30.166790, 35.405697, 27.243305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785217, 35.393311, 27.913698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985067, 35.049507, 27.956804>,  <30.104977, 34.843224, 27.982668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985067, 35.049507, 27.956804>,  <29.785217, 35.393311, 27.913698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985067, 35.049507, 27.956804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126969, 0.195723, 0.972405,
		-0.856886, -0.472156, 0.206919,
		0.499626, -0.859512, 0.107763,
		30.134954, 34.791653, 27.989134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332617, 34.928349, 28.274111>,  <29.785217, 35.393311, 27.913698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332617, 34.928349, 28.274111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718620, 34.828751, 28.307007>,  <29.950222, 34.768993, 28.326744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718620, 34.828751, 28.307007>,  <29.332617, 34.928349, 28.274111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718620, 34.828751, 28.307007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019903, 0.243167, 0.969780,
		-0.261467, -0.937482, 0.229702,
		0.965007, -0.248994, 0.082239,
		30.008121, 34.754051, 28.331678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427376, 34.521523, 28.846342>,  <29.332617, 34.928349, 28.274111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427376, 34.521523, 28.846342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806646, 34.632893, 28.785105>,  <30.034208, 34.699715, 28.748362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806646, 34.632893, 28.785105>,  <29.427376, 34.521523, 28.846342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806646, 34.632893, 28.785105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131867, 0.093552, 0.986843,
		0.289085, -0.955891, 0.051988,
		0.948178, 0.278426, -0.153095,
		30.091099, 34.716419, 28.739176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788313, 34.155022, 29.323126>,  <29.427376, 34.521523, 28.846342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788313, 34.155022, 29.323126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049433, 34.446400, 29.239967>,  <30.206104, 34.621227, 29.190073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049433, 34.446400, 29.239967>,  <29.788313, 34.155022, 29.323126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049433, 34.446400, 29.239967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220891, 0.079466, 0.972056,
		0.724611, -0.680479, -0.109032,
		0.652799, 0.728446, -0.207894,
		30.245272, 34.664932, 29.177599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444296, 34.093735, 29.733244>,  <29.788313, 34.155022, 29.323126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444296, 34.093735, 29.733244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442438, 34.475689, 29.614470>,  <30.441324, 34.704861, 29.543205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442438, 34.475689, 29.614470>,  <30.444296, 34.093735, 29.733244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442438, 34.475689, 29.614470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286301, 0.285776, 0.914529,
		0.958129, -0.080767, -0.274712,
		-0.004642, 0.954887, -0.296934,
		30.441046, 34.762154, 29.525389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000988, 34.480133, 30.057312>,  <30.444296, 34.093735, 29.733244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000988, 34.480133, 30.057312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759604, 34.780777, 29.950792>,  <30.614773, 34.961163, 29.886881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759604, 34.780777, 29.950792>,  <31.000988, 34.480133, 30.057312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759604, 34.780777, 29.950792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343451, 0.546394, 0.763868,
		0.719637, 0.369503, -0.587869,
		-0.603459, 0.751613, -0.266299,
		30.578566, 35.006260, 29.870903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399096, 35.151028, 30.175333>,  <31.000988, 34.480133, 30.057312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399096, 35.151028, 30.175333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013086, 35.255867, 30.177662>,  <30.781481, 35.318771, 30.179058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013086, 35.255867, 30.177662>,  <31.399096, 35.151028, 30.175333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013086, 35.255867, 30.177662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154424, 0.550356, 0.820525,
		0.211853, 0.792725, -0.571581,
		-0.965024, 0.262097, 0.005821,
		30.723579, 35.334496, 30.179409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526819, 35.902905, 30.400066>,  <31.399096, 35.151028, 30.175333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526819, 35.902905, 30.400066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139990, 35.807434, 30.435396>,  <30.907892, 35.750153, 30.456594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139990, 35.807434, 30.435396>,  <31.526819, 35.902905, 30.400066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139990, 35.807434, 30.435396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034986, 0.468455, 0.882794,
		-0.252078, 0.850637, -0.461381,
		-0.967074, -0.238675, 0.088327,
		30.849867, 35.735832, 30.461895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247786, 36.611141, 30.387630>,  <31.526819, 35.902905, 30.400066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247786, 36.611141, 30.387630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033438, 36.310036, 30.540567>,  <30.904829, 36.129372, 30.632330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033438, 36.310036, 30.540567>,  <31.247786, 36.611141, 30.387630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033438, 36.310036, 30.540567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053343, 0.421763, 0.905136,
		-0.842614, 0.505430, -0.185855,
		-0.535869, -0.752766, 0.382345,
		30.872677, 36.084206, 30.655272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788347, 37.004436, 30.653524>,  <31.247786, 36.611141, 30.387630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788347, 37.004436, 30.653524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760763, 36.655762, 30.847603>,  <30.744213, 36.446556, 30.964050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760763, 36.655762, 30.847603>,  <30.788347, 37.004436, 30.653524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760763, 36.655762, 30.847603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166363, 0.469494, 0.867121,
		-0.983650, 0.140515, 0.112639,
		-0.068960, -0.871683, 0.485194,
		30.740076, 36.394257, 30.993160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499010, 37.205204, 31.299873>,  <30.788347, 37.004436, 30.653524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499010, 37.205204, 31.299873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652090, 36.838764, 31.347706>,  <30.743938, 36.618900, 31.376406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652090, 36.838764, 31.347706>,  <30.499010, 37.205204, 31.299873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652090, 36.838764, 31.347706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378773, 0.273637, 0.884112,
		-0.842657, -0.293057, 0.451715,
		0.382701, -0.916101, 0.119580,
		30.766901, 36.563934, 31.383579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157978, 36.866810, 31.876451>,  <30.499010, 37.205204, 31.299873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157978, 36.866810, 31.876451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510281, 36.681553, 31.836914>,  <30.721663, 36.570400, 31.813192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510281, 36.681553, 31.836914>,  <30.157978, 36.866810, 31.876451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510281, 36.681553, 31.836914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186303, 0.146969, 0.971438,
		-0.435388, -0.874013, 0.215728,
		0.880755, -0.463143, -0.098843,
		30.774508, 36.542610, 31.807261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212831, 36.482334, 32.573677>,  <30.157978, 36.866810, 31.876451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212831, 36.482334, 32.573677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575085, 36.480705, 32.404057>,  <30.792437, 36.479729, 32.302284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575085, 36.480705, 32.404057>,  <30.212831, 36.482334, 32.573677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575085, 36.480705, 32.404057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418643, 0.167998, 0.892477,
		0.067604, -0.985779, 0.153849,
		0.905631, -0.004073, -0.424047,
		30.846773, 36.479485, 32.276844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635143, 36.103176, 32.967907>,  <30.212831, 36.482334, 32.573677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635143, 36.103176, 32.967907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910027, 36.315430, 32.769447>,  <31.074957, 36.442783, 32.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910027, 36.315430, 32.769447>,  <30.635143, 36.103176, 32.967907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910027, 36.315430, 32.769447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450729, 0.224177, 0.864053,
		0.569725, -0.817416, -0.085117,
		0.687209, 0.530637, -0.496152,
		31.116190, 36.474621, 32.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351212, 35.913982, 33.343418>,  <30.635143, 36.103176, 32.967907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351212, 35.913982, 33.343418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396940, 36.253746, 33.137341>,  <31.424377, 36.457603, 33.013695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396940, 36.253746, 33.137341>,  <31.351212, 35.913982, 33.343418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396940, 36.253746, 33.137341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498011, 0.399729, 0.769546,
		0.859602, -0.344548, -0.377320,
		0.114320, 0.849413, -0.515197,
		31.431236, 36.508572, 32.982780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112827, 36.052532, 33.377914>,  <31.351212, 35.913982, 33.343418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112827, 36.052532, 33.377914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886513, 36.379181, 33.332298>,  <31.750723, 36.575172, 33.304928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886513, 36.379181, 33.332298>,  <32.112827, 36.052532, 33.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886513, 36.379181, 33.332298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581484, 0.493227, 0.646995,
		0.584600, 0.299752, -0.753918,
		-0.565791, 0.816625, -0.114040,
		31.716776, 36.624168, 33.298088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580761, 36.615932, 33.392056>,  <32.112827, 36.052532, 33.377914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580761, 36.615932, 33.392056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215755, 36.756569, 33.475674>,  <31.996752, 36.840950, 33.525845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215755, 36.756569, 33.475674>,  <32.580761, 36.615932, 33.392056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215755, 36.756569, 33.475674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362287, 0.457431, 0.812099,
		0.189906, 0.816786, -0.544790,
		-0.912515, 0.351593, 0.209043,
		31.942001, 36.862045, 33.538387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665653, 37.239807, 33.677319>,  <32.580761, 36.615932, 33.392056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665653, 37.239807, 33.677319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310356, 37.113083, 33.810371>,  <32.097176, 37.037048, 33.890205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310356, 37.113083, 33.810371>,  <32.665653, 37.239807, 33.677319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310356, 37.113083, 33.810371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201085, 0.382892, 0.901642,
		-0.413017, 0.867768, -0.276396,
		-0.888246, -0.316815, 0.332636,
		32.043880, 37.018040, 33.910164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262680, 37.071686, 33.163208>,  <32.665653, 37.239807, 33.677319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262680, 37.071686, 33.163208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589455, 37.049648, 32.933575>,  <33.785519, 37.036427, 32.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589455, 37.049648, 32.933575>,  <33.262680, 37.071686, 33.163208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589455, 37.049648, 32.933575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554319, -0.349762, -0.755246,
		-0.159186, 0.935217, -0.316273,
		0.816939, -0.055092, -0.574086,
		33.834538, 37.033119, 32.761349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215523, 37.533623, 32.509026>,  <33.262680, 37.071686, 33.163208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215523, 37.533623, 32.509026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468811, 37.234505, 32.429188>,  <33.620785, 37.055035, 32.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468811, 37.234505, 32.429188>,  <33.215523, 37.533623, 32.509026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468811, 37.234505, 32.429188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460240, -0.156476, -0.873896,
		0.622263, 0.645228, -0.443249,
		0.633220, -0.747794, -0.199591,
		33.658775, 37.010166, 32.369312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435406, 37.711899, 31.776112>,  <33.215523, 37.533623, 32.509026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435406, 37.711899, 31.776112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563190, 37.338223, 31.839645>,  <33.639862, 37.114017, 31.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563190, 37.338223, 31.839645>,  <33.435406, 37.711899, 31.776112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563190, 37.338223, 31.839645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074034, -0.191709, -0.978656,
		0.944703, 0.300883, -0.130406,
		0.319461, -0.934193, 0.158832,
		33.659027, 37.057964, 31.887295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028221, 37.581264, 31.367052>,  <33.435406, 37.711899, 31.776112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028221, 37.581264, 31.367052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902538, 37.208950, 31.441790>,  <33.827129, 36.985561, 31.486633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902538, 37.208950, 31.441790>,  <34.028221, 37.581264, 31.367052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902538, 37.208950, 31.441790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187527, -0.253786, -0.948908,
		0.930650, -0.263111, 0.254288,
		-0.314203, -0.930788, 0.186846,
		33.808277, 36.929714, 31.497843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564285, 37.169487, 31.059546>,  <34.028221, 37.581264, 31.367052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564285, 37.169487, 31.059546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236961, 36.941914, 31.092230>,  <34.040565, 36.805370, 31.111839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236961, 36.941914, 31.092230>,  <34.564285, 37.169487, 31.059546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236961, 36.941914, 31.092230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175747, -0.383023, -0.906866,
		0.547244, -0.727741, 0.413421,
		-0.818314, -0.568934, 0.081709,
		33.991467, 36.771233, 31.116743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790714, 36.668491, 30.704443>,  <34.564285, 37.169487, 31.059546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790714, 36.668491, 30.704443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391582, 36.642132, 30.703823>,  <34.152103, 36.626316, 30.703451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391582, 36.642132, 30.703823>,  <34.790714, 36.668491, 30.704443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391582, 36.642132, 30.703823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013943, -0.188022, -0.982066,
		0.064425, -0.979951, 0.188532,
		-0.997825, -0.065899, -0.001551,
		34.092236, 36.622364, 30.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596523, 35.973118, 30.453112>,  <34.790714, 36.668491, 30.704443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596523, 35.973118, 30.453112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303284, 36.229904, 30.363270>,  <34.127338, 36.383976, 30.309364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303284, 36.229904, 30.363270>,  <34.596523, 35.973118, 30.453112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303284, 36.229904, 30.363270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096170, -0.229078, -0.968646,
		-0.673286, -0.731716, 0.106199,
		-0.733101, 0.641962, -0.224604,
		34.083355, 36.422493, 30.295889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254757, 35.714993, 29.907368>,  <34.596523, 35.973118, 30.453112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254757, 35.714993, 29.907368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058693, 36.062603, 29.880440>,  <33.941055, 36.271172, 29.864283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058693, 36.062603, 29.880440>,  <34.254757, 35.714993, 29.907368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058693, 36.062603, 29.880440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042031, -0.053581, -0.997678,
		-0.870619, -0.491851, -0.010263,
		-0.490159, 0.869029, -0.067322,
		33.911644, 36.323311, 29.860243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692055, 35.645493, 29.339413>,  <34.254757, 35.714993, 29.907368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692055, 35.645493, 29.339413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749596, 36.035809, 29.405319>,  <33.784122, 36.269997, 29.444862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749596, 36.035809, 29.405319>,  <33.692055, 35.645493, 29.339413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749596, 36.035809, 29.405319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103745, 0.180450, -0.978097,
		-0.984146, 0.123611, 0.127192,
		0.143856, 0.975786, 0.164765,
		33.792751, 36.328545, 29.454748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084373, 36.037731, 29.041677>,  <33.692055, 35.645493, 29.339413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084373, 36.037731, 29.041677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408474, 36.271183, 29.063147>,  <33.602932, 36.411255, 29.076027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408474, 36.271183, 29.063147>,  <33.084373, 36.037731, 29.041677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408474, 36.271183, 29.063147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116907, 0.250676, -0.960986,
		-0.574311, 0.772361, 0.271340,
		0.810246, 0.583627, 0.053672,
		33.651546, 36.446270, 29.079248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790504, 36.635666, 28.789688>,  <33.084373, 36.037731, 29.041677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790504, 36.635666, 28.789688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188545, 36.608295, 28.761143>,  <33.427368, 36.591873, 28.744015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188545, 36.608295, 28.761143>,  <32.790504, 36.635666, 28.789688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188545, 36.608295, 28.761143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063697, 0.108355, -0.992070,
		0.075615, 0.991755, 0.103466,
		0.995100, -0.068425, -0.071365,
		33.487076, 36.587769, 28.739733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898239, 37.021183, 28.286888>,  <32.790504, 36.635666, 28.789688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898239, 37.021183, 28.286888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265335, 36.863823, 28.308773>,  <33.485592, 36.769405, 28.321903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265335, 36.863823, 28.308773>,  <32.898239, 37.021183, 28.286888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265335, 36.863823, 28.308773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119463, 0.142029, -0.982627,
		0.378798, 0.908329, 0.177343,
		0.917737, -0.393404, 0.054712,
		33.540657, 36.745800, 28.325186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272789, 37.429951, 27.850189>,  <32.898239, 37.021183, 28.286888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272789, 37.429951, 27.850189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467827, 37.081844, 27.878162>,  <33.584850, 36.872982, 27.894945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467827, 37.081844, 27.878162>,  <33.272789, 37.429951, 27.850189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467827, 37.081844, 27.878162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274820, 0.076962, -0.958410,
		0.828690, 0.486533, 0.276693,
		0.487593, -0.870266, 0.069931,
		33.614105, 36.820766, 27.899141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975006, 37.450256, 27.527517>,  <33.272789, 37.429951, 27.850189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975006, 37.450256, 27.527517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841644, 37.073166, 27.523191>,  <33.761627, 36.846912, 27.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841644, 37.073166, 27.523191>,  <33.975006, 37.450256, 27.527517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841644, 37.073166, 27.523191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250451, -0.077502, -0.965022,
		0.908911, -0.324448, 0.261946,
		-0.333400, -0.942723, -0.010816,
		33.741623, 36.790348, 27.519947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388355, 37.145016, 26.935846>,  <33.975006, 37.450256, 27.527517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388355, 37.145016, 26.935846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084248, 36.898041, 27.016605>,  <33.901783, 36.749855, 27.065062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084248, 36.898041, 27.016605>,  <34.388355, 37.145016, 26.935846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084248, 36.898041, 27.016605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047401, -0.257241, -0.965184,
		0.647878, -0.743369, 0.166305,
		-0.760268, -0.617439, 0.201897,
		33.856167, 36.712811, 27.077175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487083, 36.675602, 26.410379>,  <34.388355, 37.145016, 26.935846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487083, 36.675602, 26.410379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118912, 36.590420, 26.541498>,  <33.898006, 36.539310, 26.620171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118912, 36.590420, 26.541498>,  <34.487083, 36.675602, 26.410379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118912, 36.590420, 26.541498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220499, -0.409574, -0.885229,
		0.322775, -0.887073, 0.330028,
		-0.920433, -0.212959, 0.327799,
		33.842781, 36.526531, 26.639837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387497, 35.910606, 26.310093>,  <34.487083, 36.675602, 26.410379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387497, 35.910606, 26.310093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016521, 36.058609, 26.331835>,  <33.793938, 36.147411, 26.344879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016521, 36.058609, 26.331835>,  <34.387497, 35.910606, 26.310093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016521, 36.058609, 26.331835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234261, -0.461495, -0.855654,
		-0.291511, -0.806300, 0.514686,
		-0.927439, 0.370003, 0.054354,
		33.738289, 36.169609, 26.348141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873203, 35.371609, 26.369308>,  <34.387497, 35.910606, 26.310093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873203, 35.371609, 26.369308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664391, 35.676712, 26.216631>,  <33.539104, 35.859772, 26.125025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664391, 35.676712, 26.216631>,  <33.873203, 35.371609, 26.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664391, 35.676712, 26.216631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276353, -0.574627, -0.770346,
		-0.806917, -0.296660, 0.510761,
		-0.522027, 0.762756, -0.381694,
		33.507782, 35.905540, 26.102123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093430, 35.057434, 26.341276>,  <33.873203, 35.371609, 26.369308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093430, 35.057434, 26.341276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169064, 35.372002, 26.106060>,  <33.214443, 35.560741, 25.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169064, 35.372002, 26.106060>,  <33.093430, 35.057434, 26.341276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169064, 35.372002, 26.106060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471768, -0.452450, -0.756786,
		-0.861210, 0.420513, 0.285457,
		0.189083, 0.786421, -0.588039,
		33.225788, 35.607929, 25.929649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409924, 35.226818, 25.996859>,  <33.093430, 35.057434, 26.341276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409924, 35.226818, 25.996859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668797, 35.424057, 25.764301>,  <32.824120, 35.542400, 25.624767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668797, 35.424057, 25.764301>,  <32.409924, 35.226818, 25.996859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668797, 35.424057, 25.764301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385944, -0.445763, -0.807677,
		-0.657423, 0.747098, -0.098183,
		0.647180, 0.493093, -0.581393,
		32.862949, 35.571983, 25.589884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048256, 35.539955, 25.494217>,  <32.409924, 35.226818, 25.996859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048256, 35.539955, 25.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400276, 35.537777, 25.304279>,  <32.611488, 35.536469, 25.190317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400276, 35.537777, 25.304279>,  <32.048256, 35.539955, 25.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400276, 35.537777, 25.304279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378495, -0.611932, -0.694465,
		-0.286792, 0.790892, -0.540593,
		0.880052, -0.005444, -0.474846,
		32.664291, 35.536144, 25.161825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932386, 35.754414, 24.735323>,  <32.048256, 35.539955, 25.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932386, 35.754414, 24.735323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272121, 35.547413, 24.776920>,  <32.475964, 35.423214, 24.801878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272121, 35.547413, 24.776920>,  <31.932386, 35.754414, 24.735323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272121, 35.547413, 24.776920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309802, -0.648233, -0.695569,
		0.427369, 0.558557, -0.710893,
		0.849340, -0.517501, 0.103993,
		32.526924, 35.392162, 24.808119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996510, 35.488979, 24.107126>,  <31.932386, 35.754414, 24.735323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996510, 35.488979, 24.107126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264503, 35.248966, 24.281975>,  <32.425301, 35.104958, 24.386885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264503, 35.248966, 24.281975>,  <31.996510, 35.488979, 24.107126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264503, 35.248966, 24.281975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140687, -0.680771, -0.718859,
		0.728921, 0.420127, -0.540524,
		0.669985, -0.600037, 0.437122,
		32.465500, 35.068954, 24.413111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348770, 35.289436, 23.591412>,  <31.996510, 35.488979, 24.107126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348770, 35.289436, 23.591412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436382, 35.029358, 23.882418>,  <32.488949, 34.873310, 24.057020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436382, 35.029358, 23.882418>,  <32.348770, 35.289436, 23.591412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436382, 35.029358, 23.882418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034224, -0.740040, -0.671691,
		0.975117, 0.172020, -0.139840,
		0.219032, -0.650192, 0.727513,
		32.502090, 34.834301, 24.100672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780586, 34.872833, 23.261026>,  <32.348770, 35.289436, 23.591412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780586, 34.872833, 23.261026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639442, 34.651463, 23.562809>,  <32.554756, 34.518639, 23.743879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639442, 34.651463, 23.562809>,  <32.780586, 34.872833, 23.261026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639442, 34.651463, 23.562809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139621, -0.828441, -0.542394,
		0.925199, -0.086052, 0.369596,
		-0.352862, -0.553426, 0.754458,
		32.533585, 34.485435, 23.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105183, 34.212387, 23.180069>,  <32.780586, 34.872833, 23.261026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105183, 34.212387, 23.180069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827152, 34.123287, 23.453491>,  <32.660332, 34.069828, 23.617544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827152, 34.123287, 23.453491>,  <33.105183, 34.212387, 23.180069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827152, 34.123287, 23.453491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029132, -0.958738, -0.282795,
		0.718342, -0.176652, 0.672889,
		-0.695081, -0.222746, 0.683555,
		32.618629, 34.056465, 23.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321072, 33.548843, 23.518562>,  <33.105183, 34.212387, 23.180069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321072, 33.548843, 23.518562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925945, 33.583160, 23.570490>,  <32.688869, 33.603752, 23.601646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925945, 33.583160, 23.570490>,  <33.321072, 33.548843, 23.518562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925945, 33.583160, 23.570490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122842, -0.942066, -0.312123,
		0.095518, -0.324269, 0.941130,
		-0.987819, 0.085797, 0.129818,
		32.629601, 33.608898, 23.609436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113266, 32.945515, 23.834965>,  <33.321072, 33.548843, 23.518562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113266, 32.945515, 23.834965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778667, 33.074585, 23.657810>,  <32.577908, 33.152027, 23.551517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778667, 33.074585, 23.657810>,  <33.113266, 32.945515, 23.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778667, 33.074585, 23.657810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102060, -0.885838, -0.452631,
		-0.538379, -0.333425, 0.773935,
		-0.836500, 0.322675, -0.442887,
		32.527718, 33.171387, 23.524944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619274, 32.365364, 23.766689>,  <33.113266, 32.945515, 23.834965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619274, 32.365364, 23.766689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480927, 32.617844, 23.488997>,  <32.397919, 32.769333, 23.322380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480927, 32.617844, 23.488997>,  <32.619274, 32.365364, 23.766689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480927, 32.617844, 23.488997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057728, -0.752811, -0.655700,
		-0.936504, -0.186711, 0.296814,
		-0.345872, 0.631200, -0.694233,
		32.377167, 32.807205, 23.280727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207878, 31.961571, 23.388596>,  <32.619274, 32.365364, 23.766689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207878, 31.961571, 23.388596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239590, 32.284466, 23.154646>,  <32.258617, 32.478203, 23.014277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239590, 32.284466, 23.154646>,  <32.207878, 31.961571, 23.388596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239590, 32.284466, 23.154646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086017, -0.578994, -0.810782,
		-0.993134, 0.114590, 0.023531,
		0.079283, 0.807239, -0.584875,
		32.263374, 32.526638, 22.979183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723276, 31.941277, 22.929367>,  <32.207878, 31.961571, 23.388596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723276, 31.941277, 22.929367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973475, 32.197746, 22.751535>,  <32.123592, 32.351627, 22.644836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973475, 32.197746, 22.751535>,  <31.723276, 31.941277, 22.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973475, 32.197746, 22.751535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267307, -0.359219, -0.894152,
		-0.733008, 0.678128, -0.053300,
		0.625496, 0.641174, -0.444579,
		32.161125, 32.390099, 22.618162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387417, 32.128593, 22.360830>,  <31.723276, 31.941277, 22.929367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387417, 32.128593, 22.360830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770252, 32.204784, 22.273470>,  <31.999954, 32.250500, 22.221054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770252, 32.204784, 22.273470>,  <31.387417, 32.128593, 22.360830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770252, 32.204784, 22.273470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165127, -0.260869, -0.951147,
		-0.238142, 0.946397, -0.218223,
		0.957090, 0.190474, -0.218399,
		32.057381, 32.261925, 22.207951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308939, 32.418499, 21.717491>,  <31.387417, 32.128593, 22.360830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308939, 32.418499, 21.717491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679306, 32.270271, 21.746767>,  <31.901525, 32.181335, 21.764334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679306, 32.270271, 21.746767>,  <31.308939, 32.418499, 21.717491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679306, 32.270271, 21.746767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099940, -0.427197, -0.898618,
		0.364269, 0.824730, -0.432584,
		0.925916, -0.370571, 0.073191,
		31.957081, 32.159100, 21.768724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514730, 32.415409, 21.023937>,  <31.308939, 32.418499, 21.717491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514730, 32.415409, 21.023937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799879, 32.194332, 21.196609>,  <31.970968, 32.061687, 21.300213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799879, 32.194332, 21.196609>,  <31.514730, 32.415409, 21.023937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799879, 32.194332, 21.196609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035987, -0.585910, -0.809577,
		0.700371, 0.592659, -0.397789,
		0.712871, -0.552689, 0.431683,
		32.013741, 32.028526, 21.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019012, 32.375526, 20.607479>,  <31.514730, 32.415409, 21.023937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019012, 32.375526, 20.607479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094807, 32.060013, 20.841373>,  <32.140282, 31.870705, 20.981710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094807, 32.060013, 20.841373>,  <32.019012, 32.375526, 20.607479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094807, 32.060013, 20.841373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013058, -0.597499, -0.801764,
		0.981797, 0.144287, -0.123517,
		0.189485, -0.788782, 0.584738,
		32.151653, 31.823378, 21.016794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678524, 31.997538, 20.435459>,  <32.019012, 32.375526, 20.607479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678524, 31.997538, 20.435459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434219, 31.729595, 20.604347>,  <32.287636, 31.568830, 20.705681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434219, 31.729595, 20.604347>,  <32.678524, 31.997538, 20.435459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434219, 31.729595, 20.604347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002471, -0.534840, -0.844949,
		0.791814, -0.515016, 0.328313,
		-0.610758, -0.669854, 0.422221,
		32.250992, 31.528639, 20.731014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005821, 31.339176, 20.176685>,  <32.678524, 31.997538, 20.435459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005821, 31.339176, 20.176685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672146, 31.199348, 20.347296>,  <32.471939, 31.115452, 20.449663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672146, 31.199348, 20.347296>,  <33.005821, 31.339176, 20.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672146, 31.199348, 20.347296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069832, -0.700248, -0.710476,
		0.547035, -0.622459, 0.559731,
		-0.834193, -0.349568, 0.426528,
		32.421886, 31.094479, 20.475254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102165, 30.545105, 20.167282>,  <33.005821, 31.339176, 20.176685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102165, 30.545105, 20.167282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721436, 30.659750, 20.210884>,  <32.492996, 30.728537, 20.237045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721436, 30.659750, 20.210884>,  <33.102165, 30.545105, 20.167282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721436, 30.659750, 20.210884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276009, -0.645903, -0.711778,
		-0.133600, -0.707574, 0.693895,
		-0.951825, 0.286615, 0.109004,
		32.435886, 30.745735, 20.243586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494205, 29.800293, 20.185894>,  <33.102165, 30.545105, 20.167282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494205, 29.800293, 20.185894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856342, 29.735291, 20.028952>,  <34.073624, 29.696289, 19.934786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856342, 29.735291, 20.028952>,  <33.494205, 29.800293, 20.185894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856342, 29.735291, 20.028952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420975, 0.221704, 0.879561,
		-0.055947, -0.961478, 0.269129,
		0.905345, -0.162506, -0.392354,
		34.127945, 29.686539, 19.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807068, 29.470779, 20.732601>,  <33.494205, 29.800293, 20.185894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807068, 29.470779, 20.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109367, 29.627798, 20.522936>,  <34.290749, 29.722010, 20.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109367, 29.627798, 20.522936>,  <33.807068, 29.470779, 20.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109367, 29.627798, 20.522936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421862, 0.320364, 0.848174,
		0.500872, -0.862133, 0.076515,
		0.755751, 0.392548, -0.524162,
		34.336094, 29.745562, 20.365686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385674, 29.230818, 21.133080>,  <33.807068, 29.470779, 20.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385674, 29.230818, 21.133080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484085, 29.565544, 20.937445>,  <34.543133, 29.766380, 20.820065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484085, 29.565544, 20.937445>,  <34.385674, 29.230818, 21.133080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484085, 29.565544, 20.937445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401318, 0.371365, 0.837276,
		0.882278, -0.402273, -0.244464,
		0.246028, 0.836818, -0.489086,
		34.557892, 29.816589, 20.790718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901913, 29.440868, 21.587694>,  <34.385674, 29.230818, 21.133080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901913, 29.440868, 21.587694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821274, 29.750404, 21.347517>,  <34.772892, 29.936127, 21.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821274, 29.750404, 21.347517>,  <34.901913, 29.440868, 21.587694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821274, 29.750404, 21.347517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399912, 0.624632, 0.670750,
		0.894108, -0.104904, -0.435391,
		-0.201595, 0.773841, -0.600441,
		34.760796, 29.982557, 21.167385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530754, 29.920586, 21.557119>,  <34.901913, 29.440868, 21.587694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530754, 29.920586, 21.557119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239750, 30.177000, 21.459301>,  <35.065147, 30.330849, 21.400610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239750, 30.177000, 21.459301>,  <35.530754, 29.920586, 21.557119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239750, 30.177000, 21.459301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403828, 0.688231, 0.602711,
		0.554662, 0.339725, -0.759564,
		-0.727511, 0.641034, -0.244546,
		35.021496, 30.369310, 21.385937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909924, 30.549339, 21.675701>,  <35.530754, 29.920586, 21.557119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909924, 30.549339, 21.675701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516140, 30.618246, 21.662081>,  <35.279869, 30.659590, 21.653908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516140, 30.618246, 21.662081>,  <35.909924, 30.549339, 21.675701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516140, 30.618246, 21.662081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130628, 0.848024, 0.513607,
		0.117355, 0.501178, -0.857350,
		-0.984461, 0.172268, -0.034052,
		35.220802, 30.669926, 21.651865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766197, 31.176840, 21.327808>,  <35.909924, 30.549339, 21.675701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766197, 31.176840, 21.327808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467922, 31.110636, 21.585972>,  <35.288956, 31.070913, 21.740870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467922, 31.110636, 21.585972>,  <35.766197, 31.176840, 21.327808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467922, 31.110636, 21.585972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275684, 0.805211, 0.525008,
		-0.606584, 0.569422, -0.554810,
		-0.745691, -0.165509, 0.645409,
		35.244217, 31.060984, 21.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476864, 31.808260, 21.572069>,  <35.766197, 31.176840, 21.327808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476864, 31.808260, 21.572069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367073, 31.560003, 21.865862>,  <35.301201, 31.411049, 22.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367073, 31.560003, 21.865862>,  <35.476864, 31.808260, 21.572069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367073, 31.560003, 21.865862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233284, 0.698022, 0.677011,
		-0.932868, 0.357165, -0.046803,
		-0.274474, -0.620643, 0.734483,
		35.284729, 31.373810, 22.086206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069378, 32.213642, 22.006617>,  <35.476864, 31.808260, 21.572069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069378, 32.213642, 22.006617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139484, 31.914473, 22.262707>,  <35.181549, 31.734970, 22.416361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139484, 31.914473, 22.262707>,  <35.069378, 32.213642, 22.006617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139484, 31.914473, 22.262707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138820, 0.662566, 0.736026,
		-0.974685, -0.040123, 0.219952,
		0.175264, -0.747928, 0.640224,
		35.192062, 31.690094, 22.454775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664673, 32.334373, 22.654303>,  <35.069378, 32.213642, 22.006617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664673, 32.334373, 22.654303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947426, 32.075130, 22.767635>,  <35.117077, 31.919584, 22.835634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947426, 32.075130, 22.767635>,  <34.664673, 32.334373, 22.654303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947426, 32.075130, 22.767635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135302, 0.517059, 0.845189,
		-0.694271, -0.559113, 0.453189,
		0.706881, -0.648108, 0.283330,
		35.159489, 31.880699, 22.852634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446266, 32.080864, 23.366787>,  <34.664673, 32.334373, 22.654303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446266, 32.080864, 23.366787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836857, 32.028332, 23.298382>,  <35.071213, 31.996813, 23.257339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836857, 32.028332, 23.298382>,  <34.446266, 32.080864, 23.366787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836857, 32.028332, 23.298382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206495, 0.341273, 0.917002,
		-0.062066, -0.930745, 0.360364,
		0.976477, -0.131328, -0.171013,
		35.129799, 31.988934, 23.247078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738106, 31.742958, 23.920580>,  <34.446266, 32.080864, 23.366787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738106, 31.742958, 23.920580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066963, 31.900799, 23.756447>,  <35.264278, 31.995502, 23.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066963, 31.900799, 23.756447>,  <34.738106, 31.742958, 23.920580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066963, 31.900799, 23.756447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173412, 0.512942, 0.840725,
		0.542229, -0.762352, 0.353282,
		0.822141, 0.394602, -0.410332,
		35.313606, 32.019180, 23.633347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314301, 31.940443, 24.488457>,  <34.738106, 31.742958, 23.920580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314301, 31.940443, 24.488457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429047, 32.150753, 24.168140>,  <35.497894, 32.276939, 23.975950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429047, 32.150753, 24.168140>,  <35.314301, 31.940443, 24.488457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429047, 32.150753, 24.168140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239503, 0.770014, 0.591368,
		0.927548, -0.361437, 0.094968,
		0.286869, 0.525777, -0.800790,
		35.515106, 32.308487, 23.927904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027271, 32.269367, 24.599110>,  <35.314301, 31.940443, 24.488457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027271, 32.269367, 24.599110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822433, 32.492580, 24.337925>,  <35.699532, 32.626507, 24.181213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822433, 32.492580, 24.337925>,  <36.027271, 32.269367, 24.599110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822433, 32.492580, 24.337925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095480, 0.792477, 0.602382,
		0.853605, 0.246133, -0.459105,
		-0.512096, 0.558031, -0.652961,
		35.668804, 32.659988, 24.142036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343277, 32.862648, 24.661207>,  <36.027271, 32.269367, 24.599110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343277, 32.862648, 24.661207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023487, 33.008869, 24.470541>,  <35.831612, 33.096603, 24.356140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023487, 33.008869, 24.470541>,  <36.343277, 32.862648, 24.661207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023487, 33.008869, 24.470541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074120, 0.847487, 0.525616,
		0.596110, 0.384886, -0.704639,
		-0.799475, 0.365553, -0.476667,
		35.783646, 33.118534, 24.327541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471470, 33.604164, 24.441288>,  <36.343277, 32.862648, 24.661207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471470, 33.604164, 24.441288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077171, 33.541756, 24.466471>,  <35.840591, 33.504311, 24.481581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077171, 33.541756, 24.466471>,  <36.471470, 33.604164, 24.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077171, 33.541756, 24.466471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085236, 0.785735, 0.612662,
		-0.145058, 0.598562, -0.787833,
		-0.985745, -0.156023, 0.062958,
		35.781448, 33.494949, 24.485357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217346, 34.209831, 24.309662>,  <36.471470, 33.604164, 24.441288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217346, 34.209831, 24.309662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928982, 33.996536, 24.486723>,  <35.755962, 33.868561, 24.592958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928982, 33.996536, 24.486723>,  <36.217346, 34.209831, 24.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928982, 33.996536, 24.486723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027353, 0.660119, 0.750663,
		-0.692485, 0.529055, -0.490474,
		-0.720913, -0.533239, 0.442652,
		35.712708, 33.836563, 24.619518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691261, 34.634754, 24.516506>,  <36.217346, 34.209831, 24.309662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691261, 34.634754, 24.516506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631092, 34.308937, 24.740610>,  <35.594990, 34.113445, 24.875072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631092, 34.308937, 24.740610>,  <35.691261, 34.634754, 24.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631092, 34.308937, 24.740610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168184, 0.579531, 0.797407,
		-0.974210, 0.025724, -0.224170,
		-0.150426, -0.814544, 0.560259,
		35.585964, 34.064575, 24.908688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084496, 34.905945, 24.980110>,  <35.691261, 34.634754, 24.516506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084496, 34.905945, 24.980110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238167, 34.573425, 25.140785>,  <35.330368, 34.373913, 25.237190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238167, 34.573425, 25.140785>,  <35.084496, 34.905945, 24.980110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238167, 34.573425, 25.140785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078357, 0.462864, 0.882959,
		-0.919928, -0.307739, 0.242960,
		0.384178, -0.831297, 0.401688,
		35.353420, 34.324036, 25.261292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621216, 34.719593, 25.496271>,  <35.084496, 34.905945, 24.980110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621216, 34.719593, 25.496271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974270, 34.552601, 25.582676>,  <35.186104, 34.452404, 25.634520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974270, 34.552601, 25.582676>,  <34.621216, 34.719593, 25.496271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974270, 34.552601, 25.582676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023770, 0.498601, 0.866506,
		-0.469457, -0.759674, 0.450006,
		0.882636, -0.417484, 0.216014,
		35.239059, 34.427357, 25.647480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512627, 34.622345, 26.149387>,  <34.621216, 34.719593, 25.496271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512627, 34.622345, 26.149387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910717, 34.598492, 26.118465>,  <35.149570, 34.584179, 26.099913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910717, 34.598492, 26.118465>,  <34.512627, 34.622345, 26.149387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910717, 34.598492, 26.118465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096731, 0.494750, 0.863635,
		-0.013258, -0.866986, 0.498155,
		0.995222, -0.059637, -0.077305,
		35.209282, 34.580601, 26.095274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690216, 34.454224, 26.841496>,  <34.512627, 34.622345, 26.149387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690216, 34.454224, 26.841496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023106, 34.566113, 26.650015>,  <35.222839, 34.633247, 26.535126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023106, 34.566113, 26.650015>,  <34.690216, 34.454224, 26.841496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023106, 34.566113, 26.650015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309404, 0.482147, 0.819636,
		0.460075, -0.830235, 0.314708,
		0.832226, 0.279722, -0.478702,
		35.272774, 34.650028, 26.506403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128956, 34.300968, 27.394892>,  <34.690216, 34.454224, 26.841496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128956, 34.300968, 27.394892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318260, 34.539150, 27.135214>,  <35.431843, 34.682060, 26.979406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318260, 34.539150, 27.135214>,  <35.128956, 34.300968, 27.394892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318260, 34.539150, 27.135214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501315, 0.423931, 0.754299,
		0.724365, -0.682433, -0.097880,
		0.473264, 0.595456, -0.649194,
		35.460239, 34.717789, 26.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832596, 34.284187, 27.561636>,  <35.128956, 34.300968, 27.394892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832596, 34.284187, 27.561636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751434, 34.619835, 27.359764>,  <35.702736, 34.821224, 27.238642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751434, 34.619835, 27.359764>,  <35.832596, 34.284187, 27.561636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751434, 34.619835, 27.359764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423747, 0.539887, 0.727296,
		0.882761, -0.066285, -0.465122,
		-0.202905, 0.839123, -0.504679,
		35.690563, 34.871571, 27.208361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328979, 34.765949, 27.752937>,  <35.832596, 34.284187, 27.561636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328979, 34.765949, 27.752937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105145, 35.056087, 27.592567>,  <35.970844, 35.230171, 27.496346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105145, 35.056087, 27.592567>,  <36.328979, 34.765949, 27.752937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105145, 35.056087, 27.592567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387201, 0.656528, 0.647338,
		0.732760, 0.207004, -0.648238,
		-0.559588, 0.725342, -0.400925,
		35.937267, 35.273689, 27.472290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730385, 35.265049, 27.538752>,  <36.328979, 34.765949, 27.752937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730385, 35.265049, 27.538752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381458, 35.439087, 27.627972>,  <36.172100, 35.543510, 27.681503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381458, 35.439087, 27.627972>,  <36.730385, 35.265049, 27.538752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381458, 35.439087, 27.627972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477406, 0.659484, 0.580658,
		0.105544, 0.613005, -0.782998,
		-0.872321, 0.435093, 0.223048,
		36.119762, 35.569614, 27.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915428, 35.970825, 27.578852>,  <36.730385, 35.265049, 27.538752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915428, 35.970825, 27.578852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 35.925690, 27.765436>,  <36.353947, 35.898609, 27.877386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 35.925690, 27.765436>,  <36.915428, 35.970825, 27.578852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564503, 35.925690, 27.765436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307869, 0.613290, 0.727387,
		-0.368151, 0.781757, -0.503310,
		-0.877315, -0.112834, 0.466462,
		36.301308, 35.891838, 27.905375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570255, 36.685036, 27.668993>,  <36.915428, 35.970825, 27.578852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570255, 36.685036, 27.668993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445728, 36.428093, 27.949125>,  <36.371014, 36.273926, 28.117205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445728, 36.428093, 27.949125>,  <36.570255, 36.685036, 27.668993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445728, 36.428093, 27.949125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293880, 0.635751, 0.713761,
		-0.903725, 0.428017, -0.009142,
		-0.311314, -0.642357, 0.700330,
		36.352333, 36.235386, 28.159224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341808, 37.168015, 28.119757>,  <36.570255, 36.685036, 27.668993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341808, 37.168015, 28.119757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400116, 36.824329, 28.315922>,  <36.435101, 36.618118, 28.433620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400116, 36.824329, 28.315922>,  <36.341808, 37.168015, 28.119757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400116, 36.824329, 28.315922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421457, 0.502410, 0.754956,
		-0.895056, 0.096639, 0.435357,
		0.145770, -0.859212, 0.490414,
		36.443848, 36.566566, 28.463045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142136, 37.366199, 28.728149>,  <36.341808, 37.168015, 28.119757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142136, 37.366199, 28.728149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346088, 37.030537, 28.803867>,  <36.468460, 36.829140, 28.849298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346088, 37.030537, 28.803867>,  <36.142136, 37.366199, 28.728149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346088, 37.030537, 28.803867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427790, 0.438251, 0.790526,
		-0.746337, -0.322095, 0.582440,
		0.509879, -0.839161, 0.189293,
		36.499054, 36.778790, 28.860655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175850, 37.296135, 29.493870>,  <36.142136, 37.366199, 28.728149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175850, 37.296135, 29.493870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479099, 37.076031, 29.353889>,  <36.661049, 36.943966, 29.269901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479099, 37.076031, 29.353889>,  <36.175850, 37.296135, 29.493870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479099, 37.076031, 29.353889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527020, 0.200938, 0.825756,
		-0.384065, -0.810453, 0.442335,
		0.758119, -0.550263, -0.349952,
		36.706535, 36.910954, 29.248903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354565, 36.819019, 30.079103>,  <36.175850, 37.296135, 29.493870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354565, 36.819019, 30.079103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667118, 36.855404, 29.832146>,  <36.854649, 36.877235, 29.683971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667118, 36.855404, 29.832146>,  <36.354565, 36.819019, 30.079103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667118, 36.855404, 29.832146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610711, 0.092052, 0.786484,
		0.128373, -0.991591, 0.016375,
		0.781378, 0.090963, -0.617393,
		36.901531, 36.882690, 29.646929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925095, 36.449432, 30.504234>,  <36.354565, 36.819019, 30.079103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925095, 36.449432, 30.504234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111198, 36.638103, 30.204618>,  <37.222858, 36.751305, 30.024849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111198, 36.638103, 30.204618>,  <36.925095, 36.449432, 30.504234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111198, 36.638103, 30.204618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803163, 0.130782, 0.581228,
		0.372111, -0.872021, -0.317984,
		0.465256, 0.471674, -0.749040,
		37.250774, 36.779606, 29.979906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621025, 36.222260, 30.437082>,  <36.925095, 36.449432, 30.504234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621025, 36.222260, 30.437082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643337, 36.562649, 30.228188>,  <37.656723, 36.766884, 30.102850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643337, 36.562649, 30.228188>,  <37.621025, 36.222260, 30.437082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643337, 36.562649, 30.228188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876887, 0.208368, 0.433187,
		0.477449, -0.482107, -0.734585,
		0.055778, 0.850973, -0.522238,
		37.660072, 36.817940, 30.071516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195820, 36.237862, 30.095707>,  <37.621025, 36.222260, 30.437082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195820, 36.237862, 30.095707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112793, 36.624519, 30.155716>,  <38.062977, 36.856514, 30.191721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112793, 36.624519, 30.155716>,  <38.195820, 36.237862, 30.095707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112793, 36.624519, 30.155716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905254, 0.131696, 0.403944,
		0.370714, 0.219653, -0.902399,
		-0.207570, 0.966648, 0.150020,
		38.050522, 36.914513, 30.200722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782627, 36.622768, 29.870399>,  <38.195820, 36.237862, 30.095707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782627, 36.622768, 29.870399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598377, 36.894520, 30.098879>,  <38.487827, 37.057571, 30.235966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598377, 36.894520, 30.098879>,  <38.782627, 36.622768, 29.870399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598377, 36.894520, 30.098879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864958, 0.199173, 0.460627,
		0.199173, 0.706240, -0.679379,
		-0.460627, 0.679379, 0.571198,
		38.460190, 37.098335, 30.270239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283752, 37.282238, 29.904751>,  <38.782627, 36.622768, 29.870399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283752, 37.282238, 29.904751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017406, 37.297729, 30.202776>,  <38.857597, 37.307026, 30.381592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017406, 37.297729, 30.202776>,  <39.283752, 37.282238, 29.904751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017406, 37.297729, 30.202776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721365, 0.288290, 0.629699,
		-0.190405, 0.956759, -0.219902,
		-0.665867, 0.038732, 0.745065,
		38.817646, 37.309349, 30.426296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389954, 37.938725, 30.231655>,  <39.283752, 37.282238, 29.904751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389954, 37.938725, 30.231655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217728, 37.732338, 30.527870>,  <39.114391, 37.608505, 30.705599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217728, 37.732338, 30.527870>,  <39.389954, 37.938725, 30.231655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217728, 37.732338, 30.527870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662142, 0.376988, 0.647648,
		-0.613336, 0.769196, 0.179323,
		-0.430565, -0.515964, 0.740537,
		39.088558, 37.577549, 30.750031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210949, 38.411331, 30.756157>,  <39.389954, 37.938725, 30.231655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210949, 38.411331, 30.756157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201557, 38.054604, 30.936869>,  <39.195923, 37.840569, 31.045296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201557, 38.054604, 30.936869>,  <39.210949, 38.411331, 30.756157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201557, 38.054604, 30.936869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560175, 0.362564, 0.744816,
		-0.828041, 0.270563, 0.491063,
		-0.023477, -0.891820, 0.451781,
		39.194515, 37.787056, 31.072403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266315, 38.597412, 31.434586>,  <39.210949, 38.411331, 30.756157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266315, 38.597412, 31.434586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356201, 38.208797, 31.464565>,  <39.410133, 37.975628, 31.482553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356201, 38.208797, 31.464565>,  <39.266315, 38.597412, 31.434586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356201, 38.208797, 31.464565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691629, 0.213210, 0.690066,
		-0.686405, -0.103232, 0.719855,
		0.224717, -0.971537, 0.074950,
		39.423615, 37.917336, 31.487051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220978, 38.479713, 32.058037>,  <39.266315, 38.597412, 31.434586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220978, 38.479713, 32.058037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480228, 38.214085, 31.908932>,  <39.635777, 38.054707, 31.819469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480228, 38.214085, 31.908932>,  <39.220978, 38.479713, 32.058037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480228, 38.214085, 31.908932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637975, 0.206185, 0.741940,
		-0.415841, -0.718680, 0.557293,
		0.648123, -0.664068, -0.372760,
		39.674664, 38.014866, 31.797104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673492, 38.310120, 32.717659>,  <39.220978, 38.479713, 32.058037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673492, 38.310120, 32.717659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875008, 38.155628, 32.408588>,  <39.995918, 38.062935, 32.223148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875008, 38.155628, 32.408588>,  <39.673492, 38.310120, 32.717659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875008, 38.155628, 32.408588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810069, -0.099381, 0.577851,
		-0.299970, -0.917035, 0.262803,
		0.503792, -0.386227, -0.772673,
		40.026146, 38.039761, 32.176788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974987, 37.729733, 33.035671>,  <39.673492, 38.310120, 32.717659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974987, 37.729733, 33.035671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187935, 37.813541, 32.707603>,  <40.315704, 37.863827, 32.510761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187935, 37.813541, 32.707603>,  <39.974987, 37.729733, 33.035671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187935, 37.813541, 32.707603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843548, -0.212320, 0.493302,
		-0.070780, -0.954474, -0.289776,
		0.532369, 0.209524, -0.820172,
		40.347645, 37.876400, 32.461552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383446, 37.196983, 32.840839>,  <39.974987, 37.729733, 33.035671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383446, 37.196983, 32.840839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566063, 37.525921, 32.705009>,  <40.675632, 37.723286, 32.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566063, 37.525921, 32.705009>,  <40.383446, 37.196983, 32.840839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566063, 37.525921, 32.705009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739997, -0.139083, 0.658073,
		0.493934, -0.551727, -0.672031,
		0.456545, 0.822346, -0.339579,
		40.703026, 37.772625, 32.603134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034950, 36.834610, 32.826019>,  <40.383446, 37.196983, 32.840839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034950, 36.834610, 32.826019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073269, 37.232304, 32.806713>,  <41.096260, 37.470921, 32.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073269, 37.232304, 32.806713>,  <41.034950, 36.834610, 32.826019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073269, 37.232304, 32.806713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911755, -0.068192, 0.405033,
		0.399405, -0.082807, -0.913027,
		0.095801, 0.994230, -0.048263,
		41.102009, 37.530571, 32.792233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836006, 36.941448, 32.661968>,  <41.034950, 36.834610, 32.826019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836006, 36.941448, 32.661968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726139, 37.297237, 32.808064>,  <41.660221, 37.510712, 32.895721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726139, 37.297237, 32.808064>,  <41.836006, 36.941448, 32.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726139, 37.297237, 32.808064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755239, -0.035532, 0.654486,
		0.595125, 0.455605, -0.662005,
		-0.274665, 0.889472, 0.365237,
		41.643738, 37.564079, 32.917633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452763, 37.308624, 32.868797>,  <41.836006, 36.941448, 32.661968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452763, 37.308624, 32.868797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151512, 37.492611, 33.056934>,  <41.970760, 37.603004, 33.169819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151512, 37.492611, 33.056934>,  <42.452763, 37.308624, 32.868797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151512, 37.492611, 33.056934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568667, 0.095689, 0.816983,
		0.330780, 0.882764, -0.333635,
		-0.753128, 0.459969, 0.470347,
		41.925575, 37.630600, 33.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675602, 38.038002, 33.128113>,  <42.452763, 37.308624, 32.868797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675602, 38.038002, 33.128113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352966, 37.933273, 33.340099>,  <42.159386, 37.870434, 33.467289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352966, 37.933273, 33.340099>,  <42.675602, 38.038002, 33.128113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352966, 37.933273, 33.340099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542968, 0.026233, 0.839343,
		-0.233663, 0.964759, 0.121003,
		-0.806590, -0.261824, 0.529963,
		42.110989, 37.854725, 33.499088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444862, 38.622536, 33.466160>,  <42.675602, 38.038002, 33.128113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444862, 38.622536, 33.466160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363853, 38.311344, 33.704063>,  <42.315247, 38.124630, 33.846806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363853, 38.311344, 33.704063>,  <42.444862, 38.622536, 33.466160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363853, 38.311344, 33.704063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581686, 0.393018, 0.712165,
		-0.787798, 0.490190, 0.372944,
		-0.202522, -0.777978, 0.594756,
		42.303097, 38.077950, 33.882488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220940, 38.815445, 34.168312>,  <42.444862, 38.622536, 33.466160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220940, 38.815445, 34.168312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374557, 38.449661, 34.219353>,  <42.466728, 38.230190, 34.249977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374557, 38.449661, 34.219353>,  <42.220940, 38.815445, 34.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374557, 38.449661, 34.219353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593828, 0.350454, 0.724259,
		-0.707021, -0.202373, 0.677619,
		0.384045, -0.914455, 0.127603,
		42.489773, 38.175323, 34.257633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453476, 38.805683, 34.830715>,  <42.220940, 38.815445, 34.168312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453476, 38.805683, 34.830715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616299, 38.463493, 34.702675>,  <42.713993, 38.258179, 34.625851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616299, 38.463493, 34.702675>,  <42.453476, 38.805683, 34.830715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616299, 38.463493, 34.702675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657795, 0.031413, 0.752541,
		-0.633728, -0.516883, 0.575517,
		0.407055, -0.855479, -0.320096,
		42.738415, 38.206848, 34.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425484, 38.291389, 35.385704>,  <42.453476, 38.805683, 34.830715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425484, 38.291389, 35.385704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731350, 38.167423, 35.159698>,  <42.914871, 38.093044, 35.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731350, 38.167423, 35.159698>,  <42.425484, 38.291389, 35.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731350, 38.167423, 35.159698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629917, 0.174436, 0.756820,
		-0.135988, -0.934627, 0.328603,
		0.764665, -0.309911, -0.565016,
		42.960751, 38.074451, 34.990192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695572, 37.747253, 35.768021>,  <42.425484, 38.291389, 35.385704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695572, 37.747253, 35.768021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970280, 37.892578, 35.516193>,  <43.135105, 37.979774, 35.365097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970280, 37.892578, 35.516193>,  <42.695572, 37.747253, 35.768021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970280, 37.892578, 35.516193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675519, 0.000776, 0.737342,
		0.268375, -0.931667, -0.244892,
		0.686767, 0.363313, -0.629567,
		43.176311, 38.001572, 35.327324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462322, 37.555138, 36.152287>,  <42.695572, 37.747253, 35.768021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462322, 37.555138, 36.152287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545628, 37.800682, 35.847710>,  <43.595612, 37.948009, 35.664963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545628, 37.800682, 35.847710>,  <43.462322, 37.555138, 36.152287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545628, 37.800682, 35.847710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891795, 0.200521, 0.405577,
		0.401655, -0.763518, -0.505681,
		0.208265, 0.613866, -0.761442,
		43.608109, 37.984840, 35.619278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058281, 37.190945, 35.891846>,  <43.462322, 37.555138, 36.152287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058281, 37.190945, 35.891846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027187, 37.578732, 35.798817>,  <44.008533, 37.811405, 35.743000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027187, 37.578732, 35.798817>,  <44.058281, 37.190945, 35.891846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027187, 37.578732, 35.798817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894682, 0.170758, 0.412777,
		0.439888, -0.175990, -0.880640,
		-0.077732, 0.969469, -0.232569,
		44.003868, 37.869572, 35.729046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689850, 37.318211, 35.716145>,  <44.058281, 37.190945, 35.891846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689850, 37.318211, 35.716145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512367, 37.671936, 35.774258>,  <44.405876, 37.884171, 35.809128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512367, 37.671936, 35.774258>,  <44.689850, 37.318211, 35.716145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512367, 37.671936, 35.774258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849903, 0.363814, 0.381187,
		0.284234, 0.292613, -0.913011,
		-0.443707, 0.884317, 0.145285,
		44.379253, 37.937233, 35.817844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259624, 37.923267, 35.612137>,  <44.689850, 37.318211, 35.716145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259624, 37.923267, 35.612137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979053, 38.118984, 35.819439>,  <44.810711, 38.236412, 35.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979053, 38.118984, 35.819439>,  <45.259624, 37.923267, 35.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979053, 38.118984, 35.819439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712652, 0.492716, 0.499358,
		-0.011025, 0.719603, -0.694298,
		-0.701431, 0.489287, 0.518259,
		44.768623, 38.265770, 35.974918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397724, 38.687485, 35.513447>,  <45.259624, 37.923267, 35.612137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397724, 38.687485, 35.513447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195175, 38.608330, 35.849167>,  <45.073647, 38.560837, 36.050598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195175, 38.608330, 35.849167>,  <45.397724, 38.687485, 35.513447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195175, 38.608330, 35.849167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633874, 0.574462, 0.517878,
		-0.584626, 0.794252, -0.165460,
		-0.506376, -0.197884, 0.839301,
		45.043262, 38.548965, 36.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238846, 39.409245, 35.845108>,  <45.397724, 38.687485, 35.513447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238846, 39.409245, 35.845108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249153, 39.128071, 36.129421>,  <45.255337, 38.959366, 36.300011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249153, 39.128071, 36.129421>,  <45.238846, 39.409245, 35.845108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249153, 39.128071, 36.129421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644804, 0.555029, 0.525520,
		-0.763914, 0.444773, 0.467560,
		0.025772, -0.702937, 0.710785,
		45.256886, 38.917191, 36.342655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964882, 39.696636, 36.499107>,  <45.238846, 39.409245, 35.845108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964882, 39.696636, 36.499107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219788, 39.400631, 36.585159>,  <45.372730, 39.223030, 36.636791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219788, 39.400631, 36.585159>,  <44.964882, 39.696636, 36.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219788, 39.400631, 36.585159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455605, 0.586919, 0.669290,
		-0.621546, -0.328499, 0.711174,
		0.637263, -0.740009, 0.215131,
		45.410965, 39.178627, 36.649700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110851, 39.555286, 37.271591>,  <44.964882, 39.696636, 36.499107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110851, 39.555286, 37.271591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433567, 39.515518, 37.038624>,  <45.627197, 39.491657, 36.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433567, 39.515518, 37.038624>,  <45.110851, 39.555286, 37.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433567, 39.515518, 37.038624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499187, 0.642031, 0.581901,
		0.316079, -0.760205, 0.567610,
		0.806787, -0.099417, -0.582417,
		45.675602, 39.485695, 36.863899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729092, 39.382195, 37.734543>,  <45.110851, 39.555286, 37.271591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729092, 39.382195, 37.734543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730652, 39.592098, 37.394047>,  <45.731586, 39.718040, 37.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730652, 39.592098, 37.394047>,  <45.729092, 39.382195, 37.734543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730652, 39.592098, 37.394047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020889, 0.851107, 0.524577,
		0.999774, 0.015736, 0.014280,
		0.003899, 0.524756, -0.851243,
		45.731823, 39.749527, 37.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198189, 39.496025, 37.104950>,  <45.729092, 39.382195, 37.734543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198189, 39.496025, 37.104950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023453, 39.203781, 37.314857>,  <45.918613, 39.028435, 37.440804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023453, 39.203781, 37.314857>,  <46.198189, 39.496025, 37.104950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023453, 39.203781, 37.314857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237112, -0.469221, -0.850653,
		0.867728, -0.496024, 0.031736,
		-0.436836, -0.730611, 0.524769,
		45.892403, 38.984596, 37.472290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445457, 38.869015, 36.835293>,  <46.198189, 39.496025, 37.104950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445457, 38.869015, 36.835293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088543, 38.831581, 37.011959>,  <45.874393, 38.809120, 37.117958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088543, 38.831581, 37.011959>,  <46.445457, 38.869015, 36.835293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088543, 38.831581, 37.011959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391769, -0.325692, -0.860489,
		0.224373, -0.940833, 0.253948,
		-0.892286, -0.093581, 0.441666,
		45.820858, 38.803509, 37.144459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188004, 38.146889, 36.931965>,  <46.445457, 38.869015, 36.835293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188004, 38.146889, 36.931965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941505, 38.452316, 36.854813>,  <45.793606, 38.635574, 36.808521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941505, 38.452316, 36.854813>,  <46.188004, 38.146889, 36.931965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941505, 38.452316, 36.854813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260207, -0.428559, -0.865234,
		-0.743327, -0.483008, 0.462784,
		-0.616245, 0.763571, -0.192877,
		45.756634, 38.681389, 36.796951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442963, 37.982903, 36.753189>,  <46.188004, 38.146889, 36.931965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442963, 37.982903, 36.753189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531292, 38.302006, 36.528755>,  <45.584290, 38.493469, 36.394093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531292, 38.302006, 36.528755>,  <45.442963, 37.982903, 36.753189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531292, 38.302006, 36.528755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313975, -0.486516, -0.815304,
		-0.923393, 0.356209, 0.143039,
		0.220828, 0.797757, -0.561087,
		45.597542, 38.541332, 36.360428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054207, 38.131397, 37.339863>,  <45.442963, 37.982903, 36.753189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054207, 38.131397, 37.339863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107822, 38.390491, 37.039871>,  <45.139992, 38.545948, 36.859875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107822, 38.390491, 37.039871>,  <45.054207, 38.131397, 37.339863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107822, 38.390491, 37.039871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842224, -0.324344, -0.430650,
		-0.522199, 0.689378, 0.502061,
		0.134041, 0.647733, -0.749983,
		45.148033, 38.584812, 36.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365353, 38.465008, 37.264645>,  <45.054207, 38.131397, 37.339863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365353, 38.465008, 37.264645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559559, 38.492382, 36.916027>,  <44.676083, 38.508808, 36.706856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559559, 38.492382, 36.916027>,  <44.365353, 38.465008, 37.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559559, 38.492382, 36.916027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810099, -0.339568, -0.477947,
		-0.328659, 0.938089, -0.109423,
		0.485513, 0.068437, -0.871547,
		44.705212, 38.512913, 36.654564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917503, 38.734295, 36.815777>,  <44.365353, 38.465008, 37.264645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917503, 38.734295, 36.815777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182640, 38.589947, 36.553352>,  <44.341721, 38.503338, 36.395897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182640, 38.589947, 36.553352>,  <43.917503, 38.734295, 36.815777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182640, 38.589947, 36.553352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742218, -0.201080, -0.639280,
		0.098778, 0.910680, -0.401130,
		0.662839, -0.360873, -0.656060,
		44.381493, 38.481686, 36.356533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775272, 39.049503, 36.190765>,  <43.917503, 38.734295, 36.815777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775272, 39.049503, 36.190765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968357, 38.723114, 36.063534>,  <44.084209, 38.527279, 35.987194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968357, 38.723114, 36.063534>,  <43.775272, 39.049503, 36.190765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968357, 38.723114, 36.063534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584966, -0.030107, -0.810499,
		0.651768, 0.577307, -0.491849,
		0.482715, -0.815972, -0.318082,
		44.113171, 38.478321, 35.968109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990997, 39.116177, 35.498959>,  <43.775272, 39.049503, 36.190765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990997, 39.116177, 35.498959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996174, 38.722961, 35.572144>,  <43.999279, 38.487034, 35.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996174, 38.722961, 35.572144>,  <43.990997, 39.116177, 35.498959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996174, 38.722961, 35.572144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416690, -0.171630, -0.892700,
		0.908957, -0.064687, -0.411841,
		0.012938, -0.983036, 0.182958,
		44.000057, 38.428051, 35.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902073, 38.944191, 34.840687>,  <43.990997, 39.116177, 35.498959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902073, 38.944191, 34.840687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808952, 38.631725, 35.072407>,  <43.753082, 38.444244, 35.211437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808952, 38.631725, 35.072407>,  <43.902073, 38.944191, 34.840687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808952, 38.631725, 35.072407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705693, -0.274181, -0.653316,
		0.669180, -0.560898, -0.487434,
		-0.232799, -0.781165, 0.579298,
		43.739113, 38.397377, 35.246197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957958, 38.429787, 34.325745>,  <43.902073, 38.944191, 34.840687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957958, 38.429787, 34.325745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738598, 38.283852, 34.626717>,  <43.606979, 38.196293, 34.807301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738598, 38.283852, 34.626717>,  <43.957958, 38.429787, 34.325745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738598, 38.283852, 34.626717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668555, -0.349187, -0.656584,
		0.502284, -0.863113, -0.052417,
		-0.548403, -0.364835, 0.752429,
		43.574078, 38.174400, 34.852444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898136, 37.784279, 34.085075>,  <43.957958, 38.429787, 34.325745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898136, 37.784279, 34.085075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630432, 37.860115, 34.372448>,  <43.469810, 37.905617, 34.544872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630432, 37.860115, 34.372448>,  <43.898136, 37.784279, 34.085075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630432, 37.860115, 34.372448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732927, -0.009570, -0.680240,
		-0.122091, -0.981817, 0.145360,
		-0.669262, 0.189589, 0.718432,
		43.429653, 37.916992, 34.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524445, 37.223518, 34.094410>,  <43.898136, 37.784279, 34.085075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524445, 37.223518, 34.094410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285275, 37.502739, 34.251995>,  <43.141773, 37.670273, 34.346546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285275, 37.502739, 34.251995>,  <43.524445, 37.223518, 34.094410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285275, 37.502739, 34.251995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781555, -0.398634, -0.479857,
		-0.177916, -0.594825, 0.783919,
		-0.597928, 0.698050, 0.393965,
		43.105896, 37.712154, 34.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859390, 36.975487, 34.038235>,  <43.524445, 37.223518, 34.094410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859390, 36.975487, 34.038235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770950, 37.349361, 34.149578>,  <42.717888, 37.573685, 34.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770950, 37.349361, 34.149578>,  <42.859390, 36.975487, 34.038235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770950, 37.349361, 34.149578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935890, -0.123075, -0.330095,
		-0.274275, -0.333499, 0.901971,
		-0.221096, 0.934682, 0.278362,
		42.704620, 37.629765, 34.233086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246033, 37.020935, 34.515175>,  <42.859390, 36.975487, 34.038235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246033, 37.020935, 34.515175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291573, 37.348900, 34.290752>,  <42.318897, 37.545677, 34.156097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291573, 37.348900, 34.290752>,  <42.246033, 37.020935, 34.515175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291573, 37.348900, 34.290752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951428, -0.072613, -0.299184,
		-0.286044, 0.567868, 0.771819,
		0.113853, 0.819911, -0.561056,
		42.325729, 37.594872, 34.122437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631954, 37.337852, 34.504459>,  <42.246033, 37.020935, 34.515175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631954, 37.337852, 34.504459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830070, 37.535412, 34.218594>,  <41.948940, 37.653946, 34.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830070, 37.535412, 34.218594>,  <41.631954, 37.337852, 34.504459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830070, 37.535412, 34.218594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859692, 0.160323, -0.485002,
		-0.124964, 0.854611, 0.504007,
		0.495292, 0.493899, -0.714668,
		41.978657, 37.683582, 34.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986652, 37.599705, 34.126114>,  <41.631954, 37.337852, 34.504459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986652, 37.599705, 34.126114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333096, 37.698383, 33.952221>,  <41.540962, 37.757591, 33.847885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333096, 37.698383, 33.952221>,  <40.986652, 37.599705, 34.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333096, 37.698383, 33.952221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485637, 0.209379, -0.848715,
		-0.118353, 0.946203, 0.301152,
		0.866111, 0.246699, -0.434731,
		41.592930, 37.772392, 33.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975113, 38.223145, 33.808441>,  <40.986652, 37.599705, 34.126114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975113, 38.223145, 33.808441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266823, 38.022465, 33.622341>,  <41.441849, 37.902058, 33.510681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266823, 38.022465, 33.622341>,  <40.975113, 38.223145, 33.808441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266823, 38.022465, 33.622341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504608, 0.064863, -0.860908,
		0.462096, 0.862606, -0.205860,
		0.729272, -0.501701, -0.465251,
		41.485603, 37.871956, 33.482765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082504, 38.689396, 33.306000>,  <40.975113, 38.223145, 33.808441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082504, 38.689396, 33.306000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234550, 38.330769, 33.215076>,  <41.325779, 38.115593, 33.160522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234550, 38.330769, 33.215076>,  <41.082504, 38.689396, 33.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234550, 38.330769, 33.215076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487051, 0.014900, -0.873246,
		0.786316, 0.442646, -0.431013,
		0.380117, -0.896573, -0.227308,
		41.348587, 38.061798, 33.146885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462067, 38.731953, 32.633820>,  <41.082504, 38.689396, 33.306000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462067, 38.731953, 32.633820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329197, 38.358688, 32.688763>,  <41.249474, 38.134727, 32.721729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329197, 38.358688, 32.688763>,  <41.462067, 38.731953, 32.633820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329197, 38.358688, 32.688763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501500, 0.051397, -0.863629,
		0.798847, -0.355759, -0.485054,
		-0.332175, -0.933163, 0.137355,
		41.229546, 38.078739, 32.729969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225636, 38.703861, 31.981602>,  <41.462067, 38.731953, 32.633820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225636, 38.703861, 31.981602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044498, 38.409542, 32.183010>,  <40.935814, 38.232952, 32.303856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044498, 38.409542, 32.183010>,  <41.225636, 38.703861, 31.981602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044498, 38.409542, 32.183010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741116, -0.003312, -0.671369,
		0.495660, -0.677192, -0.543813,
		-0.452845, -0.735799, 0.503519,
		40.908646, 38.188801, 32.334064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105198, 38.148460, 31.408035>,  <41.225636, 38.703861, 31.981602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105198, 38.148460, 31.408035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870567, 38.072529, 31.722967>,  <40.729790, 38.026970, 31.911926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870567, 38.072529, 31.722967>,  <41.105198, 38.148460, 31.408035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870567, 38.072529, 31.722967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740135, -0.269059, -0.616286,
		0.328827, -0.944231, 0.017326,
		-0.586578, -0.189828, 0.787332,
		40.694595, 38.015579, 31.959167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703320, 37.625107, 31.169535>,  <41.105198, 38.148460, 31.408035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703320, 37.625107, 31.169535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486023, 37.746078, 31.482821>,  <40.355644, 37.818661, 31.670792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486023, 37.746078, 31.482821>,  <40.703320, 37.625107, 31.169535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486023, 37.746078, 31.482821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824041, -0.370697, -0.428415,
		0.160772, -0.878135, 0.450590,
		-0.543239, 0.302428, 0.783217,
		40.323051, 37.836807, 31.717785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287373, 37.037937, 31.269943>,  <40.703320, 37.625107, 31.169535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287373, 37.037937, 31.269943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114307, 37.346836, 31.456034>,  <40.010468, 37.532177, 31.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114307, 37.346836, 31.456034>,  <40.287373, 37.037937, 31.269943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114307, 37.346836, 31.456034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893558, -0.298730, -0.335133,
		-0.119828, -0.560707, 0.819298,
		-0.432660, 0.772249, 0.465228,
		39.984509, 37.578510, 31.595602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398998, 36.731251, 30.644665>,  <40.287373, 37.037937, 31.269943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398998, 36.731251, 30.644665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111656, 36.498798, 30.491693>,  <39.939251, 36.359329, 30.399910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111656, 36.498798, 30.491693>,  <40.398998, 36.731251, 30.644665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111656, 36.498798, 30.491693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646584, 0.760572, 0.058811,
		0.256688, 0.289519, -0.922112,
		-0.718359, -0.581127, -0.382428,
		39.896149, 36.324459, 30.376965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698746, 36.490940, 29.975372>,  <40.398998, 36.731251, 30.644665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698746, 36.490940, 29.975372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758434, 36.096306, 29.948900>,  <40.794247, 35.859524, 29.933018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758434, 36.096306, 29.948900>,  <40.698746, 36.490940, 29.975372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758434, 36.096306, 29.948900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945021, 0.122598, 0.303158,
		-0.290978, -0.107780, 0.950639,
		0.149221, -0.986587, -0.066181,
		40.803200, 35.800331, 29.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043884, 36.280781, 30.587963>,  <40.698746, 36.490940, 29.975372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043884, 36.280781, 30.587963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130955, 36.014484, 30.302473>,  <41.183197, 35.854706, 30.131178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130955, 36.014484, 30.302473>,  <41.043884, 36.280781, 30.587963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130955, 36.014484, 30.302473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976009, 0.152278, 0.155624,
		0.005080, -0.730478, 0.682917,
		0.217673, -0.665742, -0.713727,
		41.196259, 35.814762, 30.088354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405331, 35.686058, 30.791130>,  <41.043884, 36.280781, 30.587963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405331, 35.686058, 30.791130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502136, 35.787956, 30.416636>,  <41.560219, 35.849094, 30.191938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502136, 35.787956, 30.416636>,  <41.405331, 35.686058, 30.791130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502136, 35.787956, 30.416636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969331, -0.020986, 0.244860,
		0.042728, -0.966781, -0.252008,
		0.242015, 0.254742, -0.936235,
		41.574741, 35.864380, 30.135765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760166, 35.090443, 30.406361>,  <41.405331, 35.686058, 30.791130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760166, 35.090443, 30.406361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868797, 35.472919, 30.362652>,  <41.933975, 35.702408, 30.336426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868797, 35.472919, 30.362652>,  <41.760166, 35.090443, 30.406361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868797, 35.472919, 30.362652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887440, -0.204861, 0.412895,
		0.372422, -0.209104, -0.904200,
		0.271573, 0.956194, -0.109273,
		41.950268, 35.759777, 30.329870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573509, 34.822968, 30.516218>,  <41.760166, 35.090443, 30.406361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573509, 34.822968, 30.516218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851276, 34.686478, 30.769627>,  <43.017937, 34.604584, 30.921671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851276, 34.686478, 30.769627>,  <42.573509, 34.822968, 30.516218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851276, 34.686478, 30.769627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442366, 0.896833, -0.001847,
		-0.567531, 0.281530, 0.773725,
		0.694421, -0.341221, 0.633519,
		43.059605, 34.584110, 30.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741974, 35.290695, 31.082369>,  <42.573509, 34.822968, 30.516218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741974, 35.290695, 31.082369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 35.085361, 31.077566>,  <43.291161, 34.962162, 31.074684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 35.085361, 31.077566>,  <42.741974, 35.290695, 31.082369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085217, 35.085361, 31.077566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511703, 0.852967, 0.102992,
		-0.042628, -0.094522, 0.994610,
		0.858104, -0.513335, -0.012007,
		43.342648, 34.931362, 31.073963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153057, 35.397697, 31.687401>,  <42.741974, 35.290695, 31.082369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153057, 35.397697, 31.687401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391968, 35.331703, 31.373449>,  <43.535316, 35.292107, 31.185078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391968, 35.331703, 31.373449>,  <43.153057, 35.397697, 31.687401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391968, 35.331703, 31.373449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531172, 0.814603, 0.232977,
		0.600927, -0.556058, 0.574183,
		0.597280, -0.164988, -0.784879,
		43.571152, 35.282207, 31.137985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720512, 35.003555, 31.601339>,  <43.153057, 35.397697, 31.687401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720512, 35.003555, 31.601339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818581, 35.369019, 31.471649>,  <43.877422, 35.588295, 31.393835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818581, 35.369019, 31.471649>,  <43.720512, 35.003555, 31.601339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818581, 35.369019, 31.471649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135670, -0.298808, -0.944620,
		-0.959939, 0.275584, 0.050696,
		0.245174, 0.913656, -0.324226,
		43.892132, 35.643116, 31.374382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378670, 34.620365, 31.799395>,  <43.720512, 35.003555, 31.601339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378670, 34.620365, 31.799395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694508, 34.835819, 31.681814>,  <44.884010, 34.965092, 31.611267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694508, 34.835819, 31.681814>,  <44.378670, 34.620365, 31.799395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694508, 34.835819, 31.681814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316906, 0.768163, 0.556325,
		0.525457, -0.346119, 0.777237,
		0.789598, 0.538635, -0.293949,
		44.931389, 34.997410, 31.593630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698402, 35.012440, 32.331844>,  <44.378670, 34.620365, 31.799395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698402, 35.012440, 32.331844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737450, 35.216404, 31.989977>,  <44.760880, 35.338783, 31.784855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737450, 35.216404, 31.989977>,  <44.698402, 35.012440, 32.331844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737450, 35.216404, 31.989977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447695, 0.789477, 0.419876,
		0.888841, 0.341643, 0.305354,
		0.097622, 0.509908, -0.854672,
		44.766735, 35.369377, 31.733576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706638, 35.805912, 32.729321>,  <44.698402, 35.012440, 32.331844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706638, 35.805912, 32.729321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907555, 36.151600, 32.740864>,  <45.028103, 36.359013, 32.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907555, 36.151600, 32.740864>,  <44.706638, 35.805912, 32.729321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907555, 36.151600, 32.740864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824797, -0.488863, 0.284117,
		0.259648, -0.118906, -0.958355,
		0.502288, 0.864219, 0.028859,
		45.058243, 36.410866, 32.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314594, 35.765514, 32.392345>,  <44.706638, 35.805912, 32.729321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314594, 35.765514, 32.392345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354801, 36.053883, 32.666622>,  <45.378925, 36.226902, 32.831188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354801, 36.053883, 32.666622>,  <45.314594, 35.765514, 32.392345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354801, 36.053883, 32.666622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815826, -0.454207, 0.357945,
		0.569495, 0.523427, -0.633798,
		0.100518, 0.720917, 0.685693,
		45.384956, 36.270157, 32.872330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071888, 35.987408, 32.328480>,  <45.314594, 35.765514, 32.392345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071888, 35.987408, 32.328480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872635, 36.022751, 32.673515>,  <45.753082, 36.043957, 32.880535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872635, 36.022751, 32.673515>,  <46.071888, 35.987408, 32.328480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872635, 36.022751, 32.673515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650571, -0.619591, 0.439163,
		0.573252, 0.779936, 0.251160,
		-0.498136, 0.088354, 0.862586,
		45.723194, 36.049255, 32.932293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522568, 36.262932, 32.646816>,  <46.071888, 35.987408, 32.328480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522568, 36.262932, 32.646816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282017, 36.051773, 32.886711>,  <46.137688, 35.925079, 33.030647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282017, 36.051773, 32.886711>,  <46.522568, 36.262932, 32.646816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282017, 36.051773, 32.886711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798887, -0.408024, 0.441923,
		0.011417, 0.744880, 0.667101,
		-0.601373, -0.527893, 0.599733,
		46.101604, 35.893406, 33.066631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815216, 36.403320, 33.303032>,  <46.522568, 36.262932, 32.646816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815216, 36.403320, 33.303032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585445, 36.080566, 33.358139>,  <46.447582, 35.886913, 33.391201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585445, 36.080566, 33.358139>,  <46.815216, 36.403320, 33.303032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585445, 36.080566, 33.358139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668431, -0.365234, 0.647923,
		-0.472481, 0.464268, 0.749144,
		-0.574422, -0.806883, 0.137765,
		46.413120, 35.838501, 33.399467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627174, 36.373528, 34.010815>,  <46.815216, 36.403320, 33.303032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627174, 36.373528, 34.010815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621185, 35.995716, 33.879585>,  <46.617592, 35.769028, 33.800846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621185, 35.995716, 33.879585>,  <46.627174, 36.373528, 34.010815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621185, 35.995716, 33.879585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512723, -0.288942, 0.808472,
		-0.858424, -0.156107, 0.488610,
		-0.014971, -0.944533, -0.328074,
		46.616695, 35.712357, 33.781162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397537, 35.771915, 34.529808>,  <46.627174, 36.373528, 34.010815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397537, 35.771915, 34.529808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696926, 35.584412, 34.342167>,  <46.876560, 35.471909, 34.229584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696926, 35.584412, 34.342167>,  <46.397537, 35.771915, 34.529808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696926, 35.584412, 34.342167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483902, -0.097641, 0.869658,
		-0.453466, -0.877911, 0.153754,
		0.748469, -0.468762, -0.469100,
		46.921467, 35.443783, 34.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540874, 35.280479, 35.026749>,  <46.397537, 35.771915, 34.529808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540874, 35.280479, 35.026749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843437, 35.373264, 34.782116>,  <47.024975, 35.428936, 34.635334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843437, 35.373264, 34.782116>,  <46.540874, 35.280479, 35.026749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843437, 35.373264, 34.782116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652908, -0.211365, 0.727349,
		0.039454, -0.949482, -0.311331,
		0.756409, 0.231967, -0.611585,
		47.070358, 35.442856, 34.598640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994999, 34.652603, 34.917263>,  <46.540874, 35.280479, 35.026749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994999, 34.652603, 34.917263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159073, 35.016460, 34.891048>,  <47.257519, 35.234776, 34.875320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159073, 35.016460, 34.891048>,  <46.994999, 34.652603, 34.917263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159073, 35.016460, 34.891048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581270, -0.205387, 0.787363,
		0.702760, -0.361059, -0.612996,
		0.410187, 0.909644, -0.065535,
		47.282127, 35.289352, 34.871387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.752174, 34.520630, 34.834274>,  <46.994999, 34.652603, 34.917263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.752174, 34.520630, 34.834274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596157, 34.846684, 35.005581>,  <47.502548, 35.042316, 35.108364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596157, 34.846684, 35.005581>,  <47.752174, 34.520630, 34.834274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596157, 34.846684, 35.005581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603814, -0.124723, 0.787307,
		0.695179, 0.565680, -0.443544,
		-0.390044, 0.815138, 0.428271,
		47.479145, 35.091225, 35.134064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.477947, 29.283321, 28.051373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116333, 29.207487, 28.204618>,  <34.899364, 29.161987, 28.296566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116333, 29.207487, 28.204618>,  <35.477947, 29.283321, 28.051373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116333, 29.207487, 28.204618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250247, 0.491888, 0.833920,
		-0.346546, 0.849767, -0.397242,
		-0.904037, -0.189583, 0.383114,
		34.845123, 29.150612, 28.319553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241753, 29.937220, 28.254313>,  <35.477947, 29.283321, 28.051373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241753, 29.937220, 28.254313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984982, 29.703953, 28.453451>,  <34.830921, 29.563993, 28.572935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984982, 29.703953, 28.453451>,  <35.241753, 29.937220, 28.254313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984982, 29.703953, 28.453451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156475, 0.535988, 0.829598,
		-0.750633, 0.610439, -0.252813,
		-0.641923, -0.583165, 0.497849,
		34.792404, 29.529003, 28.602806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788124, 30.419941, 28.591270>,  <35.241753, 29.937220, 28.254313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788124, 30.419941, 28.591270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772369, 30.076143, 28.795118>,  <34.762917, 29.869864, 28.917427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772369, 30.076143, 28.795118>,  <34.788124, 30.419941, 28.591270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772369, 30.076143, 28.795118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082100, 0.511077, 0.855605,
		-0.995845, -0.008141, -0.090695,
		-0.039387, -0.859497, 0.509622,
		34.760551, 29.818295, 28.948006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269283, 30.478024, 29.043154>,  <34.788124, 30.419941, 28.591270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269283, 30.478024, 29.043154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514172, 30.197542, 29.189306>,  <34.661102, 30.029253, 29.276997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514172, 30.197542, 29.189306>,  <34.269283, 30.478024, 29.043154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514172, 30.197542, 29.189306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072017, 0.410731, 0.908908,
		-0.787404, -0.582762, 0.200957,
		0.612216, -0.701205, 0.365380,
		34.697838, 29.987181, 29.298920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027996, 30.301340, 29.800072>,  <34.269283, 30.478024, 29.043154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027996, 30.301340, 29.800072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386761, 30.124853, 29.811945>,  <34.602020, 30.018961, 29.819069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386761, 30.124853, 29.811945>,  <34.027996, 30.301340, 29.800072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386761, 30.124853, 29.811945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157785, 0.382005, 0.910591,
		-0.413107, -0.812035, 0.412242,
		0.896910, -0.441217, 0.029682,
		34.655834, 29.992489, 29.820850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093475, 29.921041, 30.450884>,  <34.027996, 30.301340, 29.800072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093475, 29.921041, 30.450884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.470390, 29.987511, 30.334625>,  <34.696541, 30.027391, 30.264870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.470390, 29.987511, 30.334625>,  <34.093475, 29.921041, 30.450884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470390, 29.987511, 30.334625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218974, 0.350801, 0.910488,
		0.253253, -0.921589, 0.294170,
		0.942292, 0.166168, -0.290645,
		34.753078, 30.037363, 30.247431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577480, 29.567318, 30.934423>,  <34.093475, 29.921041, 30.450884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577480, 29.567318, 30.934423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796722, 29.850817, 30.756769>,  <34.928268, 30.020916, 30.650177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796722, 29.850817, 30.756769>,  <34.577480, 29.567318, 30.934423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796722, 29.850817, 30.756769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220829, 0.389538, 0.894145,
		0.806729, -0.588167, 0.056998,
		0.548109, 0.708746, -0.444136,
		34.961155, 30.063440, 30.623529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151028, 29.839199, 31.356770>,  <34.577480, 29.567318, 30.934423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151028, 29.839199, 31.356770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166519, 30.148354, 31.103424>,  <35.175816, 30.333845, 30.951416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166519, 30.148354, 31.103424>,  <35.151028, 29.839199, 31.356770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166519, 30.148354, 31.103424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341672, 0.585392, 0.735239,
		0.939021, -0.244878, -0.241401,
		0.038729, 0.772885, -0.633363,
		35.178139, 30.380219, 30.913416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858173, 30.239983, 31.527561>,  <35.151028, 29.839199, 31.356770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858173, 30.239983, 31.527561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574917, 30.473005, 31.367975>,  <35.404964, 30.612818, 31.272224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574917, 30.473005, 31.367975>,  <35.858173, 30.239983, 31.527561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574917, 30.473005, 31.367975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242856, 0.731525, 0.637096,
		0.662995, 0.354261, -0.659497,
		-0.708137, 0.582555, -0.398963,
		35.362476, 30.647772, 31.248287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193272, 30.771687, 31.094072>,  <35.858173, 30.239983, 31.527561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193272, 30.771687, 31.094072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854511, 30.941465, 31.222198>,  <35.651253, 31.043333, 31.299074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854511, 30.941465, 31.222198>,  <36.193272, 30.771687, 31.094072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854511, 30.941465, 31.222198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528619, 0.606784, 0.593612,
		0.057595, 0.672055, -0.738258,
		-0.846903, 0.424446, 0.320313,
		35.600441, 31.068800, 31.318293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081669, 31.446192, 30.812832>,  <36.193272, 30.771687, 31.094072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081669, 31.446192, 30.812832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814281, 31.491383, 31.106876>,  <35.653851, 31.518497, 31.283304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814281, 31.491383, 31.106876>,  <36.081669, 31.446192, 30.812832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814281, 31.491383, 31.106876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368992, 0.908551, 0.195908,
		-0.645754, 0.402208, -0.649023,
		-0.668466, 0.112976, 0.735112,
		35.613743, 31.525276, 31.327410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765430, 32.082176, 30.752949>,  <36.081669, 31.446192, 30.812832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765430, 32.082176, 30.752949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701923, 31.989782, 31.136915>,  <35.663818, 31.934347, 31.367296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701923, 31.989782, 31.136915>,  <35.765430, 32.082176, 30.752949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701923, 31.989782, 31.136915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517087, 0.808791, 0.280140,
		-0.841080, 0.540837, -0.008969,
		-0.158764, -0.230982, 0.959917,
		35.654293, 31.920488, 31.424891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489059, 32.671967, 31.143015>,  <35.765430, 32.082176, 30.752949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489059, 32.671967, 31.143015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648254, 32.429741, 31.418663>,  <35.743771, 32.284405, 31.584053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648254, 32.429741, 31.418663>,  <35.489059, 32.671967, 31.143015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648254, 32.429741, 31.418663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290625, 0.795714, 0.531391,
		-0.870138, -0.011213, 0.492681,
		0.397991, -0.605569, 0.689122,
		35.767651, 32.248070, 31.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482689, 33.074780, 31.594601>,  <35.489059, 32.671967, 31.143015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482689, 33.074780, 31.594601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701035, 32.798492, 31.784309>,  <35.832043, 32.632721, 31.898134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701035, 32.798492, 31.784309>,  <35.482689, 33.074780, 31.594601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701035, 32.798492, 31.784309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462179, 0.720361, 0.517176,
		-0.698873, -0.063108, 0.712456,
		0.545864, -0.690722, 0.474274,
		35.864792, 32.591274, 31.926592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369942, 33.204529, 32.346939>,  <35.482689, 33.074780, 31.594601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369942, 33.204529, 32.346939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703995, 32.986301, 32.318909>,  <35.904427, 32.855366, 32.302090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703995, 32.986301, 32.318909>,  <35.369942, 33.204529, 32.346939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703995, 32.986301, 32.318909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396613, 0.508996, 0.763951,
		-0.381116, -0.665794, 0.641458,
		0.835134, -0.545564, -0.070076,
		35.954536, 32.822632, 32.297886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522564, 32.974583, 33.067467>,  <35.369942, 33.204529, 32.346939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522564, 32.974583, 33.067467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868885, 32.933979, 32.871471>,  <36.076675, 32.909615, 32.753876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868885, 32.933979, 32.871471>,  <35.522564, 32.974583, 33.067467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868885, 32.933979, 32.871471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484200, 0.417019, 0.769185,
		0.126251, -0.903211, 0.410208,
		0.865801, -0.101512, -0.489984,
		36.128624, 32.903526, 32.724476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996838, 32.784161, 33.545811>,  <35.522564, 32.974583, 33.067467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996838, 32.784161, 33.545811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224209, 32.939228, 33.255539>,  <36.360630, 33.032269, 33.081375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224209, 32.939228, 33.255539>,  <35.996838, 32.784161, 33.545811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224209, 32.939228, 33.255539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450655, 0.591234, 0.668844,
		0.688334, -0.707217, 0.161367,
		0.568424, 0.387668, -0.725678,
		36.394737, 33.055527, 33.037834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711323, 32.768272, 33.718639>,  <35.996838, 32.784161, 33.545811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711323, 32.768272, 33.718639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707020, 33.061562, 33.446678>,  <36.704437, 33.237534, 33.283501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707020, 33.061562, 33.446678>,  <36.711323, 32.768272, 33.718639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707020, 33.061562, 33.446678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587336, 0.554923, 0.589149,
		0.809272, -0.392993, -0.436618,
		-0.010758, 0.733223, -0.679903,
		36.703793, 33.281528, 33.242706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418430, 32.956196, 33.781235>,  <36.711323, 32.768272, 33.718639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418430, 32.956196, 33.781235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267365, 33.281982, 33.605045>,  <37.176723, 33.477455, 33.499332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267365, 33.281982, 33.605045>,  <37.418430, 32.956196, 33.781235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267365, 33.281982, 33.605045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676018, 0.567609, 0.469914,
		0.632745, -0.120298, -0.764959,
		-0.377668, 0.814462, -0.440475,
		37.154064, 33.526321, 33.472904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044899, 33.305042, 33.493774>,  <37.418430, 32.956196, 33.781235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044899, 33.305042, 33.493774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742920, 33.566360, 33.516594>,  <37.561733, 33.723152, 33.530285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742920, 33.566360, 33.516594>,  <38.044899, 33.305042, 33.493774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742920, 33.566360, 33.516594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582181, 0.627635, 0.516855,
		0.301855, 0.423411, -0.854170,
		-0.754950, 0.653297, 0.057047,
		37.516434, 33.762348, 33.533707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303371, 33.972862, 33.294216>,  <38.044899, 33.305042, 33.493774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303371, 33.972862, 33.294216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961899, 34.097801, 33.460911>,  <37.757015, 34.172764, 33.560928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961899, 34.097801, 33.460911>,  <38.303371, 33.972862, 33.294216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961899, 34.097801, 33.460911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501882, 0.707078, 0.498152,
		-0.139069, 0.634414, -0.760380,
		-0.853683, 0.312344, 0.416733,
		37.705795, 34.191505, 33.585930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171799, 34.669514, 33.133472>,  <38.303371, 33.972862, 33.294216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171799, 34.669514, 33.133472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947262, 34.622875, 33.461205>,  <37.812538, 34.594891, 33.657845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947262, 34.622875, 33.461205>,  <38.171799, 34.669514, 33.133472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947262, 34.622875, 33.461205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253016, 0.918442, 0.304052,
		-0.787958, 0.377980, -0.486058,
		-0.561342, -0.116600, 0.819329,
		37.778858, 34.587894, 33.707005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743347, 34.700947, 32.664143>,  <38.171799, 34.669514, 33.133472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743347, 34.700947, 32.664143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116791, 34.803135, 32.563660>,  <39.340858, 34.864449, 32.503368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116791, 34.803135, 32.563660>,  <38.743347, 34.700947, 32.664143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116791, 34.803135, 32.563660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035806, -0.764146, -0.644048,
		-0.356496, 0.592296, -0.722563,
		0.933611, 0.255473, -0.251207,
		39.396873, 34.879776, 32.488297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749462, 34.839554, 31.966400>,  <38.743347, 34.700947, 32.664143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749462, 34.839554, 31.966400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117878, 34.734192, 32.081154>,  <39.338928, 34.670975, 32.150005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117878, 34.734192, 32.081154>,  <38.749462, 34.839554, 31.966400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117878, 34.734192, 32.081154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, -0.850603, -0.519460,
		0.380854, 0.455073, -0.804897,
		0.921040, -0.263406, 0.286885,
		39.394192, 34.655170, 32.167221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050472, 34.649837, 31.387079>,  <38.749462, 34.839554, 31.966400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050472, 34.649837, 31.387079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252090, 34.460812, 31.676249>,  <39.373062, 34.347397, 31.849751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252090, 34.460812, 31.676249>,  <39.050472, 34.649837, 31.387079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252090, 34.460812, 31.676249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020698, -0.843399, -0.536888,
		0.863429, 0.255653, -0.434893,
		0.504045, -0.472567, 0.722924,
		39.403305, 34.319042, 31.893126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696274, 34.378490, 30.999025>,  <39.050472, 34.649837, 31.387079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696274, 34.378490, 30.999025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.630310, 34.182941, 31.341677>,  <39.590733, 34.065613, 31.547268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.630310, 34.182941, 31.341677>,  <39.696274, 34.378490, 30.999025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630310, 34.182941, 31.341677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033718, -0.865218, -0.500261,
		0.985732, -0.111382, 0.126199,
		-0.164910, -0.488868, 0.856628,
		39.580837, 34.036282, 31.598665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022503, 33.838867, 30.836069>,  <39.696274, 34.378490, 30.999025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022503, 33.838867, 30.836069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780621, 33.745346, 31.140612>,  <39.635490, 33.689232, 31.323338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780621, 33.745346, 31.140612>,  <40.022503, 33.838867, 30.836069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780621, 33.745346, 31.140612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113320, -0.920957, -0.372823,
		0.788346, -0.311726, 0.530413,
		-0.604706, -0.233807, 0.761357,
		39.599209, 33.675205, 31.369019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197231, 33.071491, 31.019121>,  <40.022503, 33.838867, 30.836069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197231, 33.071491, 31.019121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821804, 33.153141, 31.130423>,  <39.596546, 33.202129, 31.197203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821804, 33.153141, 31.130423>,  <40.197231, 33.071491, 31.019121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821804, 33.153141, 31.130423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285861, -0.911571, -0.295503,
		0.193328, -0.356891, 0.913922,
		-0.938567, 0.204126, 0.278254,
		39.540234, 33.214378, 31.213900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847664, 32.400730, 31.251080>,  <40.197231, 33.071491, 31.019121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847664, 32.400730, 31.251080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510731, 32.607380, 31.189665>,  <39.308571, 32.731369, 31.152817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510731, 32.607380, 31.189665>,  <39.847664, 32.400730, 31.251080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510731, 32.607380, 31.189665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444605, -0.827104, -0.343840,
		-0.304626, -0.221365, 0.926391,
		-0.842335, 0.516621, -0.153537,
		39.258030, 32.762367, 31.143604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364536, 31.906466, 31.370998>,  <39.847664, 32.400730, 31.251080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364536, 31.906466, 31.370998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167942, 32.200798, 31.184669>,  <39.049984, 32.377396, 31.072872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167942, 32.200798, 31.184669>,  <39.364536, 31.906466, 31.370998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167942, 32.200798, 31.184669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547788, -0.677029, -0.491488,
		-0.677029, 0.013612, 0.735831,
		0.491488, -0.735831, 0.465824,
		39.020496, 32.421547, 31.044922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663410, 31.837019, 31.479874>,  <39.364536, 31.906466, 31.370998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663410, 31.837019, 31.479874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704880, 32.028740, 31.131271>,  <38.729759, 32.143772, 30.922110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704880, 32.028740, 31.131271>,  <38.663410, 31.837019, 31.479874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704880, 32.028740, 31.131271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343684, -0.804989, -0.483606,
		-0.933345, 0.349658, 0.081275,
		0.103671, 0.479304, -0.871504,
		38.735981, 32.172531, 30.869820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165649, 31.533230, 31.139263>,  <38.663410, 31.837019, 31.479874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165649, 31.533230, 31.139263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368446, 31.733530, 30.858633>,  <38.490124, 31.853710, 30.690254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368446, 31.733530, 30.858633>,  <38.165649, 31.533230, 31.139263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368446, 31.733530, 30.858633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343935, -0.628811, -0.697356,
		-0.790362, 0.594848, -0.146574,
		0.506988, 0.500752, -0.701577,
		38.520542, 31.883755, 30.648159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676868, 31.568193, 30.553989>,  <38.165649, 31.533230, 31.139263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676868, 31.568193, 30.553989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048027, 31.614498, 30.412220>,  <38.270721, 31.642281, 30.327158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048027, 31.614498, 30.412220>,  <37.676868, 31.568193, 30.553989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048027, 31.614498, 30.412220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226520, -0.580012, -0.782480,
		-0.296150, 0.806341, -0.511966,
		0.927892, 0.115761, -0.354423,
		38.326393, 31.649227, 30.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570923, 31.991482, 29.906046>,  <37.676868, 31.568193, 30.553989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570923, 31.991482, 29.906046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925713, 31.806906, 29.913420>,  <38.138588, 31.696159, 29.917843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925713, 31.806906, 29.913420>,  <37.570923, 31.991482, 29.906046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925713, 31.806906, 29.913420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173242, -0.369473, -0.912950,
		0.428083, 0.806574, -0.407656,
		0.886979, -0.461442, 0.018433,
		38.191807, 31.668472, 29.918949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953331, 32.176788, 29.317738>,  <37.570923, 31.991482, 29.906046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953331, 32.176788, 29.317738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078835, 31.812607, 29.425543>,  <38.154137, 31.594099, 29.490225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078835, 31.812607, 29.425543>,  <37.953331, 32.176788, 29.317738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078835, 31.812607, 29.425543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199973, -0.340841, -0.918607,
		0.928205, 0.234327, -0.289007,
		0.313760, -0.910450, 0.269511,
		38.172962, 31.539473, 29.506395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182308, 31.994305, 28.684002>,  <37.953331, 32.176788, 29.317738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182308, 31.994305, 28.684002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167595, 31.651609, 28.889776>,  <38.158768, 31.445992, 29.013241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167595, 31.651609, 28.889776>,  <38.182308, 31.994305, 28.684002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167595, 31.651609, 28.889776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240620, -0.492046, -0.836656,
		0.969922, -0.154560, -0.188048,
		-0.036785, -0.856739, 0.514436,
		38.156559, 31.394588, 29.044107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480816, 31.515476, 28.224220>,  <38.182308, 31.994305, 28.684002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480816, 31.515476, 28.224220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277248, 31.303793, 28.495789>,  <38.155106, 31.176783, 28.658730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277248, 31.303793, 28.495789>,  <38.480816, 31.515476, 28.224220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277248, 31.303793, 28.495789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315552, -0.619106, -0.719121,
		0.800890, -0.580212, 0.148084,
		-0.508923, -0.529209, 0.678923,
		38.124573, 31.145031, 28.699465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617210, 30.836536, 28.080175>,  <38.480816, 31.515476, 28.224220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617210, 30.836536, 28.080175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278275, 30.833988, 28.292580>,  <38.074913, 30.832458, 28.420023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278275, 30.833988, 28.292580>,  <38.617210, 30.836536, 28.080175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278275, 30.833988, 28.292580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373549, -0.703575, -0.604519,
		0.377458, -0.710593, 0.593788,
		-0.847341, -0.006371, 0.531011,
		38.024071, 30.832077, 28.451883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476463, 30.158438, 28.079569>,  <38.617210, 30.836536, 28.080175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476463, 30.158438, 28.079569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147022, 30.353600, 28.195242>,  <37.949356, 30.470697, 28.264647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147022, 30.353600, 28.195242>,  <38.476463, 30.158438, 28.079569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147022, 30.353600, 28.195242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565508, -0.667484, -0.484424,
		-0.043327, -0.562508, 0.825656,
		-0.823604, 0.487904, 0.289183,
		37.899940, 30.499971, 28.281996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031178, 29.599541, 28.168789>,  <38.476463, 30.158438, 28.079569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031178, 29.599541, 28.168789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774757, 29.901333, 28.112476>,  <37.620907, 30.082407, 28.078690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774757, 29.901333, 28.112476>,  <38.031178, 29.599541, 28.168789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774757, 29.901333, 28.112476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540076, -0.573767, -0.615719,
		-0.545318, -0.318678, 0.775289,
		-0.641051, 0.754477, -0.140775,
		37.582443, 30.127676, 28.070242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.058392, 29.386570, 28.156654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128353, 29.735119, 27.973299>,  <37.170330, 29.944248, 27.863285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128353, 29.735119, 27.973299>,  <37.058392, 29.386570, 28.156654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128353, 29.735119, 27.973299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466863, -0.336501, -0.817805,
		-0.866860, 0.357045, 0.347954,
		0.174907, 0.871370, -0.458391,
		37.180824, 29.996531, 27.835781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335556, 29.684935, 27.896082>,  <37.058392, 29.386570, 28.156654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335556, 29.684935, 27.896082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637127, 29.829330, 27.676527>,  <36.818069, 29.915968, 27.544794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637127, 29.829330, 27.676527>,  <36.335556, 29.684935, 27.896082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637127, 29.829330, 27.676527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540843, -0.133235, -0.830504,
		-0.372935, 0.923003, 0.094789,
		0.753929, 0.360990, -0.548887,
		36.863304, 29.937628, 27.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004532, 30.162029, 27.525311>,  <36.335556, 29.684935, 27.896082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004532, 30.162029, 27.525311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348099, 30.094732, 27.331835>,  <36.554237, 30.054354, 27.215750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348099, 30.094732, 27.331835>,  <36.004532, 30.162029, 27.525311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348099, 30.094732, 27.331835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511190, -0.224964, -0.829503,
		0.030744, 0.959732, -0.279229,
		0.858918, -0.168241, -0.483689,
		36.605774, 30.044260, 27.186728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833534, 30.471058, 26.993755>,  <36.004532, 30.162029, 27.525311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833534, 30.471058, 26.993755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168522, 30.268856, 26.910698>,  <36.369514, 30.147535, 26.860863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168522, 30.268856, 26.910698>,  <35.833534, 30.471058, 26.993755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168522, 30.268856, 26.910698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422462, -0.357814, -0.832763,
		0.346669, 0.785132, -0.513214,
		0.837464, -0.505506, -0.207646,
		36.419762, 30.117205, 26.848404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959377, 30.645092, 26.404772>,  <35.833534, 30.471058, 26.993755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959377, 30.645092, 26.404772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150536, 30.297062, 26.453081>,  <36.265228, 30.088243, 26.482067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150536, 30.297062, 26.453081>,  <35.959377, 30.645092, 26.404772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150536, 30.297062, 26.453081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415542, -0.345057, -0.841582,
		0.773915, 0.351997, -0.526453,
		0.477891, -0.870077, 0.120776,
		36.293903, 30.036039, 26.489313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182682, 30.419291, 25.787848>,  <35.959377, 30.645092, 26.404772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182682, 30.419291, 25.787848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174801, 30.055071, 25.953020>,  <36.170074, 29.836538, 26.052124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174801, 30.055071, 25.953020>,  <36.182682, 30.419291, 25.787848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174801, 30.055071, 25.953020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447143, -0.361382, -0.818209,
		0.894245, -0.200758, -0.400027,
		-0.019700, -0.910549, 0.412932,
		36.168892, 29.781906, 26.076900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335529, 30.025621, 25.185125>,  <36.182682, 30.419291, 25.787848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335529, 30.025621, 25.185125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187325, 29.777248, 25.461433>,  <36.098404, 29.628225, 25.627218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187325, 29.777248, 25.461433>,  <36.335529, 30.025621, 25.185125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187325, 29.777248, 25.461433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496002, -0.496517, -0.712357,
		0.785306, -0.606559, -0.124020,
		-0.370508, -0.620933, 0.690772,
		36.076172, 29.590969, 25.668665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405155, 29.345776, 24.936462>,  <36.335529, 30.025621, 25.185125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405155, 29.345776, 24.936462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133232, 29.286171, 25.223700>,  <35.970078, 29.250408, 25.396042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133232, 29.286171, 25.223700>,  <36.405155, 29.345776, 24.936462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133232, 29.286171, 25.223700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587921, -0.474597, -0.655062,
		0.438417, -0.867498, 0.235027,
		-0.679808, -0.149013, 0.718092,
		35.929291, 29.241467, 25.439127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252411, 28.672628, 25.137091>,  <36.405155, 29.345776, 24.936462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252411, 28.672628, 25.137091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902897, 28.842596, 25.231699>,  <35.693188, 28.944576, 25.288464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902897, 28.842596, 25.231699>,  <36.252411, 28.672628, 25.137091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902897, 28.842596, 25.231699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471021, -0.618476, -0.628988,
		-0.120985, -0.661008, 0.740561,
		-0.873786, 0.424918, 0.236522,
		35.640762, 28.970072, 25.302656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856625, 28.120596, 25.218615>,  <36.252411, 28.672628, 25.137091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856625, 28.120596, 25.218615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571590, 28.398996, 25.183273>,  <35.400570, 28.566036, 25.162069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571590, 28.398996, 25.183273>,  <35.856625, 28.120596, 25.218615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571590, 28.398996, 25.183273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473724, -0.570210, -0.671153,
		-0.517502, -0.436399, 0.736035,
		-0.712584, 0.696001, -0.088352,
		35.357815, 28.607798, 25.156767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261948, 27.628744, 25.111664>,  <35.856625, 28.120596, 25.218615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261948, 27.628744, 25.111664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164677, 28.004105, 25.013472>,  <35.106312, 28.229321, 24.954556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164677, 28.004105, 25.013472>,  <35.261948, 27.628744, 25.111664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164677, 28.004105, 25.013472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411621, -0.328999, -0.849899,
		-0.878311, -0.105634, 0.466273,
		-0.243181, 0.938404, -0.245483,
		35.091721, 28.285625, 24.939827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597626, 27.652695, 25.104130>,  <35.261948, 27.628744, 25.111664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597626, 27.652695, 25.104130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757744, 27.926228, 24.860119>,  <34.853817, 28.090347, 24.713713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757744, 27.926228, 24.860119>,  <34.597626, 27.652695, 25.104130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757744, 27.926228, 24.860119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361052, -0.494151, -0.790858,
		-0.842260, 0.536832, 0.049090,
		0.400300, 0.683832, -0.610028,
		34.877834, 28.131378, 24.677111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142963, 27.867081, 24.566265>,  <34.597626, 27.652695, 25.104130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142963, 27.867081, 24.566265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478310, 27.992313, 24.387774>,  <34.679516, 28.067453, 24.280678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478310, 27.992313, 24.387774>,  <34.142963, 27.867081, 24.566265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478310, 27.992313, 24.387774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379649, -0.252064, -0.890129,
		-0.391162, 0.915665, -0.092461,
		0.838367, 0.313082, -0.446229,
		34.729820, 28.086239, 24.253904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887535, 28.155403, 23.882427>,  <34.142963, 27.867081, 24.566265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887535, 28.155403, 23.882427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284046, 28.113743, 23.850132>,  <34.521954, 28.088747, 23.830755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284046, 28.113743, 23.850132>,  <33.887535, 28.155403, 23.882427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284046, 28.113743, 23.850132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106093, -0.267344, -0.957743,
		0.078163, 0.957956, -0.276062,
		0.991279, -0.104149, -0.080736,
		34.581429, 28.082499, 23.825911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037056, 28.400587, 23.224564>,  <33.887535, 28.155403, 23.882427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037056, 28.400587, 23.224564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351879, 28.169645, 23.311472>,  <34.540771, 28.031080, 23.363617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351879, 28.169645, 23.311472>,  <34.037056, 28.400587, 23.224564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351879, 28.169645, 23.311472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060244, -0.278586, -0.958520,
		0.613936, 0.767496, -0.184480,
		0.787053, -0.577356, 0.217271,
		34.587994, 27.996439, 23.376654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649376, 28.669140, 22.873268>,  <34.037056, 28.400587, 23.224564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649376, 28.669140, 22.873268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716782, 28.286045, 22.966515>,  <34.757225, 28.056189, 23.022463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716782, 28.286045, 22.966515>,  <34.649376, 28.669140, 22.873268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716782, 28.286045, 22.966515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013755, -0.238758, -0.970982,
		0.985603, 0.160420, -0.053409,
		0.168517, -0.957737, 0.233114,
		34.767338, 27.998724, 23.036449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179962, 28.538675, 22.389828>,  <34.649376, 28.669140, 22.873268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179962, 28.538675, 22.389828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014023, 28.197105, 22.515505>,  <34.914459, 27.992165, 22.590910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014023, 28.197105, 22.515505>,  <35.179962, 28.538675, 22.389828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014023, 28.197105, 22.515505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112493, -0.294523, -0.949000,
		0.902909, -0.429036, 0.026122,
		-0.414849, -0.853923, 0.314191,
		34.889568, 27.940929, 22.609762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543140, 27.923363, 22.025341>,  <35.179962, 28.538675, 22.389828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543140, 27.923363, 22.025341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195377, 27.775898, 22.156923>,  <34.986717, 27.687420, 22.235872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195377, 27.775898, 22.156923>,  <35.543140, 27.923363, 22.025341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195377, 27.775898, 22.156923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162158, -0.416002, -0.894789,
		0.466722, -0.831282, 0.301895,
		-0.869411, -0.368663, 0.328956,
		34.934555, 27.665298, 22.255610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482212, 27.361990, 21.566996>,  <35.543140, 27.923363, 22.025341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482212, 27.361990, 21.566996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.121693, 27.440136, 21.721657>,  <34.905380, 27.487022, 21.814453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.121693, 27.440136, 21.721657>,  <35.482212, 27.361990, 21.566996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121693, 27.440136, 21.721657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430037, -0.295699, -0.853013,
		-0.052313, -0.935091, 0.350525,
		-0.901294, 0.195362, 0.386655,
		34.851303, 27.498745, 21.837654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128929, 26.760973, 21.449560>,  <35.482212, 27.361990, 21.566996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128929, 26.760973, 21.449560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871368, 27.062656, 21.501047>,  <34.716831, 27.243666, 21.531939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871368, 27.062656, 21.501047>,  <35.128929, 26.760973, 21.449560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871368, 27.062656, 21.501047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454242, -0.241454, -0.857534,
		-0.615679, -0.610632, 0.498064,
		-0.643897, 0.754207, 0.128717,
		34.678200, 27.288918, 21.539661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412979, 26.509523, 21.133512>,  <35.128929, 26.760973, 21.449560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412979, 26.509523, 21.133512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383289, 26.907866, 21.154541>,  <34.365475, 27.146872, 21.167158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383289, 26.907866, 21.154541>,  <34.412979, 26.509523, 21.133512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383289, 26.907866, 21.154541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627883, -0.005712, -0.778287,
		-0.774761, -0.090774, 0.625704,
		-0.074222, 0.995855, 0.052570,
		34.361023, 27.206621, 21.170313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753139, 26.651976, 20.958309>,  <34.412979, 26.509523, 21.133512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753139, 26.651976, 20.958309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965652, 26.983896, 20.889994>,  <34.093159, 27.183048, 20.849005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965652, 26.983896, 20.889994>,  <33.753139, 26.651976, 20.958309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965652, 26.983896, 20.889994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545818, 0.181080, -0.818103,
		-0.647938, 0.527862, 0.549125,
		0.531281, 0.829802, -0.170787,
		34.125038, 27.232838, 20.838757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318996, 27.301624, 21.031872>,  <33.753139, 26.651976, 20.958309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318996, 27.301624, 21.031872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630333, 27.330853, 20.782442>,  <33.817135, 27.348389, 20.632784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630333, 27.330853, 20.782442>,  <33.318996, 27.301624, 21.031872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630333, 27.330853, 20.782442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627557, 0.060579, -0.776210,
		-0.018941, 0.995485, 0.093006,
		0.778340, 0.073069, -0.623576,
		33.863834, 27.352774, 20.595369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318413, 27.894136, 20.529160>,  <33.318996, 27.301624, 21.031872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318413, 27.894136, 20.529160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491673, 27.564054, 20.384153>,  <33.595631, 27.366005, 20.297150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491673, 27.564054, 20.384153>,  <33.318413, 27.894136, 20.529160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491673, 27.564054, 20.384153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538672, 0.085463, -0.838170,
		0.722643, 0.558332, -0.407496,
		0.433151, -0.825204, -0.362517,
		33.621616, 27.316494, 20.275398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818478, 28.189333, 21.120852>,  <33.318413, 27.894136, 20.529160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818478, 28.189333, 21.120852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476051, 28.010906, 21.016411>,  <32.270596, 27.903851, 20.953747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476051, 28.010906, 21.016411>,  <32.818478, 28.189333, 21.120852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476051, 28.010906, 21.016411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383476, 0.209435, 0.899490,
		-0.346551, 0.870149, -0.350347,
		-0.856066, -0.446069, -0.261102,
		32.219231, 27.877085, 20.938080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342297, 28.740414, 21.197168>,  <32.818478, 28.189333, 21.120852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342297, 28.740414, 21.197168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155949, 28.388758, 21.237326>,  <32.044140, 28.177765, 21.261419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155949, 28.388758, 21.237326>,  <32.342297, 28.740414, 21.197168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155949, 28.388758, 21.237326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243213, 0.236311, 0.940747,
		-0.850772, 0.413848, -0.323908,
		-0.465869, -0.879140, 0.100394,
		32.016190, 28.125015, 21.267445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751108, 28.948469, 21.560301>,  <32.342297, 28.740414, 21.197168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751108, 28.948469, 21.560301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806103, 28.559669, 21.636530>,  <31.839100, 28.326389, 21.682268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806103, 28.559669, 21.636530>,  <31.751108, 28.948469, 21.560301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806103, 28.559669, 21.636530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296452, 0.143203, 0.944251,
		-0.945100, -0.186316, -0.268462,
		0.137485, -0.971997, 0.190575,
		31.847347, 28.268070, 21.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223986, 28.673929, 22.045816>,  <31.751108, 28.948469, 21.560301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223986, 28.673929, 22.045816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529203, 28.415968, 22.063095>,  <31.712334, 28.261192, 22.073462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529203, 28.415968, 22.063095>,  <31.223986, 28.673929, 22.045816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529203, 28.415968, 22.063095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038554, 0.021297, 0.999029,
		-0.645196, -0.763968, -0.008613,
		0.763043, -0.644902, 0.043195,
		31.758116, 28.222498, 22.076054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040623, 28.118526, 22.521046>,  <31.223986, 28.673929, 22.045816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040623, 28.118526, 22.521046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440477, 28.129309, 22.520884>,  <31.680389, 28.135778, 22.520786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440477, 28.129309, 22.520884>,  <31.040623, 28.118526, 22.521046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440477, 28.129309, 22.520884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000004, 0.015253, 0.999884,
		0.026967, -0.999520, 0.015247,
		0.999636, 0.026964, -0.000407,
		31.740368, 28.137394, 22.520761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124271, 27.635611, 23.099236>,  <31.040623, 28.118526, 22.521046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124271, 27.635611, 23.099236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472208, 27.824316, 23.041529>,  <31.680971, 27.937540, 23.006905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472208, 27.824316, 23.041529>,  <31.124271, 27.635611, 23.099236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472208, 27.824316, 23.041529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184335, -0.039560, 0.982067,
		0.457596, -0.880837, -0.121373,
		0.869843, 0.471764, -0.144266,
		31.733160, 27.965845, 22.998249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582428, 27.229692, 23.519018>,  <31.124271, 27.635611, 23.099236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582428, 27.229692, 23.519018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731186, 27.597326, 23.466906>,  <31.820440, 27.817907, 23.435638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731186, 27.597326, 23.466906>,  <31.582428, 27.229692, 23.519018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731186, 27.597326, 23.466906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255216, 0.033704, 0.966296,
		0.892501, -0.392611, -0.222032,
		0.371895, 0.919087, -0.130282,
		31.842754, 27.873053, 23.427820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155090, 27.176622, 23.944126>,  <31.582428, 27.229692, 23.519018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155090, 27.176622, 23.944126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108761, 27.570652, 23.893185>,  <32.080963, 27.807070, 23.862619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108761, 27.570652, 23.893185>,  <32.155090, 27.176622, 23.944126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108761, 27.570652, 23.893185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303133, 0.157154, 0.939900,
		0.945884, 0.070257, -0.316810,
		-0.115822, 0.985072, -0.127352,
		32.074013, 27.866173, 23.854979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730095, 27.440695, 24.080891>,  <32.155090, 27.176622, 23.944126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730095, 27.440695, 24.080891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480663, 27.750292, 24.124868>,  <32.331005, 27.936050, 24.151255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480663, 27.750292, 24.124868>,  <32.730095, 27.440695, 24.080891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480663, 27.750292, 24.124868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499588, 0.286371, 0.817560,
		0.601299, 0.564740, -0.565251,
		-0.623580, 0.773990, 0.109943,
		32.293591, 27.982489, 24.157850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139046, 27.987513, 24.234428>,  <32.730095, 27.440695, 24.080891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139046, 27.987513, 24.234428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783051, 28.119507, 24.360310>,  <32.569454, 28.198704, 24.435839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783051, 28.119507, 24.360310>,  <33.139046, 27.987513, 24.234428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783051, 28.119507, 24.360310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444385, 0.472947, 0.760818,
		0.102221, 0.816965, -0.567555,
		-0.889985, 0.329985, 0.314702,
		32.516056, 28.218502, 24.454720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263691, 28.615515, 24.397768>,  <33.139046, 27.987513, 24.234428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263691, 28.615515, 24.397768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945232, 28.502213, 24.611650>,  <32.754158, 28.434231, 24.739981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945232, 28.502213, 24.611650>,  <33.263691, 28.615515, 24.397768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945232, 28.502213, 24.611650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421453, 0.374499, 0.825910,
		-0.434193, 0.882902, -0.178778,
		-0.796150, -0.283258, 0.534706,
		32.706387, 28.417234, 24.772062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050228, 29.208195, 24.800331>,  <33.263691, 28.615515, 24.397768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050228, 29.208195, 24.800331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927834, 28.888084, 25.006605>,  <32.854397, 28.696018, 25.130369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927834, 28.888084, 25.006605>,  <33.050228, 29.208195, 24.800331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927834, 28.888084, 25.006605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540002, 0.300210, 0.786303,
		-0.784073, 0.519069, 0.340290,
		-0.305987, -0.800276, 0.515684,
		32.836037, 28.648001, 25.161310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148613, 29.427542, 25.459152>,  <33.050228, 29.208195, 24.800331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148613, 29.427542, 25.459152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071350, 29.037304, 25.500917>,  <33.024990, 28.803162, 25.525976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071350, 29.037304, 25.500917>,  <33.148613, 29.427542, 25.459152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071350, 29.037304, 25.500917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593144, -0.031337, 0.804487,
		-0.781582, 0.217327, 0.584721,
		-0.193160, -0.975596, 0.104413,
		33.013401, 28.744625, 25.532242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881184, 29.374832, 26.200672>,  <33.148613, 29.427542, 25.459152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881184, 29.374832, 26.200672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015091, 29.014610, 26.089729>,  <33.095436, 28.798477, 26.023165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015091, 29.014610, 26.089729>,  <32.881184, 29.374832, 26.200672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015091, 29.014610, 26.089729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468209, -0.096462, 0.878337,
		-0.817746, -0.423902, 0.389357,
		0.334770, -0.900557, -0.277356,
		33.115520, 28.744444, 26.006523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629360, 28.887934, 26.621544>,  <32.881184, 29.374832, 26.200672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629360, 28.887934, 26.621544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974514, 28.743626, 26.479961>,  <33.181606, 28.657042, 26.395012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974514, 28.743626, 26.479961>,  <32.629360, 28.887934, 26.621544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974514, 28.743626, 26.479961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355135, -0.065502, 0.932518,
		-0.359609, -0.930352, 0.071601,
		0.862880, -0.360769, -0.353955,
		33.233379, 28.635395, 26.373775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769402, 28.339911, 27.042675>,  <32.629360, 28.887934, 26.621544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769402, 28.339911, 27.042675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113300, 28.439137, 26.864101>,  <33.319637, 28.498672, 26.756956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113300, 28.439137, 26.864101>,  <32.769402, 28.339911, 27.042675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113300, 28.439137, 26.864101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451139, 0.040881, 0.891517,
		0.239405, -0.967880, -0.076765,
		0.859743, 0.248065, -0.446436,
		33.371223, 28.513556, 26.730171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218647, 28.083965, 27.391516>,  <32.769402, 28.339911, 27.042675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218647, 28.083965, 27.391516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497890, 28.312380, 27.218744>,  <33.665436, 28.449429, 27.115082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497890, 28.312380, 27.218744>,  <33.218647, 28.083965, 27.391516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497890, 28.312380, 27.218744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450067, 0.119191, 0.885004,
		0.556853, -0.812225, -0.173797,
		0.698107, 0.571038, -0.431928,
		33.707321, 28.483692, 27.089167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955482, 27.888174, 27.635393>,  <33.218647, 28.083965, 27.391516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955482, 27.888174, 27.635393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004406, 28.261875, 27.501402>,  <34.033760, 28.486095, 27.421007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004406, 28.261875, 27.501402>,  <33.955482, 27.888174, 27.635393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004406, 28.261875, 27.501402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559608, 0.213829, 0.800697,
		0.819682, -0.285389, -0.496663,
		0.122309, 0.934254, -0.334978,
		34.041100, 28.542150, 27.400908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777550, 28.078779, 27.645950>,  <33.955482, 27.888174, 27.635393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777550, 28.078779, 27.645950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586174, 28.429972, 27.652182>,  <34.471348, 28.640688, 27.655920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586174, 28.429972, 27.652182>,  <34.777550, 28.078779, 27.645950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586174, 28.429972, 27.652182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369557, 0.185225, 0.910560,
		0.796570, 0.441405, -0.413083,
		-0.478439, 0.877983, 0.015580,
		34.442642, 28.693367, 27.656855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259609, 28.597857, 27.883320>,  <34.777550, 28.078779, 27.645950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259609, 28.597857, 27.883320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900055, 28.764122, 27.938789>,  <34.684322, 28.863880, 27.972071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900055, 28.764122, 27.938789>,  <35.259609, 28.597857, 27.883320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900055, 28.764122, 27.938789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322021, 0.412013, 0.852378,
		0.297166, 0.810846, -0.504204,
		-0.898885, 0.415662, 0.138673,
		34.630390, 28.888821, 27.980391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.358524, 31.094625, 29.806498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997498, 31.261124, 29.850513>,  <38.780880, 31.361023, 29.876923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997498, 31.261124, 29.850513>,  <39.358524, 31.094625, 29.806498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997498, 31.261124, 29.850513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416413, 0.779006, 0.468775,
		0.109402, 0.468925, -0.876436,
		-0.902569, 0.416244, 0.110041,
		38.726727, 31.385998, 29.883526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454487, 31.837566, 29.735636>,  <39.358524, 31.094625, 29.806498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454487, 31.837566, 29.735636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.105572, 31.780800, 29.922815>,  <38.896225, 31.746740, 30.035124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.105572, 31.780800, 29.922815>,  <39.454487, 31.837566, 29.735636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105572, 31.780800, 29.922815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204878, 0.762852, 0.613254,
		-0.444007, 0.630806, -0.636350,
		-0.872286, -0.141915, 0.467950,
		38.843887, 31.738226, 30.063200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129745, 32.430889, 29.677671>,  <39.454487, 31.837566, 29.735636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129745, 32.430889, 29.677671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932247, 32.260990, 29.981197>,  <38.813747, 32.159050, 30.163313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932247, 32.260990, 29.981197>,  <39.129745, 32.430889, 29.677671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932247, 32.260990, 29.981197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256810, 0.762458, 0.593890,
		-0.830820, 0.488104, -0.267382,
		-0.493748, -0.424750, 0.758815,
		38.784122, 32.133564, 30.208841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679832, 32.980225, 29.878515>,  <39.129745, 32.430889, 29.677671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679832, 32.980225, 29.878515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695217, 32.723301, 30.184708>,  <38.704449, 32.569145, 30.368423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695217, 32.723301, 30.184708>,  <38.679832, 32.980225, 29.878515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695217, 32.723301, 30.184708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180491, 0.757912, 0.626891,
		-0.982824, 0.114052, 0.145081,
		0.038460, -0.642309, 0.765480,
		38.706757, 32.530609, 30.414352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424664, 33.359432, 30.389101>,  <38.679832, 32.980225, 29.878515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424664, 33.359432, 30.389101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598015, 33.072731, 30.607624>,  <38.702026, 32.900711, 30.738737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598015, 33.072731, 30.607624>,  <38.424664, 33.359432, 30.389101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598015, 33.072731, 30.607624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360641, 0.693465, 0.623734,
		-0.825908, -0.073290, 0.559021,
		0.433375, -0.716753, 0.546307,
		38.728027, 32.857704, 30.771517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149097, 33.383965, 31.073559>,  <38.424664, 33.359432, 30.389101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149097, 33.383965, 31.073559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512360, 33.216511, 31.073282>,  <38.730316, 33.116039, 31.073116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512360, 33.216511, 31.073282>,  <38.149097, 33.383965, 31.073559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512360, 33.216511, 31.073282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309684, 0.670684, 0.674002,
		-0.281697, -0.612312, 0.738729,
		0.908154, -0.418637, -0.000693,
		38.784805, 33.090919, 31.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378178, 33.349415, 31.696436>,  <38.149097, 33.383965, 31.073559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378178, 33.349415, 31.696436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748615, 33.311192, 31.550438>,  <38.970879, 33.288258, 31.462839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748615, 33.311192, 31.550438>,  <38.378178, 33.349415, 31.696436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748615, 33.311192, 31.550438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340281, 0.629422, 0.698597,
		0.162978, -0.771166, 0.615420,
		0.926092, -0.095560, -0.364995,
		39.026443, 33.282524, 31.440939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857201, 33.278450, 32.323879>,  <38.378178, 33.349415, 31.696436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857201, 33.278450, 32.323879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093781, 33.421574, 32.034836>,  <39.235729, 33.507446, 31.861410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093781, 33.421574, 32.034836>,  <38.857201, 33.278450, 32.323879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093781, 33.421574, 32.034836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434170, 0.613843, 0.659313,
		0.679477, -0.703683, 0.207705,
		0.591445, 0.357809, -0.722610,
		39.271214, 33.528915, 31.818052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462845, 33.372478, 32.680717>,  <38.857201, 33.278450, 32.323879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462845, 33.372478, 32.680717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491917, 33.588223, 32.345146>,  <39.509361, 33.717670, 32.143803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491917, 33.588223, 32.345146>,  <39.462845, 33.372478, 32.680717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491917, 33.588223, 32.345146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328067, 0.781417, 0.530810,
		0.941854, -0.313805, -0.120154,
		0.072680, 0.539364, -0.838930,
		39.513721, 33.750031, 32.093468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985973, 33.731792, 32.879509>,  <39.462845, 33.372478, 32.680717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985973, 33.731792, 32.879509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.844307, 33.923687, 32.558407>,  <39.759308, 34.038822, 32.365746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.844307, 33.923687, 32.558407>,  <39.985973, 33.731792, 32.879509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844307, 33.923687, 32.558407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167630, 0.877062, 0.450181,
		0.920035, 0.024873, -0.391045,
		-0.354168, 0.479733, -0.802758,
		39.738056, 34.067608, 32.317581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559544, 34.216473, 32.582424>,  <39.985973, 33.731792, 32.879509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559544, 34.216473, 32.582424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194546, 34.346592, 32.483204>,  <39.975548, 34.424664, 32.423672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194546, 34.346592, 32.483204>,  <40.559544, 34.216473, 32.582424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194546, 34.346592, 32.483204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265379, 0.932170, 0.246236,
		0.311322, 0.158864, -0.936932,
		-0.912498, 0.325301, -0.248046,
		39.920795, 34.444183, 32.408791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638000, 34.875103, 32.122646>,  <40.559544, 34.216473, 32.582424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638000, 34.875103, 32.122646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262836, 34.883884, 32.261124>,  <40.037739, 34.889153, 32.344212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262836, 34.883884, 32.261124>,  <40.638000, 34.875103, 32.122646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262836, 34.883884, 32.261124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055903, 0.994517, 0.088377,
		-0.342354, 0.102242, -0.933991,
		-0.937906, 0.021957, 0.346193,
		39.981464, 34.890472, 32.364983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120049, 35.423996, 31.746460>,  <40.638000, 34.875103, 32.122646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120049, 35.423996, 31.746460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.058517, 35.367695, 32.137669>,  <40.021599, 35.333916, 32.372395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.058517, 35.367695, 32.137669>,  <40.120049, 35.423996, 31.746460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058517, 35.367695, 32.137669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033115, 0.988513, 0.147466,
		-0.987543, 0.055071, -0.147395,
		-0.153823, -0.140748, 0.978023,
		40.012371, 35.325470, 32.431076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702206, 36.014793, 31.861248>,  <40.120049, 35.423996, 31.746460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702206, 36.014793, 31.861248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.864304, 35.869541, 32.196846>,  <39.961563, 35.782391, 32.398205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.864304, 35.869541, 32.196846>,  <39.702206, 36.014793, 31.861248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864304, 35.869541, 32.196846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137421, 0.931498, 0.336789,
		-0.903820, -0.021187, 0.427387,
		0.405246, -0.363128, 0.838996,
		39.985878, 35.760601, 32.448544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807766, 36.680077, 31.658701>,  <39.702206, 36.014793, 31.861248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807766, 36.680077, 31.658701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686661, 37.056614, 31.599094>,  <39.613998, 37.282536, 31.563330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686661, 37.056614, 31.599094>,  <39.807766, 36.680077, 31.658701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686661, 37.056614, 31.599094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840616, -0.337431, -0.423680,
		-0.449112, -0.003006, 0.893470,
		-0.302758, 0.941345, -0.149017,
		39.595833, 37.339016, 31.554390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128540, 36.721409, 31.788084>,  <39.807766, 36.680077, 31.658701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128540, 36.721409, 31.788084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134731, 37.059120, 31.573809>,  <39.138447, 37.261745, 31.445244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134731, 37.059120, 31.573809>,  <39.128540, 36.721409, 31.788084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134731, 37.059120, 31.573809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784496, -0.321917, -0.530033,
		-0.619940, 0.428451, 0.657346,
		0.015482, 0.844274, -0.535688,
		39.139378, 37.312401, 31.413103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445446, 36.900951, 31.688213>,  <39.128540, 36.721409, 31.788084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445446, 36.900951, 31.688213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627422, 37.107475, 31.397985>,  <38.736610, 37.231388, 31.223848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627422, 37.107475, 31.397985>,  <38.445446, 36.900951, 31.688213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627422, 37.107475, 31.397985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806148, -0.107393, -0.581887,
		-0.378354, 0.849643, 0.367363,
		0.454944, 0.516308, -0.725570,
		38.763905, 37.262367, 31.180315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980022, 37.376484, 31.409697>,  <38.445446, 36.900951, 31.688213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980022, 37.376484, 31.409697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245834, 37.364845, 31.111019>,  <38.405323, 37.357861, 30.931812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245834, 37.364845, 31.111019>,  <37.980022, 37.376484, 31.409697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245834, 37.364845, 31.111019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740772, 0.105744, -0.663381,
		0.098261, 0.993968, 0.048716,
		0.664531, -0.029097, -0.746694,
		38.445194, 37.356117, 30.887011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906326, 37.969727, 30.995140>,  <37.980022, 37.376484, 31.409697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906326, 37.969727, 30.995140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 37.681099, 30.770565>,  <38.165611, 37.507923, 30.635820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 37.681099, 30.770565>,  <37.906326, 37.969727, 30.995140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068378, 37.681099, 30.770565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762501, 0.072151, -0.642951,
		0.504439, 0.688577, -0.520963,
		0.405134, -0.721565, -0.561437,
		38.189919, 37.464630, 30.602135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796814, 38.188766, 30.318602>,  <37.906326, 37.969727, 30.995140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796814, 38.188766, 30.318602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868515, 37.796726, 30.284508>,  <37.911537, 37.561501, 30.264051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868515, 37.796726, 30.284508>,  <37.796814, 38.188766, 30.318602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868515, 37.796726, 30.284508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734734, -0.075753, -0.674112,
		0.654243, 0.183463, -0.733694,
		0.179254, -0.980103, -0.085236,
		37.922291, 37.502697, 30.258938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658237, 38.021591, 29.642380>,  <37.796814, 38.188766, 30.318602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658237, 38.021591, 29.642380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689278, 37.646397, 29.777525>,  <37.707901, 37.421280, 29.858612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689278, 37.646397, 29.777525>,  <37.658237, 38.021591, 29.642380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689278, 37.646397, 29.777525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648693, -0.304845, -0.697328,
		0.757083, -0.165057, -0.632124,
		0.077601, -0.937990, 0.337865,
		37.712559, 37.364998, 29.878885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907345, 37.583832, 29.112082>,  <37.658237, 38.021591, 29.642380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907345, 37.583832, 29.112082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709190, 37.331326, 29.350775>,  <37.590298, 37.179821, 29.493992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709190, 37.331326, 29.350775>,  <37.907345, 37.583832, 29.112082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709190, 37.331326, 29.350775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434455, -0.414813, -0.799487,
		0.752222, -0.655312, -0.068763,
		-0.495390, -0.631266, 0.596735,
		37.560574, 37.141945, 29.529795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865894, 36.882458, 28.829336>,  <37.907345, 37.583832, 29.112082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865894, 36.882458, 28.829336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570366, 36.876053, 29.098820>,  <37.393047, 36.872208, 29.260509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570366, 36.876053, 29.098820>,  <37.865894, 36.882458, 28.829336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570366, 36.876053, 29.098820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627075, -0.349797, -0.696002,
		0.246808, -0.936689, 0.248395,
		-0.738825, -0.016017, 0.673707,
		37.348717, 36.871246, 29.300932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625492, 36.201954, 28.674057>,  <37.865894, 36.882458, 28.829336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625492, 36.201954, 28.674057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347446, 36.405231, 28.877447>,  <37.180618, 36.527199, 28.999481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347446, 36.405231, 28.877447>,  <37.625492, 36.201954, 28.674057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347446, 36.405231, 28.877447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716788, -0.544098, -0.436088,
		0.055042, -0.667602, 0.742481,
		-0.695116, 0.508198, 0.508478,
		37.138912, 36.557690, 29.029991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223488, 35.756573, 29.206301>,  <37.625492, 36.201954, 28.674057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223488, 35.756573, 29.206301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987988, 36.062008, 29.100246>,  <36.846687, 36.245270, 29.036613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987988, 36.062008, 29.100246>,  <37.223488, 35.756573, 29.206301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987988, 36.062008, 29.100246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608050, -0.634505, -0.477157,
		-0.532584, -0.119711, 0.837868,
		-0.588753, 0.763592, -0.265137,
		36.811363, 36.291084, 29.020704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611225, 35.460163, 29.223528>,  <37.223488, 35.756573, 29.206301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611225, 35.460163, 29.223528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.550480, 35.797810, 29.017849>,  <36.514034, 36.000397, 28.894442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.550480, 35.797810, 29.017849>,  <36.611225, 35.460163, 29.223528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550480, 35.797810, 29.017849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738210, -0.442802, -0.508893,
		-0.657254, 0.302303, 0.690384,
		-0.151863, 0.844120, -0.514197,
		36.504921, 36.051044, 28.863590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843700, 35.475376, 29.127405>,  <36.611225, 35.460163, 29.223528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843700, 35.475376, 29.127405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999649, 35.700451, 28.835823>,  <36.093220, 35.835495, 28.660873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999649, 35.700451, 28.835823>,  <35.843700, 35.475376, 29.127405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999649, 35.700451, 28.835823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659023, -0.382403, -0.647654,
		-0.643183, 0.732904, 0.221735,
		0.389876, 0.562689, -0.728957,
		36.116611, 35.869259, 28.617136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276165, 35.753834, 28.732544>,  <35.843700, 35.475376, 29.127405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276165, 35.753834, 28.732544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586494, 35.788174, 28.482510>,  <35.772690, 35.808777, 28.332489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586494, 35.788174, 28.482510>,  <35.276165, 35.753834, 28.732544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586494, 35.788174, 28.482510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561586, -0.357648, -0.746129,
		-0.287615, 0.929902, -0.229259,
		0.775821, 0.085850, -0.625085,
		35.819241, 35.813927, 28.294985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592319, 35.960320, 28.607386>,  <35.276165, 35.753834, 28.732544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592319, 35.960320, 28.607386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.278503, 36.178989, 28.490328>,  <34.090214, 36.310192, 28.420094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.278503, 36.178989, 28.490328>,  <34.592319, 35.960320, 28.607386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278503, 36.178989, 28.490328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035940, 0.431065, 0.901605,
		0.619038, 0.717861, -0.318540,
		-0.784538, 0.546679, -0.292645,
		34.043140, 36.342995, 28.402534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787579, 36.673126, 28.680052>,  <34.592319, 35.960320, 28.607386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787579, 36.673126, 28.680052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389309, 36.649700, 28.708908>,  <34.150349, 36.635643, 28.726221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389309, 36.649700, 28.708908>,  <34.787579, 36.673126, 28.680052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389309, 36.649700, 28.708908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061149, 0.171553, 0.983275,
		-0.069966, 0.983432, -0.167229,
		-0.995673, -0.058570, 0.072139,
		34.090607, 36.632130, 28.730551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732182, 37.191521, 29.155733>,  <34.787579, 36.673126, 28.680052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732182, 37.191521, 29.155733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.392765, 36.981228, 29.131792>,  <34.189114, 36.855053, 29.117428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.392765, 36.981228, 29.131792>,  <34.732182, 37.191521, 29.155733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392765, 36.981228, 29.131792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199555, 0.213201, 0.956412,
		-0.490052, 0.823501, -0.285822,
		-0.848544, -0.525729, -0.059854,
		34.138203, 36.823509, 29.113836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185368, 37.576809, 29.570295>,  <34.732182, 37.191521, 29.155733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185368, 37.576809, 29.570295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.062096, 37.201889, 29.505188>,  <33.988132, 36.976936, 29.466124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.062096, 37.201889, 29.505188>,  <34.185368, 37.576809, 29.570295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062096, 37.201889, 29.505188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308698, -0.063310, 0.949050,
		-0.899852, 0.342720, -0.269833,
		-0.308175, -0.937302, -0.162766,
		33.969643, 36.920700, 29.456358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431301, 37.532242, 29.814072>,  <34.185368, 37.576809, 29.570295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431301, 37.532242, 29.814072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.559662, 37.153561, 29.825209>,  <33.636677, 36.926353, 29.831890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.559662, 37.153561, 29.825209>,  <33.431301, 37.532242, 29.814072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559662, 37.153561, 29.825209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411781, -0.112985, 0.904252,
		-0.852913, -0.301638, -0.426091,
		0.320899, -0.946704, 0.027843,
		33.655933, 36.869549, 29.833561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977833, 37.175549, 30.151310>,  <33.431301, 37.532242, 29.814072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977833, 37.175549, 30.151310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.312325, 36.959209, 30.187538>,  <33.513020, 36.829407, 30.209274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.312325, 36.959209, 30.187538>,  <32.977833, 37.175549, 30.151310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312325, 36.959209, 30.187538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202411, -0.150925, 0.967601,
		-0.509658, -0.827468, -0.235681,
		0.836228, -0.540850, 0.090569,
		33.563194, 36.796955, 30.214708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832344, 36.571938, 30.626116>,  <32.977833, 37.175549, 30.151310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832344, 36.571938, 30.626116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.231728, 36.570309, 30.648222>,  <33.471359, 36.569332, 30.661486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.231728, 36.570309, 30.648222>,  <32.832344, 36.571938, 30.626116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231728, 36.570309, 30.648222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055406, -0.091954, 0.994221,
		0.001031, -0.995755, -0.092038,
		0.998463, -0.004074, 0.055265,
		33.531265, 36.569084, 30.664801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943916, 35.968147, 31.132494>,  <32.832344, 36.571938, 30.626116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943916, 35.968147, 31.132494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276482, 36.190224, 31.141483>,  <33.476021, 36.323471, 31.146877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276482, 36.190224, 31.141483>,  <32.943916, 35.968147, 31.132494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276482, 36.190224, 31.141483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087342, 0.090642, 0.992046,
		0.548741, -0.826767, 0.123853,
		0.831417, 0.555194, 0.022473,
		33.525906, 36.356781, 31.148226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292610, 35.781460, 31.779842>,  <32.943916, 35.968147, 31.132494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292610, 35.781460, 31.779842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.449093, 36.135128, 31.677708>,  <33.542984, 36.347328, 31.616426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.449093, 36.135128, 31.677708>,  <33.292610, 35.781460, 31.779842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449093, 36.135128, 31.677708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122565, 0.224923, 0.966637,
		0.912104, -0.409452, -0.020377,
		0.391208, 0.884171, -0.255338,
		33.566456, 36.400379, 31.601107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978367, 35.818745, 32.031502>,  <33.292610, 35.781460, 31.779842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978367, 35.818745, 32.031502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.882500, 36.204044, 31.982988>,  <33.824982, 36.435223, 31.953880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.882500, 36.204044, 31.982988>,  <33.978367, 35.818745, 32.031502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882500, 36.204044, 31.982988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545030, 0.236870, 0.804260,
		0.803432, 0.126651, -0.581770,
		-0.239665, 0.963251, -0.121281,
		33.810600, 36.493019, 31.946604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585106, 36.109333, 31.953802>,  <33.978367, 35.818745, 32.031502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585106, 36.109333, 31.953802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.309818, 36.363766, 32.093376>,  <34.144646, 36.516426, 32.177120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.309818, 36.363766, 32.093376>,  <34.585106, 36.109333, 31.953802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309818, 36.363766, 32.093376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608467, 0.244117, 0.755099,
		0.395122, 0.731990, -0.555040,
		-0.688220, 0.636079, 0.348936,
		34.103352, 36.554588, 32.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867950, 36.723633, 32.058563>,  <34.585106, 36.109333, 31.953802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867950, 36.723633, 32.058563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.555992, 36.734650, 32.308681>,  <34.368816, 36.741261, 32.458752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.555992, 36.734650, 32.308681>,  <34.867950, 36.723633, 32.058563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555992, 36.734650, 32.308681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606981, 0.277083, 0.744848,
		-0.152742, 0.960451, -0.232817,
		-0.779900, 0.027546, 0.625298,
		34.322021, 36.742912, 32.496269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.818195, 35.535362, 24.660730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451969, 35.529556, 24.821491>,  <33.232235, 35.526073, 24.917948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451969, 35.529556, 24.821491>,  <33.818195, 35.535362, 24.660730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451969, 35.529556, 24.821491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299327, 0.642832, 0.705103,
		-0.268591, 0.765870, -0.584211,
		-0.915567, -0.014514, 0.401904,
		33.177299, 35.525204, 24.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774487, 36.221375, 24.903553>,  <33.818195, 35.535362, 24.660730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774487, 36.221375, 24.903553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486122, 36.047173, 25.119192>,  <33.313103, 35.942650, 25.248575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486122, 36.047173, 25.119192>,  <33.774487, 36.221375, 24.903553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486122, 36.047173, 25.119192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216920, 0.597000, 0.772358,
		-0.658208, 0.673740, -0.335912,
		-0.720908, -0.435506, 0.539098,
		33.269848, 35.916519, 25.280922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341000, 36.715683, 25.228983>,  <33.774487, 36.221375, 24.903553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341000, 36.715683, 25.228983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312351, 36.381546, 25.446999>,  <33.295162, 36.181065, 25.577808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312351, 36.381546, 25.446999>,  <33.341000, 36.715683, 25.228983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312351, 36.381546, 25.446999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113380, 0.536083, 0.836516,
		-0.990967, 0.121708, 0.056317,
		-0.071620, -0.835345, 0.545040,
		33.290867, 36.130943, 25.610510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791561, 36.881378, 25.722616>,  <33.341000, 36.715683, 25.228983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791561, 36.881378, 25.722616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994919, 36.558468, 25.842510>,  <33.116932, 36.364723, 25.914448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994919, 36.558468, 25.842510>,  <32.791561, 36.881378, 25.722616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994919, 36.558468, 25.842510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071055, 0.386215, 0.919668,
		-0.858188, -0.446255, 0.253710,
		0.508393, -0.807275, 0.299736,
		33.147438, 36.316284, 25.932430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565903, 36.752968, 26.439178>,  <32.791561, 36.881378, 25.722616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565903, 36.752968, 26.439178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916813, 36.560974, 26.440199>,  <33.127357, 36.445778, 26.440811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916813, 36.560974, 26.440199>,  <32.565903, 36.752968, 26.439178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916813, 36.560974, 26.440199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257755, 0.475574, 0.841066,
		-0.404914, -0.737186, 0.540927,
		0.877273, -0.479986, 0.002553,
		33.179996, 36.416977, 26.440966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631916, 36.339931, 27.083576>,  <32.565903, 36.752968, 26.439178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631916, 36.339931, 27.083576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005253, 36.383003, 26.946590>,  <33.229256, 36.408844, 26.864399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005253, 36.383003, 26.946590>,  <32.631916, 36.339931, 27.083576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005253, 36.383003, 26.946590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301295, 0.283715, 0.910344,
		0.195181, -0.952844, 0.232362,
		0.933341, 0.107673, -0.342463,
		33.285255, 36.415306, 26.843851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077343, 35.747372, 27.190338>,  <32.631916, 36.339931, 27.083576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077343, 35.747372, 27.190338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290424, 36.085606, 27.176420>,  <33.418274, 36.288548, 27.168070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290424, 36.085606, 27.176420>,  <33.077343, 35.747372, 27.190338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290424, 36.085606, 27.176420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272130, -0.132218, 0.953134,
		0.801356, -0.517207, -0.300542,
		0.532704, 0.845586, -0.034794,
		33.450237, 36.339283, 27.165981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712837, 35.517063, 27.508308>,  <33.077343, 35.747372, 27.190338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712837, 35.517063, 27.508308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711998, 35.916939, 27.518217>,  <33.711494, 36.156864, 27.524162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711998, 35.916939, 27.518217>,  <33.712837, 35.517063, 27.508308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711998, 35.916939, 27.518217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301803, -0.022984, 0.953093,
		0.953368, 0.009476, -0.301661,
		-0.002098, 0.999691, 0.024772,
		33.711369, 36.216846, 27.525648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264332, 35.700722, 27.994480>,  <33.712837, 35.517063, 27.508308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264332, 35.700722, 27.994480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036041, 36.027668, 27.963013>,  <33.899067, 36.223835, 27.944132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036041, 36.027668, 27.963013>,  <34.264332, 35.700722, 27.994480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036041, 36.027668, 27.963013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060660, 0.053576, 0.996720,
		0.818897, 0.573626, 0.019005,
		-0.570726, 0.817364, -0.078669,
		33.864822, 36.272877, 27.939411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952465, 36.082645, 27.786264>,  <34.264332, 35.700722, 27.994480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952465, 36.082645, 27.786264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328598, 35.946899, 27.776352>,  <35.554276, 35.865452, 27.770405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328598, 35.946899, 27.776352>,  <34.952465, 36.082645, 27.786264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328598, 35.946899, 27.776352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192748, -0.471219, -0.860698,
		0.280414, 0.814115, -0.508512,
		0.940328, -0.339366, -0.024783,
		35.610695, 35.845089, 27.768917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054573, 36.148529, 27.098415>,  <34.952465, 36.082645, 27.786264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054573, 36.148529, 27.098415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342739, 35.888172, 27.194202>,  <35.515640, 35.731956, 27.251675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342739, 35.888172, 27.194202>,  <35.054573, 36.148529, 27.098415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342739, 35.888172, 27.194202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059034, -0.401576, -0.913921,
		0.691027, 0.644265, -0.327725,
		0.720414, -0.650891, 0.239467,
		35.558865, 35.692905, 27.266043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396870, 36.041950, 26.466341>,  <35.054573, 36.148529, 27.098415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396870, 36.041950, 26.466341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494877, 35.735802, 26.704388>,  <35.553680, 35.552113, 26.847216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494877, 35.735802, 26.704388>,  <35.396870, 36.041950, 26.466341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494877, 35.735802, 26.704388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060430, -0.600579, -0.797278,
		0.967633, 0.231311, -0.100901,
		0.245019, -0.765376, 0.595119,
		35.568382, 35.506187, 26.882923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948669, 35.647640, 26.209978>,  <35.396870, 36.041950, 26.466341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948669, 35.647640, 26.209978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789722, 35.362488, 26.441111>,  <35.694355, 35.191395, 26.579790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789722, 35.362488, 26.441111>,  <35.948669, 35.647640, 26.209978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789722, 35.362488, 26.441111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027505, -0.638651, -0.769005,
		0.917245, -0.289688, 0.273390,
		-0.397372, -0.712886, 0.577832,
		35.670509, 35.148621, 26.614460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388206, 35.175762, 26.102808>,  <35.948669, 35.647640, 26.209978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388206, 35.175762, 26.102808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054554, 35.002346, 26.239195>,  <35.854362, 34.898296, 26.321028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054554, 35.002346, 26.239195>,  <36.388206, 35.175762, 26.102808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054554, 35.002346, 26.239195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066270, -0.692485, -0.718382,
		0.547564, -0.576632, 0.606357,
		-0.834135, -0.433543, 0.340967,
		35.804314, 34.872284, 26.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505936, 34.515095, 26.085220>,  <36.388206, 35.175762, 26.102808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505936, 34.515095, 26.085220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110104, 34.557224, 26.045942>,  <35.872604, 34.582500, 26.022375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110104, 34.557224, 26.045942>,  <36.505936, 34.515095, 26.085220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110104, 34.557224, 26.045942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030658, -0.820389, -0.570984,
		-0.140699, -0.562022, 0.815067,
		-0.989577, 0.105325, -0.098197,
		35.813229, 34.588821, 26.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311245, 33.800232, 26.013205>,  <36.505936, 34.515095, 26.085220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311245, 33.800232, 26.013205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983299, 34.003559, 25.907803>,  <35.786533, 34.125557, 25.844561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983299, 34.003559, 25.907803>,  <36.311245, 33.800232, 26.013205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983299, 34.003559, 25.907803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281836, -0.758898, -0.587063,
		-0.498389, -0.407047, 0.765455,
		-0.819864, 0.508318, -0.263505,
		35.737339, 34.156055, 25.828751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813274, 33.304169, 25.916594>,  <36.311245, 33.800232, 26.013205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813274, 33.304169, 25.916594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677383, 33.613426, 25.702368>,  <35.595848, 33.798981, 25.573832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677383, 33.613426, 25.702368>,  <35.813274, 33.304169, 25.916594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677383, 33.613426, 25.702368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114053, -0.599097, -0.792511,
		-0.933582, -0.208157, 0.291710,
		-0.339729, 0.773145, -0.535566,
		35.575466, 33.845371, 25.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186554, 33.107254, 25.636883>,  <35.813274, 33.304169, 25.916594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186554, 33.107254, 25.636883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351440, 33.383644, 25.399351>,  <35.450371, 33.549477, 25.256832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351440, 33.383644, 25.399351>,  <35.186554, 33.107254, 25.636883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351440, 33.383644, 25.399351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250479, -0.540718, -0.803047,
		-0.875978, 0.479772, -0.049820,
		0.412218, 0.690972, -0.593830,
		35.475105, 33.590935, 25.221203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672142, 33.216076, 25.025620>,  <35.186554, 33.107254, 25.636883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672142, 33.216076, 25.025620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012150, 33.386101, 24.901173>,  <35.216152, 33.488117, 24.826504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012150, 33.386101, 24.901173>,  <34.672142, 33.216076, 25.025620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012150, 33.386101, 24.901173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091865, -0.461953, -0.882134,
		-0.518686, 0.778408, -0.353619,
		0.850015, 0.425066, -0.311117,
		35.267155, 33.513622, 24.807838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503403, 33.388973, 24.370752>,  <34.672142, 33.216076, 25.025620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503403, 33.388973, 24.370752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901478, 33.418915, 24.396049>,  <35.140324, 33.436878, 24.411228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901478, 33.418915, 24.396049>,  <34.503403, 33.388973, 24.370752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901478, 33.418915, 24.396049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088754, -0.414954, -0.905503,
		-0.041538, 0.906758, -0.419601,
		0.995187, 0.074854, 0.063242,
		35.200035, 33.441372, 24.415022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718365, 33.577930, 23.715357>,  <34.503403, 33.388973, 24.370752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718365, 33.577930, 23.715357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031990, 33.417198, 23.904577>,  <35.220165, 33.320759, 24.018110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031990, 33.417198, 23.904577>,  <34.718365, 33.577930, 23.715357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031990, 33.417198, 23.904577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156698, -0.609315, -0.777291,
		0.600574, 0.683572, -0.414777,
		0.784064, -0.401826, 0.473053,
		35.267208, 33.296650, 24.046494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142170, 33.393372, 23.183502>,  <34.718365, 33.577930, 23.715357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142170, 33.393372, 23.183502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282505, 33.161747, 23.477877>,  <35.366707, 33.022774, 23.654501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282505, 33.161747, 23.477877>,  <35.142170, 33.393372, 23.183502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282505, 33.161747, 23.477877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155338, -0.739017, -0.655534,
		0.923462, 0.344306, -0.169327,
		0.350840, -0.579058, 0.735937,
		35.387756, 32.988029, 23.698658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693008, 33.103573, 22.955629>,  <35.142170, 33.393372, 23.183502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693008, 33.103573, 22.955629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624603, 32.850033, 23.257355>,  <35.583561, 32.697910, 23.438391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624603, 32.850033, 23.257355>,  <35.693008, 33.103573, 22.955629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624603, 32.850033, 23.257355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229214, -0.770181, -0.595216,
		0.958236, 0.071112, 0.276996,
		-0.171010, -0.633849, 0.754315,
		35.573299, 32.659878, 23.483650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.215923, 29.753080, 27.967981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.436934, 30.004997, 27.749596>,  <30.569540, 30.156147, 27.618565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.436934, 30.004997, 27.749596>,  <30.215923, 29.753080, 27.967981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436934, 30.004997, 27.749596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583949, 0.174902, 0.792725,
		0.594743, -0.756816, -0.271129,
		0.552525, 0.629793, -0.545964,
		30.602692, 30.193935, 27.585806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926172, 29.529253, 28.113142>,  <30.215923, 29.753080, 27.967981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926172, 29.529253, 28.113142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927803, 29.904362, 27.974253>,  <30.928782, 30.129427, 27.890919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927803, 29.904362, 27.974253>,  <30.926172, 29.529253, 28.113142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927803, 29.904362, 27.974253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674857, 0.253653, 0.692985,
		0.737938, -0.237150, -0.631829,
		0.004076, 0.937774, -0.347222,
		30.929026, 30.185694, 27.870087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628235, 29.694654, 28.197285>,  <30.926172, 29.529253, 28.113142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628235, 29.694654, 28.197285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451508, 30.046843, 28.128506>,  <31.345470, 30.258156, 28.087238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451508, 30.046843, 28.128506>,  <31.628235, 29.694654, 28.197285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451508, 30.046843, 28.128506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690518, 0.456129, 0.561365,
		0.572696, 0.129288, -0.809508,
		-0.441818, 0.880472, -0.171948,
		31.318962, 30.310984, 28.076921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134727, 30.147980, 27.843435>,  <31.628235, 29.694654, 28.197285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134727, 30.147980, 27.843435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.854345, 30.358826, 28.035608>,  <31.686117, 30.485332, 28.150911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.854345, 30.358826, 28.035608>,  <32.134727, 30.147980, 27.843435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854345, 30.358826, 28.035608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675409, 0.274220, 0.684562,
		0.229100, 0.804334, -0.548234,
		-0.700953, 0.527115, 0.480431,
		31.644060, 30.516960, 28.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409351, 30.739277, 28.023237>,  <32.134727, 30.147980, 27.843435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409351, 30.739277, 28.023237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.109680, 30.741447, 28.288176>,  <31.929878, 30.742750, 28.447138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.109680, 30.741447, 28.288176>,  <32.409351, 30.739277, 28.023237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109680, 30.741447, 28.288176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608186, 0.401738, 0.684628,
		-0.262375, 0.915739, -0.304274,
		-0.749179, 0.005426, 0.662346,
		31.884926, 30.743074, 28.486879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455753, 31.444315, 28.278366>,  <32.409351, 30.739277, 28.023237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455753, 31.444315, 28.278366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250149, 31.212561, 28.531382>,  <32.126785, 31.073509, 28.683191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250149, 31.212561, 28.531382>,  <32.455753, 31.444315, 28.278366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250149, 31.212561, 28.531382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560600, 0.331231, 0.758955,
		-0.649243, 0.744715, 0.154545,
		-0.514015, -0.579384, 0.632537,
		32.095943, 31.038746, 28.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161201, 31.851578, 28.736580>,  <32.455753, 31.444315, 28.278366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161201, 31.851578, 28.736580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115028, 31.504383, 28.929775>,  <32.087326, 31.296066, 29.045692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115028, 31.504383, 28.929775>,  <32.161201, 31.851578, 28.736580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115028, 31.504383, 28.929775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471851, 0.379961, 0.795604,
		-0.874089, 0.319735, 0.365701,
		-0.115430, -0.867986, 0.482987,
		32.080399, 31.243988, 29.074671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821552, 31.983545, 29.342495>,  <32.161201, 31.851578, 28.736580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821552, 31.983545, 29.342495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.021107, 31.642256, 29.403318>,  <32.140839, 31.437483, 29.439812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.021107, 31.642256, 29.403318>,  <31.821552, 31.983545, 29.342495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021107, 31.642256, 29.403318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320603, 0.344695, 0.882269,
		-0.805186, -0.391403, 0.445510,
		0.498888, -0.853223, 0.152059,
		32.170773, 31.386290, 29.448936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746885, 31.898390, 30.057806>,  <31.821552, 31.983545, 29.342495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746885, 31.898390, 30.057806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031597, 31.641670, 29.943638>,  <32.202423, 31.487638, 29.875137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031597, 31.641670, 29.943638>,  <31.746885, 31.898390, 30.057806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031597, 31.641670, 29.943638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507996, 0.189735, 0.840203,
		-0.485087, -0.743031, 0.461081,
		0.711780, -0.641799, -0.285419,
		32.245132, 31.449131, 29.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732849, 31.332994, 30.548349>,  <31.746885, 31.898390, 30.057806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732849, 31.332994, 30.548349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099228, 31.283440, 30.395670>,  <32.319054, 31.253706, 30.304062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099228, 31.283440, 30.395670>,  <31.732849, 31.332994, 30.548349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099228, 31.283440, 30.395670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391030, 0.061718, 0.918306,
		-0.090209, -0.990375, 0.104974,
		0.915946, -0.123887, -0.381699,
		32.374012, 31.246273, 30.281160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005222, 30.755501, 30.855095>,  <31.732849, 31.332994, 30.548349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005222, 30.755501, 30.855095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.310822, 30.987881, 30.742811>,  <32.494183, 31.127308, 30.675440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.310822, 30.987881, 30.742811>,  <32.005222, 30.755501, 30.855095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310822, 30.987881, 30.742811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334506, 0.015391, 0.942268,
		0.551731, -0.813794, -0.182572,
		0.764002, 0.580950, -0.280711,
		32.540024, 31.162165, 30.658598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589912, 30.607635, 31.308903>,  <32.005222, 30.755501, 30.855095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589912, 30.607635, 31.308903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677444, 30.962158, 31.145651>,  <32.729961, 31.174871, 31.047699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677444, 30.962158, 31.145651>,  <32.589912, 30.607635, 31.308903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677444, 30.962158, 31.145651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380090, 0.307805, 0.872231,
		0.898691, -0.345995, -0.269521,
		0.218828, 0.886309, -0.408131,
		32.743092, 31.228050, 31.023211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259991, 30.736822, 31.604868>,  <32.589912, 30.607635, 31.308903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259991, 30.736822, 31.604868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123055, 31.088774, 31.473043>,  <33.040894, 31.299946, 31.393950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123055, 31.088774, 31.473043>,  <33.259991, 30.736822, 31.604868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123055, 31.088774, 31.473043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248046, 0.422948, 0.871544,
		0.906241, 0.216622, -0.363045,
		-0.342344, 0.879881, -0.329561,
		33.020351, 31.352737, 31.374176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737030, 31.229914, 31.845005>,  <33.259991, 30.736822, 31.604868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737030, 31.229914, 31.845005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420097, 31.453983, 31.748325>,  <33.229939, 31.588425, 31.690317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420097, 31.453983, 31.748325>,  <33.737030, 31.229914, 31.845005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420097, 31.453983, 31.748325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110531, 0.521417, 0.846113,
		0.599996, 0.643686, -0.475051,
		-0.792331, 0.560172, -0.241701,
		33.182400, 31.622034, 31.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342754, 31.348665, 31.443880>,  <33.737030, 31.229914, 31.845005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342754, 31.348665, 31.443880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737366, 31.307409, 31.393089>,  <34.974133, 31.282656, 31.362614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737366, 31.307409, 31.393089>,  <34.342754, 31.348665, 31.443880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737366, 31.307409, 31.393089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163375, -0.581495, -0.796977,
		0.008361, 0.806986, -0.590511,
		0.986529, -0.103138, -0.126979,
		35.033325, 31.276468, 31.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531822, 31.512402, 30.759783>,  <34.342754, 31.348665, 31.443880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531822, 31.512402, 30.759783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789314, 31.241774, 30.902817>,  <34.943810, 31.079397, 30.988638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789314, 31.241774, 30.902817>,  <34.531822, 31.512402, 30.759783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789314, 31.241774, 30.902817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176793, -0.586117, -0.790703,
		0.744554, 0.445778, -0.496912,
		0.643727, -0.676572, 0.357585,
		34.982433, 31.038801, 31.010092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079990, 31.454859, 30.190449>,  <34.531822, 31.512402, 30.759783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079990, 31.454859, 30.190449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092789, 31.123842, 30.414644>,  <35.100468, 30.925232, 30.549162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092789, 31.123842, 30.414644>,  <35.079990, 31.454859, 30.190449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092789, 31.123842, 30.414644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315530, -0.540461, -0.779963,
		0.948376, -0.151899, -0.278406,
		0.031992, -0.827543, 0.560489,
		35.102386, 30.875580, 30.582790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667480, 30.964800, 30.010094>,  <35.079990, 31.454859, 30.190449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667480, 30.964800, 30.010094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458530, 30.684723, 30.204765>,  <35.333160, 30.516676, 30.321568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458530, 30.684723, 30.204765>,  <35.667480, 30.964800, 30.010094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458530, 30.684723, 30.204765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075544, -0.530494, -0.844316,
		0.849365, -0.477812, 0.224219,
		-0.522371, -0.700195, 0.486678,
		35.301819, 30.474665, 30.350769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987766, 30.195057, 29.881247>,  <35.667480, 30.964800, 30.010094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987766, 30.195057, 29.881247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603245, 30.144274, 29.979048>,  <35.372532, 30.113804, 30.037729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603245, 30.144274, 29.979048>,  <35.987766, 30.195057, 29.881247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603245, 30.144274, 29.979048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126451, -0.585151, -0.801004,
		0.244766, -0.800924, 0.546452,
		-0.961301, -0.126959, 0.244503,
		35.314854, 30.106186, 30.052399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813877, 29.464771, 29.954748>,  <35.987766, 30.195057, 29.881247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813877, 29.464771, 29.954748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467789, 29.648554, 29.874449>,  <35.260136, 29.758823, 29.826269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467789, 29.648554, 29.874449>,  <35.813877, 29.464771, 29.954748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467789, 29.648554, 29.874449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162796, -0.636110, -0.754229,
		-0.474232, -0.619891, 0.625171,
		-0.865217, 0.459455, -0.200748,
		35.208225, 29.786390, 29.814224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305088, 28.986799, 29.862921>,  <35.813877, 29.464771, 29.954748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305088, 28.986799, 29.862921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146057, 29.295942, 29.665083>,  <35.050636, 29.481428, 29.546381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146057, 29.295942, 29.665083>,  <35.305088, 28.986799, 29.862921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146057, 29.295942, 29.665083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340447, -0.624802, -0.702651,
		-0.852073, -0.110975, 0.511524,
		-0.397578, 0.772856, -0.494596,
		35.026783, 29.527800, 29.516705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603966, 28.679649, 29.554842>,  <35.305088, 28.986799, 29.862921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603966, 28.679649, 29.554842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655689, 29.033628, 29.375889>,  <34.686722, 29.246016, 29.268517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655689, 29.033628, 29.375889>,  <34.603966, 28.679649, 29.554842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655689, 29.033628, 29.375889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359890, -0.378523, -0.852760,
		-0.923991, 0.271274, 0.269538,
		0.129305, 0.884947, -0.447381,
		34.694481, 29.299112, 29.241674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942093, 28.781845, 29.219166>,  <34.603966, 28.679649, 29.554842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942093, 28.781845, 29.219166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198681, 29.006332, 29.009956>,  <34.352634, 29.141024, 28.884430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198681, 29.006332, 29.009956>,  <33.942093, 28.781845, 29.219166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198681, 29.006332, 29.009956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345266, -0.397623, -0.850110,
		-0.685062, 0.725901, -0.061293,
		0.641468, 0.561216, -0.523026,
		34.391121, 29.174698, 28.853048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539463, 29.065798, 28.784868>,  <33.942093, 28.781845, 29.219166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539463, 29.065798, 28.784868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911091, 29.117859, 28.646364>,  <34.134068, 29.149096, 28.563263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911091, 29.117859, 28.646364>,  <33.539463, 29.065798, 28.784868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911091, 29.117859, 28.646364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297958, -0.291417, -0.909009,
		-0.219217, 0.947700, -0.231965,
		0.929066, 0.130155, -0.346259,
		34.189812, 29.156906, 28.542486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446110, 29.356180, 28.229050>,  <33.539463, 29.065798, 28.784868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446110, 29.356180, 28.229050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811737, 29.212046, 28.154613>,  <34.031113, 29.125565, 28.109951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811737, 29.212046, 28.154613>,  <33.446110, 29.356180, 28.229050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811737, 29.212046, 28.154613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269881, -0.197961, -0.942325,
		0.302715, 0.911575, -0.278199,
		0.914072, -0.360337, -0.186091,
		34.085960, 29.103945, 28.098785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713886, 29.750380, 27.718153>,  <33.446110, 29.356180, 28.229050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713886, 29.750380, 27.718153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.904594, 29.398834, 27.711306>,  <34.019020, 29.187908, 27.707197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.904594, 29.398834, 27.711306>,  <33.713886, 29.750380, 27.718153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904594, 29.398834, 27.711306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428783, -0.215518, -0.877324,
		0.767357, 0.425621, -0.479593,
		0.476769, -0.878862, -0.017120,
		34.047626, 29.135176, 27.706169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029469, 29.827620, 27.156908>,  <33.713886, 29.750380, 27.718153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029469, 29.827620, 27.156908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996353, 29.434402, 27.222353>,  <33.976482, 29.198471, 27.261620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996353, 29.434402, 27.222353>,  <34.029469, 29.827620, 27.156908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996353, 29.434402, 27.222353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267823, -0.136186, -0.953795,
		0.959904, -0.122786, -0.252006,
		-0.082793, -0.983045, 0.163610,
		33.971516, 29.139488, 27.271437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403057, 29.418097, 26.636772>,  <34.029469, 29.827620, 27.156908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403057, 29.418097, 26.636772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156395, 29.131376, 26.766966>,  <34.008400, 28.959345, 26.845081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156395, 29.131376, 26.766966>,  <34.403057, 29.418097, 26.636772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156395, 29.131376, 26.766966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143635, -0.304065, -0.941761,
		0.774022, -0.627489, 0.084545,
		-0.616652, -0.716799, 0.325482,
		33.971397, 28.916336, 26.864611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072739, 29.155563, 26.394001>,  <34.403057, 29.418097, 26.636772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072739, 29.155563, 26.394001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329964, 29.176722, 26.088408>,  <35.484299, 29.189417, 25.905050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329964, 29.176722, 26.088408>,  <35.072739, 29.155563, 26.394001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329964, 29.176722, 26.088408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752131, 0.144118, 0.643062,
		0.144118, -0.988146, 0.052894,
		-0.643062, -0.052894, 0.763986,
		35.522881, 29.192589, 25.859211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611599, 28.819637, 26.621983>,  <35.072739, 29.155563, 26.394001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611599, 28.819637, 26.621983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744267, 29.049891, 26.323013>,  <35.823868, 29.188042, 26.143631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744267, 29.049891, 26.323013>,  <35.611599, 28.819637, 26.621983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744267, 29.049891, 26.323013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788539, 0.265766, 0.554595,
		0.517882, -0.773316, -0.365761,
		0.331670, 0.575632, -0.747425,
		35.843769, 29.222580, 26.098785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321663, 28.683784, 26.656771>,  <35.611599, 28.819637, 26.621983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321663, 28.683784, 26.656771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279888, 29.022432, 26.448032>,  <36.254822, 29.225622, 26.322788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279888, 29.022432, 26.448032>,  <36.321663, 28.683784, 26.656771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279888, 29.022432, 26.448032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778900, 0.395893, 0.486399,
		0.618391, -0.355669, -0.700779,
		-0.104436, 0.846622, -0.521847,
		36.248558, 29.276419, 26.291477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945297, 28.913710, 26.544062>,  <36.321663, 28.683784, 26.656771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945297, 28.913710, 26.544062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751217, 29.262590, 26.519266>,  <36.634769, 29.471920, 26.504389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751217, 29.262590, 26.519266>,  <36.945297, 28.913710, 26.544062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751217, 29.262590, 26.519266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752059, 0.452428, 0.479286,
		0.446082, 0.185928, -0.875466,
		-0.485199, 0.872204, -0.061991,
		36.605656, 29.524252, 26.500669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440762, 29.377159, 26.432474>,  <36.945297, 28.913710, 26.544062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440762, 29.377159, 26.432474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129536, 29.573486, 26.589298>,  <36.942799, 29.691282, 26.683393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129536, 29.573486, 26.589298>,  <37.440762, 29.377159, 26.432474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129536, 29.573486, 26.589298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618612, 0.490135, 0.614074,
		0.109236, 0.720323, -0.684983,
		-0.778066, 0.490818, 0.392061,
		36.896114, 29.720732, 26.706917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791153, 29.937569, 26.620312>,  <37.440762, 29.377159, 26.432474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791153, 29.937569, 26.620312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428837, 29.976515, 26.785271>,  <37.211449, 29.999882, 26.884245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428837, 29.976515, 26.785271>,  <37.791153, 29.937569, 26.620312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428837, 29.976515, 26.785271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407968, 0.463401, 0.786652,
		-0.114513, 0.880783, -0.459464,
		-0.905787, 0.097365, 0.412396,
		37.157101, 30.005724, 26.908989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642712, 30.685757, 26.748137>,  <37.791153, 29.937569, 26.620312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642712, 30.685757, 26.748137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413609, 30.454039, 26.980125>,  <37.276146, 30.315008, 27.119318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413609, 30.454039, 26.980125>,  <37.642712, 30.685757, 26.748137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413609, 30.454039, 26.980125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392395, 0.427433, 0.814449,
		-0.719706, 0.694058, -0.017502,
		-0.572756, -0.579297, 0.579971,
		37.241783, 30.280249, 27.154118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234119, 31.132568, 27.207937>,  <37.642712, 30.685757, 26.748137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234119, 31.132568, 27.207937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251934, 30.777884, 27.392008>,  <37.262623, 30.565073, 27.502449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251934, 30.777884, 27.392008>,  <37.234119, 31.132568, 27.207937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251934, 30.777884, 27.392008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099848, 0.462276, 0.881097,
		-0.994006, 0.006708, 0.109124,
		0.044535, -0.886711, 0.460175,
		37.265293, 30.511869, 27.530060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000374, 31.242840, 27.844133>,  <37.234119, 31.132568, 27.207937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000374, 31.242840, 27.844133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159615, 30.884619, 27.923628>,  <37.255161, 30.669685, 27.971325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159615, 30.884619, 27.923628>,  <37.000374, 31.242840, 27.844133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159615, 30.884619, 27.923628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350805, 0.348803, 0.869064,
		-0.847613, -0.276261, 0.453025,
		0.398105, -0.895554, 0.198736,
		37.279045, 30.615953, 27.983250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882874, 31.233770, 28.619322>,  <37.000374, 31.242840, 27.844133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882874, 31.233770, 28.619322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165131, 30.964153, 28.531923>,  <37.334484, 30.802383, 28.479485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165131, 30.964153, 28.531923>,  <36.882874, 31.233770, 28.619322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165131, 30.964153, 28.531923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397763, 0.121625, 0.909391,
		-0.586393, -0.728612, 0.353932,
		0.705640, -0.674041, -0.218495,
		37.376823, 30.761940, 28.466375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955624, 30.769993, 29.211107>,  <36.882874, 31.233770, 28.619322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955624, 30.769993, 29.211107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280491, 30.772024, 28.977745>,  <37.475410, 30.773243, 28.837727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280491, 30.772024, 28.977745>,  <36.955624, 30.769993, 29.211107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280491, 30.772024, 28.977745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562800, 0.256735, 0.785712,
		0.153770, -0.966468, 0.205654,
		0.812164, 0.005076, -0.583407,
		37.524139, 30.773548, 28.802723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418980, 30.499287, 29.618713>,  <36.955624, 30.769993, 29.211107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418980, 30.499287, 29.618713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628975, 30.685160, 29.333488>,  <37.754971, 30.796684, 29.162354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628975, 30.685160, 29.333488>,  <37.418980, 30.499287, 29.618713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628975, 30.685160, 29.333488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645964, 0.327974, 0.689321,
		0.554182, -0.822498, -0.127986,
		0.524989, 0.464683, -0.713061,
		37.786472, 30.824564, 29.119570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120529, 30.337513, 29.767187>,  <37.418980, 30.499287, 29.618713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120529, 30.337513, 29.767187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138138, 30.666912, 29.540943>,  <38.148705, 30.864552, 29.405197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138138, 30.666912, 29.540943>,  <38.120529, 30.337513, 29.767187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138138, 30.666912, 29.540943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599117, 0.431293, 0.674571,
		0.799450, -0.368564, -0.474384,
		0.044024, 0.823497, -0.565610,
		38.151344, 30.913961, 29.371260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891754, 30.494595, 29.797497>,  <38.120529, 30.337513, 29.767187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891754, 30.494595, 29.797497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660305, 30.808815, 29.709768>,  <38.521435, 30.997349, 29.657131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660305, 30.808815, 29.709768>,  <38.891754, 30.494595, 29.797497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660305, 30.808815, 29.709768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502709, 0.555264, 0.662544,
		0.642246, 0.273107, -0.716193,
		-0.578622, 0.785553, -0.219323,
		38.486717, 31.044481, 29.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.249405, 32.618778, 22.967648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992523, 32.417397, 23.198858>,  <35.838394, 32.296566, 23.337584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992523, 32.417397, 23.198858>,  <36.249405, 32.618778, 22.967648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992523, 32.417397, 23.198858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026812, -0.768365, -0.639450,
		0.766068, -0.395157, 0.506943,
		-0.642200, -0.503454, 0.578025,
		35.799862, 32.266361, 23.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462120, 31.891850, 23.049398>,  <36.249405, 32.618778, 22.967648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462120, 31.891850, 23.049398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.069431, 31.900858, 23.125000>,  <35.833820, 31.906263, 23.170361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.069431, 31.900858, 23.125000>,  <36.462120, 31.891850, 23.049398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069431, 31.900858, 23.125000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129201, -0.808015, -0.574821,
		0.139774, -0.588731, 0.796152,
		-0.981718, 0.022519, 0.189004,
		35.774918, 31.907614, 23.181702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164326, 31.194809, 23.246281>,  <36.462120, 31.891850, 23.049398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164326, 31.194809, 23.246281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847977, 31.401497, 23.115124>,  <35.658165, 31.525511, 23.036430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847977, 31.401497, 23.115124>,  <36.164326, 31.194809, 23.246281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847977, 31.401497, 23.115124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262539, -0.770460, -0.580917,
		-0.552799, -0.373350, 0.744998,
		-0.790877, 0.516722, -0.327891,
		35.610714, 31.556513, 23.016756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519848, 30.724159, 23.228222>,  <36.164326, 31.194809, 23.246281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519848, 30.724159, 23.228222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410835, 31.021900, 22.984365>,  <35.345428, 31.200544, 22.838051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410835, 31.021900, 22.984365>,  <35.519848, 30.724159, 23.228222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410835, 31.021900, 22.984365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420605, -0.662045, -0.620312,
		-0.865343, 0.087364, 0.493507,
		-0.272531, 0.744355, -0.609642,
		35.329075, 31.245207, 22.801474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833412, 30.609898, 23.019571>,  <35.519848, 30.724159, 23.228222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833412, 30.609898, 23.019571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978561, 30.842768, 22.728533>,  <35.065651, 30.982489, 22.553909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978561, 30.842768, 22.728533>,  <34.833412, 30.609898, 23.019571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978561, 30.842768, 22.728533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469065, -0.560563, -0.682456,
		-0.805173, 0.588933, 0.069667,
		0.362869, 0.582174, -0.727599,
		35.087421, 31.017420, 22.510254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273083, 30.679884, 22.592064>,  <34.833412, 30.609898, 23.019571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273083, 30.679884, 22.592064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550819, 30.820803, 22.341059>,  <34.717461, 30.905354, 22.190456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550819, 30.820803, 22.341059>,  <34.273083, 30.679884, 22.592064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550819, 30.820803, 22.341059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431325, -0.494272, -0.754754,
		-0.576060, 0.794721, -0.191240,
		0.694344, 0.352297, -0.627514,
		34.759121, 30.926491, 22.152805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930847, 30.780872, 21.864603>,  <34.273083, 30.679884, 22.592064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930847, 30.780872, 21.864603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.326111, 30.771021, 21.804022>,  <34.563271, 30.765110, 21.767673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.326111, 30.771021, 21.804022>,  <33.930847, 30.780872, 21.864603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326111, 30.771021, 21.804022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145601, -0.461985, -0.874854,
		-0.048421, 0.886545, -0.460101,
		0.988158, -0.024629, -0.151452,
		34.622559, 30.763632, 21.758587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851845, 30.951139, 21.246822>,  <33.930847, 30.780872, 21.864603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851845, 30.951139, 21.246822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208923, 30.778904, 21.300014>,  <34.423172, 30.675562, 21.331930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208923, 30.778904, 21.300014>,  <33.851845, 30.951139, 21.246822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208923, 30.778904, 21.300014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076068, -0.434818, -0.897300,
		0.444191, 0.790901, -0.420915,
		0.892697, -0.430590, 0.132979,
		34.476734, 30.649727, 21.339909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313782, 31.156698, 20.713835>,  <33.851845, 30.951139, 21.246822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313782, 31.156698, 20.713835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457497, 30.809755, 20.851591>,  <34.543728, 30.601589, 20.934244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457497, 30.809755, 20.851591>,  <34.313782, 31.156698, 20.713835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457497, 30.809755, 20.851591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128343, -0.411450, -0.902350,
		0.924358, 0.280005, -0.259149,
		0.359290, -0.867355, 0.344391,
		34.565285, 30.549549, 20.954908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856964, 30.952114, 20.316679>,  <34.313782, 31.156698, 20.713835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856964, 30.952114, 20.316679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773815, 30.589794, 20.464365>,  <34.723927, 30.372402, 20.552977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773815, 30.589794, 20.464365>,  <34.856964, 30.952114, 20.316679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773815, 30.589794, 20.464365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066294, -0.363544, -0.929215,
		0.975907, -0.217633, 0.015521,
		-0.207870, -0.905799, 0.369213,
		34.711452, 30.318054, 20.575129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255600, 30.426867, 19.962093>,  <34.856964, 30.952114, 20.316679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255600, 30.426867, 19.962093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931114, 30.237898, 20.099928>,  <34.736423, 30.124516, 20.182629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931114, 30.237898, 20.099928>,  <35.255600, 30.426867, 19.962093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931114, 30.237898, 20.099928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118461, -0.444303, -0.888010,
		0.572618, -0.761190, 0.304463,
		-0.811219, -0.472423, 0.344587,
		34.687748, 30.096170, 20.203304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326469, 29.726795, 19.915739>,  <35.255600, 30.426867, 19.962093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326469, 29.726795, 19.915739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938732, 29.814339, 19.871050>,  <34.706089, 29.866865, 19.844236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938732, 29.814339, 19.871050>,  <35.326469, 29.726795, 19.915739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938732, 29.814339, 19.871050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065782, -0.206953, -0.976137,
		-0.236766, -0.953555, 0.186210,
		-0.969337, 0.218867, -0.111726,
		34.647930, 29.879997, 19.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153389, 29.154621, 19.438034>,  <35.326469, 29.726795, 19.915739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153389, 29.154621, 19.438034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892620, 29.455620, 19.400621>,  <34.736160, 29.636219, 19.378174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892620, 29.455620, 19.400621>,  <35.153389, 29.154621, 19.438034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892620, 29.455620, 19.400621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053894, -0.077056, -0.995569,
		-0.756371, -0.654071, 0.009679,
		-0.651919, 0.752498, -0.093533,
		34.697044, 29.681370, 19.372561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184830, 28.734858, 20.122875>,  <35.153389, 29.154621, 19.438034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184830, 28.734858, 20.122875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531639, 28.552929, 20.204271>,  <35.739723, 28.443771, 20.253109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531639, 28.552929, 20.204271>,  <35.184830, 28.734858, 20.122875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531639, 28.552929, 20.204271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449080, 0.536362, -0.714593,
		0.215868, 0.710952, 0.669289,
		0.867023, -0.454822, 0.203491,
		35.791744, 28.416483, 20.265318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754875, 28.331793, 20.662472>,  <35.184830, 28.734858, 20.122875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754875, 28.331793, 20.662472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550648, 27.989851, 20.699432>,  <34.428112, 27.784685, 20.721609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550648, 27.989851, 20.699432>,  <34.754875, 28.331793, 20.662472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550648, 27.989851, 20.699432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186192, -0.005004, 0.982501,
		-0.839434, 0.518841, 0.161723,
		-0.510571, -0.854856, 0.092403,
		34.397476, 27.733395, 20.727154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262032, 28.506935, 21.203060>,  <34.754875, 28.331793, 20.662472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262032, 28.506935, 21.203060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.308388, 28.110411, 21.178164>,  <34.336201, 27.872496, 21.163225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.308388, 28.110411, 21.178164>,  <34.262032, 28.506935, 21.203060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308388, 28.110411, 21.178164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074523, -0.071165, 0.994677,
		-0.990462, -0.110635, -0.082123,
		0.115890, -0.991310, -0.062242,
		34.343155, 27.813017, 21.159491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822037, 28.214392, 21.770321>,  <34.262032, 28.506935, 21.203060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822037, 28.214392, 21.770321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084663, 27.921497, 21.697929>,  <34.242237, 27.745760, 21.654495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084663, 27.921497, 21.697929>,  <33.822037, 28.214392, 21.770321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084663, 27.921497, 21.697929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201869, -0.060599, 0.977536,
		-0.726756, -0.678348, 0.108029,
		0.656563, -0.732238, -0.180979,
		34.281631, 27.701826, 21.643637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625835, 27.740311, 22.281309>,  <33.822037, 28.214392, 21.770321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625835, 27.740311, 22.281309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000519, 27.661993, 22.165207>,  <34.225327, 27.615002, 22.095545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000519, 27.661993, 22.165207>,  <33.625835, 27.740311, 22.281309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000519, 27.661993, 22.165207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305385, 0.051419, 0.950840,
		-0.171246, -0.979295, 0.107957,
		0.936704, -0.195796, -0.290257,
		34.281528, 27.603254, 22.078131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865562, 27.116936, 22.652746>,  <33.625835, 27.740311, 22.281309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865562, 27.116936, 22.652746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221249, 27.245081, 22.522114>,  <34.434662, 27.321968, 22.443733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221249, 27.245081, 22.522114>,  <33.865562, 27.116936, 22.652746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221249, 27.245081, 22.522114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229539, 0.305072, 0.924253,
		0.395729, -0.896826, 0.197740,
		0.889219, 0.320365, -0.326582,
		34.488014, 27.341190, 22.424139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448193, 26.721991, 22.949141>,  <33.865562, 27.116936, 22.652746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448193, 26.721991, 22.949141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557304, 27.095747, 22.857481>,  <34.622772, 27.320000, 22.802486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557304, 27.095747, 22.857481>,  <34.448193, 26.721991, 22.949141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557304, 27.095747, 22.857481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152742, 0.193097, 0.969218,
		0.949874, -0.299383, -0.090048,
		0.272779, 0.934389, -0.229147,
		34.639137, 27.376064, 22.788736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010380, 26.767057, 23.415255>,  <34.448193, 26.721991, 22.949141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010380, 26.767057, 23.415255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948402, 27.144234, 23.297371>,  <34.911217, 27.370541, 23.226641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948402, 27.144234, 23.297371>,  <35.010380, 26.767057, 23.415255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948402, 27.144234, 23.297371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200501, 0.322115, 0.925225,
		0.967364, 0.084264, -0.238969,
		-0.154939, 0.942943, -0.294708,
		34.901920, 27.427116, 23.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479626, 27.172064, 23.762089>,  <35.010380, 26.767057, 23.415255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479626, 27.172064, 23.762089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232494, 27.454060, 23.622787>,  <35.084217, 27.623257, 23.539206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232494, 27.454060, 23.622787>,  <35.479626, 27.172064, 23.762089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232494, 27.454060, 23.622787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178852, 0.557280, 0.810833,
		0.765704, 0.438667, -0.470391,
		-0.617826, 0.704989, -0.348255,
		35.047146, 27.665556, 23.518311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874626, 27.872265, 23.761543>,  <35.479626, 27.172064, 23.762089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874626, 27.872265, 23.761543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.478241, 27.922266, 23.781012>,  <35.240410, 27.952267, 23.792692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.478241, 27.922266, 23.781012>,  <35.874626, 27.872265, 23.761543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478241, 27.922266, 23.781012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118478, 0.645422, 0.754582,
		0.062912, 0.753528, -0.654399,
		-0.990962, 0.125004, 0.048672,
		35.180954, 27.959766, 23.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842892, 28.584053, 23.868742>,  <35.874626, 27.872265, 23.761543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842892, 28.584053, 23.868742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484688, 28.434036, 23.964586>,  <35.269768, 28.344027, 24.022093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484688, 28.434036, 23.964586>,  <35.842892, 28.584053, 23.868742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484688, 28.434036, 23.964586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054591, 0.626892, 0.777191,
		-0.441689, 0.682899, -0.581859,
		-0.895506, -0.375041, 0.239612,
		35.216038, 28.321524, 24.036470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358063, 29.213848, 24.006001>,  <35.842892, 28.584053, 23.868742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358063, 29.213848, 24.006001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231026, 28.884604, 24.194307>,  <35.154804, 28.687057, 24.307291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231026, 28.884604, 24.194307>,  <35.358063, 29.213848, 24.006001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231026, 28.884604, 24.194307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223954, 0.547537, 0.806255,
		-0.921401, 0.150629, -0.358232,
		-0.317591, -0.823112, 0.470768,
		35.135750, 28.637671, 24.335537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682278, 29.387114, 24.378700>,  <35.358063, 29.213848, 24.006001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682278, 29.387114, 24.378700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852165, 29.065550, 24.545238>,  <34.954098, 28.872612, 24.645161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852165, 29.065550, 24.545238>,  <34.682278, 29.387114, 24.378700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852165, 29.065550, 24.545238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014337, 0.453856, 0.890960,
		-0.905211, -0.384377, 0.181236,
		0.424720, -0.803909, 0.416346,
		34.979580, 28.824377, 24.670143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351749, 29.395838, 25.042803>,  <34.682278, 29.387114, 24.378700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351749, 29.395838, 25.042803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676758, 29.165052, 25.076086>,  <34.871761, 29.026581, 25.096056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676758, 29.165052, 25.076086>,  <34.351749, 29.395838, 25.042803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676758, 29.165052, 25.076086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241704, 0.463340, 0.852582,
		-0.530460, -0.672629, 0.515928,
		0.812522, -0.576963, 0.083207,
		34.920513, 28.991964, 25.101048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486103, 29.301033, 25.756556>,  <34.351749, 29.395838, 25.042803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486103, 29.301033, 25.756556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839424, 29.202576, 25.596962>,  <35.051418, 29.143501, 25.501205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839424, 29.202576, 25.596962>,  <34.486103, 29.301033, 25.756556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839424, 29.202576, 25.596962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464134, 0.339385, 0.818167,
		-0.065977, -0.907872, 0.414023,
		0.883304, -0.246142, -0.398983,
		35.104416, 29.128733, 25.477266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495861, 28.719303, 26.160315>,  <34.486103, 29.301033, 25.756556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495861, 28.719303, 26.160315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145439, 28.650675, 26.340578>,  <33.935184, 28.609497, 26.448736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145439, 28.650675, 26.340578>,  <34.495861, 28.719303, 26.160315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145439, 28.650675, 26.340578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366692, -0.369893, -0.853648,
		0.313157, -0.913095, 0.261133,
		-0.876053, -0.171571, 0.450659,
		33.882622, 28.599203, 26.475777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258320, 28.063730, 25.842670>,  <34.495861, 28.719303, 26.160315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258320, 28.063730, 25.842670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944454, 28.238426, 26.018652>,  <33.756134, 28.343245, 26.124241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944454, 28.238426, 26.018652>,  <34.258320, 28.063730, 25.842670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944454, 28.238426, 26.018652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606127, -0.391614, -0.692278,
		-0.130053, -0.809874, 0.572005,
		-0.784663, 0.436741, 0.439956,
		33.709057, 28.369450, 26.150639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666904, 27.559841, 25.815849>,  <34.258320, 28.063730, 25.842670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666904, 27.559841, 25.815849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504662, 27.925018, 25.833834>,  <33.407314, 28.144125, 25.844625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504662, 27.925018, 25.833834>,  <33.666904, 27.559841, 25.815849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504662, 27.925018, 25.833834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724635, -0.291183, -0.624594,
		-0.557125, -0.285921, 0.779655,
		-0.405606, 0.912942, 0.044963,
		33.382980, 28.198900, 25.847322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993717, 27.456430, 25.735987>,  <33.666904, 27.559841, 25.815849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993717, 27.456430, 25.735987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981014, 27.850607, 25.669178>,  <32.973392, 28.087112, 25.629093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981014, 27.850607, 25.669178>,  <32.993717, 27.456430, 25.735987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981014, 27.850607, 25.669178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752985, -0.133475, -0.644359,
		-0.657272, 0.105304, 0.746261,
		-0.031753, 0.985442, -0.167021,
		32.971489, 28.146240, 25.619072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342190, 27.652525, 25.784927>,  <32.993717, 27.456430, 25.735987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342190, 27.652525, 25.784927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503620, 27.966393, 25.596706>,  <32.600479, 28.154713, 25.483774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503620, 27.966393, 25.596706>,  <32.342190, 27.652525, 25.784927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503620, 27.966393, 25.596706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684360, -0.082466, -0.724466,
		-0.607272, 0.614403, 0.503716,
		0.403575, 0.784670, -0.470553,
		32.624691, 28.201794, 25.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758850, 28.046381, 25.536598>,  <32.342190, 27.652525, 25.784927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758850, 28.046381, 25.536598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070156, 28.144489, 25.305376>,  <32.256939, 28.203354, 25.166643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070156, 28.144489, 25.305376>,  <31.758850, 28.046381, 25.536598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070156, 28.144489, 25.305376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593792, -0.011966, -0.804530,
		-0.204245, 0.969380, 0.136327,
		0.778264, 0.245271, -0.578055,
		32.303635, 28.218071, 25.131960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391432, 28.448561, 24.923187>,  <31.758850, 28.046381, 25.536598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391432, 28.448561, 24.923187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753342, 28.430510, 24.753788>,  <31.970488, 28.419678, 24.652149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753342, 28.430510, 24.753788>,  <31.391432, 28.448561, 24.923187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753342, 28.430510, 24.753788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421165, -0.242597, -0.873938,
		-0.063298, 0.969077, -0.238502,
		0.904772, -0.045130, -0.423497,
		32.024773, 28.416971, 24.626740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053585, 29.094507, 24.870245>,  <31.391432, 28.448561, 24.923187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053585, 29.094507, 24.870245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667707, 29.174305, 24.939030>,  <30.436182, 29.222183, 24.980301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667707, 29.174305, 24.939030>,  <31.053585, 29.094507, 24.870245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667707, 29.174305, 24.939030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258327, 0.589371, 0.765447,
		0.051353, 0.782843, -0.620097,
		-0.964692, 0.199496, 0.171963,
		30.378300, 29.234154, 24.990618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024494, 29.761068, 25.145472>,  <31.053585, 29.094507, 24.870245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024494, 29.761068, 25.145472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663918, 29.604462, 25.219355>,  <30.447571, 29.510498, 25.263685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663918, 29.604462, 25.219355>,  <31.024494, 29.761068, 25.145472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663918, 29.604462, 25.219355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093341, 0.592424, 0.800201,
		-0.422719, 0.704093, -0.570580,
		-0.901441, -0.391519, 0.184708,
		30.393486, 29.487005, 25.274767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534643, 30.288788, 25.282301>,  <31.024494, 29.761068, 25.145472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534643, 30.288788, 25.282301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349422, 29.970564, 25.438593>,  <30.238291, 29.779631, 25.532368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349422, 29.970564, 25.438593>,  <30.534643, 30.288788, 25.282301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349422, 29.970564, 25.438593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109807, 0.488936, 0.865381,
		-0.879504, 0.357810, -0.313760,
		-0.463051, -0.795558, 0.390731,
		30.210506, 29.731895, 25.555813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914505, 30.568449, 25.638176>,  <30.534643, 30.288788, 25.282301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914505, 30.568449, 25.638176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.029766, 30.218065, 25.792923>,  <30.098923, 30.007835, 25.885771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.029766, 30.218065, 25.792923>,  <29.914505, 30.568449, 25.638176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029766, 30.218065, 25.792923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121054, 0.434082, 0.892703,
		-0.949902, -0.210403, 0.231120,
		0.288152, -0.875959, 0.386866,
		30.116211, 29.955278, 25.908983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575333, 30.614145, 26.323925>,  <29.914505, 30.568449, 25.638176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575333, 30.614145, 26.323925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860741, 30.334457, 26.341728>,  <30.031986, 30.166645, 26.352409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860741, 30.334457, 26.341728>,  <29.575333, 30.614145, 26.323925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860741, 30.334457, 26.341728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277931, 0.340783, 0.898121,
		-0.643151, -0.628458, 0.437491,
		0.713520, -0.699219, 0.044507,
		30.074797, 30.124691, 26.355080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443289, 30.318501, 26.948402>,  <29.575333, 30.614145, 26.323925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443289, 30.318501, 26.948402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.819000, 30.232052, 26.841785>,  <30.044428, 30.180183, 26.777815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.819000, 30.232052, 26.841785>,  <29.443289, 30.318501, 26.948402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819000, 30.232052, 26.841785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318102, 0.257058, 0.912542,
		-0.128704, -0.941920, 0.310198,
		0.939280, -0.216123, -0.266542,
		30.100784, 30.167215, 26.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723543, 29.987658, 27.500887>,  <29.443289, 30.318501, 26.948402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723543, 29.987658, 27.500887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.066525, 30.103649, 27.330858>,  <30.272314, 30.173244, 27.228842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.066525, 30.103649, 27.330858>,  <29.723543, 29.987658, 27.500887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066525, 30.103649, 27.330858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395289, 0.157652, 0.904927,
		0.329423, -0.943959, 0.020554,
		0.857454, 0.289979, -0.425071,
		30.323761, 30.190643, 27.203337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.183548, 31.069105, 20.169981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566160, 30.955465, 20.196335>,  <31.795727, 30.887281, 20.212147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566160, 30.955465, 20.196335>,  <31.183548, 31.069105, 20.169981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566160, 30.955465, 20.196335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092223, 0.508969, 0.855830,
		-0.276674, -0.812550, 0.513044,
		0.956529, -0.284101, 0.065883,
		31.853119, 30.870235, 20.216099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187025, 30.624681, 20.812878>,  <31.183548, 31.069105, 20.169981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187025, 30.624681, 20.812878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.534273, 30.795261, 20.711281>,  <31.742622, 30.897610, 20.650322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.534273, 30.795261, 20.711281>,  <31.187025, 30.624681, 20.812878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534273, 30.795261, 20.711281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118518, 0.318818, 0.940377,
		0.482000, -0.846461, 0.226229,
		0.868118, 0.426450, -0.253991,
		31.794708, 30.923197, 20.635084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645634, 30.640688, 21.432505>,  <31.187025, 30.624681, 20.812878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645634, 30.640688, 21.432505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.826586, 30.920515, 21.211252>,  <31.935158, 31.088411, 21.078501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.826586, 30.920515, 21.211252>,  <31.645634, 30.640688, 21.432505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826586, 30.920515, 21.211252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263184, 0.487882, 0.832289,
		0.852107, -0.522087, 0.036593,
		0.452380, 0.699569, -0.553132,
		31.962299, 31.130386, 21.045313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200649, 30.801941, 21.811699>,  <31.645634, 30.640688, 21.432505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200649, 30.801941, 21.811699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199379, 31.119169, 21.568050>,  <32.198616, 31.309505, 21.421862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199379, 31.119169, 21.568050>,  <32.200649, 30.801941, 21.811699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199379, 31.119169, 21.568050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226987, 0.593798, 0.771933,
		0.973893, -0.135808, -0.181905,
		-0.003180, 0.793070, -0.609122,
		32.198425, 31.357090, 21.385313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737514, 31.294207, 22.126947>,  <32.200649, 30.801941, 21.811699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737514, 31.294207, 22.126947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517696, 31.518999, 21.879663>,  <32.385807, 31.653873, 21.731293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517696, 31.518999, 21.879663>,  <32.737514, 31.294207, 22.126947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517696, 31.518999, 21.879663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102464, 0.779707, 0.617704,
		0.829159, 0.276109, -0.486064,
		-0.549541, 0.561979, -0.618210,
		32.352833, 31.687593, 21.694201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186237, 31.837992, 21.943256>,  <32.737514, 31.294207, 22.126947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186237, 31.837992, 21.943256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802387, 31.937548, 21.890831>,  <32.572079, 31.997282, 21.859375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802387, 31.937548, 21.890831>,  <33.186237, 31.837992, 21.943256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802387, 31.937548, 21.890831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141933, 0.830709, 0.538310,
		0.242857, 0.497972, -0.832493,
		-0.959623, 0.248891, -0.131064,
		32.514500, 32.012215, 21.851511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243999, 32.561966, 21.842237>,  <33.186237, 31.837992, 21.943256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243999, 32.561966, 21.842237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.869949, 32.470867, 21.950809>,  <32.645519, 32.416206, 22.015953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.869949, 32.470867, 21.950809>,  <33.243999, 32.561966, 21.842237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869949, 32.470867, 21.950809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023237, 0.724987, 0.688370,
		-0.353560, 0.650018, -0.672660,
		-0.935123, -0.227750, 0.271431,
		32.589413, 32.402542, 22.032238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952969, 33.213989, 22.003542>,  <33.243999, 32.561966, 21.842237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952969, 33.213989, 22.003542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.716793, 32.948185, 22.186758>,  <32.575089, 32.788704, 22.296688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.716793, 32.948185, 22.186758>,  <32.952969, 33.213989, 22.003542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716793, 32.948185, 22.186758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067742, 0.606332, 0.792321,
		-0.804232, 0.436792, -0.403019,
		-0.590443, -0.664511, 0.458042,
		32.539661, 32.748833, 22.324171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408184, 33.540874, 22.255297>,  <32.952969, 33.213989, 22.003542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408184, 33.540874, 22.255297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.370346, 33.213947, 22.482645>,  <32.347645, 33.017792, 22.619055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.370346, 33.213947, 22.482645>,  <32.408184, 33.540874, 22.255297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370346, 33.213947, 22.482645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213130, 0.574320, 0.790400,
		-0.972434, -0.046370, -0.228522,
		-0.094594, -0.817316, 0.568371,
		32.341969, 32.968754, 22.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846886, 33.721870, 22.501389>,  <32.408184, 33.540874, 22.255297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846886, 33.721870, 22.501389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994896, 33.434563, 22.737072>,  <32.083702, 33.262177, 22.878483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994896, 33.434563, 22.737072>,  <31.846886, 33.721870, 22.501389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994896, 33.434563, 22.737072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186494, 0.563886, 0.804520,
		-0.910111, -0.407576, 0.074699,
		0.370025, -0.718272, 0.589209,
		32.105904, 33.219082, 22.913836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413383, 33.708744, 23.057438>,  <31.846886, 33.721870, 22.501389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413383, 33.708744, 23.057438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746462, 33.531372, 23.190092>,  <31.946310, 33.424950, 23.269684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746462, 33.531372, 23.190092>,  <31.413383, 33.708744, 23.057438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746462, 33.531372, 23.190092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008492, 0.609071, 0.793071,
		-0.553662, -0.657572, 0.510938,
		0.832698, -0.443432, 0.331635,
		31.996271, 33.398342, 23.289583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357418, 33.626118, 23.812853>,  <31.413383, 33.708744, 23.057438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357418, 33.626118, 23.812853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.751459, 33.630512, 23.744211>,  <31.987885, 33.633148, 23.703026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.751459, 33.630512, 23.744211>,  <31.357418, 33.626118, 23.812853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751459, 33.630512, 23.744211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109422, 0.729807, 0.674840,
		0.132650, -0.683565, 0.717734,
		0.985104, 0.010981, -0.171606,
		32.046989, 33.633808, 23.692730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087311, 33.237991, 24.404179>,  <31.357418, 33.626118, 23.812853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087311, 33.237991, 24.404179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697889, 33.191673, 24.482950>,  <30.464235, 33.163883, 24.530214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697889, 33.191673, 24.482950>,  <31.087311, 33.237991, 24.404179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697889, 33.191673, 24.482950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081481, -0.629334, -0.772852,
		0.213426, -0.768460, 0.603256,
		-0.973555, -0.115793, 0.196931,
		30.405823, 33.156937, 24.542030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861776, 32.523548, 24.431679>,  <31.087311, 33.237991, 24.404179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861776, 32.523548, 24.431679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528008, 32.724129, 24.340212>,  <30.327745, 32.844475, 24.285332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528008, 32.724129, 24.340212>,  <30.861776, 32.523548, 24.431679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528008, 32.724129, 24.340212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102535, -0.548913, -0.829567,
		-0.541477, -0.668778, 0.509449,
		-0.834440, 0.501428, -0.228650,
		30.277681, 32.874565, 24.271612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437489, 32.080032, 24.183300>,  <30.861776, 32.523548, 24.431679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437489, 32.080032, 24.183300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282469, 32.415901, 24.031116>,  <30.189457, 32.617424, 23.939806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282469, 32.415901, 24.031116>,  <30.437489, 32.080032, 24.183300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282469, 32.415901, 24.031116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257278, -0.494833, -0.830029,
		-0.885220, -0.223793, 0.407802,
		-0.387548, 0.839677, -0.380459,
		30.166204, 32.667805, 23.916979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867317, 31.844601, 23.891527>,  <30.437489, 32.080032, 24.183300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867317, 31.844601, 23.891527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902655, 32.205254, 23.722174>,  <29.923857, 32.421646, 23.620562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902655, 32.205254, 23.722174>,  <29.867317, 31.844601, 23.891527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902655, 32.205254, 23.722174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453448, -0.342049, -0.823036,
		-0.886894, 0.264695, 0.378625,
		0.088345, 0.901632, -0.423386,
		29.929157, 32.475742, 23.595158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173317, 31.988590, 23.640293>,  <29.867317, 31.844601, 23.891527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173317, 31.988590, 23.640293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448448, 32.197365, 23.438511>,  <29.613527, 32.322628, 23.317442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448448, 32.197365, 23.438511>,  <29.173317, 31.988590, 23.640293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448448, 32.197365, 23.438511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323824, -0.401338, -0.856776,
		-0.649640, 0.752670, -0.107036,
		0.687827, 0.521935, -0.504458,
		29.654797, 32.353947, 23.287174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771040, 32.241508, 23.149307>,  <29.173317, 31.988590, 23.640293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771040, 32.241508, 23.149307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151480, 32.260876, 23.027281>,  <29.379744, 32.272495, 22.954065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151480, 32.260876, 23.027281>,  <28.771040, 32.241508, 23.149307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151480, 32.260876, 23.027281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239006, -0.510273, -0.826134,
		-0.195666, 0.858649, -0.473748,
		0.951100, 0.048418, -0.305065,
		29.436810, 32.275402, 22.935760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761631, 32.536701, 22.466669>,  <28.771040, 32.241508, 23.149307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761631, 32.536701, 22.466669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097614, 32.325462, 22.516598>,  <29.299204, 32.198719, 22.546555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097614, 32.325462, 22.516598>,  <28.761631, 32.536701, 22.466669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097614, 32.325462, 22.516598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173775, -0.479680, -0.860064,
		0.514075, 0.700727, -0.494681,
		0.839958, -0.528100, 0.124822,
		29.349602, 32.167030, 22.554045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165903, 32.581127, 21.813101>,  <28.761631, 32.536701, 22.466669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165903, 32.581127, 21.813101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.332125, 32.269176, 22.000334>,  <29.431858, 32.082005, 22.112673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.332125, 32.269176, 22.000334>,  <29.165903, 32.581127, 21.813101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332125, 32.269176, 22.000334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091833, -0.547965, -0.831445,
		0.904920, 0.302527, -0.299329,
		0.415556, -0.779879, 0.468083,
		29.456791, 32.035213, 22.140759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588715, 32.291302, 21.319078>,  <29.165903, 32.581127, 21.813101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588715, 32.291302, 21.319078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536470, 32.005959, 21.594486>,  <29.505123, 31.834753, 21.759731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536470, 32.005959, 21.594486>,  <29.588715, 32.291302, 21.319078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536470, 32.005959, 21.594486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164139, -0.669327, -0.724610,
		0.977752, -0.207655, -0.029668,
		-0.130611, -0.713359, 0.688520,
		29.497288, 31.791950, 21.801043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902618, 31.768908, 21.029789>,  <29.588715, 32.291302, 21.319078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902618, 31.768908, 21.029789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684605, 31.587782, 21.312037>,  <29.553797, 31.479107, 21.481384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684605, 31.587782, 21.312037>,  <29.902618, 31.768908, 21.029789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684605, 31.587782, 21.312037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079563, -0.809877, -0.581178,
		0.834631, -0.372903, 0.405382,
		-0.545033, -0.452816, 0.705618,
		29.521095, 31.451937, 21.523722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312054, 31.131395, 21.260727>,  <29.902618, 31.768908, 21.029789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312054, 31.131395, 21.260727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917118, 31.105114, 21.318474>,  <29.680157, 31.089344, 21.353123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917118, 31.105114, 21.318474>,  <30.312054, 31.131395, 21.260727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917118, 31.105114, 21.318474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047800, -0.744607, -0.665789,
		0.151242, -0.664261, 0.732040,
		-0.987340, -0.065704, 0.144368,
		29.620916, 31.085403, 21.361784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193510, 30.372162, 21.185791>,  <30.312054, 31.131395, 21.260727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193510, 30.372162, 21.185791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823948, 30.524483, 21.170895>,  <29.602211, 30.615875, 21.161957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823948, 30.524483, 21.170895>,  <30.193510, 30.372162, 21.185791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823948, 30.524483, 21.170895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252744, -0.680479, -0.687800,
		-0.287258, -0.626050, 0.724944,
		-0.923907, 0.380801, -0.037243,
		29.546776, 30.638723, 21.159721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738802, 29.812740, 21.270380>,  <30.193510, 30.372162, 21.185791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738802, 29.812740, 21.270380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515991, 30.104708, 21.111917>,  <29.382305, 30.279888, 21.016840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515991, 30.104708, 21.111917>,  <29.738802, 29.812740, 21.270380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515991, 30.104708, 21.111917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362016, -0.642715, -0.675176,
		-0.747440, -0.232675, 0.622251,
		-0.557027, 0.729918, -0.396158,
		29.348883, 30.323683, 20.993071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626232, 30.013813, 21.997301>,  <29.738802, 29.812740, 21.270380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626232, 30.013813, 21.997301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451067, 29.661686, 21.924337>,  <29.345968, 29.450409, 21.880558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451067, 29.661686, 21.924337>,  <29.626232, 30.013813, 21.997301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451067, 29.661686, 21.924337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096101, -0.155900, 0.983087,
		-0.893866, 0.448036, -0.016329,
		-0.437913, -0.880317, -0.182410,
		29.319693, 29.397591, 21.869614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067104, 30.041290, 22.260115>,  <29.626232, 30.013813, 21.997301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067104, 30.041290, 22.260115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168112, 29.654324, 22.252771>,  <29.228716, 29.422144, 22.248365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168112, 29.654324, 22.252771>,  <29.067104, 30.041290, 22.260115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168112, 29.654324, 22.252771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070093, -0.037211, 0.996846,
		-0.965050, -0.250434, -0.077206,
		0.252517, -0.967418, -0.018356,
		29.243868, 29.364098, 22.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667086, 29.721367, 22.822767>,  <29.067104, 30.041290, 22.260115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667086, 29.721367, 22.822767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959152, 29.459558, 22.744328>,  <29.134392, 29.302473, 22.697264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959152, 29.459558, 22.744328>,  <28.667086, 29.721367, 22.822767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959152, 29.459558, 22.744328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135413, -0.142689, 0.980460,
		-0.669715, -0.742455, -0.015556,
		0.730168, -0.654522, -0.196100,
		29.178204, 29.263203, 22.685497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705070, 29.309767, 23.440765>,  <28.667086, 29.721367, 22.822767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705070, 29.309767, 23.440765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044546, 29.212685, 23.252798>,  <29.248232, 29.154436, 23.140018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044546, 29.212685, 23.252798>,  <28.705070, 29.309767, 23.440765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044546, 29.212685, 23.252798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432281, -0.193604, 0.880710,
		-0.304730, -0.950585, -0.059393,
		0.848689, -0.242704, -0.469917,
		29.299152, 29.139874, 23.111822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870975, 28.658434, 23.728636>,  <28.705070, 29.309767, 23.440765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870975, 28.658434, 23.728636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220299, 28.804508, 23.599657>,  <29.429893, 28.892153, 23.522270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220299, 28.804508, 23.599657>,  <28.870975, 28.658434, 23.728636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220299, 28.804508, 23.599657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440325, -0.308498, 0.843175,
		0.208442, -0.878332, -0.430214,
		0.873308, 0.365187, -0.322448,
		29.482290, 28.914064, 23.502922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369446, 28.220434, 23.979919>,  <28.870975, 28.658434, 23.728636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369446, 28.220434, 23.979919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586845, 28.544226, 23.891056>,  <29.717285, 28.738501, 23.837738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586845, 28.544226, 23.891056>,  <29.369446, 28.220434, 23.979919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586845, 28.544226, 23.891056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496408, -0.096531, 0.862705,
		0.676896, -0.579160, -0.454296,
		0.543498, 0.809478, -0.222159,
		29.749895, 28.787069, 23.824408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071154, 28.134592, 24.310854>,  <29.369446, 28.220434, 23.979919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071154, 28.134592, 24.310854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059631, 28.526957, 24.233931>,  <30.052719, 28.762375, 24.187777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059631, 28.526957, 24.233931>,  <30.071154, 28.134592, 24.310854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059631, 28.526957, 24.233931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200594, 0.194145, 0.960245,
		0.979251, -0.010916, -0.202357,
		-0.028805, 0.980912, -0.192306,
		30.050989, 28.821230, 24.176239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776773, 28.503273, 24.565441>,  <30.071154, 28.134592, 24.310854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776773, 28.503273, 24.565441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502741, 28.794535, 24.573990>,  <30.338322, 28.969292, 24.579119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502741, 28.794535, 24.573990>,  <30.776773, 28.503273, 24.565441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502741, 28.794535, 24.573990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232467, 0.190720, 0.953721,
		0.690379, 0.658344, -0.299931,
		-0.685080, 0.728154, 0.021374,
		30.297216, 29.012981, 24.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358227, 28.876572, 24.164335>,  <30.776773, 28.503273, 24.565441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358227, 28.876572, 24.164335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660368, 28.614468, 24.167845>,  <31.841652, 28.457205, 24.169950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660368, 28.614468, 24.167845>,  <31.358227, 28.876572, 24.164335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660368, 28.614468, 24.167845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115125, -0.145866, -0.982583,
		0.645127, 0.741186, -0.185617,
		0.755352, -0.655260, 0.008773,
		31.886974, 28.417889, 24.170477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833002, 29.181551, 23.689930>,  <31.358227, 28.876572, 24.164335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833002, 29.181551, 23.689930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.904087, 28.790203, 23.732290>,  <31.946737, 28.555395, 23.757708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.904087, 28.790203, 23.732290>,  <31.833002, 29.181551, 23.689930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904087, 28.790203, 23.732290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080483, -0.092806, -0.992426,
		0.980786, 0.184888, 0.062249,
		0.177711, -0.978368, 0.105903,
		31.957399, 28.496693, 23.764061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432152, 29.051233, 23.229340>,  <31.833002, 29.181551, 23.689930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432152, 29.051233, 23.229340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243977, 28.707203, 23.308290>,  <32.131073, 28.500784, 23.355661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243977, 28.707203, 23.308290>,  <32.432152, 29.051233, 23.229340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243977, 28.707203, 23.308290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073173, -0.260922, -0.962582,
		0.879394, -0.438392, 0.185682,
		-0.470437, -0.860076, 0.197375,
		32.102844, 28.449181, 23.367502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783581, 28.649607, 22.745575>,  <32.432152, 29.051233, 23.229340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783581, 28.649607, 22.745575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455608, 28.437504, 22.831869>,  <32.258823, 28.310242, 22.883646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455608, 28.437504, 22.831869>,  <32.783581, 28.649607, 22.745575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455608, 28.437504, 22.831869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049468, -0.441072, -0.896107,
		0.570320, -0.724075, 0.387880,
		-0.819932, -0.530255, 0.215734,
		32.209629, 28.278427, 22.896589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002480, 27.889071, 22.599735>,  <32.783581, 28.649607, 22.745575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002480, 27.889071, 22.599735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614948, 27.987509, 22.588289>,  <32.382431, 28.046572, 22.581421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614948, 27.987509, 22.588289>,  <33.002480, 27.889071, 22.599735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614948, 27.987509, 22.588289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047940, -0.299532, -0.952881,
		-0.243065, -0.921803, 0.301991,
		-0.968825, 0.246089, -0.028615,
		32.324303, 28.061337, 22.579704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735390, 27.391603, 22.270710>,  <33.002480, 27.889071, 22.599735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735390, 27.391603, 22.270710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.443382, 27.660816, 22.223204>,  <32.268177, 27.822344, 22.194700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.443382, 27.660816, 22.223204>,  <32.735390, 27.391603, 22.270710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443382, 27.660816, 22.223204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119318, -0.296622, -0.947512,
		-0.672935, -0.677527, 0.296843,
		-0.730015, 0.673033, -0.118766,
		32.224377, 27.862726, 22.187574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267872, 26.998608, 21.986540>,  <32.735390, 27.391603, 22.270710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267872, 26.998608, 21.986540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.145134, 27.367245, 21.891451>,  <32.071491, 27.588427, 21.834398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.145134, 27.367245, 21.891451>,  <32.267872, 26.998608, 21.986540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145134, 27.367245, 21.891451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175195, -0.300195, -0.937651,
		-0.935495, -0.246069, 0.253573,
		-0.306848, 0.921593, -0.237721,
		32.053078, 27.643723, 21.820135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595072, 26.957712, 21.574965>,  <32.267872, 26.998608, 21.986540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595072, 26.957712, 21.574965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775036, 27.297766, 21.465527>,  <31.883015, 27.501799, 21.399864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775036, 27.297766, 21.465527>,  <31.595072, 26.957712, 21.574965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775036, 27.297766, 21.465527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176315, -0.215770, -0.960394,
		-0.875497, 0.480328, 0.052814,
		0.449909, 0.850134, -0.273595,
		31.910009, 27.552807, 21.383448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013544, 27.443703, 21.311020>,  <31.595072, 26.957712, 21.574965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013544, 27.443703, 21.311020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369589, 27.523285, 21.147013>,  <31.583216, 27.571033, 21.048609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369589, 27.523285, 21.147013>,  <31.013544, 27.443703, 21.311020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369589, 27.523285, 21.147013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329374, -0.340959, -0.880489,
		-0.314976, 0.918784, -0.237962,
		0.890114, 0.198954, -0.410017,
		31.636623, 27.582972, 21.024008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.013535, 34.245743, 34.651203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245255, 34.394474, 34.361057>,  <37.384285, 34.483711, 34.186970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245255, 34.394474, 34.361057>,  <37.013535, 34.245743, 34.651203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245255, 34.394474, 34.361057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592026, -0.419757, -0.687974,
		-0.560286, 0.827979, -0.023033,
		0.579297, 0.371826, -0.725369,
		37.419044, 34.506023, 34.143448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597897, 34.477650, 34.159470>,  <37.013535, 34.245743, 34.651203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597897, 34.477650, 34.159470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945030, 34.405262, 33.974377>,  <37.153309, 34.361828, 33.863319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945030, 34.405262, 33.974377>,  <36.597897, 34.477650, 34.159470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945030, 34.405262, 33.974377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488436, -0.481508, -0.727723,
		-0.091113, 0.857554, -0.506260,
		0.867830, -0.180970, -0.462732,
		37.205379, 34.350971, 33.835556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459644, 34.553738, 33.476486>,  <36.597897, 34.477650, 34.159470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459644, 34.553738, 33.476486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786121, 34.323040, 33.490330>,  <36.982006, 34.184620, 33.498634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786121, 34.323040, 33.490330>,  <36.459644, 34.553738, 33.476486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786121, 34.323040, 33.490330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452364, -0.675139, -0.582713,
		0.359441, 0.459950, -0.811941,
		0.816192, -0.576744, 0.034608,
		37.030979, 34.150017, 33.500713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843174, 34.536549, 32.792198>,  <36.459644, 34.553738, 33.476486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843174, 34.536549, 32.792198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917225, 34.197285, 32.990738>,  <36.961655, 33.993729, 33.109859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917225, 34.197285, 32.990738>,  <36.843174, 34.536549, 32.792198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917225, 34.197285, 32.990738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275705, -0.529616, -0.802181,
		0.943248, 0.011658, -0.331886,
		0.185124, -0.848158, 0.496345,
		36.972763, 33.942837, 33.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049526, 34.103771, 32.310158>,  <36.843174, 34.536549, 32.792198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049526, 34.103771, 32.310158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921093, 33.873947, 32.611298>,  <36.844032, 33.736053, 32.791981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921093, 33.873947, 32.611298>,  <37.049526, 34.103771, 32.310158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921093, 33.873947, 32.611298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341862, -0.671028, -0.657914,
		0.883196, -0.468617, 0.019036,
		-0.321084, -0.574560, 0.752852,
		36.824768, 33.701580, 32.837154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024765, 33.536934, 31.971151>,  <37.049526, 34.103771, 32.310158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024765, 33.536934, 31.971151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881752, 33.384941, 32.312393>,  <36.795944, 33.293747, 32.517139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881752, 33.384941, 32.312393>,  <37.024765, 33.536934, 31.971151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881752, 33.384941, 32.312393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263920, -0.835139, -0.482586,
		0.895834, -0.397690, 0.198303,
		-0.357530, -0.379981, 0.853104,
		36.774494, 33.270947, 32.568325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207550, 32.836830, 32.064533>,  <37.024765, 33.536934, 31.971151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207550, 32.836830, 32.064533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869827, 32.847210, 32.278625>,  <36.667194, 32.853436, 32.407082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869827, 32.847210, 32.278625>,  <37.207550, 32.836830, 32.064533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869827, 32.847210, 32.278625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300604, -0.849796, -0.432995,
		0.443602, -0.526473, 0.725288,
		-0.844307, 0.025947, 0.535231,
		36.616535, 32.854996, 32.439194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067230, 32.161697, 32.138569>,  <37.207550, 32.836830, 32.064533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067230, 32.161697, 32.138569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726131, 32.355022, 32.217789>,  <36.521469, 32.471016, 32.265320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726131, 32.355022, 32.217789>,  <37.067230, 32.161697, 32.138569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726131, 32.355022, 32.217789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513425, -0.705973, -0.487850,
		-0.095964, -0.517700, 0.850163,
		-0.852752, 0.483311, 0.198052,
		36.470306, 32.500015, 32.277203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598892, 31.689520, 32.604950>,  <37.067230, 32.161697, 32.138569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598892, 31.689520, 32.604950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391178, 31.954197, 32.388615>,  <36.266548, 32.113003, 32.258812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391178, 31.954197, 32.388615>,  <36.598892, 31.689520, 32.604950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391178, 31.954197, 32.388615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525463, -0.746307, -0.408551,
		-0.673965, 0.072034, 0.735243,
		-0.519287, 0.661692, -0.540836,
		36.235394, 32.152706, 32.226364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943249, 31.473158, 32.685925>,  <36.598892, 31.689520, 32.604950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943249, 31.473158, 32.685925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925789, 31.706184, 32.361282>,  <35.915314, 31.846001, 32.166496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925789, 31.706184, 32.361282>,  <35.943249, 31.473158, 32.685925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925789, 31.706184, 32.361282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557673, -0.688244, -0.464027,
		-0.828912, 0.432360, 0.354921,
		-0.043646, 0.582568, -0.811609,
		35.912697, 31.880955, 32.117798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243465, 31.693914, 32.632034>,  <35.943249, 31.473158, 32.685925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243465, 31.693914, 32.632034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397141, 31.738298, 32.265408>,  <35.489346, 31.764929, 32.045433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397141, 31.738298, 32.265408>,  <35.243465, 31.693914, 32.632034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397141, 31.738298, 32.265408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642009, -0.681331, -0.351585,
		-0.663495, 0.723516, -0.190521,
		0.384186, 0.110959, -0.916564,
		35.512398, 31.771585, 31.990438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718166, 31.904720, 32.123005>,  <35.243465, 31.693914, 32.632034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718166, 31.904720, 32.123005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009388, 31.718777, 31.921478>,  <35.184120, 31.607210, 31.800562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009388, 31.718777, 31.921478>,  <34.718166, 31.904720, 32.123005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009388, 31.718777, 31.921478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685507, -0.497169, -0.531887,
		-0.003231, 0.732617, -0.680633,
		0.728059, -0.464860, -0.503821,
		35.227806, 31.579319, 31.770332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064785, 32.085323, 31.808376>,  <34.718166, 31.904720, 32.123005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064785, 32.085323, 31.808376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666965, 32.091366, 31.849663>,  <33.428276, 32.094990, 31.874435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666965, 32.091366, 31.849663>,  <34.064785, 32.085323, 31.808376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666965, 32.091366, 31.849663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088618, 0.644338, 0.759589,
		-0.055032, 0.764592, -0.642161,
		-0.994544, 0.015105, 0.103215,
		33.368603, 32.095898, 31.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793926, 32.811722, 31.800079>,  <34.064785, 32.085323, 31.808376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793926, 32.811722, 31.800079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476105, 32.642101, 31.973911>,  <33.285412, 32.540329, 32.078209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476105, 32.642101, 31.973911>,  <33.793926, 32.811722, 31.800079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476105, 32.642101, 31.973911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086623, 0.787566, 0.610112,
		-0.600980, 0.447124, -0.662498,
		-0.794556, -0.424052, 0.434581,
		33.237740, 32.514885, 32.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209251, 33.334301, 31.926710>,  <33.793926, 32.811722, 31.800079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209251, 33.334301, 31.926710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180344, 33.036945, 32.192688>,  <33.162998, 32.858532, 32.352276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180344, 33.036945, 32.192688>,  <33.209251, 33.334301, 31.926710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180344, 33.036945, 32.192688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174422, 0.665835, 0.725424,
		-0.982015, -0.063552, -0.177786,
		-0.072274, -0.743388, 0.664945,
		33.158661, 32.813931, 32.392170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815758, 33.640419, 32.387337>,  <33.209251, 33.334301, 31.926710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815758, 33.640419, 32.387337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909107, 33.312450, 32.596436>,  <32.965118, 33.115669, 32.721893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909107, 33.312450, 32.596436>,  <32.815758, 33.640419, 32.387337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909107, 33.312450, 32.596436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138405, 0.504109, 0.852478,
		-0.962487, -0.271297, 0.004165,
		0.233374, -0.819922, 0.522747,
		32.979118, 33.066475, 32.753258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315067, 33.586117, 32.967598>,  <32.815758, 33.640419, 32.387337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315067, 33.586117, 32.967598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630844, 33.371735, 33.087280>,  <32.820309, 33.243103, 33.159092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630844, 33.371735, 33.087280>,  <32.315067, 33.586117, 32.967598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630844, 33.371735, 33.087280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104848, 0.362547, 0.926049,
		-0.604803, -0.762435, 0.230015,
		0.789443, -0.535960, 0.299209,
		32.867676, 33.210945, 33.177044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027363, 33.186245, 33.480080>,  <32.315067, 33.586117, 32.967598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027363, 33.186245, 33.480080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425678, 33.187981, 33.516731>,  <32.664665, 33.189022, 33.538723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425678, 33.187981, 33.516731>,  <32.027363, 33.186245, 33.480080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425678, 33.187981, 33.516731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084882, 0.422314, 0.902467,
		-0.034777, -0.906439, 0.420902,
		0.995784, 0.004342, 0.091627,
		32.724415, 33.189281, 33.544220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377502, 32.865158, 34.146484>,  <32.027363, 33.186245, 33.480080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377502, 32.865158, 34.146484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639465, 33.126549, 33.994659>,  <32.796642, 33.283382, 33.903564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639465, 33.126549, 33.994659>,  <32.377502, 32.865158, 34.146484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639465, 33.126549, 33.994659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009118, 0.509050, 0.860689,
		0.755655, -0.560209, 0.339338,
		0.654906, 0.653478, -0.379558,
		32.835938, 33.322594, 33.880791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628887, 33.153278, 34.729153>,  <32.377502, 32.865158, 34.146484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628887, 33.153278, 34.729153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758316, 33.399944, 34.442093>,  <32.835972, 33.547943, 34.269855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758316, 33.399944, 34.442093>,  <32.628887, 33.153278, 34.729153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758316, 33.399944, 34.442093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135983, 0.720275, 0.680230,
		0.936381, -0.317692, 0.149205,
		0.323572, 0.616665, -0.717652,
		32.855389, 33.584946, 34.226799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286564, 33.482750, 34.967926>,  <32.628887, 33.153278, 34.729153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286564, 33.482750, 34.967926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109329, 33.724228, 34.702827>,  <33.002987, 33.869114, 34.543770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109329, 33.724228, 34.702827>,  <33.286564, 33.482750, 34.967926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109329, 33.724228, 34.702827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090588, 0.765642, 0.636856,
		0.891890, 0.222147, -0.393934,
		-0.443088, 0.603691, -0.662744,
		32.976402, 33.905334, 34.504005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669373, 34.009113, 35.039974>,  <33.286564, 33.482750, 34.967926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669373, 34.009113, 35.039974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352970, 34.167511, 34.853428>,  <33.163128, 34.262550, 34.741501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352970, 34.167511, 34.853428>,  <33.669373, 34.009113, 35.039974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352970, 34.167511, 34.853428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037996, 0.792603, 0.608554,
		0.610630, 0.463648, -0.641998,
		-0.791004, 0.395995, -0.466370,
		33.115669, 34.286308, 34.713516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693863, 34.742516, 35.235626>,  <33.669373, 34.009113, 35.039974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693863, 34.742516, 35.235626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329643, 34.728764, 35.070835>,  <33.111111, 34.720512, 34.971962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329643, 34.728764, 35.070835>,  <33.693863, 34.742516, 35.235626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329643, 34.728764, 35.070835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283095, 0.778073, 0.560767,
		0.301267, 0.627232, -0.718204,
		-0.910547, -0.034380, -0.411975,
		33.056480, 34.718449, 34.947243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573364, 35.388203, 35.091988>,  <33.693863, 34.742516, 35.235626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573364, 35.388203, 35.091988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205944, 35.230732, 35.106327>,  <32.985493, 35.136250, 35.114929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205944, 35.230732, 35.106327>,  <33.573364, 35.388203, 35.091988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205944, 35.230732, 35.106327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322199, 0.798123, 0.509105,
		-0.229035, 0.456088, -0.859957,
		-0.918548, -0.393680, 0.035847,
		32.930378, 35.112629, 35.117081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146225, 35.814671, 34.813431>,  <33.573364, 35.388203, 35.091988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146225, 35.814671, 34.813431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917065, 35.588634, 35.050903>,  <32.779568, 35.453014, 35.193386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917065, 35.588634, 35.050903>,  <33.146225, 35.814671, 34.813431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917065, 35.588634, 35.050903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259248, 0.812081, 0.522796,
		-0.777543, 0.145600, -0.611741,
		-0.572902, -0.565089, 0.593681,
		32.745193, 35.419109, 35.229008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516644, 36.212074, 34.851212>,  <33.146225, 35.814671, 34.813431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516644, 36.212074, 34.851212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514851, 35.976379, 35.174393>,  <32.513775, 35.834965, 35.368301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514851, 35.976379, 35.174393>,  <32.516644, 36.212074, 34.851212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514851, 35.976379, 35.174393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309991, 0.768977, 0.559089,
		-0.950729, -0.247949, -0.186107,
		-0.004486, -0.589234, 0.807950,
		32.513504, 35.799610, 35.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039165, 36.735565, 35.207603>,  <32.516644, 36.212074, 34.851212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039165, 36.735565, 35.207603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.246510, 36.948879, 34.940197>,  <32.370914, 37.076870, 34.779755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.246510, 36.948879, 34.940197>,  <32.039165, 36.735565, 35.207603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246510, 36.948879, 34.940197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021647, -0.789669, -0.613151,
		-0.854891, 0.303359, -0.420873,
		0.518356, 0.533288, -0.668514,
		32.402016, 37.108868, 34.739643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635527, 36.866390, 34.628590>,  <32.039165, 36.735565, 35.207603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635527, 36.866390, 34.628590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665056, 37.224655, 34.453163>,  <31.682774, 37.439613, 34.347908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665056, 37.224655, 34.453163>,  <31.635527, 36.866390, 34.628590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665056, 37.224655, 34.453163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219999, -0.414302, -0.883150,
		-0.972702, 0.161683, 0.166459,
		0.073826, 0.895663, -0.438563,
		31.687204, 37.493355, 34.321594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027384, 37.090160, 34.267284>,  <31.635527, 36.866390, 34.628590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027384, 37.090160, 34.267284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377954, 37.193279, 34.104595>,  <31.588297, 37.255150, 34.006981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377954, 37.193279, 34.104595>,  <31.027384, 37.090160, 34.267284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377954, 37.193279, 34.104595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249630, -0.479037, -0.841551,
		-0.411781, 0.839086, -0.355487,
		0.876426, 0.257794, -0.406719,
		31.640882, 37.270618, 33.982578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831507, 37.498173, 33.667450>,  <31.027384, 37.090160, 34.267284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831507, 37.498173, 33.667450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167559, 37.282204, 33.646793>,  <31.369190, 37.152622, 33.634399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167559, 37.282204, 33.646793>,  <30.831507, 37.498173, 33.667450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167559, 37.282204, 33.646793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275575, -0.342905, -0.898039,
		0.467164, 0.768700, -0.436874,
		0.840129, -0.539923, -0.051642,
		31.419598, 37.120228, 33.631302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243116, 37.810604, 33.125114>,  <30.831507, 37.498173, 33.667450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243116, 37.810604, 33.125114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336246, 37.424278, 33.170715>,  <31.392124, 37.192482, 33.198074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336246, 37.424278, 33.170715>,  <31.243116, 37.810604, 33.125114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336246, 37.424278, 33.170715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213224, -0.165065, -0.962959,
		0.948856, 0.199894, -0.244366,
		0.232826, -0.965814, 0.114000,
		31.406094, 37.134533, 33.204914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524319, 37.669785, 32.457718>,  <31.243116, 37.810604, 33.125114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524319, 37.669785, 32.457718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.492224, 37.297874, 32.601429>,  <31.472967, 37.074730, 32.687656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.492224, 37.297874, 32.601429>,  <31.524319, 37.669785, 32.457718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492224, 37.297874, 32.601429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070917, -0.354202, -0.932476,
		0.994250, -0.100297, -0.037517,
		-0.080236, -0.929775, 0.359278,
		31.468153, 37.018944, 32.709213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023479, 37.194725, 32.041935>,  <31.524319, 37.669785, 32.457718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023479, 37.194725, 32.041935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734196, 36.986729, 32.223736>,  <31.560625, 36.861931, 32.332817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734196, 36.986729, 32.223736>,  <32.023479, 37.194725, 32.041935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734196, 36.986729, 32.223736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276801, -0.384680, -0.880569,
		0.632728, -0.762645, 0.134271,
		-0.723213, -0.519994, 0.454498,
		31.517231, 36.830730, 32.360085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085232, 36.574051, 31.721449>,  <32.023479, 37.194725, 32.041935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085232, 36.574051, 31.721449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718409, 36.553673, 31.879641>,  <31.498314, 36.541447, 31.974556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718409, 36.553673, 31.879641>,  <32.085232, 36.574051, 31.721449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718409, 36.553673, 31.879641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303421, -0.554353, -0.775002,
		0.258715, -0.830721, 0.492919,
		-0.917062, -0.050943, 0.395478,
		31.443291, 36.538391, 31.998283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869740, 35.871868, 31.623446>,  <32.085232, 36.574051, 31.721449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869740, 35.871868, 31.623446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538294, 36.081909, 31.701080>,  <31.339426, 36.207932, 31.747662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538294, 36.081909, 31.701080>,  <31.869740, 35.871868, 31.623446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538294, 36.081909, 31.701080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490324, -0.513430, -0.704253,
		-0.270151, -0.678721, 0.682903,
		-0.828614, 0.525098, 0.194090,
		31.289709, 36.239437, 31.759308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333330, 35.421284, 31.583206>,  <31.869740, 35.871868, 31.623446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333330, 35.421284, 31.583206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128304, 35.761429, 31.535597>,  <31.005287, 35.965515, 31.507030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128304, 35.761429, 31.535597>,  <31.333330, 35.421284, 31.583206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128304, 35.761429, 31.535597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474971, -0.396274, -0.785728,
		-0.715317, -0.346203, 0.607012,
		-0.512565, 0.850359, -0.119025,
		30.974533, 36.016537, 31.499889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624790, 35.278603, 31.623144>,  <31.333330, 35.421284, 31.583206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624790, 35.278603, 31.623144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.654705, 35.616268, 31.410809>,  <30.672655, 35.818867, 31.283407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.654705, 35.616268, 31.410809>,  <30.624790, 35.278603, 31.623144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654705, 35.616268, 31.410809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483004, -0.435053, -0.759892,
		-0.872419, 0.313228, 0.375199,
		0.074788, 0.844167, -0.530838,
		30.677141, 35.869518, 31.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984978, 35.374752, 31.233610>,  <30.624790, 35.278603, 31.623144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984978, 35.374752, 31.233610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273260, 35.579964, 31.047113>,  <30.446230, 35.703091, 30.935215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273260, 35.579964, 31.047113>,  <29.984978, 35.374752, 31.233610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273260, 35.579964, 31.047113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302892, -0.371923, -0.877456,
		-0.623570, 0.773608, -0.112654,
		0.720706, 0.513033, -0.466240,
		30.489471, 35.733875, 30.907242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593744, 35.448635, 30.658918>,  <29.984978, 35.374752, 31.233610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593744, 35.448635, 30.658918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975716, 35.539734, 30.582769>,  <30.204899, 35.594395, 30.537079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975716, 35.539734, 30.582769>,  <29.593744, 35.448635, 30.658918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975716, 35.539734, 30.582769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121139, -0.286503, -0.950390,
		-0.270995, 0.930616, -0.246000,
		0.954928, 0.227751, -0.190375,
		30.262194, 35.608059, 30.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517511, 35.765907, 30.064100>,  <29.593744, 35.448635, 30.658918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517511, 35.765907, 30.064100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901833, 35.660450, 30.098391>,  <30.132425, 35.597176, 30.118965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901833, 35.660450, 30.098391>,  <29.517511, 35.765907, 30.064100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901833, 35.660450, 30.098391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012172, -0.349037, -0.937030,
		0.276960, 0.899259, -0.338565,
		0.960804, -0.263641, 0.085724,
		30.190073, 35.581356, 30.124107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818954, 35.980175, 29.483465>,  <29.517511, 35.765907, 30.064100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818954, 35.980175, 29.483465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062229, 35.692631, 29.618137>,  <30.208195, 35.520103, 29.698940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062229, 35.692631, 29.618137>,  <29.818954, 35.980175, 29.483465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062229, 35.692631, 29.618137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050942, -0.387919, -0.920285,
		0.792158, 0.576856, -0.199307,
		0.608187, -0.718858, 0.336679,
		30.244684, 35.476974, 29.719141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607151, 35.991047, 29.145615>,  <29.818954, 35.980175, 29.483465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607151, 35.991047, 29.145615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524616, 35.619427, 29.268444>,  <30.475096, 35.396454, 29.342142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524616, 35.619427, 29.268444>,  <30.607151, 35.991047, 29.145615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524616, 35.619427, 29.268444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207431, -0.348225, -0.914173,
		0.956241, -0.124932, 0.264565,
		-0.206338, -0.929048, 0.307073,
		30.462715, 35.340714, 29.360565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970076, 35.624260, 28.735657>,  <30.607151, 35.991047, 29.145615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970076, 35.624260, 28.735657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764545, 35.312832, 28.879772>,  <30.641228, 35.125973, 28.966242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764545, 35.312832, 28.879772>,  <30.970076, 35.624260, 28.735657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764545, 35.312832, 28.879772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077080, -0.460167, -0.884480,
		0.854427, -0.426695, 0.296457,
		-0.513823, -0.778574, 0.360289,
		30.610399, 35.079258, 28.987860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332354, 35.011539, 28.571081>,  <30.970076, 35.624260, 28.735657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332354, 35.011539, 28.571081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950354, 34.910538, 28.633327>,  <30.721153, 34.849937, 28.670675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950354, 34.910538, 28.633327>,  <31.332354, 35.011539, 28.571081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950354, 34.910538, 28.633327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066496, -0.329037, -0.941973,
		0.289053, -0.909933, 0.297440,
		-0.955001, -0.252502, 0.155616,
		30.663853, 34.834785, 28.680012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236025, 34.296902, 28.287725>,  <31.332354, 35.011539, 28.571081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236025, 34.296902, 28.287725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874269, 34.467381, 28.296082>,  <30.657217, 34.569668, 28.301096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874269, 34.467381, 28.296082>,  <31.236025, 34.296902, 28.287725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874269, 34.467381, 28.296082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156385, -0.285503, -0.945533,
		-0.397021, -0.858395, 0.324857,
		-0.904388, 0.426199, 0.020889,
		30.602953, 34.595238, 28.302349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824999, 33.738934, 28.005831>,  <31.236025, 34.296902, 28.287725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824999, 33.738934, 28.005831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.604286, 34.072525, 28.004669>,  <30.471859, 34.272682, 28.003973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.604286, 34.072525, 28.004669>,  <30.824999, 33.738934, 28.005831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604286, 34.072525, 28.004669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494676, -0.330089, -0.803951,
		-0.671439, -0.442170, 0.594689,
		-0.551783, 0.833983, -0.002904,
		30.438751, 34.322720, 28.003798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137054, 33.508682, 27.985880>,  <30.824999, 33.738934, 28.005831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137054, 33.508682, 27.985880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.127132, 33.880062, 27.837631>,  <30.121180, 34.102890, 27.748682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.127132, 33.880062, 27.837631>,  <30.137054, 33.508682, 27.985880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127132, 33.880062, 27.837631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323764, -0.358215, -0.875704,
		-0.945812, 0.098273, 0.309485,
		-0.024804, 0.928452, -0.370622,
		30.119692, 34.158596, 27.726444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625237, 33.526543, 27.545609>,  <30.137054, 33.508682, 27.985880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625237, 33.526543, 27.545609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818520, 33.852303, 27.417072>,  <29.934490, 34.047760, 27.339951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818520, 33.852303, 27.417072>,  <29.625237, 33.526543, 27.545609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818520, 33.852303, 27.417072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161399, -0.277882, -0.946959,
		-0.860499, 0.509444, -0.002832,
		0.483210, 0.814400, -0.321341,
		29.963482, 34.096622, 27.320669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205034, 33.824577, 27.098108>,  <29.625237, 33.526543, 27.545609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205034, 33.824577, 27.098108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561451, 33.969555, 26.988800>,  <29.775301, 34.056541, 26.923216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561451, 33.969555, 26.988800>,  <29.205034, 33.824577, 27.098108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561451, 33.969555, 26.988800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128460, -0.376063, -0.917646,
		-0.435365, 0.852766, -0.288528,
		0.891042, 0.362447, -0.273271,
		29.828764, 34.078289, 26.906818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090334, 34.152588, 26.515894>,  <29.205034, 33.824577, 27.098108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090334, 34.152588, 26.515894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482702, 34.086399, 26.475071>,  <29.718122, 34.046684, 26.450577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482702, 34.086399, 26.475071>,  <29.090334, 34.152588, 26.515894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482702, 34.086399, 26.475071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149799, -0.308687, -0.939294,
		0.123928, 0.936659, -0.327585,
		0.980919, -0.165476, -0.102056,
		29.776978, 34.036755, 26.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349642, 34.487030, 25.941442>,  <29.090334, 34.152588, 26.515894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349642, 34.487030, 25.941442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617138, 34.195236, 25.998901>,  <29.777636, 34.020161, 26.033377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617138, 34.195236, 25.998901>,  <29.349642, 34.487030, 25.941442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617138, 34.195236, 25.998901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012797, -0.181881, -0.983237,
		0.743386, 0.659368, -0.112295,
		0.668740, -0.729488, 0.143646,
		29.817760, 33.976391, 26.041996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728664, 34.531467, 25.292988>,  <29.349642, 34.487030, 25.941442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728664, 34.531467, 25.292988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837961, 34.180885, 25.451563>,  <29.903540, 33.970535, 25.546709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837961, 34.180885, 25.451563>,  <29.728664, 34.531467, 25.292988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837961, 34.180885, 25.451563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112633, -0.380138, -0.918046,
		0.955328, 0.295503, -0.005153,
		0.273244, -0.876455, 0.396440,
		29.919935, 33.917950, 25.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326902, 34.262150, 24.853670>,  <29.728664, 34.531467, 25.292988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326902, 34.262150, 24.853670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199982, 33.935143, 25.045912>,  <30.123829, 33.738937, 25.161257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199982, 33.935143, 25.045912>,  <30.326902, 34.262150, 24.853670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199982, 33.935143, 25.045912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074942, -0.526826, -0.846663,
		0.945358, -0.232631, 0.228430,
		-0.317303, -0.817519, 0.480606,
		30.104792, 33.689888, 25.190094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832727, 33.841335, 24.692150>,  <30.326902, 34.262150, 24.853670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832727, 33.841335, 24.692150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.496550, 33.650066, 24.794132>,  <30.294842, 33.535305, 24.855322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.496550, 33.650066, 24.794132>,  <30.832727, 33.841335, 24.692150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496550, 33.650066, 24.794132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100930, -0.324131, -0.940613,
		0.532414, -0.816266, 0.224153,
		-0.840445, -0.478172, 0.254957,
		30.244415, 33.506615, 24.870619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606758, 33.854053, 24.455175>,  <30.832727, 33.841335, 24.692150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606758, 33.854053, 24.455175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902159, 33.904045, 24.190149>,  <32.079399, 33.934040, 24.031134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902159, 33.904045, 24.190149>,  <31.606758, 33.854053, 24.455175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902159, 33.904045, 24.190149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281062, 0.836160, 0.471000,
		0.612876, -0.534057, 0.582379,
		0.738503, 0.124980, -0.662566,
		32.123711, 33.941540, 23.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185440, 33.753384, 24.787146>,  <31.606758, 33.854053, 24.455175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185440, 33.753384, 24.787146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284519, 33.980438, 24.473091>,  <32.343967, 34.116673, 24.284658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284519, 33.980438, 24.473091>,  <32.185440, 33.753384, 24.787146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284519, 33.980438, 24.473091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372002, 0.692546, 0.618056,
		0.894573, -0.445162, -0.039621,
		0.247696, 0.567636, -0.785135,
		32.358829, 34.150730, 24.237551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847443, 33.897629, 24.962664>,  <32.185440, 33.753384, 24.787146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847443, 33.897629, 24.962664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739235, 34.181370, 24.702314>,  <32.674309, 34.351612, 24.546104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739235, 34.181370, 24.702314>,  <32.847443, 33.897629, 24.962664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739235, 34.181370, 24.702314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516374, 0.677517, 0.523764,
		0.812511, -0.194404, -0.549575,
		-0.270524, 0.709351, -0.650875,
		32.658077, 34.394176, 24.507051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354919, 34.318199, 24.984482>,  <32.847443, 33.897629, 24.962664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354919, 34.318199, 24.984482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.074619, 34.552784, 24.821997>,  <32.906441, 34.693535, 24.724506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.074619, 34.552784, 24.821997>,  <33.354919, 34.318199, 24.984482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074619, 34.552784, 24.821997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401607, 0.794893, 0.454815,
		0.589629, 0.155574, -0.792550,
		-0.700750, 0.586465, -0.406212,
		32.864395, 34.728722, 24.700132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695972, 34.849522, 25.001469>,  <33.354919, 34.318199, 24.984482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695972, 34.849522, 25.001469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333603, 34.995510, 24.915581>,  <33.116180, 35.083103, 24.864048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333603, 34.995510, 24.915581>,  <33.695972, 34.849522, 25.001469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333603, 34.995510, 24.915581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270092, 0.888567, 0.370808,
		0.326126, 0.277929, -0.903547,
		-0.905920, 0.364972, -0.214718,
		33.061829, 35.105003, 24.851166>
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
