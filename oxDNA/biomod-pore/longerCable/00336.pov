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
	<24.472021, 34.782055, 35.026443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343882, 35.098278, 34.817680>,  <24.266998, 35.288013, 34.692421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343882, 35.098278, 34.817680>,  <24.472021, 34.782055, 35.026443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343882, 35.098278, 34.817680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890093, 0.439757, 0.119782,
		0.324209, -0.426177, -0.844548,
		-0.320348, 0.790561, -0.521910,
		24.247778, 35.335445, 34.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023623, 34.380878, 34.700825>,  <24.472021, 34.782055, 35.026443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023623, 34.380878, 34.700825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369637, 34.574806, 34.649181>,  <25.577244, 34.691162, 34.618195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369637, 34.574806, 34.649181>,  <25.023623, 34.380878, 34.700825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369637, 34.574806, 34.649181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333006, 0.362340, -0.870527,
		-0.375266, 0.796028, 0.474883,
		0.865033, 0.484818, -0.129108,
		25.629147, 34.720253, 34.610451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819353, 34.936886, 34.344368>,  <25.023623, 34.380878, 34.700825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819353, 34.936886, 34.344368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214233, 34.923008, 34.282104>,  <25.451162, 34.914680, 34.244747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214233, 34.923008, 34.282104>,  <24.819353, 34.936886, 34.344368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214233, 34.923008, 34.282104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115045, 0.521042, -0.845742,
		0.110450, 0.852826, 0.510381,
		0.987201, -0.034696, -0.155662,
		25.510393, 34.912598, 34.235405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083479, 35.704704, 34.214931>,  <24.819353, 34.936886, 34.344368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083479, 35.704704, 34.214931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350107, 35.454391, 34.052902>,  <25.510084, 35.304203, 33.955685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350107, 35.454391, 34.052902>,  <25.083479, 35.704704, 34.214931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350107, 35.454391, 34.052902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007727, 0.549173, -0.835673,
		0.745403, 0.553904, 0.370898,
		0.666569, -0.625779, -0.405075,
		25.550077, 35.266659, 33.931381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508297, 36.160522, 33.888161>,  <25.083479, 35.704704, 34.214931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508297, 36.160522, 33.888161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568466, 35.809788, 33.705498>,  <25.604568, 35.599346, 33.595901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568466, 35.809788, 33.705498>,  <25.508297, 36.160522, 33.888161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568466, 35.809788, 33.705498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176128, 0.430753, -0.885116,
		0.972806, 0.213573, -0.089639,
		0.150425, -0.876834, -0.456655,
		25.613594, 35.546738, 33.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905495, 36.323826, 33.387486>,  <25.508297, 36.160522, 33.888161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905495, 36.323826, 33.387486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702341, 35.991043, 33.298130>,  <25.580448, 35.791374, 33.244514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702341, 35.991043, 33.298130>,  <25.905495, 36.323826, 33.387486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702341, 35.991043, 33.298130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311348, 0.419084, -0.852896,
		0.803191, -0.363621, -0.471873,
		-0.507885, -0.831955, -0.223392,
		25.549976, 35.741455, 33.231113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261765, 36.008381, 32.794533>,  <25.905495, 36.323826, 33.387486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261765, 36.008381, 32.794533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870224, 35.935116, 32.830975>,  <25.635300, 35.891155, 32.852840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870224, 35.935116, 32.830975>,  <26.261765, 36.008381, 32.794533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870224, 35.935116, 32.830975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165014, 0.443748, -0.880828,
		0.120912, -0.877233, -0.464588,
		-0.978852, -0.183166, 0.091101,
		25.576569, 35.880165, 32.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936888, 35.692142, 32.150524>,  <26.261765, 36.008381, 32.794533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936888, 35.692142, 32.150524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654715, 35.874302, 32.367771>,  <25.485411, 35.983597, 32.498119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654715, 35.874302, 32.367771>,  <25.936888, 35.692142, 32.150524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654715, 35.874302, 32.367771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364787, 0.423716, -0.829093,
		-0.607697, -0.782991, -0.132778,
		-0.705432, 0.455401, 0.543116,
		25.443085, 36.010921, 32.530704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279369, 35.573559, 31.876789>,  <25.936888, 35.692142, 32.150524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279369, 35.573559, 31.876789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242876, 35.908401, 32.092541>,  <25.220980, 36.109306, 32.221992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242876, 35.908401, 32.092541>,  <25.279369, 35.573559, 31.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242876, 35.908401, 32.092541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334637, 0.484370, -0.808334,
		-0.937920, -0.254245, 0.235935,
		-0.091235, 0.837105, 0.539380,
		25.215506, 36.159534, 32.254356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616791, 35.837887, 31.687296>,  <25.279369, 35.573559, 31.876789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616791, 35.837887, 31.687296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812727, 36.152782, 31.837130>,  <24.930288, 36.341721, 31.927029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812727, 36.152782, 31.837130>,  <24.616791, 35.837887, 31.687296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812727, 36.152782, 31.837130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136637, 0.493674, -0.858846,
		-0.861038, 0.369517, 0.349388,
		0.489842, 0.787238, 0.374582,
		24.959679, 36.388954, 31.949505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358839, 36.410435, 31.327686>,  <24.616791, 35.837887, 31.687296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358839, 36.410435, 31.327686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702595, 36.556393, 31.470966>,  <24.908848, 36.643967, 31.556934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702595, 36.556393, 31.470966>,  <24.358839, 36.410435, 31.327686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702595, 36.556393, 31.470966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157443, 0.477662, -0.864321,
		-0.486483, 0.799182, 0.353047,
		0.859387, 0.364893, 0.358200,
		24.960411, 36.665859, 31.578426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.442739, 37.179588, 31.215651>,  <24.358839, 36.410435, 31.327686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.442739, 37.179588, 31.215651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794336, 36.989555, 31.199295>,  <25.005295, 36.875534, 31.189482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794336, 36.989555, 31.199295>,  <24.442739, 37.179588, 31.215651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794336, 36.989555, 31.199295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145416, 0.348736, -0.925871,
		0.454125, 0.807886, 0.375620,
		0.878991, -0.475083, -0.040890,
		25.058033, 36.847031, 31.187029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881844, 37.077805, 30.623646>,  <24.442739, 37.179588, 31.215651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881844, 37.077805, 30.623646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817167, 37.373989, 30.362701>,  <24.778362, 37.551701, 30.206135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817167, 37.373989, 30.362701>,  <24.881844, 37.077805, 30.623646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817167, 37.373989, 30.362701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077053, -0.668512, -0.739699,
		-0.983829, -0.069335, 0.165147,
		-0.161690, 0.740462, -0.652359,
		24.768660, 37.596127, 30.166994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047400, 36.332600, 30.742390>,  <24.881844, 37.077805, 30.623646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047400, 36.332600, 30.742390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368340, 36.558781, 30.665974>,  <25.560904, 36.694489, 30.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368340, 36.558781, 30.665974>,  <25.047400, 36.332600, 30.742390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368340, 36.558781, 30.665974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010519, 0.333426, 0.942718,
		0.596758, -0.754382, 0.273473,
		0.802352, 0.565451, -0.191040,
		25.609045, 36.728416, 30.608662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602211, 36.077713, 31.096611>,  <25.047400, 36.332600, 30.742390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602211, 36.077713, 31.096611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612419, 36.474922, 31.050556>,  <25.618544, 36.713249, 31.022924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612419, 36.474922, 31.050556>,  <25.602211, 36.077713, 31.096611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612419, 36.474922, 31.050556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181443, 0.117861, 0.976313,
		0.983070, -0.004026, 0.183185,
		0.025521, 0.993022, -0.115135,
		25.620075, 36.772827, 31.016016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180901, 36.462914, 31.436390>,  <25.602211, 36.077713, 31.096611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180901, 36.462914, 31.436390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853073, 36.691723, 31.423134>,  <25.656378, 36.829010, 31.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853073, 36.691723, 31.423134>,  <26.180901, 36.462914, 31.436390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853073, 36.691723, 31.423134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104742, -0.092705, 0.990169,
		0.563329, 0.814981, 0.135892,
		-0.819567, 0.572025, -0.033139,
		25.607203, 36.863331, 31.413193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123810, 36.883507, 32.074280>,  <26.180901, 36.462914, 31.436390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123810, 36.883507, 32.074280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752207, 36.868191, 31.927050>,  <25.529245, 36.859001, 31.838711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752207, 36.868191, 31.927050>,  <26.123810, 36.883507, 32.074280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752207, 36.868191, 31.927050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358825, -0.150078, 0.921261,
		-0.090519, 0.987932, 0.125682,
		-0.929005, -0.038294, -0.368079,
		25.473505, 36.856701, 31.816626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632113, 37.350212, 32.443584>,  <26.123810, 36.883507, 32.074280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632113, 37.350212, 32.443584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398396, 37.062672, 32.292931>,  <25.258165, 36.890148, 32.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398396, 37.062672, 32.292931>,  <25.632113, 37.350212, 32.443584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398396, 37.062672, 32.292931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136398, -0.370506, 0.918760,
		-0.799998, 0.588198, 0.118434,
		-0.584294, -0.718852, -0.376633,
		25.223108, 36.847015, 32.179939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136766, 37.256973, 32.944546>,  <25.632113, 37.350212, 32.443584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136766, 37.256973, 32.944546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145063, 36.925915, 32.720200>,  <25.150042, 36.727280, 32.585590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145063, 36.925915, 32.720200>,  <25.136766, 37.256973, 32.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145063, 36.925915, 32.720200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105285, -0.556063, 0.824445,
		-0.994226, -0.076150, 0.075605,
		0.020740, -0.827644, -0.560869,
		25.151285, 36.677620, 32.551937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559334, 36.744572, 33.095295>,  <25.136766, 37.256973, 32.944546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559334, 36.744572, 33.095295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849880, 36.523720, 32.931564>,  <25.024208, 36.391209, 32.833324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849880, 36.523720, 32.931564>,  <24.559334, 36.744572, 33.095295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849880, 36.523720, 32.931564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128490, -0.475966, 0.870027,
		-0.675191, -0.684552, -0.274783,
		0.726366, -0.552127, -0.409326,
		25.067791, 36.358082, 32.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308004, 36.169304, 32.885643>,  <24.559334, 36.744572, 33.095295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308004, 36.169304, 32.885643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654989, 36.079872, 32.707870>,  <24.863180, 36.026211, 32.601208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654989, 36.079872, 32.707870>,  <24.308004, 36.169304, 32.885643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654989, 36.079872, 32.707870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276101, -0.526767, 0.803918,
		-0.413854, -0.820077, -0.395219,
		0.867463, -0.223585, -0.444429,
		24.915228, 36.012798, 32.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343927, 35.402466, 32.926502>,  <24.308004, 36.169304, 32.885643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343927, 35.402466, 32.926502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720985, 35.533279, 32.899765>,  <24.947220, 35.611767, 32.883724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720985, 35.533279, 32.899765>,  <24.343927, 35.402466, 32.926502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720985, 35.533279, 32.899765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260165, -0.594366, 0.760949,
		0.209129, -0.734695, -0.645359,
		0.942645, 0.327036, -0.066843,
		25.003778, 35.631390, 32.879711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720877, 34.719189, 33.141598>,  <24.343927, 35.402466, 32.926502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720877, 34.719189, 33.141598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958033, 35.038620, 33.183067>,  <25.100327, 35.230278, 33.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958033, 35.038620, 33.183067>,  <24.720877, 34.719189, 33.141598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958033, 35.038620, 33.183067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411497, -0.411106, 0.813426,
		0.692208, -0.439611, -0.572355,
		0.592890, 0.798582, 0.103673,
		25.135899, 35.278194, 33.214169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209894, 34.368698, 33.486938>,  <24.720877, 34.719189, 33.141598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209894, 34.368698, 33.486938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234526, 34.760494, 33.563671>,  <25.249306, 34.995571, 33.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234526, 34.760494, 33.563671>,  <25.209894, 34.368698, 33.486938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234526, 34.760494, 33.563671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107862, -0.197605, 0.974330,
		0.992257, -0.039308, -0.117818,
		0.061581, 0.979493, 0.191835,
		25.253000, 35.054340, 33.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871691, 34.433987, 32.984531>,  <25.209894, 34.368698, 33.486938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871691, 34.433987, 32.984531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810642, 34.790440, 33.155457>,  <25.774014, 35.004311, 33.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810642, 34.790440, 33.155457>,  <25.871691, 34.433987, 32.984531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810642, 34.790440, 33.155457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264108, -0.379873, 0.886535,
		0.952342, 0.248158, -0.177379,
		-0.152619, 0.891131, 0.427309,
		25.764856, 35.057777, 33.283649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478333, 34.484322, 33.341877>,  <25.871691, 34.433987, 32.984531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478333, 34.484322, 33.341877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204840, 34.719078, 33.515347>,  <26.040745, 34.859932, 33.619427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204840, 34.719078, 33.515347>,  <26.478333, 34.484322, 33.341877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204840, 34.719078, 33.515347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308904, -0.305637, 0.900647,
		0.661129, 0.749761, 0.027679,
		-0.683730, 0.586893, 0.433669,
		25.999722, 34.895145, 33.645447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754244, 34.571548, 33.952591>,  <26.478333, 34.484322, 33.341877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754244, 34.571548, 33.952591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385725, 34.699505, 34.041023>,  <26.164614, 34.776279, 34.094082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385725, 34.699505, 34.041023>,  <26.754244, 34.571548, 33.952591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385725, 34.699505, 34.041023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072158, -0.418031, 0.905562,
		0.382105, 0.850245, 0.362048,
		-0.921298, 0.319895, 0.221084,
		26.109335, 34.795475, 34.107349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994123, 33.916714, 34.177319>,  <26.754244, 34.571548, 33.952591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994123, 33.916714, 34.177319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194916, 33.640640, 33.968834>,  <27.315392, 33.474995, 33.843742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194916, 33.640640, 33.968834>,  <26.994123, 33.916714, 34.177319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194916, 33.640640, 33.968834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473703, -0.723618, 0.501979,
		-0.723618, -0.005082, -0.690182,
		-0.501979, 0.690182, 0.521215,
		27.345509, 33.433586, 33.812469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562336, 33.326416, 34.079453>,  <26.994123, 33.916714, 34.177319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562336, 33.326416, 34.079453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923008, 33.162651, 34.023800>,  <27.139410, 33.064392, 33.990406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923008, 33.162651, 34.023800>,  <26.562336, 33.326416, 34.079453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923008, 33.162651, 34.023800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268919, -0.782912, 0.561009,
		-0.338614, -0.468434, -0.816033,
		0.901678, -0.409413, -0.139134,
		27.193512, 33.039825, 33.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496666, 32.657928, 33.846436>,  <26.562336, 33.326416, 34.079453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496666, 32.657928, 33.846436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851763, 32.676498, 34.029633>,  <27.064821, 32.687641, 34.139549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851763, 32.676498, 34.029633>,  <26.496666, 32.657928, 33.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851763, 32.676498, 34.029633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275350, -0.743753, 0.609109,
		0.368910, -0.666841, -0.647479,
		0.887743, 0.046423, 0.457992,
		27.118086, 32.690426, 34.167030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874609, 31.951628, 33.848839>,  <26.496666, 32.657928, 33.846436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874609, 31.951628, 33.848839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034000, 32.145496, 34.160301>,  <27.129635, 32.261818, 34.347179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034000, 32.145496, 34.160301>,  <26.874609, 31.951628, 33.848839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034000, 32.145496, 34.160301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366186, -0.694301, 0.619559,
		0.840906, -0.532015, -0.099183,
		0.398478, 0.484672, 0.778658,
		27.153543, 32.290897, 34.393898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226160, 31.399534, 34.222652>,  <26.874609, 31.951628, 33.848839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226160, 31.399534, 34.222652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225956, 31.685440, 34.502396>,  <27.225834, 31.856983, 34.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225956, 31.685440, 34.502396>,  <27.226160, 31.399534, 34.222652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225956, 31.685440, 34.502396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346583, -0.656143, 0.670342,
		0.938019, -0.242044, 0.248061,
		-0.000511, 0.714767, 0.699363,
		27.225803, 31.899870, 34.712204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631445, 31.191492, 34.760159>,  <27.226160, 31.399534, 34.222652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631445, 31.191492, 34.760159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410236, 31.475592, 34.934383>,  <27.277512, 31.646051, 35.038918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410236, 31.475592, 34.934383>,  <27.631445, 31.191492, 34.760159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410236, 31.475592, 34.934383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452056, -0.694928, 0.559214,
		0.699866, 0.112358, 0.705381,
		-0.553021, 0.710247, 0.435564,
		27.244329, 31.688665, 35.065052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638027, 31.113512, 35.583458>,  <27.631445, 31.191492, 34.760159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638027, 31.113512, 35.583458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321371, 31.326265, 35.463188>,  <27.131376, 31.453918, 35.391029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321371, 31.326265, 35.463188>,  <27.638027, 31.113512, 35.583458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321371, 31.326265, 35.463188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580427, -0.501001, 0.641953,
		0.190809, 0.682713, 0.705333,
		-0.791642, 0.531884, -0.300670,
		27.083878, 31.485830, 35.372986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174313, 30.559597, 35.475933>,  <27.638027, 31.113512, 35.583458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174313, 30.559597, 35.475933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307835, 30.182594, 35.469582>,  <27.387949, 29.956392, 35.465771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307835, 30.182594, 35.469582>,  <27.174313, 30.559597, 35.475933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307835, 30.182594, 35.469582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532310, 0.174568, 0.828355,
		-0.777958, -0.284964, 0.559979,
		0.333806, -0.942508, -0.015883,
		27.407976, 29.899841, 35.464817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184725, 30.266851, 36.154842>,  <27.174313, 30.559597, 35.475933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184725, 30.266851, 36.154842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448853, 30.076881, 35.922146>,  <27.607328, 29.962898, 35.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448853, 30.076881, 35.922146>,  <27.184725, 30.266851, 36.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448853, 30.076881, 35.922146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677252, 0.041855, 0.734560,
		-0.324513, -0.879029, 0.349283,
		0.660319, -0.474927, -0.581742,
		27.646948, 29.934402, 35.747623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225973, 31.115353, 36.227432>,  <27.184725, 30.266851, 36.154842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225973, 31.115353, 36.227432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955402, 31.226385, 35.954556>,  <26.793060, 31.293005, 35.790829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955402, 31.226385, 35.954556>,  <27.225973, 31.115353, 36.227432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955402, 31.226385, 35.954556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618448, -0.717075, 0.321444,
		-0.399958, 0.639337, 0.656721,
		-0.676428, 0.277583, -0.682197,
		26.752474, 31.309660, 35.749897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605356, 31.055534, 36.503658>,  <27.225973, 31.115353, 36.227432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605356, 31.055534, 36.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502014, 31.051804, 36.117256>,  <26.440010, 31.049566, 35.885414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502014, 31.051804, 36.117256>,  <26.605356, 31.055534, 36.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502014, 31.051804, 36.117256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684394, -0.703966, 0.189833,
		-0.681805, 0.710173, 0.175490,
		-0.258354, -0.009325, -0.966006,
		26.424509, 31.049006, 35.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862024, 31.064011, 36.512203>,  <26.605356, 31.055534, 36.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862024, 31.064011, 36.512203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959475, 30.915379, 36.153858>,  <26.017944, 30.826200, 35.938850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959475, 30.915379, 36.153858>,  <25.862024, 31.064011, 36.512203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959475, 30.915379, 36.153858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685210, -0.719659, 0.112153,
		-0.686391, 0.586532, -0.429938,
		0.243627, -0.371579, -0.895866,
		26.032562, 30.803905, 35.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305809, 30.967997, 36.247307>,  <25.862024, 31.064011, 36.512203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305809, 30.967997, 36.247307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577374, 30.713739, 36.100315>,  <25.740313, 30.561186, 36.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577374, 30.713739, 36.100315>,  <25.305809, 30.967997, 36.247307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577374, 30.713739, 36.100315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678786, -0.734164, 0.015869,
		-0.279878, 0.238668, -0.929896,
		0.678909, -0.635642, -0.367481,
		25.781046, 30.523046, 35.990070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030085, 30.517042, 35.600815>,  <25.305809, 30.967997, 36.247307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030085, 30.517042, 35.600815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318350, 30.314526, 35.790260>,  <25.491308, 30.193016, 35.903927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318350, 30.314526, 35.790260>,  <25.030085, 30.517042, 35.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318350, 30.314526, 35.790260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581737, -0.813223, 0.015849,
		0.377133, -0.286942, -0.880588,
		0.720662, -0.506293, 0.473618,
		25.534548, 30.162638, 35.932346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385668, 29.838175, 35.309002>,  <25.030085, 30.517042, 35.600815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385668, 29.838175, 35.309002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318682, 29.870348, 35.702038>,  <25.278490, 29.889652, 35.937859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318682, 29.870348, 35.702038>,  <25.385668, 29.838175, 35.309002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318682, 29.870348, 35.702038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546765, -0.836923, -0.024679,
		0.820368, -0.541379, 0.184134,
		-0.167466, 0.080432, 0.982591,
		25.268442, 29.894478, 35.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000574, 29.779037, 35.228703>,  <25.385668, 29.838175, 35.309002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000574, 29.779037, 35.228703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311949, 29.846071, 35.470680>,  <26.498774, 29.886292, 35.615868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311949, 29.846071, 35.470680>,  <26.000574, 29.779037, 35.228703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311949, 29.846071, 35.470680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627567, 0.186269, 0.755952,
		0.014002, -0.968101, 0.250167,
		0.778436, 0.167581, 0.604940,
		26.545479, 29.896347, 35.652161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184620, 30.399689, 34.689716>,  <26.000574, 29.779037, 35.228703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184620, 30.399689, 34.689716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147270, 30.535582, 35.064068>,  <26.124861, 30.617117, 35.288677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147270, 30.535582, 35.064068>,  <26.184620, 30.399689, 34.689716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147270, 30.535582, 35.064068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546999, 0.802917, -0.236891,
		-0.831910, 0.489804, -0.260803,
		-0.093373, 0.339731, 0.935876,
		26.119259, 30.637501, 35.344830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094078, 31.069363, 34.576107>,  <26.184620, 30.399689, 34.689716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094078, 31.069363, 34.576107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201799, 31.075199, 34.961285>,  <26.266432, 31.078701, 35.192390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201799, 31.075199, 34.961285>,  <26.094078, 31.069363, 34.576107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201799, 31.075199, 34.961285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452062, 0.880967, -0.139773,
		-0.850363, 0.472952, 0.230650,
		0.269301, 0.014590, 0.962945,
		26.282589, 31.079576, 35.250168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850924, 31.656157, 34.878353>,  <26.094078, 31.069363, 34.576107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850924, 31.656157, 34.878353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134979, 31.553431, 35.140575>,  <26.305412, 31.491795, 35.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134979, 31.553431, 35.140575>,  <25.850924, 31.656157, 34.878353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134979, 31.553431, 35.140575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462312, 0.872333, -0.159068,
		-0.531009, 0.416029, 0.738207,
		0.710139, -0.256815, 0.655552,
		26.348021, 31.476385, 35.337242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072945, 32.250275, 35.148464>,  <25.850924, 31.656157, 34.878353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072945, 32.250275, 35.148464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385160, 32.015041, 35.233231>,  <26.572491, 31.873901, 35.284092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385160, 32.015041, 35.233231>,  <26.072945, 32.250275, 35.148464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385160, 32.015041, 35.233231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624648, 0.746734, -0.228480,
		-0.023882, 0.310713, 0.950204,
		0.780541, -0.588086, 0.211920,
		26.619324, 31.838615, 35.296806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532267, 32.704796, 35.451794>,  <26.072945, 32.250275, 35.148464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532267, 32.704796, 35.451794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727951, 32.373119, 35.343628>,  <26.845362, 32.174114, 35.278728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727951, 32.373119, 35.343628>,  <26.532267, 32.704796, 35.451794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727951, 32.373119, 35.343628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709691, 0.558680, -0.429204,
		0.506963, 0.018064, 0.861779,
		0.489212, -0.829187, -0.270410,
		26.874714, 32.124363, 35.262505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147583, 32.891506, 35.534046>,  <26.532267, 32.704796, 35.451794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147583, 32.891506, 35.534046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172300, 32.576694, 35.288521>,  <27.187132, 32.387806, 35.141205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172300, 32.576694, 35.288521>,  <27.147583, 32.891506, 35.534046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172300, 32.576694, 35.288521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545621, 0.541595, -0.639510,
		0.835751, -0.295389, 0.462889,
		0.061794, -0.787033, -0.613809,
		27.190838, 32.340584, 35.104378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911880, 32.687702, 35.369068>,  <27.147583, 32.891506, 35.534046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911880, 32.687702, 35.369068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655552, 32.594589, 35.076450>,  <27.501755, 32.538719, 34.900879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655552, 32.594589, 35.076450>,  <27.911880, 32.687702, 35.369068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655552, 32.594589, 35.076450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498395, 0.598641, -0.627082,
		0.583911, -0.766445, -0.267600,
		-0.640820, -0.232790, -0.731545,
		27.463305, 32.524754, 34.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254398, 32.967781, 34.806271>,  <27.911880, 32.687702, 35.369068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254398, 32.967781, 34.806271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912338, 32.871166, 34.622803>,  <27.707102, 32.813198, 34.512722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912338, 32.871166, 34.622803>,  <28.254398, 32.967781, 34.806271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912338, 32.871166, 34.622803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168947, 0.706637, -0.687110,
		0.490076, -0.665074, -0.563474,
		-0.855150, -0.241539, -0.458668,
		27.655792, 32.798706, 34.485203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453568, 32.844009, 34.136620>,  <28.254398, 32.967781, 34.806271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453568, 32.844009, 34.136620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066044, 32.941711, 34.153351>,  <27.833530, 33.000332, 34.163391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066044, 32.941711, 34.153351>,  <28.453568, 32.844009, 34.136620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066044, 32.941711, 34.153351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152783, 0.721632, -0.675207,
		-0.195106, -0.647756, -0.736441,
		-0.968809, 0.244252, 0.041829,
		27.775400, 33.014988, 34.165901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262455, 32.806606, 33.320618>,  <28.453568, 32.844009, 34.136620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262455, 32.806606, 33.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525679, 33.014656, 33.102837>,  <28.683613, 33.139488, 32.972168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525679, 33.014656, 33.102837>,  <28.262455, 32.806606, 33.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525679, 33.014656, 33.102837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740423, -0.578432, 0.342329,
		-0.136875, -0.628398, -0.765755,
		0.658057, 0.520127, -0.544453,
		28.723095, 33.170692, 32.939499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812258, 32.342045, 32.937004>,  <28.262455, 32.806606, 33.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812258, 32.342045, 32.937004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906395, 32.703976, 33.078938>,  <28.962877, 32.921135, 33.164097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906395, 32.703976, 33.078938>,  <28.812258, 32.342045, 32.937004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906395, 32.703976, 33.078938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796072, -0.388903, 0.463707,
		0.557569, 0.173344, -0.811830,
		0.235342, 0.904824, 0.354834,
		28.976997, 32.975422, 33.185387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522320, 32.441757, 32.757633>,  <28.812258, 32.342045, 32.937004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522320, 32.441757, 32.757633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409847, 32.620640, 33.097267>,  <29.342363, 32.727970, 33.301048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409847, 32.620640, 33.097267>,  <29.522320, 32.441757, 32.757633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409847, 32.620640, 33.097267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721959, -0.484323, 0.494173,
		0.632229, 0.751954, -0.186685,
		-0.281180, 0.447209, 0.849083,
		29.325493, 32.754803, 33.351994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211510, 32.611301, 32.936893>,  <29.522320, 32.441757, 32.757633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211510, 32.611301, 32.936893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962866, 32.674873, 33.243706>,  <29.813679, 32.713017, 33.427795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962866, 32.674873, 33.243706>,  <30.211510, 32.611301, 32.936893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962866, 32.674873, 33.243706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709425, -0.300974, 0.637284,
		0.332139, 0.940296, 0.074343,
		-0.621611, 0.158926, 0.767035,
		29.776382, 32.722549, 33.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511471, 33.073380, 33.580162>,  <30.211510, 32.611301, 32.936893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511471, 33.073380, 33.580162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236668, 32.797188, 33.670727>,  <30.071785, 32.631474, 33.725063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236668, 32.797188, 33.670727>,  <30.511471, 33.073380, 33.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236668, 32.797188, 33.670727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548427, -0.288291, 0.784931,
		-0.476706, 0.663422, 0.576735,
		-0.687008, -0.690478, 0.226408,
		30.030565, 32.590046, 33.738647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162355, 33.232079, 34.276836>,  <30.511471, 33.073380, 33.580162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162355, 33.232079, 34.276836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201849, 32.851776, 34.159317>,  <30.225546, 32.623596, 34.088806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201849, 32.851776, 34.159317>,  <30.162355, 33.232079, 34.276836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201849, 32.851776, 34.159317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475029, -0.214396, 0.853452,
		-0.874413, -0.223827, 0.430469,
		0.098735, -0.950755, -0.293795,
		30.231470, 32.566551, 34.071178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114258, 32.840206, 34.921597>,  <30.162355, 33.232079, 34.276836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114258, 32.840206, 34.921597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310070, 32.647312, 34.630993>,  <30.427557, 32.531574, 34.456631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310070, 32.647312, 34.630993>,  <30.114258, 32.840206, 34.921597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310070, 32.647312, 34.630993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588697, -0.431856, 0.683327,
		-0.643272, -0.762199, 0.072486,
		0.489528, -0.482237, -0.726505,
		30.456928, 32.502640, 34.413040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167044, 32.026100, 35.164310>,  <30.114258, 32.840206, 34.921597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167044, 32.026100, 35.164310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451092, 32.164478, 34.919022>,  <30.621521, 32.247505, 34.771847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451092, 32.164478, 34.919022>,  <30.167044, 32.026100, 35.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451092, 32.164478, 34.919022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689174, -0.163267, 0.705963,
		0.144108, -0.923939, -0.354358,
		0.710122, 0.345949, -0.613227,
		30.664127, 32.268265, 34.735054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523834, 32.331043, 35.431099>,  <30.167044, 32.026100, 35.164310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523834, 32.331043, 35.431099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241629, 32.047611, 35.426029>,  <29.072306, 31.877552, 35.422989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241629, 32.047611, 35.426029>,  <29.523834, 32.331043, 35.431099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241629, 32.047611, 35.426029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245394, -0.261028, 0.933620,
		-0.664855, 0.655572, 0.358041,
		-0.705514, -0.708583, -0.012672,
		29.029974, 31.835037, 35.422226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042717, 32.410210, 36.068222>,  <29.523834, 32.331043, 35.431099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042717, 32.410210, 36.068222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117809, 32.048317, 35.915272>,  <29.162865, 31.831181, 35.823502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117809, 32.048317, 35.915272>,  <29.042717, 32.410210, 36.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117809, 32.048317, 35.915272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321975, -0.311106, 0.894172,
		-0.927949, -0.290978, 0.232899,
		0.187729, -0.904735, -0.382378,
		29.174128, 31.776897, 35.800560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754827, 31.817837, 36.454178>,  <29.042717, 32.410210, 36.068222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754827, 31.817837, 36.454178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082457, 31.667549, 36.280766>,  <29.279034, 31.577377, 36.176716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082457, 31.667549, 36.280766>,  <28.754827, 31.817837, 36.454178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082457, 31.667549, 36.280766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272769, -0.409760, 0.870456,
		-0.504693, -0.831223, -0.233139,
		0.819074, -0.375720, -0.433535,
		29.328178, 31.554834, 36.150703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780363, 31.009129, 36.454109>,  <28.754827, 31.817837, 36.454178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780363, 31.009129, 36.454109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139685, 31.177935, 36.503029>,  <29.355278, 31.279219, 36.532379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139685, 31.177935, 36.503029>,  <28.780363, 31.009129, 36.454109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139685, 31.177935, 36.503029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048186, -0.371291, 0.927265,
		0.436728, -0.827071, -0.353867,
		0.898302, 0.422014, 0.122300,
		29.409176, 31.304539, 36.539719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395132, 30.557371, 36.742844>,  <28.780363, 31.009129, 36.454109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395132, 30.557371, 36.742844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410305, 30.946079, 36.835987>,  <29.419409, 31.179304, 36.891872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410305, 30.946079, 36.835987>,  <29.395132, 30.557371, 36.742844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410305, 30.946079, 36.835987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020994, -0.232199, 0.972442,
		0.999060, -0.041774, 0.011594,
		0.037931, 0.971771, 0.232857,
		29.421684, 31.237610, 36.905846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910622, 30.593451, 37.412086>,  <29.395132, 30.557371, 36.742844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910622, 30.593451, 37.412086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656910, 30.900959, 37.379395>,  <29.504683, 31.085464, 37.359779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656910, 30.900959, 37.379395>,  <29.910622, 30.593451, 37.412086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656910, 30.900959, 37.379395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117922, 0.008274, 0.992988,
		0.764059, 0.639468, 0.085407,
		-0.634278, 0.768773, -0.081729,
		29.466627, 31.131592, 37.354877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261169, 31.232822, 37.767460>,  <29.910622, 30.593451, 37.412086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261169, 31.232822, 37.767460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862537, 31.200336, 37.773598>,  <29.623358, 31.180845, 37.777279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862537, 31.200336, 37.773598>,  <30.261169, 31.232822, 37.767460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862537, 31.200336, 37.773598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029989, -0.182291, 0.982787,
		-0.077019, 0.979885, 0.184103,
		-0.996579, -0.081214, 0.015346,
		29.563564, 31.175972, 37.778202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830608, 31.610794, 38.032482>,  <30.261169, 31.232822, 37.767460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830608, 31.610794, 38.032482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146038, 31.840139, 38.121387>,  <31.335297, 31.977747, 38.174732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146038, 31.840139, 38.121387>,  <30.830608, 31.610794, 38.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146038, 31.840139, 38.121387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240835, 0.044610, -0.969540,
		-0.565815, 0.818085, -0.102908,
		0.788576, 0.573364, 0.222264,
		31.382610, 32.012150, 38.188068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808619, 32.264259, 37.556416>,  <30.830608, 31.610794, 38.032482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808619, 32.264259, 37.556416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188259, 32.197483, 37.663254>,  <31.416042, 32.157417, 37.727356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188259, 32.197483, 37.663254>,  <30.808619, 32.264259, 37.556416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188259, 32.197483, 37.663254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286911, 0.108330, -0.951813,
		0.129965, 0.979997, 0.150714,
		0.949100, -0.166944, 0.267092,
		31.472990, 32.147400, 37.743382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128521, 32.660290, 37.183117>,  <30.808619, 32.264259, 37.556416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128521, 32.660290, 37.183117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434015, 32.435268, 37.309757>,  <31.617311, 32.300255, 37.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434015, 32.435268, 37.309757>,  <31.128521, 32.660290, 37.183117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434015, 32.435268, 37.309757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391809, 0.014205, -0.919937,
		0.513021, 0.826636, 0.231264,
		0.763738, -0.562558, 0.316596,
		31.663137, 32.266502, 37.404736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672140, 32.832882, 36.721607>,  <31.128521, 32.660290, 37.183117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672140, 32.832882, 36.721607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811640, 32.502239, 36.898281>,  <31.895340, 32.303852, 37.004288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811640, 32.502239, 36.898281>,  <31.672140, 32.832882, 36.721607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811640, 32.502239, 36.898281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492703, -0.239194, -0.836678,
		0.797256, 0.509412, 0.323855,
		0.348750, -0.826611, 0.441688,
		31.916265, 32.254257, 37.030788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325119, 32.911140, 36.587875>,  <31.672140, 32.832882, 36.721607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325119, 32.911140, 36.587875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220947, 32.528557, 36.640572>,  <32.158443, 32.299007, 36.672188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220947, 32.528557, 36.640572>,  <32.325119, 32.911140, 36.587875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220947, 32.528557, 36.640572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510986, -0.252312, -0.821725,
		0.819188, -0.146687, 0.554449,
		-0.260430, -0.956463, 0.131736,
		32.142818, 32.241619, 36.680092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885406, 32.563824, 36.469444>,  <32.325119, 32.911140, 36.587875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885406, 32.563824, 36.469444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608223, 32.281948, 36.408485>,  <32.441914, 32.112823, 36.371910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608223, 32.281948, 36.408485>,  <32.885406, 32.563824, 36.469444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608223, 32.281948, 36.408485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362628, -0.157967, -0.918448,
		0.623150, -0.691705, 0.365005,
		-0.692954, -0.704692, -0.152395,
		32.400337, 32.070541, 36.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294460, 31.945108, 36.215611>,  <32.885406, 32.563824, 36.469444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294460, 31.945108, 36.215611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910183, 31.908895, 36.110638>,  <32.679615, 31.887167, 36.047653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910183, 31.908895, 36.110638>,  <33.294460, 31.945108, 36.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910183, 31.908895, 36.110638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264683, -0.013616, -0.964239,
		0.083723, -0.995800, 0.037043,
		-0.960694, -0.090534, -0.262432,
		32.621975, 31.881735, 36.031910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289600, 31.481482, 35.694519>,  <33.294460, 31.945108, 36.215611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289600, 31.481482, 35.694519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928482, 31.647963, 35.651199>,  <32.711811, 31.747850, 35.625206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928482, 31.647963, 35.651199>,  <33.289600, 31.481482, 35.694519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928482, 31.647963, 35.651199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157630, 0.085938, -0.983752,
		-0.400132, -0.905202, -0.143190,
		-0.902800, 0.416202, -0.108300,
		32.657642, 31.772823, 35.618710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930904, 31.164549, 35.171600>,  <33.289600, 31.481482, 35.694519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930904, 31.164549, 35.171600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753658, 31.523100, 35.166561>,  <32.647312, 31.738230, 35.163536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753658, 31.523100, 35.166561>,  <32.930904, 31.164549, 35.171600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753658, 31.523100, 35.166561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094487, 0.032725, -0.994988,
		-0.891472, -0.442083, -0.099197,
		-0.443114, 0.896377, -0.012597,
		32.620724, 31.792013, 35.162781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633915, 31.159050, 34.584000>,  <32.930904, 31.164549, 35.171600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633915, 31.159050, 34.584000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604984, 31.547430, 34.675232>,  <32.587627, 31.780458, 34.729973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604984, 31.547430, 34.675232>,  <32.633915, 31.159050, 34.584000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604984, 31.547430, 34.675232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043080, 0.231507, -0.971879,
		-0.996450, -0.060468, -0.058573,
		-0.072327, 0.970952, 0.228081,
		32.583286, 31.838717, 34.743656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101757, 31.514055, 34.129074>,  <32.633915, 31.159050, 34.584000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101757, 31.514055, 34.129074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326168, 31.816473, 34.263916>,  <32.460815, 31.997925, 34.344822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326168, 31.816473, 34.263916>,  <32.101757, 31.514055, 34.129074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326168, 31.816473, 34.263916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059049, 0.369642, -0.927296,
		-0.825686, 0.540147, 0.162737,
		0.561031, 0.756046, 0.337104,
		32.494476, 32.043285, 34.365047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859552, 32.183155, 33.726036>,  <32.101757, 31.514055, 34.129074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859552, 32.183155, 33.726036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206566, 32.268749, 33.905632>,  <32.414776, 32.320107, 34.013390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206566, 32.268749, 33.905632>,  <31.859552, 32.183155, 33.726036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206566, 32.268749, 33.905632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173128, 0.716349, -0.675923,
		-0.466274, 0.664119, 0.584410,
		0.867534, 0.213987, 0.448992,
		32.466827, 32.332947, 34.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832493, 32.826378, 33.883240>,  <31.859552, 32.183155, 33.726036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832493, 32.826378, 33.883240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216885, 32.732338, 33.824932>,  <32.447521, 32.675915, 33.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216885, 32.732338, 33.824932>,  <31.832493, 32.826378, 33.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216885, 32.732338, 33.824932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090724, 0.765668, -0.636805,
		0.261324, 0.598731, 0.757120,
		0.960978, -0.235101, -0.145768,
		32.505177, 32.661808, 33.781200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151340, 33.394268, 33.936089>,  <31.832493, 32.826378, 33.883240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151340, 33.394268, 33.936089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408333, 33.170078, 33.727058>,  <32.562531, 33.035564, 33.601643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408333, 33.170078, 33.727058>,  <32.151340, 33.394268, 33.936089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408333, 33.170078, 33.727058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248623, 0.797516, -0.549686,
		0.724844, 0.223242, 0.651739,
		0.642485, -0.560474, -0.522572,
		32.601078, 33.001938, 33.570286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756947, 33.860847, 33.876987>,  <32.151340, 33.394268, 33.936089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756947, 33.860847, 33.876987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 33.577862, 33.598415>,  <32.833969, 33.408070, 33.431271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 33.577862, 33.598415>,  <32.756947, 33.860847, 33.876987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805084, 33.577862, 33.598415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323469, 0.691188, -0.646240,
		0.938554, -0.147501, 0.312024,
		0.120347, -0.707462, -0.696430,
		32.841187, 33.365623, 33.389488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379757, 33.959808, 33.636597>,  <32.756947, 33.860847, 33.876987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379757, 33.959808, 33.636597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193401, 33.775269, 33.334576>,  <33.081589, 33.664543, 33.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193401, 33.775269, 33.334576>,  <33.379757, 33.959808, 33.636597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193401, 33.775269, 33.334576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431629, 0.626416, -0.649076,
		0.772428, -0.628300, -0.092708,
		-0.465888, -0.461348, -0.755054,
		33.053635, 33.636864, 33.108059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762150, 34.245907, 33.143280>,  <33.379757, 33.959808, 33.636597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762150, 34.245907, 33.143280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499180, 34.035236, 32.927723>,  <33.341396, 33.908836, 32.798389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499180, 34.035236, 32.927723>,  <33.762150, 34.245907, 33.143280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499180, 34.035236, 32.927723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236977, 0.534369, -0.811352,
		0.715286, -0.661109, -0.226498,
		-0.657425, -0.526674, -0.538894,
		33.301952, 33.877235, 32.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096523, 33.947346, 32.391109>,  <33.762150, 34.245907, 33.143280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096523, 33.947346, 32.391109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702690, 34.015144, 32.373848>,  <33.466389, 34.055824, 32.363491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702690, 34.015144, 32.373848>,  <34.096523, 33.947346, 32.391109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702690, 34.015144, 32.373848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131168, 0.552355, -0.823224,
		-0.115699, -0.816195, -0.566074,
		-0.984586, 0.169497, -0.043152,
		33.407314, 34.065994, 32.360901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914932, 34.124584, 31.629972>,  <34.096523, 33.947346, 32.391109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914932, 34.124584, 31.629972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573429, 34.234615, 31.806805>,  <33.368526, 34.300632, 31.912903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573429, 34.234615, 31.806805>,  <33.914932, 34.124584, 31.629972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573429, 34.234615, 31.806805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084605, 0.764479, -0.639073,
		-0.513752, -0.583015, -0.629407,
		-0.853757, 0.275074, 0.442079,
		33.317303, 34.317139, 31.939428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387936, 34.248222, 31.211050>,  <33.914932, 34.124584, 31.629972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387936, 34.248222, 31.211050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249748, 34.479130, 31.506998>,  <33.166836, 34.617676, 31.684566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249748, 34.479130, 31.506998>,  <33.387936, 34.248222, 31.211050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249748, 34.479130, 31.506998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115860, 0.756144, -0.644067,
		-0.931252, -0.308225, -0.194340,
		-0.345466, 0.577272, 0.739872,
		33.146107, 34.652313, 31.728960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685875, 34.412521, 30.939682>,  <33.387936, 34.248222, 31.211050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685875, 34.412521, 30.939682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754337, 34.666435, 31.241077>,  <32.795414, 34.818783, 31.421915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754337, 34.666435, 31.241077>,  <32.685875, 34.412521, 30.939682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754337, 34.666435, 31.241077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339746, 0.755894, -0.559640,
		-0.924812, -0.160208, 0.345044,
		0.171158, 0.634789, 0.753490,
		32.805683, 34.856873, 31.467125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075714, 34.779129, 31.129564>,  <32.685875, 34.412521, 30.939682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075714, 34.779129, 31.129564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366741, 35.007946, 31.281038>,  <32.541359, 35.145237, 31.371923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366741, 35.007946, 31.281038>,  <32.075714, 34.779129, 31.129564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366741, 35.007946, 31.281038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445518, 0.813745, -0.373272,
		-0.521683, 0.102870, 0.846915,
		0.727571, 0.572046, 0.378687,
		32.585014, 35.179562, 31.394644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704329, 35.356289, 31.437918>,  <32.075714, 34.779129, 31.129564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704329, 35.356289, 31.437918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076469, 35.481422, 31.361412>,  <32.299755, 35.556503, 31.315508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076469, 35.481422, 31.361412>,  <31.704329, 35.356289, 31.437918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076469, 35.481422, 31.361412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366671, 0.794839, -0.483510,
		0.000766, 0.519966, 0.854187,
		0.930350, 0.312835, -0.191265,
		32.355576, 35.575272, 31.304033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650549, 36.031597, 31.638367>,  <31.704329, 35.356289, 31.437918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650549, 36.031597, 31.638367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960545, 35.967754, 31.393770>,  <32.146542, 35.929447, 31.247013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960545, 35.967754, 31.393770>,  <31.650549, 36.031597, 31.638367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960545, 35.967754, 31.393770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330142, 0.722817, -0.607077,
		0.538889, 0.672356, 0.507481,
		0.774987, -0.159606, -0.611490,
		32.193039, 35.919872, 31.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965309, 36.672577, 31.496588>,  <31.650549, 36.031597, 31.638367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965309, 36.672577, 31.496588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076534, 36.436268, 31.193623>,  <32.143269, 36.294483, 31.011845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076534, 36.436268, 31.193623>,  <31.965309, 36.672577, 31.496588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076534, 36.436268, 31.193623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176921, 0.743520, -0.644885,
		0.944129, 0.313322, 0.102227,
		0.278065, -0.590769, -0.757412,
		32.159954, 36.259037, 30.966398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241570, 37.134125, 31.117085>,  <31.965309, 36.672577, 31.496588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241570, 37.134125, 31.117085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180054, 36.823959, 30.872110>,  <32.143143, 36.637859, 30.725126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180054, 36.823959, 30.872110>,  <32.241570, 37.134125, 31.117085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180054, 36.823959, 30.872110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315138, 0.625934, -0.713368,
		0.936501, 0.083290, -0.340628,
		-0.153794, -0.775416, -0.612436,
		32.133915, 36.591335, 30.688379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612816, 37.242882, 30.438484>,  <32.241570, 37.134125, 31.117085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612816, 37.242882, 30.438484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322094, 36.980747, 30.356218>,  <32.147663, 36.823467, 30.306858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322094, 36.980747, 30.356218>,  <32.612816, 37.242882, 30.438484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322094, 36.980747, 30.356218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375305, 0.629696, -0.680169,
		0.575243, -0.417161, -0.703614,
		-0.726802, -0.655332, -0.205665,
		32.104053, 36.784149, 30.294519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540615, 37.220997, 29.686743>,  <32.612816, 37.242882, 30.438484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540615, 37.220997, 29.686743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193481, 37.088856, 29.835190>,  <31.985201, 37.009571, 29.924257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193481, 37.088856, 29.835190>,  <32.540615, 37.220997, 29.686743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193481, 37.088856, 29.835190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495517, 0.520758, -0.695179,
		0.036390, -0.787197, -0.615627,
		-0.867836, -0.330351, 0.371119,
		31.933130, 36.989750, 29.946526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243038, 37.031750, 29.199368>,  <32.540615, 37.220997, 29.686743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243038, 37.031750, 29.199368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925562, 37.068424, 29.439915>,  <31.735075, 37.090427, 29.584244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925562, 37.068424, 29.439915>,  <32.243038, 37.031750, 29.199368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925562, 37.068424, 29.439915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573589, 0.216455, -0.790027,
		-0.202604, -0.971978, -0.119208,
		-0.793692, 0.091686, 0.601370,
		31.687454, 37.095928, 29.620325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790028, 36.592224, 28.937815>,  <32.243038, 37.031750, 29.199368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790028, 36.592224, 28.937815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569658, 36.854443, 29.144405>,  <31.437437, 37.011772, 29.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569658, 36.854443, 29.144405>,  <31.790028, 36.592224, 28.937815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569658, 36.854443, 29.144405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636886, 0.069677, -0.767803,
		-0.539314, -0.751937, 0.379120,
		-0.550923, 0.655542, 0.516476,
		31.404381, 37.051105, 29.299349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198313, 36.490295, 28.683718>,  <31.790028, 36.592224, 28.937815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198313, 36.490295, 28.683718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120714, 36.841339, 28.859066>,  <31.074156, 37.051964, 28.964275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120714, 36.841339, 28.859066>,  <31.198313, 36.490295, 28.683718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120714, 36.841339, 28.859066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799205, 0.117751, -0.589411,
		-0.568890, -0.464693, 0.678546,
		-0.193996, 0.877608, 0.438372,
		31.062515, 37.104622, 28.990578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515282, 36.545391, 28.629871>,  <31.198313, 36.490295, 28.683718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515282, 36.545391, 28.629871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604877, 36.928162, 28.703756>,  <30.658634, 37.157825, 28.748087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604877, 36.928162, 28.703756>,  <30.515282, 36.545391, 28.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604877, 36.928162, 28.703756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727747, 0.290289, -0.621383,
		-0.648239, 0.004758, 0.761422,
		0.223989, 0.956927, 0.184714,
		30.672073, 37.215240, 28.759171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892153, 36.861717, 28.717192>,  <30.515282, 36.545391, 28.629871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892153, 36.861717, 28.717192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149704, 37.158726, 28.643347>,  <30.304235, 37.336929, 28.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149704, 37.158726, 28.643347>,  <29.892153, 36.861717, 28.717192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149704, 37.158726, 28.643347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624198, 0.370227, -0.687974,
		-0.442487, 0.558207, 0.701862,
		0.643880, 0.742521, -0.184611,
		30.342869, 37.381481, 28.587963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533110, 37.367420, 28.570038>,  <29.892153, 36.861717, 28.717192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533110, 37.367420, 28.570038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872065, 37.514038, 28.416376>,  <30.075438, 37.602009, 28.324179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872065, 37.514038, 28.416376>,  <29.533110, 37.367420, 28.570038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872065, 37.514038, 28.416376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525391, 0.474185, -0.706480,
		-0.076797, 0.800495, 0.594400,
		0.847388, 0.366548, -0.384156,
		30.126282, 37.624001, 28.301128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523569, 38.100361, 28.597794>,  <29.533110, 37.367420, 28.570038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523569, 38.100361, 28.597794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750948, 38.002369, 28.283632>,  <29.887375, 37.943573, 28.095137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750948, 38.002369, 28.283632>,  <29.523569, 38.100361, 28.597794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750948, 38.002369, 28.283632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429241, 0.726102, -0.537149,
		0.701870, 0.642467, 0.307596,
		0.568446, -0.244976, -0.785402,
		29.921482, 37.928875, 28.048012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039171, 38.633492, 28.465101>,  <29.523569, 38.100361, 28.597794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039171, 38.633492, 28.465101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902559, 38.454102, 28.134712>,  <29.820593, 38.346466, 27.936480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902559, 38.454102, 28.134712>,  <30.039171, 38.633492, 28.465101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902559, 38.454102, 28.134712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352684, 0.875746, -0.329669,
		0.871186, 0.178711, -0.457272,
		-0.341539, -0.448475, -0.825966,
		29.800100, 38.319561, 27.886921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990507, 39.164268, 28.040369>,  <30.039171, 38.633492, 28.465101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990507, 39.164268, 28.040369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801910, 38.899837, 27.806898>,  <29.688753, 38.741180, 27.666817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801910, 38.899837, 27.806898>,  <29.990507, 39.164268, 28.040369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801910, 38.899837, 27.806898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592980, 0.727554, -0.345021,
		0.652740, 0.183434, -0.735039,
		-0.471491, -0.661073, -0.583676,
		29.660463, 38.701515, 27.631796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982603, 39.555771, 27.437616>,  <29.990507, 39.164268, 28.040369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982603, 39.555771, 27.437616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738802, 39.262756, 27.316362>,  <29.592522, 39.086948, 27.243610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738802, 39.262756, 27.316362>,  <29.982603, 39.555771, 27.437616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738802, 39.262756, 27.316362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466908, 0.640706, -0.609502,
		0.640706, -0.229956, -0.732541,
		0.609502, 0.732541, 0.303136,
		29.555952, 39.042995, 27.225422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048100, 39.439972, 26.717714>,  <29.982603, 39.555771, 27.437616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048100, 39.439972, 26.717714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675964, 39.313812, 26.792543>,  <29.452682, 39.238117, 26.837440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675964, 39.313812, 26.792543>,  <30.048100, 39.439972, 26.717714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675964, 39.313812, 26.792543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360256, 0.690869, -0.626830,
		0.068457, -0.650557, -0.756365,
		-0.930339, -0.315396, 0.187072,
		29.396862, 39.219193, 26.848665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776485, 39.655869, 26.119904>,  <30.048100, 39.439972, 26.717714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776485, 39.655869, 26.119904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466370, 39.614105, 26.369070>,  <29.280300, 39.589046, 26.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466370, 39.614105, 26.369070>,  <29.776485, 39.655869, 26.119904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466370, 39.614105, 26.369070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507307, 0.690448, -0.515675,
		-0.376249, -0.715808, -0.588266,
		-0.775291, -0.104409, 0.622915,
		29.233782, 39.582783, 26.555944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111063, 39.573715, 25.697100>,  <29.776485, 39.655869, 26.119904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111063, 39.573715, 25.697100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994799, 39.702736, 26.057426>,  <28.925039, 39.780148, 26.273623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994799, 39.702736, 26.057426>,  <29.111063, 39.573715, 25.697100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994799, 39.702736, 26.057426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663398, 0.610502, -0.432656,
		-0.689506, -0.723358, 0.036531,
		-0.290663, 0.322553, 0.900819,
		28.907600, 39.799503, 26.327673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434547, 39.770508, 25.584959>,  <29.111063, 39.573715, 25.697100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434547, 39.770508, 25.584959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513226, 39.962406, 25.926991>,  <28.560432, 40.077545, 26.132210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513226, 39.962406, 25.926991>,  <28.434547, 39.770508, 25.584959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513226, 39.962406, 25.926991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815302, 0.564452, -0.129140,
		-0.544604, -0.671744, 0.502162,
		0.196697, 0.479744, 0.855077,
		28.572235, 40.106331, 26.183514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785789, 39.750893, 25.969154>,  <28.434547, 39.770508, 25.584959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785789, 39.750893, 25.969154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009686, 40.059975, 26.088902>,  <28.144022, 40.245422, 26.160749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009686, 40.059975, 26.088902>,  <27.785789, 39.750893, 25.969154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009686, 40.059975, 26.088902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714874, 0.632973, -0.297155,
		-0.419105, -0.047682, 0.906685,
		0.559738, 0.772704, 0.299369,
		28.177607, 40.291786, 26.178713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350964, 40.290112, 26.335859>,  <27.785789, 39.750893, 25.969154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350964, 40.290112, 26.335859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675917, 40.475391, 26.194164>,  <27.870888, 40.586559, 26.109148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675917, 40.475391, 26.194164>,  <27.350964, 40.290112, 26.335859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675917, 40.475391, 26.194164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549536, 0.811333, -0.199373,
		0.195053, 0.356632, 0.913656,
		0.812382, 0.463198, -0.354235,
		27.919632, 40.614349, 26.087894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376852, 40.901730, 26.628036>,  <27.350964, 40.290112, 26.335859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376852, 40.901730, 26.628036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553665, 40.938061, 26.271080>,  <27.659752, 40.959858, 26.056906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553665, 40.938061, 26.271080>,  <27.376852, 40.901730, 26.628036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553665, 40.938061, 26.271080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452210, 0.881750, -0.134252,
		0.774671, 0.462891, 0.430833,
		0.442031, 0.090825, -0.892390,
		27.686274, 40.965309, 26.003363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861050, 41.509804, 26.471972>,  <27.376852, 40.901730, 26.628036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861050, 41.509804, 26.471972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652304, 41.368073, 26.161589>,  <27.527056, 41.283035, 25.975359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652304, 41.368073, 26.161589>,  <27.861050, 41.509804, 26.471972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652304, 41.368073, 26.161589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325516, 0.923535, -0.202787,
		0.788476, 0.146758, -0.597301,
		-0.521867, -0.354324, -0.775957,
		27.495743, 41.261776, 25.928801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959555, 41.879570, 27.055084>,  <27.861050, 41.509804, 26.471972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959555, 41.879570, 27.055084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140547, 42.236210, 27.062113>,  <28.249142, 42.450195, 27.066330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140547, 42.236210, 27.062113>,  <27.959555, 41.879570, 27.055084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140547, 42.236210, 27.062113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552782, 0.295886, -0.779027,
		-0.699780, 0.342782, 0.626744,
		0.452481, 0.891601, 0.017572,
		28.276291, 42.503689, 27.067385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499414, 42.429688, 27.115334>,  <27.959555, 41.879570, 27.055084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499414, 42.429688, 27.115334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832190, 42.530125, 26.917414>,  <28.031855, 42.590385, 26.798662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832190, 42.530125, 26.917414>,  <27.499414, 42.429688, 27.115334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832190, 42.530125, 26.917414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537128, 0.140764, -0.831672,
		-0.139177, 0.957673, 0.251977,
		0.831939, 0.251094, -0.494802,
		28.081772, 42.605453, 26.768972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232155, 43.045429, 26.639036>,  <27.499414, 42.429688, 27.115334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232155, 43.045429, 26.639036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586567, 42.903526, 26.519636>,  <27.799213, 42.818386, 26.447996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586567, 42.903526, 26.519636>,  <27.232155, 43.045429, 26.639036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586567, 42.903526, 26.519636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233165, 0.215532, -0.948251,
		0.400733, 0.909777, 0.108251,
		0.886029, -0.354756, -0.298499,
		27.852375, 42.797100, 26.430086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573469, 43.417828, 26.040590>,  <27.232155, 43.045429, 26.639036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573469, 43.417828, 26.040590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667295, 43.029198, 26.027809>,  <27.723591, 42.796021, 26.020140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667295, 43.029198, 26.027809>,  <27.573469, 43.417828, 26.040590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667295, 43.029198, 26.027809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181179, -0.011399, -0.983384,
		0.955067, 0.236458, -0.178703,
		0.234566, -0.971575, -0.031954,
		27.737665, 42.737724, 26.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268921, 43.250893, 26.092882>,  <27.573469, 43.417828, 26.040590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268921, 43.250893, 26.092882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416157, 43.226559, 25.721764>,  <28.504498, 43.211960, 25.499092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416157, 43.226559, 25.721764>,  <28.268921, 43.250893, 26.092882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416157, 43.226559, 25.721764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783738, 0.516586, -0.344808,
		0.500264, 0.854071, 0.142471,
		0.368090, -0.060835, -0.927798,
		28.526585, 43.208309, 25.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978128, 43.327637, 26.477631>,  <28.268921, 43.250893, 26.092882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978128, 43.327637, 26.477631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637518, 43.190018, 26.635889>,  <28.433151, 43.107445, 26.730844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637518, 43.190018, 26.635889>,  <28.978128, 43.327637, 26.477631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637518, 43.190018, 26.635889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474779, -0.185795, 0.860270,
		-0.222465, 0.920386, 0.321556,
		-0.851525, -0.344048, 0.395647,
		28.382061, 43.086803, 26.754583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712837, 43.766209, 27.098406>,  <28.978128, 43.327637, 26.477631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712837, 43.766209, 27.098406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584892, 43.387730, 27.117990>,  <28.508125, 43.160641, 27.129742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584892, 43.387730, 27.117990>,  <28.712837, 43.766209, 27.098406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584892, 43.387730, 27.117990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468503, -0.113036, 0.876200,
		-0.823525, 0.303201, 0.479453,
		-0.319861, -0.946199, 0.048963,
		28.488934, 43.103870, 27.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462824, 43.709618, 27.722208>,  <28.712837, 43.766209, 27.098406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462824, 43.709618, 27.722208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509691, 43.329559, 27.606623>,  <28.537811, 43.101524, 27.537271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509691, 43.329559, 27.606623>,  <28.462824, 43.709618, 27.722208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509691, 43.329559, 27.606623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377581, -0.226495, 0.897848,
		-0.918533, -0.214308, 0.332218,
		0.117171, -0.950143, -0.288962,
		28.544842, 43.044518, 27.519934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250902, 43.362255, 28.298120>,  <28.462824, 43.709618, 27.722208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250902, 43.362255, 28.298120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446957, 43.080162, 28.093214>,  <28.564589, 42.910908, 27.970270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446957, 43.080162, 28.093214>,  <28.250902, 43.362255, 28.298120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446957, 43.080162, 28.093214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499463, -0.254415, 0.828136,
		-0.714356, -0.661757, 0.227539,
		0.490135, -0.705231, -0.512266,
		28.593998, 42.868591, 27.939535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187771, 42.847363, 28.691763>,  <28.250902, 43.362255, 28.298120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187771, 42.847363, 28.691763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509089, 42.770344, 28.466324>,  <28.701880, 42.724133, 28.331060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509089, 42.770344, 28.466324>,  <28.187771, 42.847363, 28.691763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509089, 42.770344, 28.466324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451699, -0.419807, 0.787230,
		-0.388177, -0.886955, -0.250258,
		0.803298, -0.192543, -0.563596,
		28.750078, 42.712582, 28.297245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314676, 42.140682, 28.846708>,  <28.187771, 42.847363, 28.691763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314676, 42.140682, 28.846708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649549, 42.290833, 28.687599>,  <28.850473, 42.380920, 28.592134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649549, 42.290833, 28.687599>,  <28.314676, 42.140682, 28.846708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649549, 42.290833, 28.687599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531627, -0.387703, 0.753033,
		0.128450, -0.841892, -0.524136,
		0.837182, 0.375372, -0.397772,
		28.900703, 42.403442, 28.568268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792271, 41.621979, 29.015682>,  <28.314676, 42.140682, 28.846708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792271, 41.621979, 29.015682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038260, 41.926716, 28.934292>,  <29.185852, 42.109558, 28.885458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038260, 41.926716, 28.934292>,  <28.792271, 41.621979, 29.015682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038260, 41.926716, 28.934292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597483, -0.281785, 0.750741,
		0.514613, -0.583256, -0.628480,
		0.614970, 0.761847, -0.203475,
		29.222750, 42.155270, 28.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495157, 41.315144, 28.917824>,  <28.792271, 41.621979, 29.015682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495157, 41.315144, 28.917824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521414, 41.701328, 29.018682>,  <29.537169, 41.933037, 29.079197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521414, 41.701328, 29.018682>,  <29.495157, 41.315144, 28.917824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521414, 41.701328, 29.018682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650900, -0.232959, 0.722537,
		0.756320, 0.116693, -0.643710,
		0.065644, 0.965460, 0.252147,
		29.541107, 41.990967, 29.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161179, 41.419731, 29.169355>,  <29.495157, 41.315144, 28.917824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161179, 41.419731, 29.169355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006073, 41.759182, 29.313286>,  <29.913010, 41.962852, 29.399645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006073, 41.759182, 29.313286>,  <30.161179, 41.419731, 29.169355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006073, 41.759182, 29.313286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646256, -0.028059, 0.762605,
		0.657261, 0.528251, -0.537549,
		-0.387763, 0.848625, 0.359827,
		29.889744, 42.013771, 29.421234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725906, 41.781384, 29.438442>,  <30.161179, 41.419731, 29.169355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725906, 41.781384, 29.438442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395081, 41.911884, 29.621534>,  <30.196585, 41.990185, 29.731390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395081, 41.911884, 29.621534>,  <30.725906, 41.781384, 29.438442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395081, 41.911884, 29.621534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430268, -0.156544, 0.889024,
		0.361705, 0.932229, -0.010905,
		-0.827066, 0.326256, 0.457731,
		30.146961, 42.009762, 29.758854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929897, 42.211689, 29.964087>,  <30.725906, 41.781384, 29.438442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929897, 42.211689, 29.964087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565666, 42.072598, 30.053473>,  <30.347128, 41.989143, 30.107103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565666, 42.072598, 30.053473>,  <30.929897, 42.211689, 29.964087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565666, 42.072598, 30.053473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331734, -0.292270, 0.896956,
		-0.246584, 0.890878, 0.381487,
		-0.910576, -0.347727, 0.223465,
		30.292494, 41.968281, 30.120512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954809, 42.302414, 30.649794>,  <30.929897, 42.211689, 29.964087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954809, 42.302414, 30.649794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629448, 42.083195, 30.571798>,  <30.434231, 41.951664, 30.525002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629448, 42.083195, 30.571798>,  <30.954809, 42.302414, 30.649794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629448, 42.083195, 30.571798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209676, -0.588899, 0.780534,
		-0.542597, 0.594005, 0.593925,
		-0.813403, -0.548047, -0.194986,
		30.385427, 41.918781, 30.513302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781168, 42.000797, 31.267391>,  <30.954809, 42.302414, 30.649794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781168, 42.000797, 31.267391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575907, 41.770603, 31.012680>,  <30.452749, 41.632484, 30.859854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575907, 41.770603, 31.012680>,  <30.781168, 42.000797, 31.267391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575907, 41.770603, 31.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114336, -0.781132, 0.613808,
		-0.850647, 0.242171, 0.466640,
		-0.513154, -0.575488, -0.636779,
		30.421961, 41.597958, 30.821646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363430, 41.536514, 31.687105>,  <30.781168, 42.000797, 31.267391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363430, 41.536514, 31.687105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379869, 41.352211, 31.332476>,  <30.389732, 41.241631, 31.119698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379869, 41.352211, 31.332476>,  <30.363430, 41.536514, 31.687105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379869, 41.352211, 31.332476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107803, -0.880101, 0.462387,
		-0.993322, -0.114579, 0.013500,
		0.041098, -0.460754, -0.886576,
		30.392199, 41.213985, 31.066504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752558, 41.015442, 31.598967>,  <30.363430, 41.536514, 31.687105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752558, 41.015442, 31.598967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016279, 40.875530, 31.332741>,  <30.174511, 40.791584, 31.173006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016279, 40.875530, 31.332741>,  <29.752558, 41.015442, 31.598967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016279, 40.875530, 31.332741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014065, -0.890783, 0.454212,
		-0.751747, -0.290102, -0.592214,
		0.659302, -0.349782, -0.665563,
		30.214069, 40.770596, 31.133072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551451, 40.407684, 31.537493>,  <29.752558, 41.015442, 31.598967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551451, 40.407684, 31.537493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904585, 40.367649, 31.353935>,  <30.116467, 40.343628, 31.243801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904585, 40.367649, 31.353935>,  <29.551451, 40.407684, 31.537493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904585, 40.367649, 31.353935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137739, -0.878906, 0.456676,
		-0.449028, -0.466378, -0.762145,
		0.882837, -0.100083, -0.458892,
		30.169436, 40.337624, 31.216269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606565, 39.676945, 31.424520>,  <29.551451, 40.407684, 31.537493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606565, 39.676945, 31.424520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982407, 39.810555, 31.394655>,  <30.207911, 39.890720, 31.376736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982407, 39.810555, 31.394655>,  <29.606565, 39.676945, 31.424520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982407, 39.810555, 31.394655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324519, -0.800100, 0.504506,
		0.108779, -0.498265, -0.860174,
		0.939603, 0.334023, -0.074662,
		30.264288, 39.910763, 31.372257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932459, 39.166676, 30.964079>,  <29.606565, 39.676945, 31.424520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932459, 39.166676, 30.964079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202250, 39.361763, 31.185787>,  <30.364124, 39.478813, 31.318811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202250, 39.361763, 31.185787>,  <29.932459, 39.166676, 30.964079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202250, 39.361763, 31.185787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277442, -0.863152, 0.421894,
		0.684182, -0.130781, -0.717490,
		0.674478, 0.487714, 0.554269,
		30.404593, 39.508076, 31.352068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557062, 38.783897, 30.857626>,  <29.932459, 39.166676, 30.964079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557062, 38.783897, 30.857626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581503, 38.997532, 31.194912>,  <30.596167, 39.125713, 31.397284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581503, 38.997532, 31.194912>,  <30.557062, 38.783897, 30.857626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581503, 38.997532, 31.194912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183273, -0.836435, 0.516514,
		0.981162, 0.122979, -0.148991,
		0.061101, 0.534090, 0.843217,
		30.599833, 39.157761, 31.447878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190813, 38.592060, 31.256849>,  <30.557062, 38.783897, 30.857626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190813, 38.592060, 31.256849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947737, 38.763229, 31.524460>,  <30.801891, 38.865929, 31.685026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947737, 38.763229, 31.524460>,  <31.190813, 38.592060, 31.256849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947737, 38.763229, 31.524460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187194, -0.741502, 0.644308,
		0.771797, 0.516778, 0.370499,
		-0.607690, 0.427920, 0.669027,
		30.765430, 38.891605, 31.725168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545444, 38.497402, 31.998684>,  <31.190813, 38.592060, 31.256849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545444, 38.497402, 31.998684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168333, 38.599510, 32.084476>,  <30.942066, 38.660774, 32.135952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168333, 38.599510, 32.084476>,  <31.545444, 38.497402, 31.998684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168333, 38.599510, 32.084476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023110, -0.591703, 0.805825,
		0.332615, 0.764672, 0.551946,
		-0.942779, 0.255274, 0.214481,
		30.885500, 38.676094, 32.148819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490740, 38.707256, 32.811253>,  <31.545444, 38.497402, 31.998684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490740, 38.707256, 32.811253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116213, 38.641785, 32.686981>,  <30.891497, 38.602501, 32.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116213, 38.641785, 32.686981>,  <31.490740, 38.707256, 32.811253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116213, 38.641785, 32.686981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162612, -0.582049, 0.796729,
		-0.311241, 0.796509, 0.518365,
		-0.936315, -0.163682, -0.310679,
		30.835318, 38.592678, 32.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121935, 38.798546, 33.461720>,  <31.490740, 38.707256, 32.811253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121935, 38.798546, 33.461720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906214, 38.581383, 33.204220>,  <30.776781, 38.451084, 33.049721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906214, 38.581383, 33.204220>,  <31.121935, 38.798546, 33.461720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906214, 38.581383, 33.204220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115949, -0.709288, 0.695318,
		-0.834093, 0.449627, 0.319570,
		-0.539301, -0.542905, -0.643746,
		30.744423, 38.418510, 33.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717285, 38.400799, 33.924526>,  <31.121935, 38.798546, 33.461720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717285, 38.400799, 33.924526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660753, 38.199749, 33.583374>,  <30.626835, 38.079121, 33.378685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660753, 38.199749, 33.583374>,  <30.717285, 38.400799, 33.924526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660753, 38.199749, 33.583374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073408, -0.853831, 0.515348,
		-0.987237, 0.135441, 0.083774,
		-0.141328, -0.502621, -0.852876,
		30.618355, 38.048962, 33.327511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135168, 38.040131, 34.071167>,  <30.717285, 38.400799, 33.924526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135168, 38.040131, 34.071167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300453, 37.853695, 33.758244>,  <30.399624, 37.741833, 33.570488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300453, 37.853695, 33.758244>,  <30.135168, 38.040131, 34.071167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300453, 37.853695, 33.758244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022307, -0.864007, 0.502984,
		-0.910360, -0.190389, -0.367417,
		0.413214, -0.466093, -0.782311,
		30.424417, 37.713867, 33.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722597, 37.477985, 33.894554>,  <30.135168, 38.040131, 34.071167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722597, 37.477985, 33.894554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070507, 37.394806, 33.715557>,  <30.279253, 37.344898, 33.608158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070507, 37.394806, 33.715557>,  <29.722597, 37.477985, 33.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070507, 37.394806, 33.715557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017627, -0.893194, 0.449327,
		-0.493131, -0.398701, -0.773213,
		0.869776, -0.207948, -0.447490,
		30.331440, 37.332420, 33.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657623, 36.865978, 33.594212>,  <29.722597, 37.477985, 33.894554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657623, 36.865978, 33.594212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050282, 36.896263, 33.664223>,  <30.285877, 36.914433, 33.706230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050282, 36.896263, 33.664223>,  <29.657623, 36.865978, 33.594212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050282, 36.896263, 33.664223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004452, -0.908464, 0.417939,
		0.190653, -0.411048, -0.891454,
		0.981647, 0.075712, 0.175031,
		30.344776, 36.918976, 33.716732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877699, 36.238903, 33.583496>,  <29.657623, 36.865978, 33.594212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877699, 36.238903, 33.583496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203686, 36.388012, 33.760975>,  <30.399279, 36.477478, 33.867462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203686, 36.388012, 33.760975>,  <29.877699, 36.238903, 33.583496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203686, 36.388012, 33.760975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136722, -0.867719, 0.477882,
		0.563146, -0.328795, -0.758129,
		0.814968, 0.372771, 0.443699,
		30.448175, 36.499844, 33.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575323, 35.845932, 33.492729>,  <29.877699, 36.238903, 33.583496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575323, 35.845932, 33.492729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643654, 36.036636, 33.837639>,  <30.684652, 36.151058, 34.044586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643654, 36.036636, 33.837639>,  <30.575323, 35.845932, 33.492729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643654, 36.036636, 33.837639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359611, -0.844938, 0.395930,
		0.917332, 0.242447, -0.315788,
		0.170829, 0.476760, 0.862274,
		30.694902, 36.179665, 34.096321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184944, 35.581779, 33.804150>,  <30.575323, 35.845932, 33.492729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184944, 35.581779, 33.804150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016253, 35.754982, 34.122810>,  <30.915037, 35.858906, 34.314007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016253, 35.754982, 34.122810>,  <31.184944, 35.581779, 33.804150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016253, 35.754982, 34.122810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345419, -0.735626, 0.582700,
		0.838350, 0.520919, 0.160665,
		-0.421729, 0.433010, 0.796647,
		30.889734, 35.884884, 34.361805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705994, 35.596771, 34.409283>,  <31.184944, 35.581779, 33.804150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705994, 35.596771, 34.409283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338282, 35.637611, 34.561337>,  <31.117655, 35.662113, 34.652569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338282, 35.637611, 34.561337>,  <31.705994, 35.596771, 34.409283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338282, 35.637611, 34.561337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223212, -0.660234, 0.717124,
		0.324193, 0.744088, 0.584151,
		-0.919280, 0.102098, 0.380132,
		31.062498, 35.668240, 34.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778763, 35.922798, 35.080372>,  <31.705994, 35.596771, 34.409283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778763, 35.922798, 35.080372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416389, 35.754459, 35.099022>,  <31.198965, 35.653454, 35.110214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416389, 35.754459, 35.099022>,  <31.778763, 35.922798, 35.080372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416389, 35.754459, 35.099022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217881, -0.368903, 0.903570,
		-0.363065, 0.828731, 0.425896,
		-0.905931, -0.420850, 0.046629,
		31.144609, 35.628204, 35.113010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507984, 36.114838, 35.730381>,  <31.778763, 35.922798, 35.080372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507984, 36.114838, 35.730381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333664, 35.770145, 35.626453>,  <31.229073, 35.563332, 35.564095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333664, 35.770145, 35.626453>,  <31.507984, 36.114838, 35.730381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333664, 35.770145, 35.626453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151520, -0.354799, 0.922583,
		-0.887198, 0.362692, 0.285190,
		-0.435799, -0.861726, -0.259822,
		31.202925, 35.511627, 35.548508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989639, 36.163898, 36.199272>,  <31.507984, 36.114838, 35.730381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989639, 36.163898, 36.199272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050257, 35.792999, 36.062309>,  <31.086628, 35.570457, 35.980133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050257, 35.792999, 36.062309>,  <30.989639, 36.163898, 36.199272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050257, 35.792999, 36.062309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144663, -0.321870, 0.935667,
		-0.977807, -0.191327, 0.085362,
		0.151543, -0.927251, -0.342405,
		31.095720, 35.514824, 35.959587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647329, 35.760334, 36.690075>,  <30.989639, 36.163898, 36.199272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647329, 35.760334, 36.690075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897444, 35.515507, 36.496418>,  <31.047512, 35.368610, 36.380222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897444, 35.515507, 36.496418>,  <30.647329, 35.760334, 36.690075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897444, 35.515507, 36.496418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293127, -0.390746, 0.872579,
		-0.723254, -0.687524, -0.064913,
		0.625284, -0.612068, -0.484141,
		31.085030, 35.331886, 36.351177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671370, 35.274239, 37.130882>,  <30.647329, 35.760334, 36.690075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671370, 35.274239, 37.130882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969948, 35.157627, 36.891605>,  <31.149096, 35.087662, 36.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969948, 35.157627, 36.891605>,  <30.671370, 35.274239, 37.130882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969948, 35.157627, 36.891605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395652, -0.528350, 0.751203,
		-0.535057, -0.797404, -0.279036,
		0.746441, -0.291535, -0.598191,
		31.193882, 35.070171, 36.712151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724728, 34.491714, 37.246815>,  <30.671370, 35.274239, 37.130882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724728, 34.491714, 37.246815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074198, 34.618328, 37.099033>,  <31.283880, 34.694298, 37.010365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074198, 34.618328, 37.099033>,  <30.724728, 34.491714, 37.246815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074198, 34.618328, 37.099033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486470, -0.558408, 0.671958,
		0.006390, -0.766802, -0.641851,
		0.873674, 0.316535, -0.369458,
		31.336300, 34.713287, 36.988197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196463, 33.845394, 37.060329>,  <30.724728, 34.491714, 37.246815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196463, 33.845394, 37.060329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402784, 34.181271, 37.128296>,  <31.526577, 34.382797, 37.169075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402784, 34.181271, 37.128296>,  <31.196463, 33.845394, 37.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402784, 34.181271, 37.128296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539492, -0.472429, 0.696964,
		0.665505, -0.267830, -0.696685,
		0.515803, 0.839689, 0.169911,
		31.557526, 34.433178, 37.179268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900654, 33.682129, 37.081421>,  <31.196463, 33.845394, 37.060329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900654, 33.682129, 37.081421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888309, 34.037724, 37.264179>,  <31.880903, 34.251080, 37.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888309, 34.037724, 37.264179>,  <31.900654, 33.682129, 37.081421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888309, 34.037724, 37.264179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497301, -0.382862, 0.778530,
		0.867029, 0.251243, -0.430277,
		-0.030863, 0.888985, 0.456896,
		31.879051, 34.304420, 37.401249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531109, 33.717628, 37.461578>,  <31.900654, 33.682129, 37.081421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531109, 33.717628, 37.461578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319542, 34.005417, 37.641624>,  <32.192600, 34.178089, 37.749653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319542, 34.005417, 37.641624>,  <32.531109, 33.717628, 37.461578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319542, 34.005417, 37.641624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576064, -0.085113, 0.812961,
		0.623213, 0.689287, -0.369444,
		-0.528919, 0.719472, 0.450117,
		32.160866, 34.221260, 37.776661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000969, 34.194229, 37.809013>,  <32.531109, 33.717628, 37.461578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000969, 34.194229, 37.809013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647469, 34.220184, 37.994389>,  <32.435368, 34.235756, 38.105614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647469, 34.220184, 37.994389>,  <33.000969, 34.194229, 37.809013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647469, 34.220184, 37.994389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453025, -0.129532, 0.882038,
		0.117261, 0.989450, 0.085079,
		-0.883752, 0.064886, 0.463434,
		32.382343, 34.239651, 38.133419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950123, 34.933407, 37.644054>,  <33.000969, 34.194229, 37.809013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950123, 34.933407, 37.644054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298000, 34.903778, 37.839256>,  <33.506725, 34.886002, 37.956379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298000, 34.903778, 37.839256>,  <32.950123, 34.933407, 37.644054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298000, 34.903778, 37.839256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342803, 0.801986, -0.489187,
		-0.355140, 0.592732, 0.722873,
		0.869691, -0.074073, 0.488008,
		33.558907, 34.881557, 37.985657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111870, 35.534359, 37.874561>,  <32.950123, 34.933407, 37.644054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111870, 35.534359, 37.874561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444118, 35.328815, 37.788754>,  <33.643467, 35.205490, 37.737270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444118, 35.328815, 37.788754>,  <33.111870, 35.534359, 37.874561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444118, 35.328815, 37.788754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377897, 0.803137, -0.460614,
		0.408978, 0.301530, 0.861288,
		0.830621, -0.513859, -0.214518,
		33.693306, 35.174656, 37.724400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552132, 36.125259, 37.715504>,  <33.111870, 35.534359, 37.874561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552132, 36.125259, 37.715504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762939, 35.807339, 37.595142>,  <33.889423, 35.616589, 37.522926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762939, 35.807339, 37.595142>,  <33.552132, 36.125259, 37.715504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762939, 35.807339, 37.595142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572556, 0.593712, -0.565408,
		0.628037, 0.125695, 0.767965,
		0.527019, -0.794800, -0.300906,
		33.921043, 35.568897, 37.504871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268425, 36.334846, 37.676815>,  <33.552132, 36.125259, 37.715504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268425, 36.334846, 37.676815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220215, 36.018822, 37.436390>,  <34.191288, 35.829208, 37.292133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220215, 36.018822, 37.436390>,  <34.268425, 36.334846, 37.676815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220215, 36.018822, 37.436390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378053, 0.523323, -0.763680,
		0.917904, -0.319281, 0.235609,
		-0.120529, -0.790058, -0.601066,
		34.184055, 35.781803, 37.256069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884960, 36.330967, 37.363716>,  <34.268425, 36.334846, 37.676815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884960, 36.330967, 37.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635994, 36.105534, 37.146473>,  <34.486614, 35.970272, 37.016129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635994, 36.105534, 37.146473>,  <34.884960, 36.330967, 37.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635994, 36.105534, 37.146473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443785, 0.317458, -0.838019,
		0.644709, -0.762622, 0.052519,
		-0.622419, -0.563585, -0.543109,
		34.449268, 35.936459, 36.983540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339378, 35.939335, 36.790188>,  <34.884960, 36.330967, 37.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339378, 35.939335, 36.790188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960880, 35.977268, 36.666500>,  <34.733780, 36.000027, 36.592285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960880, 35.977268, 36.666500>,  <35.339378, 35.939335, 36.790188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960880, 35.977268, 36.666500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323287, 0.248126, -0.913192,
		-0.009873, -0.964075, -0.265446,
		-0.946249, 0.094831, -0.309223,
		34.677006, 36.005718, 36.573734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381325, 35.700008, 36.102261>,  <35.339378, 35.939335, 36.790188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381325, 35.700008, 36.102261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015583, 35.861679, 36.112068>,  <34.796139, 35.958679, 36.117950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015583, 35.861679, 36.112068>,  <35.381325, 35.700008, 36.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015583, 35.861679, 36.112068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065850, 0.208161, -0.975875,
		-0.399526, -0.890681, -0.216948,
		-0.914354, 0.404173, 0.024514,
		34.741276, 35.982929, 36.119423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076801, 35.462677, 35.509987>,  <35.381325, 35.700008, 36.102261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076801, 35.462677, 35.509987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892105, 35.799854, 35.620438>,  <34.781288, 36.002159, 35.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892105, 35.799854, 35.620438>,  <35.076801, 35.462677, 35.509987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892105, 35.799854, 35.620438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150994, 0.381455, -0.911972,
		-0.874069, -0.379400, -0.303412,
		-0.461740, 0.842940, 0.276131,
		34.753582, 36.052738, 35.703278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613098, 35.644955, 35.014557>,  <35.076801, 35.462677, 35.509987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613098, 35.644955, 35.014557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649914, 35.990627, 35.212437>,  <34.672001, 36.198029, 35.331165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649914, 35.990627, 35.212437>,  <34.613098, 35.644955, 35.014557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649914, 35.990627, 35.212437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099830, 0.502310, -0.858905,
		-0.990739, 0.029666, 0.132502,
		0.092037, 0.864178, 0.494697,
		34.677525, 36.249882, 35.360847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968567, 36.071098, 34.752544>,  <34.613098, 35.644955, 35.014557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968567, 36.071098, 34.752544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237926, 36.319641, 34.912769>,  <34.399540, 36.468769, 35.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237926, 36.319641, 34.912769>,  <33.968567, 36.071098, 34.752544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237926, 36.319641, 34.912769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005521, 0.537580, -0.843195,
		-0.739260, 0.570016, 0.358574,
		0.673397, 0.621360, 0.400559,
		34.439945, 36.506050, 35.032936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672527, 36.813583, 34.910831>,  <33.968567, 36.071098, 34.752544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672527, 36.813583, 34.910831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067097, 36.858513, 34.862915>,  <34.303841, 36.885471, 34.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067097, 36.858513, 34.862915>,  <33.672527, 36.813583, 34.910831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067097, 36.858513, 34.862915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163597, 0.609204, -0.775955,
		-0.014179, 0.785019, 0.619309,
		0.986425, 0.112319, -0.119789,
		34.363026, 36.892208, 34.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845116, 37.593311, 34.712566>,  <33.672527, 36.813583, 34.910831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845116, 37.593311, 34.712566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202656, 37.448597, 34.606628>,  <34.417179, 37.361771, 34.543068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202656, 37.448597, 34.606628>,  <33.845116, 37.593311, 34.712566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202656, 37.448597, 34.606628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085201, 0.716984, -0.691863,
		0.440191, 0.595859, 0.671702,
		0.893853, -0.361782, -0.264842,
		34.470810, 37.340061, 34.527176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357159, 38.122219, 34.787888>,  <33.845116, 37.593311, 34.712566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357159, 38.122219, 34.787888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429546, 37.844967, 34.508797>,  <34.472980, 37.678616, 34.341343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429546, 37.844967, 34.508797>,  <34.357159, 38.122219, 34.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429546, 37.844967, 34.508797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092020, 0.718262, -0.689660,
		0.979174, 0.060602, 0.193765,
		0.180969, -0.693128, -0.697727,
		34.483837, 37.637028, 34.299477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599247, 38.533039, 34.329678>,  <34.357159, 38.122219, 34.787888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599247, 38.533039, 34.329678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591797, 38.186386, 34.130241>,  <34.587326, 37.978394, 34.010578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591797, 38.186386, 34.130241>,  <34.599247, 38.533039, 34.329678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591797, 38.186386, 34.130241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155293, 0.495136, -0.854824,
		0.987693, 0.061507, -0.143804,
		-0.018625, -0.866635, -0.498594,
		34.586208, 37.926395, 33.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992077, 38.627918, 33.697269>,  <34.599247, 38.533039, 34.329678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992077, 38.627918, 33.697269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719715, 38.338871, 33.649616>,  <34.556297, 38.165443, 33.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719715, 38.338871, 33.649616>,  <34.992077, 38.627918, 33.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719715, 38.338871, 33.649616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308670, 0.430665, -0.848086,
		0.664147, -0.540695, -0.516292,
		-0.680905, -0.722618, -0.119129,
		34.515442, 38.122086, 33.613876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025803, 38.484962, 33.009792>,  <34.992077, 38.627918, 33.697269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025803, 38.484962, 33.009792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665936, 38.342640, 33.110989>,  <34.450016, 38.257244, 33.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665936, 38.342640, 33.110989>,  <35.025803, 38.484962, 33.009792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665936, 38.342640, 33.110989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382590, 0.363399, -0.849450,
		0.210304, -0.861012, -0.463066,
		-0.899665, -0.355807, 0.252991,
		34.396034, 38.235897, 33.186886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871437, 38.144608, 32.410477>,  <35.025803, 38.484962, 33.009792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871437, 38.144608, 32.410477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536160, 38.191849, 32.623447>,  <34.334991, 38.220196, 32.751228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536160, 38.191849, 32.623447>,  <34.871437, 38.144608, 32.410477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536160, 38.191849, 32.623447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464948, 0.355497, -0.810830,
		-0.285038, -0.927186, -0.243065,
		-0.838199, 0.118105, 0.532423,
		34.284698, 38.227280, 32.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336067, 37.781422, 31.994108>,  <34.871437, 38.144608, 32.410477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336067, 37.781422, 31.994108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167778, 38.051399, 32.236576>,  <34.066803, 38.213387, 32.382057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167778, 38.051399, 32.236576>,  <34.336067, 37.781422, 31.994108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167778, 38.051399, 32.236576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523147, 0.365386, -0.769942,
		-0.741153, -0.641050, 0.199367,
		-0.420725, 0.674943, 0.606170,
		34.041561, 38.253883, 32.418427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704338, 37.816727, 31.730875>,  <34.336067, 37.781422, 31.994108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704338, 37.816727, 31.730875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730572, 38.150970, 31.949032>,  <33.746311, 38.351517, 32.079926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730572, 38.150970, 31.949032>,  <33.704338, 37.816727, 31.730875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730572, 38.150970, 31.949032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545601, 0.487663, -0.681546,
		-0.835475, -0.252867, 0.487894,
		0.065588, 0.835610, 0.545394,
		33.750248, 38.401653, 32.112652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077175, 38.035603, 31.640957>,  <33.704338, 37.816727, 31.730875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077175, 38.035603, 31.640957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299099, 38.351418, 31.745893>,  <33.432251, 38.540905, 31.808855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299099, 38.351418, 31.745893>,  <33.077175, 38.035603, 31.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299099, 38.351418, 31.745893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554209, 0.585898, -0.591250,
		-0.620519, 0.182637, 0.762628,
		0.554806, 0.789536, 0.262342,
		33.465542, 38.588280, 31.824596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595692, 38.646465, 31.698158>,  <33.077175, 38.035603, 31.640957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595692, 38.646465, 31.698158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968872, 38.786057, 31.662786>,  <33.192780, 38.869812, 31.641563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968872, 38.786057, 31.662786>,  <32.595692, 38.646465, 31.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968872, 38.786057, 31.662786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342551, 0.784942, -0.516261,
		-0.110755, 0.511936, 0.851854,
		0.932948, 0.348981, -0.088428,
		33.248756, 38.890751, 31.636257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414650, 39.319466, 31.704954>,  <32.595692, 38.646465, 31.698158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414650, 39.319466, 31.704954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791451, 39.286388, 31.574852>,  <33.017532, 39.266544, 31.496790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791451, 39.286388, 31.574852>,  <32.414650, 39.319466, 31.704954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791451, 39.286388, 31.574852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179121, 0.695708, -0.695633,
		0.283805, 0.713549, 0.640548,
		0.942003, -0.082688, -0.325257,
		33.074051, 39.261581, 31.477276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753532, 40.068417, 31.761881>,  <32.414650, 39.319466, 31.704954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753532, 40.068417, 31.761881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937855, 39.827194, 31.501425>,  <33.048447, 39.682461, 31.345150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937855, 39.827194, 31.501425>,  <32.753532, 40.068417, 31.761881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937855, 39.827194, 31.501425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223022, 0.631454, -0.742648,
		0.859022, 0.487437, 0.156484,
		0.460807, -0.603052, -0.651142,
		33.076096, 39.646278, 31.306082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338837, 40.434673, 31.444756>,  <32.753532, 40.068417, 31.761881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338837, 40.434673, 31.444756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207848, 40.154278, 31.191339>,  <33.129253, 39.986042, 31.039289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207848, 40.154278, 31.191339>,  <33.338837, 40.434673, 31.444756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207848, 40.154278, 31.191339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128668, 0.697351, -0.705086,
		0.936058, -0.149381, -0.318560,
		-0.327475, -0.700990, -0.633540,
		33.109604, 39.943981, 31.001278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562778, 40.776245, 30.731651>,  <33.338837, 40.434673, 31.444756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562778, 40.776245, 30.731651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330639, 40.461037, 30.649458>,  <33.191357, 40.271912, 30.600142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330639, 40.461037, 30.649458>,  <33.562778, 40.776245, 30.731651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330639, 40.461037, 30.649458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195069, 0.379490, -0.904398,
		0.790663, -0.484779, -0.373953,
		-0.580344, -0.788021, -0.205483,
		33.156536, 40.224632, 30.587812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692032, 40.669102, 30.032219>,  <33.562778, 40.776245, 30.731651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692032, 40.669102, 30.032219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347366, 40.473022, 30.084743>,  <33.140568, 40.355373, 30.116259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347366, 40.473022, 30.084743>,  <33.692032, 40.669102, 30.032219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347366, 40.473022, 30.084743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260829, 0.205820, -0.943190,
		0.435328, -0.846959, -0.305206,
		-0.861660, -0.490203, 0.131312,
		33.088867, 40.325962, 30.124138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510326, 40.402378, 29.361998>,  <33.692032, 40.669102, 30.032219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510326, 40.402378, 29.361998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166340, 40.424683, 29.564917>,  <32.959949, 40.438065, 29.686668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166340, 40.424683, 29.564917>,  <33.510326, 40.402378, 29.361998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166340, 40.424683, 29.564917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466495, 0.317251, -0.825672,
		-0.206983, -0.946701, -0.246811,
		-0.859965, 0.055764, 0.507297,
		32.908352, 40.441410, 29.717106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977108, 39.944084, 29.071291>,  <33.510326, 40.402378, 29.361998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977108, 39.944084, 29.071291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789070, 40.241627, 29.261316>,  <32.676247, 40.420155, 29.375332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789070, 40.241627, 29.261316>,  <32.977108, 39.944084, 29.071291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789070, 40.241627, 29.261316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470181, 0.244462, -0.848038,
		-0.746957, -0.622021, 0.234829,
		-0.470091, 0.743860, 0.475065,
		32.648045, 40.464787, 29.403835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315311, 39.930626, 28.835260>,  <32.977108, 39.944084, 29.071291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315311, 39.930626, 28.835260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355831, 40.299728, 28.983990>,  <32.380142, 40.521191, 29.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355831, 40.299728, 28.983990>,  <32.315311, 39.930626, 28.835260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355831, 40.299728, 28.983990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526579, 0.366829, -0.766910,
		-0.844069, -0.118106, 0.523066,
		0.101299, 0.922761, 0.371821,
		32.386219, 40.576557, 29.095535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691011, 40.153111, 28.907318>,  <32.315311, 39.930626, 28.835260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691011, 40.153111, 28.907318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888111, 40.501125, 28.913374>,  <32.006371, 40.709934, 28.917007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888111, 40.501125, 28.913374>,  <31.691011, 40.153111, 28.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888111, 40.501125, 28.913374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617853, 0.362067, -0.697972,
		-0.612745, 0.334571, 0.715965,
		0.492749, 0.870040, 0.015139,
		32.035934, 40.762138, 28.917915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182892, 40.662231, 28.952570>,  <31.691011, 40.153111, 28.907318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182892, 40.662231, 28.952570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499731, 40.849529, 28.795940>,  <31.689835, 40.961906, 28.701963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499731, 40.849529, 28.795940>,  <31.182892, 40.662231, 28.952570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499731, 40.849529, 28.795940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555217, 0.286183, -0.780918,
		-0.253596, 0.835973, 0.486660,
		0.792100, 0.468240, -0.391572,
		31.737362, 40.990002, 28.678469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883230, 41.164856, 28.485891>,  <31.182892, 40.662231, 28.952570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883230, 41.164856, 28.485891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261885, 41.133118, 28.360937>,  <31.489077, 41.114075, 28.285965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261885, 41.133118, 28.360937>,  <30.883230, 41.164856, 28.485891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261885, 41.133118, 28.360937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291403, 0.203409, -0.934724,
		0.137709, 0.975873, 0.169432,
		0.946636, -0.079346, -0.312384,
		31.545876, 41.109314, 28.267221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008806, 41.701950, 28.138994>,  <30.883230, 41.164856, 28.485891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008806, 41.701950, 28.138994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236929, 41.406372, 27.995485>,  <31.373802, 41.229027, 27.909380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236929, 41.406372, 27.995485>,  <31.008806, 41.701950, 28.138994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236929, 41.406372, 27.995485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308783, 0.211874, -0.927233,
		0.761184, 0.639591, -0.107339,
		0.570308, -0.738940, -0.358770,
		31.408022, 41.184689, 27.887854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024393, 41.942444, 27.485079>,  <31.008806, 41.701950, 28.138994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024393, 41.942444, 27.485079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196115, 41.581203, 27.481022>,  <31.299149, 41.364460, 27.478588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196115, 41.581203, 27.481022>,  <31.024393, 41.942444, 27.485079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196115, 41.581203, 27.481022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224890, -0.096016, -0.969642,
		0.874712, 0.418554, -0.244319,
		0.429306, -0.903102, -0.010143,
		31.324907, 41.310272, 27.477980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460878, 42.009159, 26.951303>,  <31.024393, 41.942444, 27.485079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460878, 42.009159, 26.951303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400383, 41.617809, 27.007738>,  <31.364086, 41.382999, 27.041599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400383, 41.617809, 27.007738>,  <31.460878, 42.009159, 26.951303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400383, 41.617809, 27.007738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231940, -0.103619, -0.967195,
		0.960901, -0.178999, -0.211254,
		-0.151237, -0.978377, 0.141085,
		31.355011, 41.324295, 27.050064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729429, 41.692318, 26.393623>,  <31.460878, 42.009159, 26.951303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729429, 41.692318, 26.393623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465012, 41.432743, 26.544300>,  <31.306362, 41.276997, 26.634706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465012, 41.432743, 26.544300>,  <31.729429, 41.692318, 26.393623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465012, 41.432743, 26.544300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356511, -0.170107, -0.918675,
		0.660244, -0.741579, -0.118906,
		-0.661043, -0.648941, 0.376693,
		31.266699, 41.238060, 26.657309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772562, 41.127430, 25.897726>,  <31.729429, 41.692318, 26.393623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772562, 41.127430, 25.897726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414982, 41.106392, 26.075754>,  <31.200434, 41.093769, 26.182571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414982, 41.106392, 26.075754>,  <31.772562, 41.127430, 25.897726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414982, 41.106392, 26.075754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434430, -0.142285, -0.889396,
		0.110102, -0.988428, 0.104348,
		-0.893951, -0.052593, 0.445068,
		31.146797, 41.090614, 26.209274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351728, 40.556404, 25.587971>,  <31.772562, 41.127430, 25.897726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351728, 40.556404, 25.587971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070574, 40.766052, 25.780325>,  <30.901882, 40.891842, 25.895737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070574, 40.766052, 25.780325>,  <31.351728, 40.556404, 25.587971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070574, 40.766052, 25.780325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559889, 0.009318, -0.828515,
		-0.438722, -0.851594, 0.286900,
		-0.702885, 0.524120, 0.480886,
		30.859709, 40.923286, 25.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953543, 40.661781, 25.166742>,  <31.351728, 40.556404, 25.587971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953543, 40.661781, 25.166742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261631, 40.552284, 24.936325>,  <32.446484, 40.486588, 24.798075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261631, 40.552284, 24.936325>,  <31.953543, 40.661781, 25.166742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261631, 40.552284, 24.936325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478866, -0.348341, 0.805820,
		-0.421246, -0.896507, -0.137214,
		0.770220, -0.273742, -0.576044,
		32.492699, 40.470161, 24.763512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121441, 39.937290, 25.277044>,  <31.953543, 40.661781, 25.166742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121441, 39.937290, 25.277044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444756, 40.132198, 25.144836>,  <32.638744, 40.249142, 25.065512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444756, 40.132198, 25.144836>,  <32.121441, 39.937290, 25.277044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444756, 40.132198, 25.144836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542057, -0.396657, 0.740836,
		0.229884, -0.777967, -0.584740,
		0.808287, 0.487269, -0.330518,
		32.687241, 40.278378, 25.045681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581291, 39.496304, 25.404806>,  <32.121441, 39.937290, 25.277044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581291, 39.496304, 25.404806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811413, 39.813869, 25.326090>,  <32.949486, 40.004410, 25.278860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811413, 39.813869, 25.326090>,  <32.581291, 39.496304, 25.404806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811413, 39.813869, 25.326090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614995, -0.261234, 0.744001,
		0.539262, -0.549054, -0.638542,
		0.575306, 0.793912, -0.196792,
		32.984005, 40.052044, 25.267052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313416, 39.166039, 25.343136>,  <32.581291, 39.496304, 25.404806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313416, 39.166039, 25.343136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292679, 39.552765, 25.443199>,  <33.280235, 39.784801, 25.503237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292679, 39.552765, 25.443199>,  <33.313416, 39.166039, 25.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292679, 39.552765, 25.443199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566728, -0.177768, 0.804499,
		0.822272, 0.183481, -0.538705,
		-0.051846, 0.966816, 0.250157,
		33.277126, 39.842812, 25.518246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988178, 39.379169, 25.415432>,  <33.313416, 39.166039, 25.343136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988178, 39.379169, 25.415432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766750, 39.633652, 25.630394>,  <33.633896, 39.786343, 25.759371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766750, 39.633652, 25.630394>,  <33.988178, 39.379169, 25.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766750, 39.633652, 25.630394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571918, -0.178655, 0.800620,
		0.605371, 0.750547, -0.264962,
		-0.553566, 0.636209, 0.537404,
		33.600681, 39.824516, 25.791615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454422, 39.658333, 25.769650>,  <33.988178, 39.379169, 25.415432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454422, 39.658333, 25.769650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124023, 39.788864, 25.953493>,  <33.925785, 39.867184, 26.063799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124023, 39.788864, 25.953493>,  <34.454422, 39.658333, 25.769650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124023, 39.788864, 25.953493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425256, -0.174435, 0.888105,
		0.369986, 0.929022, 0.005309,
		-0.825995, 0.326329, 0.459610,
		33.876225, 39.886765, 26.091375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753269, 40.113102, 26.137154>,  <34.454422, 39.658333, 25.769650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753269, 40.113102, 26.137154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403992, 40.011719, 26.303669>,  <34.194427, 39.950890, 26.403578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403992, 40.011719, 26.303669>,  <34.753269, 40.113102, 26.137154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403992, 40.011719, 26.303669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440317, -0.044065, 0.896760,
		-0.208951, 0.966341, 0.150081,
		-0.873190, -0.253462, 0.416289,
		34.142036, 39.935680, 26.428556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734806, 40.431873, 26.865814>,  <34.753269, 40.113102, 26.137154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734806, 40.431873, 26.865814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458748, 40.142525, 26.874140>,  <34.293114, 39.968914, 26.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458748, 40.142525, 26.874140>,  <34.734806, 40.431873, 26.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458748, 40.142525, 26.874140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282565, -0.242880, 0.927990,
		-0.666230, 0.646325, 0.372023,
		-0.690141, -0.723376, 0.020815,
		34.251705, 39.925510, 26.880384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431484, 40.530815, 27.438732>,  <34.734806, 40.431873, 26.865814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431484, 40.530815, 27.438732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343540, 40.146626, 27.370434>,  <34.290771, 39.916111, 27.329454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343540, 40.146626, 27.370434>,  <34.431484, 40.530815, 27.438732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343540, 40.146626, 27.370434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361047, -0.242718, 0.900407,
		-0.906259, 0.136320, 0.400140,
		-0.219864, -0.960471, -0.170748,
		34.277580, 39.858482, 27.319210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975605, 40.230339, 27.961737>,  <34.431484, 40.530815, 27.438732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975605, 40.230339, 27.961737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152275, 39.912083, 27.795904>,  <34.258278, 39.721130, 27.696405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152275, 39.912083, 27.795904>,  <33.975605, 40.230339, 27.961737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152275, 39.912083, 27.795904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180415, -0.373891, 0.909756,
		-0.878847, -0.476614, -0.021593,
		0.441676, -0.795641, -0.414581,
		34.284779, 39.673389, 27.671530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824558, 39.658325, 28.430281>,  <33.975605, 40.230339, 27.961737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824558, 39.658325, 28.430281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131981, 39.509018, 28.222439>,  <34.316437, 39.419434, 28.097734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131981, 39.509018, 28.222439>,  <33.824558, 39.658325, 28.430281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131981, 39.509018, 28.222439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222479, -0.605547, 0.764078,
		-0.599834, -0.702849, -0.382366,
		0.768572, -0.373251, -0.519597,
		34.362549, 39.397038, 28.066557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849354, 38.922707, 28.675348>,  <33.824558, 39.658325, 28.430281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849354, 38.922707, 28.675348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198177, 38.991642, 28.492126>,  <34.407471, 39.033001, 28.382193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198177, 38.991642, 28.492126>,  <33.849354, 38.922707, 28.675348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198177, 38.991642, 28.492126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473178, -0.535887, 0.699234,
		-0.124963, -0.826514, -0.548870,
		0.872059, 0.172335, -0.458054,
		34.459797, 39.043343, 28.354710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095314, 38.295124, 28.515236>,  <33.849354, 38.922707, 28.675348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095314, 38.295124, 28.515236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399307, 38.554630, 28.530819>,  <34.581703, 38.710335, 28.540169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399307, 38.554630, 28.530819>,  <34.095314, 38.295124, 28.515236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399307, 38.554630, 28.530819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325034, -0.431291, 0.841630,
		0.562826, -0.626966, -0.538648,
		0.759987, 0.648770, 0.038957,
		34.627304, 38.749260, 28.542505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585583, 37.811054, 28.541840>,  <34.095314, 38.295124, 28.515236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585583, 37.811054, 28.541840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727486, 38.168091, 28.653147>,  <34.812630, 38.382313, 28.719931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727486, 38.168091, 28.653147>,  <34.585583, 37.811054, 28.541840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727486, 38.168091, 28.653147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381668, -0.409954, 0.828412,
		0.853508, -0.187681, -0.486107,
		0.354759, 0.892588, 0.278268,
		34.833912, 38.435867, 28.736628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400326, 37.787643, 28.513973>,  <34.585583, 37.811054, 28.541840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400326, 37.787643, 28.513973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313313, 38.075150, 28.778111>,  <35.261105, 38.247654, 28.936592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313313, 38.075150, 28.778111>,  <35.400326, 37.787643, 28.513973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313313, 38.075150, 28.778111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484045, -0.508047, 0.712453,
		0.847572, 0.474620, -0.237397,
		-0.217536, 0.718766, 0.660344,
		35.248051, 38.290779, 28.976213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016930, 37.871094, 28.867208>,  <35.400326, 37.787643, 28.513973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016930, 37.871094, 28.867208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743599, 38.049709, 29.098265>,  <35.579601, 38.156879, 29.236898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743599, 38.049709, 29.098265>,  <36.016930, 37.871094, 28.867208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743599, 38.049709, 29.098265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419234, -0.407761, 0.811156,
		0.597754, 0.796449, 0.091427,
		-0.683325, 0.446542, 0.577639,
		35.538601, 38.183674, 29.271557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379807, 38.186871, 29.414883>,  <36.016930, 37.871094, 28.867208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379807, 38.186871, 29.414883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008522, 38.126766, 29.551031>,  <35.785751, 38.090702, 29.632721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008522, 38.126766, 29.551031>,  <36.379807, 38.186871, 29.414883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008522, 38.126766, 29.551031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371565, -0.326996, 0.868915,
		-0.019265, 0.933003, 0.359352,
		-0.928207, -0.150262, 0.340372,
		35.730061, 38.081688, 29.653143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477734, 38.378002, 30.100239>,  <36.379807, 38.186871, 29.414883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477734, 38.378002, 30.100239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136036, 38.170757, 30.083138>,  <35.931019, 38.046410, 30.072876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136036, 38.170757, 30.083138>,  <36.477734, 38.378002, 30.100239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136036, 38.170757, 30.083138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135612, -0.301471, 0.943782,
		-0.501872, 0.800423, 0.327792,
		-0.854244, -0.518111, -0.042753,
		35.879761, 38.015324, 30.070311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194187, 38.487083, 30.764786>,  <36.477734, 38.378002, 30.100239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194187, 38.487083, 30.764786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034103, 38.147346, 30.627119>,  <35.938053, 37.943504, 30.544519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034103, 38.147346, 30.627119>,  <36.194187, 38.487083, 30.764786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034103, 38.147346, 30.627119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126020, -0.422992, 0.897328,
		-0.907717, 0.315749, 0.276320,
		-0.400212, -0.849341, -0.344166,
		35.914040, 37.892544, 30.523869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630287, 38.246948, 31.197042>,  <36.194187, 38.487083, 30.764786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630287, 38.246948, 31.197042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748669, 37.908833, 31.019100>,  <35.819698, 37.705963, 30.912334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748669, 37.908833, 31.019100>,  <35.630287, 38.246948, 31.197042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748669, 37.908833, 31.019100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010398, -0.462839, 0.886381,
		-0.955147, -0.266949, -0.128188,
		0.295949, -0.845292, -0.444855,
		35.837452, 37.655247, 30.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272751, 37.764996, 31.506882>,  <35.630287, 38.246948, 31.197042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272751, 37.764996, 31.506882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560005, 37.559914, 31.318663>,  <35.732357, 37.436863, 31.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560005, 37.559914, 31.318663>,  <35.272751, 37.764996, 31.506882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560005, 37.559914, 31.318663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045453, -0.640166, 0.766891,
		-0.694418, -0.572119, -0.436422,
		0.718135, -0.512706, -0.470547,
		35.775444, 37.406101, 31.177498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143372, 37.068218, 31.638729>,  <35.272751, 37.764996, 31.506882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143372, 37.068218, 31.638729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524086, 37.063988, 31.516092>,  <35.752514, 37.061447, 31.442511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524086, 37.063988, 31.516092>,  <35.143372, 37.068218, 31.638729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524086, 37.063988, 31.516092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237842, -0.605771, 0.759258,
		-0.193756, -0.795569, -0.574046,
		0.951782, -0.010579, -0.306592,
		35.809620, 37.060814, 31.424114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344978, 36.349968, 31.695032>,  <35.143372, 37.068218, 31.638729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344978, 36.349968, 31.695032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695507, 36.541771, 31.713509>,  <35.905823, 36.656853, 31.724594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695507, 36.541771, 31.713509>,  <35.344978, 36.349968, 31.695032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695507, 36.541771, 31.713509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267126, -0.563491, 0.781743,
		0.400883, -0.672717, -0.621888,
		0.876320, 0.479510, 0.046193,
		35.958405, 36.685623, 31.727367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881157, 35.808002, 31.677803>,  <35.344978, 36.349968, 31.695032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881157, 35.808002, 31.677803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049179, 36.133312, 31.838869>,  <36.149990, 36.328499, 31.935509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049179, 36.133312, 31.838869>,  <35.881157, 35.808002, 31.677803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049179, 36.133312, 31.838869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429983, -0.569103, 0.700883,
		0.799169, -0.121268, -0.588747,
		0.420052, 0.813275, 0.402666,
		36.175194, 36.377296, 31.959669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462151, 35.561108, 31.946301>,  <35.881157, 35.808002, 31.677803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462151, 35.561108, 31.946301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405216, 35.909794, 32.133858>,  <36.371056, 36.119003, 32.246391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405216, 35.909794, 32.133858>,  <36.462151, 35.561108, 31.946301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405216, 35.909794, 32.133858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370142, -0.392471, 0.841999,
		0.918006, 0.293405, -0.266793,
		-0.142338, 0.871711, 0.468892,
		36.362514, 36.171307, 32.274525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997337, 35.676186, 32.270966>,  <36.462151, 35.561108, 31.946301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997337, 35.676186, 32.270966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767483, 35.921715, 32.487488>,  <36.629570, 36.069035, 32.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767483, 35.921715, 32.487488>,  <36.997337, 35.676186, 32.270966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767483, 35.921715, 32.487488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529939, -0.224947, 0.817657,
		0.623664, 0.756714, -0.196028,
		-0.574637, 0.613827, 0.541304,
		36.595093, 36.105862, 32.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425491, 35.999161, 32.650875>,  <36.997337, 35.676186, 32.270966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425491, 35.999161, 32.650875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091080, 36.058071, 32.862297>,  <36.890434, 36.093418, 32.989151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091080, 36.058071, 32.862297>,  <37.425491, 35.999161, 32.650875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091080, 36.058071, 32.862297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528034, -0.045847, 0.847985,
		0.149124, 0.988032, -0.039440,
		-0.836027, 0.147281, 0.528551,
		36.840271, 36.102257, 33.020863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666039, 36.440998, 33.254608>,  <37.425491, 35.999161, 32.650875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666039, 36.440998, 33.254608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318592, 36.268208, 33.351685>,  <37.110123, 36.164532, 33.409931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318592, 36.268208, 33.351685>,  <37.666039, 36.440998, 33.254608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318592, 36.268208, 33.351685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347003, -0.180719, 0.920287,
		-0.353682, 0.883594, 0.306873,
		-0.868618, -0.431975, 0.242693,
		37.058006, 36.138615, 33.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510262, 36.735291, 33.899139>,  <37.666039, 36.440998, 33.254608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510262, 36.735291, 33.899139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288609, 36.403606, 33.869911>,  <37.155617, 36.204594, 33.852375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288609, 36.403606, 33.869911>,  <37.510262, 36.735291, 33.899139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288609, 36.403606, 33.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244990, -0.246345, 0.937707,
		-0.795560, 0.501714, 0.339657,
		-0.554133, -0.829215, -0.073068,
		37.122368, 36.154842, 33.847992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083092, 36.659683, 34.536961>,  <37.510262, 36.735291, 33.899139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083092, 36.659683, 34.536961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102001, 36.286453, 34.394337>,  <37.113346, 36.062515, 34.308762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102001, 36.286453, 34.394337>,  <37.083092, 36.659683, 34.536961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102001, 36.286453, 34.394337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067415, -0.353165, 0.933129,
		-0.996605, -0.068147, 0.046209,
		0.047271, -0.933076, -0.356560,
		37.116184, 36.006531, 34.287369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666374, 36.187614, 34.983231>,  <37.083092, 36.659683, 34.536961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666374, 36.187614, 34.983231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920269, 35.923149, 34.823250>,  <37.072605, 35.764469, 34.727261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920269, 35.923149, 34.823250>,  <36.666374, 36.187614, 34.983231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920269, 35.923149, 34.823250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106161, -0.438070, 0.892650,
		-0.765397, -0.609062, -0.207871,
		0.634741, -0.661165, -0.399956,
		37.110691, 35.724800, 34.703262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557400, 35.663795, 35.382030>,  <36.666374, 36.187614, 34.983231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557400, 35.663795, 35.382030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901863, 35.587818, 35.193424>,  <37.108540, 35.542233, 35.080261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901863, 35.587818, 35.193424>,  <36.557400, 35.663795, 35.382030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901863, 35.587818, 35.193424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310690, -0.537490, 0.783949,
		-0.402339, -0.821600, -0.403852,
		0.861159, -0.189941, -0.471516,
		37.160210, 35.530834, 35.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717220, 34.873386, 35.431351>,  <36.557400, 35.663795, 35.382030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717220, 34.873386, 35.431351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076080, 35.032677, 35.354881>,  <37.291397, 35.128250, 35.308998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076080, 35.032677, 35.354881>,  <36.717220, 34.873386, 35.431351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076080, 35.032677, 35.354881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396259, -0.534262, 0.746688,
		0.195211, -0.745643, -0.637110,
		0.897146, 0.398222, -0.191174,
		37.345222, 35.152142, 35.297527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265827, 34.289539, 35.612003>,  <36.717220, 34.873386, 35.431351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265827, 34.289539, 35.612003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437027, 34.650822, 35.624928>,  <37.539745, 34.867592, 35.632683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437027, 34.650822, 35.624928>,  <37.265827, 34.289539, 35.612003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437027, 34.650822, 35.624928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563240, -0.294520, 0.772023,
		0.706810, -0.312221, -0.634773,
		0.427995, 0.903203, 0.032314,
		37.565426, 34.921783, 35.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963036, 34.196995, 35.639587>,  <37.265827, 34.289539, 35.612003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963036, 34.196995, 35.639587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920689, 34.563030, 35.795231>,  <37.895279, 34.782650, 35.888618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920689, 34.563030, 35.795231>,  <37.963036, 34.196995, 35.639587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920689, 34.563030, 35.795231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558605, -0.268997, 0.784602,
		0.822649, 0.300423, -0.482695,
		-0.105869, 0.915088, 0.389108,
		37.888927, 34.837555, 35.911964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594982, 34.451202, 35.659222>,  <37.963036, 34.196995, 35.639587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594982, 34.451202, 35.659222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394150, 34.653904, 35.939541>,  <38.273651, 34.775524, 36.107731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394150, 34.653904, 35.939541>,  <38.594982, 34.451202, 35.659222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394150, 34.653904, 35.939541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745972, -0.156205, 0.647399,
		0.437542, 0.847818, -0.299601,
		-0.502078, 0.506758, 0.700795,
		38.243526, 34.805931, 36.149780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129612, 34.869083, 35.879356>,  <38.594982, 34.451202, 35.659222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129612, 34.869083, 35.879356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843456, 34.817028, 36.153957>,  <38.671764, 34.785793, 36.318718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843456, 34.817028, 36.153957>,  <39.129612, 34.869083, 35.879356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843456, 34.817028, 36.153957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695038, -0.031728, 0.718273,
		-0.071696, 0.990988, 0.113150,
		-0.715390, -0.130141, 0.686499,
		38.628838, 34.777985, 36.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476093, 35.129631, 36.530472>,  <39.129612, 34.869083, 35.879356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476093, 35.129631, 36.530472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129402, 34.964764, 36.642834>,  <38.921387, 34.865845, 36.710251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129402, 34.964764, 36.642834>,  <39.476093, 35.129631, 36.530472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129402, 34.964764, 36.642834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378333, -0.176237, 0.908738,
		-0.325046, 0.893901, 0.308685,
		-0.866723, -0.412167, 0.280907,
		38.869385, 34.841114, 36.727104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208908, 35.315403, 37.215511>,  <39.476093, 35.129631, 36.530472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208908, 35.315403, 37.215511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085789, 34.939545, 37.155731>,  <39.011917, 34.714031, 37.119865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085789, 34.939545, 37.155731>,  <39.208908, 35.315403, 37.215511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085789, 34.939545, 37.155731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464266, -0.285430, 0.838443,
		-0.830494, 0.188684, 0.524098,
		-0.307794, -0.939642, -0.149448,
		38.993450, 34.657654, 37.110897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155178, 35.151875, 37.903061>,  <39.208908, 35.315403, 37.215511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155178, 35.151875, 37.903061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 34.817303, 37.684147>,  <39.136276, 34.616562, 37.552799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 34.817303, 37.684147>,  <39.155178, 35.151875, 37.903061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143364, 34.817303, 37.684147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429935, -0.504918, 0.748475,
		-0.902377, -0.213187, 0.374523,
		-0.029538, -0.836427, -0.547282,
		39.134502, 34.566376, 37.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989307, 34.642914, 38.368511>,  <39.155178, 35.151875, 37.903061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989307, 34.642914, 38.368511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167961, 34.474167, 38.052906>,  <39.275154, 34.372921, 37.863541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167961, 34.474167, 38.052906>,  <38.989307, 34.642914, 38.368511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167961, 34.474167, 38.052906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686129, -0.404489, 0.604662,
		-0.574234, -0.811430, 0.108795,
		0.446635, -0.421865, -0.789017,
		39.301952, 34.347607, 37.816200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863071, 33.917908, 38.439339>,  <38.989307, 34.642914, 38.368511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863071, 33.917908, 38.439339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182362, 33.972584, 38.204685>,  <39.373936, 34.005390, 38.063892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182362, 33.972584, 38.204685>,  <38.863071, 33.917908, 38.439339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182362, 33.972584, 38.204685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532074, -0.616539, 0.580325,
		-0.282358, -0.775367, -0.564871,
		0.798230, 0.136694, -0.586638,
		39.421829, 34.013592, 38.028694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120701, 33.302593, 38.532097>,  <38.863071, 33.917908, 38.439339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120701, 33.302593, 38.532097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430862, 33.496300, 38.369991>,  <39.616959, 33.612522, 38.272728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430862, 33.496300, 38.369991>,  <39.120701, 33.302593, 38.532097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430862, 33.496300, 38.369991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625126, -0.497956, 0.601047,
		0.089260, -0.719396, -0.688841,
		0.775403, 0.484262, -0.405265,
		39.663483, 33.641579, 38.248413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655537, 32.770176, 38.493488>,  <39.120701, 33.302593, 38.532097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655537, 32.770176, 38.493488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863266, 33.110569, 38.462170>,  <39.987904, 33.314804, 38.443378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863266, 33.110569, 38.462170>,  <39.655537, 32.770176, 38.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863266, 33.110569, 38.462170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621015, -0.312863, 0.718650,
		0.587065, -0.421832, -0.690951,
		0.519322, 0.850985, -0.078293,
		40.019062, 33.365864, 38.438683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347805, 32.578255, 38.340862>,  <39.655537, 32.770176, 38.493488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347805, 32.578255, 38.340862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359325, 32.948498, 38.491817>,  <40.366238, 33.170643, 38.582390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359325, 32.948498, 38.491817>,  <40.347805, 32.578255, 38.340862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359325, 32.948498, 38.491817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614086, -0.314280, 0.723965,
		0.788713, 0.210898, -0.577454,
		0.028799, 0.925608, 0.377387,
		40.367966, 33.226181, 38.605034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014118, 32.641571, 38.642525>,  <40.347805, 32.578255, 38.340862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014118, 32.641571, 38.642525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890026, 32.976456, 38.822670>,  <40.815571, 33.177387, 38.930756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890026, 32.976456, 38.822670>,  <41.014118, 32.641571, 38.642525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890026, 32.976456, 38.822670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568707, -0.216177, 0.793625,
		0.761792, 0.502333, -0.409065,
		-0.310234, 0.837215, 0.450362,
		40.796955, 33.227619, 38.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651844, 33.015003, 38.954048>,  <41.014118, 32.641571, 38.642525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651844, 33.015003, 38.954048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319393, 33.102085, 39.158722>,  <41.119923, 33.154335, 39.281528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319393, 33.102085, 39.158722>,  <41.651844, 33.015003, 38.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319393, 33.102085, 39.158722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487640, -0.156909, 0.858828,
		0.267259, 0.963319, 0.024251,
		-0.831131, 0.217704, 0.511689,
		41.070053, 33.167397, 39.312229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925240, 33.390358, 39.568981>,  <41.651844, 33.015003, 38.954048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925240, 33.390358, 39.568981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551109, 33.312229, 39.686977>,  <41.326633, 33.265350, 39.757774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551109, 33.312229, 39.686977>,  <41.925240, 33.390358, 39.568981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551109, 33.312229, 39.686977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333992, -0.212445, 0.918323,
		-0.116699, 0.957453, 0.263940,
		-0.935324, -0.195321, 0.294990,
		41.270512, 33.253632, 39.775475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045662, 33.357613, 40.284321>,  <41.925240, 33.390358, 39.568981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045662, 33.357613, 40.284321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647125, 33.324959, 40.294407>,  <41.408005, 33.305367, 40.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647125, 33.324959, 40.294407>,  <42.045662, 33.357613, 40.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647125, 33.324959, 40.294407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041656, -0.206475, 0.977565,
		-0.074600, 0.975040, 0.209121,
		-0.996343, -0.081637, 0.025214,
		41.348221, 33.300468, 40.301971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728863, 33.670040, 40.972683>,  <42.045662, 33.357613, 40.284321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728863, 33.670040, 40.972683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455349, 33.407307, 40.845558>,  <41.291241, 33.249664, 40.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455349, 33.407307, 40.845558>,  <41.728863, 33.670040, 40.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455349, 33.407307, 40.845558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167647, -0.282472, 0.944512,
		-0.710163, 0.699124, 0.083033,
		-0.683786, -0.656837, -0.317807,
		41.250214, 33.210255, 40.750217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061634, 33.853989, 41.233490>,  <41.728863, 33.670040, 40.972683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061634, 33.853989, 41.233490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148148, 33.465816, 41.190624>,  <41.200054, 33.232914, 41.164906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148148, 33.465816, 41.190624>,  <41.061634, 33.853989, 41.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148148, 33.465816, 41.190624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013462, -0.112715, 0.993536,
		-0.976238, -0.213441, -0.037442,
		0.216281, -0.970432, -0.107163,
		41.213032, 33.174686, 41.158474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667694, 33.500900, 41.693100>,  <41.061634, 33.853989, 41.233490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667694, 33.500900, 41.693100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952015, 33.220886, 41.665657>,  <41.122608, 33.052879, 41.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952015, 33.220886, 41.665657>,  <40.667694, 33.500900, 41.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952015, 33.220886, 41.665657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014876, -0.112474, 0.993543,
		-0.703233, -0.705194, -0.090361,
		0.710804, -0.700036, -0.068604,
		41.165257, 33.010876, 41.645077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352306, 32.820705, 41.926041>,  <40.667694, 33.500900, 41.693100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352306, 32.820705, 41.926041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747875, 32.779137, 41.968452>,  <40.985214, 32.754196, 41.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747875, 32.779137, 41.968452>,  <40.352306, 32.820705, 41.926041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747875, 32.779137, 41.968452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125502, -0.203628, 0.970971,
		-0.079315, -0.973517, -0.214414,
		0.988918, -0.103922, 0.106028,
		41.044552, 32.747959, 42.000259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517368, 32.204140, 42.291069>,  <40.352306, 32.820705, 41.926041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517368, 32.204140, 42.291069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831367, 32.442966, 42.357162>,  <41.019768, 32.586262, 42.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831367, 32.442966, 42.357162>,  <40.517368, 32.204140, 42.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831367, 32.442966, 42.357162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086323, -0.158697, 0.983546,
		0.613461, -0.786341, -0.073036,
		0.784993, 0.597062, 0.165234,
		41.066864, 32.622086, 42.406734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946186, 31.872795, 42.806450>,  <40.517368, 32.204140, 42.291069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946186, 31.872795, 42.806450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986897, 32.270023, 42.829948>,  <41.011322, 32.508362, 42.844048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986897, 32.270023, 42.829948>,  <40.946186, 31.872795, 42.806450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986897, 32.270023, 42.829948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058599, -0.052966, 0.996875,
		0.993080, -0.104897, 0.052803,
		0.101773, 0.993072, 0.058746,
		41.017429, 32.567944, 42.847572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341316, 31.981768, 43.450691>,  <40.946186, 31.872795, 42.806450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341316, 31.981768, 43.450691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139248, 32.318069, 43.372780>,  <41.018009, 32.519852, 43.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139248, 32.318069, 43.372780>,  <41.341316, 31.981768, 43.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139248, 32.318069, 43.372780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237814, 0.081346, 0.967898,
		0.829608, 0.535273, 0.158850,
		-0.505168, 0.840753, -0.194781,
		40.987698, 32.570297, 43.314346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524883, 32.423950, 43.991531>,  <41.341316, 31.981768, 43.450691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524883, 32.423950, 43.991531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183285, 32.550373, 43.826218>,  <40.978325, 32.626225, 43.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183285, 32.550373, 43.826218>,  <41.524883, 32.423950, 43.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183285, 32.550373, 43.826218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391373, 0.133157, 0.910547,
		0.342814, 0.939350, 0.009980,
		-0.853994, 0.316054, -0.413285,
		40.927086, 32.645187, 43.702232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314568, 33.020916, 44.452194>,  <41.524883, 32.423950, 43.991531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314568, 33.020916, 44.452194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001385, 32.894180, 44.238056>,  <40.813477, 32.818138, 44.109573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001385, 32.894180, 44.238056>,  <41.314568, 33.020916, 44.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001385, 32.894180, 44.238056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587008, 0.091445, 0.804400,
		-0.205913, 0.944060, -0.257586,
		-0.782957, -0.316842, -0.535340,
		40.766499, 32.799129, 44.077454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714176, 33.451805, 44.662815>,  <41.314568, 33.020916, 44.452194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714176, 33.451805, 44.662815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612831, 33.091694, 44.521221>,  <40.552025, 32.875626, 44.436264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612831, 33.091694, 44.521221>,  <40.714176, 33.451805, 44.662815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612831, 33.091694, 44.521221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604990, -0.138069, 0.784171,
		-0.754846, 0.412838, -0.509678,
		-0.253365, -0.900279, -0.353984,
		40.536823, 32.821609, 44.415028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924309, 33.446964, 44.586014>,  <40.714176, 33.451805, 44.662815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924309, 33.446964, 44.586014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068626, 33.075863, 44.624184>,  <40.155216, 32.853203, 44.647087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068626, 33.075863, 44.624184>,  <39.924309, 33.446964, 44.586014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068626, 33.075863, 44.624184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376290, -0.051184, 0.925087,
		-0.853367, -0.369671, -0.367571,
		0.360791, -0.927752, 0.095425,
		40.176865, 32.797539, 44.652813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441406, 32.924114, 44.716206>,  <39.924309, 33.446964, 44.586014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441406, 32.924114, 44.716206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766235, 32.824421, 44.927265>,  <39.961132, 32.764603, 45.053902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766235, 32.824421, 44.927265>,  <39.441406, 32.924114, 44.716206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766235, 32.824421, 44.927265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517597, 0.109923, 0.848534,
		-0.269488, -0.962184, -0.039740,
		0.812077, -0.249239, 0.527647,
		40.009857, 32.749649, 45.085560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251461, 32.375763, 45.234016>,  <39.441406, 32.924114, 44.716206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251461, 32.375763, 45.234016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544876, 32.626942, 45.338020>,  <39.720924, 32.777649, 45.400425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544876, 32.626942, 45.338020>,  <39.251461, 32.375763, 45.234016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544876, 32.626942, 45.338020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433769, 0.138025, 0.890389,
		0.523232, -0.765917, 0.373631,
		0.733534, 0.627950, 0.260012,
		39.764935, 32.815327, 45.416023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516018, 32.198692, 45.834991>,  <39.251461, 32.375763, 45.234016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516018, 32.198692, 45.834991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556957, 32.595600, 45.806896>,  <39.581520, 32.833744, 45.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556957, 32.595600, 45.806896>,  <39.516018, 32.198692, 45.834991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556957, 32.595600, 45.806896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223799, 0.091764, 0.970306,
		0.969247, -0.083590, 0.231459,
		0.102347, 0.992266, -0.070234,
		39.587662, 32.893280, 45.785828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089203, 31.997902, 45.412903>,  <39.516018, 32.198692, 45.834991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089203, 31.997902, 45.412903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940800, 31.864151, 45.066368>,  <39.851757, 31.783899, 44.858448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940800, 31.864151, 45.066368>,  <40.089203, 31.997902, 45.412903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940800, 31.864151, 45.066368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341867, 0.818222, -0.462212,
		0.863411, -0.467658, -0.189255,
		-0.371009, -0.334379, -0.866339,
		39.829498, 31.763838, 44.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574654, 31.891081, 44.857903>,  <40.089203, 31.997902, 45.412903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574654, 31.891081, 44.857903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208206, 31.998278, 44.738632>,  <39.988338, 32.062595, 44.667068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208206, 31.998278, 44.738632>,  <40.574654, 31.891081, 44.857903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208206, 31.998278, 44.738632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398568, 0.689083, -0.605234,
		0.043269, -0.673308, -0.738095,
		-0.916118, 0.267993, -0.298175,
		39.933372, 32.078674, 44.649181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477329, 31.647223, 44.181782>,  <40.574654, 31.891081, 44.857903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477329, 31.647223, 44.181782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298897, 31.977613, 44.319637>,  <40.191837, 32.175850, 44.402351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298897, 31.977613, 44.319637>,  <40.477329, 31.647223, 44.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298897, 31.977613, 44.319637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438399, 0.537365, -0.720448,
		-0.780270, -0.170287, -0.601815,
		-0.446077, 0.825979, 0.344636,
		40.165073, 32.225407, 44.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946114, 31.862289, 43.753483>,  <40.477329, 31.647223, 44.181782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946114, 31.862289, 43.753483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109951, 32.164185, 43.958466>,  <40.208252, 32.345322, 44.081455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109951, 32.164185, 43.958466>,  <39.946114, 31.862289, 43.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109951, 32.164185, 43.958466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425765, 0.338654, -0.839069,
		-0.806820, 0.561861, -0.182630,
		0.409592, 0.754736, 0.512454,
		40.232830, 32.390606, 44.112202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765625, 32.475647, 43.379215>,  <39.946114, 31.862289, 43.753483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765625, 32.475647, 43.379215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091019, 32.572014, 43.590950>,  <40.286255, 32.629833, 43.717991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091019, 32.572014, 43.590950>,  <39.765625, 32.475647, 43.379215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091019, 32.572014, 43.590950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369858, 0.488100, -0.790546,
		-0.448827, 0.838878, 0.307957,
		0.813486, 0.240918, 0.529339,
		40.335064, 32.644291, 43.749752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844410, 33.135574, 43.245853>,  <39.765625, 32.475647, 43.379215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844410, 33.135574, 43.245853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188465, 32.978134, 43.375618>,  <40.394897, 32.883671, 43.453476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188465, 32.978134, 43.375618>,  <39.844410, 33.135574, 43.245853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188465, 32.978134, 43.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494220, 0.485831, -0.720913,
		0.126138, 0.780417, 0.612405,
		0.860137, -0.393597, 0.324415,
		40.446507, 32.860054, 43.472942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470177, 33.495312, 43.118118>,  <39.844410, 33.135574, 43.245853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470177, 33.495312, 43.118118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772141, 33.282902, 43.272064>,  <40.953320, 33.155457, 43.364433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772141, 33.282902, 43.272064>,  <40.470177, 33.495312, 43.118118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772141, 33.282902, 43.272064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385436, -0.115553, -0.915471,
		0.530608, 0.839442, 0.117442,
		0.754914, -0.531023, 0.384864,
		40.998615, 33.123596, 43.387524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240070, 33.811272, 42.947578>,  <40.470177, 33.495312, 43.118118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240070, 33.811272, 42.947578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194176, 33.413925, 42.944538>,  <41.166641, 33.175518, 42.942715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194176, 33.413925, 42.944538>,  <41.240070, 33.811272, 42.947578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194176, 33.413925, 42.944538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268094, -0.023597, -0.963104,
		0.956537, -0.112539, 0.269023,
		-0.114735, -0.993367, -0.007599,
		41.159756, 33.115913, 42.942257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815506, 33.683811, 42.530972>,  <41.240070, 33.811272, 42.947578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815506, 33.683811, 42.530972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580509, 33.361122, 42.505489>,  <41.439510, 33.167511, 42.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580509, 33.361122, 42.505489>,  <41.815506, 33.683811, 42.530972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580509, 33.361122, 42.505489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328506, -0.165809, -0.929834,
		0.739552, -0.567196, 0.362424,
		-0.587492, -0.806719, -0.063703,
		41.404263, 33.119106, 42.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250885, 33.100288, 42.508289>,  <41.815506, 33.683811, 42.530972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250885, 33.100288, 42.508289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934879, 32.860260, 42.458019>,  <41.745277, 32.716244, 42.427856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934879, 32.860260, 42.458019>,  <42.250885, 33.100288, 42.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934879, 32.860260, 42.458019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102295, 0.331136, -0.938022,
		0.604494, -0.728195, -0.322986,
		-0.790015, -0.600068, -0.125679,
		41.697876, 32.680241, 42.420315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354198, 32.574306, 41.900490>,  <42.250885, 33.100288, 42.508289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354198, 32.574306, 41.900490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958115, 32.621555, 41.930260>,  <41.720467, 32.649906, 41.948120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958115, 32.621555, 41.930260>,  <42.354198, 32.574306, 41.900490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958115, 32.621555, 41.930260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048385, 0.209685, -0.976571,
		-0.130960, -0.970608, -0.201916,
		-0.990206, 0.118122, 0.074423,
		41.661053, 32.656990, 41.952587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050308, 32.171577, 41.360897>,  <42.354198, 32.574306, 41.900490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050308, 32.171577, 41.360897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766495, 32.445129, 41.428860>,  <41.596207, 32.609261, 41.469639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766495, 32.445129, 41.428860>,  <42.050308, 32.171577, 41.360897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766495, 32.445129, 41.428860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241543, -0.009527, -0.970343,
		-0.661978, -0.729534, 0.171946,
		-0.709537, 0.683878, 0.169907,
		41.553635, 32.650291, 41.479832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588425, 32.033279, 40.851189>,  <42.050308, 32.171577, 41.360897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588425, 32.033279, 40.851189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448650, 32.391666, 40.960835>,  <41.364784, 32.606697, 41.026623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448650, 32.391666, 40.960835>,  <41.588425, 32.033279, 40.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448650, 32.391666, 40.960835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342850, 0.149996, -0.927338,
		-0.871979, -0.418027, 0.254767,
		-0.349438, 0.895966, 0.274114,
		41.343819, 32.660458, 41.043068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905289, 32.083084, 40.719460>,  <41.588425, 32.033279, 40.851189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905289, 32.083084, 40.719460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075974, 32.441341, 40.669273>,  <41.178383, 32.656296, 40.639160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075974, 32.441341, 40.669273>,  <40.905289, 32.083084, 40.719460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075974, 32.441341, 40.669273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524173, 0.131872, -0.841340,
		-0.736994, 0.424776, 0.525743,
		0.426712, 0.895642, -0.125467,
		41.203987, 32.710033, 40.631634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444565, 32.351471, 40.258205>,  <40.905289, 32.083084, 40.719460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444565, 32.351471, 40.258205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717312, 32.642227, 40.225510>,  <40.880959, 32.816681, 40.205894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717312, 32.642227, 40.225510>,  <40.444565, 32.351471, 40.258205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717312, 32.642227, 40.225510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454911, 0.333901, -0.825570,
		-0.572810, 0.600113, 0.558349,
		0.681868, 0.726894, -0.081736,
		40.921871, 32.860294, 40.200989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075668, 32.983372, 40.154224>,  <40.444565, 32.351471, 40.258205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075668, 32.983372, 40.154224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448982, 33.059658, 40.032505>,  <40.672970, 33.105431, 39.959473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448982, 33.059658, 40.032505>,  <40.075668, 32.983372, 40.154224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448982, 33.059658, 40.032505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358471, 0.545937, -0.757265,
		0.021703, 0.815830, 0.577885,
		0.933288, 0.190720, -0.304300,
		40.728970, 33.116875, 39.941216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048985, 33.710541, 39.896503>,  <40.075668, 32.983372, 40.154224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048985, 33.710541, 39.896503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353287, 33.515991, 39.724602>,  <40.535870, 33.399261, 39.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353287, 33.515991, 39.724602>,  <40.048985, 33.710541, 39.896503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353287, 33.515991, 39.724602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228899, 0.418539, -0.878880,
		0.607336, 0.766983, 0.207074,
		0.760755, -0.486377, -0.429755,
		40.581512, 33.370079, 39.595676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549927, 34.123184, 39.663719>,  <40.048985, 33.710541, 39.896503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549927, 34.123184, 39.663719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445988, 33.793888, 39.461826>,  <40.383625, 33.596310, 39.340691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445988, 33.793888, 39.461826>,  <40.549927, 34.123184, 39.663719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445988, 33.793888, 39.461826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282816, 0.564649, -0.775362,
		0.923307, -0.058727, -0.379547,
		-0.259846, -0.823239, -0.504736,
		40.368034, 33.546917, 39.310406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521202, 34.429070, 38.998009>,  <40.549927, 34.123184, 39.663719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521202, 34.429070, 38.998009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454563, 34.051407, 38.884300>,  <40.414581, 33.824810, 38.816074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454563, 34.051407, 38.884300>,  <40.521202, 34.429070, 38.998009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454563, 34.051407, 38.884300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271129, 0.321050, -0.907423,
		0.948016, -0.074101, -0.309475,
		-0.166597, -0.944159, -0.284269,
		40.404583, 33.768158, 38.799019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894730, 34.235397, 38.405079>,  <40.521202, 34.429070, 38.998009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894730, 34.235397, 38.405079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576748, 33.994610, 38.374931>,  <40.385960, 33.850140, 38.356842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576748, 33.994610, 38.374931>,  <40.894730, 34.235397, 38.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576748, 33.994610, 38.374931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174099, 0.345381, -0.922172,
		0.581150, -0.719964, -0.379364,
		-0.794956, -0.601967, -0.075373,
		40.338261, 33.814018, 38.352318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748966, 34.197021, 37.771252>,  <40.894730, 34.235397, 38.405079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748966, 34.197021, 37.771252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 34.026917, 37.901161>,  <40.208298, 33.924854, 37.979107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 34.026917, 37.901161>,  <40.748966, 34.197021, 37.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411049, 34.026917, 37.901161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461289, 0.271182, -0.844792,
		0.271182, -0.863490, -0.425260,
		0.844792, 0.425260, -0.324778,
		40.157612, 33.899338, 37.998596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486877, 33.872940, 37.189251>,  <40.748966, 34.197021, 37.771252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486877, 33.872940, 37.189251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178421, 33.920422, 37.439453>,  <39.993347, 33.948910, 37.589573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178421, 33.920422, 37.439453>,  <40.486877, 33.872940, 37.189251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178421, 33.920422, 37.439453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537904, 0.404116, -0.739831,
		-0.340594, -0.906973, -0.247781,
		-0.771139, 0.118700, 0.625504,
		39.947079, 33.956032, 37.627106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845867, 33.786510, 36.795631>,  <40.486877, 33.872940, 37.189251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845867, 33.786510, 36.795631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677784, 33.952328, 37.118515>,  <39.576935, 34.051819, 37.312244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677784, 33.952328, 37.118515>,  <39.845867, 33.786510, 36.795631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677784, 33.952328, 37.118515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697113, 0.421995, -0.579614,
		-0.580914, -0.806270, 0.111661,
		-0.420205, 0.414546, 0.807204,
		39.551723, 34.076691, 37.360676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267445, 33.322849, 36.419239>,  <39.845867, 33.786510, 36.795631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267445, 33.322849, 36.419239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560181, 33.087051, 36.282478>,  <40.735825, 32.945572, 36.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560181, 33.087051, 36.282478>,  <40.267445, 33.322849, 36.419239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560181, 33.087051, 36.282478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667289, -0.721724, -0.183959,
		-0.138316, 0.362777, -0.921554,
		0.731843, -0.589498, -0.341903,
		40.779732, 32.910202, 36.179909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986679, 32.990231, 35.817543>,  <40.267445, 33.322849, 36.419239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986679, 32.990231, 35.817543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289028, 32.769886, 35.959084>,  <40.470436, 32.637680, 36.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289028, 32.769886, 35.959084>,  <39.986679, 32.990231, 35.817543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289028, 32.769886, 35.959084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532430, -0.831706, -0.157428,
		0.381018, -0.069404, -0.921959,
		0.755873, -0.550861, 0.353848,
		40.515789, 32.604630, 36.065239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228287, 32.414314, 35.375603>,  <39.986679, 32.990231, 35.817543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228287, 32.414314, 35.375603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270954, 32.337143, 35.765762>,  <40.296555, 32.290840, 35.999859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270954, 32.337143, 35.765762>,  <40.228287, 32.414314, 35.375603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270954, 32.337143, 35.765762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749917, -0.659752, -0.048487,
		0.652875, -0.726295, -0.215057,
		0.106668, -0.192931, 0.975397,
		40.302956, 32.279263, 36.058380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853092, 32.529831, 35.074329>,  <40.228287, 32.414314, 35.375603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853092, 32.529831, 35.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048477, 32.182819, 35.111847>,  <41.165710, 31.974613, 35.134357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048477, 32.182819, 35.111847>,  <40.853092, 32.529831, 35.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048477, 32.182819, 35.111847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866792, 0.494775, 0.062202,
		-0.100369, 0.050916, 0.993647,
		0.488465, -0.867528, 0.093794,
		41.195015, 31.922562, 35.139984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225746, 32.495872, 35.809059>,  <40.853092, 32.529831, 35.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225746, 32.495872, 35.809059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377655, 32.297089, 35.496956>,  <41.468800, 32.177818, 35.309692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377655, 32.297089, 35.496956>,  <41.225746, 32.495872, 35.809059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377655, 32.297089, 35.496956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864524, 0.490808, 0.108188,
		0.329192, -0.715639, 0.616031,
		0.379776, -0.496959, -0.780257,
		41.491589, 32.148003, 35.262878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001999, 32.375484, 36.011005>,  <41.225746, 32.495872, 35.809059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001999, 32.375484, 36.011005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943153, 32.375267, 35.615356>,  <41.907845, 32.375137, 35.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943153, 32.375267, 35.615356>,  <42.001999, 32.375484, 36.011005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943153, 32.375267, 35.615356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754076, 0.647078, -0.112513,
		0.640098, -0.762424, -0.094788,
		-0.147118, -0.000542, -0.989119,
		41.899017, 32.375103, 35.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662300, 32.254868, 35.622368>,  <42.001999, 32.375484, 36.011005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662300, 32.254868, 35.622368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403034, 32.476128, 35.413025>,  <42.247475, 32.608883, 35.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403034, 32.476128, 35.413025>,  <42.662300, 32.254868, 35.622368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403034, 32.476128, 35.413025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682455, 0.726865, -0.076957,
		0.337843, -0.407050, -0.848630,
		-0.648164, 0.553153, -0.523360,
		42.208584, 32.642075, 35.256016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773293, 32.405300, 34.803699>,  <42.662300, 32.254868, 35.622368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773293, 32.405300, 34.803699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603867, 32.677532, 35.042831>,  <42.502213, 32.840874, 35.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603867, 32.677532, 35.042831>,  <42.773293, 32.405300, 34.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603867, 32.677532, 35.042831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810376, 0.579611, -0.085691,
		-0.404830, 0.448174, -0.797027,
		-0.423561, 0.680582, 0.597833,
		42.476799, 32.881706, 35.222183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795979, 33.125393, 34.560555>,  <42.773293, 32.405300, 34.803699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795979, 33.125393, 34.560555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779755, 33.143135, 34.959831>,  <42.770020, 33.153782, 35.199398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779755, 33.143135, 34.959831>,  <42.795979, 33.125393, 34.560555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779755, 33.143135, 34.959831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720349, 0.693610, -0.001552,
		-0.692425, 0.718984, -0.060083,
		-0.040558, 0.044355, 0.998192,
		42.767586, 33.156441, 35.259289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165951, 33.664474, 34.748959>,  <42.795979, 33.125393, 34.560555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165951, 33.664474, 34.748959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136395, 33.498898, 35.111877>,  <43.118660, 33.399551, 35.329628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136395, 33.498898, 35.111877>,  <43.165951, 33.664474, 34.748959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136395, 33.498898, 35.111877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714175, 0.613034, 0.337852,
		-0.696056, 0.672935, 0.250330,
		-0.073892, -0.413943, 0.907299,
		43.114227, 33.374714, 35.384068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135483, 34.198265, 35.252644>,  <43.165951, 33.664474, 34.748959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135483, 34.198265, 35.252644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247700, 33.856941, 35.428444>,  <43.315029, 33.652145, 35.533924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247700, 33.856941, 35.428444>,  <43.135483, 34.198265, 35.252644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247700, 33.856941, 35.428444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701458, 0.494813, 0.512950,
		-0.655176, 0.164390, 0.737374,
		0.280539, -0.853309, 0.439502,
		43.331860, 33.600948, 35.560295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176044, 34.312016, 35.935764>,  <43.135483, 34.198265, 35.252644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176044, 34.312016, 35.935764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433441, 34.027122, 35.823589>,  <43.587879, 33.856186, 35.756283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433441, 34.027122, 35.823589>,  <43.176044, 34.312016, 35.935764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433441, 34.027122, 35.823589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742087, 0.490643, 0.456701,
		-0.187682, -0.501993, 0.844262,
		0.643492, -0.712230, -0.280438,
		43.626488, 33.813454, 35.739456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730034, 34.333820, 36.434586>,  <43.176044, 34.312016, 35.935764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730034, 34.333820, 36.434586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932133, 34.168037, 36.131813>,  <44.053391, 34.068569, 35.950150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932133, 34.168037, 36.131813>,  <43.730034, 34.333820, 36.434586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932133, 34.168037, 36.131813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858554, 0.330074, 0.392346,
		0.087234, -0.848101, 0.522603,
		0.505247, -0.414457, -0.756935,
		44.083706, 34.043701, 35.904732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463879, 34.220673, 36.668926>,  <43.730034, 34.333820, 36.434586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463879, 34.220673, 36.668926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519764, 34.225552, 36.272881>,  <44.553295, 34.228477, 36.035252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519764, 34.225552, 36.272881>,  <44.463879, 34.220673, 36.668926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519764, 34.225552, 36.272881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923759, 0.358480, 0.134768,
		0.356580, -0.933458, 0.038823,
		0.139717, 0.012192, -0.990116,
		44.561680, 34.229210, 35.975845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954525, 33.725941, 36.406525>,  <44.463879, 34.220673, 36.668926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954525, 33.725941, 36.406525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978561, 34.037151, 36.156387>,  <44.992985, 34.223877, 36.006306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978561, 34.037151, 36.156387>,  <44.954525, 33.725941, 36.406525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978561, 34.037151, 36.156387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958031, 0.130964, 0.255000,
		0.280295, -0.614424, -0.737508,
		0.060091, 0.778031, -0.625346,
		44.996590, 34.270561, 35.968784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611618, 33.602711, 36.173714>,  <44.954525, 33.725941, 36.406525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611618, 33.602711, 36.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518681, 33.987869, 36.118809>,  <45.462917, 34.218964, 36.085865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518681, 33.987869, 36.118809>,  <45.611618, 33.602711, 36.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518681, 33.987869, 36.118809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932012, 0.260771, 0.251701,
		0.278156, -0.069449, -0.958022,
		-0.232344, 0.962900, -0.137262,
		45.448978, 34.276741, 36.077629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165890, 33.731594, 36.681274>,  <45.611618, 33.602711, 36.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165890, 33.731594, 36.681274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085533, 33.498646, 36.996361>,  <46.037319, 33.358879, 37.185413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085533, 33.498646, 36.996361>,  <46.165890, 33.731594, 36.681274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085533, 33.498646, 36.996361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105651, 0.812295, 0.573598,
		-0.973899, 0.032010, -0.224713,
		-0.200894, -0.582368, 0.787712,
		46.025265, 33.323936, 37.232674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403568, 34.150982, 35.972263>,  <46.165890, 33.731594, 36.681274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403568, 34.150982, 35.972263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682316, 34.382397, 36.141815>,  <46.849564, 34.521248, 36.243546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682316, 34.382397, 36.141815>,  <46.403568, 34.150982, 35.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682316, 34.382397, 36.141815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500697, 0.030709, -0.865078,
		-0.513497, 0.815077, -0.268273,
		0.696866, 0.578538, 0.423875,
		46.891376, 34.555958, 36.268978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576111, 34.798748, 35.597626>,  <46.403568, 34.150982, 35.972263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576111, 34.798748, 35.597626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894066, 34.660885, 35.797375>,  <47.084839, 34.578167, 35.917225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894066, 34.660885, 35.797375>,  <46.576111, 34.798748, 35.597626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894066, 34.660885, 35.797375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533666, 0.005504, -0.845678,
		0.288718, 0.938714, 0.188305,
		0.794886, -0.344654, 0.499370,
		47.132530, 34.557487, 35.947186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189301, 35.250847, 35.526928>,  <46.576111, 34.798748, 35.597626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189301, 35.250847, 35.526928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269409, 34.859100, 35.537731>,  <47.317474, 34.624054, 35.544212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269409, 34.859100, 35.537731>,  <47.189301, 35.250847, 35.526928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269409, 34.859100, 35.537731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477952, 0.073603, -0.875297,
		0.855250, 0.188206, 0.482832,
		0.200274, -0.979368, 0.027005,
		47.329491, 34.565289, 35.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906227, 35.084728, 35.544453>,  <47.189301, 35.250847, 35.526928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906227, 35.084728, 35.544453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698151, 34.795540, 35.362591>,  <47.573303, 34.622028, 35.253471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698151, 34.795540, 35.362591>,  <47.906227, 35.084728, 35.544453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.698151, 34.795540, 35.362591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565802, 0.107041, -0.817564,
		0.639743, -0.682535, 0.353377,
		-0.520190, -0.722972, -0.454658,
		47.542095, 34.578648, 35.226192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.351795, 34.313698, 28.534924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968826, 34.342552, 28.646738>,  <33.739044, 34.359863, 28.713827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968826, 34.342552, 28.646738>,  <34.351795, 34.313698, 28.534924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968826, 34.342552, 28.646738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214861, -0.468684, 0.856837,
		0.192820, 0.880416, 0.433230,
		-0.957421, 0.072131, 0.279538,
		33.681599, 34.364193, 28.730600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285191, 34.755943, 29.143610>,  <34.351795, 34.313698, 28.534924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285191, 34.755943, 29.143610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973595, 34.506252, 29.119905>,  <33.786636, 34.356438, 29.105682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973595, 34.506252, 29.119905>,  <34.285191, 34.755943, 29.143610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973595, 34.506252, 29.119905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304909, -0.459690, 0.834096,
		-0.547910, 0.631682, 0.548427,
		-0.778990, -0.624230, -0.059263,
		33.739899, 34.318985, 29.102127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863983, 34.770378, 29.770557>,  <34.285191, 34.755943, 29.143610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863983, 34.770378, 29.770557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806179, 34.411354, 29.603943>,  <33.771496, 34.195938, 29.503975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806179, 34.411354, 29.603943>,  <33.863983, 34.770378, 29.770557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806179, 34.411354, 29.603943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062024, -0.428342, 0.901486,
		-0.987557, 0.104440, 0.117571,
		-0.144512, -0.897561, -0.416535,
		33.762825, 34.142086, 29.478983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555981, 34.343262, 30.251720>,  <33.863983, 34.770378, 29.770557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555981, 34.343262, 30.251720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669102, 34.055298, 29.998184>,  <33.736973, 33.882519, 29.846062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669102, 34.055298, 29.998184>,  <33.555981, 34.343262, 30.251720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669102, 34.055298, 29.998184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127933, -0.626602, 0.768767,
		-0.950609, -0.298496, -0.085102,
		0.282799, -0.719910, -0.633841,
		33.753941, 33.839325, 29.808031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081394, 33.728382, 30.371529>,  <33.555981, 34.343262, 30.251720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081394, 33.728382, 30.371529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387962, 33.554615, 30.182261>,  <33.571903, 33.450356, 30.068701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387962, 33.554615, 30.182261>,  <33.081394, 33.728382, 30.371529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387962, 33.554615, 30.182261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177319, -0.564919, 0.805868,
		-0.617386, -0.701531, -0.355932,
		0.766415, -0.434419, -0.473168,
		33.617886, 33.424290, 30.040310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989777, 32.937859, 30.323763>,  <33.081394, 33.728382, 30.371529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989777, 32.937859, 30.323763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381271, 32.991619, 30.261791>,  <33.616169, 33.023876, 30.224607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381271, 32.991619, 30.261791>,  <32.989777, 32.937859, 30.323763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381271, 32.991619, 30.261791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204423, -0.577778, 0.790179,
		0.016686, -0.805052, -0.592970,
		0.978740, 0.134402, -0.154930,
		33.674892, 33.031940, 30.215313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191463, 32.284588, 30.490246>,  <32.989777, 32.937859, 30.323763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191463, 32.284588, 30.490246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551392, 32.452606, 30.443119>,  <33.767349, 32.553417, 30.414843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551392, 32.452606, 30.443119>,  <33.191463, 32.284588, 30.490246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551392, 32.452606, 30.443119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322150, -0.457659, 0.828714,
		0.294180, -0.783650, -0.547130,
		0.899821, 0.420049, -0.117819,
		33.821339, 32.578621, 30.407774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669369, 31.693649, 30.460972>,  <33.191463, 32.284588, 30.490246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669369, 31.693649, 30.460972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850910, 32.028938, 30.581902>,  <33.959835, 32.230110, 30.654459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850910, 32.028938, 30.581902>,  <33.669369, 31.693649, 30.460972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850910, 32.028938, 30.581902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345745, -0.478355, 0.807240,
		0.821265, -0.261842, -0.506914,
		0.453855, 0.838221, 0.302326,
		33.987068, 32.280403, 30.672600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320354, 31.427149, 30.711601>,  <33.669369, 31.693649, 30.460972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320354, 31.427149, 30.711601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270954, 31.792822, 30.866013>,  <34.241314, 32.012226, 30.958660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270954, 31.792822, 30.866013>,  <34.320354, 31.427149, 30.711601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270954, 31.792822, 30.866013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340431, -0.326369, 0.881811,
		0.932124, 0.240316, -0.270911,
		-0.123497, 0.914184, 0.386028,
		34.233906, 32.067078, 30.981821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993172, 31.628559, 30.986734>,  <34.320354, 31.427149, 30.711601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993172, 31.628559, 30.986734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699562, 31.820633, 31.178831>,  <34.523396, 31.935877, 31.294088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699562, 31.820633, 31.178831>,  <34.993172, 31.628559, 30.986734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699562, 31.820633, 31.178831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380352, -0.295162, 0.876477,
		0.562618, 0.826017, 0.034018,
		-0.734025, 0.480183, 0.480241,
		34.479355, 31.964687, 31.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375195, 32.017670, 31.427805>,  <34.993172, 31.628559, 30.986734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375195, 32.017670, 31.427805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010269, 32.002480, 31.590897>,  <34.791313, 31.993364, 31.688751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010269, 32.002480, 31.590897>,  <35.375195, 32.017670, 31.427805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010269, 32.002480, 31.590897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408234, -0.162342, 0.898326,
		0.032075, 0.986003, 0.163610,
		-0.912314, -0.037977, 0.407727,
		34.736576, 31.991087, 31.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458172, 32.552570, 31.857794>,  <35.375195, 32.017670, 31.427805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458172, 32.552570, 31.857794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166862, 32.302814, 31.970762>,  <34.992077, 32.152962, 32.038544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166862, 32.302814, 31.970762>,  <35.458172, 32.552570, 31.857794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166862, 32.302814, 31.970762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552999, -0.292054, 0.780319,
		-0.404741, 0.724460, 0.557980,
		-0.728270, -0.624389, 0.282419,
		34.948380, 32.115498, 32.055489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179695, 32.663681, 32.619213>,  <35.458172, 32.552570, 31.857794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179695, 32.663681, 32.619213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102325, 32.286694, 32.510155>,  <35.055904, 32.060501, 32.444721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102325, 32.286694, 32.510155>,  <35.179695, 32.663681, 32.619213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102325, 32.286694, 32.510155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477641, -0.333192, 0.812922,
		-0.856999, 0.027013, 0.514610,
		-0.193423, -0.942472, -0.272642,
		35.044300, 32.003952, 32.428364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935555, 32.365147, 33.211170>,  <35.179695, 32.663681, 32.619213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935555, 32.365147, 33.211170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052910, 32.048149, 32.997303>,  <35.123322, 31.857950, 32.868984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052910, 32.048149, 32.997303>,  <34.935555, 32.365147, 33.211170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052910, 32.048149, 32.997303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493815, -0.353258, 0.794578,
		-0.818578, -0.497147, 0.287706,
		0.293388, -0.792498, -0.534668,
		35.140926, 31.810400, 32.836903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699249, 31.775251, 33.499443>,  <34.935555, 32.365147, 33.211170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699249, 31.775251, 33.499443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.009048, 31.645868, 33.281998>,  <35.194931, 31.568237, 33.151531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.009048, 31.645868, 33.281998>,  <34.699249, 31.775251, 33.499443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009048, 31.645868, 33.281998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344517, -0.505047, 0.791350,
		-0.530528, -0.800186, -0.279719,
		0.774499, -0.323466, -0.543620,
		35.241398, 31.548830, 33.118912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751278, 31.107197, 33.831654>,  <34.699249, 31.775251, 33.499443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751278, 31.107197, 33.831654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071934, 31.144159, 33.595402>,  <35.264328, 31.166336, 33.453651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071934, 31.144159, 33.595402>,  <34.751278, 31.107197, 33.831654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071934, 31.144159, 33.595402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548489, -0.506651, 0.665180,
		-0.237774, -0.857185, -0.456835,
		0.801638, 0.092406, -0.590625,
		35.312424, 31.171881, 33.418213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166973, 30.427265, 33.808643>,  <34.751278, 31.107197, 33.831654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166973, 30.427265, 33.808643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408672, 30.721577, 33.686317>,  <35.553692, 30.898163, 33.612923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408672, 30.721577, 33.686317>,  <35.166973, 30.427265, 33.808643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408672, 30.721577, 33.686317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740606, -0.377045, 0.556184,
		0.293923, -0.562557, -0.772748,
		0.604245, 0.735776, -0.305811,
		35.589947, 30.942310, 33.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792133, 30.112833, 33.870945>,  <35.166973, 30.427265, 33.808643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792133, 30.112833, 33.870945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887287, 30.495474, 33.803627>,  <35.944378, 30.725058, 33.763237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887287, 30.495474, 33.803627>,  <35.792133, 30.112833, 33.870945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887287, 30.495474, 33.803627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849824, -0.121086, 0.512969,
		0.470329, -0.265049, -0.841748,
		0.237886, 0.956602, -0.168295,
		35.958652, 30.782454, 33.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495888, 30.178385, 33.622883>,  <35.792133, 30.112833, 33.870945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495888, 30.178385, 33.622883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406174, 30.523844, 33.803463>,  <36.352345, 30.731119, 33.911812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406174, 30.523844, 33.803463>,  <36.495888, 30.178385, 33.622883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406174, 30.523844, 33.803463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695886, -0.182375, 0.694610,
		0.682232, 0.469949, -0.560097,
		-0.224283, 0.863648, 0.451452,
		36.338890, 30.782938, 33.938900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161533, 30.518291, 33.665043>,  <36.495888, 30.178385, 33.622883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161533, 30.518291, 33.665043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.910297, 30.639727, 33.951633>,  <36.759556, 30.712587, 34.123589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.910297, 30.639727, 33.951633>,  <37.161533, 30.518291, 33.665043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910297, 30.639727, 33.951633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727577, -0.097387, 0.679078,
		0.275934, 0.947814, -0.159715,
		-0.628086, 0.303586, 0.716480,
		36.721870, 30.730803, 34.166576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586254, 31.027039, 34.161198>,  <37.161533, 30.518291, 33.665043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586254, 31.027039, 34.161198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253704, 30.944658, 34.367653>,  <37.054176, 30.895229, 34.491528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253704, 30.944658, 34.367653>,  <37.586254, 31.027039, 34.161198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253704, 30.944658, 34.367653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512017, 0.077129, 0.855506,
		-0.216002, 0.975518, 0.041328,
		-0.831373, -0.205952, 0.516142,
		37.004292, 30.882874, 34.522495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468212, 31.584257, 34.720688>,  <37.586254, 31.027039, 34.161198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468212, 31.584257, 34.720688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273869, 31.250095, 34.823486>,  <37.157265, 31.049599, 34.885166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273869, 31.250095, 34.823486>,  <37.468212, 31.584257, 34.720688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273869, 31.250095, 34.823486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428660, 0.028493, 0.903016,
		-0.761705, 0.548899, 0.344261,
		-0.485856, -0.835403, 0.256994,
		37.128113, 30.999474, 34.900585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803661, 32.121483, 34.977425>,  <37.468212, 31.584257, 34.720688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803661, 32.121483, 34.977425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015942, 32.441990, 35.087936>,  <38.143311, 32.634293, 35.154243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015942, 32.441990, 35.087936>,  <37.803661, 32.121483, 34.977425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015942, 32.441990, 35.087936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248747, 0.458864, -0.852976,
		-0.810234, 0.383954, 0.442833,
		0.530704, 0.801263, 0.276280,
		38.175152, 32.682369, 35.170822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338131, 32.717400, 34.990646>,  <37.803661, 32.121483, 34.977425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338131, 32.717400, 34.990646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711197, 32.833801, 34.905361>,  <37.935036, 32.903641, 34.854191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711197, 32.833801, 34.905361>,  <37.338131, 32.717400, 34.990646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711197, 32.833801, 34.905361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317150, 0.379739, -0.869030,
		-0.171921, 0.878133, 0.446459,
		0.932662, 0.290999, -0.213215,
		37.990997, 32.921101, 34.841396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244984, 33.383331, 34.657749>,  <37.338131, 32.717400, 34.990646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244984, 33.383331, 34.657749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614140, 33.270939, 34.552425>,  <37.835632, 33.203503, 34.489231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614140, 33.270939, 34.552425>,  <37.244984, 33.383331, 34.657749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614140, 33.270939, 34.552425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130001, 0.416296, -0.899887,
		0.362466, 0.864724, 0.347666,
		0.922886, -0.280982, -0.263308,
		37.891006, 33.186646, 34.473434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630520, 33.961407, 34.437305>,  <37.244984, 33.383331, 34.657749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630520, 33.961407, 34.437305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788136, 33.642822, 34.253838>,  <37.882706, 33.451672, 34.143757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788136, 33.642822, 34.253838>,  <37.630520, 33.961407, 34.437305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788136, 33.642822, 34.253838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156453, 0.433636, -0.887402,
		0.905679, 0.421432, 0.046261,
		0.394040, -0.796464, -0.458670,
		37.906349, 33.403885, 34.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142059, 34.230824, 33.986633>,  <37.630520, 33.961407, 34.437305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142059, 34.230824, 33.986633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069057, 33.858589, 33.859692>,  <38.025257, 33.635250, 33.783527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069057, 33.858589, 33.859692>,  <38.142059, 34.230824, 33.986633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069057, 33.858589, 33.859692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146586, 0.344916, -0.927117,
		0.972217, -0.122682, -0.199358,
		-0.182502, -0.930582, -0.317350,
		38.014305, 33.579414, 33.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547932, 34.270168, 33.502289>,  <38.142059, 34.230824, 33.986633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547932, 34.270168, 33.502289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287022, 33.972935, 33.442482>,  <38.130474, 33.794594, 33.406597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287022, 33.972935, 33.442482>,  <38.547932, 34.270168, 33.502289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287022, 33.972935, 33.442482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124919, 0.299941, -0.945743,
		0.747616, -0.598210, -0.288470,
		-0.652277, -0.743088, -0.149513,
		38.091339, 33.750008, 33.397629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757435, 34.065300, 32.885513>,  <38.547932, 34.270168, 33.502289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757435, 34.065300, 32.885513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389858, 33.909256, 32.908676>,  <38.169312, 33.815628, 32.922573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389858, 33.909256, 32.908676>,  <38.757435, 34.065300, 32.885513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389858, 33.909256, 32.908676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146899, 0.202324, -0.968239,
		0.366005, -0.898264, -0.243231,
		-0.918946, -0.390110, 0.057902,
		38.114174, 33.792225, 32.926048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626163, 33.570225, 32.259621>,  <38.757435, 34.065300, 32.885513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626163, 33.570225, 32.259621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279545, 33.704544, 32.407314>,  <38.071575, 33.785137, 32.495930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279545, 33.704544, 32.407314>,  <38.626163, 33.570225, 32.259621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279545, 33.704544, 32.407314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347519, 0.125040, -0.929298,
		-0.358227, -0.933597, 0.008343,
		-0.866547, 0.335800, 0.369235,
		38.019581, 33.805283, 32.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165138, 33.320126, 31.810482>,  <38.626163, 33.570225, 32.259621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165138, 33.320126, 31.810482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937595, 33.591866, 31.995905>,  <37.801067, 33.754910, 32.107159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937595, 33.591866, 31.995905>,  <38.165138, 33.320126, 31.810482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937595, 33.591866, 31.995905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489511, 0.173255, -0.854612,
		-0.660892, -0.713071, 0.233991,
		-0.568859, 0.679347, 0.463559,
		37.766937, 33.795670, 32.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554840, 33.263374, 31.452015>,  <38.165138, 33.320126, 31.810482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554840, 33.263374, 31.452015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534611, 33.617359, 31.637180>,  <37.522472, 33.829750, 31.748280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534611, 33.617359, 31.637180>,  <37.554840, 33.263374, 31.452015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534611, 33.617359, 31.637180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407769, 0.404815, -0.818443,
		-0.911683, -0.230157, 0.340384,
		-0.050578, 0.884959, 0.462914,
		37.519436, 33.882847, 31.776054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762138, 33.506100, 31.347660>,  <37.554840, 33.263374, 31.452015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762138, 33.506100, 31.347660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989883, 33.833424, 31.379143>,  <37.126530, 34.029819, 31.398031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989883, 33.833424, 31.379143>,  <36.762138, 33.506100, 31.347660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989883, 33.833424, 31.379143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415759, 0.369215, -0.831159,
		-0.709206, 0.440506, 0.550437,
		0.569360, 0.818312, 0.078705,
		37.160690, 34.078918, 31.402754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258606, 33.969543, 31.085337>,  <36.762138, 33.506100, 31.347660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258606, 33.969543, 31.085337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596390, 34.183475, 31.097008>,  <36.799061, 34.311836, 31.104010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596390, 34.183475, 31.097008>,  <36.258606, 33.969543, 31.085337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596390, 34.183475, 31.097008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376155, 0.630935, -0.678549,
		-0.381318, 0.562029, 0.733975,
		0.844455, 0.534832, 0.029177,
		36.849728, 34.343925, 31.105761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078106, 34.706741, 31.116928>,  <36.258606, 33.969543, 31.085337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078106, 34.706741, 31.116928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453411, 34.687168, 30.979954>,  <36.678596, 34.675423, 30.897770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453411, 34.687168, 30.979954>,  <36.078106, 34.706741, 31.116928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453411, 34.687168, 30.979954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274804, 0.495801, -0.823811,
		0.210093, 0.867056, 0.451745,
		0.938266, -0.048935, -0.342435,
		36.734890, 34.672489, 30.877224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183605, 35.372509, 30.991261>,  <36.078106, 34.706741, 31.116928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183605, 35.372509, 30.991261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392624, 35.105816, 30.778692>,  <36.518036, 34.945801, 30.651152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392624, 35.105816, 30.778692>,  <36.183605, 35.372509, 30.991261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392624, 35.105816, 30.778692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290053, 0.447097, -0.846152,
		0.801756, 0.596295, 0.040240,
		0.522547, -0.666736, -0.531420,
		36.549389, 34.905796, 30.619267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699215, 35.759357, 30.576418>,  <36.183605, 35.372509, 30.991261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699215, 35.759357, 30.576418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582642, 35.409718, 30.420980>,  <36.512695, 35.199932, 30.327717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582642, 35.409718, 30.420980>,  <36.699215, 35.759357, 30.576418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582642, 35.409718, 30.420980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324484, 0.472478, -0.819435,
		0.899875, -0.112720, -0.421330,
		-0.291436, -0.874104, -0.388596,
		36.495213, 35.147488, 30.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797569, 35.870209, 29.914751>,  <36.699215, 35.759357, 30.576418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797569, 35.870209, 29.914751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607475, 35.520935, 29.871496>,  <36.493420, 35.311371, 29.845543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607475, 35.520935, 29.871496>,  <36.797569, 35.870209, 29.914751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607475, 35.520935, 29.871496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167502, 0.210442, -0.963150,
		0.863766, -0.439613, -0.246271,
		-0.475239, -0.873187, -0.108136,
		36.464905, 35.258980, 29.839056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118946, 35.495022, 29.240366>,  <36.797569, 35.870209, 29.914751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118946, 35.495022, 29.240366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759014, 35.341373, 29.323080>,  <36.543056, 35.249184, 29.372707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759014, 35.341373, 29.323080>,  <37.118946, 35.495022, 29.240366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759014, 35.341373, 29.323080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263646, 0.101187, -0.959298,
		0.347565, -0.917720, -0.192324,
		-0.899828, -0.384124, 0.206784,
		36.489067, 35.226135, 29.385115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937210, 35.048512, 28.693378>,  <37.118946, 35.495022, 29.240366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937210, 35.048512, 28.693378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588989, 35.149090, 28.862572>,  <36.380058, 35.209438, 28.964087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588989, 35.149090, 28.862572>,  <36.937210, 35.048512, 28.693378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588989, 35.149090, 28.862572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385268, 0.186452, -0.903772,
		-0.306116, -0.949742, -0.065442,
		-0.870553, 0.251447, 0.422981,
		36.327824, 35.224522, 28.989466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.380653, 34.569618, 28.248730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191856, 34.863697, 28.443336>,  <36.078579, 35.040146, 28.560101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191856, 34.863697, 28.443336>,  <36.380653, 34.569618, 28.248730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191856, 34.863697, 28.443336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507161, 0.224964, -0.831973,
		-0.721117, -0.639429, 0.266684,
		-0.471993, 0.735202, 0.486519,
		36.050259, 35.084259, 28.589293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596573, 34.549362, 28.260080>,  <36.380653, 34.569618, 28.248730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596573, 34.549362, 28.260080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688282, 34.935604, 28.309135>,  <35.743309, 35.167351, 28.338570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688282, 34.935604, 28.309135>,  <35.596573, 34.549362, 28.260080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688282, 34.935604, 28.309135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638908, 0.244348, -0.729446,
		-0.734323, 0.088889, 0.672955,
		0.229275, 0.965605, 0.122639,
		35.757065, 35.225285, 28.345926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895920, 34.818153, 28.312321>,  <35.596573, 34.549362, 28.260080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895920, 34.818153, 28.312321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135544, 35.134834, 28.264435>,  <35.279320, 35.324844, 28.235703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135544, 35.134834, 28.264435>,  <34.895920, 34.818153, 28.312321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135544, 35.134834, 28.264435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689118, 0.433644, -0.580577,
		-0.407731, 0.430299, 0.805356,
		0.599059, 0.791704, -0.119717,
		35.315262, 35.372345, 28.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536034, 35.475838, 28.439659>,  <34.895920, 34.818153, 28.312321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536034, 35.475838, 28.439659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848587, 35.575035, 28.210594>,  <35.036118, 35.634552, 28.073154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848587, 35.575035, 28.210594>,  <34.536034, 35.475838, 28.439659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848587, 35.575035, 28.210594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620206, 0.410363, -0.668541,
		0.069207, 0.877555, 0.474456,
		0.781380, 0.247992, -0.572664,
		35.083000, 35.649433, 28.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271645, 36.103302, 28.240774>,  <34.536034, 35.475838, 28.439659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271645, 36.103302, 28.240774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568001, 36.036766, 27.980492>,  <34.745815, 35.996845, 27.824322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568001, 36.036766, 27.980492>,  <34.271645, 36.103302, 28.240774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568001, 36.036766, 27.980492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617475, 0.212446, -0.757358,
		0.264218, 0.962911, 0.054689,
		0.740887, -0.166338, -0.650706,
		34.790268, 35.986866, 27.785280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275433, 36.676716, 27.841728>,  <34.271645, 36.103302, 28.240774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275433, 36.676716, 27.841728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455940, 36.398659, 27.617893>,  <34.564243, 36.231827, 27.483593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455940, 36.398659, 27.617893>,  <34.275433, 36.676716, 27.841728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455940, 36.398659, 27.617893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532141, 0.293764, -0.794059,
		0.716368, 0.656113, -0.237345,
		0.451269, -0.695139, -0.559588,
		34.591320, 36.190117, 27.450016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703087, 37.023117, 27.167124>,  <34.275433, 36.676716, 27.841728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703087, 37.023117, 27.167124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620499, 36.639084, 27.091635>,  <34.570946, 36.408665, 27.046341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620499, 36.639084, 27.091635>,  <34.703087, 37.023117, 27.167124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620499, 36.639084, 27.091635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373972, 0.255667, -0.891504,
		0.904166, -0.113491, -0.411830,
		-0.206469, -0.960080, -0.188723,
		34.558559, 36.351059, 27.035019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939655, 36.946266, 26.512335>,  <34.703087, 37.023117, 27.167124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939655, 36.946266, 26.512335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691845, 36.637012, 26.566675>,  <34.543159, 36.451462, 26.599279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691845, 36.637012, 26.566675>,  <34.939655, 36.946266, 26.512335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691845, 36.637012, 26.566675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374741, 0.139222, -0.916617,
		0.689755, -0.618773, -0.375976,
		-0.619522, -0.773135, 0.135850,
		34.505989, 36.405071, 26.607430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973885, 36.504642, 25.956820>,  <34.939655, 36.946266, 26.512335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973885, 36.504642, 25.956820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605434, 36.436680, 26.096914>,  <34.384365, 36.395905, 26.180971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605434, 36.436680, 26.096914>,  <34.973885, 36.504642, 25.956820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605434, 36.436680, 26.096914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382539, 0.228440, -0.895254,
		0.072099, -0.958618, -0.275416,
		-0.921122, -0.169904, 0.350238,
		34.329098, 36.385708, 26.201986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652588, 36.216057, 25.389923>,  <34.973885, 36.504642, 25.956820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652588, 36.216057, 25.389923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329475, 36.276768, 25.617765>,  <34.135609, 36.313194, 25.754471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329475, 36.276768, 25.617765>,  <34.652588, 36.216057, 25.389923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329475, 36.276768, 25.617765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521436, 0.266705, -0.810539,
		-0.274939, -0.951752, -0.136297,
		-0.807783, 0.151778, 0.569605,
		34.087139, 36.322300, 25.788647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085476, 36.025108, 25.033560>,  <34.652588, 36.216057, 25.389923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085476, 36.025108, 25.033560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879345, 36.212601, 25.320538>,  <33.755665, 36.325096, 25.492725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879345, 36.212601, 25.320538>,  <34.085476, 36.025108, 25.033560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879345, 36.212601, 25.320538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687473, 0.273742, -0.672642,
		-0.511684, -0.839855, 0.181174,
		-0.515327, 0.468732, 0.717446,
		33.724747, 36.353222, 25.535772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361580, 35.830235, 24.977058>,  <34.085476, 36.025108, 25.033560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361580, 35.830235, 24.977058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384197, 36.184231, 25.161926>,  <33.397766, 36.396629, 25.272846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384197, 36.184231, 25.161926>,  <33.361580, 35.830235, 24.977058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384197, 36.184231, 25.161926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474912, 0.431026, -0.767252,
		-0.878215, -0.176109, 0.444662,
		0.056541, 0.884987, 0.462169,
		33.401161, 36.449726, 25.300577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740936, 36.134014, 24.961039>,  <33.361580, 35.830235, 24.977058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740936, 36.134014, 24.961039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964302, 36.460999, 25.017513>,  <33.098320, 36.657188, 25.051397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964302, 36.460999, 25.017513>,  <32.740936, 36.134014, 24.961039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964302, 36.460999, 25.017513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490270, 0.462496, -0.738737,
		-0.669186, 0.343301, 0.659040,
		0.558413, 0.817460, 0.141186,
		33.131824, 36.706238, 25.059870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241108, 36.720509, 25.019789>,  <32.740936, 36.134014, 24.961039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241108, 36.720509, 25.019789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594055, 36.892570, 24.943480>,  <32.805824, 36.995808, 24.897694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594055, 36.892570, 24.943480>,  <32.241108, 36.720509, 25.019789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594055, 36.892570, 24.943480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420922, 0.540286, -0.728640,
		-0.210353, 0.723230, 0.657792,
		0.882370, 0.430150, -0.190773,
		32.858765, 37.021614, 24.886248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136623, 37.398663, 24.893318>,  <32.241108, 36.720509, 25.019789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136623, 37.398663, 24.893318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495022, 37.391247, 24.715849>,  <32.710060, 37.386799, 24.609367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495022, 37.391247, 24.715849>,  <32.136623, 37.398663, 24.893318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495022, 37.391247, 24.715849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313370, 0.681509, -0.661320,
		0.314625, 0.731575, 0.604821,
		0.895997, -0.018535, -0.443674,
		32.763821, 37.385685, 24.582747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327190, 38.032021, 24.777153>,  <32.136623, 37.398663, 24.893318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327190, 38.032021, 24.777153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515442, 37.805035, 24.506895>,  <32.628391, 37.668842, 24.344740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515442, 37.805035, 24.506895>,  <32.327190, 38.032021, 24.777153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515442, 37.805035, 24.506895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167413, 0.694409, -0.699835,
		0.866305, 0.442473, 0.231807,
		0.470627, -0.567462, -0.675646,
		32.656631, 37.634796, 24.304201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650322, 38.504475, 24.370499>,  <32.327190, 38.032021, 24.777153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650322, 38.504475, 24.370499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693504, 38.196209, 24.119286>,  <32.719414, 38.011250, 23.968557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693504, 38.196209, 24.119286>,  <32.650322, 38.504475, 24.370499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693504, 38.196209, 24.119286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168221, 0.608455, -0.775554,
		0.979820, 0.189378, -0.063952,
		0.107960, -0.770661, -0.628033,
		32.725891, 37.965012, 23.930876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944286, 38.799793, 23.751991>,  <32.650322, 38.504475, 24.370499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944286, 38.799793, 23.751991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776634, 38.453388, 23.642920>,  <32.676041, 38.245544, 23.577477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776634, 38.453388, 23.642920>,  <32.944286, 38.799793, 23.751991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776634, 38.453388, 23.642920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431266, 0.454186, -0.779566,
		0.798960, -0.209143, -0.563845,
		-0.419132, -0.866010, -0.272681,
		32.650894, 38.193584, 23.561115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184917, 38.603336, 23.092228>,  <32.944286, 38.799793, 23.751991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184917, 38.603336, 23.092228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826668, 38.433208, 23.144312>,  <32.611717, 38.331131, 23.175562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826668, 38.433208, 23.144312>,  <33.184917, 38.603336, 23.092228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826668, 38.433208, 23.144312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416411, 0.698807, -0.581611,
		0.156379, -0.575127, -0.802978,
		-0.895626, -0.425321, 0.130211,
		32.557980, 38.305611, 23.183374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905117, 38.726265, 22.436459>,  <33.184917, 38.603336, 23.092228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905117, 38.726265, 22.436459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597233, 38.628567, 22.672386>,  <32.412502, 38.569946, 22.813944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597233, 38.628567, 22.672386>,  <32.905117, 38.726265, 22.436459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597233, 38.628567, 22.672386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556203, 0.710059, -0.431804,
		-0.313341, -0.660424, -0.682391,
		-0.769712, -0.244246, 0.589820,
		32.366318, 38.555294, 22.849333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287983, 38.664345, 21.941692>,  <32.905117, 38.726265, 22.436459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287983, 38.664345, 21.941692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121632, 38.676289, 22.305265>,  <32.021820, 38.683453, 22.523409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121632, 38.676289, 22.305265>,  <32.287983, 38.664345, 21.941692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121632, 38.676289, 22.305265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703003, 0.623483, -0.342134,
		-0.576918, -0.781267, -0.238302,
		-0.415875, 0.029856, 0.908932,
		31.996868, 38.685246, 22.577946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518513, 38.396893, 21.979494>,  <32.287983, 38.664345, 21.941692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518513, 38.396893, 21.979494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590843, 38.659889, 22.272072>,  <31.634241, 38.817688, 22.447618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590843, 38.659889, 22.272072>,  <31.518513, 38.396893, 21.979494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590843, 38.659889, 22.272072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678841, 0.621582, -0.390911,
		-0.711672, -0.425847, 0.558729,
		0.180827, 0.657488, 0.731444,
		31.645092, 38.857136, 22.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846630, 38.779644, 22.251343>,  <31.518513, 38.396893, 21.979494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846630, 38.779644, 22.251343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167210, 39.005417, 22.330429>,  <31.359558, 39.140881, 22.377880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167210, 39.005417, 22.330429>,  <30.846630, 38.779644, 22.251343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167210, 39.005417, 22.330429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533024, 0.824058, -0.191868,
		-0.271226, 0.048385, 0.961299,
		0.801450, 0.564435, 0.197716,
		31.407644, 39.174747, 22.389744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670465, 39.328831, 22.783997>,  <30.846630, 38.779644, 22.251343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670465, 39.328831, 22.783997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963169, 39.420067, 22.527092>,  <31.138792, 39.474808, 22.372950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963169, 39.420067, 22.527092>,  <30.670465, 39.328831, 22.783997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963169, 39.420067, 22.527092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638381, 0.559460, -0.528653,
		0.238739, 0.796856, 0.555000,
		0.731760, 0.228091, -0.642263,
		31.182697, 39.488495, 22.334414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348049, 39.007637, 23.337088>,  <30.670465, 39.328831, 22.783997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348049, 39.007637, 23.337088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971880, 38.993847, 23.472387>,  <29.746178, 38.985573, 23.553568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971880, 38.993847, 23.472387>,  <30.348049, 39.007637, 23.337088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971880, 38.993847, 23.472387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314002, -0.469616, 0.825144,
		0.130399, 0.882197, 0.452465,
		-0.940425, -0.034477, 0.338249,
		29.689753, 38.983505, 23.573862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346651, 39.346478, 23.945902>,  <30.348049, 39.007637, 23.337088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346651, 39.346478, 23.945902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037579, 39.092663, 23.953081>,  <29.852135, 38.940372, 23.957388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037579, 39.092663, 23.953081>,  <30.346651, 39.346478, 23.945902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037579, 39.092663, 23.953081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372386, -0.430197, 0.822350,
		-0.514090, 0.642100, 0.568699,
		-0.772683, -0.634538, 0.017949,
		29.805773, 38.902302, 23.958466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330965, 39.117329, 24.692200>,  <30.346651, 39.346478, 23.945902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330965, 39.117329, 24.692200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098560, 38.841896, 24.518635>,  <29.959118, 38.676636, 24.414495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098560, 38.841896, 24.518635>,  <30.330965, 39.117329, 24.692200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098560, 38.841896, 24.518635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155024, -0.616999, 0.771544,
		-0.798996, 0.381008, 0.465229,
		-0.581011, -0.688582, -0.433914,
		29.924257, 38.635323, 24.388460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824211, 38.839046, 25.160692>,  <30.330965, 39.117329, 24.692200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824211, 38.839046, 25.160692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805479, 38.554253, 24.880442>,  <29.794239, 38.383377, 24.712292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805479, 38.554253, 24.880442>,  <29.824211, 38.839046, 25.160692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805479, 38.554253, 24.880442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075624, -0.701911, 0.708239,
		-0.996036, -0.019817, 0.086714,
		-0.046831, -0.711989, -0.700627,
		29.791430, 38.340656, 24.670254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408499, 38.322025, 25.344175>,  <29.824211, 38.839046, 25.160692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408499, 38.322025, 25.344175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655544, 38.142429, 25.085884>,  <29.803772, 38.034672, 24.930910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655544, 38.142429, 25.085884>,  <29.408499, 38.322025, 25.344175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655544, 38.142429, 25.085884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182385, -0.716887, 0.672910,
		-0.765045, -0.533367, -0.360867,
		0.617609, -0.448990, -0.645729,
		29.840828, 38.007732, 24.892166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276968, 37.667858, 25.502466>,  <29.408499, 38.322025, 25.344175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276968, 37.667858, 25.502466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614614, 37.619339, 25.293564>,  <29.817204, 37.590225, 25.168222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614614, 37.619339, 25.293564>,  <29.276968, 37.667858, 25.502466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614614, 37.619339, 25.293564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367325, -0.578719, 0.728119,
		-0.390561, -0.806456, -0.443950,
		0.844117, -0.121301, -0.522257,
		29.867849, 37.582951, 25.136887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341631, 36.912777, 25.289663>,  <29.276968, 37.667858, 25.502466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341631, 36.912777, 25.289663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.696547, 37.097252, 25.287489>,  <29.909496, 37.207935, 25.286184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.696547, 37.097252, 25.287489>,  <29.341631, 36.912777, 25.289663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696547, 37.097252, 25.287489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389707, -0.743363, 0.543636,
		0.246674, -0.484481, -0.839303,
		0.887289, 0.461183, -0.005437,
		29.962732, 37.235607, 25.285858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833347, 36.377670, 25.331526>,  <29.341631, 36.912777, 25.289663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833347, 36.377670, 25.331526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068230, 36.681923, 25.442251>,  <30.209160, 36.864475, 25.508686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068230, 36.681923, 25.442251>,  <29.833347, 36.377670, 25.331526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068230, 36.681923, 25.442251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529647, -0.619675, 0.579204,
		0.612097, -0.193498, -0.766744,
		0.587206, 0.760632, 0.276815,
		30.244392, 36.910114, 25.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515940, 36.165154, 25.258080>,  <29.833347, 36.377670, 25.331526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515940, 36.165154, 25.258080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540495, 36.483154, 25.499477>,  <30.555227, 36.673954, 25.644316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540495, 36.483154, 25.499477>,  <30.515940, 36.165154, 25.258080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540495, 36.483154, 25.499477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529101, -0.538609, 0.655707,
		0.846335, 0.279057, -0.453700,
		0.061388, 0.795002, 0.603493,
		30.558910, 36.721653, 25.680525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207201, 36.308270, 25.345339>,  <30.515940, 36.165154, 25.258080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207201, 36.308270, 25.345339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038555, 36.476334, 25.666761>,  <30.937368, 36.577171, 25.859615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038555, 36.476334, 25.666761>,  <31.207201, 36.308270, 25.345339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038555, 36.476334, 25.666761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656374, -0.470006, 0.590143,
		0.625632, 0.776247, -0.077623,
		-0.421613, 0.420162, 0.803559,
		30.912071, 36.602383, 25.907829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752680, 36.646782, 25.564192>,  <31.207201, 36.308270, 25.345339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752680, 36.646782, 25.564192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473829, 36.602924, 25.847597>,  <31.306519, 36.576611, 26.017641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473829, 36.602924, 25.847597>,  <31.752680, 36.646782, 25.564192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473829, 36.602924, 25.847597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690268, -0.369733, 0.621954,
		0.193767, 0.922646, 0.333434,
		-0.697125, -0.109645, 0.708515,
		31.264692, 36.570030, 26.060152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127575, 36.839733, 26.159870>,  <31.752680, 36.646782, 25.564192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127575, 36.839733, 26.159870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805807, 36.672638, 26.328819>,  <31.612745, 36.572380, 26.430189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805807, 36.672638, 26.328819>,  <32.127575, 36.839733, 26.159870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805807, 36.672638, 26.328819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576807, -0.379157, 0.723556,
		-0.142110, 0.825673, 0.545956,
		-0.804424, -0.417736, 0.422373,
		31.564480, 36.547318, 26.455530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146999, 36.955547, 26.853537>,  <32.127575, 36.839733, 26.159870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146999, 36.955547, 26.853537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897854, 36.644405, 26.820099>,  <31.748367, 36.457722, 26.800035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897854, 36.644405, 26.820099>,  <32.146999, 36.955547, 26.853537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897854, 36.644405, 26.820099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516203, -0.488922, 0.703200,
		-0.587856, 0.394845, 0.706061,
		-0.622864, -0.777851, -0.083595,
		31.710995, 36.411049, 26.795021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972961, 36.707722, 27.597282>,  <32.146999, 36.955547, 26.853537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972961, 36.707722, 27.597282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896961, 36.405132, 27.346956>,  <31.851360, 36.223579, 27.196760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896961, 36.405132, 27.346956>,  <31.972961, 36.707722, 27.597282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896961, 36.405132, 27.346956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338867, -0.648787, 0.681355,
		-0.921449, -0.082610, 0.379615,
		-0.190002, -0.756473, -0.625818,
		31.839960, 36.178192, 27.159210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127029, 36.104023, 27.985510>,  <31.972961, 36.707722, 27.597282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127029, 36.104023, 27.985510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086857, 35.910728, 27.637625>,  <32.062752, 35.794754, 27.428894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086857, 35.910728, 27.637625>,  <32.127029, 36.104023, 27.985510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086857, 35.910728, 27.637625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499054, -0.780683, 0.376137,
		-0.860731, -0.396258, 0.319564,
		-0.100431, -0.483233, -0.869712,
		32.056728, 35.765759, 27.376711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661045, 35.551201, 28.073648>,  <32.127029, 36.104023, 27.985510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661045, 35.551201, 28.073648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923695, 35.481552, 27.780111>,  <32.081284, 35.439762, 27.603989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923695, 35.481552, 27.780111>,  <31.661045, 35.551201, 28.073648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923695, 35.481552, 27.780111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379806, -0.764273, 0.521185,
		-0.651605, -0.620941, -0.435709,
		0.656626, -0.174121, -0.733842,
		32.120682, 35.429314, 27.559958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576723, 34.813179, 28.006998>,  <31.661045, 35.551201, 28.073648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576723, 34.813179, 28.006998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928473, 34.924995, 27.852825>,  <32.139523, 34.992085, 27.760323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928473, 34.924995, 27.852825>,  <31.576723, 34.813179, 28.006998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928473, 34.924995, 27.852825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461514, -0.699476, 0.545654,
		-0.117067, -0.657716, -0.744113,
		0.879375, 0.279541, -0.385431,
		32.192284, 35.008858, 27.737196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875032, 34.306850, 27.694969>,  <31.576723, 34.813179, 28.006998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875032, 34.306850, 27.694969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181030, 34.549908, 27.780334>,  <32.364628, 34.695744, 27.831554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181030, 34.549908, 27.780334>,  <31.875032, 34.306850, 27.694969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181030, 34.549908, 27.780334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412629, -0.716861, 0.562002,
		0.494487, -0.341869, -0.799129,
		0.764996, 0.607647, 0.213413,
		32.410530, 34.732201, 27.844358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468590, 33.924240, 27.650209>,  <31.875032, 34.306850, 27.694969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468590, 33.924240, 27.650209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616081, 34.235538, 27.853529>,  <32.704575, 34.422318, 27.975521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616081, 34.235538, 27.853529>,  <32.468590, 33.924240, 27.650209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616081, 34.235538, 27.853529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562727, -0.622130, 0.544328,
		0.739852, 0.085327, -0.667337,
		0.368724, 0.778250, 0.508300,
		32.726700, 34.469013, 28.006020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287121, 33.813583, 27.641083>,  <32.468590, 33.924240, 27.650209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287121, 33.813583, 27.641083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184933, 34.049767, 27.947308>,  <33.123619, 34.191479, 28.131042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184933, 34.049767, 27.947308>,  <33.287121, 33.813583, 27.641083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184933, 34.049767, 27.947308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692239, -0.441073, 0.571191,
		0.674937, 0.675876, -0.296060,
		-0.255471, 0.590462, 0.765564,
		33.108292, 34.226906, 28.176977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.105488, 34.814728, 30.892628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744915, 34.666481, 30.982136>,  <37.528572, 34.577534, 31.035841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744915, 34.666481, 30.982136>,  <38.105488, 34.814728, 30.892628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744915, 34.666481, 30.982136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336008, -0.272995, 0.901428,
		-0.272995, 0.887760, 0.370615,
		-0.901428, -0.370615, 0.223769,
		37.474487, 34.555298, 31.049267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889664, 35.132202, 31.557302>,  <38.105488, 34.814728, 30.892628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889664, 35.132202, 31.557302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691628, 34.789097, 31.501989>,  <37.572807, 34.583233, 31.468801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691628, 34.789097, 31.501989>,  <37.889664, 35.132202, 31.557302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691628, 34.789097, 31.501989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158207, -0.245500, 0.956400,
		-0.854317, 0.451625, 0.257249,
		-0.495089, -0.857767, -0.138285,
		37.543102, 34.531765, 31.460505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443413, 35.078632, 32.155544>,  <37.889664, 35.132202, 31.557302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443413, 35.078632, 32.155544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460983, 34.700504, 32.026272>,  <37.471527, 34.473629, 31.948709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460983, 34.700504, 32.026272>,  <37.443413, 35.078632, 32.155544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460983, 34.700504, 32.026272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103125, -0.326051, 0.939710,
		-0.993698, -0.007951, -0.111808,
		0.043927, -0.945318, -0.323177,
		37.474163, 34.416908, 31.929319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049294, 34.710304, 32.725670>,  <37.443413, 35.078632, 32.155544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049294, 34.710304, 32.725670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253670, 34.417679, 32.545113>,  <37.376297, 34.242104, 32.436779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253670, 34.417679, 32.545113>,  <37.049294, 34.710304, 32.725670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253670, 34.417679, 32.545113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080955, -0.481826, 0.872519,
		-0.855796, -0.482348, -0.186960,
		0.510940, -0.731563, -0.451393,
		37.406952, 34.198212, 32.409695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853867, 34.106045, 33.056244>,  <37.049294, 34.710304, 32.725670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853867, 34.106045, 33.056244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193501, 33.991283, 32.878822>,  <37.397282, 33.922428, 32.772369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193501, 33.991283, 32.878822>,  <36.853867, 34.106045, 33.056244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193501, 33.991283, 32.878822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252920, -0.516370, 0.818165,
		-0.463765, -0.806878, -0.365882,
		0.849090, -0.286897, -0.443550,
		37.448227, 33.905212, 32.745758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915821, 33.393002, 33.112019>,  <36.853867, 34.106045, 33.056244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915821, 33.393002, 33.112019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293522, 33.506313, 33.044922>,  <37.520142, 33.574299, 33.004665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293522, 33.506313, 33.044922>,  <36.915821, 33.393002, 33.112019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293522, 33.506313, 33.044922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309212, -0.588238, 0.747237,
		0.113006, -0.757449, -0.643040,
		0.944255, 0.283278, -0.167738,
		37.576797, 33.591297, 32.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211956, 32.771904, 33.184906>,  <36.915821, 33.393002, 33.112019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211956, 32.771904, 33.184906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471603, 33.071362, 33.238831>,  <37.627392, 33.251038, 33.271187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471603, 33.071362, 33.238831>,  <37.211956, 32.771904, 33.184906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471603, 33.071362, 33.238831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196967, -0.336599, 0.920818,
		0.734745, -0.571165, -0.365951,
		0.649118, 0.748646, 0.134813,
		37.666340, 33.295956, 33.279274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868729, 32.398308, 33.289700>,  <37.211956, 32.771904, 33.184906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868729, 32.398308, 33.289700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903336, 32.766705, 33.441639>,  <37.924099, 32.987743, 33.532803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903336, 32.766705, 33.441639>,  <37.868729, 32.398308, 33.289700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903336, 32.766705, 33.441639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353445, -0.384855, 0.852621,
		0.931446, 0.060490, -0.358817,
		0.086518, 0.920993, 0.379852,
		37.929291, 33.043003, 33.555595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464348, 32.317501, 33.703560>,  <37.868729, 32.398308, 33.289700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464348, 32.317501, 33.703560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302994, 32.661751, 33.827888>,  <38.206181, 32.868301, 33.902485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302994, 32.661751, 33.827888>,  <38.464348, 32.317501, 33.703560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302994, 32.661751, 33.827888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378075, -0.152573, 0.913116,
		0.833270, 0.485854, -0.263833,
		-0.403387, 0.860621, 0.310823,
		38.181976, 32.919937, 33.921135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003307, 32.703030, 34.095566>,  <38.464348, 32.317501, 33.703560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003307, 32.703030, 34.095566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651798, 32.857494, 34.207729>,  <38.440891, 32.950172, 34.275028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651798, 32.857494, 34.207729>,  <39.003307, 32.703030, 34.095566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651798, 32.857494, 34.207729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317498, 0.034395, 0.947635,
		0.356297, 0.921789, -0.152831,
		-0.878776, 0.386164, 0.280411,
		38.388165, 32.973343, 34.291851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167171, 33.243431, 34.528214>,  <39.003307, 32.703030, 34.095566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167171, 33.243431, 34.528214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789989, 33.170612, 34.639709>,  <38.563679, 33.126923, 34.706608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789989, 33.170612, 34.639709>,  <39.167171, 33.243431, 34.528214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789989, 33.170612, 34.639709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322854, -0.295701, 0.899070,
		-0.081248, 0.937774, 0.337607,
		-0.942955, -0.182046, 0.278739,
		38.507103, 33.115997, 34.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989304, 33.658268, 35.136383>,  <39.167171, 33.243431, 34.528214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989304, 33.658268, 35.136383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768944, 33.324440, 35.137814>,  <38.636730, 33.124146, 35.138672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768944, 33.324440, 35.137814>,  <38.989304, 33.658268, 35.136383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768944, 33.324440, 35.137814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366289, -0.237934, 0.899567,
		-0.749897, 0.496878, 0.436769,
		-0.550897, -0.834566, 0.003575,
		38.603676, 33.074070, 35.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653309, 33.633072, 35.786217>,  <38.989304, 33.658268, 35.136383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653309, 33.633072, 35.786217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701748, 33.268669, 35.628536>,  <38.730812, 33.050026, 35.533928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701748, 33.268669, 35.628536>,  <38.653309, 33.633072, 35.786217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701748, 33.268669, 35.628536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353099, -0.331620, 0.874843,
		-0.927716, -0.245132, 0.281519,
		0.121095, -0.911010, -0.394205,
		38.738075, 32.995365, 35.510273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512272, 33.192158, 36.305668>,  <38.653309, 33.633072, 35.786217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512272, 33.192158, 36.305668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715382, 32.961609, 36.049553>,  <38.837246, 32.823280, 35.895885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715382, 32.961609, 36.049553>,  <38.512272, 33.192158, 36.305668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715382, 32.961609, 36.049553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477638, -0.430186, 0.766030,
		-0.716957, -0.694795, 0.056858,
		0.507774, -0.576368, -0.640286,
		38.867714, 32.788700, 35.857468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092365, 33.496246, 36.763538>,  <38.512272, 33.192158, 36.305668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092365, 33.496246, 36.763538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108513, 33.817493, 37.001320>,  <39.118202, 34.010242, 37.143990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108513, 33.817493, 37.001320>,  <39.092365, 33.496246, 36.763538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108513, 33.817493, 37.001320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766739, 0.406380, -0.496956,
		-0.640688, -0.435728, 0.632186,
		0.040370, 0.803116, 0.594453,
		39.120625, 34.058430, 37.179657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335854, 33.597561, 37.033623>,  <39.092365, 33.496246, 36.763538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335854, 33.597561, 37.033623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531113, 33.946289, 37.049839>,  <38.648270, 34.155525, 37.059570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531113, 33.946289, 37.049839>,  <38.335854, 33.597561, 37.033623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531113, 33.946289, 37.049839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670961, 0.404583, -0.621389,
		-0.558140, 0.276130, 0.782452,
		0.488151, 0.871817, 0.040541,
		38.677559, 34.207832, 37.062000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813381, 34.157402, 37.071613>,  <38.335854, 33.597561, 37.033623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813381, 34.157402, 37.071613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146667, 34.349285, 36.961605>,  <38.346638, 34.464417, 36.895599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146667, 34.349285, 36.961605>,  <37.813381, 34.157402, 37.071613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146667, 34.349285, 36.961605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527360, 0.539818, -0.656116,
		-0.166286, 0.691717, 0.702763,
		0.833211, 0.479712, -0.275019,
		38.396629, 34.493198, 36.879101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589172, 34.881401, 37.028984>,  <37.813381, 34.157402, 37.071613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589172, 34.881401, 37.028984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919819, 34.848591, 36.806282>,  <38.118206, 34.828907, 36.672661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919819, 34.848591, 36.806282>,  <37.589172, 34.881401, 37.028984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919819, 34.848591, 36.806282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357644, 0.687284, -0.632243,
		0.434508, 0.721743, 0.538785,
		0.826616, -0.082021, -0.556758,
		38.167805, 34.823986, 36.639256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563362, 35.572662, 36.864025>,  <37.589172, 34.881401, 37.028984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563362, 35.572662, 36.864025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786472, 35.331951, 36.635376>,  <37.920338, 35.187527, 36.498188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786472, 35.331951, 36.635376>,  <37.563362, 35.572662, 36.864025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786472, 35.331951, 36.635376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466954, 0.341850, -0.815532,
		0.686174, 0.721807, -0.090324,
		0.557780, -0.601774, -0.571620,
		37.953808, 35.151421, 36.463890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646065, 36.005222, 36.293850>,  <37.563362, 35.572662, 36.864025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646065, 36.005222, 36.293850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740791, 35.633938, 36.179062>,  <37.797626, 35.411167, 36.110188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740791, 35.633938, 36.179062>,  <37.646065, 36.005222, 36.293850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740791, 35.633938, 36.179062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180093, 0.248315, -0.951791,
		0.954718, 0.277077, -0.108360,
		0.236812, -0.928207, -0.286971,
		37.811836, 35.355476, 36.092972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039265, 36.174370, 35.709534>,  <37.646065, 36.005222, 36.293850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039265, 36.174370, 35.709534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948177, 35.786949, 35.669418>,  <37.893524, 35.554497, 35.645351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948177, 35.786949, 35.669418>,  <38.039265, 36.174370, 35.709534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948177, 35.786949, 35.669418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266165, 0.160983, -0.950390,
		0.936643, -0.189727, -0.294453,
		-0.227717, -0.968549, -0.100285,
		37.879864, 35.496384, 35.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453705, 35.813599, 35.205624>,  <38.039265, 36.174370, 35.709534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453705, 35.813599, 35.205624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092251, 35.642815, 35.219200>,  <37.875378, 35.540344, 35.227345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092251, 35.642815, 35.219200>,  <38.453705, 35.813599, 35.205624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092251, 35.642815, 35.219200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116549, 0.168876, -0.978722,
		0.412140, -0.888363, -0.202364,
		-0.903636, -0.426956, 0.033937,
		37.821159, 35.514729, 35.229382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375816, 35.517658, 34.583675>,  <38.453705, 35.813599, 35.205624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375816, 35.517658, 34.583675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000729, 35.486515, 34.719093>,  <37.775677, 35.467827, 34.800343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000729, 35.486515, 34.719093>,  <38.375816, 35.517658, 34.583675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000729, 35.486515, 34.719093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346649, 0.146486, -0.926486,
		0.022545, -0.986144, -0.164353,
		-0.937724, -0.077860, 0.338543,
		37.719410, 35.463158, 34.820656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921791, 34.963398, 34.145527>,  <38.375816, 35.517658, 34.583675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921791, 34.963398, 34.145527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649342, 35.206375, 34.309032>,  <37.485874, 35.352161, 34.407135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649342, 35.206375, 34.309032>,  <37.921791, 34.963398, 34.145527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649342, 35.206375, 34.309032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488350, 0.039054, -0.871774,
		-0.545518, -0.793402, 0.270045,
		-0.681120, 0.607444, 0.408762,
		37.445004, 35.388607, 34.431660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232094, 34.821674, 33.785130>,  <37.921791, 34.963398, 34.145527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232094, 34.821674, 33.785130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208042, 35.186092, 33.948288>,  <37.193611, 35.404743, 34.046185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208042, 35.186092, 33.948288>,  <37.232094, 34.821674, 33.785130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208042, 35.186092, 33.948288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425911, 0.346156, -0.835928,
		-0.902765, -0.223993, 0.367210,
		-0.060130, 0.911045, 0.407898,
		37.190002, 35.459408, 34.070656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486320, 35.012997, 33.779495>,  <37.232094, 34.821674, 33.785130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486320, 35.012997, 33.779495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.695259, 35.353489, 33.799774>,  <36.820621, 35.557785, 33.811939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.695259, 35.353489, 33.799774>,  <36.486320, 35.012997, 33.779495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695259, 35.353489, 33.799774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452657, 0.327166, -0.829496,
		-0.722676, 0.410333, 0.556207,
		0.522342, 0.851228, 0.050695,
		36.851963, 35.608856, 33.814983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957737, 35.471409, 33.614807>,  <36.486320, 35.012997, 33.779495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957737, 35.471409, 33.614807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.287720, 35.692375, 33.567020>,  <36.485710, 35.824955, 33.538349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.287720, 35.692375, 33.567020>,  <35.957737, 35.471409, 33.614807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287720, 35.692375, 33.567020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455697, 0.525078, -0.718772,
		-0.334336, 0.647399, 0.684904,
		0.824961, 0.552420, -0.119465,
		36.535210, 35.858101, 33.531181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717953, 36.271362, 33.636856>,  <35.957737, 35.471409, 33.614807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717953, 36.271362, 33.636856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067295, 36.218204, 33.449417>,  <36.276901, 36.186310, 33.336956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067295, 36.218204, 33.449417>,  <35.717953, 36.271362, 33.636856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067295, 36.218204, 33.449417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356502, 0.481125, -0.800890,
		0.331887, 0.866521, 0.372818,
		0.873360, -0.132894, -0.468596,
		36.329304, 36.178337, 33.308838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530746, 36.764565, 34.191345>,  <35.717953, 36.271362, 33.636856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530746, 36.764565, 34.191345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.202320, 36.962578, 34.305042>,  <35.005264, 37.081387, 34.373260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.202320, 36.962578, 34.305042>,  <35.530746, 36.764565, 34.191345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202320, 36.962578, 34.305042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097122, -0.369537, 0.924126,
		0.562515, 0.786372, 0.255334,
		-0.821063, 0.495037, 0.284244,
		34.956001, 37.111088, 34.390316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629543, 37.079639, 34.869766>,  <35.530746, 36.764565, 34.191345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629543, 37.079639, 34.869766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.235081, 37.017120, 34.847614>,  <34.998402, 36.979610, 34.834324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.235081, 37.017120, 34.847614>,  <35.629543, 37.079639, 34.869766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235081, 37.017120, 34.847614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050059, -0.599019, 0.799168,
		-0.158080, 0.785333, 0.598551,
		-0.986157, -0.156295, -0.055380,
		34.939232, 36.970230, 34.831001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308598, 37.349735, 35.558445>,  <35.629543, 37.079639, 34.869766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308598, 37.349735, 35.558445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036453, 37.113194, 35.385284>,  <34.873165, 36.971268, 35.281387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036453, 37.113194, 35.385284>,  <35.308598, 37.349735, 35.558445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036453, 37.113194, 35.385284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092148, -0.516974, 0.851027,
		-0.727058, 0.618899, 0.297238,
		-0.680364, -0.591356, -0.432900,
		34.832344, 36.935787, 35.255413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702862, 37.403103, 35.962029>,  <35.308598, 37.349735, 35.558445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702862, 37.403103, 35.962029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.693180, 37.049923, 35.774494>,  <34.687370, 36.838013, 35.661972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.693180, 37.049923, 35.774494>,  <34.702862, 37.403103, 35.962029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693180, 37.049923, 35.774494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174000, -0.458093, 0.871708,
		-0.984448, 0.102680, -0.142544,
		-0.024208, -0.882954, -0.468836,
		34.685917, 36.785038, 35.633842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117409, 37.104214, 36.100128>,  <34.702862, 37.403103, 35.962029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117409, 37.104214, 36.100128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317944, 36.778530, 35.983013>,  <34.438267, 36.583118, 35.912743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317944, 36.778530, 35.983013>,  <34.117409, 37.104214, 36.100128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317944, 36.778530, 35.983013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463895, -0.538572, 0.703378,
		-0.730384, -0.216808, -0.647714,
		0.501339, -0.814208, -0.292788,
		34.468346, 36.534267, 35.895176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644676, 36.646179, 36.031754>,  <34.117409, 37.104214, 36.100128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644676, 36.646179, 36.031754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988712, 36.447453, 36.078094>,  <34.195133, 36.328217, 36.105900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988712, 36.447453, 36.078094>,  <33.644676, 36.646179, 36.031754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988712, 36.447453, 36.078094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380139, -0.472714, 0.795007,
		-0.340208, -0.727816, -0.595435,
		0.860089, -0.496816, 0.115850,
		34.246738, 36.298409, 36.112850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460930, 36.023861, 36.143829>,  <33.644676, 36.646179, 36.031754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460930, 36.023861, 36.143829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.839806, 36.000759, 36.270004>,  <34.067131, 35.986897, 36.345707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.839806, 36.000759, 36.270004>,  <33.460930, 36.023861, 36.143829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839806, 36.000759, 36.270004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296397, -0.533132, 0.792414,
		0.122404, -0.844059, -0.522094,
		0.947188, -0.057753, 0.315434,
		34.123962, 35.983433, 36.364635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709984, 35.339504, 36.156792>,  <33.460930, 36.023861, 36.143829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709984, 35.339504, 36.156792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945438, 35.542854, 36.408207>,  <34.086712, 35.664864, 36.559055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945438, 35.542854, 36.408207>,  <33.709984, 35.339504, 36.156792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945438, 35.542854, 36.408207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151737, -0.694205, 0.703602,
		0.794028, -0.509539, -0.331496,
		0.588639, 0.508379, 0.628534,
		34.122028, 35.695370, 36.596767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171310, 34.839191, 36.363174>,  <33.709984, 35.339504, 36.156792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171310, 34.839191, 36.363174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.179596, 35.119678, 36.648235>,  <34.184566, 35.287971, 36.819271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.179596, 35.119678, 36.648235>,  <34.171310, 34.839191, 36.363174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179596, 35.119678, 36.648235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139710, -0.703778, 0.696547,
		0.989976, -0.113991, 0.083390,
		0.020712, 0.701215, 0.712649,
		34.185810, 35.330044, 36.862030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590126, 34.545460, 36.940075>,  <34.171310, 34.839191, 36.363174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590126, 34.545460, 36.940075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.385662, 34.847233, 37.104778>,  <34.262985, 35.028297, 37.203602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.385662, 34.847233, 37.104778>,  <34.590126, 34.545460, 36.940075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385662, 34.847233, 37.104778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212200, -0.575022, 0.790140,
		0.832879, 0.316511, 0.454019,
		-0.511159, 0.754434, 0.411760,
		34.232315, 35.073563, 37.228306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764339, 34.455158, 37.588779>,  <34.590126, 34.545460, 36.940075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764339, 34.455158, 37.588779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434574, 34.681355, 37.598358>,  <34.236717, 34.817070, 37.604107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434574, 34.681355, 37.598358>,  <34.764339, 34.455158, 37.588779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434574, 34.681355, 37.598358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271827, -0.432694, 0.859585,
		0.496447, 0.702139, 0.510432,
		-0.824409, 0.565487, 0.023949,
		34.187252, 34.851002, 37.605541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781696, 34.672405, 38.296703>,  <34.764339, 34.455158, 37.588779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781696, 34.672405, 38.296703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.404446, 34.748219, 38.187466>,  <34.178093, 34.793709, 38.121925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.404446, 34.748219, 38.187466>,  <34.781696, 34.672405, 38.296703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404446, 34.748219, 38.187466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321246, -0.308456, 0.895353,
		0.085465, 0.932165, 0.351802,
		-0.943132, 0.189537, -0.273092,
		34.121506, 34.805080, 38.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.476913, 39.322895, 31.573637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095684, 39.205551, 31.603567>,  <33.866947, 39.135143, 31.621525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095684, 39.205551, 31.603567>,  <34.476913, 39.322895, 31.573637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095684, 39.205551, 31.603567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173989, -0.328473, 0.928350,
		-0.247762, 0.897801, 0.364099,
		-0.953070, -0.293359, 0.074824,
		33.809765, 39.117542, 31.626015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218304, 39.620266, 32.265347>,  <34.476913, 39.322895, 31.573637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218304, 39.620266, 32.265347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001213, 39.308350, 32.140526>,  <33.870956, 39.121201, 32.065636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001213, 39.308350, 32.140526>,  <34.218304, 39.620266, 32.265347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001213, 39.308350, 32.140526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178182, -0.469965, 0.864514,
		-0.820790, 0.413596, 0.394008,
		-0.542730, -0.779789, -0.312047,
		33.838394, 39.074413, 32.046913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657341, 39.532616, 32.746067>,  <34.218304, 39.620266, 32.265347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657341, 39.532616, 32.746067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695049, 39.180439, 32.560188>,  <33.717674, 38.969135, 32.448662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695049, 39.180439, 32.560188>,  <33.657341, 39.532616, 32.746067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695049, 39.180439, 32.560188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079491, -0.458625, 0.885067,
		-0.992368, -0.120375, 0.026752,
		0.094271, -0.880439, -0.464694,
		33.723331, 38.916306, 32.420780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430950, 39.101448, 33.229744>,  <33.657341, 39.532616, 32.746067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430950, 39.101448, 33.229744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633072, 38.858948, 32.984100>,  <33.754345, 38.713448, 32.836716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633072, 38.858948, 32.984100>,  <33.430950, 39.101448, 33.229744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633072, 38.858948, 32.984100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185841, -0.618495, 0.763497,
		-0.842690, -0.499928, -0.199865,
		0.505309, -0.606248, -0.614106,
		33.784664, 38.677074, 32.799870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165298, 38.490337, 33.328968>,  <33.430950, 39.101448, 33.229744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165298, 38.490337, 33.328968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532272, 38.432453, 33.180714>,  <33.752457, 38.397724, 33.091759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532272, 38.432453, 33.180714>,  <33.165298, 38.490337, 33.328968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532272, 38.432453, 33.180714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135895, -0.761541, 0.633710,
		-0.373959, -0.631755, -0.678999,
		0.917435, -0.144709, -0.370637,
		33.807503, 38.389042, 33.069523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259232, 37.721947, 33.434929>,  <33.165298, 38.490337, 33.328968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259232, 37.721947, 33.434929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624088, 37.871532, 33.367809>,  <33.843002, 37.961285, 33.327538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624088, 37.871532, 33.367809>,  <33.259232, 37.721947, 33.434929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624088, 37.871532, 33.367809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379488, -0.615802, 0.690490,
		0.154887, -0.693500, -0.703611,
		0.912140, 0.373960, -0.167795,
		33.897732, 37.983719, 33.317471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713219, 37.099079, 33.448040>,  <33.259232, 37.721947, 33.434929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713219, 37.099079, 33.448040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952774, 37.413822, 33.507626>,  <34.096508, 37.602669, 33.543377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952774, 37.413822, 33.507626>,  <33.713219, 37.099079, 33.448040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952774, 37.413822, 33.507626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480382, -0.501807, 0.719321,
		0.640751, -0.359237, -0.678519,
		0.598892, 0.786853, 0.148962,
		34.132442, 37.649879, 33.552315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387924, 36.861748, 33.301582>,  <33.713219, 37.099079, 33.448040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387924, 36.861748, 33.301582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480614, 37.186203, 33.516376>,  <34.536228, 37.380875, 33.645252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480614, 37.186203, 33.516376>,  <34.387924, 36.861748, 33.301582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480614, 37.186203, 33.516376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375939, -0.583798, 0.719618,
		0.897203, 0.035121, -0.440219,
		0.231725, 0.811139, 0.536989,
		34.550133, 37.429546, 33.677475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101898, 36.781776, 33.558899>,  <34.387924, 36.861748, 33.301582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101898, 36.781776, 33.558899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928646, 37.044552, 33.805744>,  <34.824696, 37.202217, 33.953850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928646, 37.044552, 33.805744>,  <35.101898, 36.781776, 33.558899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928646, 37.044552, 33.805744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177373, -0.609156, 0.772960,
		0.883708, 0.444250, 0.147319,
		-0.433128, 0.656940, 0.617114,
		34.798706, 37.241634, 33.990879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788059, 36.920036, 33.317116>,  <35.101898, 36.781776, 33.558899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788059, 36.920036, 33.317116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027843, 36.669373, 33.117939>,  <36.171715, 36.518974, 32.998432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027843, 36.669373, 33.117939>,  <35.788059, 36.920036, 33.317116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027843, 36.669373, 33.117939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108280, 0.552899, -0.826182,
		0.793046, 0.549181, 0.263587,
		0.599461, -0.626659, -0.497940,
		36.207684, 36.481373, 32.968555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229877, 37.381298, 32.965977>,  <35.788059, 36.920036, 33.317116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229877, 37.381298, 32.965977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266586, 37.024063, 32.789810>,  <36.288612, 36.809723, 32.684109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266586, 37.024063, 32.789810>,  <36.229877, 37.381298, 32.965977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266586, 37.024063, 32.789810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196202, 0.417399, -0.887289,
		0.976260, 0.167839, -0.136920,
		0.091772, -0.893089, -0.440421,
		36.294117, 36.756138, 32.657684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781242, 37.479797, 32.464615>,  <36.229877, 37.381298, 32.965977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781242, 37.479797, 32.464615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578106, 37.164604, 32.325375>,  <36.456223, 36.975487, 32.241829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578106, 37.164604, 32.325375>,  <36.781242, 37.479797, 32.464615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578106, 37.164604, 32.325375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111770, 0.340405, -0.933612,
		0.854167, -0.513038, -0.084800,
		-0.507845, -0.787983, -0.348105,
		36.425751, 36.928211, 32.220943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118328, 37.209461, 31.803949>,  <36.781242, 37.479797, 32.464615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118328, 37.209461, 31.803949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743782, 37.073013, 31.770803>,  <36.519054, 36.991146, 31.750916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743782, 37.073013, 31.770803>,  <37.118328, 37.209461, 31.803949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743782, 37.073013, 31.770803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059335, 0.386452, -0.920399,
		0.345984, -0.856910, -0.382099,
		-0.936363, -0.341115, -0.082861,
		36.462875, 36.970676, 31.745945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046589, 36.962830, 31.110672>,  <37.118328, 37.209461, 31.803949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046589, 36.962830, 31.110672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663170, 37.004074, 31.216919>,  <36.433117, 37.028820, 31.280668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663170, 37.004074, 31.216919>,  <37.046589, 36.962830, 31.110672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663170, 37.004074, 31.216919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244614, 0.180249, -0.952719,
		-0.146118, -0.978201, -0.147554,
		-0.958548, 0.103116, 0.265619,
		36.375607, 37.035007, 31.296604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726646, 36.966770, 30.408190>,  <37.046589, 36.962830, 31.110672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726646, 36.966770, 30.408190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437538, 37.058620, 30.668921>,  <36.264072, 37.113731, 30.825359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437538, 37.058620, 30.668921>,  <36.726646, 36.966770, 30.408190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437538, 37.058620, 30.668921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586220, 0.295797, -0.754222,
		-0.365994, -0.927242, -0.079184,
		-0.722769, 0.229621, 0.651827,
		36.220707, 37.127506, 30.864470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164066, 36.701439, 30.053795>,  <36.726646, 36.966770, 30.408190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164066, 36.701439, 30.053795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089333, 36.992897, 30.317362>,  <36.044491, 37.167770, 30.475502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089333, 36.992897, 30.317362>,  <36.164066, 36.701439, 30.053795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089333, 36.992897, 30.317362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696543, 0.374727, -0.611889,
		-0.692763, -0.573286, 0.437519,
		-0.186837, 0.728645, 0.658915,
		36.033283, 37.211491, 30.515036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516861, 36.845280, 29.901278>,  <36.164066, 36.701439, 30.053795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516861, 36.845280, 29.901278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632088, 37.169571, 30.105137>,  <35.701221, 37.364147, 30.227451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632088, 37.169571, 30.105137>,  <35.516861, 36.845280, 29.901278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632088, 37.169571, 30.105137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613783, 0.564826, -0.551581,
		-0.735043, -0.153921, 0.660317,
		0.288065, 0.810728, 0.509646,
		35.718506, 37.412788, 30.258030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846386, 37.298576, 30.240967>,  <35.516861, 36.845280, 29.901278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846386, 37.298576, 30.240967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163788, 37.528175, 30.160103>,  <35.354229, 37.665936, 30.111584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163788, 37.528175, 30.160103>,  <34.846386, 37.298576, 30.240967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163788, 37.528175, 30.160103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602707, 0.695288, -0.391561,
		-0.084197, 0.432550, 0.897670,
		0.793508, 0.574000, -0.202159,
		35.401840, 37.700375, 30.099455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556892, 37.957989, 30.194527>,  <34.846386, 37.298576, 30.240967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556892, 37.957989, 30.194527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916195, 38.006023, 30.025425>,  <35.131775, 38.034843, 29.923964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916195, 38.006023, 30.025425>,  <34.556892, 37.957989, 30.194527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916195, 38.006023, 30.025425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348437, 0.780844, -0.518531,
		0.267834, 0.613075, 0.743238,
		0.898252, 0.120091, -0.422755,
		35.185669, 38.042049, 29.898598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642857, 38.676182, 30.128944>,  <34.556892, 37.957989, 30.194527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642857, 38.676182, 30.128944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933403, 38.558949, 29.880270>,  <35.107731, 38.488609, 29.731066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933403, 38.558949, 29.880270>,  <34.642857, 38.676182, 30.128944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933403, 38.558949, 29.880270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235283, 0.743843, -0.625571,
		0.645779, 0.600667, 0.471347,
		0.726368, -0.293081, -0.621686,
		35.151314, 38.471024, 29.693764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907738, 39.302231, 29.708349>,  <34.642857, 38.676182, 30.128944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907738, 39.302231, 29.708349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044861, 39.000816, 29.483969>,  <35.127136, 38.819969, 29.349340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044861, 39.000816, 29.483969>,  <34.907738, 39.302231, 29.708349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044861, 39.000816, 29.483969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114703, 0.559091, -0.821134,
		0.932376, 0.345836, 0.105230,
		0.342811, -0.753535, -0.560951,
		35.147705, 38.774757, 29.315683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402061, 39.570950, 29.221094>,  <34.907738, 39.302231, 29.708349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402061, 39.570950, 29.221094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237888, 39.237881, 29.072392>,  <35.139385, 39.038040, 28.983170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237888, 39.237881, 29.072392>,  <35.402061, 39.570950, 29.221094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237888, 39.237881, 29.072392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253491, 0.495789, -0.830624,
		0.875951, -0.246675, -0.414561,
		-0.410428, -0.832673, -0.371757,
		35.114761, 38.988079, 28.960865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584930, 39.587444, 28.565989>,  <35.402061, 39.570950, 29.221094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584930, 39.587444, 28.565989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294937, 39.312077, 28.557278>,  <35.120941, 39.146854, 28.552052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294937, 39.312077, 28.557278>,  <35.584930, 39.587444, 28.565989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294937, 39.312077, 28.557278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305140, 0.349376, -0.885904,
		0.617482, -0.635623, -0.463356,
		-0.724987, -0.688419, -0.021780,
		35.077442, 39.105553, 28.550743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.867598, 36.395035, 30.364403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.199360, 36.572079, 30.228060>,  <31.398417, 36.678307, 30.146254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.199360, 36.572079, 30.228060>,  <30.867598, 36.395035, 30.364403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199360, 36.572079, 30.228060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556781, -0.605061, 0.569118,
		0.045657, -0.661813, -0.748277,
		0.829404, 0.442611, -0.340859,
		31.448181, 36.704861, 30.125801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244040, 35.867847, 30.081762>,  <30.867598, 36.395035, 30.364403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244040, 35.867847, 30.081762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516777, 36.157879, 30.120428>,  <31.680420, 36.331898, 30.143627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516777, 36.157879, 30.120428>,  <31.244040, 35.867847, 30.081762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516777, 36.157879, 30.120428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684250, -0.678932, 0.266183,
		0.258635, -0.115351, -0.959063,
		0.681843, 0.725083, 0.096667,
		31.721331, 36.375404, 30.149427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938549, 35.565903, 29.880930>,  <31.244040, 35.867847, 30.081762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938549, 35.565903, 29.880930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010567, 35.883713, 30.112898>,  <32.053776, 36.074402, 30.252079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010567, 35.883713, 30.112898>,  <31.938549, 35.565903, 29.880930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010567, 35.883713, 30.112898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607883, -0.553373, 0.569435,
		0.773345, 0.250001, -0.582612,
		0.180043, 0.794530, 0.579920,
		32.064579, 36.122070, 30.286873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678013, 35.604378, 30.036774>,  <31.938549, 35.565903, 29.880930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678013, 35.604378, 30.036774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.514843, 35.811340, 30.337677>,  <32.416943, 35.935516, 30.518219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.514843, 35.811340, 30.337677>,  <32.678013, 35.604378, 30.036774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514843, 35.811340, 30.337677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566808, -0.502418, 0.652920,
		0.715771, 0.692727, -0.088321,
		-0.407922, 0.517403, 0.752259,
		32.392467, 35.966560, 30.563354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239285, 35.566814, 30.501535>,  <32.678013, 35.604378, 30.036774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239285, 35.566814, 30.501535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935322, 35.701138, 30.724163>,  <32.752945, 35.781731, 30.857738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935322, 35.701138, 30.724163>,  <33.239285, 35.566814, 30.501535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935322, 35.701138, 30.724163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417452, -0.404204, 0.813850,
		0.498267, 0.850793, 0.166973,
		-0.759910, 0.335812, 0.556567,
		32.707348, 35.801880, 30.891132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562340, 35.949524, 31.035685>,  <33.239285, 35.566814, 30.501535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562340, 35.949524, 31.035685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194698, 35.812946, 31.114334>,  <32.974113, 35.730999, 31.161524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194698, 35.812946, 31.114334>,  <33.562340, 35.949524, 31.035685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194698, 35.812946, 31.114334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345032, -0.456516, 0.820089,
		-0.190250, 0.821591, 0.537395,
		-0.919107, -0.341440, 0.196623,
		32.918964, 35.710514, 31.173321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552216, 35.992935, 31.765810>,  <33.562340, 35.949524, 31.035685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552216, 35.992935, 31.765810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.242226, 35.760033, 31.667515>,  <33.056232, 35.620293, 31.608538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.242226, 35.760033, 31.667515>,  <33.552216, 35.992935, 31.765810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242226, 35.760033, 31.667515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132650, -0.530036, 0.837536,
		-0.617911, 0.616474, 0.488002,
		-0.774977, -0.582256, -0.245740,
		33.009731, 35.585358, 31.593792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239544, 35.760677, 32.358704>,  <33.552216, 35.992935, 31.765810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239544, 35.760677, 32.358704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.113804, 35.487785, 32.094658>,  <33.038361, 35.324051, 31.936232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.113804, 35.487785, 32.094658>,  <33.239544, 35.760677, 32.358704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113804, 35.487785, 32.094658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126705, -0.719292, 0.683056,
		-0.940813, 0.131081, 0.312553,
		-0.314352, -0.682230, -0.660110,
		33.019497, 35.283115, 31.896626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686863, 35.332932, 32.704010>,  <33.239544, 35.760677, 32.358704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686863, 35.332932, 32.704010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826031, 35.123196, 32.393135>,  <32.909531, 34.997353, 32.206612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826031, 35.123196, 32.393135>,  <32.686863, 35.332932, 32.704010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826031, 35.123196, 32.393135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083006, -0.842949, 0.531551,
		-0.933844, -0.120424, -0.336799,
		0.347916, -0.524342, -0.777188,
		32.930405, 34.965893, 32.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350868, 34.704967, 32.684402>,  <32.686863, 35.332932, 32.704010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350868, 34.704967, 32.684402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.639496, 34.589882, 32.432510>,  <32.812672, 34.520832, 32.281376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.639496, 34.589882, 32.432510>,  <32.350868, 34.704967, 32.684402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639496, 34.589882, 32.432510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130963, -0.949865, 0.283912,
		-0.679841, -0.122392, -0.723075,
		0.721572, -0.287711, -0.629728,
		32.855968, 34.503567, 32.243591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127129, 34.109325, 32.261120>,  <32.350868, 34.704967, 32.684402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127129, 34.109325, 32.261120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526134, 34.095657, 32.285751>,  <32.765537, 34.087456, 32.300529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526134, 34.095657, 32.285751>,  <32.127129, 34.109325, 32.261120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526134, 34.095657, 32.285751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054540, -0.928023, 0.368510,
		0.044558, -0.370954, -0.927582,
		0.997517, -0.034170, 0.061583,
		32.825390, 34.085407, 32.304226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263073, 33.446423, 32.053547>,  <32.127129, 34.109325, 32.261120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263073, 33.446423, 32.053547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.591118, 33.553131, 32.256031>,  <32.787945, 33.617157, 32.377522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.591118, 33.553131, 32.256031>,  <32.263073, 33.446423, 32.053547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591118, 33.553131, 32.256031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054687, -0.917161, 0.394747,
		0.569581, -0.296054, -0.766765,
		0.820114, 0.266772, 0.506207,
		32.837151, 33.633163, 32.407894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649464, 32.867104, 32.166801>,  <32.263073, 33.446423, 32.053547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649464, 32.867104, 32.166801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781387, 33.095501, 32.467522>,  <32.860542, 33.232540, 32.647953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781387, 33.095501, 32.467522>,  <32.649464, 32.867104, 32.166801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781387, 33.095501, 32.467522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038874, -0.803892, 0.593504,
		0.943248, -0.166515, -0.287324,
		0.329805, 0.570991, 0.751796,
		32.880329, 33.266800, 32.693062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118744, 32.436504, 32.477856>,  <32.649464, 32.867104, 32.166801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118744, 32.436504, 32.477856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028931, 32.719013, 32.746410>,  <32.975040, 32.888519, 32.907543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028931, 32.719013, 32.746410>,  <33.118744, 32.436504, 32.477856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028931, 32.719013, 32.746410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032962, -0.694093, 0.719131,
		0.973908, 0.139341, 0.179129,
		-0.224536, 0.706272, 0.671390,
		32.961571, 32.930893, 32.947826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602966, 32.692875, 32.042164>,  <33.118744, 32.436504, 32.477856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602966, 32.692875, 32.042164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860954, 32.462875, 31.840813>,  <34.015747, 32.324875, 31.720003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860954, 32.462875, 31.840813>,  <33.602966, 32.692875, 32.042164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860954, 32.462875, 31.840813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169467, 0.534674, -0.827891,
		0.745182, 0.619269, 0.247404,
		0.644969, -0.575003, -0.503376,
		34.054443, 32.290375, 31.689800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109440, 33.115864, 31.630308>,  <33.602966, 32.692875, 32.042164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109440, 33.115864, 31.630308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171757, 32.782162, 31.418741>,  <34.209148, 32.581940, 31.291801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171757, 32.782162, 31.418741>,  <34.109440, 33.115864, 31.630308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171757, 32.782162, 31.418741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243621, 0.486463, -0.839048,
		0.957276, 0.259575, -0.127452,
		0.155795, -0.834251, -0.528917,
		34.218494, 32.531887, 31.260065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595158, 33.365154, 31.129189>,  <34.109440, 33.115864, 31.630308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595158, 33.365154, 31.129189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409893, 33.037075, 30.994865>,  <34.298737, 32.840229, 30.914270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409893, 33.037075, 30.994865>,  <34.595158, 33.365154, 31.129189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409893, 33.037075, 30.994865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200567, 0.466067, -0.861716,
		0.863283, -0.331758, -0.380367,
		-0.463157, -0.820194, -0.335808,
		34.270947, 32.791016, 30.894123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930878, 33.246166, 30.501209>,  <34.595158, 33.365154, 31.129189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930878, 33.246166, 30.501209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577633, 33.061600, 30.467249>,  <34.365688, 32.950859, 30.446873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577633, 33.061600, 30.467249>,  <34.930878, 33.246166, 30.501209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577633, 33.061600, 30.467249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119892, 0.396896, -0.910000,
		0.453593, -0.793449, -0.405823,
		-0.883108, -0.461424, -0.084901,
		34.312698, 32.923172, 30.441780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951122, 32.939899, 29.921604>,  <34.930878, 33.246166, 30.501209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951122, 32.939899, 29.921604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565392, 33.009499, 30.001402>,  <34.333954, 33.051258, 30.049280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565392, 33.009499, 30.001402>,  <34.951122, 32.939899, 29.921604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565392, 33.009499, 30.001402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104138, 0.443498, -0.890205,
		-0.243372, -0.879223, -0.409557,
		-0.964327, 0.174001, 0.199496,
		34.276093, 33.061699, 30.061251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643700, 33.003967, 29.266441>,  <34.951122, 32.939899, 29.921604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643700, 33.003967, 29.266441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336254, 33.116650, 29.496178>,  <34.151787, 33.184258, 29.634020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336254, 33.116650, 29.496178>,  <34.643700, 33.003967, 29.266441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336254, 33.116650, 29.496178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437383, 0.423754, -0.793176,
		-0.466824, -0.860856, -0.202491,
		-0.768617, 0.281707, 0.574343,
		34.105671, 33.201160, 29.668480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108509, 32.998058, 28.896963>,  <34.643700, 33.003967, 29.266441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108509, 32.998058, 28.896963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972038, 33.234642, 29.189203>,  <33.890156, 33.376591, 29.364548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972038, 33.234642, 29.189203>,  <34.108509, 32.998058, 28.896963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972038, 33.234642, 29.189203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408295, 0.606843, -0.681936,
		-0.846695, -0.530962, 0.034448,
		-0.341178, 0.591456, 0.730601,
		33.869686, 33.412079, 29.408384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322903, 33.061993, 28.888077>,  <34.108509, 32.998058, 28.896963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322903, 33.061993, 28.888077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460045, 33.393589, 29.064817>,  <33.542328, 33.592545, 29.170862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460045, 33.393589, 29.064817>,  <33.322903, 33.061993, 28.888077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460045, 33.393589, 29.064817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394055, 0.553893, -0.733432,
		-0.852744, 0.077347, 0.516571,
		0.342854, 0.828987, 0.441850,
		33.562901, 33.642284, 29.197372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764736, 33.442490, 28.879093>,  <33.322903, 33.061993, 28.888077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764736, 33.442490, 28.879093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.061630, 33.700111, 28.953154>,  <33.239765, 33.854683, 28.997589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.061630, 33.700111, 28.953154>,  <32.764736, 33.442490, 28.879093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061630, 33.700111, 28.953154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422472, 0.664177, -0.616755,
		-0.520195, 0.379557, 0.765070,
		0.742236, 0.644054, 0.185150,
		33.284302, 33.893326, 29.008699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519081, 34.142254, 29.139650>,  <32.764736, 33.442490, 28.879093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519081, 34.142254, 29.139650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.883205, 34.196030, 28.983051>,  <33.101681, 34.228294, 28.889091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.883205, 34.196030, 28.983051>,  <32.519081, 34.142254, 29.139650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883205, 34.196030, 28.983051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382571, 0.634383, -0.671713,
		0.158057, 0.761239, 0.628914,
		0.910306, 0.134435, -0.391497,
		33.156296, 34.236359, 28.865602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629120, 34.852795, 29.139900>,  <32.519081, 34.142254, 29.139650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629120, 34.852795, 29.139900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.814812, 34.681591, 28.829727>,  <32.926228, 34.578869, 28.643623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.814812, 34.681591, 28.829727>,  <32.629120, 34.852795, 29.139900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814812, 34.681591, 28.829727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370529, 0.701353, -0.608943,
		0.804486, 0.570011, 0.167000,
		0.464231, -0.428008, -0.775435,
		32.954082, 34.553188, 28.597097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012306, 35.472675, 28.719803>,  <32.629120, 34.852795, 29.139900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012306, 35.472675, 28.719803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.942551, 35.138111, 28.511957>,  <32.900696, 34.937370, 28.387249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.942551, 35.138111, 28.511957>,  <33.012306, 35.472675, 28.719803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942551, 35.138111, 28.511957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275910, 0.548071, -0.789615,
		0.945231, 0.005665, -0.326354,
		-0.174392, -0.836413, -0.519616,
		32.890232, 34.887188, 28.356071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325535, 35.603985, 27.967993>,  <33.012306, 35.472675, 28.719803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325535, 35.603985, 27.967993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.019962, 35.346775, 27.946358>,  <32.836617, 35.192448, 27.933376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.019962, 35.346775, 27.946358>,  <33.325535, 35.603985, 27.967993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019962, 35.346775, 27.946358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328242, 0.459388, -0.825360,
		0.555576, -0.612765, -0.562009,
		-0.763932, -0.643026, -0.054089,
		32.790783, 35.153870, 27.930132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356552, 35.414639, 27.330839>,  <33.325535, 35.603985, 27.967993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356552, 35.414639, 27.330839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.989391, 35.310093, 27.450274>,  <32.769096, 35.247364, 27.521935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.989391, 35.310093, 27.450274>,  <33.356552, 35.414639, 27.330839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989391, 35.310093, 27.450274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381173, 0.371548, -0.846558,
		0.110322, -0.890865, -0.440668,
		-0.917898, -0.261364, 0.298584,
		32.714024, 35.231682, 27.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710312, 35.422440, 26.787443>,  <33.356552, 35.414639, 27.330839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710312, 35.422440, 26.787443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967083, 35.717613, 26.704130>,  <34.121147, 35.894718, 26.654142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967083, 35.717613, 26.704130>,  <33.710312, 35.422440, 26.787443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967083, 35.717613, 26.704130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537799, -0.239700, 0.808280,
		0.546530, -0.630874, -0.550730,
		0.641932, 0.737931, -0.208281,
		34.159664, 35.938992, 26.641645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375980, 35.140820, 26.642324>,  <33.710312, 35.422440, 26.787443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375980, 35.140820, 26.642324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.429081, 35.516380, 26.769344>,  <34.460941, 35.741718, 26.845556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.429081, 35.516380, 26.769344>,  <34.375980, 35.140820, 26.642324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429081, 35.516380, 26.769344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788137, -0.294271, 0.540596,
		0.601013, 0.178507, -0.779050,
		0.132752, 0.938903, 0.317549,
		34.468906, 35.798050, 26.864609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126503, 35.286777, 26.691227>,  <34.375980, 35.140820, 26.642324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126503, 35.286777, 26.691227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956299, 35.575447, 26.909630>,  <34.854176, 35.748650, 27.040672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956299, 35.575447, 26.909630>,  <35.126503, 35.286777, 26.691227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956299, 35.575447, 26.909630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728651, -0.084583, 0.679642,
		0.536666, 0.687042, -0.489860,
		-0.425509, 0.721678, 0.546006,
		34.828648, 35.791950, 27.073431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723198, 35.674171, 26.926954>,  <35.126503, 35.286777, 26.691227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723198, 35.674171, 26.926954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438927, 35.750591, 27.197784>,  <35.268364, 35.796444, 27.360283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438927, 35.750591, 27.197784>,  <35.723198, 35.674171, 26.926954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438927, 35.750591, 27.197784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676947, -0.076283, 0.732068,
		0.191514, 0.978611, -0.075121,
		-0.710680, 0.191054, 0.677077,
		35.225723, 35.807907, 27.400908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019371, 36.183460, 27.429895>,  <35.723198, 35.674171, 26.926954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019371, 36.183460, 27.429895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730286, 35.981617, 27.618814>,  <35.556835, 35.860512, 27.732166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730286, 35.981617, 27.618814>,  <36.019371, 36.183460, 27.429895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730286, 35.981617, 27.618814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610231, -0.145025, 0.778836,
		-0.324509, 0.851083, 0.412737,
		-0.722711, -0.504604, 0.472296,
		35.513474, 35.830235, 27.760504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040352, 36.422413, 28.121067>,  <36.019371, 36.183460, 27.429895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040352, 36.422413, 28.121067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831280, 36.083561, 28.159367>,  <35.705837, 35.880249, 28.182346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831280, 36.083561, 28.159367>,  <36.040352, 36.422413, 28.121067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831280, 36.083561, 28.159367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336385, -0.101731, 0.936214,
		-0.783358, 0.521551, 0.338136,
		-0.522681, -0.847134, 0.095750,
		35.674477, 35.829422, 28.188091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745342, 36.413757, 28.761290>,  <36.040352, 36.422413, 28.121067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745342, 36.413757, 28.761290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759987, 36.036182, 28.630051>,  <35.768776, 35.809639, 28.551308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759987, 36.036182, 28.630051>,  <35.745342, 36.413757, 28.761290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759987, 36.036182, 28.630051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353454, -0.294864, 0.887764,
		-0.934735, -0.148474, 0.322841,
		0.036616, -0.943933, -0.328098,
		35.770973, 35.753002, 28.531622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375553, 36.015285, 29.209534>,  <35.745342, 36.413757, 28.761290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375553, 36.015285, 29.209534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596794, 35.734974, 29.029320>,  <35.729538, 35.566788, 28.921190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596794, 35.734974, 29.029320>,  <35.375553, 36.015285, 29.209534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596794, 35.734974, 29.029320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195858, -0.416254, 0.887903,
		-0.809762, -0.579345, -0.092979,
		0.553105, -0.700779, -0.450536,
		35.762726, 35.524738, 28.894159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212276, 35.390453, 29.604256>,  <35.375553, 36.015285, 29.209534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212276, 35.390453, 29.604256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553474, 35.353443, 29.398792>,  <35.758194, 35.331238, 29.275515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553474, 35.353443, 29.398792>,  <35.212276, 35.390453, 29.604256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553474, 35.353443, 29.398792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411250, -0.486836, 0.770626,
		-0.321370, -0.868579, -0.377216,
		0.852992, -0.092526, -0.513657,
		35.809372, 35.325684, 29.244696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292347, 34.656712, 29.723253>,  <35.212276, 35.390453, 29.604256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292347, 34.656712, 29.723253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632759, 34.829300, 29.603529>,  <35.837006, 34.932854, 29.531694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632759, 34.829300, 29.603529>,  <35.292347, 34.656712, 29.723253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632759, 34.829300, 29.603529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472207, -0.379437, 0.795643,
		0.229726, -0.818450, -0.526654,
		0.851027, 0.431470, -0.299311,
		35.888065, 34.958740, 29.513735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770416, 34.173752, 29.849922>,  <35.292347, 34.656712, 29.723253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770416, 34.173752, 29.849922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005825, 34.496460, 29.828861>,  <36.147068, 34.690083, 29.816225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005825, 34.496460, 29.828861>,  <35.770416, 34.173752, 29.849922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005825, 34.496460, 29.828861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498285, -0.310662, 0.809445,
		0.636677, -0.502608, -0.584831,
		0.588518, 0.806768, -0.052651,
		36.182381, 34.738491, 29.813066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587444, 34.013672, 29.747362>,  <35.770416, 34.173752, 29.849922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587444, 34.013672, 29.747362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525173, 34.367664, 29.922892>,  <36.487808, 34.580059, 30.028210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525173, 34.367664, 29.922892>,  <36.587444, 34.013672, 29.747362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525173, 34.367664, 29.922892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529525, -0.300253, 0.793380,
		0.833887, 0.355883, -0.421877,
		-0.155681, 0.884983, 0.438826,
		36.478470, 34.633160, 30.054539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278416, 34.043526, 30.020834>,  <36.587444, 34.013672, 29.747362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278416, 34.043526, 30.020834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056450, 34.313347, 30.215584>,  <36.923271, 34.475239, 30.332434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056450, 34.313347, 30.215584>,  <37.278416, 34.043526, 30.020834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056450, 34.313347, 30.215584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547540, -0.144471, 0.824213,
		0.626316, 0.723951, -0.289177,
		-0.554913, 0.674554, 0.486877,
		36.889977, 34.515713, 30.361647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838982, 34.620457, 30.254347>,  <37.278416, 34.043526, 30.020834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838982, 34.620457, 30.254347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498123, 34.645687, 30.462141>,  <37.293606, 34.660824, 30.586817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498123, 34.645687, 30.462141>,  <37.838982, 34.620457, 30.254347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498123, 34.645687, 30.462141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505720, -0.155882, 0.848498,
		0.134496, 0.985760, 0.100937,
		-0.852149, 0.063073, 0.519484,
		37.242477, 34.664608, 30.617987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.596191, 39.341805, 27.852543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237984, 39.249004, 28.004450>,  <35.023060, 39.193325, 28.095594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237984, 39.249004, 28.004450>,  <35.596191, 39.341805, 27.852543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237984, 39.249004, 28.004450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420193, 0.159736, -0.893265,
		0.146562, -0.959514, -0.240526,
		-0.895521, -0.231986, 0.379769,
		34.969330, 39.179405, 28.118380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318279, 38.964619, 27.310190>,  <35.596191, 39.341805, 27.852543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318279, 38.964619, 27.310190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029934, 39.103828, 27.549934>,  <34.856926, 39.187355, 27.693781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029934, 39.103828, 27.549934>,  <35.318279, 38.964619, 27.310190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029934, 39.103828, 27.549934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544148, 0.251401, -0.800438,
		-0.429249, -0.903150, 0.008148,
		-0.720867, 0.348021, 0.599361,
		34.813675, 39.208233, 27.729742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716923, 38.554836, 27.245325>,  <35.318279, 38.964619, 27.310190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716923, 38.554836, 27.245325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605301, 38.915569, 27.377283>,  <34.538326, 39.132008, 27.456457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605301, 38.915569, 27.377283>,  <34.716923, 38.554836, 27.245325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605301, 38.915569, 27.377283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607007, 0.100538, -0.788311,
		-0.744089, -0.420233, 0.519360,
		-0.279059, 0.901829, 0.329894,
		34.521584, 39.186119, 27.476252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040283, 38.627289, 27.136429>,  <34.716923, 38.554836, 27.245325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040283, 38.627289, 27.136429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102760, 39.018009, 27.195021>,  <34.140247, 39.252441, 27.230175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102760, 39.018009, 27.195021>,  <34.040283, 38.627289, 27.136429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102760, 39.018009, 27.195021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543340, 0.208817, -0.813128,
		-0.824854, 0.047418, 0.563353,
		0.156195, 0.976804, 0.146480,
		34.149620, 39.311050, 27.238964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391018, 38.972538, 27.048203>,  <34.040283, 38.627289, 27.136429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391018, 38.972538, 27.048203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634518, 39.283859, 26.986658>,  <33.780617, 39.470650, 26.949732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634518, 39.283859, 26.986658>,  <33.391018, 38.972538, 27.048203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634518, 39.283859, 26.986658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481006, 0.207844, -0.851724,
		-0.630918, 0.592495, 0.500892,
		0.608749, 0.778300, -0.153861,
		33.817142, 39.517349, 26.940500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991505, 39.502308, 26.864513>,  <33.391018, 38.972538, 27.048203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991505, 39.502308, 26.864513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346146, 39.626053, 26.726974>,  <33.558929, 39.700298, 26.644451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346146, 39.626053, 26.726974>,  <32.991505, 39.502308, 26.864513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346146, 39.626053, 26.726974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426228, 0.257745, -0.867120,
		-0.179628, 0.915349, 0.360375,
		0.886602, 0.309361, -0.343849,
		33.612125, 39.718861, 26.623819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866241, 40.192860, 26.770277>,  <32.991505, 39.502308, 26.864513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866241, 40.192860, 26.770277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176704, 40.080608, 26.544418>,  <33.362984, 40.013260, 26.408903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176704, 40.080608, 26.544418>,  <32.866241, 40.192860, 26.770277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176704, 40.080608, 26.544418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315739, 0.602163, -0.733286,
		0.545787, 0.747428, 0.378771,
		0.776161, -0.280625, -0.564645,
		33.409554, 39.996422, 26.375025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803745, 40.696465, 26.267286>,  <32.866241, 40.192860, 26.770277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803745, 40.696465, 26.267286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074211, 40.435677, 26.130033>,  <33.236492, 40.279205, 26.047682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074211, 40.435677, 26.130033>,  <32.803745, 40.696465, 26.267286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074211, 40.435677, 26.130033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080197, 0.397838, -0.913944,
		0.732372, 0.645495, 0.216718,
		0.676165, -0.651967, -0.343133,
		33.277061, 40.240086, 26.027094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113518, 41.134541, 25.828636>,  <32.803745, 40.696465, 26.267286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113518, 41.134541, 25.828636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185699, 40.752121, 25.736195>,  <33.229008, 40.522671, 25.680729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185699, 40.752121, 25.736195>,  <33.113518, 41.134541, 25.828636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185699, 40.752121, 25.736195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365483, 0.152961, -0.918164,
		0.913159, 0.250150, -0.321817,
		0.180453, -0.956048, -0.231104,
		33.239834, 40.465305, 25.666862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613686, 41.157185, 25.247593>,  <33.113518, 41.134541, 25.828636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613686, 41.157185, 25.247593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406628, 40.815201, 25.260828>,  <33.282394, 40.610012, 25.268768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406628, 40.815201, 25.260828>,  <33.613686, 41.157185, 25.247593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406628, 40.815201, 25.260828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274047, 0.129043, -0.953019,
		0.810519, -0.502394, -0.301096,
		-0.517645, -0.854955, 0.033087,
		33.251335, 40.558716, 25.270754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811783, 40.749630, 24.605522>,  <33.613686, 41.157185, 25.247593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811783, 40.749630, 24.605522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452610, 40.625210, 24.730083>,  <33.237106, 40.550556, 24.804819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452610, 40.625210, 24.730083>,  <33.811783, 40.749630, 24.605522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452610, 40.625210, 24.730083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333035, 0.017582, -0.942750,
		0.287769, -0.950230, -0.119379,
		-0.897929, -0.311052, 0.311401,
		33.183231, 40.531895, 24.823503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670456, 40.204628, 24.240438>,  <33.811783, 40.749630, 24.605522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670456, 40.204628, 24.240438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308372, 40.311943, 24.372269>,  <33.091122, 40.376331, 24.451366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308372, 40.311943, 24.372269>,  <33.670456, 40.204628, 24.240438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308372, 40.311943, 24.372269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370318, -0.117517, -0.921441,
		-0.208485, -0.956143, 0.205731,
		-0.905206, 0.268292, 0.329576,
		33.036812, 40.392429, 24.471142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115768, 39.752449, 23.993925>,  <33.670456, 40.204628, 24.240438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115768, 39.752449, 23.993925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957672, 40.108006, 24.086578>,  <32.862812, 40.321339, 24.142170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957672, 40.108006, 24.086578>,  <33.115768, 39.752449, 23.993925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957672, 40.108006, 24.086578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214886, 0.155693, -0.964149,
		-0.893088, -0.430849, 0.129474,
		-0.395245, 0.888892, 0.231631,
		32.839100, 40.374672, 24.156067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469749, 39.809162, 23.635567>,  <33.115768, 39.752449, 23.993925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469749, 39.809162, 23.635567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632912, 40.169533, 23.694813>,  <32.730808, 40.385757, 23.730360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632912, 40.169533, 23.694813>,  <32.469749, 39.809162, 23.635567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632912, 40.169533, 23.694813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223457, 0.255799, -0.940550,
		-0.885258, 0.350557, 0.305660,
		0.407904, 0.900931, 0.148114,
		32.755283, 40.439812, 23.739246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680428, 39.623344, 23.556267>,  <32.469749, 39.809162, 23.635567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680428, 39.623344, 23.556267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666637, 39.393677, 23.229063>,  <31.658363, 39.255875, 23.032742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666637, 39.393677, 23.229063>,  <31.680428, 39.623344, 23.556267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666637, 39.393677, 23.229063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498711, -0.719188, 0.483793,
		-0.866082, -0.391271, 0.311141,
		-0.034475, -0.574174, -0.818007,
		31.656296, 39.221424, 22.983662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501034, 38.923748, 23.746254>,  <31.680428, 39.623344, 23.556267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501034, 38.923748, 23.746254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666447, 38.842514, 23.391233>,  <31.765694, 38.793774, 23.178221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666447, 38.842514, 23.391233>,  <31.501034, 38.923748, 23.746254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666447, 38.842514, 23.391233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478490, -0.780868, 0.401611,
		-0.774619, -0.590766, -0.225747,
		0.413537, -0.203078, -0.887551,
		31.790506, 38.781590, 23.124968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340807, 38.231358, 23.651508>,  <31.501034, 38.923748, 23.746254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340807, 38.231358, 23.651508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645817, 38.321247, 23.408838>,  <31.828823, 38.375179, 23.263237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645817, 38.321247, 23.408838>,  <31.340807, 38.231358, 23.651508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645817, 38.321247, 23.408838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485062, -0.819095, 0.306265,
		-0.428097, -0.527809, -0.733587,
		0.762527, 0.224724, -0.606673,
		31.874575, 38.388664, 23.226837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446747, 37.669914, 23.313370>,  <31.340807, 38.231358, 23.651508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446747, 37.669914, 23.313370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784567, 37.883175, 23.293442>,  <31.987259, 38.011131, 23.281485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784567, 37.883175, 23.293442>,  <31.446747, 37.669914, 23.313370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784567, 37.883175, 23.293442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481060, -0.714578, 0.507896,
		0.235186, -0.452910, -0.859977,
		0.844552, 0.533151, -0.049818,
		32.037933, 38.043121, 23.278496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018101, 37.139942, 23.194731>,  <31.446747, 37.669914, 23.313370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018101, 37.139942, 23.194731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218708, 37.464401, 23.315077>,  <32.339073, 37.659077, 23.387285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218708, 37.464401, 23.315077>,  <32.018101, 37.139942, 23.194731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218708, 37.464401, 23.315077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663066, -0.583764, 0.468576,
		0.555718, -0.035506, -0.830612,
		0.501519, 0.811147, 0.300865,
		32.369164, 37.707745, 23.405336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798622, 36.947411, 23.109533>,  <32.018101, 37.139942, 23.194731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798622, 36.947411, 23.109533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.765511, 37.247017, 23.372478>,  <32.745644, 37.426781, 23.530245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.765511, 37.247017, 23.372478>,  <32.798622, 36.947411, 23.109533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765511, 37.247017, 23.372478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597991, -0.490341, 0.634013,
		0.797217, 0.445580, -0.407314,
		-0.082781, 0.749015, 0.657361,
		32.740677, 37.471722, 23.569687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352028, 36.877083, 23.511559>,  <32.798622, 36.947411, 23.109533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352028, 36.877083, 23.511559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129528, 37.105659, 23.752901>,  <32.996029, 37.242805, 23.897707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129528, 37.105659, 23.752901>,  <33.352028, 36.877083, 23.511559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129528, 37.105659, 23.752901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461875, -0.390984, 0.796118,
		0.690841, 0.721513, -0.046453,
		-0.556247, 0.571446, 0.603356,
		32.962654, 37.277092, 23.933908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880547, 37.161488, 23.975491>,  <33.352028, 36.877083, 23.511559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880547, 37.161488, 23.975491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535812, 37.226212, 24.167767>,  <33.328972, 37.265045, 24.283133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535812, 37.226212, 24.167767>,  <33.880547, 37.161488, 23.975491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535812, 37.226212, 24.167767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378284, -0.426249, 0.821713,
		0.337859, 0.890016, 0.306142,
		-0.861831, 0.161814, 0.480691,
		33.277264, 37.274757, 24.311974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071507, 37.482468, 24.612074>,  <33.880547, 37.161488, 23.975491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071507, 37.482468, 24.612074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701080, 37.357056, 24.696079>,  <33.478825, 37.281807, 24.746483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701080, 37.357056, 24.696079>,  <34.071507, 37.482468, 24.612074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701080, 37.357056, 24.696079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295560, -0.256580, 0.920224,
		-0.234636, 0.914256, 0.330277,
		-0.926062, -0.313534, 0.210015,
		33.423264, 37.262997, 24.759083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814728, 37.775867, 25.225763>,  <34.071507, 37.482468, 24.612074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814728, 37.775867, 25.225763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623592, 37.429119, 25.168911>,  <33.508911, 37.221069, 25.134800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623592, 37.429119, 25.168911>,  <33.814728, 37.775867, 25.225763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623592, 37.429119, 25.168911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239372, -0.284164, 0.928414,
		-0.845207, 0.409607, 0.343290,
		-0.477835, -0.866875, -0.142129,
		33.480244, 37.169056, 25.126272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589993, 37.638298, 25.810497>,  <33.814728, 37.775867, 25.225763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589993, 37.638298, 25.810497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568916, 37.277870, 25.638313>,  <33.556271, 37.061615, 25.535002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568916, 37.277870, 25.638313>,  <33.589993, 37.638298, 25.810497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568916, 37.277870, 25.638313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201737, -0.431777, 0.879131,
		-0.978021, -0.040521, 0.204528,
		-0.052687, -0.901070, -0.430462,
		33.553112, 37.007549, 25.509174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241955, 37.238487, 26.324997>,  <33.589993, 37.638298, 25.810497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241955, 37.238487, 26.324997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407341, 36.971355, 26.077431>,  <33.506573, 36.811077, 25.928892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407341, 36.971355, 26.077431>,  <33.241955, 37.238487, 26.324997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407341, 36.971355, 26.077431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305362, -0.538667, 0.785234,
		-0.857790, -0.513657, -0.018789,
		0.413462, -0.667828, -0.618914,
		33.531380, 36.771008, 25.891756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052418, 36.532856, 26.559694>,  <33.241955, 37.238487, 26.324997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052418, 36.532856, 26.559694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380867, 36.498081, 26.334057>,  <33.577934, 36.477215, 26.198673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380867, 36.498081, 26.334057>,  <33.052418, 36.532856, 26.559694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380867, 36.498081, 26.334057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396162, -0.624665, 0.672940,
		-0.410873, -0.776038, -0.478485,
		0.821121, -0.086935, -0.564095,
		33.627205, 36.472000, 26.164827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181625, 35.863705, 26.558781>,  <33.052418, 36.532856, 26.559694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181625, 35.863705, 26.558781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533363, 36.028507, 26.463284>,  <33.744408, 36.127388, 26.405985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533363, 36.028507, 26.463284>,  <33.181625, 35.863705, 26.558781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533363, 36.028507, 26.463284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433727, -0.486070, 0.758694,
		0.196539, -0.770706, -0.606122,
		0.879348, 0.412005, -0.238745,
		33.797169, 36.152107, 26.391661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851555, 35.189610, 26.524939>,  <33.181625, 35.863705, 26.558781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851555, 35.189610, 26.524939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618931, 35.248936, 26.844885>,  <32.479355, 35.284531, 27.036854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618931, 35.248936, 26.844885>,  <32.851555, 35.189610, 26.524939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618931, 35.248936, 26.844885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639088, 0.525067, -0.562024,
		-0.503339, -0.838038, -0.210575,
		-0.581564, 0.148313, 0.799867,
		32.444462, 35.293430, 27.084845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160576, 35.161034, 26.230206>,  <32.851555, 35.189610, 26.524939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160576, 35.161034, 26.230206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.120083, 35.359154, 26.575327>,  <32.095787, 35.478027, 26.782400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.120083, 35.359154, 26.575327>,  <32.160576, 35.161034, 26.230206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120083, 35.359154, 26.575327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657656, 0.617424, -0.431596,
		-0.746486, -0.611119, 0.263236,
		-0.101229, 0.495299, 0.862804,
		32.089714, 35.507744, 26.834167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476854, 35.183857, 26.414942>,  <32.160576, 35.161034, 26.230206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476854, 35.183857, 26.414942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605743, 35.493492, 26.632921>,  <31.683077, 35.679272, 26.763708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605743, 35.493492, 26.632921>,  <31.476854, 35.183857, 26.414942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605743, 35.493492, 26.632921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732032, 0.568745, -0.375046,
		-0.600253, -0.278071, 0.749915,
		0.322221, 0.774084, 0.544948,
		31.702410, 35.725716, 26.796406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928106, 35.515675, 26.489162>,  <31.476854, 35.183857, 26.414942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928106, 35.515675, 26.489162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181082, 35.782825, 26.646112>,  <31.332867, 35.943115, 26.740282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181082, 35.782825, 26.646112>,  <30.928106, 35.515675, 26.489162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181082, 35.782825, 26.646112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684064, 0.719211, -0.121618,
		-0.363426, -0.191494, 0.911730,
		0.632437, 0.667881, 0.392374,
		31.370813, 35.983189, 26.763824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547361, 35.843342, 26.939407>,  <30.928106, 35.515675, 26.489162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547361, 35.843342, 26.939407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838501, 36.062569, 26.774553>,  <31.013186, 36.194107, 26.675640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838501, 36.062569, 26.774553>,  <30.547361, 35.843342, 26.939407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838501, 36.062569, 26.774553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681382, 0.645662, -0.344729,
		0.077166, 0.531734, 0.843389,
		0.727848, 0.548069, -0.412137,
		31.056856, 36.226990, 26.650911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307768, 36.458778, 27.067144>,  <30.547361, 35.843342, 26.939407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307768, 36.458778, 27.067144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580355, 36.503578, 26.777853>,  <30.743908, 36.530457, 26.604279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580355, 36.503578, 26.777853>,  <30.307768, 36.458778, 27.067144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580355, 36.503578, 26.777853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636457, 0.578537, -0.510115,
		0.361280, 0.807930, 0.465538,
		0.681468, 0.112000, -0.723227,
		30.784796, 36.537178, 26.560884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288877, 37.125515, 26.930676>,  <30.307768, 36.458778, 27.067144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288877, 37.125515, 26.930676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458282, 36.960392, 26.608128>,  <30.559925, 36.861317, 26.414598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458282, 36.960392, 26.608128>,  <30.288877, 37.125515, 26.930676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458282, 36.960392, 26.608128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473110, 0.658307, -0.585490,
		0.772532, 0.629462, 0.083497,
		0.423510, -0.412807, -0.806368,
		30.585335, 36.836552, 26.366217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879240, 37.588070, 27.191559>,  <30.288877, 37.125515, 26.930676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879240, 37.588070, 27.191559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615566, 37.724186, 27.459793>,  <30.457363, 37.805855, 27.620733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615566, 37.724186, 27.459793>,  <30.879240, 37.588070, 27.191559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615566, 37.724186, 27.459793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584093, -0.329955, 0.741596,
		0.473618, 0.880531, 0.018742,
		-0.659183, 0.340286, 0.670585,
		30.417812, 37.826271, 27.660969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195805, 37.939098, 27.698589>,  <30.879240, 37.588070, 27.191559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195805, 37.939098, 27.698589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854115, 37.838253, 27.880465>,  <30.649101, 37.777744, 27.989590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854115, 37.838253, 27.880465>,  <31.195805, 37.939098, 27.698589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854115, 37.838253, 27.880465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509845, -0.235005, 0.827545,
		-0.101784, 0.938728, 0.329287,
		-0.854224, -0.252116, 0.454686,
		30.597847, 37.762619, 28.016870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188162, 38.296078, 28.290918>,  <31.195805, 37.939098, 27.698589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188162, 38.296078, 28.290918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925173, 38.003971, 28.365147>,  <30.767380, 37.828709, 28.409683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925173, 38.003971, 28.365147>,  <31.188162, 38.296078, 28.290918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925173, 38.003971, 28.365147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395627, -0.124982, 0.909868,
		-0.641254, 0.671631, 0.371086,
		-0.657475, -0.730268, 0.185570,
		30.727930, 37.784889, 28.420818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937700, 38.472176, 28.995638>,  <31.188162, 38.296078, 28.290918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937700, 38.472176, 28.995638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879108, 38.085323, 28.912506>,  <30.843952, 37.853210, 28.862627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879108, 38.085323, 28.912506>,  <30.937700, 38.472176, 28.995638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879108, 38.085323, 28.912506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385729, -0.249307, 0.888290,
		-0.910910, 0.049953, 0.409571,
		-0.146481, -0.967135, -0.207828,
		30.835163, 37.795181, 28.850159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113354, 38.262230, 29.588270>,  <30.937700, 38.472176, 28.995638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113354, 38.262230, 29.588270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062059, 37.914654, 29.397062>,  <31.031282, 37.706108, 29.282337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062059, 37.914654, 29.397062>,  <31.113354, 38.262230, 29.588270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062059, 37.914654, 29.397062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375624, -0.488645, 0.787485,
		-0.917857, -0.078571, 0.389056,
		-0.128237, -0.868938, -0.478020,
		31.023588, 37.653973, 29.253656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572838, 37.770767, 29.928705>,  <31.113354, 38.262230, 29.588270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572838, 37.770767, 29.928705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.842068, 37.550941, 29.730734>,  <31.003605, 37.419048, 29.611952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.842068, 37.550941, 29.730734>,  <30.572838, 37.770767, 29.928705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842068, 37.550941, 29.730734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323382, -0.383151, 0.865228,
		-0.665128, -0.742414, -0.080170,
		0.673074, -0.549562, -0.494927,
		31.043991, 37.386074, 29.582256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691071, 37.209755, 30.452045>,  <30.572838, 37.770767, 29.928705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691071, 37.209755, 30.452045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973642, 37.155273, 30.174223>,  <31.143185, 37.122585, 30.007530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973642, 37.155273, 30.174223>,  <30.691071, 37.209755, 30.452045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973642, 37.155273, 30.174223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553782, -0.504757, 0.662228,
		-0.440776, -0.852450, -0.281150,
		0.706429, -0.136199, -0.694556,
		31.185570, 37.114414, 29.965857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.023699, 41.659775, 26.564796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267458, 41.396812, 26.387508>,  <30.413713, 41.239033, 26.281136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267458, 41.396812, 26.387508>,  <30.023699, 41.659775, 26.564796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267458, 41.396812, 26.387508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555861, -0.044374, 0.830090,
		-0.565377, -0.752225, 0.338388,
		0.609399, -0.657410, -0.443221,
		30.450277, 41.199589, 26.254541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068323, 41.100288, 26.900108>,  <30.023699, 41.659775, 26.564796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068323, 41.100288, 26.900108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413126, 41.068577, 26.699846>,  <30.620008, 41.049549, 26.579689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413126, 41.068577, 26.699846>,  <30.068323, 41.100288, 26.900108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413126, 41.068577, 26.699846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488069, -0.136858, 0.862009,
		-0.136858, -0.987413, -0.079279,
		-0.862009, 0.079279, 0.500656,
		30.671728, 41.044792, 26.549650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313091, 40.525814, 27.217075>,  <30.068323, 41.100288, 26.900108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313091, 40.525814, 27.217075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610472, 40.722885, 27.036167>,  <30.788900, 40.841129, 26.927622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610472, 40.722885, 27.036167>,  <30.313091, 40.525814, 27.217075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610472, 40.722885, 27.036167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568395, -0.109100, 0.815490,
		0.352433, -0.863345, -0.361147,
		0.743450, 0.492679, -0.452271,
		30.833508, 40.870689, 26.900486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942616, 40.091415, 27.106178>,  <30.313091, 40.525814, 27.217075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942616, 40.091415, 27.106178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089077, 40.463558, 27.098417>,  <31.176954, 40.686844, 27.093761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089077, 40.463558, 27.098417>,  <30.942616, 40.091415, 27.106178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089077, 40.463558, 27.098417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516874, -0.185996, 0.835612,
		0.773804, -0.315991, -0.548978,
		0.366153, 0.930352, -0.019403,
		31.198923, 40.742664, 27.092596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708143, 40.062309, 27.252216>,  <30.942616, 40.091415, 27.106178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708143, 40.062309, 27.252216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609537, 40.441387, 27.333315>,  <31.550373, 40.668835, 27.381973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609537, 40.441387, 27.333315>,  <31.708143, 40.062309, 27.252216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609537, 40.441387, 27.333315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570494, -0.027210, 0.820850,
		0.783432, 0.318017, -0.533947,
		-0.246516, 0.947694, 0.202745,
		31.535582, 40.725697, 27.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329140, 40.376446, 27.510838>,  <31.708143, 40.062309, 27.252216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329140, 40.376446, 27.510838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023941, 40.602680, 27.636019>,  <31.840820, 40.738422, 27.711128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023941, 40.602680, 27.636019>,  <32.329140, 40.376446, 27.510838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023941, 40.602680, 27.636019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395293, 0.025195, 0.918210,
		0.511445, 0.824302, -0.242797,
		-0.762999, 0.565590, 0.312955,
		31.795042, 40.772358, 27.729906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687424, 41.035416, 27.688313>,  <32.329140, 40.376446, 27.510838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687424, 41.035416, 27.688313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.337986, 41.080357, 27.877718>,  <32.128323, 41.107323, 27.991362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.337986, 41.080357, 27.877718>,  <32.687424, 41.035416, 27.688313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337986, 41.080357, 27.877718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395344, -0.403559, 0.825132,
		0.283796, 0.908029, 0.308128,
		-0.873592, 0.112353, 0.473513,
		32.075909, 41.114063, 28.019772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821503, 41.510567, 28.201803>,  <32.687424, 41.035416, 27.688313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821503, 41.510567, 28.201803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.481186, 41.341434, 28.326612>,  <32.276997, 41.239956, 28.401499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.481186, 41.341434, 28.326612>,  <32.821503, 41.510567, 28.201803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481186, 41.341434, 28.326612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364706, -0.047622, 0.929904,
		-0.378336, 0.904955, 0.194727,
		-0.850794, -0.422835, 0.312025,
		32.225948, 41.214584, 28.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744423, 41.772484, 28.894329>,  <32.821503, 41.510567, 28.201803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744423, 41.772484, 28.894329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.531162, 41.436951, 28.850300>,  <32.403206, 41.235630, 28.823883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.531162, 41.436951, 28.850300>,  <32.744423, 41.772484, 28.894329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531162, 41.436951, 28.850300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223115, -0.264908, 0.938106,
		-0.816072, 0.475591, 0.328391,
		-0.533148, -0.838831, -0.110072,
		32.371220, 41.185303, 28.817278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404125, 41.748150, 29.557222>,  <32.744423, 41.772484, 28.894329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404125, 41.748150, 29.557222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449066, 41.387772, 29.389568>,  <32.476028, 41.171543, 29.288975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449066, 41.387772, 29.389568>,  <32.404125, 41.748150, 29.557222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449066, 41.387772, 29.389568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156442, -0.400509, 0.902839,
		-0.981277, -0.167003, 0.095949,
		0.112348, -0.900945, -0.419136,
		32.482769, 41.117489, 29.263828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999920, 41.359207, 30.030521>,  <32.404125, 41.748150, 29.557222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999920, 41.359207, 30.030521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.201839, 41.077396, 29.830994>,  <32.322990, 40.908310, 29.711277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.201839, 41.077396, 29.830994>,  <31.999920, 41.359207, 30.030521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201839, 41.077396, 29.830994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126164, -0.511432, 0.850012,
		-0.853968, -0.492018, -0.169283,
		0.504798, -0.704526, -0.498822,
		32.353279, 40.866039, 29.681347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781528, 40.644581, 30.249901>,  <31.999920, 41.359207, 30.030521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781528, 40.644581, 30.249901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140942, 40.561977, 30.094986>,  <32.356590, 40.512417, 30.002037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140942, 40.561977, 30.094986>,  <31.781528, 40.644581, 30.249901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140942, 40.561977, 30.094986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179630, -0.632084, 0.753792,
		-0.400460, -0.746877, -0.530855,
		0.898535, -0.206507, -0.387286,
		32.410503, 40.500027, 29.978800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029959, 40.396847, 30.227795>,  <31.781528, 40.644581, 30.249901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029959, 40.396847, 30.227795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786346, 40.519459, 30.520401>,  <30.640179, 40.593025, 30.695965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786346, 40.519459, 30.520401>,  <31.029959, 40.396847, 30.227795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786346, 40.519459, 30.520401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304648, 0.761141, -0.572585,
		-0.732306, -0.571577, -0.370173,
		-0.609030, 0.306534, 0.731518,
		30.603638, 40.611420, 30.739857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528473, 40.711372, 29.877560>,  <31.029959, 40.396847, 30.227795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528473, 40.711372, 29.877560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 40.844006, 30.247723>,  <30.411036, 40.923584, 30.469820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 40.844006, 30.247723>,  <30.528473, 40.711372, 29.877560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455074, 40.844006, 30.247723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426915, 0.821101, -0.378861,
		-0.885479, -0.464590, -0.009109,
		-0.183495, 0.331584, 0.925409,
		30.400026, 40.943481, 30.525345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821810, 40.872158, 29.972843>,  <30.528473, 40.711372, 29.877560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821810, 40.872158, 29.972843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007376, 41.085083, 30.256088>,  <30.118715, 41.212837, 30.426035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007376, 41.085083, 30.256088>,  <29.821810, 40.872158, 29.972843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007376, 41.085083, 30.256088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469190, 0.825657, -0.313290,
		-0.751427, -0.186899, 0.632792,
		0.463915, 0.532314, 0.708113,
		30.146551, 41.244778, 30.468523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314711, 41.195274, 30.392654>,  <29.821810, 40.872158, 29.972843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314711, 41.195274, 30.392654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642084, 41.420197, 30.439949>,  <29.838509, 41.555149, 30.468327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642084, 41.420197, 30.439949>,  <29.314711, 41.195274, 30.392654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642084, 41.420197, 30.439949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412111, 0.717827, -0.561150,
		-0.400411, 0.410538, 0.819225,
		0.818435, 0.562302, 0.118238,
		29.887615, 41.588886, 30.475420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104654, 41.916969, 30.585947>,  <29.314711, 41.195274, 30.392654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104654, 41.916969, 30.585947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471035, 41.919407, 30.425451>,  <29.690865, 41.920868, 30.329153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471035, 41.919407, 30.425451>,  <29.104654, 41.916969, 30.585947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471035, 41.919407, 30.425451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329154, 0.583343, -0.742542,
		0.229538, 0.812203, 0.536319,
		0.915953, 0.006090, -0.401239,
		29.745821, 41.921234, 30.305080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060514, 42.547195, 30.188354>,  <29.104654, 41.916969, 30.585947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060514, 42.547195, 30.188354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382410, 42.338364, 30.075336>,  <29.575548, 42.213066, 30.007526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382410, 42.338364, 30.075336>,  <29.060514, 42.547195, 30.188354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382410, 42.338364, 30.075336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075490, 0.382096, -0.921034,
		0.588810, 0.762521, 0.268076,
		0.804739, -0.522077, -0.282544,
		29.623831, 42.181740, 29.990574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357782, 43.087807, 29.950291>,  <29.060514, 42.547195, 30.188354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357782, 43.087807, 29.950291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.512690, 42.762215, 29.777103>,  <29.605635, 42.566860, 29.673191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.512690, 42.762215, 29.777103>,  <29.357782, 43.087807, 29.950291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512690, 42.762215, 29.777103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212903, 0.377966, -0.901007,
		0.897048, 0.441113, -0.026923,
		0.387270, -0.813979, -0.432968,
		29.628870, 42.518021, 29.647213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706219, 43.227039, 29.404789>,  <29.357782, 43.087807, 29.950291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706219, 43.227039, 29.404789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660683, 42.847343, 29.287493>,  <29.633360, 42.619526, 29.217115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660683, 42.847343, 29.287493>,  <29.706219, 43.227039, 29.404789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660683, 42.847343, 29.287493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293255, 0.314116, -0.902958,
		0.949232, -0.016799, -0.314127,
		-0.113841, -0.949236, -0.293243,
		29.626530, 42.562572, 29.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980257, 43.184212, 28.640862>,  <29.706219, 43.227039, 29.404789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980257, 43.184212, 28.640862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758764, 42.857403, 28.705185>,  <29.625868, 42.661320, 28.743780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758764, 42.857403, 28.705185>,  <29.980257, 43.184212, 28.640862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758764, 42.857403, 28.705185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453285, 0.133756, -0.881273,
		0.698508, -0.560882, -0.444407,
		-0.553732, -0.817020, 0.160809,
		29.592644, 42.612297, 28.753428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993757, 42.745880, 28.011213>,  <29.980257, 43.184212, 28.640862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993757, 42.745880, 28.011213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652685, 42.641258, 28.192110>,  <29.448042, 42.578484, 28.300648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652685, 42.641258, 28.192110>,  <29.993757, 42.745880, 28.011213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652685, 42.641258, 28.192110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475546, 0.030175, -0.879173,
		0.216311, -0.964715, -0.150114,
		-0.852681, -0.261561, 0.452239,
		29.396881, 42.562790, 28.327782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734249, 42.232655, 27.635271>,  <29.993757, 42.745880, 28.011213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734249, 42.232655, 27.635271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421576, 42.372910, 27.841581>,  <29.233971, 42.457062, 27.965366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421576, 42.372910, 27.841581>,  <29.734249, 42.232655, 27.635271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421576, 42.372910, 27.841581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545417, 0.016753, -0.837997,
		-0.302475, -0.936361, 0.178148,
		-0.781684, 0.350638, 0.515775,
		29.187071, 42.478100, 27.996313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263592, 42.026955, 27.230040>,  <29.734249, 42.232655, 27.635271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263592, 42.026955, 27.230040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.041235, 42.269249, 27.457745>,  <28.907820, 42.414627, 27.594368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.041235, 42.269249, 27.457745>,  <29.263592, 42.026955, 27.230040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041235, 42.269249, 27.457745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662477, 0.090819, -0.743556,
		-0.502101, -0.790463, 0.350803,
		-0.555894, 0.605739, 0.569264,
		28.874466, 42.450970, 27.628525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652731, 41.769539, 27.103888>,  <29.263592, 42.026955, 27.230040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652731, 41.769539, 27.103888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606306, 42.143845, 27.237083>,  <28.578451, 42.368427, 27.317001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606306, 42.143845, 27.237083>,  <28.652731, 41.769539, 27.103888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606306, 42.143845, 27.237083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548301, 0.219184, -0.807047,
		-0.828189, -0.276246, 0.487639,
		-0.116061, 0.935760, 0.332991,
		28.571487, 42.424572, 27.336981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914654, 41.205006, 26.716829>,  <28.652731, 41.769539, 27.103888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914654, 41.205006, 26.716829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698076, 40.929325, 26.524233>,  <28.568129, 40.763916, 26.408676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698076, 40.929325, 26.524233>,  <28.914654, 41.205006, 26.716829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698076, 40.929325, 26.524233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473580, -0.723220, 0.502667,
		-0.694664, 0.044143, 0.717978,
		-0.541446, -0.689205, -0.481490,
		28.535643, 40.722565, 26.379786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648363, 40.795002, 27.239737>,  <28.914654, 41.205006, 26.716829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648363, 40.795002, 27.239737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648499, 40.575958, 26.905045>,  <28.648579, 40.444530, 26.704229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648499, 40.575958, 26.905045>,  <28.648363, 40.795002, 27.239737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648499, 40.575958, 26.905045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253163, -0.809427, 0.529845,
		-0.967424, -0.212008, 0.138363,
		0.000337, -0.547613, -0.836732,
		28.648600, 40.411674, 26.654024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492897, 40.183617, 27.519899>,  <28.648363, 40.795002, 27.239737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492897, 40.183617, 27.519899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622677, 40.066177, 27.160225>,  <28.700544, 39.995716, 26.944420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622677, 40.066177, 27.160225>,  <28.492897, 40.183617, 27.519899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622677, 40.066177, 27.160225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346158, -0.847817, 0.401723,
		-0.880289, -0.441598, -0.173441,
		0.324446, -0.293595, -0.899187,
		28.720011, 39.978100, 26.890469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215441, 39.555790, 27.323860>,  <28.492897, 40.183617, 27.519899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215441, 39.555790, 27.323860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546190, 39.580254, 27.100239>,  <28.744640, 39.594933, 26.966066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546190, 39.580254, 27.100239>,  <28.215441, 39.555790, 27.323860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546190, 39.580254, 27.100239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271364, -0.914077, 0.301371,
		-0.492589, -0.400903, -0.772420,
		0.826872, 0.061155, -0.559055,
		28.794252, 39.598598, 26.932522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253216, 38.803001, 27.253143>,  <28.215441, 39.555790, 27.323860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253216, 38.803001, 27.253143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606745, 38.952793, 27.140984>,  <28.818863, 39.042667, 27.073687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606745, 38.952793, 27.140984>,  <28.253216, 38.803001, 27.253143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606745, 38.952793, 27.140984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460711, -0.800833, 0.382639,
		-0.081264, -0.467368, -0.880320,
		0.883822, 0.374478, -0.280401,
		28.871891, 39.065136, 27.056864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563440, 38.206413, 27.126125>,  <28.253216, 38.803001, 27.253143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563440, 38.206413, 27.126125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885128, 38.444141, 27.124897>,  <29.078140, 38.586781, 27.124159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885128, 38.444141, 27.124897>,  <28.563440, 38.206413, 27.126125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885128, 38.444141, 27.124897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566859, -0.765481, 0.304482,
		0.178609, -0.246612, -0.952513,
		0.804220, 0.594324, -0.003072,
		29.126394, 38.622440, 27.123976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098145, 37.840946, 26.884565>,  <28.563440, 38.206413, 27.126125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098145, 37.840946, 26.884565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282305, 38.125126, 27.097466>,  <29.392801, 38.295635, 27.225204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282305, 38.125126, 27.097466>,  <29.098145, 37.840946, 26.884565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282305, 38.125126, 27.097466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558423, -0.697870, 0.448488,
		0.690070, 0.090737, -0.718032,
		0.460398, 0.710454, 0.532249,
		29.420424, 38.338261, 27.257139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822206, 37.770870, 26.737209>,  <29.098145, 37.840946, 26.884565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822206, 37.770870, 26.737209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780870, 37.942772, 27.096014>,  <29.756069, 38.045914, 27.311296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780870, 37.942772, 27.096014>,  <29.822206, 37.770870, 26.737209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780870, 37.942772, 27.096014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619545, -0.677714, 0.396066,
		0.778129, 0.596669, -0.196217,
		-0.103341, 0.429756, 0.897012,
		29.749868, 38.071697, 27.365118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505341, 37.702873, 26.510574>,  <29.822206, 37.770870, 26.737209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505341, 37.702873, 26.510574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.514482, 37.388668, 26.263205>,  <30.519968, 37.200146, 26.114782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.514482, 37.388668, 26.263205>,  <30.505341, 37.702873, 26.510574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514482, 37.388668, 26.263205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468659, 0.537987, -0.700663,
		0.883084, 0.305842, -0.355843,
		0.022854, -0.785513, -0.618423,
		30.521339, 37.153015, 26.077677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968189, 37.979977, 25.977448>,  <30.505341, 37.702873, 26.510574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968189, 37.979977, 25.977448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772470, 37.657841, 25.843567>,  <30.655039, 37.464561, 25.763239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772470, 37.657841, 25.843567>,  <30.968189, 37.979977, 25.977448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772470, 37.657841, 25.843567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271412, 0.505335, -0.819129,
		0.828810, -0.309953, -0.465835,
		-0.489294, -0.805336, -0.334702,
		30.625683, 37.416241, 25.743156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138645, 37.992210, 25.323666>,  <30.968189, 37.979977, 25.977448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138645, 37.992210, 25.323666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809589, 37.765488, 25.305782>,  <30.612156, 37.629456, 25.295052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809589, 37.765488, 25.305782>,  <31.138645, 37.992210, 25.323666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809589, 37.765488, 25.305782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294116, 0.491529, -0.819692,
		0.486551, -0.661181, -0.571059,
		-0.822657, -0.566779, -0.044690,
		30.562798, 37.595448, 25.292370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021530, 37.668106, 24.525047>,  <31.138645, 37.992210, 25.323666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021530, 37.668106, 24.525047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662838, 37.627026, 24.697245>,  <30.447622, 37.602375, 24.800564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662838, 37.627026, 24.697245>,  <31.021530, 37.668106, 24.525047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662838, 37.627026, 24.697245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408739, 0.565214, -0.716566,
		-0.169727, -0.818526, -0.548824,
		-0.896730, -0.102705, 0.430495,
		30.393818, 37.596214, 24.826393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524395, 37.408279, 23.977140>,  <31.021530, 37.668106, 24.525047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524395, 37.408279, 23.977140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328979, 37.602692, 24.266998>,  <30.211731, 37.719337, 24.440912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328979, 37.602692, 24.266998>,  <30.524395, 37.408279, 23.977140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328979, 37.602692, 24.266998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359412, 0.644675, -0.674698,
		-0.795081, -0.590061, -0.140264,
		-0.488537, 0.486027, 0.724644,
		30.182419, 37.748501, 24.484392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932165, 37.545242, 23.646194>,  <30.524395, 37.408279, 23.977140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932165, 37.545242, 23.646194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897350, 37.772549, 23.973488>,  <29.876461, 37.908932, 24.169863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897350, 37.772549, 23.973488>,  <29.932165, 37.545242, 23.646194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897350, 37.772549, 23.973488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444879, 0.712727, -0.542312,
		-0.891351, -0.411216, 0.190772,
		-0.087039, 0.568261, 0.818232,
		29.871239, 37.943027, 24.218958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245295, 37.688744, 23.728434>,  <29.932165, 37.545242, 23.646194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245295, 37.688744, 23.728434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455002, 37.964825, 23.927940>,  <29.580826, 38.130474, 24.047644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455002, 37.964825, 23.927940>,  <29.245295, 37.688744, 23.728434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455002, 37.964825, 23.927940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452399, 0.721969, -0.523542,
		-0.721443, 0.048833, 0.690750,
		0.524266, 0.690200, 0.498767,
		29.612282, 38.171886, 24.077570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784416, 38.070969, 24.009264>,  <29.245295, 37.688744, 23.728434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784416, 38.070969, 24.009264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104984, 38.303661, 23.953667>,  <29.297325, 38.443275, 23.920309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104984, 38.303661, 23.953667>,  <28.784416, 38.070969, 24.009264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104984, 38.303661, 23.953667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529418, 0.581837, -0.617399,
		-0.278288, 0.568380, 0.774273,
		0.801419, 0.581729, -0.138992,
		29.345409, 38.478180, 23.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560560, 38.713299, 24.189993>,  <28.784416, 38.070969, 24.009264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560560, 38.713299, 24.189993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881605, 38.778881, 23.960583>,  <29.074232, 38.818230, 23.822937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881605, 38.778881, 23.960583>,  <28.560560, 38.713299, 24.189993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881605, 38.778881, 23.960583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544369, 0.594430, -0.591875,
		0.243880, 0.787256, 0.566349,
		0.802612, 0.163956, -0.573527,
		29.122389, 38.828068, 23.788525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.300518, 30.090652, 35.385151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553242, 30.344404, 35.206993>,  <36.704876, 30.496655, 35.100098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553242, 30.344404, 35.206993>,  <36.300518, 30.090652, 35.385151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553242, 30.344404, 35.206993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730849, 0.296135, -0.614951,
		-0.258214, 0.714051, 0.650736,
		0.631812, 0.634378, -0.445397,
		36.742786, 30.534718, 35.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884045, 30.469372, 35.065384>,  <36.300518, 30.090652, 35.385151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884045, 30.469372, 35.065384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224163, 30.625376, 34.924026>,  <36.428234, 30.718979, 34.839214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224163, 30.625376, 34.924026>,  <35.884045, 30.469372, 35.065384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224163, 30.625376, 34.924026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495625, 0.367484, -0.786963,
		-0.177059, 0.844303, 0.505770,
		0.850298, 0.390011, -0.353391,
		36.479252, 30.742378, 34.818008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856388, 31.201929, 35.029743>,  <35.884045, 30.469372, 35.065384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856388, 31.201929, 35.029743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129059, 31.084671, 34.761597>,  <36.292660, 31.014317, 34.600708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129059, 31.084671, 34.761597>,  <35.856388, 31.201929, 35.029743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129059, 31.084671, 34.761597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403650, 0.613500, -0.678738,
		0.610237, 0.733270, 0.299878,
		0.681673, -0.293145, -0.670364,
		36.333561, 30.996727, 34.560486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053116, 31.867897, 34.582775>,  <35.856388, 31.201929, 35.029743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053116, 31.867897, 34.582775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132515, 31.529783, 34.384342>,  <36.180153, 31.326916, 34.265282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132515, 31.529783, 34.384342>,  <36.053116, 31.867897, 34.582775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132515, 31.529783, 34.384342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487321, 0.354030, -0.798236,
		0.850363, 0.400197, -0.341651,
		0.198497, -0.845284, -0.496078,
		36.192062, 31.276197, 34.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039101, 32.135502, 33.901836>,  <36.053116, 31.867897, 34.582775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039101, 32.135502, 33.901836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033665, 31.737501, 33.862255>,  <36.030403, 31.498701, 33.838505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033665, 31.737501, 33.862255>,  <36.039101, 32.135502, 33.901836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033665, 31.737501, 33.862255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372495, 0.096881, -0.922964,
		0.927935, 0.024314, -0.371949,
		-0.013594, -0.994999, -0.098956,
		36.029587, 31.439001, 33.832569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284031, 31.987900, 33.211891>,  <36.039101, 32.135502, 33.901836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284031, 31.987900, 33.211891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091175, 31.660448, 33.336716>,  <35.975460, 31.463976, 33.411610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091175, 31.660448, 33.336716>,  <36.284031, 31.987900, 33.211891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091175, 31.660448, 33.336716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478431, -0.052369, -0.876562,
		0.733924, -0.571926, -0.366409,
		-0.482140, -0.818632, 0.312062,
		35.946533, 31.414858, 33.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414368, 31.329206, 32.732204>,  <36.284031, 31.987900, 33.211891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414368, 31.329206, 32.732204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073864, 31.305441, 32.940754>,  <35.869564, 31.291182, 33.065884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073864, 31.305441, 32.940754>,  <36.414368, 31.329206, 32.732204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073864, 31.305441, 32.940754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519977, -0.038184, -0.853326,
		0.070613, -0.997503, 0.001607,
		-0.851256, -0.059421, 0.521374,
		35.818485, 31.287617, 33.097168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984455, 30.969467, 32.281696>,  <36.414368, 31.329206, 32.732204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984455, 30.969467, 32.281696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749039, 31.135263, 32.559349>,  <35.607788, 31.234741, 32.725941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749039, 31.135263, 32.559349>,  <35.984455, 30.969467, 32.281696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749039, 31.135263, 32.559349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709557, 0.146677, -0.689213,
		-0.387486, -0.898155, 0.207781,
		-0.588543, 0.414493, 0.694128,
		35.572475, 31.259611, 32.767586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340759, 30.797049, 32.020405>,  <35.984455, 30.969467, 32.281696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340759, 30.797049, 32.020405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263008, 31.087425, 32.284290>,  <35.216358, 31.261652, 32.442623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263008, 31.087425, 32.284290>,  <35.340759, 30.797049, 32.020405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263008, 31.087425, 32.284290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654866, 0.404690, -0.638261,
		-0.730322, -0.556086, 0.396735,
		-0.194373, 0.725943, 0.659716,
		35.204697, 31.305208, 32.482204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557518, 30.857901, 32.119797>,  <35.340759, 30.797049, 32.020405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557518, 30.857901, 32.119797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720860, 31.204752, 32.233875>,  <34.818863, 31.412863, 32.302322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720860, 31.204752, 32.233875>,  <34.557518, 30.857901, 32.119797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720860, 31.204752, 32.233875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725748, 0.497912, -0.474735,
		-0.553659, -0.013122, 0.832640,
		0.408352, 0.867128, 0.285197,
		34.843365, 31.464890, 32.319435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944027, 31.353775, 32.237823>,  <34.557518, 30.857901, 32.119797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944027, 31.353775, 32.237823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260296, 31.589016, 32.169746>,  <34.450058, 31.730162, 32.128899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260296, 31.589016, 32.169746>,  <33.944027, 31.353775, 32.237823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260296, 31.589016, 32.169746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578456, 0.626546, -0.522330,
		-0.200551, 0.511442, 0.835587,
		0.790675, 0.588105, -0.170192,
		34.497498, 31.765448, 32.118690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627224, 31.925209, 32.341053>,  <33.944027, 31.353775, 32.237823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627224, 31.925209, 32.341053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970684, 31.993858, 32.147865>,  <34.176762, 32.035049, 32.031952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970684, 31.993858, 32.147865>,  <33.627224, 31.925209, 32.341053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970684, 31.993858, 32.147865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510766, 0.365165, -0.778314,
		0.042787, 0.914986, 0.401210,
		0.858655, 0.171622, -0.482968,
		34.228279, 32.045345, 32.002975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522839, 32.250244, 33.027485>,  <33.627224, 31.925209, 32.341053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522839, 32.250244, 33.027485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244873, 32.488209, 33.189060>,  <33.078094, 32.630989, 33.286003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244873, 32.488209, 33.189060>,  <33.522839, 32.250244, 33.027485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244873, 32.488209, 33.189060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019982, -0.545541, 0.837846,
		0.718811, 0.590306, 0.367219,
		-0.694918, 0.594915, 0.403936,
		33.036396, 32.666683, 33.310242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771004, 32.390537, 33.681931>,  <33.522839, 32.250244, 33.027485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771004, 32.390537, 33.681931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379879, 32.469822, 33.709057>,  <33.145203, 32.517391, 33.725334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379879, 32.469822, 33.709057>,  <33.771004, 32.390537, 33.681931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379879, 32.469822, 33.709057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023232, -0.424344, 0.905203,
		0.208197, 0.883542, 0.419533,
		-0.977811, 0.198207, 0.067820,
		33.086536, 32.529285, 33.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674664, 32.625767, 34.341309>,  <33.771004, 32.390537, 33.681931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674664, 32.625767, 34.341309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297291, 32.531940, 34.247566>,  <33.070869, 32.475647, 34.191319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297291, 32.531940, 34.247566>,  <33.674664, 32.625767, 34.341309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297291, 32.531940, 34.247566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148921, -0.331762, 0.931535,
		-0.296254, 0.913737, 0.278062,
		-0.943428, -0.234561, -0.234360,
		33.014263, 32.461571, 34.177258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166191, 33.036915, 34.799076>,  <33.674664, 32.625767, 34.341309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166191, 33.036915, 34.799076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946186, 32.739841, 34.646286>,  <32.814182, 32.561596, 34.554611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946186, 32.739841, 34.646286>,  <33.166191, 33.036915, 34.799076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946186, 32.739841, 34.646286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514014, -0.059445, 0.855719,
		-0.658236, 0.666999, -0.349054,
		-0.550014, -0.742684, -0.381976,
		32.781181, 32.517036, 34.531693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574203, 33.074749, 35.125237>,  <33.166191, 33.036915, 34.799076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574203, 33.074749, 35.125237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563820, 32.694794, 35.000629>,  <32.557590, 32.466820, 34.925865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563820, 32.694794, 35.000629>,  <32.574203, 33.074749, 35.125237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563820, 32.694794, 35.000629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336911, -0.285082, 0.897340,
		-0.941178, 0.128251, -0.312626,
		-0.025960, -0.949884, -0.311522,
		32.556030, 32.409828, 34.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858358, 32.828175, 35.201229>,  <32.574203, 33.074749, 35.125237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858358, 32.828175, 35.201229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121662, 32.527630, 35.219784>,  <32.279644, 32.347301, 35.230915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121662, 32.527630, 35.219784>,  <31.858358, 32.828175, 35.201229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121662, 32.527630, 35.219784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336313, -0.238392, 0.911078,
		-0.673491, -0.615324, -0.409616,
		0.658258, -0.751362, 0.046386,
		32.319141, 32.302219, 35.233700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492374, 32.332561, 35.449436>,  <31.858358, 32.828175, 35.201229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492374, 32.332561, 35.449436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849920, 32.160744, 35.500805>,  <32.064449, 32.057652, 35.531628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849920, 32.160744, 35.500805>,  <31.492374, 32.332561, 35.449436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849920, 32.160744, 35.500805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184280, -0.090888, 0.978662,
		-0.408712, -0.898458, -0.160399,
		0.893865, -0.429549, 0.128421,
		32.118080, 32.031879, 35.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344839, 31.661711, 35.696056>,  <31.492374, 32.332561, 35.449436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344839, 31.661711, 35.696056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711803, 31.779255, 35.803394>,  <31.931982, 31.849781, 35.867798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711803, 31.779255, 35.803394>,  <31.344839, 31.661711, 35.696056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711803, 31.779255, 35.803394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222268, -0.180951, 0.958047,
		0.330089, -0.938564, -0.100690,
		0.917408, 0.293861, 0.268343,
		31.987026, 31.867413, 35.883896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415493, 31.252285, 36.174835>,  <31.344839, 31.661711, 35.696056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415493, 31.252285, 36.174835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.728632, 31.492790, 36.238880>,  <31.916515, 31.637094, 36.277306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.728632, 31.492790, 36.238880>,  <31.415493, 31.252285, 36.174835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728632, 31.492790, 36.238880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230896, 0.041772, 0.972081,
		0.577790, -0.797957, 0.171531,
		0.782845, 0.601265, 0.160110,
		31.963486, 31.673170, 36.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887138, 30.962835, 36.762043>,  <31.415493, 31.252285, 36.174835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887138, 30.962835, 36.762043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989973, 31.349331, 36.755283>,  <32.051674, 31.581228, 36.751228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989973, 31.349331, 36.755283>,  <31.887138, 30.962835, 36.762043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989973, 31.349331, 36.755283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046811, 0.029916, 0.998456,
		0.965254, -0.255900, 0.052922,
		0.257088, 0.966241, -0.016898,
		32.067101, 31.639202, 36.750214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347591, 31.127562, 37.392933>,  <31.887138, 30.962835, 36.762043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347591, 31.127562, 37.392933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186268, 31.475702, 37.279915>,  <32.089474, 31.684587, 37.212105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186268, 31.475702, 37.279915>,  <32.347591, 31.127562, 37.392933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186268, 31.475702, 37.279915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064775, 0.280838, 0.957567,
		0.912769, 0.404496, -0.056887,
		-0.403308, 0.870352, -0.282542,
		32.065277, 31.736809, 37.195152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731701, 31.680914, 37.678143>,  <32.347591, 31.127562, 37.392933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731701, 31.680914, 37.678143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365833, 31.819107, 37.594212>,  <32.146313, 31.902023, 37.543854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365833, 31.819107, 37.594212>,  <32.731701, 31.680914, 37.678143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365833, 31.819107, 37.594212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114612, 0.276128, 0.954263,
		0.387618, 0.896881, -0.212969,
		-0.914667, 0.345481, -0.209826,
		32.091434, 31.922750, 37.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747879, 32.160595, 38.137852>,  <32.731701, 31.680914, 37.678143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747879, 32.160595, 38.137852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367664, 32.135643, 38.016140>,  <32.139534, 32.120670, 37.943115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367664, 32.135643, 38.016140>,  <32.747879, 32.160595, 38.137852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367664, 32.135643, 38.016140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310424, 0.224371, 0.923739,
		0.010644, 0.972505, -0.232639,
		-0.950539, -0.062384, -0.304277,
		32.082504, 32.116928, 37.924858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441639, 32.755875, 38.305588>,  <32.747879, 32.160595, 38.137852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441639, 32.755875, 38.305588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140076, 32.493355, 38.293625>,  <31.959137, 32.335842, 38.286449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140076, 32.493355, 38.293625>,  <32.441639, 32.755875, 38.305588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140076, 32.493355, 38.293625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298797, 0.301988, 0.905276,
		-0.585100, 0.691430, -0.423772,
		-0.753909, -0.656299, -0.029904,
		31.913902, 32.296467, 38.284653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860876, 33.165081, 38.524952>,  <32.441639, 32.755875, 38.305588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860876, 33.165081, 38.524952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768877, 32.782227, 38.595379>,  <31.713678, 32.552513, 38.637634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768877, 32.782227, 38.595379>,  <31.860876, 33.165081, 38.524952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768877, 32.782227, 38.595379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462792, 0.266719, 0.845390,
		-0.856111, 0.112953, -0.504298,
		-0.229995, -0.957132, 0.176067,
		31.699879, 32.495087, 38.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480637, 33.781113, 38.676563>,  <31.860876, 33.165081, 38.524952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480637, 33.781113, 38.676563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785067, 34.034306, 38.733273>,  <31.967724, 34.186222, 38.767300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785067, 34.034306, 38.733273>,  <31.480637, 33.781113, 38.676563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785067, 34.034306, 38.733273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211205, 0.448471, -0.868485,
		-0.613318, 0.631037, 0.475009,
		0.761074, 0.632982, 0.141777,
		32.013390, 34.224201, 38.775806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254025, 34.494663, 38.655216>,  <31.480637, 33.781113, 38.676563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254025, 34.494663, 38.655216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622156, 34.462917, 38.502010>,  <31.843035, 34.443871, 38.410088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622156, 34.462917, 38.502010>,  <31.254025, 34.494663, 38.655216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622156, 34.462917, 38.502010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338123, 0.330861, -0.881024,
		0.196645, 0.940337, 0.277666,
		0.920328, -0.079364, -0.383011,
		31.898254, 34.439110, 38.387108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494987, 35.155991, 38.426762>,  <31.254025, 34.494663, 38.655216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494987, 35.155991, 38.426762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710140, 34.882854, 38.229012>,  <31.839231, 34.718971, 38.110359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710140, 34.882854, 38.229012>,  <31.494987, 35.155991, 38.426762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710140, 34.882854, 38.229012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285710, 0.404072, -0.868963,
		0.793127, 0.608650, 0.022249,
		0.537884, -0.682841, -0.494378,
		31.871506, 34.678001, 38.080700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863087, 35.516930, 37.948223>,  <31.494987, 35.155991, 38.426762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863087, 35.516930, 37.948223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843796, 35.144836, 37.802711>,  <31.832220, 34.921581, 37.715405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843796, 35.144836, 37.802711>,  <31.863087, 35.516930, 37.948223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843796, 35.144836, 37.802711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233657, 0.364603, -0.901371,
		0.971122, 0.041527, -0.234941,
		-0.048229, -0.930236, -0.363777,
		31.829327, 34.865765, 37.693577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255978, 35.534508, 37.310719>,  <31.863087, 35.516930, 37.948223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255978, 35.534508, 37.310719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026752, 35.206909, 37.299133>,  <31.889217, 35.010349, 37.292183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026752, 35.206909, 37.299133>,  <32.255978, 35.534508, 37.310719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026752, 35.206909, 37.299133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288351, 0.234589, -0.928343,
		0.767106, -0.523649, -0.370594,
		-0.573064, -0.818999, -0.028960,
		31.854834, 34.961208, 37.290447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479271, 35.235580, 36.721588>,  <32.255978, 35.534508, 37.310719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479271, 35.235580, 36.721588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116089, 35.077789, 36.778149>,  <31.898178, 34.983112, 36.812084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116089, 35.077789, 36.778149>,  <32.479271, 35.235580, 36.721588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116089, 35.077789, 36.778149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201127, 0.114184, -0.972888,
		0.367638, -0.911783, -0.183015,
		-0.907959, -0.394480, 0.141405,
		31.843700, 34.959446, 36.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327148, 34.790676, 36.166962>,  <32.479271, 35.235580, 36.721588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327148, 34.790676, 36.166962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973539, 34.883186, 36.329449>,  <31.761374, 34.938690, 36.426941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973539, 34.883186, 36.329449>,  <32.327148, 34.790676, 36.166962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973539, 34.883186, 36.329449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423546, -0.028677, -0.905420,
		-0.197751, -0.972466, 0.123306,
		-0.884027, 0.231274, 0.406214,
		31.708332, 34.952568, 36.451313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789948, 34.403332, 35.780323>,  <32.327148, 34.790676, 36.166962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789948, 34.403332, 35.780323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589157, 34.701241, 35.956200>,  <31.468683, 34.879986, 36.061726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589157, 34.701241, 35.956200>,  <31.789948, 34.403332, 35.780323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589157, 34.701241, 35.956200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445919, 0.212730, -0.869426,
		-0.741064, -0.632498, 0.225325,
		-0.501977, 0.744777, 0.439689,
		31.438564, 34.924675, 36.088108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029058, 34.337189, 35.578541>,  <31.789948, 34.403332, 35.780323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029058, 34.337189, 35.578541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077129, 34.719032, 35.687565>,  <31.105972, 34.948139, 35.752979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077129, 34.719032, 35.687565>,  <31.029058, 34.337189, 35.578541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077129, 34.719032, 35.687565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435738, 0.297410, -0.849517,
		-0.892014, -0.016670, 0.451700,
		0.120178, 0.954604, 0.272557,
		31.113182, 35.005413, 35.769333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379671, 34.585979, 35.258652>,  <31.029058, 34.337189, 35.578541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379671, 34.585979, 35.258652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643446, 34.875156, 35.341106>,  <30.801712, 35.048664, 35.390579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643446, 34.875156, 35.341106>,  <30.379671, 34.585979, 35.258652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643446, 34.875156, 35.341106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352680, 0.539672, -0.764441,
		-0.663895, 0.431402, 0.610849,
		0.659440, 0.722943, 0.206139,
		30.841278, 35.092041, 35.402946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940256, 35.180702, 35.333344>,  <30.379671, 34.585979, 35.258652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940256, 35.180702, 35.333344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300863, 35.326817, 35.240540>,  <30.517227, 35.414486, 35.184856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300863, 35.326817, 35.240540>,  <29.940256, 35.180702, 35.333344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300863, 35.326817, 35.240540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431155, 0.712361, -0.553757,
		-0.037003, 0.599256, 0.799702,
		0.901519, 0.365286, -0.232013,
		30.571320, 35.436401, 35.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940613, 35.841194, 35.335773>,  <29.940256, 35.180702, 35.333344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940613, 35.841194, 35.335773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260544, 35.774590, 35.105106>,  <30.452503, 35.734627, 34.966705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260544, 35.774590, 35.105106>,  <29.940613, 35.841194, 35.335773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260544, 35.774590, 35.105106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238669, 0.793308, -0.560088,
		0.550736, 0.585608, 0.594771,
		0.799829, -0.166507, -0.576670,
		30.500492, 35.724636, 34.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361320, 36.545444, 35.358692>,  <29.940613, 35.841194, 35.335773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361320, 36.545444, 35.358692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521778, 36.339756, 35.055466>,  <30.618053, 36.216343, 34.873531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521778, 36.339756, 35.055466>,  <30.361320, 36.545444, 35.358692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521778, 36.339756, 35.055466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056695, 0.839917, -0.539745,
		0.914259, 0.173537, 0.366082,
		0.401144, -0.514222, -0.758063,
		30.642120, 36.185490, 34.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922117, 36.860977, 35.122044>,  <30.361320, 36.545444, 35.358692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922117, 36.860977, 35.122044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854507, 36.645397, 34.791962>,  <30.813942, 36.516048, 34.593914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854507, 36.645397, 34.791962>,  <30.922117, 36.860977, 35.122044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854507, 36.645397, 34.791962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063024, 0.829625, -0.554752,
		0.983594, -0.145776, -0.106261,
		-0.169026, -0.538954, -0.825202,
		30.803799, 36.483711, 34.544399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349890, 37.140247, 34.617702>,  <30.922117, 36.860977, 35.122044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349890, 37.140247, 34.617702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093672, 36.932781, 34.391186>,  <30.939941, 36.808300, 34.255276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093672, 36.932781, 34.391186>,  <31.349890, 37.140247, 34.617702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093672, 36.932781, 34.391186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048195, 0.708833, -0.703728,
		0.766406, -0.478063, -0.429042,
		-0.640546, -0.518664, -0.566294,
		30.901508, 36.777184, 34.221298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614622, 37.021286, 33.928703>,  <31.349890, 37.140247, 34.617702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614622, 37.021286, 33.928703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223587, 36.986561, 33.851982>,  <30.988966, 36.965725, 33.805950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223587, 36.986561, 33.851982>,  <31.614622, 37.021286, 33.928703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223587, 36.986561, 33.851982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038120, 0.822979, -0.566791,
		0.207057, -0.561399, -0.801223,
		-0.977586, -0.086816, -0.191804,
		30.930311, 36.960518, 33.794441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517162, 37.096798, 33.155170>,  <31.614622, 37.021286, 33.928703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517162, 37.096798, 33.155170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.150494, 37.179604, 33.291908>,  <30.930492, 37.229286, 33.373951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.150494, 37.179604, 33.291908>,  <31.517162, 37.096798, 33.155170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150494, 37.179604, 33.291908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080120, 0.742818, -0.664682,
		-0.391524, -0.636684, -0.664335,
		-0.916673, 0.207013, 0.341842,
		30.875492, 37.241707, 33.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025454, 37.056561, 32.531445>,  <31.517162, 37.096798, 33.155170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025454, 37.056561, 32.531445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878830, 37.279366, 32.829536>,  <30.790855, 37.413048, 33.008392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878830, 37.279366, 32.829536>,  <31.025454, 37.056561, 32.531445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878830, 37.279366, 32.829536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138397, 0.759426, -0.635703,
		-0.920043, -0.336161, -0.201286,
		-0.366560, 0.557017, 0.745229,
		30.768862, 37.446472, 33.053104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594444, 37.390484, 32.190327>,  <31.025454, 37.056561, 32.531445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594444, 37.390484, 32.190327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565523, 37.593082, 32.534008>,  <30.548170, 37.714642, 32.740219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565523, 37.593082, 32.534008>,  <30.594444, 37.390484, 32.190327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565523, 37.593082, 32.534008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144244, 0.847094, -0.511494,
		-0.986897, -0.160919, 0.011810,
		-0.072305, 0.506495, 0.859206,
		30.543831, 37.745029, 32.791771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936859, 37.715191, 32.206665>,  <30.594444, 37.390484, 32.190327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936859, 37.715191, 32.206665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207111, 37.917702, 32.421028>,  <30.369263, 38.039207, 32.549648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207111, 37.917702, 32.421028>,  <29.936859, 37.715191, 32.206665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207111, 37.917702, 32.421028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107248, 0.786680, -0.607974,
		-0.729396, 0.353291, 0.585804,
		0.675632, 0.506280, 0.535912,
		30.409801, 38.069584, 32.581802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647358, 38.337681, 32.189785>,  <29.936859, 37.715191, 32.206665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647358, 38.337681, 32.189785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014210, 38.412071, 32.330803>,  <30.234322, 38.456703, 32.415413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014210, 38.412071, 32.330803>,  <29.647358, 38.337681, 32.189785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014210, 38.412071, 32.330803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006975, 0.891836, -0.452305,
		-0.398530, 0.412363, 0.819226,
		0.917129, 0.185971, 0.352547,
		30.289349, 38.467861, 32.436565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676985, 39.038528, 32.519032>,  <29.647358, 38.337681, 32.189785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676985, 39.038528, 32.519032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.049973, 38.942657, 32.410919>,  <30.273766, 38.885136, 32.346050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.049973, 38.942657, 32.410919>,  <29.676985, 39.038528, 32.519032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049973, 38.942657, 32.410919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074757, 0.860035, -0.504729,
		0.353425, 0.450439, 0.819875,
		0.932471, -0.239676, -0.270285,
		30.329714, 38.870754, 32.329834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040113, 39.629292, 32.509857>,  <29.676985, 39.038528, 32.519032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040113, 39.629292, 32.509857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270844, 39.385204, 32.292637>,  <30.409281, 39.238750, 32.162304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270844, 39.385204, 32.292637>,  <30.040113, 39.629292, 32.509857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270844, 39.385204, 32.292637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368704, 0.787721, -0.493512,
		0.728924, 0.084443, 0.679366,
		0.576825, -0.610218, -0.543054,
		30.443892, 39.202141, 32.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649727, 39.824593, 32.552956>,  <30.040113, 39.629292, 32.509857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649727, 39.824593, 32.552956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623957, 39.636692, 32.200779>,  <30.608496, 39.523952, 31.989473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623957, 39.636692, 32.200779>,  <30.649727, 39.824593, 32.552956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623957, 39.636692, 32.200779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291416, 0.834962, -0.466813,
		0.954425, -0.286648, 0.083103,
		-0.064423, -0.469756, -0.880443,
		30.604630, 39.495766, 31.936646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064970, 40.311569, 32.105766>,  <30.649727, 39.824593, 32.552956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064970, 40.311569, 32.105766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885490, 40.052826, 31.859110>,  <30.777803, 39.897579, 31.711115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885490, 40.052826, 31.859110>,  <31.064970, 40.311569, 32.105766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885490, 40.052826, 31.859110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051821, 0.707674, -0.704636,
		0.892181, -0.284212, -0.351052,
		-0.448696, -0.646855, -0.616645,
		30.750881, 39.858768, 31.674116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503809, 40.314224, 31.474678>,  <31.064970, 40.311569, 32.105766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503809, 40.314224, 31.474678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132090, 40.182869, 31.407074>,  <30.909058, 40.104057, 31.366512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132090, 40.182869, 31.407074>,  <31.503809, 40.314224, 31.474678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132090, 40.182869, 31.407074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133418, 0.725210, -0.675477,
		0.344384, -0.605172, -0.717751,
		-0.929300, -0.328385, -0.169010,
		30.853300, 40.084354, 31.356371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422108, 40.360855, 30.824112>,  <31.503809, 40.314224, 31.474678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422108, 40.360855, 30.824112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041050, 40.356956, 30.945683>,  <30.812414, 40.354618, 31.018625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041050, 40.356956, 30.945683>,  <31.422108, 40.360855, 30.824112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041050, 40.356956, 30.945683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220517, 0.710338, -0.668425,
		-0.209378, -0.703794, -0.678849,
		-0.952645, -0.009745, 0.303927,
		30.755257, 40.354034, 31.036861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886562, 39.855858, 30.416449>,  <31.422108, 40.360855, 30.824112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886562, 39.855858, 30.416449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247025, 40.003197, 30.325027>,  <32.463303, 40.091599, 30.270176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247025, 40.003197, 30.325027>,  <31.886562, 39.855858, 30.416449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247025, 40.003197, 30.325027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428268, -0.674908, 0.600904,
		0.067090, -0.639390, -0.765950,
		0.901157, 0.368347, -0.228551,
		32.517372, 40.113701, 30.256462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263142, 39.273674, 30.370958>,  <31.886562, 39.855858, 30.416449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263142, 39.273674, 30.370958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534210, 39.561069, 30.433607>,  <32.696854, 39.733505, 30.471197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534210, 39.561069, 30.433607>,  <32.263142, 39.273674, 30.370958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534210, 39.561069, 30.433607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456957, -0.578322, 0.675821,
		0.576147, -0.386418, -0.720233,
		0.677676, 0.718488, 0.156622,
		32.737514, 39.776615, 30.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861942, 38.979366, 30.133043>,  <32.263142, 39.273674, 30.370958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861942, 38.979366, 30.133043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934544, 39.268169, 30.400106>,  <32.978104, 39.441452, 30.560345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934544, 39.268169, 30.400106>,  <32.861942, 38.979366, 30.133043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934544, 39.268169, 30.400106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515243, -0.648105, 0.560789,
		0.837604, 0.242218, -0.489643,
		0.181507, 0.722004, 0.667656,
		32.988995, 39.484772, 30.600403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580509, 38.871357, 30.413183>,  <32.861942, 38.979366, 30.133043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580509, 38.871357, 30.413183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422691, 39.111603, 30.691347>,  <33.327999, 39.255753, 30.858246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422691, 39.111603, 30.691347>,  <33.580509, 38.871357, 30.413183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422691, 39.111603, 30.691347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519645, -0.478319, 0.707941,
		0.757829, 0.640680, -0.123390,
		-0.394543, 0.600617, 0.695410,
		33.304329, 39.291786, 30.899971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208282, 39.031193, 30.907881>,  <33.580509, 38.871357, 30.413183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208282, 39.031193, 30.907881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854263, 39.103722, 31.079374>,  <33.641853, 39.147240, 31.182270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854263, 39.103722, 31.079374>,  <34.208282, 39.031193, 30.907881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854263, 39.103722, 31.079374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349623, -0.349151, 0.869400,
		0.307338, 0.919356, 0.245619,
		-0.885046, 0.181326, 0.428735,
		33.588749, 39.158119, 31.207994>
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
