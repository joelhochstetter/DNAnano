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
	<24.203337, 35.010796, 35.032223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568863, 35.028385, 35.193722>,  <24.788177, 35.038937, 35.290619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568863, 35.028385, 35.193722>,  <24.203337, 35.010796, 35.032223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568863, 35.028385, 35.193722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291863, 0.762392, 0.577559,
		-0.282417, -0.645620, 0.709518,
		0.913814, 0.043970, 0.403745,
		24.843008, 35.041576, 35.314846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969505, 35.381985, 34.659157>,  <24.203337, 35.010796, 35.032223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969505, 35.381985, 34.659157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239799, 35.250179, 34.395401>,  <25.401976, 35.171097, 34.237148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239799, 35.250179, 34.395401>,  <24.969505, 35.381985, 34.659157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239799, 35.250179, 34.395401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071044, -0.861250, 0.503190,
		-0.733710, -0.386870, -0.558570,
		0.675738, -0.329513, -0.659393,
		25.442520, 35.151325, 34.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665733, 34.730686, 34.331108>,  <24.969505, 35.381985, 34.659157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665733, 34.730686, 34.331108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063646, 34.760204, 34.302933>,  <25.302395, 34.777916, 34.286026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063646, 34.760204, 34.302933>,  <24.665733, 34.730686, 34.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063646, 34.760204, 34.302933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094812, -0.923687, 0.371232,
		-0.037668, -0.375974, -0.925865,
		0.994782, 0.073800, -0.070440,
		25.362082, 34.782345, 34.281799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849520, 34.064220, 33.873322>,  <24.665733, 34.730686, 34.331108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849520, 34.064220, 33.873322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113060, 34.234829, 34.121193>,  <25.271185, 34.337193, 34.269917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113060, 34.234829, 34.121193>,  <24.849520, 34.064220, 33.873322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113060, 34.234829, 34.121193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081308, -0.859286, 0.504992,
		0.747866, -0.282330, -0.600821,
		0.658851, 0.426517, 0.619675,
		25.310715, 34.362785, 34.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590305, 33.521435, 34.306587>,  <24.849520, 34.064220, 33.873322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590305, 33.521435, 34.306587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429718, 33.399151, 33.961250>,  <24.333366, 33.325783, 33.754047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429718, 33.399151, 33.961250>,  <24.590305, 33.521435, 34.306587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429718, 33.399151, 33.961250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284008, -0.937735, 0.199981,
		-0.870726, -0.164911, 0.463293,
		-0.401467, -0.305708, -0.863346,
		24.309278, 33.307438, 33.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.117216, 32.888760, 34.402866>,  <24.590305, 33.521435, 34.306587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.117216, 32.888760, 34.402866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290552, 32.902824, 34.042648>,  <24.394554, 32.911263, 33.826519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290552, 32.902824, 34.042648>,  <24.117216, 32.888760, 34.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290552, 32.902824, 34.042648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212850, -0.974963, 0.064360,
		-0.875735, -0.219571, -0.429973,
		0.433339, 0.035158, -0.900545,
		24.420553, 32.913372, 33.772484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.877321, 32.349541, 33.959217>,  <24.117216, 32.888760, 34.402866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.877321, 32.349541, 33.959217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243008, 32.426949, 33.816807>,  <24.462420, 32.473392, 33.731361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243008, 32.426949, 33.816807>,  <23.877321, 32.349541, 33.959217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243008, 32.426949, 33.816807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204934, -0.978759, -0.005775,
		-0.349581, -0.067682, -0.934458,
		0.914218, 0.193521, -0.356026,
		24.517273, 32.485004, 33.709999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.936081, 31.961338, 33.302097>,  <23.877321, 32.349541, 33.959217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.936081, 31.961338, 33.302097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307457, 32.036068, 33.430531>,  <24.530283, 32.080906, 33.507591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307457, 32.036068, 33.430531>,  <23.936081, 31.961338, 33.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307457, 32.036068, 33.430531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203764, -0.978822, -0.019666,
		0.310607, 0.083684, -0.946848,
		0.928441, 0.186825, 0.321081,
		24.585989, 32.092117, 33.526855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325256, 31.681629, 32.873409>,  <23.936081, 31.961338, 33.302097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325256, 31.681629, 32.873409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531513, 31.709044, 33.215034>,  <24.655268, 31.725492, 33.420010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531513, 31.709044, 33.215034>,  <24.325256, 31.681629, 32.873409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531513, 31.709044, 33.215034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249588, -0.965581, -0.073202,
		0.819646, 0.250909, -0.515000,
		0.515641, 0.068538, 0.854059,
		24.686205, 31.729605, 33.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001657, 31.346966, 32.729996>,  <24.325256, 31.681629, 32.873409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001657, 31.346966, 32.729996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979393, 31.389841, 33.127068>,  <24.966034, 31.415565, 33.365311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979393, 31.389841, 33.127068>,  <25.001657, 31.346966, 32.729996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979393, 31.389841, 33.127068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392035, -0.912029, 0.120461,
		0.918265, 0.395871, 0.008744,
		-0.055662, 0.107188, 0.992679,
		24.962694, 31.421997, 33.424870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613361, 31.167446, 33.030998>,  <25.001657, 31.346966, 32.729996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613361, 31.167446, 33.030998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398308, 31.107149, 33.362835>,  <25.269276, 31.070971, 33.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398308, 31.107149, 33.362835>,  <25.613361, 31.167446, 33.030998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398308, 31.107149, 33.362835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500588, -0.848793, 0.170182,
		0.678500, 0.506780, 0.531800,
		-0.537633, -0.150744, 0.829595,
		25.237019, 31.061926, 33.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023663, 30.872478, 33.470757>,  <25.613361, 31.167446, 33.030998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023663, 30.872478, 33.470757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678217, 30.748907, 33.630123>,  <25.470949, 30.674765, 33.725742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678217, 30.748907, 33.630123>,  <26.023663, 30.872478, 33.470757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678217, 30.748907, 33.630123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385803, -0.913686, 0.127805,
		0.324546, 0.264085, 0.908256,
		-0.863612, -0.308929, 0.398418,
		25.419134, 30.656229, 33.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133574, 30.350288, 33.954479>,  <26.023663, 30.872478, 33.470757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133574, 30.350288, 33.954479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738201, 30.305868, 33.913151>,  <25.500978, 30.279215, 33.888351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738201, 30.305868, 33.913151>,  <26.133574, 30.350288, 33.954479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738201, 30.305868, 33.913151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108526, -0.993648, 0.029778,
		-0.105974, 0.018220, 0.994202,
		-0.988429, -0.111052, -0.103323,
		25.441673, 30.272552, 33.882153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863003, 29.838449, 34.522789>,  <26.133574, 30.350288, 33.954479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863003, 29.838449, 34.522789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626165, 29.858089, 34.201042>,  <25.484062, 29.869873, 34.007992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626165, 29.858089, 34.201042>,  <25.863003, 29.838449, 34.522789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626165, 29.858089, 34.201042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119483, -0.981761, -0.147882,
		-0.796961, -0.183669, 0.575429,
		-0.592096, 0.049102, -0.804370,
		25.448536, 29.872820, 33.959732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447153, 29.285173, 34.648140>,  <25.863003, 29.838449, 34.522789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447153, 29.285173, 34.648140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382202, 29.342289, 34.257603>,  <25.343231, 29.376558, 34.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382202, 29.342289, 34.257603>,  <25.447153, 29.285173, 34.648140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382202, 29.342289, 34.257603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039156, -0.987762, -0.150971,
		-0.985950, -0.062745, 0.154808,
		-0.162386, 0.142788, -0.976341,
		25.333488, 29.385126, 33.964699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855465, 28.738508, 34.352566>,  <25.447153, 29.285173, 34.648140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855465, 28.738508, 34.352566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056141, 28.869453, 34.032280>,  <25.176546, 28.948021, 33.840111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056141, 28.869453, 34.032280>,  <24.855465, 28.738508, 34.352566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056141, 28.869453, 34.032280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036936, -0.916678, -0.397917,
		-0.864259, 0.229206, -0.447796,
		0.501690, 0.327363, -0.800713,
		25.206648, 28.967663, 33.792065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409439, 28.571764, 33.655399>,  <24.855465, 28.738508, 34.352566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409439, 28.571764, 33.655399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790829, 28.620262, 33.544994>,  <25.019663, 28.649361, 33.478752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790829, 28.620262, 33.544994>,  <24.409439, 28.571764, 33.655399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790829, 28.620262, 33.544994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062653, -0.815874, -0.574825,
		-0.294887, 0.565375, -0.770320,
		0.953476, 0.121245, -0.276013,
		25.076872, 28.656635, 33.462189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.388702, 28.572727, 32.854736>,  <24.409439, 28.571764, 33.655399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.388702, 28.572727, 32.854736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774479, 28.515335, 32.943523>,  <25.005945, 28.480900, 32.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774479, 28.515335, 32.943523>,  <24.388702, 28.572727, 32.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774479, 28.515335, 32.943523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027180, -0.781535, -0.623269,
		0.262905, 0.607138, -0.749843,
		0.964439, -0.143479, 0.221971,
		25.063810, 28.472292, 33.010117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748577, 28.450695, 32.257595>,  <24.388702, 28.572727, 32.854736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748577, 28.450695, 32.257595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964861, 28.288029, 32.552147>,  <25.094631, 28.190430, 32.728878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964861, 28.288029, 32.552147>,  <24.748577, 28.450695, 32.257595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964861, 28.288029, 32.552147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107603, -0.834756, -0.540004,
		0.834299, 0.371223, -0.407602,
		0.540710, -0.406665, 0.736380,
		25.127073, 28.166029, 32.773060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369148, 28.337164, 31.981007>,  <24.748577, 28.450695, 32.257595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369148, 28.337164, 31.981007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352867, 28.097273, 32.300674>,  <25.343100, 27.953339, 32.492474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352867, 28.097273, 32.300674>,  <25.369148, 28.337164, 31.981007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352867, 28.097273, 32.300674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203931, -0.787982, -0.580944,
		0.978139, 0.139330, 0.154375,
		-0.040702, -0.599726, 0.799169,
		25.340656, 27.917355, 32.540424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990852, 27.973530, 31.917116>,  <25.369148, 28.337164, 31.981007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990852, 27.973530, 31.917116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 27.766928, 32.147732>,  <25.585665, 27.642967, 32.286102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 27.766928, 32.147732>,  <25.990852, 27.973530, 31.917116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737610, 27.766928, 32.147732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062006, -0.776268, -0.627346,
		0.771578, -0.361427, 0.523486,
		-0.633106, -0.516506, 0.576541,
		25.547678, 27.611977, 32.320694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275732, 27.330572, 32.140907>,  <25.990852, 27.973530, 31.917116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275732, 27.330572, 32.140907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884583, 27.255754, 32.178387>,  <25.649893, 27.210865, 32.200874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884583, 27.255754, 32.178387>,  <26.275732, 27.330572, 32.140907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884583, 27.255754, 32.178387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098208, -0.805919, -0.583824,
		0.184716, -0.561703, 0.806455,
		-0.977873, -0.187042, 0.093702,
		25.591221, 27.199642, 32.206497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173872, 26.653093, 32.281792>,  <26.275732, 27.330572, 32.140907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173872, 26.653093, 32.281792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799000, 26.705715, 32.152557>,  <25.574076, 26.737289, 32.075016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799000, 26.705715, 32.152557>,  <26.173872, 26.653093, 32.281792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799000, 26.705715, 32.152557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048789, -0.867632, -0.494807,
		-0.345416, -0.479486, 0.806710,
		-0.937180, 0.131556, -0.323088,
		25.517845, 26.745182, 32.055630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761194, 25.996168, 32.421085>,  <26.173872, 26.653093, 32.281792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761194, 25.996168, 32.421085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563967, 26.182978, 32.127480>,  <25.445631, 26.295063, 31.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563967, 26.182978, 32.127480>,  <25.761194, 25.996168, 32.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563967, 26.182978, 32.127480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063913, -0.860865, -0.504803,
		-0.867648, -0.201981, 0.454301,
		-0.493053, 0.467027, -0.734019,
		25.416046, 26.323084, 31.907276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302155, 25.535391, 32.077606>,  <25.761194, 25.996168, 32.421085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302155, 25.535391, 32.077606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415857, 25.813604, 31.813656>,  <25.484079, 25.980532, 31.655287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415857, 25.813604, 31.813656>,  <25.302155, 25.535391, 32.077606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415857, 25.813604, 31.813656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053376, -0.675716, -0.735227,
		-0.957262, 0.244213, -0.154952,
		0.284256, 0.695534, -0.659873,
		25.501135, 26.022264, 31.615694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741863, 25.520138, 31.553284>,  <25.302155, 25.535391, 32.077606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741863, 25.520138, 31.553284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119337, 25.625132, 31.472723>,  <25.345821, 25.688128, 31.424387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119337, 25.625132, 31.472723>,  <24.741863, 25.520138, 31.553284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119337, 25.625132, 31.472723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069475, -0.752391, -0.655042,
		-0.323472, 0.604160, -0.728255,
		0.943684, 0.262484, -0.201403,
		25.402443, 25.703876, 31.412302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786913, 25.566080, 30.812405>,  <24.741863, 25.520138, 31.553284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786913, 25.566080, 30.812405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110220, 25.471840, 31.028254>,  <25.304205, 25.415295, 31.157763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110220, 25.471840, 31.028254>,  <24.786913, 25.566080, 30.812405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110220, 25.471840, 31.028254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148862, -0.804922, -0.574405,
		0.569685, 0.544603, -0.615521,
		0.808269, -0.235602, 0.539623,
		25.352701, 25.401159, 31.190140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437826, 25.593712, 30.549711>,  <24.786913, 25.566080, 30.812405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437826, 25.593712, 30.549711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399734, 25.295034, 30.813038>,  <25.376879, 25.115828, 30.971033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399734, 25.295034, 30.813038>,  <25.437826, 25.593712, 30.549711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399734, 25.295034, 30.813038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108351, -0.665166, -0.738792,
		0.989541, 0.000973, 0.144249,
		-0.095230, -0.746695, 0.658315,
		25.371166, 25.071026, 31.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548306, 25.781157, 29.850080>,  <25.437826, 25.593712, 30.549711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548306, 25.781157, 29.850080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861979, 25.533218, 29.861752>,  <26.050182, 25.384457, 29.868753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861979, 25.533218, 29.861752>,  <25.548306, 25.781157, 29.850080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861979, 25.533218, 29.861752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565540, 0.694548, -0.444711,
		0.255386, 0.365236, 0.895199,
		0.784183, -0.619844, 0.029177,
		26.097233, 25.347265, 29.870504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169506, 26.034424, 30.164358>,  <25.548306, 25.781157, 29.850080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169506, 26.034424, 30.164358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284229, 25.769939, 29.887074>,  <26.353064, 25.611248, 29.720703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284229, 25.769939, 29.887074>,  <26.169506, 26.034424, 30.164358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284229, 25.769939, 29.887074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580476, 0.695593, -0.423318,
		0.762095, -0.280981, 0.583319,
		0.286808, -0.661211, -0.693210,
		26.370272, 25.571575, 29.679110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943748, 25.748798, 30.196592>,  <26.169506, 26.034424, 30.164358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943748, 25.748798, 30.196592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769012, 25.813288, 29.842604>,  <26.664171, 25.851982, 29.630211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769012, 25.813288, 29.842604>,  <26.943748, 25.748798, 30.196592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769012, 25.813288, 29.842604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695244, 0.684780, -0.218433,
		0.570795, -0.710692, -0.411229,
		-0.436840, 0.161224, -0.884973,
		26.637960, 25.861654, 29.577112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415272, 25.889797, 29.704985>,  <26.943748, 25.748798, 30.196592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415272, 25.889797, 29.704985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112782, 26.094957, 29.542477>,  <26.931288, 26.218054, 29.444973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112782, 26.094957, 29.542477>,  <27.415272, 25.889797, 29.704985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112782, 26.094957, 29.542477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619011, 0.761995, -0.190234,
		0.212003, -0.395345, -0.893732,
		-0.756228, 0.512900, -0.406268,
		26.885914, 26.248827, 29.420595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714134, 26.096054, 29.082432>,  <27.415272, 25.889797, 29.704985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714134, 26.096054, 29.082432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432787, 26.323343, 29.253263>,  <27.263979, 26.459717, 29.355762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432787, 26.323343, 29.253263>,  <27.714134, 26.096054, 29.082432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432787, 26.323343, 29.253263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641946, 0.765789, 0.038368,
		-0.305250, 0.301148, -0.903400,
		-0.703369, 0.568222, 0.427078,
		27.221777, 26.493811, 29.381388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539497, 26.768362, 28.680010>,  <27.714134, 26.096054, 29.082432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539497, 26.768362, 28.680010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479647, 26.827278, 29.071095>,  <27.443737, 26.862629, 29.305744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479647, 26.827278, 29.071095>,  <27.539497, 26.768362, 28.680010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479647, 26.827278, 29.071095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653544, 0.756759, -0.013990,
		-0.741952, 0.636884, -0.209492,
		-0.149625, 0.147292, 0.977710,
		27.434759, 26.871466, 29.364408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173923, 27.416729, 28.819654>,  <27.539497, 26.768362, 28.680010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173923, 27.416729, 28.819654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388212, 27.315067, 29.141748>,  <27.516787, 27.254070, 29.335005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388212, 27.315067, 29.141748>,  <27.173923, 27.416729, 28.819654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388212, 27.315067, 29.141748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420098, 0.907452, 0.006926,
		-0.732474, 0.334568, 0.592913,
		0.535723, -0.254154, 0.805237,
		27.548929, 27.238821, 29.383320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900225, 27.217916, 28.093451>,  <27.173923, 27.416729, 28.819654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900225, 27.217916, 28.093451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718716, 27.425001, 27.803329>,  <26.609810, 27.549252, 27.629257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718716, 27.425001, 27.803329>,  <26.900225, 27.217916, 28.093451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718716, 27.425001, 27.803329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245640, 0.855060, 0.456654,
		0.856593, 0.029054, -0.515175,
		-0.453773, 0.517714, -0.725301,
		26.582584, 27.580315, 27.585739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309187, 27.776108, 27.833834>,  <26.900225, 27.217916, 28.093451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309187, 27.776108, 27.833834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957596, 27.929125, 27.719954>,  <26.746641, 28.020935, 27.651625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957596, 27.929125, 27.719954>,  <27.309187, 27.776108, 27.833834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957596, 27.929125, 27.719954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308654, 0.911505, 0.271828,
		0.363492, 0.151058, -0.919269,
		-0.878980, 0.382543, -0.284701,
		26.693901, 28.043888, 27.634542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441141, 28.359898, 27.477882>,  <27.309187, 27.776108, 27.833834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441141, 28.359898, 27.477882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051624, 28.417166, 27.548567>,  <26.817913, 28.451527, 27.590977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051624, 28.417166, 27.548567>,  <27.441141, 28.359898, 27.477882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051624, 28.417166, 27.548567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177558, 0.964125, 0.197320,
		-0.142121, 0.223526, -0.964281,
		-0.973794, 0.143173, 0.176712,
		26.759485, 28.460117, 27.601580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342451, 29.068155, 27.178394>,  <27.441141, 28.359898, 27.477882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342451, 29.068155, 27.178394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050131, 28.999685, 27.442705>,  <26.874739, 28.958603, 27.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050131, 28.999685, 27.442705>,  <27.342451, 29.068155, 27.178394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050131, 28.999685, 27.442705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157654, 0.899543, 0.407391,
		-0.664133, 0.401897, -0.630402,
		-0.730803, -0.171176, 0.660777,
		26.830891, 28.948332, 27.640938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019289, 29.772108, 27.288908>,  <27.342451, 29.068155, 27.178394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019289, 29.772108, 27.288908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950182, 29.534348, 27.603064>,  <26.908718, 29.391691, 27.791557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950182, 29.534348, 27.603064>,  <27.019289, 29.772108, 27.288908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950182, 29.534348, 27.603064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269131, 0.738549, 0.618153,
		-0.947481, 0.318169, 0.032376,
		-0.172766, -0.594402, 0.785391,
		26.898352, 29.356028, 27.838680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849773, 30.318632, 27.866375>,  <27.019289, 29.772108, 27.288908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849773, 30.318632, 27.866375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870785, 29.960342, 28.042974>,  <26.883392, 29.745369, 28.148933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870785, 29.960342, 28.042974>,  <26.849773, 30.318632, 27.866375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870785, 29.960342, 28.042974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322310, 0.433657, 0.841462,
		-0.945176, 0.098098, 0.311480,
		0.052530, -0.895723, 0.441499,
		26.886543, 29.691626, 28.175425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414917, 30.267889, 28.455578>,  <26.849773, 30.318632, 27.866375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414917, 30.267889, 28.455578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730291, 30.025072, 28.495323>,  <26.919516, 29.879381, 28.519171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730291, 30.025072, 28.495323>,  <26.414917, 30.267889, 28.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730291, 30.025072, 28.495323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251596, 0.465652, 0.848450,
		-0.561313, -0.643947, 0.519865,
		0.788433, -0.607042, 0.099362,
		26.966822, 29.842960, 28.525131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451786, 30.045094, 29.131521>,  <26.414917, 30.267889, 28.455578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451786, 30.045094, 29.131521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822329, 29.928366, 29.036272>,  <27.044655, 29.858330, 28.979122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822329, 29.928366, 29.036272>,  <26.451786, 30.045094, 29.131521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822329, 29.928366, 29.036272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293681, 0.163787, 0.941767,
		-0.235823, -0.942346, 0.237427,
		0.926358, -0.291818, -0.238124,
		27.100237, 29.840820, 28.964834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657291, 29.616749, 29.712975>,  <26.451786, 30.045094, 29.131521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657291, 29.616749, 29.712975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995298, 29.745401, 29.542093>,  <27.198103, 29.822594, 29.439566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995298, 29.745401, 29.542093>,  <26.657291, 29.616749, 29.712975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995298, 29.745401, 29.542093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328744, 0.317629, 0.889404,
		0.421756, -0.891999, 0.162665,
		0.845014, 0.321636, -0.427202,
		27.248802, 29.841892, 29.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213818, 29.463428, 30.241999>,  <26.657291, 29.616749, 29.712975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213818, 29.463428, 30.241999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343243, 29.741690, 29.985445>,  <27.420898, 29.908648, 29.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343243, 29.741690, 29.985445>,  <27.213818, 29.463428, 30.241999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343243, 29.741690, 29.985445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599727, 0.373523, 0.707678,
		0.731871, -0.613633, -0.296344,
		0.323564, 0.695654, -0.641383,
		27.440311, 29.950386, 29.793030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812668, 29.536924, 30.483482>,  <27.213818, 29.463428, 30.241999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812668, 29.536924, 30.483482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769634, 29.853746, 30.243124>,  <27.743814, 30.043840, 30.098909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769634, 29.853746, 30.243124>,  <27.812668, 29.536924, 30.483482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769634, 29.853746, 30.243124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352714, 0.595495, 0.721788,
		0.929526, -0.134289, -0.343436,
		-0.107586, 0.792055, -0.600894,
		27.737358, 30.091364, 30.062857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435793, 29.961868, 30.438564>,  <27.812668, 29.536924, 30.483482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435793, 29.961868, 30.438564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140652, 30.216801, 30.349678>,  <27.963566, 30.369761, 30.296347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140652, 30.216801, 30.349678>,  <28.435793, 29.961868, 30.438564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140652, 30.216801, 30.349678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203214, 0.523720, 0.827298,
		0.643642, 0.565268, -0.515944,
		-0.737855, 0.637330, -0.222218,
		27.919296, 30.407999, 30.283012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641518, 30.657616, 30.706276>,  <28.435793, 29.961868, 30.438564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641518, 30.657616, 30.706276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245655, 30.660931, 30.648991>,  <28.008137, 30.662920, 30.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245655, 30.660931, 30.648991>,  <28.641518, 30.657616, 30.706276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245655, 30.660931, 30.648991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127880, 0.401403, 0.906930,
		0.065002, 0.915864, -0.396191,
		-0.989657, 0.008287, -0.143213,
		27.948757, 30.663416, 30.606028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465197, 31.360531, 30.869768>,  <28.641518, 30.657616, 30.706276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465197, 31.360531, 30.869768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130993, 31.141878, 30.892092>,  <27.930470, 31.010687, 30.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130993, 31.141878, 30.892092>,  <28.465197, 31.360531, 30.869768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130993, 31.141878, 30.892092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, 0.425696, 0.877744,
		-0.503563, 0.721093, -0.475867,
		-0.835510, -0.546633, 0.055811,
		27.880341, 30.977888, 30.908834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994408, 31.796673, 30.901672>,  <28.465197, 31.360531, 30.869768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994408, 31.796673, 30.901672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832815, 31.470716, 31.067924>,  <27.735861, 31.275143, 31.167677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832815, 31.470716, 31.067924>,  <27.994408, 31.796673, 30.901672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832815, 31.470716, 31.067924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334521, 0.554489, 0.761996,
		-0.851409, 0.168793, -0.496601,
		-0.403979, -0.814893, 0.415632,
		27.711622, 31.226248, 31.192614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310898, 31.996485, 31.111399>,  <27.994408, 31.796673, 30.901672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310898, 31.996485, 31.111399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383757, 31.669460, 31.329908>,  <27.427471, 31.473246, 31.461014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383757, 31.669460, 31.329908>,  <27.310898, 31.996485, 31.111399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383757, 31.669460, 31.329908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319845, 0.476091, 0.819168,
		-0.929797, -0.323931, -0.174775,
		0.182145, -0.817561, 0.546276,
		27.438400, 31.424192, 31.493792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825020, 32.072163, 31.571848>,  <27.310898, 31.996485, 31.111399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825020, 32.072163, 31.571848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043959, 31.788778, 31.750057>,  <27.175322, 31.618748, 31.856983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043959, 31.788778, 31.750057>,  <26.825020, 32.072163, 31.571848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043959, 31.788778, 31.750057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248520, 0.370745, 0.894866,
		-0.799154, -0.600526, 0.026860,
		0.547349, -0.708461, 0.445525,
		27.208164, 31.576241, 31.883715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460226, 31.702276, 32.119652>,  <26.825020, 32.072163, 31.571848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460226, 31.702276, 32.119652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833853, 31.613003, 32.231159>,  <27.058029, 31.559439, 32.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833853, 31.613003, 32.231159>,  <26.460226, 31.702276, 32.119652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833853, 31.613003, 32.231159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181335, 0.376070, 0.908674,
		-0.307638, -0.899311, 0.310803,
		0.934064, -0.223183, 0.278770,
		27.114073, 31.546047, 32.314789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253067, 31.684570, 32.817200>,  <26.460226, 31.702276, 32.119652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253067, 31.684570, 32.817200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652042, 31.679871, 32.788979>,  <26.891428, 31.677050, 32.772045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652042, 31.679871, 32.788979>,  <26.253067, 31.684570, 32.817200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652042, 31.679871, 32.788979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069075, 0.414192, 0.907565,
		0.018557, -0.910114, 0.413943,
		0.997439, -0.011751, -0.070552,
		26.951275, 31.676346, 32.767815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707890, 31.200899, 33.270313>,  <26.253067, 31.684570, 32.817200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707890, 31.200899, 33.270313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959421, 31.504538, 33.202965>,  <27.110340, 31.686720, 33.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959421, 31.504538, 33.202965>,  <26.707890, 31.200899, 33.270313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959421, 31.504538, 33.202965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029283, 0.193270, 0.980709,
		0.776993, -0.621627, 0.099305,
		0.628828, 0.759096, -0.168373,
		27.148069, 31.732265, 33.152454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158146, 31.196842, 33.887096>,  <26.707890, 31.200899, 33.270313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158146, 31.196842, 33.887096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214861, 31.554340, 33.716866>,  <27.248890, 31.768839, 33.614727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214861, 31.554340, 33.716866>,  <27.158146, 31.196842, 33.887096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214861, 31.554340, 33.716866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018231, 0.432205, 0.901591,
		0.989729, -0.120076, 0.077576,
		0.141788, 0.893745, -0.425576,
		27.257397, 31.822464, 33.589191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742210, 31.447540, 34.192623>,  <27.158146, 31.196842, 33.887096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742210, 31.447540, 34.192623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548738, 31.769094, 34.054165>,  <27.432655, 31.962027, 33.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548738, 31.769094, 34.054165>,  <27.742210, 31.447540, 34.192623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548738, 31.769094, 34.054165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104452, 0.339646, 0.934736,
		0.868990, 0.488268, -0.080312,
		-0.483679, 0.803888, -0.346149,
		27.403635, 32.010262, 33.950321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089172, 32.141064, 34.391800>,  <27.742210, 31.447540, 34.192623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089172, 32.141064, 34.391800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696486, 32.192924, 34.336056>,  <27.460873, 32.224041, 34.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696486, 32.192924, 34.336056>,  <28.089172, 32.141064, 34.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696486, 32.192924, 34.336056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067997, 0.444962, 0.892964,
		0.177785, 0.886115, -0.428011,
		-0.981717, 0.129652, -0.139360,
		27.401970, 32.231819, 34.294247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458588, 32.862125, 34.344864>,  <28.089172, 32.141064, 34.391800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458588, 32.862125, 34.344864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785803, 33.023331, 34.180721>,  <28.982132, 33.120056, 34.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785803, 33.023331, 34.180721>,  <28.458588, 32.862125, 34.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785803, 33.023331, 34.180721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556222, 0.372714, -0.742766,
		-0.146399, 0.835861, 0.529060,
		0.818037, 0.403015, -0.410359,
		29.031214, 33.144234, 34.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857388, 33.296486, 34.776043>,  <28.458588, 32.862125, 34.344864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857388, 33.296486, 34.776043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128967, 33.016171, 34.863609>,  <29.291916, 32.847980, 34.916149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128967, 33.016171, 34.863609>,  <28.857388, 33.296486, 34.776043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128967, 33.016171, 34.863609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593122, 0.699281, 0.399013,
		-0.432706, -0.141068, 0.890430,
		0.678949, -0.700789, 0.218913,
		29.332651, 32.805935, 34.929283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040951, 33.355034, 35.546082>,  <28.857388, 33.296486, 34.776043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040951, 33.355034, 35.546082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324177, 33.174324, 35.328995>,  <29.494112, 33.065899, 35.198742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324177, 33.174324, 35.328995>,  <29.040951, 33.355034, 35.546082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324177, 33.174324, 35.328995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641860, 0.732163, 0.227931,
		0.294385, -0.509740, 0.808396,
		0.708063, -0.451777, -0.542719,
		29.536596, 33.038792, 35.166180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734861, 33.227718, 35.918091>,  <29.040951, 33.355034, 35.546082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734861, 33.227718, 35.918091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823736, 33.262272, 35.529625>,  <29.877062, 33.283005, 35.296543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823736, 33.262272, 35.529625>,  <29.734861, 33.227718, 35.918091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823736, 33.262272, 35.529625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423043, 0.888882, 0.175853,
		0.878446, -0.449919, 0.160957,
		0.222191, 0.086385, -0.971169,
		29.890392, 33.288189, 35.238274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470388, 33.241081, 35.830315>,  <29.734861, 33.227718, 35.918091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470388, 33.241081, 35.830315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277617, 33.438057, 35.540421>,  <30.161953, 33.556244, 35.366486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277617, 33.438057, 35.540421>,  <30.470388, 33.241081, 35.830315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277617, 33.438057, 35.540421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604970, 0.785342, 0.131333,
		0.633840, -0.375150, -0.676395,
		-0.481932, 0.492443, -0.724736,
		30.133038, 33.585789, 35.322998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092573, 32.923599, 36.224144>,  <30.470388, 33.241081, 35.830315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092573, 32.923599, 36.224144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235294, 32.555569, 36.288834>,  <31.320927, 32.334751, 36.327648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235294, 32.555569, 36.288834>,  <31.092573, 32.923599, 36.224144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235294, 32.555569, 36.288834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540567, 0.344542, 0.767514,
		-0.761892, -0.186426, 0.620296,
		0.356803, -0.920074, 0.161728,
		31.342335, 32.279545, 36.337353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080317, 32.731518, 36.994347>,  <31.092573, 32.923599, 36.224144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080317, 32.731518, 36.994347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359226, 32.496033, 36.830776>,  <31.526573, 32.354740, 36.732632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359226, 32.496033, 36.830776>,  <31.080317, 32.731518, 36.994347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359226, 32.496033, 36.830776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608308, 0.184223, 0.772025,
		-0.379166, -0.787071, 0.486572,
		0.697276, -0.588711, -0.408931,
		31.568409, 32.319420, 36.708096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258085, 32.294415, 37.498615>,  <31.080317, 32.731518, 36.994347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258085, 32.294415, 37.498615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558788, 32.267029, 37.236267>,  <31.739210, 32.250595, 37.078857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558788, 32.267029, 37.236267>,  <31.258085, 32.294415, 37.498615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558788, 32.267029, 37.236267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651261, -0.079047, 0.754726,
		-0.103518, -0.994517, -0.014835,
		0.751760, -0.068466, -0.655873,
		31.784317, 32.246490, 37.039505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730837, 31.800858, 37.814941>,  <31.258085, 32.294415, 37.498615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730837, 31.800858, 37.814941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944672, 32.012066, 37.550999>,  <32.072971, 32.138790, 37.392632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944672, 32.012066, 37.550999>,  <31.730837, 31.800858, 37.814941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944672, 32.012066, 37.550999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782959, -0.015544, 0.621879,
		0.318107, -0.849090, -0.421727,
		0.534587, 0.528020, -0.659858,
		32.105049, 32.170471, 37.353043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274586, 31.489019, 37.693378>,  <31.730837, 31.800858, 37.814941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274586, 31.489019, 37.693378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405373, 31.843418, 37.561867>,  <32.483845, 32.056057, 37.482960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405373, 31.843418, 37.561867>,  <32.274586, 31.489019, 37.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405373, 31.843418, 37.561867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841182, -0.114302, 0.528533,
		0.430700, -0.449378, -0.782660,
		0.326971, 0.885999, -0.328779,
		32.503464, 32.109219, 37.463234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046360, 31.439604, 37.548054>,  <32.274586, 31.489019, 37.693378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046360, 31.439604, 37.548054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999760, 31.836254, 37.570362>,  <32.971798, 32.074245, 37.583748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999760, 31.836254, 37.570362>,  <33.046360, 31.439604, 37.548054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999760, 31.836254, 37.570362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893213, 0.080055, 0.442450,
		0.434279, 0.101361, -0.895057,
		-0.116501, 0.991623, 0.055771,
		32.964809, 32.133739, 37.587093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685482, 31.805492, 37.348564>,  <33.046360, 31.439604, 37.548054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685482, 31.805492, 37.348564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501011, 32.072311, 37.582611>,  <33.390327, 32.232403, 37.723038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501011, 32.072311, 37.582611>,  <33.685482, 31.805492, 37.348564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501011, 32.072311, 37.582611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847907, 0.136991, 0.512139,
		0.261466, 0.732313, -0.628772,
		-0.461182, 0.667047, 0.585115,
		33.362656, 32.272427, 37.758144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142471, 32.527443, 37.384338>,  <33.685482, 31.805492, 37.348564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142471, 32.527443, 37.384338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914955, 32.526245, 37.713329>,  <33.778446, 32.525528, 37.910725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914955, 32.526245, 37.713329>,  <34.142471, 32.527443, 37.384338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914955, 32.526245, 37.713329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803150, 0.213505, 0.556206,
		-0.177268, 0.976937, -0.119036,
		-0.568793, -0.002993, 0.822475,
		33.744316, 32.525349, 37.960072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413048, 33.111252, 37.679398>,  <34.142471, 32.527443, 37.384338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413048, 33.111252, 37.679398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215374, 32.899517, 37.955250>,  <34.096771, 32.772476, 38.120762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215374, 32.899517, 37.955250>,  <34.413048, 33.111252, 37.679398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215374, 32.899517, 37.955250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762645, 0.116826, 0.636180,
		-0.417320, 0.840330, 0.345962,
		-0.494183, -0.529336, 0.689627,
		34.067120, 32.740715, 38.162136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683098, 33.244904, 38.291206>,  <34.413048, 33.111252, 37.679398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683098, 33.244904, 38.291206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512627, 32.924320, 38.459038>,  <34.410343, 32.731972, 38.559734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512627, 32.924320, 38.459038>,  <34.683098, 33.244904, 38.291206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512627, 32.924320, 38.459038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655141, 0.046397, 0.754080,
		-0.623828, 0.596254, 0.505293,
		-0.426179, -0.801454, 0.419574,
		34.384773, 32.683884, 38.584911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607712, 33.375813, 38.930756>,  <34.683098, 33.244904, 38.291206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607712, 33.375813, 38.930756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611446, 32.975922, 38.922279>,  <34.613686, 32.735985, 38.917194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611446, 32.975922, 38.922279>,  <34.607712, 33.375813, 38.930756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611446, 32.975922, 38.922279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558822, -0.012356, 0.829195,
		-0.829235, -0.019580, 0.558557,
		0.009334, -0.999732, -0.021188,
		34.614246, 32.676003, 38.915924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552891, 33.149830, 39.622082>,  <34.607712, 33.375813, 38.930756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552891, 33.149830, 39.622082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691460, 32.832130, 39.422421>,  <34.774601, 32.641510, 39.302624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691460, 32.832130, 39.422421>,  <34.552891, 33.149830, 39.622082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691460, 32.832130, 39.422421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512752, -0.285260, 0.809760,
		-0.785543, -0.536462, 0.308433,
		0.346422, -0.794251, -0.499156,
		34.795387, 32.593857, 39.272675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499454, 32.658710, 40.125668>,  <34.552891, 33.149830, 39.622082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499454, 32.658710, 40.125668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764828, 32.521183, 39.859844>,  <34.924053, 32.438667, 39.700348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764828, 32.521183, 39.859844>,  <34.499454, 32.658710, 40.125668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764828, 32.521183, 39.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632182, -0.217536, 0.743656,
		-0.400249, -0.913491, 0.073034,
		0.663436, -0.343818, -0.664562,
		34.963860, 32.418037, 39.660477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514713, 31.934748, 40.270851>,  <34.499454, 32.658710, 40.125668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514713, 31.934748, 40.270851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848110, 32.014740, 40.064827>,  <35.048149, 32.062737, 39.941212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848110, 32.014740, 40.064827>,  <34.514713, 31.934748, 40.270851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848110, 32.014740, 40.064827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538991, -0.499345, 0.678339,
		-0.121539, -0.843008, -0.523990,
		0.833497, 0.199981, -0.515064,
		35.098160, 32.074734, 39.910309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740818, 31.255007, 40.067593>,  <34.514713, 31.934748, 40.270851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740818, 31.255007, 40.067593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050106, 31.508261, 40.053345>,  <35.235680, 31.660213, 40.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050106, 31.508261, 40.053345>,  <34.740818, 31.255007, 40.067593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050106, 31.508261, 40.053345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504758, -0.580496, 0.638940,
		0.383857, -0.512022, -0.768431,
		0.773223, 0.633133, -0.035620,
		35.282074, 31.698200, 40.042660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333836, 30.769930, 40.115520>,  <34.740818, 31.255007, 40.067593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333836, 30.769930, 40.115520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478317, 31.132048, 40.204937>,  <35.565006, 31.349319, 40.258587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478317, 31.132048, 40.204937>,  <35.333836, 30.769930, 40.115520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478317, 31.132048, 40.204937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657421, -0.417240, 0.627461,
		0.661307, -0.079684, -0.745871,
		0.361206, 0.905296, 0.223538,
		35.586678, 31.403637, 40.271999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035892, 30.618540, 40.243607>,  <35.333836, 30.769930, 40.115520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035892, 30.618540, 40.243607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972099, 30.979214, 40.404369>,  <35.933823, 31.195618, 40.500828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972099, 30.979214, 40.404369>,  <36.035892, 30.618540, 40.243607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972099, 30.979214, 40.404369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565567, -0.250233, 0.785823,
		0.809134, 0.352634, -0.470054,
		-0.159485, 0.901683, 0.401910,
		35.924255, 31.249720, 40.524940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680214, 30.795927, 40.568039>,  <36.035892, 30.618540, 40.243607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680214, 30.795927, 40.568039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393452, 31.013151, 40.742916>,  <36.221394, 31.143486, 40.847843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393452, 31.013151, 40.742916>,  <36.680214, 30.795927, 40.568039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393452, 31.013151, 40.742916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455954, -0.109177, 0.883281,
		0.527407, 0.832566, -0.169341,
		-0.716902, 0.543061, 0.437193,
		36.178383, 31.176069, 40.874073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951187, 31.164860, 41.073128>,  <36.680214, 30.795927, 40.568039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951187, 31.164860, 41.073128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572083, 31.221966, 41.187233>,  <36.344620, 31.256229, 41.255695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572083, 31.221966, 41.187233>,  <36.951187, 31.164860, 41.073128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572083, 31.221966, 41.187233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275774, -0.082744, 0.957654,
		0.160325, 0.986292, 0.039050,
		-0.947757, 0.142767, 0.285260,
		36.287754, 31.264795, 41.272812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978558, 31.667683, 41.545769>,  <36.951187, 31.164860, 41.073128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978558, 31.667683, 41.545769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648338, 31.452896, 41.615208>,  <36.450207, 31.324024, 41.656872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648338, 31.452896, 41.615208>,  <36.978558, 31.667683, 41.545769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648338, 31.452896, 41.615208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187427, 0.029265, 0.981842,
		-0.532298, 0.843095, 0.076482,
		-0.825548, -0.536968, 0.173596,
		36.400673, 31.291805, 41.667286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648636, 32.028259, 42.151833>,  <36.978558, 31.667683, 41.545769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648636, 32.028259, 42.151833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484692, 31.663418, 42.148285>,  <36.386326, 31.444511, 42.146156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484692, 31.663418, 42.148285>,  <36.648636, 32.028259, 42.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484692, 31.663418, 42.148285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179862, -0.090342, 0.979535,
		-0.894241, 0.399876, 0.201080,
		-0.409858, -0.912106, -0.008865,
		36.361732, 31.389786, 42.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236023, 32.044743, 42.746075>,  <36.648636, 32.028259, 42.151833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236023, 32.044743, 42.746075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280621, 31.657562, 42.656063>,  <36.307381, 31.425253, 42.602055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280621, 31.657562, 42.656063>,  <36.236023, 32.044743, 42.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280621, 31.657562, 42.656063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219266, -0.196899, 0.955590,
		-0.969274, -0.155883, 0.190286,
		0.111493, -0.967952, -0.225029,
		36.314068, 31.367176, 42.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799599, 31.619228, 43.164425>,  <36.236023, 32.044743, 42.746075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799599, 31.619228, 43.164425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107925, 31.396521, 43.040588>,  <36.292923, 31.262896, 42.966286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107925, 31.396521, 43.040588>,  <35.799599, 31.619228, 43.164425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107925, 31.396521, 43.040588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169348, -0.289407, 0.942107,
		-0.614137, -0.778620, -0.128791,
		0.770816, -0.556772, -0.309593,
		36.339169, 31.229488, 42.947712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883846, 31.095894, 43.737286>,  <35.799599, 31.619228, 43.164425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883846, 31.095894, 43.737286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214699, 30.994431, 43.536682>,  <36.413212, 30.933552, 43.416321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214699, 30.994431, 43.536682>,  <35.883846, 31.095894, 43.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214699, 30.994431, 43.536682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297422, -0.559588, 0.773564,
		-0.476857, -0.788999, -0.387411,
		0.827132, -0.253655, -0.501509,
		36.462837, 30.918333, 43.386230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025921, 30.294659, 43.698360>,  <35.883846, 31.095894, 43.737286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025921, 30.294659, 43.698360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378670, 30.478167, 43.654835>,  <36.590317, 30.588270, 43.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378670, 30.478167, 43.654835>,  <36.025921, 30.294659, 43.698360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378670, 30.478167, 43.654835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432229, -0.694397, 0.575319,
		0.188379, -0.554387, -0.810659,
		0.881868, 0.458768, -0.108813,
		36.643230, 30.615797, 43.622192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544659, 29.790960, 43.641003>,  <36.025921, 30.294659, 43.698360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544659, 29.790960, 43.641003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779293, 30.094486, 43.754219>,  <36.920074, 30.276602, 43.822151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779293, 30.094486, 43.754219>,  <36.544659, 29.790960, 43.641003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779293, 30.094486, 43.754219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534156, -0.625181, 0.569057,
		0.608765, -0.182610, -0.772049,
		0.586585, 0.758817, 0.283046,
		36.955269, 30.322132, 43.839134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187588, 29.570883, 43.829109>,  <36.544659, 29.790960, 43.641003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187588, 29.570883, 43.829109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206921, 29.940224, 43.981472>,  <37.218521, 30.161827, 44.072887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206921, 29.940224, 43.981472>,  <37.187588, 29.570883, 43.829109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206921, 29.940224, 43.981472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432809, -0.363050, 0.825150,
		0.900189, 0.124976, -0.417181,
		0.048333, 0.923350, 0.380904,
		37.221420, 30.217228, 44.095745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833382, 29.619978, 44.198135>,  <37.187588, 29.570883, 43.829109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833382, 29.619978, 44.198135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631378, 29.925837, 44.358276>,  <37.510174, 30.109352, 44.454361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631378, 29.925837, 44.358276>,  <37.833382, 29.619978, 44.198135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631378, 29.925837, 44.358276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378182, -0.220914, 0.898986,
		0.775849, 0.605402, -0.177611,
		-0.505011, 0.764647, 0.400348,
		37.479874, 30.155231, 44.478382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297005, 30.014313, 44.503178>,  <37.833382, 29.619978, 44.198135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297005, 30.014313, 44.503178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955891, 30.115797, 44.685776>,  <37.751221, 30.176687, 44.795334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955891, 30.115797, 44.685776>,  <38.297005, 30.014313, 44.503178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955891, 30.115797, 44.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432352, -0.147356, 0.889583,
		0.292964, 0.955990, 0.015971,
		-0.852786, 0.253710, 0.456495,
		37.700054, 30.191910, 44.822723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547817, 30.358171, 45.063244>,  <38.297005, 30.014313, 44.503178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547817, 30.358171, 45.063244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166985, 30.300774, 45.171276>,  <37.938484, 30.266335, 45.236095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166985, 30.300774, 45.171276>,  <38.547817, 30.358171, 45.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166985, 30.300774, 45.171276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292706, -0.171602, 0.940679,
		-0.088636, 0.974660, 0.205382,
		-0.952086, -0.143495, 0.270079,
		37.881359, 30.257725, 45.252300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395977, 30.877455, 45.675323>,  <38.547817, 30.358171, 45.063244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395977, 30.877455, 45.675323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137596, 30.572241, 45.666176>,  <37.982567, 30.389112, 45.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137596, 30.572241, 45.666176>,  <38.395977, 30.877455, 45.675323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137596, 30.572241, 45.666176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186493, -0.186780, 0.964538,
		-0.740247, 0.618781, 0.262952,
		-0.645952, -0.763035, -0.022865,
		37.943810, 30.343330, 45.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086952, 30.806971, 46.358448>,  <38.395977, 30.877455, 45.675323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086952, 30.806971, 46.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078266, 30.452065, 46.174149>,  <38.073055, 30.239120, 46.063568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078266, 30.452065, 46.174149>,  <38.086952, 30.806971, 46.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078266, 30.452065, 46.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286878, -0.447006, 0.847283,
		-0.957721, -0.113781, 0.264242,
		-0.021713, -0.887265, -0.460748,
		38.071751, 30.185884, 46.035923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682007, 30.436312, 46.877594>,  <38.086952, 30.806971, 46.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682007, 30.436312, 46.877594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866325, 30.191765, 46.620255>,  <37.976917, 30.045036, 46.465851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866325, 30.191765, 46.620255>,  <37.682007, 30.436312, 46.877594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866325, 30.191765, 46.620255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275493, -0.590550, 0.758521,
		-0.843662, -0.526764, -0.103699,
		0.460801, -0.611367, -0.643345,
		38.004566, 30.008354, 46.427250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339188, 29.651243, 46.925087>,  <37.682007, 30.436312, 46.877594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339188, 29.651243, 46.925087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717739, 29.704517, 46.807350>,  <37.944870, 29.736483, 46.736710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717739, 29.704517, 46.807350>,  <37.339188, 29.651243, 46.925087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717739, 29.704517, 46.807350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319906, -0.513548, 0.796196,
		-0.045117, -0.847662, -0.528616,
		0.946374, 0.133186, -0.294342,
		38.001652, 29.744473, 46.719048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750183, 29.270569, 47.345856>,  <37.339188, 29.651243, 46.925087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750183, 29.270569, 47.345856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085857, 29.385523, 47.161171>,  <38.287262, 29.454494, 47.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085857, 29.385523, 47.161171>,  <37.750183, 29.270569, 47.345856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085857, 29.385523, 47.161171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543822, -0.451465, 0.707415,
		-0.005146, -0.844742, -0.535150,
		0.839185, 0.287386, -0.461712,
		38.337612, 29.471739, 47.022655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206432, 28.663811, 47.315067>,  <37.750183, 29.270569, 47.345856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206432, 28.663811, 47.315067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438366, 28.989008, 47.293774>,  <38.577526, 29.184126, 47.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438366, 28.989008, 47.293774>,  <38.206432, 28.663811, 47.315067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438366, 28.989008, 47.293774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503995, -0.306581, 0.807464,
		0.640141, -0.495026, -0.587511,
		0.579835, 0.812993, -0.053236,
		38.612316, 29.232906, 47.277802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922771, 28.407803, 47.224010>,  <38.206432, 28.663811, 47.315067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922771, 28.407803, 47.224010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952393, 28.777443, 47.373974>,  <38.970165, 28.999228, 47.463951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952393, 28.777443, 47.373974>,  <38.922771, 28.407803, 47.224010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952393, 28.777443, 47.373974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639849, -0.332384, 0.692902,
		0.764924, 0.188576, -0.615897,
		0.074050, 0.924099, 0.374909,
		38.974609, 29.054672, 47.486446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613113, 28.401880, 47.449924>,  <38.922771, 28.407803, 47.224010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613113, 28.401880, 47.449924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437786, 28.713543, 47.629166>,  <39.332592, 28.900539, 47.736710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437786, 28.713543, 47.629166>,  <39.613113, 28.401880, 47.449924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437786, 28.713543, 47.629166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451454, -0.240252, 0.859342,
		0.777218, 0.578961, -0.246447,
		-0.438316, 0.779155, 0.448103,
		39.306290, 28.947290, 47.763596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172684, 28.688431, 47.831959>,  <39.613113, 28.401880, 47.449924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172684, 28.688431, 47.831959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831623, 28.818689, 47.995392>,  <39.626987, 28.896845, 48.093452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831623, 28.818689, 47.995392>,  <40.172684, 28.688431, 47.831959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831623, 28.818689, 47.995392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275315, -0.384602, 0.881069,
		0.444060, 0.863734, 0.238275,
		-0.852650, 0.325647, 0.408585,
		39.575829, 28.916384, 48.117966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282459, 29.020258, 48.480984>,  <40.172684, 28.688431, 47.831959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282459, 29.020258, 48.480984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905487, 28.886507, 48.482670>,  <39.679302, 28.806255, 48.483681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905487, 28.886507, 48.482670>,  <40.282459, 29.020258, 48.480984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905487, 28.886507, 48.482670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155059, -0.425785, 0.891439,
		-0.296283, 0.840773, 0.453120,
		-0.942430, -0.334378, 0.004216,
		39.622757, 28.786194, 48.483936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996105, 29.175102, 49.128670>,  <40.282459, 29.020258, 48.480984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996105, 29.175102, 49.128670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726562, 28.898901, 49.023510>,  <39.564835, 28.733179, 48.960415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726562, 28.898901, 49.023510>,  <39.996105, 29.175102, 49.128670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726562, 28.898901, 49.023510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190650, -0.506265, 0.841040,
		-0.713837, 0.516623, 0.472797,
		-0.673861, -0.690504, -0.262897,
		39.524403, 28.691750, 48.944641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687866, 28.955130, 49.757744>,  <39.996105, 29.175102, 49.128670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687866, 28.955130, 49.757744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594311, 28.655336, 49.510010>,  <39.538177, 28.475460, 49.361370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594311, 28.655336, 49.510010>,  <39.687866, 28.955130, 49.757744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594311, 28.655336, 49.510010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092136, -0.651221, 0.753274,
		-0.967888, 0.119118, 0.221366,
		-0.233887, -0.749481, -0.619334,
		39.524143, 28.430492, 49.324211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058018, 28.545174, 49.902836>,  <39.687866, 28.955130, 49.757744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058018, 28.545174, 49.902836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293804, 28.276138, 49.723881>,  <39.435276, 28.114717, 49.616508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293804, 28.276138, 49.723881>,  <39.058018, 28.545174, 49.902836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293804, 28.276138, 49.723881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088950, -0.604512, 0.791614,
		-0.802880, -0.426836, -0.416167,
		0.589468, -0.672589, -0.447384,
		39.470646, 28.074362, 49.589664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304802, 28.845263, 50.607544>,  <39.058018, 28.545174, 49.902836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304802, 28.845263, 50.607544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392044, 28.467663, 50.508514>,  <39.444389, 28.241102, 50.449097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392044, 28.467663, 50.508514>,  <39.304802, 28.845263, 50.607544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392044, 28.467663, 50.508514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967543, 0.242338, -0.071639,
		0.127624, -0.223913, 0.966217,
		0.218110, -0.944000, -0.247573,
		39.457478, 28.184464, 50.434242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037998, 28.560822, 50.889091>,  <39.304802, 28.845263, 50.607544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037998, 28.560822, 50.889091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946140, 28.289167, 50.610226>,  <39.891026, 28.126175, 50.442905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946140, 28.289167, 50.610226>,  <40.037998, 28.560822, 50.889091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946140, 28.289167, 50.610226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950646, -0.002958, -0.310265,
		0.208650, -0.734006, 0.646298,
		-0.229648, -0.679137, -0.697162,
		39.877247, 28.085426, 50.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638577, 28.163479, 50.721436>,  <40.037998, 28.560822, 50.889091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638577, 28.163479, 50.721436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396999, 28.102100, 50.408588>,  <40.252052, 28.065273, 50.220879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396999, 28.102100, 50.408588>,  <40.638577, 28.163479, 50.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396999, 28.102100, 50.408588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788720, -0.256388, -0.558736,
		-0.114790, -0.954316, 0.275868,
		-0.603941, -0.153445, -0.782119,
		40.215816, 28.056067, 50.173954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698956, 27.505777, 50.397137>,  <40.638577, 28.163479, 50.721436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698956, 27.505777, 50.397137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551376, 27.751190, 50.117867>,  <40.462830, 27.898438, 49.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551376, 27.751190, 50.117867>,  <40.698956, 27.505777, 50.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551376, 27.751190, 50.117867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729072, -0.274867, -0.626819,
		-0.576479, -0.740289, -0.345896,
		-0.368952, 0.613532, -0.698179,
		40.440689, 27.935249, 49.908413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552753, 27.110037, 49.824245>,  <40.698956, 27.505777, 50.397137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552753, 27.110037, 49.824245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539722, 27.479395, 49.671261>,  <40.531902, 27.701010, 49.579472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539722, 27.479395, 49.671261>,  <40.552753, 27.110037, 49.824245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539722, 27.479395, 49.671261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634349, -0.276606, -0.721866,
		-0.772360, -0.266132, -0.576745,
		-0.032580, 0.923398, -0.382460,
		40.529949, 27.756414, 49.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298149, 26.991240, 49.129185>,  <40.552753, 27.110037, 49.824245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298149, 26.991240, 49.129185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537174, 27.311302, 49.149841>,  <40.680588, 27.503340, 49.162235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537174, 27.311302, 49.149841>,  <40.298149, 26.991240, 49.129185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537174, 27.311302, 49.149841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487283, -0.311251, -0.815891,
		-0.636769, 0.512708, -0.575895,
		0.597562, 0.800158, 0.051639,
		40.716442, 27.551350, 49.165333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365791, 27.301596, 48.539234>,  <40.298149, 26.991240, 49.129185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365791, 27.301596, 48.539234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722794, 27.316160, 48.719059>,  <40.936996, 27.324900, 48.826954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722794, 27.316160, 48.719059>,  <40.365791, 27.301596, 48.539234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722794, 27.316160, 48.719059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429356, -0.373900, -0.822102,
		0.138158, 0.926754, -0.349341,
		0.892505, 0.036412, 0.449565,
		40.990543, 27.327084, 48.853928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832577, 26.729494, 48.530827>,  <40.365791, 27.301596, 48.539234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832577, 26.729494, 48.530827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878384, 26.429173, 48.791035>,  <40.905869, 26.248980, 48.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878384, 26.429173, 48.791035>,  <40.832577, 26.729494, 48.530827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878384, 26.429173, 48.791035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741388, -0.500453, -0.447091,
		0.661233, -0.431088, -0.613949,
		0.114517, -0.750806, 0.650520,
		40.912739, 26.203930, 48.986191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183849, 26.037636, 48.408928>,  <40.832577, 26.729494, 48.530827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183849, 26.037636, 48.408928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858505, 26.080835, 48.637589>,  <40.663300, 26.106756, 48.774784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858505, 26.080835, 48.637589>,  <41.183849, 26.037636, 48.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858505, 26.080835, 48.637589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563712, -0.389199, -0.728528,
		0.143806, -0.914800, 0.377439,
		-0.813356, 0.108000, 0.571653,
		40.614498, 26.113235, 48.809086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840221, 25.344374, 48.332802>,  <41.183849, 26.037636, 48.408928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840221, 25.344374, 48.332802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579704, 25.628428, 48.439785>,  <40.423393, 25.798859, 48.503975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579704, 25.628428, 48.439785>,  <40.840221, 25.344374, 48.332802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579704, 25.628428, 48.439785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665332, -0.364905, -0.651289,
		-0.364905, -0.602126, 0.710133,
		0.651289, -0.710133, -0.267458,
		40.384319, 25.841467, 48.520023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177490, 25.032515, 48.448738>,  <40.840221, 25.344374, 48.332802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177490, 25.032515, 48.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088009, 25.411036, 48.355385>,  <40.034321, 25.638149, 48.299374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088009, 25.411036, 48.355385>,  <40.177490, 25.032515, 48.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088009, 25.411036, 48.355385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717455, -0.321953, -0.617742,
		-0.659709, 0.029249, 0.750952,
		-0.223703, 0.946304, -0.233380,
		40.020897, 25.694927, 48.285370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350113, 25.098190, 48.367176>,  <40.177490, 25.032515, 48.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350113, 25.098190, 48.367176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498886, 25.418966, 48.180176>,  <39.588150, 25.611433, 48.067978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498886, 25.418966, 48.180176>,  <39.350113, 25.098190, 48.367176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498886, 25.418966, 48.180176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726093, -0.062428, -0.684757,
		-0.578320, 0.594132, 0.559065,
		0.371935, 0.801941, -0.467498,
		39.610466, 25.659548, 48.039925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741196, 25.440895, 48.158138>,  <39.350113, 25.098190, 48.367176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741196, 25.440895, 48.158138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043694, 25.593058, 47.945202>,  <39.225193, 25.684355, 47.817440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043694, 25.593058, 47.945202>,  <38.741196, 25.440895, 48.158138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043694, 25.593058, 47.945202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585666, 0.030842, -0.809965,
		-0.291696, 0.924306, 0.246115,
		0.756246, 0.380405, -0.532338,
		39.270569, 25.707180, 47.785500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476654, 25.986595, 47.728207>,  <38.741196, 25.440895, 48.158138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476654, 25.986595, 47.728207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819431, 25.879349, 47.552135>,  <39.025097, 25.815001, 47.446491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819431, 25.879349, 47.552135>,  <38.476654, 25.986595, 47.728207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819431, 25.879349, 47.552135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444119, 0.049253, -0.894613,
		0.261540, 0.962127, -0.076868,
		0.856945, -0.268115, -0.440181,
		39.076515, 25.798914, 47.420082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587910, 26.469833, 47.177982>,  <38.476654, 25.986595, 47.728207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587910, 26.469833, 47.177982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814087, 26.154575, 47.080734>,  <38.949791, 25.965422, 47.022385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814087, 26.154575, 47.080734>,  <38.587910, 26.469833, 47.177982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814087, 26.154575, 47.080734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240519, 0.124389, -0.962641,
		0.788941, 0.602791, -0.119229,
		0.565441, -0.788144, -0.243118,
		38.983719, 25.918133, 47.007797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876541, 26.661554, 46.611206>,  <38.587910, 26.469833, 47.177982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876541, 26.661554, 46.611206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961464, 26.271727, 46.582535>,  <39.012417, 26.037830, 46.565331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961464, 26.271727, 46.582535>,  <38.876541, 26.661554, 46.611206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961464, 26.271727, 46.582535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060136, 0.086245, -0.994457,
		0.975350, 0.206822, 0.076917,
		0.212309, -0.974570, -0.071682,
		39.025158, 25.979355, 46.561031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373661, 26.637894, 46.041515>,  <38.876541, 26.661554, 46.611206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373661, 26.637894, 46.041515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255268, 26.257517, 46.077522>,  <39.184231, 26.029291, 46.099125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255268, 26.257517, 46.077522>,  <39.373661, 26.637894, 46.041515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255268, 26.257517, 46.077522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202579, -0.154592, -0.966987,
		0.933464, -0.267979, 0.238398,
		-0.295986, -0.950941, 0.090019,
		39.166473, 25.972235, 46.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811779, 26.275860, 45.599384>,  <39.373661, 26.637894, 46.041515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811779, 26.275860, 45.599384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495117, 26.034760, 45.639343>,  <39.305119, 25.890100, 45.663319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495117, 26.034760, 45.639343>,  <39.811779, 26.275860, 45.599384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495117, 26.034760, 45.639343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011051, -0.149345, -0.988723,
		0.610871, -0.783829, 0.111568,
		-0.791653, -0.602750, 0.099893,
		39.257622, 25.853935, 45.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974697, 25.687984, 45.133831>,  <39.811779, 26.275860, 45.599384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974697, 25.687984, 45.133831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579845, 25.720728, 45.188797>,  <39.342934, 25.740374, 45.221775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579845, 25.720728, 45.188797>,  <39.974697, 25.687984, 45.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579845, 25.720728, 45.188797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151274, -0.198686, -0.968318,
		-0.051961, -0.976639, 0.208511,
		-0.987125, 0.081857, 0.137416,
		39.283707, 25.745285, 45.230022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680069, 25.152554, 44.687744>,  <39.974697, 25.687984, 45.133831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680069, 25.152554, 44.687744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374352, 25.398479, 44.765572>,  <39.190922, 25.546036, 44.812267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374352, 25.398479, 44.765572>,  <39.680069, 25.152554, 44.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374352, 25.398479, 44.765572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164516, 0.105841, -0.980679,
		-0.623530, -0.781537, 0.020254,
		-0.764293, 0.614815, 0.194571,
		39.145065, 25.582924, 44.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072075, 24.982117, 44.227623>,  <39.680069, 25.152554, 44.687744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072075, 24.982117, 44.227623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017208, 25.357567, 44.354218>,  <38.984287, 25.582836, 44.430176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017208, 25.357567, 44.354218>,  <39.072075, 24.982117, 44.227623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017208, 25.357567, 44.354218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148014, 0.296501, -0.943493,
		-0.979426, -0.176264, 0.098259,
		-0.137170, 0.938626, 0.316491,
		38.976055, 25.639154, 44.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461483, 25.189196, 43.945332>,  <39.072075, 24.982117, 44.227623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461483, 25.189196, 43.945332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606495, 25.551189, 44.034393>,  <38.693501, 25.768387, 44.087830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606495, 25.551189, 44.034393>,  <38.461483, 25.189196, 43.945332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606495, 25.551189, 44.034393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308178, 0.341870, -0.887779,
		-0.879545, 0.253229, 0.402834,
		0.362528, 0.904986, 0.222651,
		38.715252, 25.822685, 44.101189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927521, 25.738615, 43.946194>,  <38.461483, 25.189196, 43.945332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927521, 25.738615, 43.946194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286892, 25.900204, 43.877327>,  <38.502514, 25.997158, 43.836006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286892, 25.900204, 43.877327>,  <37.927521, 25.738615, 43.946194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286892, 25.900204, 43.877327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361604, 0.458136, -0.812006,
		-0.249153, 0.791781, 0.557678,
		0.898424, 0.403973, -0.172165,
		38.556419, 26.021395, 43.825676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804806, 26.343111, 43.989185>,  <37.927521, 25.738615, 43.946194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804806, 26.343111, 43.989185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147198, 26.358644, 43.782963>,  <38.352631, 26.367966, 43.659229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147198, 26.358644, 43.782963>,  <37.804806, 26.343111, 43.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147198, 26.358644, 43.782963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440276, 0.577505, -0.687492,
		0.271036, 0.815463, 0.511430,
		0.855977, 0.038835, -0.515553,
		38.403992, 26.370295, 43.628296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883476, 27.067041, 43.882515>,  <37.804806, 26.343111, 43.989185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883476, 27.067041, 43.882515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084721, 26.836145, 43.625244>,  <38.205467, 26.697607, 43.470882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084721, 26.836145, 43.625244>,  <37.883476, 27.067041, 43.882515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084721, 26.836145, 43.625244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464706, 0.446780, -0.764484,
		0.728649, 0.683507, -0.043467,
		0.503110, -0.577239, -0.643176,
		38.235653, 26.662973, 43.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847202, 27.417688, 43.195389>,  <37.883476, 27.067041, 43.882515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847202, 27.417688, 43.195389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988937, 27.060255, 43.085152>,  <38.073978, 26.845795, 43.019009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988937, 27.060255, 43.085152>,  <37.847202, 27.417688, 43.195389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988937, 27.060255, 43.085152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306489, 0.167457, -0.937029,
		0.883464, 0.416491, -0.214537,
		0.354338, -0.893585, -0.275592,
		38.095238, 26.792179, 43.002476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357327, 27.614933, 42.699074>,  <37.847202, 27.417688, 43.195389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357327, 27.614933, 42.699074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226360, 27.238504, 42.665169>,  <38.147781, 27.012648, 42.644825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226360, 27.238504, 42.665169>,  <38.357327, 27.614933, 42.699074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226360, 27.238504, 42.665169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376306, 0.212154, -0.901878,
		0.866712, -0.263397, -0.423594,
		-0.327419, -0.941070, -0.084758,
		38.128136, 26.956182, 42.639740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537628, 27.381014, 42.030464>,  <38.357327, 27.614933, 42.699074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537628, 27.381014, 42.030464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225815, 27.169310, 42.164455>,  <38.038727, 27.042288, 42.244850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225815, 27.169310, 42.164455>,  <38.537628, 27.381014, 42.030464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225815, 27.169310, 42.164455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536425, 0.288015, -0.793281,
		0.323376, -0.798079, -0.508427,
		-0.779535, -0.529261, 0.334972,
		37.991955, 27.010532, 42.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281948, 26.891260, 41.412270>,  <38.537628, 27.381014, 42.030464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281948, 26.891260, 41.412270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001095, 26.947664, 41.691444>,  <37.832581, 26.981506, 41.858952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001095, 26.947664, 41.691444>,  <38.281948, 26.891260, 41.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001095, 26.947664, 41.691444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675641, 0.177459, -0.715554,
		-0.224755, -0.973974, -0.029329,
		-0.702135, 0.141008, 0.697941,
		37.790455, 26.989967, 41.900826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729015, 26.589108, 41.165337>,  <38.281948, 26.891260, 41.412270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729015, 26.589108, 41.165337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550140, 26.813297, 41.444160>,  <37.442814, 26.947811, 41.611454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550140, 26.813297, 41.444160>,  <37.729015, 26.589108, 41.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550140, 26.813297, 41.444160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782948, 0.131501, -0.608029,
		-0.432448, -0.817666, 0.380016,
		-0.447192, 0.560473, 0.697057,
		37.415981, 26.981440, 41.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056313, 26.338919, 41.149475>,  <37.729015, 26.589108, 41.165337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056313, 26.338919, 41.149475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057407, 26.704975, 41.310722>,  <37.058064, 26.924610, 41.407471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057407, 26.704975, 41.310722>,  <37.056313, 26.338919, 41.149475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057407, 26.704975, 41.310722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761112, 0.263379, -0.592739,
		-0.648614, -0.305195, 0.697249,
		0.002740, 0.915143, 0.403119,
		37.058228, 26.979519, 41.431660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320499, 26.536104, 41.196815>,  <37.056313, 26.338919, 41.149475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320499, 26.536104, 41.196815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502502, 26.887606, 41.254459>,  <36.611702, 27.098507, 41.289047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502502, 26.887606, 41.254459>,  <36.320499, 26.536104, 41.196815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502502, 26.887606, 41.254459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796449, 0.473973, -0.375526,
		-0.398298, 0.056089, 0.915540,
		0.455004, 0.878751, 0.144111,
		36.639004, 27.151232, 41.297691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921024, 27.050892, 41.550682>,  <36.320499, 26.536104, 41.196815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921024, 27.050892, 41.550682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188869, 27.261644, 41.341293>,  <36.349575, 27.388096, 41.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188869, 27.261644, 41.341293>,  <35.921024, 27.050892, 41.550682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188869, 27.261644, 41.341293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742093, 0.445860, -0.500508,
		-0.030314, 0.723608, 0.689546,
		0.669612, 0.526879, -0.523468,
		36.389751, 27.419708, 41.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572510, 27.695257, 41.487381>,  <35.921024, 27.050892, 41.550682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572510, 27.695257, 41.487381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861076, 27.693575, 41.210388>,  <36.034218, 27.692566, 41.044193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861076, 27.693575, 41.210388>,  <35.572510, 27.695257, 41.487381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861076, 27.693575, 41.210388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637447, 0.386692, -0.666431,
		0.270581, 0.922199, 0.276286,
		0.721420, -0.004205, -0.692485,
		36.077503, 27.692314, 41.002644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474522, 28.363115, 41.127995>,  <35.572510, 27.695257, 41.487381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474522, 28.363115, 41.127995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 28.113300, 40.883270>,  <35.785191, 27.963411, 40.736435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 28.113300, 40.883270>,  <35.474522, 28.363115, 41.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668690, 28.113300, 40.883270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583391, 0.289818, -0.758723,
		0.651166, 0.725228, -0.223666,
		0.485425, -0.624539, -0.611812,
		35.814316, 27.925938, 40.699726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534897, 28.832693, 40.568607>,  <35.474522, 28.363115, 41.127995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534897, 28.832693, 40.568607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612179, 28.465027, 40.431313>,  <35.658546, 28.244427, 40.348938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612179, 28.465027, 40.431313>,  <35.534897, 28.832693, 40.568607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612179, 28.465027, 40.431313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476819, 0.217776, -0.851597,
		0.857505, 0.328193, -0.396199,
		0.193205, -0.919164, -0.343233,
		35.670139, 28.189278, 40.328342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598507, 29.001543, 39.954327>,  <35.534897, 28.832693, 40.568607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598507, 29.001543, 39.954327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545235, 28.605291, 39.942196>,  <35.513271, 28.367540, 39.934917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545235, 28.605291, 39.942196>,  <35.598507, 29.001543, 39.954327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545235, 28.605291, 39.942196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549827, 0.099314, -0.829353,
		0.824592, -0.093779, -0.557901,
		-0.133183, -0.990627, -0.030331,
		35.505280, 28.308104, 39.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761459, 28.748737, 39.193314>,  <35.598507, 29.001543, 39.954327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761459, 28.748737, 39.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539532, 28.467085, 39.370571>,  <35.406376, 28.298094, 39.476925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539532, 28.467085, 39.370571>,  <35.761459, 28.748737, 39.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539532, 28.467085, 39.370571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633628, 0.012445, -0.773538,
		0.539159, -0.709959, -0.453063,
		-0.554818, -0.704133, 0.443140,
		35.373085, 28.255846, 39.503513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635643, 28.201706, 38.729702>,  <35.761459, 28.748737, 39.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635643, 28.201706, 38.729702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353798, 28.156353, 39.009892>,  <35.184692, 28.129141, 39.178005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353798, 28.156353, 39.009892>,  <35.635643, 28.201706, 38.729702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353798, 28.156353, 39.009892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703574, -0.016672, -0.710426,
		0.092231, -0.993411, -0.068029,
		-0.704611, -0.113387, 0.700477,
		35.142414, 28.122337, 39.220036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134876, 27.764353, 38.494446>,  <35.635643, 28.201706, 38.729702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134876, 27.764353, 38.494446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940929, 27.947348, 38.792603>,  <34.824562, 28.057144, 38.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940929, 27.947348, 38.792603>,  <35.134876, 27.764353, 38.494446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940929, 27.947348, 38.792603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866673, -0.136938, -0.479715,
		-0.117386, -0.878614, 0.462880,
		-0.484870, 0.457477, 0.745396,
		34.795467, 28.084595, 39.016220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508980, 27.507717, 38.448830>,  <35.134876, 27.764353, 38.494446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508980, 27.507717, 38.448830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439846, 27.829756, 38.675789>,  <34.398365, 28.022980, 38.811966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439846, 27.829756, 38.675789>,  <34.508980, 27.507717, 38.448830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439846, 27.829756, 38.675789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784144, 0.236128, -0.573901,
		-0.596026, -0.544113, 0.590503,
		-0.172833, 0.805099, 0.567401,
		34.387997, 28.071285, 38.846008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783897, 27.509895, 38.603447>,  <34.508980, 27.507717, 38.448830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783897, 27.509895, 38.603447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929008, 27.878325, 38.660042>,  <34.016075, 28.099382, 38.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929008, 27.878325, 38.660042>,  <33.783897, 27.509895, 38.603447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929008, 27.878325, 38.660042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741222, 0.377231, -0.555235,
		-0.564787, 0.096549, 0.819569,
		0.362774, 0.921073, 0.141491,
		34.037842, 28.154646, 38.702488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222500, 27.952976, 38.768635>,  <33.783897, 27.509895, 38.603447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222500, 27.952976, 38.768635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490959, 28.239017, 38.690468>,  <33.652035, 28.410643, 38.643566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490959, 28.239017, 38.690468>,  <33.222500, 27.952976, 38.768635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490959, 28.239017, 38.690468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685009, 0.497446, -0.532269,
		-0.283417, 0.491095, 0.823712,
		0.671146, 0.715104, -0.195420,
		33.692303, 28.453548, 38.631844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910072, 28.551422, 38.918716>,  <33.222500, 27.952976, 38.768635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910072, 28.551422, 38.918716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211445, 28.656099, 38.677433>,  <33.392269, 28.718904, 38.532661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211445, 28.656099, 38.677433>,  <32.910072, 28.551422, 38.918716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211445, 28.656099, 38.677433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626515, 0.564141, -0.537795,
		0.199560, 0.783111, 0.588993,
		0.753428, 0.261691, -0.603211,
		33.437473, 28.734606, 38.496471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919781, 29.246332, 38.869564>,  <32.910072, 28.551422, 38.918716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919781, 29.246332, 38.869564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127403, 29.124557, 38.550091>,  <33.251976, 29.051493, 38.358406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127403, 29.124557, 38.550091>,  <32.919781, 29.246332, 38.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127403, 29.124557, 38.550091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634260, 0.489192, -0.598669,
		0.572966, 0.817319, 0.060829,
		0.519061, -0.304436, -0.798683,
		33.283123, 29.033226, 38.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809048, 29.842308, 38.453426>,  <32.919781, 29.246332, 38.869564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809048, 29.842308, 38.453426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933655, 29.543812, 38.218113>,  <33.008419, 29.364714, 38.076923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933655, 29.543812, 38.218113>,  <32.809048, 29.842308, 38.453426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933655, 29.543812, 38.218113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594904, 0.329597, -0.733114,
		0.740977, 0.578350, -0.341268,
		0.311516, -0.746242, -0.588286,
		33.027111, 29.319939, 38.041626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139050, 30.186014, 37.879284>,  <32.809048, 29.842308, 38.453426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139050, 30.186014, 37.879284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023369, 29.815020, 37.784519>,  <32.953960, 29.592422, 37.727661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023369, 29.815020, 37.784519>,  <33.139050, 30.186014, 37.879284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023369, 29.815020, 37.784519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575787, 0.366253, -0.730978,
		0.764743, -0.074991, -0.639957,
		-0.289203, -0.927489, -0.236911,
		32.936607, 29.536774, 37.713448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329018, 29.988764, 37.156181>,  <33.139050, 30.186014, 37.879284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329018, 29.988764, 37.156181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055103, 29.700430, 37.199001>,  <32.890755, 29.527430, 37.224693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055103, 29.700430, 37.199001>,  <33.329018, 29.988764, 37.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055103, 29.700430, 37.199001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327719, 0.173405, -0.928725,
		0.650894, -0.671064, -0.354977,
		-0.684789, -0.720835, 0.107052,
		32.849667, 29.484179, 37.231117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258827, 29.739059, 36.391483>,  <33.329018, 29.988764, 37.156181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258827, 29.739059, 36.391483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932896, 29.628105, 36.595093>,  <32.737335, 29.561533, 36.717258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932896, 29.628105, 36.595093>,  <33.258827, 29.739059, 36.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932896, 29.628105, 36.595093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570575, 0.228572, -0.788796,
		0.102449, -0.933174, -0.344516,
		-0.814830, -0.277383, 0.509029,
		32.688446, 29.544889, 36.747803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849854, 29.266243, 36.483200>,  <33.258827, 29.739059, 36.391483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849854, 29.266243, 36.483200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048412, 29.524006, 36.250538>,  <34.167549, 29.678663, 36.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048412, 29.524006, 36.250538>,  <33.849854, 29.266243, 36.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048412, 29.524006, 36.250538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855737, -0.475898, 0.203066,
		-0.145953, -0.598548, -0.787679,
		0.496400, 0.644408, -0.581658,
		34.197330, 29.717329, 36.076042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357216, 28.859638, 36.084110>,  <33.849854, 29.266243, 36.483200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357216, 28.859638, 36.084110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466747, 29.243782, 36.105000>,  <34.532467, 29.474268, 36.117531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466747, 29.243782, 36.105000>,  <34.357216, 28.859638, 36.084110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466747, 29.243782, 36.105000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960774, -0.275620, 0.030785,
		0.043957, 0.041742, -0.998161,
		0.273828, 0.960360, 0.052220,
		34.548897, 29.531891, 36.120667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856815, 28.855940, 35.710606>,  <34.357216, 28.859638, 36.084110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856815, 28.855940, 35.710606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910759, 29.179337, 35.939747>,  <34.943127, 29.373375, 36.077232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910759, 29.179337, 35.939747>,  <34.856815, 28.855940, 35.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910759, 29.179337, 35.939747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958106, -0.253827, 0.132683,
		0.252678, 0.530957, -0.808850,
		0.134859, 0.808490, 0.572849,
		34.951218, 29.421885, 36.111603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479046, 29.141281, 35.494862>,  <34.856815, 28.855940, 35.710606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479046, 29.141281, 35.494862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389812, 29.269520, 35.863091>,  <35.336273, 29.346464, 36.084026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389812, 29.269520, 35.863091>,  <35.479046, 29.141281, 35.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389812, 29.269520, 35.863091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942204, -0.171251, 0.287968,
		0.249970, 0.931606, -0.263864,
		-0.223086, 0.320597, 0.920570,
		35.322887, 29.365700, 36.139263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139313, 29.486666, 35.700489>,  <35.479046, 29.141281, 35.494862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139313, 29.486666, 35.700489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918072, 29.464388, 36.032990>,  <35.785328, 29.451021, 36.232491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918072, 29.464388, 36.032990>,  <36.139313, 29.486666, 35.700489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918072, 29.464388, 36.032990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833107, -0.040805, 0.551605,
		0.003197, 0.997614, 0.068969,
		-0.553103, -0.055695, 0.831249,
		35.752140, 29.447680, 36.282364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502106, 29.972488, 36.177784>,  <36.139313, 29.486666, 35.700489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502106, 29.972488, 36.177784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276382, 29.727297, 36.398987>,  <36.140949, 29.580181, 36.531708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276382, 29.727297, 36.398987>,  <36.502106, 29.972488, 36.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276382, 29.727297, 36.398987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807127, -0.268856, 0.525607,
		-0.173508, 0.742948, 0.646469,
		-0.564306, -0.612980, 0.553005,
		36.107090, 29.543404, 36.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713558, 30.099117, 36.835709>,  <36.502106, 29.972488, 36.177784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713558, 30.099117, 36.835709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542583, 29.737860, 36.851841>,  <36.439999, 29.521105, 36.861519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542583, 29.737860, 36.851841>,  <36.713558, 30.099117, 36.835709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542583, 29.737860, 36.851841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725551, -0.316089, 0.611280,
		-0.539328, 0.290544, 0.790386,
		-0.427436, -0.903146, 0.040329,
		36.414352, 29.466915, 36.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820953, 29.932234, 37.530251>,  <36.713558, 30.099117, 36.835709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820953, 29.932234, 37.530251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 29.572754, 37.369137>,  <36.709908, 29.357067, 37.272469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 29.572754, 37.369137>,  <36.820953, 29.932234, 37.530251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751549, 29.572754, 37.369137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622983, -0.416918, 0.661869,
		-0.762749, -0.136088, 0.632213,
		-0.173509, -0.898698, -0.402785,
		36.699497, 29.303144, 37.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555748, 29.439363, 38.047558>,  <36.820953, 29.932234, 37.530251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555748, 29.439363, 38.047558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716499, 29.208124, 37.763500>,  <36.812950, 29.069380, 37.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716499, 29.208124, 37.763500>,  <36.555748, 29.439363, 38.047558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716499, 29.208124, 37.763500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707287, -0.296590, 0.641701,
		-0.581586, -0.760156, 0.289689,
		0.401874, -0.578098, -0.710141,
		36.837063, 29.034695, 37.550457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792130, 28.979204, 38.452168>,  <36.555748, 29.439363, 38.047558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792130, 28.979204, 38.452168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958942, 28.886620, 38.100597>,  <37.059029, 28.831068, 37.889656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958942, 28.886620, 38.100597>,  <36.792130, 28.979204, 38.452168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958942, 28.886620, 38.100597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696505, -0.539886, 0.472656,
		-0.583922, -0.809288, -0.063933,
		0.417032, -0.231465, -0.878925,
		37.084053, 28.817181, 37.836922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959927, 28.149050, 38.428715>,  <36.792130, 28.979204, 38.452168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959927, 28.149050, 38.428715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194801, 28.324190, 38.156391>,  <37.335728, 28.429274, 37.992996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194801, 28.324190, 38.156391>,  <36.959927, 28.149050, 38.428715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194801, 28.324190, 38.156391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803476, -0.417277, 0.424624,
		-0.098162, -0.796345, -0.596824,
		0.587189, 0.437852, -0.680805,
		37.370956, 28.455545, 37.952148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290188, 27.594086, 38.101948>,  <36.959927, 28.149050, 38.428715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290188, 27.594086, 38.101948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513744, 27.920353, 38.042183>,  <37.647881, 28.116114, 38.006325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513744, 27.920353, 38.042183>,  <37.290188, 27.594086, 38.101948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513744, 27.920353, 38.042183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803833, -0.488644, 0.339233,
		0.203692, -0.309697, -0.928761,
		0.558893, 0.815668, -0.149412,
		37.681412, 28.165052, 37.997360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893806, 27.358879, 37.833889>,  <37.290188, 27.594086, 38.101948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893806, 27.358879, 37.833889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016464, 27.717422, 37.961956>,  <38.090057, 27.932549, 38.038795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016464, 27.717422, 37.961956>,  <37.893806, 27.358879, 37.833889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016464, 27.717422, 37.961956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783379, -0.428729, 0.450009,
		0.540636, 0.112821, -0.833657,
		0.306642, 0.896361, 0.320168,
		38.108456, 27.986330, 38.058006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652828, 27.520443, 37.633625>,  <37.893806, 27.358879, 37.833889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652828, 27.520443, 37.633625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567471, 27.751467, 37.948811>,  <38.516254, 27.890081, 38.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567471, 27.751467, 37.948811>,  <38.652828, 27.520443, 37.633625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567471, 27.751467, 37.948811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771870, -0.394753, 0.498383,
		0.598897, 0.714561, -0.361560,
		-0.213398, 0.577558, 0.787965,
		38.503452, 27.924734, 38.185200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347694, 27.495049, 38.012691>,  <38.652828, 27.520443, 37.633625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347694, 27.495049, 38.012691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092953, 27.625095, 38.292324>,  <38.940105, 27.703123, 38.460102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092953, 27.625095, 38.292324>,  <39.347694, 27.495049, 38.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092953, 27.625095, 38.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563561, -0.422464, 0.709876,
		0.526130, 0.846062, 0.085825,
		-0.636857, 0.325119, 0.699078,
		38.901897, 27.722631, 38.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748096, 27.727959, 38.484524>,  <39.347694, 27.495049, 38.012691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748096, 27.727959, 38.484524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411808, 27.701771, 38.699520>,  <39.210033, 27.686058, 38.828518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411808, 27.701771, 38.699520>,  <39.748096, 27.727959, 38.484524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411808, 27.701771, 38.699520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540588, -0.157986, 0.826320,
		0.030819, 0.985269, 0.168213,
		-0.840722, -0.065467, 0.537494,
		39.159592, 27.682131, 38.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787403, 28.129501, 39.116573>,  <39.748096, 27.727959, 38.484524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787403, 28.129501, 39.116573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477066, 27.892160, 39.202370>,  <39.290863, 27.749756, 39.253849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477066, 27.892160, 39.202370>,  <39.787403, 28.129501, 39.116573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477066, 27.892160, 39.202370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396107, -0.193458, 0.897593,
		-0.491094, 0.781349, 0.385123,
		-0.775839, -0.593353, 0.214492,
		39.244316, 27.714155, 39.266716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639286, 28.300119, 39.847088>,  <39.787403, 28.129501, 39.116573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639286, 28.300119, 39.847088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482143, 27.939049, 39.776844>,  <39.387859, 27.722406, 39.734699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482143, 27.939049, 39.776844>,  <39.639286, 28.300119, 39.847088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482143, 27.939049, 39.776844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168408, -0.258354, 0.951258,
		-0.904048, 0.344133, 0.253514,
		-0.392856, -0.902677, -0.175610,
		39.364288, 27.668245, 39.724159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159992, 28.105087, 40.415993>,  <39.639286, 28.300119, 39.847088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159992, 28.105087, 40.415993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271400, 27.770920, 40.226463>,  <39.338245, 27.570419, 40.112747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271400, 27.770920, 40.226463>,  <39.159992, 28.105087, 40.415993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271400, 27.770920, 40.226463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205072, -0.430238, 0.879114,
		-0.938283, -0.342015, 0.051493,
		0.278516, -0.835417, -0.473822,
		39.354954, 27.520294, 40.084316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888943, 27.474775, 40.746719>,  <39.159992, 28.105087, 40.415993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888943, 27.474775, 40.746719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188694, 27.282442, 40.564632>,  <39.368546, 27.167042, 40.455379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188694, 27.282442, 40.564632>,  <38.888943, 27.474775, 40.746719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188694, 27.282442, 40.564632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232010, -0.453233, 0.860669,
		-0.620160, -0.750585, -0.228087,
		0.749382, -0.480834, -0.455220,
		39.413509, 27.138193, 40.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982765, 26.996828, 41.229328>,  <38.888943, 27.474775, 40.746719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982765, 26.996828, 41.229328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325081, 26.968084, 41.024406>,  <39.530472, 26.950838, 40.901455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325081, 26.968084, 41.024406>,  <38.982765, 26.996828, 41.229328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325081, 26.968084, 41.024406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466173, -0.322217, 0.823929,
		-0.224280, -0.943935, -0.242253,
		0.855793, -0.071859, -0.512303,
		39.581818, 26.946526, 40.870716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295872, 26.363813, 41.416176>,  <38.982765, 26.996828, 41.229328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295872, 26.363813, 41.416176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589073, 26.594995, 41.272690>,  <39.764992, 26.733706, 41.186600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589073, 26.594995, 41.272690>,  <39.295872, 26.363813, 41.416176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589073, 26.594995, 41.272690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558414, -0.210126, 0.802509,
		0.388440, -0.788551, -0.476761,
		0.733000, 0.577957, -0.358717,
		39.808971, 26.768383, 41.165073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910030, 26.037718, 41.561081>,  <39.295872, 26.363813, 41.416176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910030, 26.037718, 41.561081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039471, 26.413597, 41.516815>,  <40.117134, 26.639126, 41.490253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039471, 26.413597, 41.516815>,  <39.910030, 26.037718, 41.561081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039471, 26.413597, 41.516815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615174, -0.120082, 0.779192,
		0.718918, -0.320227, -0.616938,
		0.323602, 0.939699, -0.110666,
		40.136551, 26.695507, 41.483616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474037, 25.957592, 41.758465>,  <39.910030, 26.037718, 41.561081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474037, 25.957592, 41.758465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391853, 26.347281, 41.795719>,  <40.342541, 26.581095, 41.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391853, 26.347281, 41.795719>,  <40.474037, 25.957592, 41.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391853, 26.347281, 41.795719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482667, 0.018086, 0.875617,
		0.851362, 0.224861, -0.473941,
		-0.205464, 0.974223, 0.093136,
		40.330215, 26.639547, 41.823658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142662, 26.276279, 41.950119>,  <40.474037, 25.957592, 41.758465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142662, 26.276279, 41.950119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865864, 26.545118, 42.055515>,  <40.699783, 26.706421, 42.118755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865864, 26.545118, 42.055515>,  <41.142662, 26.276279, 41.950119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865864, 26.545118, 42.055515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490973, 0.170578, 0.854312,
		0.529234, 0.720548, -0.448020,
		-0.691995, 0.672097, 0.263494,
		40.658264, 26.746748, 42.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431080, 27.002640, 41.961254>,  <41.142662, 26.276279, 41.950119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431080, 27.002640, 41.961254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133015, 26.977398, 42.226810>,  <40.954178, 26.962254, 42.386147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133015, 26.977398, 42.226810>,  <41.431080, 27.002640, 41.961254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133015, 26.977398, 42.226810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594483, 0.388265, 0.704159,
		-0.302202, 0.919385, -0.251804,
		-0.745160, -0.063105, 0.663893,
		40.909466, 26.958466, 42.425980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509113, 27.527695, 42.319965>,  <41.431080, 27.002640, 41.961254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509113, 27.527695, 42.319965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256294, 27.335953, 42.563515>,  <41.104603, 27.220907, 42.709644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256294, 27.335953, 42.563515>,  <41.509113, 27.527695, 42.319965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256294, 27.335953, 42.563515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480388, 0.374162, 0.793241,
		-0.608064, 0.793864, -0.006211,
		-0.632049, -0.479357, 0.608877,
		41.066681, 27.192146, 42.746178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185711, 28.064722, 42.861324>,  <41.509113, 27.527695, 42.319965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185711, 28.064722, 42.861324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118130, 27.697926, 43.005871>,  <41.077579, 27.477848, 43.092598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118130, 27.697926, 43.005871>,  <41.185711, 28.064722, 42.861324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118130, 27.697926, 43.005871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259020, 0.312440, 0.913942,
		-0.950980, 0.248014, 0.184731,
		-0.168953, -0.916990, 0.361365,
		41.067444, 27.422829, 43.114281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667103, 28.144009, 43.447109>,  <41.185711, 28.064722, 42.861324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667103, 28.144009, 43.447109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889309, 27.813271, 43.482285>,  <41.022633, 27.614828, 43.503391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889309, 27.813271, 43.482285>,  <40.667103, 28.144009, 43.447109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889309, 27.813271, 43.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324040, 0.312670, 0.892880,
		-0.765771, -0.467508, 0.441622,
		0.555511, -0.826845, 0.087942,
		41.055962, 27.565216, 43.508667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734955, 28.104586, 44.125248>,  <40.667103, 28.144009, 43.447109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734955, 28.104586, 44.125248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 27.820456, 44.014687>,  <41.149250, 27.649979, 43.948349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 27.820456, 44.014687>,  <40.734955, 28.104586, 44.125248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993889, 27.820456, 44.014687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539729, 0.171133, 0.824261,
		-0.538192, -0.682754, 0.494163,
		0.647335, -0.710324, -0.276400,
		41.188087, 27.607359, 43.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701862, 27.694201, 44.751740>,  <40.734955, 28.104586, 44.125248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701862, 27.694201, 44.751740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038860, 27.602688, 44.556656>,  <41.241058, 27.547781, 44.439606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038860, 27.602688, 44.556656>,  <40.701862, 27.694201, 44.751740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038860, 27.602688, 44.556656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530709, 0.197076, 0.824323,
		-0.092476, -0.953320, 0.287453,
		0.842494, -0.228784, -0.487711,
		41.291607, 27.534054, 44.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038666, 27.235081, 45.211529>,  <40.701862, 27.694201, 44.751740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038666, 27.235081, 45.211529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329323, 27.374374, 44.974644>,  <41.503719, 27.457951, 44.832512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329323, 27.374374, 44.974644>,  <41.038666, 27.235081, 45.211529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329323, 27.374374, 44.974644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538411, 0.246776, 0.805739,
		0.426731, -0.904342, -0.008175,
		0.726646, 0.348235, -0.592215,
		41.547318, 27.478846, 44.796978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629169, 26.983770, 45.462727>,  <41.038666, 27.235081, 45.211529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629169, 26.983770, 45.462727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765636, 27.286657, 45.239933>,  <41.847515, 27.468390, 45.106258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765636, 27.286657, 45.239933>,  <41.629169, 26.983770, 45.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765636, 27.286657, 45.239933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611387, 0.271324, 0.743363,
		0.714009, -0.594142, -0.370386,
		0.341169, 0.757217, -0.556979,
		41.867989, 27.513823, 45.072838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234554, 26.857773, 45.530922>,  <41.629169, 26.983770, 45.462727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234554, 26.857773, 45.530922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185040, 27.236351, 45.411644>,  <42.155331, 27.463497, 45.340076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185040, 27.236351, 45.411644>,  <42.234554, 26.857773, 45.530922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185040, 27.236351, 45.411644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635588, 0.306395, 0.708625,
		0.762039, -0.101808, -0.639477,
		-0.123789, 0.946444, -0.298193,
		42.147903, 27.520285, 45.322186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842636, 27.111729, 45.419178>,  <42.234554, 26.857773, 45.530922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842636, 27.111729, 45.419178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601437, 27.415483, 45.516933>,  <42.456718, 27.597736, 45.575588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601437, 27.415483, 45.516933>,  <42.842636, 27.111729, 45.419178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601437, 27.415483, 45.516933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629550, 0.264829, 0.730433,
		0.489958, 0.594305, -0.637763,
		-0.602998, 0.759386, 0.244390,
		42.420536, 27.643299, 45.590252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258011, 27.643515, 45.549614>,  <42.842636, 27.111729, 45.419178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258011, 27.643515, 45.549614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929016, 27.759878, 45.745121>,  <42.731621, 27.829697, 45.862427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929016, 27.759878, 45.745121>,  <43.258011, 27.643515, 45.549614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929016, 27.759878, 45.745121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568482, 0.392187, 0.723200,
		0.018695, 0.872676, -0.487943,
		-0.822483, 0.290907, 0.488768,
		42.682270, 27.847151, 45.891750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543667, 28.091522, 45.985512>,  <43.258011, 27.643515, 45.549614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543667, 28.091522, 45.985512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175949, 28.090464, 46.142933>,  <42.955318, 28.089828, 46.237385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175949, 28.090464, 46.142933>,  <43.543667, 28.091522, 45.985512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175949, 28.090464, 46.142933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356222, 0.419551, 0.834915,
		-0.167324, 0.907728, -0.384750,
		-0.919298, -0.002645, 0.393554,
		42.900158, 28.089670, 46.260998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539722, 28.769312, 46.186707>,  <43.543667, 28.091522, 45.985512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539722, 28.769312, 46.186707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277351, 28.531294, 46.372475>,  <43.119930, 28.388483, 46.483936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277351, 28.531294, 46.372475>,  <43.539722, 28.769312, 46.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277351, 28.531294, 46.372475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321818, 0.336089, 0.885143,
		-0.682785, 0.730045, -0.028953,
		-0.655925, -0.595044, 0.464418,
		43.080574, 28.352781, 46.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629128, 28.672607, 47.031490>,  <43.539722, 28.769312, 46.186707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629128, 28.672607, 47.031490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841381, 29.004503, 46.962261>,  <43.968735, 29.203642, 46.920723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841381, 29.004503, 46.962261>,  <43.629128, 28.672607, 47.031490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841381, 29.004503, 46.962261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528659, 0.164379, -0.832766,
		-0.662531, 0.533393, 0.525875,
		0.530635, 0.829742, -0.173077,
		44.000572, 29.253426, 46.910339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117218, 29.146084, 46.827045>,  <43.629128, 28.672607, 47.031490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117218, 29.146084, 46.827045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480179, 29.249495, 46.694511>,  <43.697956, 29.311541, 46.614990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480179, 29.249495, 46.694511>,  <43.117218, 29.146084, 46.827045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480179, 29.249495, 46.694511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388492, 0.215328, -0.895939,
		-0.160279, 0.941700, 0.295825,
		0.907405, 0.258526, -0.331331,
		43.752399, 29.327053, 46.595112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934837, 29.635593, 46.391037>,  <43.117218, 29.146084, 46.827045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934837, 29.635593, 46.391037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314106, 29.554127, 46.293480>,  <43.541668, 29.505247, 46.234943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314106, 29.554127, 46.293480>,  <42.934837, 29.635593, 46.391037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314106, 29.554127, 46.293480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224110, 0.115493, -0.967696,
		0.225256, 0.972204, 0.063864,
		0.948174, -0.203667, -0.243896,
		43.598557, 29.493027, 46.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231335, 30.096695, 45.951809>,  <42.934837, 29.635593, 46.391037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231335, 30.096695, 45.951809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486992, 29.801590, 45.864902>,  <43.640385, 29.624527, 45.812759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486992, 29.801590, 45.864902>,  <43.231335, 30.096695, 45.951809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486992, 29.801590, 45.864902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136366, 0.169307, -0.976084,
		0.756901, 0.653486, 0.007606,
		0.639144, -0.737761, -0.217262,
		43.678734, 29.580261, 45.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820042, 30.357313, 45.503277>,  <43.231335, 30.096695, 45.951809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820042, 30.357313, 45.503277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788120, 29.963573, 45.440426>,  <43.768967, 29.727329, 45.402714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788120, 29.963573, 45.440426>,  <43.820042, 30.357313, 45.503277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788120, 29.963573, 45.440426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136860, 0.166957, -0.976419,
		0.987370, -0.056420, -0.148042,
		-0.079806, -0.984349, -0.157127,
		43.764179, 29.668268, 45.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114147, 30.308788, 44.895641>,  <43.820042, 30.357313, 45.503277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114147, 30.308788, 44.895641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939026, 29.950090, 44.921490>,  <43.833954, 29.734871, 44.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939026, 29.950090, 44.921490>,  <44.114147, 30.308788, 44.895641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939026, 29.950090, 44.921490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230620, 0.042543, -0.972114,
		0.868988, -0.440500, -0.225432,
		-0.437806, -0.896744, 0.064619,
		43.807686, 29.681067, 44.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201702, 30.032333, 44.246162>,  <44.114147, 30.308788, 44.895641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201702, 30.032333, 44.246162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915955, 29.792149, 44.389893>,  <43.744507, 29.648037, 44.476131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915955, 29.792149, 44.389893>,  <44.201702, 30.032333, 44.246162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915955, 29.792149, 44.389893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437345, -0.017737, -0.899119,
		0.546261, -0.799456, -0.249938,
		-0.714373, -0.600463, 0.359327,
		43.701641, 29.612009, 44.497692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350517, 29.465422, 43.881435>,  <44.201702, 30.032333, 44.246162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350517, 29.465422, 43.881435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968353, 29.453068, 43.998898>,  <43.739056, 29.445656, 44.069374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968353, 29.453068, 43.998898>,  <44.350517, 29.465422, 43.881435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968353, 29.453068, 43.998898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283273, -0.184826, -0.941061,
		0.083338, -0.982286, 0.167837,
		-0.955411, -0.030883, 0.293658,
		43.681728, 29.443804, 44.086994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016434, 29.028137, 43.319290>,  <44.350517, 29.465422, 43.881435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016434, 29.028137, 43.319290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709553, 29.211775, 43.498455>,  <43.525425, 29.321957, 43.605953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709553, 29.211775, 43.498455>,  <44.016434, 29.028137, 43.319290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709553, 29.211775, 43.498455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555832, -0.127393, -0.821476,
		-0.320071, -0.879208, 0.352914,
		-0.767207, 0.459091, 0.447917,
		43.479389, 29.349503, 43.632832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394482, 28.734554, 43.131725>,  <44.016434, 29.028137, 43.319290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394482, 28.734554, 43.131725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246174, 29.083614, 43.258858>,  <43.157188, 29.293051, 43.335136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246174, 29.083614, 43.258858>,  <43.394482, 28.734554, 43.131725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246174, 29.083614, 43.258858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733071, -0.064875, -0.677051,
		-0.570209, -0.484018, 0.663767,
		-0.370767, 0.872649, 0.317828,
		43.134945, 29.345409, 43.354206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635132, 28.621960, 43.271168>,  <43.394482, 28.734554, 43.131725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635132, 28.621960, 43.271168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712166, 29.008560, 43.203300>,  <42.758389, 29.240520, 43.162579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712166, 29.008560, 43.203300>,  <42.635132, 28.621960, 43.271168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712166, 29.008560, 43.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650381, -0.003752, -0.759599,
		-0.734789, 0.256642, 0.627870,
		0.192589, 0.966499, -0.169672,
		42.769943, 29.298510, 43.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019096, 28.735922, 43.010468>,  <42.635132, 28.621960, 43.271168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019096, 28.735922, 43.010468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223270, 29.072676, 42.940392>,  <42.345776, 29.274727, 42.898346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223270, 29.072676, 42.940392>,  <42.019096, 28.735922, 43.010468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223270, 29.072676, 42.940392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406580, 0.056762, -0.911850,
		-0.757728, 0.536666, 0.371267,
		0.510433, 0.841884, -0.175187,
		42.376400, 29.325241, 42.887836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571518, 29.375341, 42.964211>,  <42.019096, 28.735922, 43.010468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571518, 29.375341, 42.964211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902466, 29.399582, 42.740860>,  <42.101036, 29.414125, 42.606850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902466, 29.399582, 42.740860>,  <41.571518, 29.375341, 42.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902466, 29.399582, 42.740860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561645, 0.094539, -0.821960,
		0.002976, 0.993675, 0.112255,
		0.827373, 0.060601, -0.558374,
		42.150677, 29.417763, 42.573349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502476, 29.997269, 42.606102>,  <41.571518, 29.375341, 42.964211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502476, 29.997269, 42.606102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780846, 29.807646, 42.390339>,  <41.947868, 29.693872, 42.260880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780846, 29.807646, 42.390339>,  <41.502476, 29.997269, 42.606102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780846, 29.807646, 42.390339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456923, 0.287167, -0.841877,
		0.554000, 0.832348, -0.016762,
		0.695921, -0.474059, -0.539409,
		41.989620, 29.665428, 42.228516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841434, 30.462696, 42.067429>,  <41.502476, 29.997269, 42.606102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841434, 30.462696, 42.067429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871204, 30.098959, 41.903694>,  <41.889065, 29.880716, 41.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871204, 30.098959, 41.903694>,  <41.841434, 30.462696, 42.067429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871204, 30.098959, 41.903694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343770, 0.361915, -0.866510,
		0.936100, 0.205206, -0.285670,
		0.074425, -0.909345, -0.409333,
		41.893532, 29.826155, 41.780895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961605, 30.669634, 41.365902>,  <41.841434, 30.462696, 42.067429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961605, 30.669634, 41.365902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872208, 30.279865, 41.375336>,  <41.818569, 30.046005, 41.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872208, 30.279865, 41.375336>,  <41.961605, 30.669634, 41.365902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872208, 30.279865, 41.375336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499594, 0.093741, -0.861173,
		0.836934, -0.204248, -0.507765,
		-0.223491, -0.974420, 0.023586,
		41.805161, 29.987539, 41.382412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947933, 30.464846, 40.750549>,  <41.961605, 30.669634, 41.365902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947933, 30.464846, 40.750549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734428, 30.161579, 40.900368>,  <41.606327, 29.979618, 40.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734428, 30.161579, 40.900368>,  <41.947933, 30.464846, 40.750549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734428, 30.161579, 40.900368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629969, 0.061035, -0.774219,
		0.564127, -0.649197, -0.510200,
		-0.533760, -0.758168, 0.374543,
		41.574299, 29.934130, 41.012730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648659, 30.230286, 40.233570>,  <41.947933, 30.464846, 40.750549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648659, 30.230286, 40.233570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412174, 30.021326, 40.479359>,  <41.270287, 29.895950, 40.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412174, 30.021326, 40.479359>,  <41.648659, 30.230286, 40.233570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412174, 30.021326, 40.479359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686241, -0.074448, -0.723555,
		0.423732, -0.849443, -0.314479,
		-0.591207, -0.522402, 0.614469,
		41.234814, 29.864605, 40.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355148, 29.698128, 39.758049>,  <41.648659, 30.230286, 40.233570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355148, 29.698128, 39.758049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116356, 29.722097, 40.078053>,  <40.973080, 29.736479, 40.270054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116356, 29.722097, 40.078053>,  <41.355148, 29.698128, 39.758049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116356, 29.722097, 40.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802012, -0.069105, -0.593297,
		0.019731, -0.995808, 0.089317,
		-0.596982, 0.059927, 0.800013,
		40.937260, 29.740076, 40.318058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768650, 29.207314, 39.647087>,  <41.355148, 29.698128, 39.758049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768650, 29.207314, 39.647087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630463, 29.428679, 39.950241>,  <40.547550, 29.561497, 40.132133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630463, 29.428679, 39.950241>,  <40.768650, 29.207314, 39.647087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630463, 29.428679, 39.950241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918080, -0.032047, -0.395097,
		-0.194364, -0.832291, 0.519148,
		-0.345473, 0.553412, 0.757881,
		40.526821, 29.594702, 40.177605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093033, 28.915281, 39.776630>,  <40.768650, 29.207314, 39.647087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093033, 28.915281, 39.776630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091084, 29.275316, 39.950905>,  <40.089912, 29.491337, 40.055470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091084, 29.275316, 39.950905>,  <40.093033, 28.915281, 39.776630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091084, 29.275316, 39.950905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887594, 0.196786, -0.416477,
		-0.460601, -0.388739, 0.797953,
		-0.004875, 0.900088, 0.435682,
		40.089622, 29.545343, 40.081608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411575, 29.109251, 40.014957>,  <40.093033, 28.915281, 39.776630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411575, 29.109251, 40.014957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621609, 29.443796, 39.951984>,  <39.747627, 29.644524, 39.914200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621609, 29.443796, 39.951984>,  <39.411575, 29.109251, 40.014957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621609, 29.443796, 39.951984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776393, 0.394989, -0.491118,
		-0.348569, 0.380107, 0.856749,
		0.525084, 0.836363, -0.157431,
		39.779133, 29.694704, 39.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894703, 29.670671, 39.883953>,  <39.411575, 29.109251, 40.014957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894703, 29.670671, 39.883953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243374, 29.832130, 39.772778>,  <39.452576, 29.929007, 39.706074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243374, 29.832130, 39.772778>,  <38.894703, 29.670671, 39.883953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243374, 29.832130, 39.772778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465384, 0.504001, -0.727599,
		-0.153615, 0.763578, 0.627178,
		0.871677, 0.403648, -0.277935,
		39.504875, 29.953224, 39.689396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726742, 30.317156, 39.625816>,  <38.894703, 29.670671, 39.883953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726742, 30.317156, 39.625816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088711, 30.259584, 39.465611>,  <39.305893, 30.225042, 39.369488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088711, 30.259584, 39.465611>,  <38.726742, 30.317156, 39.625816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088711, 30.259584, 39.465611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292421, 0.473478, -0.830848,
		0.309214, 0.868967, 0.386372,
		0.904918, -0.143926, -0.400510,
		39.360188, 30.216406, 39.345459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020885, 31.010262, 39.309135>,  <38.726742, 30.317156, 39.625816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020885, 31.010262, 39.309135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178509, 30.692198, 39.124771>,  <39.273083, 30.501360, 39.014153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178509, 30.692198, 39.124771>,  <39.020885, 31.010262, 39.309135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178509, 30.692198, 39.124771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102164, 0.460487, -0.881768,
		0.913390, 0.394555, 0.100221,
		0.394057, -0.795159, -0.460914,
		39.296726, 30.453650, 38.986496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350662, 31.208004, 38.739239>,  <39.020885, 31.010262, 39.309135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350662, 31.208004, 38.739239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312229, 30.819397, 38.652588>,  <39.289169, 30.586233, 38.600597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312229, 30.819397, 38.652588>,  <39.350662, 31.208004, 38.739239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312229, 30.819397, 38.652588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137395, 0.228490, -0.963802,
		0.985845, -0.062840, -0.155435,
		-0.096080, -0.971516, -0.216622,
		39.283405, 30.527943, 38.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771179, 31.014753, 38.198742>,  <39.350662, 31.208004, 38.739239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771179, 31.014753, 38.198742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456638, 30.767921, 38.186989>,  <39.267914, 30.619823, 38.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456638, 30.767921, 38.186989>,  <39.771179, 31.014753, 38.198742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456638, 30.767921, 38.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078518, 0.147011, -0.986013,
		0.612767, -0.773047, -0.164054,
		-0.786353, -0.617078, -0.029385,
		39.220734, 30.582798, 38.178173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832561, 30.602839, 37.647240>,  <39.771179, 31.014753, 38.198742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832561, 30.602839, 37.647240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441822, 30.581470, 37.730095>,  <39.207378, 30.568649, 37.779808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441822, 30.581470, 37.730095>,  <39.832561, 30.602839, 37.647240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441822, 30.581470, 37.730095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208033, 0.011654, -0.978052,
		0.049845, -0.998504, -0.022499,
		-0.976851, -0.053431, 0.207141,
		39.148766, 30.565445, 37.792236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658653, 30.127331, 37.227718>,  <39.832561, 30.602839, 37.647240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658653, 30.127331, 37.227718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322292, 30.321863, 37.322689>,  <39.120476, 30.438583, 37.379669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322292, 30.321863, 37.322689>,  <39.658653, 30.127331, 37.227718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322292, 30.321863, 37.322689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214907, 0.102564, -0.971234,
		-0.496694, -0.867733, 0.018270,
		-0.840898, 0.486333, 0.237425,
		39.070023, 30.467762, 37.393917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158539, 29.879648, 36.792789>,  <39.658653, 30.127331, 37.227718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158539, 29.879648, 36.792789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943176, 30.189137, 36.926338>,  <38.813957, 30.374830, 37.006466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943176, 30.189137, 36.926338>,  <39.158539, 29.879648, 36.792789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943176, 30.189137, 36.926338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335517, 0.166616, -0.927183,
		-0.773009, -0.611224, 0.169889,
		-0.538410, 0.773722, 0.333872,
		38.781654, 30.421253, 37.026501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572266, 29.783737, 36.494728>,  <39.158539, 29.879648, 36.792789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572266, 29.783737, 36.494728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589504, 30.176895, 36.566349>,  <38.599850, 30.412790, 36.609322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589504, 30.176895, 36.566349>,  <38.572266, 29.783737, 36.494728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589504, 30.176895, 36.566349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307657, 0.183571, -0.933621,
		-0.950521, -0.014850, 0.310306,
		0.043099, 0.982894, 0.179056,
		38.602432, 30.471764, 36.620068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903313, 30.067171, 36.349815>,  <38.572266, 29.783737, 36.494728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903313, 30.067171, 36.349815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138382, 30.390169, 36.329464>,  <38.279423, 30.583967, 36.317253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138382, 30.390169, 36.329464>,  <37.903313, 30.067171, 36.349815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138382, 30.390169, 36.329464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408968, 0.242199, -0.879821,
		-0.698128, 0.537858, 0.472575,
		0.587676, 0.807495, -0.050881,
		38.314686, 30.632418, 36.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507885, 30.559111, 36.001751>,  <37.903313, 30.067171, 36.349815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507885, 30.559111, 36.001751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869385, 30.722086, 35.949238>,  <38.086285, 30.819872, 35.917728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869385, 30.722086, 35.949238>,  <37.507885, 30.559111, 36.001751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869385, 30.722086, 35.949238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287496, 0.350483, -0.891352,
		-0.317157, 0.843300, 0.433884,
		0.903746, 0.407438, -0.131287,
		38.140511, 30.844318, 35.909851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408451, 31.168303, 35.749268>,  <37.507885, 30.559111, 36.001751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408451, 31.168303, 35.749268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781239, 31.084873, 35.630657>,  <38.004913, 31.034815, 35.559490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781239, 31.084873, 35.630657>,  <37.408451, 31.168303, 35.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781239, 31.084873, 35.630657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186237, 0.426297, -0.885204,
		0.311037, 0.880209, 0.358452,
		0.931972, -0.208574, -0.296522,
		38.060829, 31.022301, 35.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573116, 31.824392, 35.504139>,  <37.408451, 31.168303, 35.749268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573116, 31.824392, 35.504139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843060, 31.562475, 35.368011>,  <38.005024, 31.405325, 35.286335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843060, 31.562475, 35.368011>,  <37.573116, 31.824392, 35.504139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843060, 31.562475, 35.368011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102469, 0.539851, -0.835500,
		0.730802, 0.528969, 0.431417,
		0.674855, -0.654792, -0.340321,
		38.045517, 31.366037, 35.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075089, 32.206223, 35.217342>,  <37.573116, 31.824392, 35.504139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075089, 32.206223, 35.217342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142567, 31.854866, 35.038471>,  <38.183052, 31.644051, 34.931149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142567, 31.854866, 35.038471>,  <38.075089, 32.206223, 35.217342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142567, 31.854866, 35.038471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210719, 0.475327, -0.854202,
		0.962881, 0.049872, 0.265280,
		0.168696, -0.878394, -0.447174,
		38.193176, 31.591347, 34.904320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707985, 32.252140, 34.819080>,  <38.075089, 32.206223, 35.217342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707985, 32.252140, 34.819080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500069, 31.943874, 34.671623>,  <38.375317, 31.758915, 34.583149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500069, 31.943874, 34.671623>,  <38.707985, 32.252140, 34.819080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500069, 31.943874, 34.671623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063421, 0.395516, -0.916267,
		0.851934, -0.499649, -0.156711,
		-0.519794, -0.770661, -0.368642,
		38.344131, 31.712677, 34.561031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087318, 32.014637, 34.329189>,  <38.707985, 32.252140, 34.819080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087318, 32.014637, 34.329189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727058, 31.873348, 34.227947>,  <38.510902, 31.788576, 34.167202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727058, 31.873348, 34.227947>,  <39.087318, 32.014637, 34.329189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727058, 31.873348, 34.227947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195052, 0.191878, -0.961841,
		0.388307, -0.915653, -0.103919,
		-0.900652, -0.353220, -0.253108,
		38.456863, 31.767384, 34.152016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137787, 31.549372, 33.835037>,  <39.087318, 32.014637, 34.329189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137787, 31.549372, 33.835037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763817, 31.687477, 33.802292>,  <38.539433, 31.770340, 33.782646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763817, 31.687477, 33.802292>,  <39.137787, 31.549372, 33.835037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763817, 31.687477, 33.802292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067599, -0.053173, -0.996295,
		-0.348336, -0.936999, 0.026374,
		-0.934929, 0.345262, -0.081862,
		38.483337, 31.791056, 33.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892384, 31.774252, 33.596760>,  <39.137787, 31.549372, 33.835037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892384, 31.774252, 33.596760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148327, 31.538309, 33.793800>,  <40.301891, 31.396744, 33.912025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148327, 31.538309, 33.793800>,  <39.892384, 31.774252, 33.596760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148327, 31.538309, 33.793800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749028, 0.622034, -0.228100,
		-0.171866, 0.514921, 0.839832,
		0.639858, -0.589856, 0.492597,
		40.340286, 31.361353, 33.941578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235329, 32.158627, 34.090218>,  <39.892384, 31.774252, 33.596760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235329, 32.158627, 34.090218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481789, 31.852854, 34.014324>,  <40.629665, 31.669390, 33.968788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481789, 31.852854, 34.014324>,  <40.235329, 32.158627, 34.090218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481789, 31.852854, 34.014324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769641, 0.635538, -0.061188,
		0.167355, -0.108323, 0.979928,
		0.616153, -0.764433, -0.189730,
		40.666634, 31.623524, 33.957405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450390, 31.702291, 34.645245>,  <40.235329, 32.158627, 34.090218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450390, 31.702291, 34.645245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604004, 31.584959, 34.995438>,  <40.696171, 31.514559, 35.205555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604004, 31.584959, 34.995438>,  <40.450390, 31.702291, 34.645245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604004, 31.584959, 34.995438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921363, 0.060064, -0.384035,
		0.060064, 0.954122, 0.293332,
		0.384035, -0.293332, 0.875485,
		40.719215, 31.496960, 35.258083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801071, 32.222092, 34.910431>,  <40.450390, 31.702291, 34.645245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801071, 32.222092, 34.910431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963547, 31.896729, 35.076988>,  <41.061031, 31.701511, 35.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963547, 31.896729, 35.076988>,  <40.801071, 32.222092, 34.910431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963547, 31.896729, 35.076988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902760, 0.286619, -0.320739,
		0.141543, 0.506186, 0.850730,
		0.406189, -0.813404, 0.416395,
		41.085403, 31.652708, 35.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419617, 32.489326, 35.280273>,  <40.801071, 32.222092, 34.910431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419617, 32.489326, 35.280273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427498, 32.112614, 35.146019>,  <41.432228, 31.886585, 35.065468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427498, 32.112614, 35.146019>,  <41.419617, 32.489326, 35.280273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427498, 32.112614, 35.146019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910455, 0.155621, -0.383217,
		0.413140, -0.298031, 0.860519,
		0.019705, -0.941785, -0.335637,
		41.433411, 31.830078, 35.045326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990765, 32.576221, 34.930607>,  <41.419617, 32.489326, 35.280273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990765, 32.576221, 34.930607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937008, 32.184650, 34.869095>,  <41.904755, 31.949709, 34.832188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937008, 32.184650, 34.869095>,  <41.990765, 32.576221, 34.930607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937008, 32.184650, 34.869095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770884, -0.005772, -0.636949,
		0.622638, -0.204142, 0.755413,
		-0.134388, -0.978924, -0.153776,
		41.896690, 31.890974, 34.822964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734661, 32.891651, 34.899445>,  <41.990765, 32.576221, 34.930607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734661, 32.891651, 34.899445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440403, 33.112366, 35.056602>,  <42.263847, 33.244793, 35.150898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440403, 33.112366, 35.056602>,  <42.734661, 32.891651, 34.899445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440403, 33.112366, 35.056602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354440, 0.807846, -0.470910,
		-0.577240, -0.207164, -0.789859,
		-0.735640, 0.551786, 0.392894,
		42.219711, 33.277901, 35.174469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178631, 33.265316, 34.440628>,  <42.734661, 32.891651, 34.899445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178631, 33.265316, 34.440628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247208, 33.500286, 34.756992>,  <42.288353, 33.641270, 34.946812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247208, 33.500286, 34.756992>,  <42.178631, 33.265316, 34.440628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247208, 33.500286, 34.756992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109493, 0.786464, -0.607854,
		-0.979091, 0.190809, 0.070512,
		0.171438, 0.587424, 0.790912,
		42.298637, 33.676514, 34.994267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621162, 33.787899, 34.463200>,  <42.178631, 33.265316, 34.440628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621162, 33.787899, 34.463200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963177, 33.906338, 34.633488>,  <42.168385, 33.977402, 34.735661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963177, 33.906338, 34.633488>,  <41.621162, 33.787899, 34.463200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963177, 33.906338, 34.633488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021052, 0.840098, -0.542026,
		-0.518139, 0.454490, 0.724548,
		0.855037, 0.296098, 0.425720,
		42.219688, 33.995167, 34.761204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484097, 34.459229, 34.604992>,  <41.621162, 33.787899, 34.463200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484097, 34.459229, 34.604992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883888, 34.447224, 34.609818>,  <42.123764, 34.440022, 34.612713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883888, 34.447224, 34.609818>,  <41.484097, 34.459229, 34.604992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883888, 34.447224, 34.609818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032097, 0.874488, -0.483984,
		0.003973, 0.484118, 0.874994,
		0.999477, -0.030007, 0.012065,
		42.183731, 34.438221, 34.613438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665482, 35.166977, 34.814796>,  <41.484097, 34.459229, 34.604992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665482, 35.166977, 34.814796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985905, 34.998753, 34.644413>,  <42.178158, 34.897820, 34.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985905, 34.998753, 34.644413>,  <41.665482, 35.166977, 34.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985905, 34.998753, 34.644413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081495, 0.781602, -0.618432,
		0.593016, 0.460685, 0.660380,
		0.801056, -0.420557, -0.425959,
		42.226223, 34.872585, 34.516624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232494, 35.732555, 34.804939>,  <41.665482, 35.166977, 34.814796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232494, 35.732555, 34.804939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326317, 35.465450, 34.522358>,  <42.382610, 35.305187, 34.352810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326317, 35.465450, 34.522358>,  <42.232494, 35.732555, 34.804939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326317, 35.465450, 34.522358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103148, 0.739721, -0.664962,
		0.966615, 0.083102, 0.242384,
		0.234556, -0.667763, -0.706453,
		42.396683, 35.265121, 34.310421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846764, 36.017010, 34.432941>,  <42.232494, 35.732555, 34.804939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846764, 36.017010, 34.432941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690075, 35.736149, 34.195107>,  <42.596062, 35.567631, 34.052406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690075, 35.736149, 34.195107>,  <42.846764, 36.017010, 34.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690075, 35.736149, 34.195107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041130, 0.658951, -0.751060,
		0.919163, -0.269753, -0.287006,
		-0.391724, -0.702151, -0.594589,
		42.572559, 35.525505, 34.016731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197411, 36.070835, 33.876709>,  <42.846764, 36.017010, 34.432941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197411, 36.070835, 33.876709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890823, 35.869553, 33.717056>,  <42.706871, 35.748783, 33.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890823, 35.869553, 33.717056>,  <43.197411, 36.070835, 33.876709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890823, 35.869553, 33.717056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098497, 0.521990, -0.847245,
		0.634687, -0.688699, -0.350523,
		-0.766466, -0.503210, -0.399135,
		42.660885, 35.718590, 33.597317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412884, 35.789471, 33.199764>,  <43.197411, 36.070835, 33.876709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412884, 35.789471, 33.199764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012886, 35.790871, 33.199974>,  <42.772888, 35.791710, 33.200100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012886, 35.790871, 33.199974>,  <43.412884, 35.789471, 33.199764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012886, 35.790871, 33.199974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000471, 0.278968, -0.960300,
		-0.003513, -0.960294, -0.278968,
		-0.999994, 0.003505, 0.000527,
		42.712887, 35.791924, 33.200130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214264, 35.318775, 32.658012>,  <43.412884, 35.789471, 33.199764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214264, 35.318775, 32.658012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916271, 35.577457, 32.723450>,  <42.737473, 35.732666, 32.762711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916271, 35.577457, 32.723450>,  <43.214264, 35.318775, 32.658012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916271, 35.577457, 32.723450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024266, 0.271345, -0.962176,
		-0.666638, -0.712838, -0.217841,
		-0.744986, 0.646710, 0.163591,
		42.692776, 35.771469, 32.772526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838181, 35.155827, 32.091225>,  <43.214264, 35.318775, 32.658012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838181, 35.155827, 32.091225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671337, 35.502453, 32.200832>,  <42.571232, 35.710430, 32.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671337, 35.502453, 32.200832>,  <42.838181, 35.155827, 32.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671337, 35.502453, 32.200832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119330, 0.246668, -0.961725,
		-0.900990, -0.433839, 0.000521,
		-0.417106, 0.866567, 0.274015,
		42.546204, 35.762424, 32.283035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230988, 35.210052, 31.649130>,  <42.838181, 35.155827, 32.091225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230988, 35.210052, 31.649130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350479, 35.566315, 31.786236>,  <42.422176, 35.780071, 31.868500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350479, 35.566315, 31.786236>,  <42.230988, 35.210052, 31.649130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350479, 35.566315, 31.786236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189164, 0.296776, -0.936024,
		-0.935401, 0.344460, -0.079824,
		0.298733, 0.890657, 0.342764,
		42.440098, 35.833511, 31.889065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736134, 35.628761, 31.362551>,  <42.230988, 35.210052, 31.649130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736134, 35.628761, 31.362551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063782, 35.842907, 31.444933>,  <42.260372, 35.971394, 31.494362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063782, 35.842907, 31.444933>,  <41.736134, 35.628761, 31.362551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063782, 35.842907, 31.444933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069084, 0.448511, -0.891104,
		-0.569440, 0.715697, 0.404371,
		0.819125, 0.535366, 0.205957,
		42.309521, 36.003517, 31.506720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654690, 36.278057, 30.979155>,  <41.736134, 35.628761, 31.362551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654690, 36.278057, 30.979155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032063, 36.323288, 31.103830>,  <42.258488, 36.350426, 31.178635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032063, 36.323288, 31.103830>,  <41.654690, 36.278057, 30.979155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032063, 36.323288, 31.103830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200953, 0.552719, -0.808777,
		-0.263730, 0.825661, 0.498729,
		0.943432, 0.113078, 0.311688,
		42.315094, 36.357212, 31.197336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854500, 36.866203, 30.597576>,  <41.654690, 36.278057, 30.979155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854500, 36.866203, 30.597576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196220, 36.706894, 30.731167>,  <42.401253, 36.611309, 30.811321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196220, 36.706894, 30.731167>,  <41.854500, 36.866203, 30.597576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196220, 36.706894, 30.731167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497518, 0.440586, -0.747234,
		0.150461, 0.804524, 0.574545,
		0.854305, -0.398276, 0.333975,
		42.452511, 36.587410, 30.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282993, 37.437626, 30.595463>,  <41.854500, 36.866203, 30.597576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282993, 37.437626, 30.595463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488461, 37.094723, 30.581274>,  <42.611740, 36.888981, 30.572760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488461, 37.094723, 30.581274>,  <42.282993, 37.437626, 30.595463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488461, 37.094723, 30.581274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482947, 0.323063, -0.813875,
		0.709157, 0.400932, 0.579956,
		0.513671, -0.857254, -0.035473,
		42.642563, 36.837547, 30.570633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026653, 37.622658, 30.472902>,  <42.282993, 37.437626, 30.595463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026653, 37.622658, 30.472902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966175, 37.243465, 30.360849>,  <42.929890, 37.015949, 30.293617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966175, 37.243465, 30.360849>,  <43.026653, 37.622658, 30.472902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966175, 37.243465, 30.360849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322873, 0.220489, -0.920400,
		0.934287, -0.229608, 0.272741,
		-0.151195, -0.947979, -0.280134,
		42.920818, 36.959072, 30.276810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680389, 37.427105, 30.098831>,  <43.026653, 37.622658, 30.472902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680389, 37.427105, 30.098831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439373, 37.138680, 29.962000>,  <43.294765, 36.965626, 29.879902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439373, 37.138680, 29.962000>,  <43.680389, 37.427105, 30.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439373, 37.138680, 29.962000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301709, 0.191016, -0.934069,
		0.738864, -0.666020, 0.102456,
		-0.602538, -0.721062, -0.342079,
		43.258610, 36.922359, 29.859377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956711, 37.139820, 29.537596>,  <43.680389, 37.427105, 30.098831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956711, 37.139820, 29.537596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593185, 36.987194, 29.470112>,  <43.375069, 36.895618, 29.429621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593185, 36.987194, 29.470112>,  <43.956711, 37.139820, 29.537596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593185, 36.987194, 29.470112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144052, 0.092521, -0.985236,
		0.391545, -0.919698, -0.029119,
		-0.908814, -0.381570, -0.168710,
		43.320541, 36.872723, 29.419498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081734, 36.580166, 29.103140>,  <43.956711, 37.139820, 29.537596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081734, 36.580166, 29.103140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700390, 36.687405, 29.047665>,  <43.471584, 36.751747, 29.014380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700390, 36.687405, 29.047665>,  <44.081734, 36.580166, 29.103140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700390, 36.687405, 29.047665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148360, 0.016051, -0.988803,
		-0.262868, -0.963259, -0.055077,
		-0.953357, 0.268095, -0.138690,
		43.414383, 36.767834, 29.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680397, 36.074986, 28.642702>,  <44.081734, 36.580166, 29.103140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680397, 36.074986, 28.642702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467621, 36.411945, 28.608280>,  <43.339954, 36.614120, 28.587627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467621, 36.411945, 28.608280>,  <43.680397, 36.074986, 28.642702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467621, 36.411945, 28.608280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100022, -0.163421, -0.981473,
		-0.840855, -0.513475, 0.171188,
		-0.531938, 0.842399, -0.086054,
		43.308041, 36.664665, 28.582464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231102, 35.986259, 28.063725>,  <43.680397, 36.074986, 28.642702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231102, 35.986259, 28.063725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207481, 36.383392, 28.105276>,  <43.193310, 36.621674, 28.130207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207481, 36.383392, 28.105276>,  <43.231102, 35.986259, 28.063725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207481, 36.383392, 28.105276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017333, 0.103026, -0.994528,
		-0.998104, -0.060528, 0.011125,
		-0.059051, 0.992835, 0.103880,
		43.189766, 36.681244, 28.136440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659466, 36.277695, 27.559559>,  <43.231102, 35.986259, 28.063725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659466, 36.277695, 27.559559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938225, 36.558750, 27.617016>,  <43.105480, 36.727383, 27.651489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938225, 36.558750, 27.617016>,  <42.659466, 36.277695, 27.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938225, 36.558750, 27.617016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014982, 0.214510, -0.976607,
		-0.717013, 0.678444, 0.160018,
		0.696899, 0.702637, 0.143642,
		43.147293, 36.769543, 27.660109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552555, 36.764065, 26.997032>,  <42.659466, 36.277695, 27.559559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552555, 36.764065, 26.997032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926846, 36.815418, 27.128448>,  <43.151421, 36.846230, 27.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926846, 36.815418, 27.128448>,  <42.552555, 36.764065, 26.997032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926846, 36.815418, 27.128448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320788, 0.077591, -0.943968,
		-0.146681, 0.988685, 0.031420,
		0.935724, 0.128382, 0.328539,
		43.207561, 36.853931, 27.227011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880005, 37.318394, 26.631872>,  <42.552555, 36.764065, 26.997032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880005, 37.318394, 26.631872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154835, 37.044121, 26.728020>,  <43.319733, 36.879559, 26.785709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154835, 37.044121, 26.728020>,  <42.880005, 37.318394, 26.631872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154835, 37.044121, 26.728020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298655, -0.035072, -0.953717,
		0.662373, 0.727060, 0.180684,
		0.687072, -0.685678, 0.240371,
		43.360958, 36.838417, 26.800131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482559, 37.551872, 26.525928>,  <42.880005, 37.318394, 26.631872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482559, 37.551872, 26.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467384, 37.153606, 26.491953>,  <43.458279, 36.914646, 26.471567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467384, 37.153606, 26.491953>,  <43.482559, 37.551872, 26.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467384, 37.153606, 26.491953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285545, 0.070656, -0.955757,
		0.957614, -0.060517, 0.281626,
		-0.037941, -0.995663, -0.084941,
		43.456001, 36.854908, 26.466471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053909, 37.855816, 25.943804>,  <43.482559, 37.551872, 26.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053909, 37.855816, 25.943804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761700, 38.047825, 26.138086>,  <43.586372, 38.163029, 26.254656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761700, 38.047825, 26.138086>,  <44.053909, 37.855816, 25.943804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761700, 38.047825, 26.138086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500620, -0.860196, 0.097172,
		0.464448, -0.172168, 0.868704,
		-0.730526, 0.480022, 0.485707,
		43.542542, 38.191830, 26.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573967, 37.889835, 26.419769>,  <44.053909, 37.855816, 25.943804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573967, 37.889835, 26.419769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823040, 38.198997, 26.468567>,  <44.972485, 38.384495, 26.497847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823040, 38.198997, 26.468567>,  <44.573967, 37.889835, 26.419769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823040, 38.198997, 26.468567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036699, -0.126891, 0.991238,
		0.781613, -0.621705, -0.050648,
		0.622684, 0.772905, 0.121995,
		45.009846, 38.430870, 26.505165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250771, 37.712559, 26.768055>,  <44.573967, 37.889835, 26.419769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250771, 37.712559, 26.768055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169842, 38.100800, 26.820194>,  <45.121284, 38.333744, 26.851479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169842, 38.100800, 26.820194>,  <45.250771, 37.712559, 26.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169842, 38.100800, 26.820194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025535, -0.127829, 0.991467,
		0.978987, 0.203922, 0.001077,
		-0.202320, 0.970606, 0.130350,
		45.109146, 38.391983, 26.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990932, 37.636200, 26.852057>,  <45.250771, 37.712559, 26.768055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990932, 37.636200, 26.852057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963261, 37.311043, 26.620739>,  <45.946655, 37.115948, 26.481949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963261, 37.311043, 26.620739>,  <45.990932, 37.636200, 26.852057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963261, 37.311043, 26.620739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414057, -0.503997, 0.757986,
		-0.907618, 0.291886, -0.301715,
		-0.069182, -0.812890, -0.578295,
		45.942505, 37.067177, 26.447250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037468, 37.925560, 27.477678>,  <45.990932, 37.636200, 26.852057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037468, 37.925560, 27.477678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243202, 38.268517, 27.485115>,  <46.366642, 38.474289, 27.489576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243202, 38.268517, 27.485115>,  <46.037468, 37.925560, 27.477678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243202, 38.268517, 27.485115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302212, -0.201494, 0.931702,
		0.802575, -0.473589, -0.362748,
		0.514336, 0.857387, 0.018590,
		46.397503, 38.525734, 27.490692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685646, 37.887260, 27.648127>,  <46.037468, 37.925560, 27.477678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685646, 37.887260, 27.648127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592197, 38.246086, 27.798166>,  <46.536129, 38.461380, 27.888191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592197, 38.246086, 27.798166>,  <46.685646, 37.887260, 27.648127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592197, 38.246086, 27.798166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158278, -0.345546, 0.924957,
		0.959359, 0.275461, -0.061258,
		-0.233622, 0.897062, 0.375101,
		46.522110, 38.515205, 27.910696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096371, 37.961174, 28.263258>,  <46.685646, 37.887260, 27.648127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096371, 37.961174, 28.263258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778622, 38.194351, 28.331558>,  <46.587975, 38.334255, 28.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778622, 38.194351, 28.331558>,  <47.096371, 37.961174, 28.263258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778622, 38.194351, 28.331558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105255, -0.408949, 0.906467,
		0.598245, 0.702098, 0.386214,
		-0.794371, 0.582940, 0.170752,
		46.540310, 38.369232, 28.382784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212982, 38.378883, 28.851431>,  <47.096371, 37.961174, 28.263258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212982, 38.378883, 28.851431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814873, 38.352364, 28.823036>,  <46.576008, 38.336452, 28.806000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814873, 38.352364, 28.823036>,  <47.212982, 38.378883, 28.851431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.814873, 38.352364, 28.823036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052189, -0.251378, 0.966481,
		-0.081924, 0.965615, 0.246729,
		-0.995271, -0.066302, -0.070989,
		46.516293, 38.332474, 28.801739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838001, 38.655449, 29.389668>,  <47.212982, 38.378883, 28.851431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838001, 38.655449, 29.389668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534260, 38.425022, 29.268658>,  <46.352013, 38.286766, 29.196053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534260, 38.425022, 29.268658>,  <46.838001, 38.655449, 29.389668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534260, 38.425022, 29.268658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146968, -0.301075, 0.942207,
		-0.633861, 0.759932, 0.143959,
		-0.759356, -0.576071, -0.302525,
		46.306454, 38.252201, 29.177900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244709, 38.735836, 29.848736>,  <46.838001, 38.655449, 29.389668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244709, 38.735836, 29.848736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172070, 38.386860, 29.667244>,  <46.128487, 38.177475, 29.558350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172070, 38.386860, 29.667244>,  <46.244709, 38.735836, 29.848736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172070, 38.386860, 29.667244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209878, -0.416382, 0.884634,
		-0.960714, 0.255879, -0.107489,
		-0.181603, -0.872440, -0.453728,
		46.117588, 38.125130, 29.531126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580814, 38.596638, 30.073227>,  <46.244709, 38.735836, 29.848736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580814, 38.596638, 30.073227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749416, 38.248833, 29.970243>,  <45.850578, 38.040150, 29.908453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749416, 38.248833, 29.970243>,  <45.580814, 38.596638, 30.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749416, 38.248833, 29.970243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395214, -0.431674, 0.810841,
		-0.816173, -0.240024, -0.525596,
		0.421507, -0.869509, -0.257460,
		45.875870, 37.987980, 29.893005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122242, 38.106853, 30.435217>,  <45.580814, 38.596638, 30.073227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122242, 38.106853, 30.435217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469006, 37.938480, 30.328421>,  <45.677063, 37.837456, 30.264343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469006, 37.938480, 30.328421>,  <45.122242, 38.106853, 30.435217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469006, 37.938480, 30.328421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129513, -0.707438, 0.694807,
		-0.481346, -0.567757, -0.667801,
		0.866910, -0.420932, -0.266991,
		45.729080, 37.812202, 30.248323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941692, 37.371628, 30.199348>,  <45.122242, 38.106853, 30.435217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941692, 37.371628, 30.199348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322872, 37.428535, 30.306414>,  <45.551579, 37.462681, 30.370653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322872, 37.428535, 30.306414>,  <44.941692, 37.371628, 30.199348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322872, 37.428535, 30.306414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128133, -0.611180, 0.781051,
		0.274714, -0.778600, -0.564194,
		0.952950, 0.142274, 0.267664,
		45.608757, 37.471218, 30.386713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186226, 36.709637, 30.369276>,  <44.941692, 37.371628, 30.199348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186226, 36.709637, 30.369276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473946, 36.953861, 30.501833>,  <45.646580, 37.100395, 30.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473946, 36.953861, 30.501833>,  <45.186226, 36.709637, 30.369276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473946, 36.953861, 30.501833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017439, -0.492752, 0.869995,
		0.694479, -0.620010, -0.365085,
		0.719302, 0.610560, 0.331393,
		45.689735, 37.137028, 30.601252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730976, 36.305611, 30.601286>,  <45.186226, 36.709637, 30.369276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730976, 36.305611, 30.601286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768223, 36.646912, 30.806534>,  <45.790573, 36.851692, 30.929682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768223, 36.646912, 30.806534>,  <45.730976, 36.305611, 30.601286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768223, 36.646912, 30.806534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102968, -0.520848, 0.847417,
		0.990316, -0.026075, -0.136359,
		0.093119, 0.853251, 0.513119,
		45.796158, 36.902885, 30.960470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179546, 36.143810, 31.179224>,  <45.730976, 36.305611, 30.601286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179546, 36.143810, 31.179224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003101, 36.484894, 31.291151>,  <45.897232, 36.689545, 31.358307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003101, 36.484894, 31.291151>,  <46.179546, 36.143810, 31.179224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003101, 36.484894, 31.291151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063971, -0.340872, 0.937930,
		0.895167, 0.395835, 0.204913,
		-0.441115, 0.852713, 0.279816,
		45.870766, 36.740707, 31.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509651, 36.303055, 31.808472>,  <46.179546, 36.143810, 31.179224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509651, 36.303055, 31.808472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172955, 36.518879, 31.815821>,  <45.970936, 36.648373, 31.820230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172955, 36.518879, 31.815821>,  <46.509651, 36.303055, 31.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172955, 36.518879, 31.815821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034476, -0.087685, 0.995551,
		0.538776, 0.837365, 0.092411,
		-0.841743, 0.539565, 0.018374,
		45.920433, 36.680748, 31.821333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627777, 36.733418, 32.368851>,  <46.509651, 36.303055, 31.808472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627777, 36.733418, 32.368851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236206, 36.741898, 32.287613>,  <46.001263, 36.746986, 32.238869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236206, 36.741898, 32.287613>,  <46.627777, 36.733418, 32.368851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236206, 36.741898, 32.287613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202768, -0.218364, 0.954569,
		-0.024111, 0.975637, 0.218062,
		-0.978930, 0.021200, -0.203093,
		45.942528, 36.748257, 32.226685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353226, 37.199226, 32.802814>,  <46.627777, 36.733418, 32.368851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353226, 37.199226, 32.802814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029053, 36.986931, 32.703606>,  <45.834549, 36.859554, 32.644081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029053, 36.986931, 32.703606>,  <46.353226, 37.199226, 32.802814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029053, 36.986931, 32.703606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135017, -0.242753, 0.960646,
		-0.570059, 0.812027, 0.125077,
		-0.810434, -0.530738, -0.248021,
		45.785923, 36.827709, 32.629200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768578, 37.448692, 33.229473>,  <46.353226, 37.199226, 32.802814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768578, 37.448692, 33.229473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638805, 37.090263, 33.108276>,  <45.560944, 36.875206, 33.035561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638805, 37.090263, 33.108276>,  <45.768578, 37.448692, 33.229473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638805, 37.090263, 33.108276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308465, -0.202581, 0.929414,
		-0.894201, 0.394990, -0.210683,
		-0.324429, -0.896071, -0.302988,
		45.541477, 36.821442, 33.017380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077961, 37.397541, 33.532562>,  <45.768578, 37.448692, 33.229473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077961, 37.397541, 33.532562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185837, 37.027813, 33.424557>,  <45.250561, 36.805977, 33.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185837, 37.027813, 33.424557>,  <45.077961, 37.397541, 33.532562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185837, 37.027813, 33.424557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247363, -0.337487, 0.908247,
		-0.930634, -0.178152, -0.319658,
		0.269687, -0.924318, -0.270009,
		45.266743, 36.750519, 33.343555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548656, 36.868229, 33.723137>,  <45.077961, 37.397541, 33.532562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548656, 36.868229, 33.723137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881584, 36.646603, 33.716778>,  <45.081341, 36.513626, 33.712963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881584, 36.646603, 33.716778>,  <44.548656, 36.868229, 33.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881584, 36.646603, 33.716778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366764, -0.572013, 0.733680,
		-0.415603, -0.604825, -0.679309,
		0.832322, -0.554065, -0.015902,
		45.131279, 36.480385, 33.712006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239418, 36.253536, 33.716492>,  <44.548656, 36.868229, 33.723137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239418, 36.253536, 33.716492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613556, 36.187443, 33.841602>,  <44.838039, 36.147789, 33.916668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613556, 36.187443, 33.841602>,  <44.239418, 36.253536, 33.716492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613556, 36.187443, 33.841602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338357, -0.675779, 0.654857,
		0.103162, -0.718347, -0.687994,
		0.935346, -0.165231, 0.312772,
		44.894161, 36.137875, 33.935432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233849, 35.630501, 33.620773>,  <44.239418, 36.253536, 33.716492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233849, 35.630501, 33.620773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532330, 35.725109, 33.869690>,  <44.711418, 35.781876, 34.019039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532330, 35.725109, 33.869690>,  <44.233849, 35.630501, 33.620773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532330, 35.725109, 33.869690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296534, -0.718815, 0.628787,
		0.596031, -0.653731, -0.466244,
		0.746200, 0.236519, 0.622289,
		44.756191, 35.796066, 34.056377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535343, 35.049183, 33.686661>,  <44.233849, 35.630501, 33.620773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535343, 35.049183, 33.686661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656254, 35.249100, 34.011333>,  <44.728802, 35.369049, 34.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656254, 35.249100, 34.011333>,  <44.535343, 35.049183, 33.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656254, 35.249100, 34.011333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324096, -0.746902, 0.580602,
		0.896431, -0.438568, -0.063791,
		0.302279, 0.499795, 0.811685,
		44.746937, 35.399036, 34.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747791, 34.573338, 34.170574>,  <44.535343, 35.049183, 33.686661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747791, 34.573338, 34.170574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719105, 34.891106, 34.411819>,  <44.701893, 35.081768, 34.556568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719105, 34.891106, 34.411819>,  <44.747791, 34.573338, 34.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719105, 34.891106, 34.411819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235444, -0.601068, 0.763730,
		0.969238, -0.087227, 0.230150,
		-0.071718, 0.794423, 0.603115,
		44.697590, 35.129433, 34.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149704, 34.354496, 34.728283>,  <44.747791, 34.573338, 34.170574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149704, 34.354496, 34.728283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891029, 34.625435, 34.868572>,  <44.735825, 34.787998, 34.952747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891029, 34.625435, 34.868572>,  <45.149704, 34.354496, 34.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891029, 34.625435, 34.868572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179303, -0.581917, 0.793235,
		0.741384, 0.450087, 0.497767,
		-0.646684, 0.677343, 0.350722,
		44.697025, 34.828636, 34.973789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299286, 34.474289, 35.426098>,  <45.149704, 34.354496, 34.728283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299286, 34.474289, 35.426098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909401, 34.522217, 35.350651>,  <44.675468, 34.550976, 35.305382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909401, 34.522217, 35.350651>,  <45.299286, 34.474289, 35.426098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909401, 34.522217, 35.350651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219792, -0.666400, 0.712463,
		-0.040327, 0.735904, 0.675884,
		-0.974713, 0.119823, -0.188619,
		44.616985, 34.558163, 35.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980915, 34.310856, 35.798199>,  <45.299286, 34.474289, 35.426098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980915, 34.310856, 35.798199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263760, 34.556820, 35.937840>,  <46.433468, 34.704399, 36.021626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263760, 34.556820, 35.937840>,  <45.980915, 34.310856, 35.798199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263760, 34.556820, 35.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701342, -0.547057, -0.456999,
		-0.090034, 0.567992, -0.818095,
		0.707116, 0.614910, 0.349103,
		46.475895, 34.741291, 36.042572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355049, 34.613903, 35.325256>,  <45.980915, 34.310856, 35.798199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355049, 34.613903, 35.325256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614243, 34.563786, 35.625767>,  <46.769760, 34.533714, 35.806072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614243, 34.563786, 35.625767>,  <46.355049, 34.613903, 35.325256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614243, 34.563786, 35.625767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668998, -0.377887, -0.640034,
		0.364089, 0.917335, -0.161045,
		0.647982, -0.125291, 0.751280,
		46.808636, 34.526199, 35.851151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796902, 35.172283, 35.137989>,  <46.355049, 34.613903, 35.325256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796902, 35.172283, 35.137989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940235, 34.843769, 35.315567>,  <47.026234, 34.646660, 35.422115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940235, 34.843769, 35.315567>,  <46.796902, 35.172283, 35.137989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940235, 34.843769, 35.315567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505455, -0.229134, -0.831873,
		0.784930, 0.522479, 0.333018,
		0.358330, -0.821288, 0.443944,
		47.047733, 34.597382, 35.448750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441051, 35.257599, 34.879539>,  <46.796902, 35.172283, 35.137989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441051, 35.257599, 34.879539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371452, 34.890583, 35.022560>,  <47.329693, 34.670372, 35.108372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371452, 34.890583, 35.022560>,  <47.441051, 35.257599, 34.879539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371452, 34.890583, 35.022560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642897, -0.380882, -0.664539,
		0.745927, 0.114241, 0.656157,
		-0.174001, -0.917539, 0.357556,
		47.319252, 34.615322, 35.129826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.940449, 33.430534, 42.103382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.615456, 33.254910, 42.256794>,  <39.420460, 33.149536, 42.348843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.615456, 33.254910, 42.256794>,  <39.940449, 33.430534, 42.103382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615456, 33.254910, 42.256794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457854, 0.073314, -0.885999,
		0.360891, -0.895460, -0.260593,
		-0.812481, -0.439063, 0.383532,
		39.371712, 33.123192, 42.371853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658169, 32.765720, 41.638321>,  <39.940449, 33.430534, 42.103382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658169, 32.765720, 41.638321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362648, 32.955257, 41.830009>,  <39.185337, 33.068981, 41.945023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362648, 32.955257, 41.830009>,  <39.658169, 32.765720, 41.638321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362648, 32.955257, 41.830009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521619, 0.048192, -0.851816,
		-0.426720, -0.879291, 0.211560,
		-0.738798, 0.473841, 0.479219,
		39.141006, 33.097408, 41.973774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197315, 32.574150, 41.199726>,  <39.658169, 32.765720, 41.638321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197315, 32.574150, 41.199726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980831, 32.819145, 41.430191>,  <38.850941, 32.966141, 41.568470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980831, 32.819145, 41.430191>,  <39.197315, 32.574150, 41.199726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980831, 32.819145, 41.430191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710951, 0.032607, -0.702485,
		-0.449047, -0.789810, 0.417799,
		-0.541207, 0.612484, 0.576159,
		38.818470, 33.002892, 41.603039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594025, 32.316765, 41.154556>,  <39.197315, 32.574150, 41.199726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594025, 32.316765, 41.154556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532665, 32.699142, 41.254665>,  <38.495850, 32.928570, 41.314732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532665, 32.699142, 41.254665>,  <38.594025, 32.316765, 41.154556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532665, 32.699142, 41.254665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726442, 0.062599, -0.684371,
		-0.669888, -0.286789, 0.684837,
		-0.153400, 0.955947, 0.250270,
		38.486645, 32.985928, 41.329746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911686, 32.393200, 41.311760>,  <38.594025, 32.316765, 41.154556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911686, 32.393200, 41.311760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040451, 32.760620, 41.219990>,  <38.117710, 32.981071, 41.164928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040451, 32.760620, 41.219990>,  <37.911686, 32.393200, 41.311760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040451, 32.760620, 41.219990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671970, 0.050964, -0.738822,
		-0.666954, 0.392003, 0.633645,
		0.321914, 0.918552, -0.229423,
		38.137024, 33.036186, 41.151161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350502, 32.776649, 41.327988>,  <37.911686, 32.393200, 41.311760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350502, 32.776649, 41.327988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590054, 33.000694, 41.099037>,  <37.733784, 33.135120, 40.961666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590054, 33.000694, 41.099037>,  <37.350502, 32.776649, 41.327988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590054, 33.000694, 41.099037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726584, 0.079472, -0.682466,
		-0.336771, 0.824595, 0.454564,
		0.598883, 0.560114, -0.572373,
		37.769718, 33.168728, 40.927326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006809, 33.391392, 41.012486>,  <37.350502, 32.776649, 41.327988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006809, 33.391392, 41.012486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325359, 33.356979, 40.773026>,  <37.516491, 33.336334, 40.629349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325359, 33.356979, 40.773026>,  <37.006809, 33.391392, 41.012486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325359, 33.356979, 40.773026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548956, 0.312603, -0.775194,
		0.253828, 0.945980, 0.201725,
		0.796378, -0.086028, -0.598649,
		37.564274, 33.331169, 40.593430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065514, 34.019135, 40.553604>,  <37.006809, 33.391392, 41.012486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065514, 34.019135, 40.553604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288109, 33.744106, 40.367023>,  <37.421665, 33.579090, 40.255074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288109, 33.744106, 40.367023>,  <37.065514, 34.019135, 40.553604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288109, 33.744106, 40.367023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484449, 0.187591, -0.854470,
		0.675007, 0.701471, -0.228699,
		0.556484, -0.687566, -0.466452,
		37.455055, 33.537838, 40.227089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239265, 34.264000, 39.958282>,  <37.065514, 34.019135, 40.553604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239265, 34.264000, 39.958282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320671, 33.880699, 39.877953>,  <37.369514, 33.650719, 39.829754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320671, 33.880699, 39.877953>,  <37.239265, 34.264000, 39.958282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320671, 33.880699, 39.877953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265979, 0.143288, -0.953270,
		0.942251, 0.247421, -0.225714,
		0.203517, -0.958254, -0.200822,
		37.381725, 33.593224, 39.817707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602871, 34.300564, 39.456879>,  <37.239265, 34.264000, 39.958282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602871, 34.300564, 39.456879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435009, 33.938080, 39.436199>,  <37.334293, 33.720589, 39.423794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435009, 33.938080, 39.436199>,  <37.602871, 34.300564, 39.456879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435009, 33.938080, 39.436199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141645, 0.121637, -0.982416,
		0.896565, -0.404951, -0.179405,
		-0.419652, -0.906212, -0.051696,
		37.309113, 33.666218, 39.420689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965572, 33.980007, 38.951725>,  <37.602871, 34.300564, 39.456879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965572, 33.980007, 38.951725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617939, 33.788536, 39.001633>,  <37.409359, 33.673653, 39.031578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617939, 33.788536, 39.001633>,  <37.965572, 33.980007, 38.951725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617939, 33.788536, 39.001633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147573, 0.010149, -0.988999,
		0.472144, -0.877933, -0.079460,
		-0.869081, -0.478676, 0.124768,
		37.357216, 33.644932, 39.039062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891548, 33.546520, 38.359364>,  <37.965572, 33.980007, 38.951725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891548, 33.546520, 38.359364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516792, 33.517075, 38.496082>,  <37.291939, 33.499409, 38.578114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516792, 33.517075, 38.496082>,  <37.891548, 33.546520, 38.359364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516792, 33.517075, 38.496082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344363, 0.025217, -0.938498,
		0.060476, -0.996967, -0.048978,
		-0.936887, -0.073623, 0.341794,
		37.235725, 33.494991, 38.598621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609581, 32.949284, 38.025017>,  <37.891548, 33.546520, 38.359364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609581, 32.949284, 38.025017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338253, 33.208755, 38.163059>,  <37.175457, 33.364437, 38.245884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338253, 33.208755, 38.163059>,  <37.609581, 32.949284, 38.025017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338253, 33.208755, 38.163059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371835, 0.102050, -0.922672,
		-0.633738, -0.754188, 0.171980,
		-0.678317, 0.648681, 0.345107,
		37.134758, 33.403358, 38.266590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943752, 32.763790, 37.713821>,  <37.609581, 32.949284, 38.025017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943752, 32.763790, 37.713821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868732, 33.132683, 37.849060>,  <36.823723, 33.354019, 37.930202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868732, 33.132683, 37.849060>,  <36.943752, 32.763790, 37.713821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868732, 33.132683, 37.849060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476201, 0.215681, -0.852475,
		-0.859104, -0.320880, 0.398719,
		-0.187546, 0.922235, 0.338096,
		36.812469, 33.409355, 37.950489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313629, 32.843143, 37.407082>,  <36.943752, 32.763790, 37.713821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313629, 32.843143, 37.407082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474945, 33.190350, 37.522949>,  <36.571735, 33.398674, 37.592468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474945, 33.190350, 37.522949>,  <36.313629, 32.843143, 37.407082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474945, 33.190350, 37.522949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532897, 0.480118, -0.696784,
		-0.743892, 0.126645, 0.656190,
		0.403293, 0.868014, 0.289667,
		36.595932, 33.450752, 37.609848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830460, 33.256798, 37.404037>,  <36.313629, 32.843143, 37.407082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830460, 33.256798, 37.404037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159382, 33.482178, 37.372189>,  <36.356735, 33.617405, 37.353077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159382, 33.482178, 37.372189>,  <35.830460, 33.256798, 37.404037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159382, 33.482178, 37.372189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439568, 0.540092, -0.717691,
		-0.361376, 0.625163, 0.691794,
		0.822306, 0.563447, -0.079626,
		36.406075, 33.651211, 37.348301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575836, 33.930153, 37.324593>,  <35.830460, 33.256798, 37.404037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575836, 33.930153, 37.324593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950356, 33.898991, 37.187611>,  <36.175068, 33.880295, 37.105423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950356, 33.898991, 37.187611>,  <35.575836, 33.930153, 37.324593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950356, 33.898991, 37.187611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238150, 0.575820, -0.782122,
		0.258120, 0.813856, 0.520588,
		0.936300, -0.077903, -0.342451,
		36.231247, 33.875618, 37.084877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599270, 34.502907, 36.949924>,  <35.575836, 33.930153, 37.324593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599270, 34.502907, 36.949924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921532, 34.303913, 36.821278>,  <36.114887, 34.184517, 36.744091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921532, 34.303913, 36.821278>,  <35.599270, 34.502907, 36.949924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921532, 34.303913, 36.821278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147233, 0.357720, -0.922149,
		0.573800, 0.790284, 0.214953,
		0.805653, -0.497481, -0.321616,
		36.163227, 34.154671, 36.724792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986153, 35.010365, 36.504829>,  <35.599270, 34.502907, 36.949924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986153, 35.010365, 36.504829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100647, 34.645115, 36.388710>,  <36.169346, 34.425964, 36.319038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100647, 34.645115, 36.388710>,  <35.986153, 35.010365, 36.504829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100647, 34.645115, 36.388710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177944, 0.247048, -0.952525,
		0.941490, 0.324308, -0.091770,
		0.286240, -0.913122, -0.290302,
		36.186520, 34.371178, 36.301620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444805, 35.085808, 35.917667>,  <35.986153, 35.010365, 36.504829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444805, 35.085808, 35.917667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306755, 34.713951, 35.866051>,  <36.223923, 34.490837, 35.835079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306755, 34.713951, 35.866051>,  <36.444805, 35.085808, 35.917667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306755, 34.713951, 35.866051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122980, 0.181098, -0.975746,
		0.930464, -0.320886, -0.176829,
		-0.345127, -0.929643, -0.129042,
		36.203217, 34.435059, 35.827339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677876, 34.920895, 35.225414>,  <36.444805, 35.085808, 35.917667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677876, 34.920895, 35.225414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412209, 34.630119, 35.295212>,  <36.252808, 34.455654, 35.337090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412209, 34.630119, 35.295212>,  <36.677876, 34.920895, 35.225414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412209, 34.630119, 35.295212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291794, 0.037171, -0.955759,
		0.688290, -0.685697, -0.236803,
		-0.664163, -0.726937, 0.174498,
		36.212959, 34.412037, 35.347561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773342, 34.280827, 34.759758>,  <36.677876, 34.920895, 35.225414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773342, 34.280827, 34.759758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406334, 34.372799, 34.889545>,  <36.186127, 34.427982, 34.967419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406334, 34.372799, 34.889545>,  <36.773342, 34.280827, 34.759758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406334, 34.372799, 34.889545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304084, 0.120182, -0.945034,
		-0.256293, -0.965756, -0.040349,
		-0.917522, 0.229936, 0.324473,
		36.131077, 34.441780, 34.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566605, 34.003090, 34.702797>,  <36.773342, 34.280827, 34.759758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566605, 34.003090, 34.702797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893394, 33.900562, 34.496166>,  <38.089470, 33.839046, 34.372189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893394, 33.900562, 34.496166>,  <37.566605, 34.003090, 34.702797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893394, 33.900562, 34.496166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508777, -0.101314, 0.854916,
		-0.271465, -0.961268, 0.047637,
		0.816977, -0.256317, -0.516575,
		38.138489, 33.823666, 34.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819054, 33.351070, 34.907585>,  <37.566605, 34.003090, 34.702797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819054, 33.351070, 34.907585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147339, 33.509373, 34.742756>,  <38.344311, 33.604355, 34.643860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147339, 33.509373, 34.742756>,  <37.819054, 33.351070, 34.907585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147339, 33.509373, 34.742756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531381, -0.263755, 0.805027,
		0.209904, -0.879667, -0.426763,
		0.820716, 0.395752, -0.412074,
		38.393555, 33.628098, 34.619133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435345, 32.945522, 35.145771>,  <37.819054, 33.351070, 34.907585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435345, 32.945522, 35.145771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596855, 33.290276, 35.023052>,  <38.693764, 33.497128, 34.949421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596855, 33.290276, 35.023052>,  <38.435345, 32.945522, 35.145771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596855, 33.290276, 35.023052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701105, -0.076083, 0.708987,
		0.587719, -0.501375, -0.634988,
		0.403780, 0.861879, -0.306801,
		38.717991, 33.548840, 34.931011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114212, 32.809731, 35.280998>,  <38.435345, 32.945522, 35.145771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114212, 32.809731, 35.280998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104366, 33.204716, 35.218628>,  <39.098457, 33.441708, 35.181206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104366, 33.204716, 35.218628>,  <39.114212, 32.809731, 35.280998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104366, 33.204716, 35.218628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771489, 0.117956, 0.625212,
		0.635766, -0.104904, -0.764720,
		-0.024616, 0.987462, -0.155925,
		39.096981, 33.500954, 35.171852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743858, 32.982395, 35.015152>,  <39.114212, 32.809731, 35.280998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743858, 32.982395, 35.015152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581196, 33.297810, 35.199696>,  <39.483601, 33.487057, 35.310421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581196, 33.297810, 35.199696>,  <39.743858, 32.982395, 35.015152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581196, 33.297810, 35.199696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698531, -0.057098, 0.713298,
		0.588801, 0.612337, -0.527596,
		-0.406654, 0.788532, 0.461356,
		39.459198, 33.534370, 35.338100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293289, 33.268875, 35.294468>,  <39.743858, 32.982395, 35.015152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293289, 33.268875, 35.294468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004250, 33.438862, 35.512550>,  <39.830826, 33.540855, 35.643398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004250, 33.438862, 35.512550>,  <40.293289, 33.268875, 35.294468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004250, 33.438862, 35.512550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542196, -0.140807, 0.828370,
		0.428798, 0.894190, -0.128668,
		-0.722603, 0.424967, 0.545204,
		39.787468, 33.566353, 35.676113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520802, 33.848087, 35.690704>,  <40.293289, 33.268875, 35.294468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520802, 33.848087, 35.690704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203316, 33.709431, 35.890648>,  <40.012825, 33.626236, 36.010616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203316, 33.709431, 35.890648>,  <40.520802, 33.848087, 35.690704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203316, 33.709431, 35.890648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512820, 0.060653, 0.856351,
		-0.327162, 0.936036, 0.129622,
		-0.793713, -0.346638, 0.499862,
		39.965202, 33.605438, 36.040607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533825, 34.258530, 36.313671>,  <40.520802, 33.848087, 35.690704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533825, 34.258530, 36.313671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.301029, 33.946854, 36.406757>,  <40.161354, 33.759850, 36.462608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.301029, 33.946854, 36.406757>,  <40.533825, 34.258530, 36.313671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301029, 33.946854, 36.406757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374820, -0.003067, 0.927092,
		-0.721667, 0.626781, 0.293841,
		-0.581985, -0.779190, 0.232717,
		40.126434, 33.713097, 36.476574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159470, 34.381355, 36.857616>,  <40.533825, 34.258530, 36.313671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159470, 34.381355, 36.857616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.154572, 33.981403, 36.853836>,  <40.151630, 33.741432, 36.851566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.154572, 33.981403, 36.853836>,  <40.159470, 34.381355, 36.857616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154572, 33.981403, 36.853836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372421, -0.013336, 0.927968,
		-0.927983, 0.007845, 0.372540,
		-0.012248, -0.999880, -0.009454,
		40.150898, 33.681438, 36.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003105, 34.203312, 37.551601>,  <40.159470, 34.381355, 36.857616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003105, 34.203312, 37.551601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120571, 33.848083, 37.410126>,  <40.191051, 33.634949, 37.325241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120571, 33.848083, 37.410126>,  <40.003105, 34.203312, 37.551601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120571, 33.848083, 37.410126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284889, -0.271884, 0.919194,
		-0.912469, -0.370696, 0.173159,
		0.293663, -0.888067, -0.353693,
		40.208672, 33.581665, 37.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643295, 33.786827, 38.072136>,  <40.003105, 34.203312, 37.551601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643295, 33.786827, 38.072136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929539, 33.591377, 37.872475>,  <40.101284, 33.474106, 37.752678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929539, 33.591377, 37.872475>,  <39.643295, 33.786827, 38.072136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929539, 33.591377, 37.872475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494677, -0.150006, 0.856033,
		-0.493156, -0.859501, 0.134368,
		0.715605, -0.488627, -0.499152,
		40.144222, 33.444790, 37.722729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753593, 33.172791, 38.508892>,  <39.643295, 33.786827, 38.072136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753593, 33.172791, 38.508892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.069748, 33.241631, 38.273716>,  <40.259441, 33.282932, 38.132610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.069748, 33.241631, 38.273716>,  <39.753593, 33.172791, 38.508892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069748, 33.241631, 38.273716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611123, -0.154759, 0.776259,
		0.042603, -0.972848, -0.227492,
		0.790388, 0.172096, -0.587936,
		40.306866, 33.293259, 38.097336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200634, 32.591866, 38.539017>,  <39.753593, 33.172791, 38.508892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200634, 32.591866, 38.539017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.403591, 32.921169, 38.437191>,  <40.525364, 33.118752, 38.376095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.403591, 32.921169, 38.437191>,  <40.200634, 32.591866, 38.539017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403591, 32.921169, 38.437191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603254, -0.128399, 0.787146,
		0.615336, -0.552960, -0.561780,
		0.507392, 0.823255, -0.254567,
		40.555809, 33.168144, 38.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943367, 32.563419, 38.353470>,  <40.200634, 32.591866, 38.539017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943367, 32.563419, 38.353470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.899323, 32.937881, 38.487034>,  <40.872894, 33.162560, 38.567173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.899323, 32.937881, 38.487034>,  <40.943367, 32.563419, 38.353470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899323, 32.937881, 38.487034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745974, -0.144164, 0.650184,
		0.656809, 0.320682, -0.682470,
		-0.110115, 0.936152, 0.333909,
		40.866287, 33.218727, 38.587208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649250, 32.826427, 38.569710>,  <40.943367, 32.563419, 38.353470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649250, 32.826427, 38.569710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.436504, 33.115234, 38.746712>,  <41.308857, 33.288517, 38.852913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.436504, 33.115234, 38.746712>,  <41.649250, 32.826427, 38.569710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436504, 33.115234, 38.746712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533870, -0.119736, 0.837046,
		0.657344, 0.681438, -0.321779,
		-0.531866, 0.722015, 0.442507,
		41.276943, 33.331841, 38.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152000, 33.085274, 38.991165>,  <41.649250, 32.826427, 38.569710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152000, 33.085274, 38.991165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.790657, 33.189941, 39.127094>,  <41.573853, 33.252743, 39.208652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.790657, 33.189941, 39.127094>,  <42.152000, 33.085274, 38.991165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790657, 33.189941, 39.127094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339602, -0.047519, 0.939368,
		0.261949, 0.963988, -0.045936,
		-0.903357, 0.261667, 0.339820,
		41.519650, 33.268440, 39.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188343, 33.537113, 39.515041>,  <42.152000, 33.085274, 38.991165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188343, 33.537113, 39.515041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.806931, 33.434208, 39.577770>,  <41.578083, 33.372463, 39.615406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.806931, 33.434208, 39.577770>,  <42.188343, 33.537113, 39.515041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806931, 33.434208, 39.577770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142182, 0.074661, 0.987021,
		-0.265632, 0.963453, -0.034613,
		-0.953533, -0.257262, 0.156818,
		41.520870, 33.357029, 39.624817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012424, 33.914856, 40.153755>,  <42.188343, 33.537113, 39.515041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012424, 33.914856, 40.153755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.770508, 33.596905, 40.134205>,  <41.625359, 33.406136, 40.122475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.770508, 33.596905, 40.134205>,  <42.012424, 33.914856, 40.153755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770508, 33.596905, 40.134205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171906, -0.190229, 0.966572,
		-0.777606, 0.576177, 0.251695,
		-0.604796, -0.794879, -0.048875,
		41.589069, 33.358440, 40.119541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.382439, 33.970028, 40.756702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420605, 33.586311, 40.650383>,  <41.443504, 33.356079, 40.586590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420605, 33.586311, 40.650383>,  <41.382439, 33.970028, 40.756702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420605, 33.586311, 40.650383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068818, -0.260024, 0.963147,
		-0.993056, -0.110188, 0.041207,
		0.095413, -0.959294, -0.265802,
		41.449230, 33.298523, 40.570641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934460, 33.643223, 41.143803>,  <41.382439, 33.970028, 40.756702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934460, 33.643223, 41.143803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.170517, 33.339039, 41.035404>,  <41.312153, 33.156528, 40.970367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.170517, 33.339039, 41.035404>,  <40.934460, 33.643223, 41.143803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170517, 33.339039, 41.035404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229801, -0.480032, 0.846617,
		-0.773900, -0.437352, -0.458042,
		0.590144, -0.760455, -0.270993,
		41.347561, 33.110901, 40.954105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723019, 33.145515, 41.630398>,  <40.934460, 33.643223, 41.143803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723019, 33.145515, 41.630398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061462, 33.016529, 41.460636>,  <41.264526, 32.939137, 41.358780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061462, 33.016529, 41.460636>,  <40.723019, 33.145515, 41.630398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061462, 33.016529, 41.460636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299139, -0.371733, 0.878824,
		-0.441160, -0.870533, -0.218061,
		0.846105, -0.322472, -0.424404,
		41.315296, 32.919788, 41.333317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772827, 32.379505, 41.739166>,  <40.723019, 33.145515, 41.630398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772827, 32.379505, 41.739166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136398, 32.536659, 41.683338>,  <41.354542, 32.630951, 41.649841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136398, 32.536659, 41.683338>,  <40.772827, 32.379505, 41.739166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136398, 32.536659, 41.683338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292702, -0.362876, 0.884673,
		0.296931, -0.844961, -0.444829,
		0.908932, 0.392889, -0.139572,
		41.409077, 32.654526, 41.641468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199368, 31.834364, 41.976593>,  <40.772827, 32.379505, 41.739166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199368, 31.834364, 41.976593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.395702, 32.182804, 41.970169>,  <41.513504, 32.391869, 41.966316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.395702, 32.182804, 41.970169>,  <41.199368, 31.834364, 41.976593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395702, 32.182804, 41.970169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384665, -0.200134, 0.901099,
		0.781734, -0.448474, -0.433316,
		0.490841, 0.871101, -0.016061,
		41.542953, 32.444134, 41.965351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975410, 31.642832, 42.130409>,  <41.199368, 31.834364, 41.976593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975410, 31.642832, 42.130409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.902725, 32.028042, 42.209972>,  <41.859112, 32.259167, 42.257710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.902725, 32.028042, 42.209972>,  <41.975410, 31.642832, 42.130409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902725, 32.028042, 42.209972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426624, -0.105040, 0.898309,
		0.885986, 0.248096, -0.391761,
		-0.181717, 0.963024, 0.198908,
		41.848209, 32.316948, 42.269646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627838, 31.893862, 42.430824>,  <41.975410, 31.642832, 42.130409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627838, 31.893862, 42.430824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.348305, 32.153839, 42.550297>,  <42.180584, 32.309826, 42.621979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.348305, 32.153839, 42.550297>,  <42.627838, 31.893862, 42.430824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348305, 32.153839, 42.550297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463669, 0.093667, 0.881043,
		0.544652, 0.754189, -0.366816,
		-0.698832, 0.649943, 0.298678,
		42.138657, 32.348824, 42.639900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074127, 32.308556, 42.880943>,  <42.627838, 31.893862, 42.430824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074127, 32.308556, 42.880943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696129, 32.424545, 42.941471>,  <42.469330, 32.494137, 42.977787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696129, 32.424545, 42.941471>,  <43.074127, 32.308556, 42.880943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696129, 32.424545, 42.941471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243071, 0.313041, 0.918108,
		0.218856, 0.904390, -0.366306,
		-0.944997, 0.289972, 0.151320,
		42.412628, 32.511536, 42.986866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129486, 32.949177, 43.152412>,  <43.074127, 32.308556, 42.880943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129486, 32.949177, 43.152412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781071, 32.815559, 43.296474>,  <42.572021, 32.735390, 43.382912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781071, 32.815559, 43.296474>,  <43.129486, 32.949177, 43.152412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781071, 32.815559, 43.296474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315872, 0.180623, 0.931451,
		-0.376196, 0.925090, -0.051815,
		-0.871035, -0.334041, 0.360160,
		42.519760, 32.715347, 43.404522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124584, 33.256859, 43.832905>,  <43.129486, 32.949177, 43.152412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124584, 33.256859, 43.832905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.830353, 32.985928, 43.827904>,  <42.653816, 32.823368, 43.824905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.830353, 32.985928, 43.827904>,  <43.124584, 33.256859, 43.832905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830353, 32.985928, 43.827904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127517, -0.156555, 0.979403,
		-0.665335, 0.718830, 0.201529,
		-0.735574, -0.677329, -0.012498,
		42.609680, 32.782730, 43.824154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727432, 33.387791, 44.382893>,  <43.124584, 33.256859, 43.832905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727432, 33.387791, 44.382893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645054, 33.005302, 44.299728>,  <42.595627, 32.775810, 44.249828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645054, 33.005302, 44.299728>,  <42.727432, 33.387791, 44.382893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645054, 33.005302, 44.299728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062824, -0.199108, 0.977962,
		-0.976544, 0.214473, -0.019068,
		-0.205950, -0.956221, -0.207911,
		42.583267, 32.718437, 44.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150421, 33.236961, 44.895779>,  <42.727432, 33.387791, 44.382893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150421, 33.236961, 44.895779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.350735, 32.912857, 44.773998>,  <42.470921, 32.718395, 44.700928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.350735, 32.912857, 44.773998>,  <42.150421, 33.236961, 44.895779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350735, 32.912857, 44.773998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099019, -0.295800, 0.950104,
		-0.859892, -0.505940, -0.067900,
		0.500780, -0.810264, -0.304454,
		42.500969, 32.669777, 44.682663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761192, 32.643753, 45.281418>,  <42.150421, 33.236961, 44.895779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761192, 32.643753, 45.281418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.123306, 32.514545, 45.171066>,  <42.340576, 32.437019, 45.104855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.123306, 32.514545, 45.171066>,  <41.761192, 32.643753, 45.281418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123306, 32.514545, 45.171066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146153, -0.372949, 0.916269,
		-0.398865, -0.869808, -0.290416,
		0.905288, -0.323022, -0.275881,
		42.394894, 32.417641, 45.088303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807148, 31.941631, 45.442204>,  <41.761192, 32.643753, 45.281418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807148, 31.941631, 45.442204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187702, 32.062035, 45.416119>,  <42.416035, 32.134277, 45.400467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187702, 32.062035, 45.416119>,  <41.807148, 31.941631, 45.442204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187702, 32.062035, 45.416119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183881, -0.385282, 0.904293,
		0.247074, -0.872326, -0.421903,
		0.951390, 0.301007, -0.065212,
		42.473118, 32.152336, 45.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022446, 31.371069, 45.621941>,  <41.807148, 31.941631, 45.442204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022446, 31.371069, 45.621941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319012, 31.623299, 45.713749>,  <42.496952, 31.774637, 45.768833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319012, 31.623299, 45.713749>,  <42.022446, 31.371069, 45.621941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319012, 31.623299, 45.713749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042752, -0.385720, 0.921625,
		0.669684, -0.673494, -0.312937,
		0.741414, 0.630576, 0.229518,
		42.541435, 31.812471, 45.782604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601177, 30.894695, 45.992500>,  <42.022446, 31.371069, 45.621941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601177, 30.894695, 45.992500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690018, 31.280666, 46.048481>,  <42.743324, 31.512249, 46.082069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690018, 31.280666, 46.048481>,  <42.601177, 30.894695, 45.992500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690018, 31.280666, 46.048481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332529, -0.209893, 0.919440,
		0.916566, -0.157676, -0.367484,
		0.222106, 0.964927, 0.139949,
		42.756649, 31.570145, 46.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276806, 30.882578, 46.224537>,  <42.601177, 30.894695, 45.992500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276806, 30.882578, 46.224537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118294, 31.230820, 46.341164>,  <43.023186, 31.439764, 46.411140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118294, 31.230820, 46.341164>,  <43.276806, 30.882578, 46.224537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118294, 31.230820, 46.341164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262238, -0.197007, 0.944679,
		0.879883, 0.450816, -0.150236,
		-0.396279, 0.870605, 0.291564,
		42.999409, 31.492001, 46.428635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639423, 31.096573, 46.741936>,  <43.276806, 30.882578, 46.224537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639423, 31.096573, 46.741936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.324280, 31.331989, 46.814491>,  <43.135193, 31.473238, 46.858025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.324280, 31.331989, 46.814491>,  <43.639423, 31.096573, 46.741936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324280, 31.331989, 46.814491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201303, -0.032258, 0.978998,
		0.582030, 0.807825, -0.093060,
		-0.787857, 0.588539, 0.181393,
		43.087921, 31.508551, 46.868908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942562, 31.563675, 47.198952>,  <43.639423, 31.096573, 46.741936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942562, 31.563675, 47.198952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544411, 31.598253, 47.215664>,  <43.305519, 31.618999, 47.225693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544411, 31.598253, 47.215664>,  <43.942562, 31.563675, 47.198952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544411, 31.598253, 47.215664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045506, 0.041584, 0.998098,
		0.084543, 0.995388, -0.045326,
		-0.995380, 0.086445, 0.041781,
		43.245796, 31.624187, 47.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782841, 32.175430, 47.701855>,  <43.942562, 31.563675, 47.198952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782841, 32.175430, 47.701855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.479446, 31.915663, 47.680065>,  <43.297409, 31.759804, 47.666992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.479446, 31.915663, 47.680065>,  <43.782841, 32.175430, 47.701855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479446, 31.915663, 47.680065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016000, -0.065004, 0.997757,
		-0.651498, 0.757651, 0.038914,
		-0.758481, -0.649414, -0.054472,
		43.251904, 31.720839, 47.663723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462109, 32.452995, 48.176682>,  <43.782841, 32.175430, 47.701855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462109, 32.452995, 48.176682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.319824, 32.080536, 48.144577>,  <43.234455, 31.857061, 48.125313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.319824, 32.080536, 48.144577>,  <43.462109, 32.452995, 48.176682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319824, 32.080536, 48.144577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028018, -0.075213, 0.996774,
		-0.934177, 0.356809, 0.000665,
		-0.355708, -0.931145, -0.080260,
		43.213112, 31.801193, 48.120499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896996, 32.318516, 48.662304>,  <43.462109, 32.452995, 48.176682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896996, 32.318516, 48.662304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049797, 31.957457, 48.582996>,  <43.141476, 31.740822, 48.535412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049797, 31.957457, 48.582996>,  <42.896996, 32.318516, 48.662304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049797, 31.957457, 48.582996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066349, -0.240767, 0.968313,
		-0.921777, -0.356741, -0.151862,
		0.382001, -0.902645, -0.198264,
		43.164398, 31.686663, 48.523518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512432, 31.775860, 49.043823>,  <42.896996, 32.318516, 48.662304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512432, 31.775860, 49.043823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.852230, 31.601778, 48.924522>,  <43.056110, 31.497330, 48.852940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.852230, 31.601778, 48.924522>,  <42.512432, 31.775860, 49.043823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852230, 31.601778, 48.924522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074711, -0.460384, 0.884570,
		-0.522282, -0.773720, -0.358579,
		0.849494, -0.435206, -0.298256,
		43.107079, 31.471216, 48.835045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539532, 31.037745, 48.981705>,  <42.512432, 31.775860, 49.043823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539532, 31.037745, 48.981705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.892834, 31.186043, 49.096527>,  <43.104816, 31.275023, 49.165421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.892834, 31.186043, 49.096527>,  <42.539532, 31.037745, 48.981705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892834, 31.186043, 49.096527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053682, -0.688144, 0.723586,
		0.465803, -0.623704, -0.627711,
		0.883258, 0.370745, 0.287058,
		43.157810, 31.297266, 49.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968533, 30.684853, 49.224258>,  <42.539532, 31.037745, 48.981705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968533, 30.684853, 49.224258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623322, 30.587376, 49.401253>,  <41.416195, 30.528891, 49.507450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623322, 30.587376, 49.401253>,  <41.968533, 30.684853, 49.224258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623322, 30.587376, 49.401253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489817, 0.189496, -0.850982,
		0.123521, -0.951162, -0.282902,
		-0.863031, -0.243685, 0.442488,
		41.364414, 30.514269, 49.534000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616337, 30.315706, 48.740067>,  <41.968533, 30.684853, 49.224258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616337, 30.315706, 48.740067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338375, 30.456959, 48.990635>,  <41.171597, 30.541710, 49.140976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338375, 30.456959, 48.990635>,  <41.616337, 30.315706, 48.740067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338375, 30.456959, 48.990635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628377, 0.125357, -0.767742,
		-0.349642, -0.927137, 0.134790,
		-0.694905, 0.353133, 0.626422,
		41.129902, 30.562899, 49.178562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956314, 30.056267, 48.426956>,  <41.616337, 30.315706, 48.740067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956314, 30.056267, 48.426956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818291, 30.347782, 48.663532>,  <40.735477, 30.522692, 48.805477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818291, 30.347782, 48.663532>,  <40.956314, 30.056267, 48.426956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818291, 30.347782, 48.663532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646319, 0.272436, -0.712776,
		-0.680592, -0.628210, 0.377023,
		-0.345059, 0.728787, 0.591442,
		40.714771, 30.566418, 48.840965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238682, 30.035440, 48.394348>,  <40.956314, 30.056267, 48.426956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238682, 30.035440, 48.394348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332298, 30.404123, 48.518074>,  <40.388466, 30.625334, 48.592312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332298, 30.404123, 48.518074>,  <40.238682, 30.035440, 48.394348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332298, 30.404123, 48.518074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574780, 0.387774, -0.720596,
		-0.784126, -0.009143, 0.620534,
		0.234038, 0.921709, 0.309319,
		40.402512, 30.680635, 48.610870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495117, 30.521704, 48.373508>,  <40.238682, 30.035440, 48.394348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495117, 30.521704, 48.373508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824970, 30.747845, 48.381157>,  <40.022881, 30.883530, 48.385746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824970, 30.747845, 48.381157>,  <39.495117, 30.521704, 48.373508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824970, 30.747845, 48.381157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278319, 0.434925, -0.856375,
		-0.492470, 0.700869, 0.516000,
		0.824628, 0.565352, 0.019122,
		40.072357, 30.917450, 48.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263260, 31.091003, 47.998085>,  <39.495117, 30.521704, 48.373508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263260, 31.091003, 47.998085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653358, 31.177883, 48.014679>,  <39.887417, 31.230011, 48.024635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653358, 31.177883, 48.014679>,  <39.263260, 31.091003, 47.998085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653358, 31.177883, 48.014679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067777, 0.472178, -0.878894,
		-0.210481, 0.854326, 0.475210,
		0.975246, 0.217199, 0.041481,
		39.945930, 31.243042, 48.027122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330456, 31.739119, 47.926464>,  <39.263260, 31.091003, 47.998085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330456, 31.739119, 47.926464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665024, 31.576227, 47.779732>,  <39.865765, 31.478493, 47.691692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665024, 31.576227, 47.779732>,  <39.330456, 31.739119, 47.926464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665024, 31.576227, 47.779732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, 0.313310, -0.916333,
		0.488090, 0.857905, 0.160520,
		0.836419, -0.407229, -0.366835,
		39.915951, 31.454058, 47.669682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591286, 32.231789, 47.432350>,  <39.330456, 31.739119, 47.926464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591286, 32.231789, 47.432350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803707, 31.899780, 47.364174>,  <39.931160, 31.700575, 47.323269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803707, 31.899780, 47.364174>,  <39.591286, 32.231789, 47.432350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803707, 31.899780, 47.364174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074746, 0.246249, -0.966320,
		0.844034, 0.500430, 0.192813,
		0.531056, -0.830019, -0.170438,
		39.963024, 31.650774, 47.313042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136368, 32.370560, 47.055206>,  <39.591286, 32.231789, 47.432350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136368, 32.370560, 47.055206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121136, 31.976679, 46.987202>,  <40.111996, 31.740349, 46.946400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121136, 31.976679, 46.987202>,  <40.136368, 32.370560, 47.055206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121136, 31.976679, 46.987202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305362, 0.150532, -0.940263,
		0.951474, -0.087726, 0.294959,
		-0.038085, -0.984705, -0.170015,
		40.109711, 31.681267, 46.936195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713779, 32.243778, 46.657684>,  <40.136368, 32.370560, 47.055206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713779, 32.243778, 46.657684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482784, 31.929390, 46.569366>,  <40.344185, 31.740757, 46.516376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482784, 31.929390, 46.569366>,  <40.713779, 32.243778, 46.657684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482784, 31.929390, 46.569366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191098, 0.132803, -0.972545,
		0.793716, -0.603831, 0.073505,
		-0.577491, -0.785972, -0.220799,
		40.309536, 31.693598, 46.503128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970806, 31.938040, 46.091248>,  <40.713779, 32.243778, 46.657684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970806, 31.938040, 46.091248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582451, 31.842226, 46.090637>,  <40.349438, 31.784739, 46.090271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582451, 31.842226, 46.090637>,  <40.970806, 31.938040, 46.091248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582451, 31.842226, 46.090637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038593, 0.162705, -0.985920,
		0.236409, -0.957158, -0.167212,
		-0.970887, -0.239534, -0.001525,
		40.291183, 31.770367, 46.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856323, 31.507313, 45.507801>,  <40.970806, 31.938040, 46.091248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856323, 31.507313, 45.507801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494446, 31.662546, 45.578133>,  <40.277317, 31.755686, 45.620331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494446, 31.662546, 45.578133>,  <40.856323, 31.507313, 45.507801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494446, 31.662546, 45.578133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085616, 0.238681, -0.967316,
		-0.417365, -0.890182, -0.182708,
		-0.904697, 0.388081, 0.175831,
		40.223038, 31.778971, 45.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517609, 31.347109, 44.991940>,  <40.856323, 31.507313, 45.507801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517609, 31.347109, 44.991940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255299, 31.615177, 45.130989>,  <40.097912, 31.776018, 45.214417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255299, 31.615177, 45.130989>,  <40.517609, 31.347109, 44.991940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255299, 31.615177, 45.130989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227912, 0.263231, -0.937425,
		-0.719737, -0.693962, -0.019880,
		-0.655770, 0.670169, 0.347619,
		40.058567, 31.816227, 45.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877907, 31.140810, 44.807472>,  <40.517609, 31.347109, 44.991940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877907, 31.140810, 44.807472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810253, 31.524885, 44.896404>,  <39.769661, 31.755331, 44.949764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810253, 31.524885, 44.896404>,  <39.877907, 31.140810, 44.807472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810253, 31.524885, 44.896404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331585, 0.156998, -0.930270,
		-0.928141, -0.231059, 0.291831,
		-0.169131, 0.960189, 0.222332,
		39.759514, 31.812943, 44.963104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208031, 31.372564, 44.646793>,  <39.877907, 31.140810, 44.807472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208031, 31.372564, 44.646793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431419, 31.704372, 44.646828>,  <39.565453, 31.903458, 44.646847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431419, 31.704372, 44.646828>,  <39.208031, 31.372564, 44.646793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431419, 31.704372, 44.646828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208055, 0.140169, -0.968021,
		-0.803005, 0.540599, 0.250868,
		0.558476, 0.829521, 0.000082,
		39.598961, 31.953228, 44.646851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849514, 31.890728, 44.207249>,  <39.208031, 31.372564, 44.646793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849514, 31.890728, 44.207249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203396, 32.072533, 44.248669>,  <39.415726, 32.181614, 44.273521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203396, 32.072533, 44.248669>,  <38.849514, 31.890728, 44.207249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203396, 32.072533, 44.248669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154735, 0.495869, -0.854501,
		-0.439728, 0.739955, 0.509025,
		0.884701, 0.454512, 0.103551,
		39.468807, 32.208885, 44.279736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852207, 32.642982, 44.290390>,  <38.849514, 31.890728, 44.207249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852207, 32.642982, 44.290390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208302, 32.556011, 44.130283>,  <39.421959, 32.503830, 44.034222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208302, 32.556011, 44.130283>,  <38.852207, 32.642982, 44.290390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208302, 32.556011, 44.130283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146365, 0.695579, -0.703383,
		0.431349, 0.684759, 0.587404,
		0.890233, -0.217428, -0.400263,
		39.475372, 32.490784, 44.010204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093544, 33.341423, 44.062603>,  <38.852207, 32.642982, 44.290390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093544, 33.341423, 44.062603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298027, 33.055473, 43.871769>,  <39.420719, 32.883904, 43.757267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298027, 33.055473, 43.871769>,  <39.093544, 33.341423, 44.062603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298027, 33.055473, 43.871769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057085, 0.525636, -0.848792,
		0.857557, 0.461147, 0.227903,
		0.511212, -0.714878, -0.477087,
		39.451389, 32.841011, 43.728642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573956, 33.652924, 43.612289>,  <39.093544, 33.341423, 44.062603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573956, 33.652924, 43.612289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508724, 33.292984, 43.450462>,  <39.469585, 33.077019, 43.353367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508724, 33.292984, 43.450462>,  <39.573956, 33.652924, 43.612289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508724, 33.292984, 43.450462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184152, 0.430609, -0.883552,
		0.969276, -0.069582, -0.235931,
		-0.163073, -0.899852, -0.404565,
		39.459801, 33.023029, 43.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929890, 33.677670, 43.006454>,  <39.573956, 33.652924, 43.612289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929890, 33.677670, 43.006454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680397, 33.370167, 42.949924>,  <39.530701, 33.185665, 42.916008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680397, 33.370167, 42.949924>,  <39.929890, 33.677670, 43.006454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680397, 33.370167, 42.949924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332670, 0.424695, -0.842000,
		0.707314, -0.478166, -0.520638,
		-0.623728, -0.768760, -0.141321,
		39.493279, 33.139538, 42.907528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.835548, 37.837799, 27.905880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594601, 37.530300, 27.819921>,  <43.450031, 37.345798, 27.768347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594601, 37.530300, 27.819921>,  <43.835548, 37.837799, 27.905880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594601, 37.530300, 27.819921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305144, -0.027003, 0.951923,
		-0.737594, 0.638980, -0.218313,
		-0.602365, -0.768750, -0.214898,
		43.413891, 37.299675, 27.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190544, 37.993435, 28.224159>,  <43.835548, 37.837799, 27.905880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190544, 37.993435, 28.224159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211071, 37.595844, 28.185429>,  <43.223389, 37.357288, 28.162189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211071, 37.595844, 28.185429>,  <43.190544, 37.993435, 28.224159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211071, 37.595844, 28.185429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438072, -0.109534, 0.892242,
		-0.897474, -0.003370, -0.441054,
		0.051317, -0.993977, -0.096828,
		43.226467, 37.297649, 28.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636135, 37.737957, 28.616636>,  <43.190544, 37.993435, 28.224159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636135, 37.737957, 28.616636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855289, 37.403797, 28.599096>,  <42.986782, 37.203300, 28.588573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855289, 37.403797, 28.599096>,  <42.636135, 37.737957, 28.616636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855289, 37.403797, 28.599096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335465, -0.267423, 0.903299,
		-0.766344, -0.480196, -0.426765,
		0.547887, -0.835402, -0.043849,
		43.019657, 37.153175, 28.585941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157871, 37.183620, 28.855148>,  <42.636135, 37.737957, 28.616636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157871, 37.183620, 28.855148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536705, 37.057667, 28.880030>,  <42.764008, 36.982094, 28.894958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536705, 37.057667, 28.880030>,  <42.157871, 37.183620, 28.855148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536705, 37.057667, 28.880030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153637, -0.274589, 0.949208,
		-0.281843, -0.908531, -0.308440,
		0.947080, -0.314915, 0.062193,
		42.820831, 36.963200, 28.898691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107956, 36.633911, 29.159061>,  <42.157871, 37.183620, 28.855148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107956, 36.633911, 29.159061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495930, 36.691238, 29.237728>,  <42.728714, 36.725636, 29.284927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495930, 36.691238, 29.237728>,  <42.107956, 36.633911, 29.159061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495930, 36.691238, 29.237728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144280, -0.312102, 0.939029,
		0.195962, -0.939176, -0.282042,
		0.969939, 0.143321, 0.196664,
		42.786911, 36.734234, 29.296728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498909, 35.995132, 29.405684>,  <42.107956, 36.633911, 29.159061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498909, 35.995132, 29.405684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705849, 36.298054, 29.565098>,  <42.830013, 36.479809, 29.660748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705849, 36.298054, 29.565098>,  <42.498909, 35.995132, 29.405684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705849, 36.298054, 29.565098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110017, -0.402983, 0.908571,
		0.848670, -0.513898, -0.125168,
		0.517353, 0.757307, 0.398537,
		42.861053, 36.525246, 29.684658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745090, 35.696037, 29.931799>,  <42.498909, 35.995132, 29.405684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745090, 35.696037, 29.931799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802704, 36.082031, 30.019491>,  <42.837273, 36.313625, 30.072105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802704, 36.082031, 30.019491>,  <42.745090, 35.696037, 29.931799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802704, 36.082031, 30.019491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013218, -0.223395, 0.974638,
		0.989484, -0.137484, -0.044932,
		0.144035, 0.964983, 0.219229,
		42.845913, 36.371525, 30.085260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298111, 35.720627, 30.362606>,  <42.745090, 35.696037, 29.931799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298111, 35.720627, 30.362606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072998, 36.046532, 30.418386>,  <42.937931, 36.242073, 30.451855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072998, 36.046532, 30.418386>,  <43.298111, 35.720627, 30.362606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072998, 36.046532, 30.418386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, -0.250653, 0.959972,
		0.817098, 0.522821, 0.242916,
		-0.562781, 0.814758, 0.139450,
		42.904163, 36.290958, 30.460222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527771, 35.947166, 31.011211>,  <43.298111, 35.720627, 30.362606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527771, 35.947166, 31.011211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199951, 36.174099, 30.979019>,  <43.003258, 36.310257, 30.959703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199951, 36.174099, 30.979019>,  <43.527771, 35.947166, 31.011211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199951, 36.174099, 30.979019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226549, -0.191803, 0.954928,
		0.526320, 0.800845, 0.285719,
		-0.819551, 0.567327, -0.080481,
		42.954086, 36.344296, 30.954874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540695, 36.401165, 31.489721>,  <43.527771, 35.947166, 31.011211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540695, 36.401165, 31.489721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153553, 36.358364, 31.398668>,  <42.921268, 36.332684, 31.344036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153553, 36.358364, 31.398668>,  <43.540695, 36.401165, 31.489721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153553, 36.358364, 31.398668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202726, -0.203851, 0.957782,
		-0.148886, 0.973137, 0.175606,
		-0.967851, -0.107000, -0.227631,
		42.863197, 36.326263, 31.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237118, 36.809883, 31.938580>,  <43.540695, 36.401165, 31.489721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237118, 36.809883, 31.938580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946838, 36.575863, 31.793758>,  <42.772671, 36.435452, 31.706865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946838, 36.575863, 31.793758>,  <43.237118, 36.809883, 31.938580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946838, 36.575863, 31.793758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301602, -0.202459, 0.931690,
		-0.618383, 0.785322, -0.029527,
		-0.725699, -0.585046, -0.362052,
		42.729130, 36.400349, 31.685143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641624, 36.959934, 32.443310>,  <43.237118, 36.809883, 31.938580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641624, 36.959934, 32.443310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553139, 36.622700, 32.247242>,  <42.500046, 36.420361, 32.129601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553139, 36.622700, 32.247242>,  <42.641624, 36.959934, 32.443310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553139, 36.622700, 32.247242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253056, -0.435780, 0.863747,
		-0.941820, 0.315117, -0.116946,
		-0.221218, -0.843088, -0.490169,
		42.486774, 36.369774, 32.100193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972355, 36.874634, 32.570560>,  <42.641624, 36.959934, 32.443310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972355, 36.874634, 32.570560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.149174, 36.523594, 32.496353>,  <42.255264, 36.312969, 32.451828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.149174, 36.523594, 32.496353>,  <41.972355, 36.874634, 32.570560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149174, 36.523594, 32.496353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120743, -0.263163, 0.957166,
		-0.888827, -0.400714, -0.222294,
		0.442049, -0.877595, -0.185523,
		42.281788, 36.260315, 32.440697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578102, 36.385334, 32.916710>,  <41.972355, 36.874634, 32.570560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578102, 36.385334, 32.916710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937153, 36.212738, 32.880749>,  <42.152584, 36.109180, 32.859173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937153, 36.212738, 32.880749>,  <41.578102, 36.385334, 32.916710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937153, 36.212738, 32.880749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079743, -0.359589, 0.929697,
		-0.433483, -0.827352, -0.357185,
		0.897627, -0.431491, -0.089900,
		42.206440, 36.083290, 32.853779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407463, 35.797802, 33.209496>,  <41.578102, 36.385334, 32.916710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407463, 35.797802, 33.209496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806805, 35.818096, 33.220165>,  <42.046410, 35.830273, 33.226566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806805, 35.818096, 33.220165>,  <41.407463, 35.797802, 33.209496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806805, 35.818096, 33.220165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021331, -0.760768, 0.648674,
		0.053202, -0.647038, -0.760599,
		0.998356, 0.050735, 0.026672,
		42.106312, 35.833317, 33.228168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635681, 35.140564, 33.064156>,  <41.407463, 35.797802, 33.209496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635681, 35.140564, 33.064156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961384, 35.311699, 33.221100>,  <42.156803, 35.414379, 33.315266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961384, 35.311699, 33.221100>,  <41.635681, 35.140564, 33.064156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961384, 35.311699, 33.221100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232430, -0.859626, 0.454995,
		0.531949, -0.279284, -0.799394,
		0.814252, 0.427837, 0.392363,
		42.205658, 35.440048, 33.338810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071678, 34.597301, 33.237373>,  <41.635681, 35.140564, 33.064156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071678, 34.597301, 33.237373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219803, 34.893566, 33.461617>,  <42.308678, 35.071327, 33.596165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219803, 34.893566, 33.461617>,  <42.071678, 34.597301, 33.237373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219803, 34.893566, 33.461617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264014, -0.662549, 0.700946,
		0.890597, -0.111562, -0.440897,
		0.370315, 0.740664, 0.560611,
		42.330898, 35.115765, 33.629799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736813, 34.408054, 33.370808>,  <42.071678, 34.597301, 33.237373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736813, 34.408054, 33.370808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603012, 34.670898, 33.641010>,  <42.522732, 34.828606, 33.803131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603012, 34.670898, 33.641010>,  <42.736813, 34.408054, 33.370808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603012, 34.670898, 33.641010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259478, -0.624876, 0.736343,
		0.905970, 0.421586, 0.038514,
		-0.334498, 0.657112, 0.675511,
		42.502663, 34.868031, 33.843662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249100, 34.362431, 33.901649>,  <42.736813, 34.408054, 33.370808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249100, 34.362431, 33.901649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937450, 34.518887, 34.097599>,  <42.750462, 34.612762, 34.215168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937450, 34.518887, 34.097599>,  <43.249100, 34.362431, 33.901649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937450, 34.518887, 34.097599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136310, -0.657051, 0.741420,
		0.611875, 0.644430, 0.458605,
		-0.779120, 0.391144, 0.489876,
		42.703712, 34.636230, 34.244560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507153, 34.389977, 34.632751>,  <43.249100, 34.362431, 33.901649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507153, 34.389977, 34.632751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.108162, 34.409763, 34.653133>,  <42.868767, 34.421635, 34.665363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.108162, 34.409763, 34.653133>,  <43.507153, 34.389977, 34.632751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108162, 34.409763, 34.653133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004620, -0.761146, 0.648564,
		0.070868, 0.646691, 0.759453,
		-0.997475, 0.049471, 0.050953,
		42.808918, 34.424606, 34.668419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269497, 34.452526, 35.386700>,  <43.507153, 34.389977, 34.632751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269497, 34.452526, 35.386700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964317, 34.300602, 35.177448>,  <42.781212, 34.209450, 35.051899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964317, 34.300602, 35.177448>,  <43.269497, 34.452526, 35.386700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964317, 34.300602, 35.177448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010946, -0.816685, 0.576980,
		-0.646370, 0.434478, 0.627244,
		-0.762946, -0.379808, -0.523124,
		42.735432, 34.186661, 35.020512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487755, 35.067486, 35.207764>,  <43.269497, 34.452526, 35.386700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487755, 35.067486, 35.207764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867226, 34.976700, 35.295845>,  <44.094910, 34.922226, 35.348694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867226, 34.976700, 35.295845>,  <43.487755, 35.067486, 35.207764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867226, 34.976700, 35.295845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313867, 0.760891, -0.567919,
		-0.038654, 0.607889, 0.793080,
		0.948680, -0.226969, 0.220208,
		44.151829, 34.908607, 35.361908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851189, 35.706318, 35.365803>,  <43.487755, 35.067486, 35.207764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851189, 35.706318, 35.365803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113754, 35.429893, 35.244770>,  <44.271294, 35.264038, 35.172150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113754, 35.429893, 35.244770>,  <43.851189, 35.706318, 35.365803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113754, 35.429893, 35.244770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444126, 0.678211, -0.585476,
		0.609812, 0.249932, 0.752106,
		0.656416, -0.691060, -0.302580,
		44.310680, 35.222576, 35.153996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417694, 36.065468, 35.430725>,  <43.851189, 35.706318, 35.365803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417694, 36.065468, 35.430725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504269, 35.767479, 35.178322>,  <44.556213, 35.588684, 35.026882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504269, 35.767479, 35.178322>,  <44.417694, 36.065468, 35.430725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504269, 35.767479, 35.178322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536704, 0.630690, -0.560517,
		0.815540, -0.217347, 0.536335,
		0.216434, -0.744977, -0.631004,
		44.569199, 35.543987, 34.989021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221531, 36.123409, 35.253452>,  <44.417694, 36.065468, 35.430725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221531, 36.123409, 35.253452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088894, 35.895035, 34.953033>,  <45.009312, 35.758011, 34.772781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088894, 35.895035, 34.953033>,  <45.221531, 36.123409, 35.253452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088894, 35.895035, 34.953033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513372, 0.558708, -0.651378,
		0.791514, -0.601561, 0.107839,
		-0.331593, -0.570937, -0.751050,
		44.989414, 35.723755, 34.727718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764591, 36.005116, 34.894245>,  <45.221531, 36.123409, 35.253452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764591, 36.005116, 34.894245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.458244, 35.955299, 34.641918>,  <45.274437, 35.925407, 34.490520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.458244, 35.955299, 34.641918>,  <45.764591, 36.005116, 34.894245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458244, 35.955299, 34.641918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532398, 0.427288, -0.730737,
		0.360549, -0.895496, -0.260941,
		-0.765869, -0.124542, -0.630819,
		45.228485, 35.917934, 34.452671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078468, 35.758503, 34.267376>,  <45.764591, 36.005116, 34.894245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078468, 35.758503, 34.267376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721565, 35.908031, 34.166080>,  <45.507423, 35.997749, 34.105305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721565, 35.908031, 34.166080>,  <46.078468, 35.758503, 34.267376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721565, 35.908031, 34.166080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409640, 0.434290, -0.802239,
		-0.189919, -0.819541, -0.540632,
		-0.892259, 0.373825, -0.253237,
		45.453888, 36.020180, 34.090111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110832, 35.587044, 33.564125>,  <46.078468, 35.758503, 34.267376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110832, 35.587044, 33.564125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.810848, 35.849941, 33.594028>,  <45.630859, 36.007679, 33.611973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.810848, 35.849941, 33.594028>,  <46.110832, 35.587044, 33.564125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810848, 35.849941, 33.594028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334533, 0.474349, -0.814298,
		-0.570655, -0.585681, -0.575613,
		-0.749960, 0.657244, 0.074760,
		45.585861, 36.047115, 33.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618382, 35.497677, 33.073723>,  <46.110832, 35.587044, 33.564125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618382, 35.497677, 33.073723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487717, 35.869312, 33.143108>,  <45.409317, 36.092293, 33.184738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487717, 35.869312, 33.143108>,  <45.618382, 35.497677, 33.073723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487717, 35.869312, 33.143108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286963, 0.272363, -0.918407,
		-0.900524, -0.250232, -0.355584,
		-0.326663, 0.929087, 0.173463,
		45.389717, 36.148037, 33.195148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186352, 35.666870, 32.532860>,  <45.618382, 35.497677, 33.073723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186352, 35.666870, 32.532860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287182, 36.023926, 32.682343>,  <45.347679, 36.238159, 32.772034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287182, 36.023926, 32.682343>,  <45.186352, 35.666870, 32.532860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287182, 36.023926, 32.682343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177679, 0.336922, -0.924615,
		-0.951256, 0.299475, -0.073672,
		0.252077, 0.892636, 0.373710,
		45.362804, 36.291718, 32.794456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768593, 36.135014, 32.198616>,  <45.186352, 35.666870, 32.532860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768593, 36.135014, 32.198616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066097, 36.351147, 32.356026>,  <45.244598, 36.480827, 32.450470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066097, 36.351147, 32.356026>,  <44.768593, 36.135014, 32.198616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066097, 36.351147, 32.356026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124932, 0.465974, -0.875934,
		-0.656670, 0.700647, 0.279067,
		0.743758, 0.540335, 0.393524,
		45.289227, 36.513248, 32.474083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557800, 36.728146, 32.024338>,  <44.768593, 36.135014, 32.198616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557800, 36.728146, 32.024338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955990, 36.728172, 32.062340>,  <45.194904, 36.728188, 32.085140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955990, 36.728172, 32.062340>,  <44.557800, 36.728146, 32.024338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955990, 36.728172, 32.062340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084773, 0.450749, -0.888617,
		-0.042885, 0.892651, 0.448704,
		0.995477, 0.000071, 0.095003,
		45.254631, 36.728195, 32.090839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896790, 37.431370, 31.803194>,  <44.557800, 36.728146, 32.024338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896790, 37.431370, 31.803194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215378, 37.190140, 31.820734>,  <45.406532, 37.045403, 31.831257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215378, 37.190140, 31.820734>,  <44.896790, 37.431370, 31.803194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215378, 37.190140, 31.820734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358758, 0.412939, -0.837122,
		0.486745, 0.682478, 0.545255,
		0.796475, -0.603080, 0.043849,
		45.454319, 37.009216, 31.833889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574192, 37.907883, 31.835625>,  <44.896790, 37.431370, 31.803194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574192, 37.907883, 31.835625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.643276, 37.547024, 31.677485>,  <45.684727, 37.330509, 31.582600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.643276, 37.547024, 31.677485>,  <45.574192, 37.907883, 31.835625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643276, 37.547024, 31.677485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388878, 0.431230, -0.814134,
		0.904956, -0.013132, 0.425303,
		0.172712, -0.902146, -0.395351,
		45.695091, 37.276379, 31.558880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151718, 38.008198, 31.498095>,  <45.574192, 37.907883, 31.835625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151718, 38.008198, 31.498095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.024540, 37.666679, 31.333193>,  <45.948235, 37.461769, 31.234251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.024540, 37.666679, 31.333193>,  <46.151718, 38.008198, 31.498095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024540, 37.666679, 31.333193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246878, 0.345265, -0.905452,
		0.915404, -0.389657, 0.101008,
		-0.317941, -0.853792, -0.412254,
		45.929157, 37.410542, 31.209517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661037, 37.825981, 31.100376>,  <46.151718, 38.008198, 31.498095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661037, 37.825981, 31.100376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349422, 37.624428, 30.951136>,  <46.162453, 37.503498, 30.861591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349422, 37.624428, 30.951136>,  <46.661037, 37.825981, 31.100376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349422, 37.624428, 30.951136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194943, 0.370915, -0.907975,
		0.595900, -0.780081, -0.190729,
		-0.779038, -0.503881, -0.373099,
		46.115711, 37.473263, 30.839207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987225, 37.410095, 30.541107>,  <46.661037, 37.825981, 31.100376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987225, 37.410095, 30.541107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590439, 37.442257, 30.502029>,  <46.352367, 37.461555, 30.478582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590439, 37.442257, 30.502029>,  <46.987225, 37.410095, 30.541107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590439, 37.442257, 30.502029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112031, 0.199243, -0.973525,
		-0.058812, -0.976646, -0.206649,
		-0.991963, 0.080406, -0.097696,
		46.292850, 37.466377, 30.472721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840034, 37.216473, 29.816055>,  <46.987225, 37.410095, 30.541107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840034, 37.216473, 29.816055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496281, 37.383396, 29.934244>,  <46.290028, 37.483551, 30.005157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496281, 37.383396, 29.934244>,  <46.840034, 37.216473, 29.816055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496281, 37.383396, 29.934244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163250, 0.323685, -0.931975,
		-0.484564, -0.849164, -0.210045,
		-0.859388, 0.417311, 0.295472,
		46.238464, 37.508591, 30.022886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365932, 36.871502, 29.391405>,  <46.840034, 37.216473, 29.816055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365932, 36.871502, 29.391405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242012, 37.226799, 29.527077>,  <46.167660, 37.439980, 29.608480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242012, 37.226799, 29.527077>,  <46.365932, 36.871502, 29.391405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242012, 37.226799, 29.527077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280555, 0.255449, -0.925221,
		-0.908468, -0.381791, 0.170064,
		-0.309799, 0.888246, 0.339181,
		46.149071, 37.493275, 29.628832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928532, 37.044876, 28.899269>,  <46.365932, 36.871502, 29.391405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928532, 37.044876, 28.899269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977222, 37.387959, 29.099077>,  <46.006439, 37.593807, 29.218962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977222, 37.387959, 29.099077>,  <45.928532, 37.044876, 28.899269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977222, 37.387959, 29.099077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238747, 0.513788, -0.824027,
		-0.963422, -0.018950, 0.267319,
		0.121730, 0.857708, 0.499519,
		46.013741, 37.645271, 29.248934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401608, 37.521637, 28.712006>,  <45.928532, 37.044876, 28.899269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401608, 37.521637, 28.712006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681602, 37.763214, 28.864466>,  <45.849598, 37.908161, 28.955942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681602, 37.763214, 28.864466>,  <45.401608, 37.521637, 28.712006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681602, 37.763214, 28.864466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088432, 0.602901, -0.792899,
		-0.708660, 0.521313, 0.475430,
		0.699986, 0.603940, 0.381151,
		45.891598, 37.944397, 28.978811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206665, 38.274956, 28.712614>,  <45.401608, 37.521637, 28.712006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206665, 38.274956, 28.712614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.606560, 38.275433, 28.721861>,  <45.846497, 38.275719, 28.727409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.606560, 38.275433, 28.721861>,  <45.206665, 38.274956, 28.712614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606560, 38.275433, 28.721861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018231, 0.574751, -0.818125,
		-0.014263, 0.818328, 0.574575,
		0.999732, 0.001194, 0.023116,
		45.906479, 38.275791, 28.728796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.349106, 33.457664, 37.336594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037224, 33.401253, 37.580616>,  <40.850094, 33.367405, 37.727028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037224, 33.401253, 37.580616>,  <41.349106, 33.457664, 37.336594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037224, 33.401253, 37.580616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602083, -0.098629, -0.792319,
		0.171908, -0.985081, -0.008009,
		-0.779707, -0.141028, 0.610055,
		40.803310, 33.358944, 37.763634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136501, 32.845852, 37.118607>,  <41.349106, 33.457664, 37.336594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136501, 32.845852, 37.118607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851021, 33.057877, 37.301765>,  <40.679733, 33.185089, 37.411659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851021, 33.057877, 37.301765>,  <41.136501, 32.845852, 37.118607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851021, 33.057877, 37.301765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578810, -0.078134, -0.811710,
		-0.394478, -0.844352, 0.362568,
		-0.713699, 0.530061, 0.457898,
		40.636909, 33.216896, 37.439137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647503, 32.389065, 37.006489>,  <41.136501, 32.845852, 37.118607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647503, 32.389065, 37.006489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519016, 32.757004, 37.096554>,  <40.441925, 32.977768, 37.150593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519016, 32.757004, 37.096554>,  <40.647503, 32.389065, 37.006489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519016, 32.757004, 37.096554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510728, 0.031957, -0.859148,
		-0.797483, -0.390965, 0.459528,
		-0.321212, 0.919850, 0.225162,
		40.422653, 33.032959, 37.164101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043716, 32.419964, 36.639462>,  <40.647503, 32.389065, 37.006489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043716, 32.419964, 36.639462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081253, 32.805431, 36.739491>,  <40.103775, 33.036713, 36.799507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081253, 32.805431, 36.739491>,  <40.043716, 32.419964, 36.639462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081253, 32.805431, 36.739491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513589, 0.262033, -0.817047,
		-0.852890, -0.051763, 0.519519,
		0.093838, 0.963670, 0.250070,
		40.109406, 33.094532, 36.814510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339794, 32.723293, 36.793663>,  <40.043716, 32.419964, 36.639462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339794, 32.723293, 36.793663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596760, 33.010830, 36.687405>,  <39.750938, 33.183353, 36.623650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596760, 33.010830, 36.687405>,  <39.339794, 32.723293, 36.793663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596760, 33.010830, 36.687405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633653, 0.303286, -0.711689,
		-0.431027, 0.625527, 0.650332,
		0.642418, 0.718842, -0.265643,
		39.789486, 33.226482, 36.607712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840126, 33.293022, 36.581375>,  <39.339794, 32.723293, 36.793663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840126, 33.293022, 36.581375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193565, 33.395844, 36.424820>,  <39.405628, 33.457535, 36.330887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193565, 33.395844, 36.424820>,  <38.840126, 33.293022, 36.581375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193565, 33.395844, 36.424820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468252, 0.485634, -0.738174,
		0.000323, 0.835514, 0.549469,
		0.883595, 0.257051, -0.391388,
		39.458645, 33.472958, 36.307404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794697, 34.039700, 36.352200>,  <38.840126, 33.293022, 36.581375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794697, 34.039700, 36.352200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089127, 33.880978, 36.132843>,  <39.265785, 33.785744, 36.001228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089127, 33.880978, 36.132843>,  <38.794697, 34.039700, 36.352200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089127, 33.880978, 36.132843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436552, 0.340868, -0.832605,
		0.517315, 0.852263, 0.077677,
		0.736076, -0.396809, -0.548393,
		39.309948, 33.761936, 35.968327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848946, 34.559803, 35.843170>,  <38.794697, 34.039700, 36.352200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848946, 34.559803, 35.843170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031731, 34.233585, 35.701141>,  <39.141399, 34.037853, 35.615925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031731, 34.233585, 35.701141>,  <38.848946, 34.559803, 35.843170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031731, 34.233585, 35.701141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461968, 0.123524, -0.878253,
		0.760114, 0.565356, -0.320310,
		0.456960, -0.815545, -0.355069,
		39.168819, 33.988922, 35.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023403, 34.778690, 35.196159>,  <38.848946, 34.559803, 35.843170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023403, 34.778690, 35.196159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043514, 34.380512, 35.163754>,  <39.055580, 34.141605, 35.144310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043514, 34.380512, 35.163754>,  <39.023403, 34.778690, 35.196159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043514, 34.380512, 35.163754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305115, 0.061927, -0.950300,
		0.950987, 0.072496, -0.300612,
		0.050277, -0.995444, -0.081012,
		39.058598, 34.081879, 35.139450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274696, 34.626328, 34.467621>,  <39.023403, 34.778690, 35.196159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274696, 34.626328, 34.467621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120934, 34.281647, 34.600101>,  <39.028675, 34.074837, 34.679592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120934, 34.281647, 34.600101>,  <39.274696, 34.626328, 34.467621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120934, 34.281647, 34.600101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431602, -0.149391, -0.889608,
		0.816057, -0.484923, -0.314485,
		-0.384411, -0.861703, 0.331205,
		39.005611, 34.023136, 34.699463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358994, 34.104061, 33.942085>,  <39.274696, 34.626328, 34.467621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358994, 34.104061, 33.942085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058498, 33.954884, 34.159908>,  <38.878201, 33.865376, 34.290604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058498, 33.954884, 34.159908>,  <39.358994, 34.104061, 33.942085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058498, 33.954884, 34.159908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518063, -0.178028, -0.836610,
		0.408958, -0.910613, -0.059468,
		-0.751241, -0.372947, 0.544561,
		38.833126, 33.842999, 34.323277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279240, 33.423096, 33.689896>,  <39.358994, 34.104061, 33.942085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279240, 33.423096, 33.689896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947697, 33.551025, 33.873508>,  <38.748772, 33.627785, 33.983677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947697, 33.551025, 33.873508>,  <39.279240, 33.423096, 33.689896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947697, 33.551025, 33.873508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534595, -0.210885, -0.818373,
		-0.164930, -0.923711, 0.345769,
		-0.828858, 0.319821, 0.459030,
		38.699039, 33.646973, 34.011215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748241, 32.855450, 33.536972>,  <39.279240, 33.423096, 33.689896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748241, 32.855450, 33.536972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637714, 33.233826, 33.604912>,  <38.571400, 33.460850, 33.645676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637714, 33.233826, 33.604912>,  <38.748241, 32.855450, 33.536972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637714, 33.233826, 33.604912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508279, 0.006159, -0.861171,
		-0.815660, -0.324291, 0.479098,
		-0.276319, 0.945938, 0.169854,
		38.554817, 33.517609, 33.655869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188572, 32.954403, 33.178154>,  <38.748241, 32.855450, 33.536972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188572, 32.954403, 33.178154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227966, 32.571907, 33.067944>,  <38.251602, 32.342411, 33.001820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227966, 32.571907, 33.067944>,  <38.188572, 32.954403, 33.178154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227966, 32.571907, 33.067944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586928, -0.279402, 0.759901,
		-0.803627, 0.086875, -0.588759,
		0.098484, -0.956236, -0.275524,
		38.257511, 32.285038, 32.985287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523067, 32.534710, 33.222767>,  <38.188572, 32.954403, 33.178154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523067, 32.534710, 33.222767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816772, 32.265476, 33.258129>,  <37.992996, 32.103935, 33.279346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816772, 32.265476, 33.258129>,  <37.523067, 32.534710, 33.222767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816772, 32.265476, 33.258129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363124, -0.279374, 0.888871,
		-0.573590, -0.684764, -0.449547,
		0.734259, -0.673089, 0.088408,
		38.037052, 32.063549, 33.284653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206425, 32.034222, 33.632439>,  <37.523067, 32.534710, 33.222767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206425, 32.034222, 33.632439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591240, 31.928959, 33.661358>,  <37.822128, 31.865801, 33.678711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591240, 31.928959, 33.661358>,  <37.206425, 32.034222, 33.632439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591240, 31.928959, 33.661358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200748, -0.502896, 0.840712,
		-0.184881, -0.823312, -0.536634,
		0.962039, -0.263160, 0.072302,
		37.879852, 31.850010, 33.683048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236610, 31.359030, 33.916981>,  <37.206425, 32.034222, 33.632439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236610, 31.359030, 33.916981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610752, 31.487549, 33.976151>,  <37.835236, 31.564659, 34.011650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610752, 31.487549, 33.976151>,  <37.236610, 31.359030, 33.916981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610752, 31.487549, 33.976151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034426, -0.498902, 0.865974,
		0.352033, -0.804901, -0.477711,
		0.935354, 0.321297, 0.147921,
		37.891357, 31.583939, 34.020527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655430, 30.737614, 34.070446>,  <37.236610, 31.359030, 33.916981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655430, 30.737614, 34.070446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861561, 31.051573, 34.208065>,  <37.985241, 31.239948, 34.290638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861561, 31.051573, 34.208065>,  <37.655430, 30.737614, 34.070446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861561, 31.051573, 34.208065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139482, -0.472924, 0.869993,
		0.845564, -0.400346, -0.353191,
		0.515331, 0.784899, 0.344047,
		38.016159, 31.287043, 34.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252953, 30.441053, 34.364979>,  <37.655430, 30.737614, 34.070446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252953, 30.441053, 34.364979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266743, 30.804018, 34.532509>,  <38.275017, 31.021797, 34.633026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266743, 30.804018, 34.532509>,  <38.252953, 30.441053, 34.364979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266743, 30.804018, 34.532509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212990, -0.416116, 0.884015,
		0.976446, 0.058730, -0.207615,
		0.034474, 0.907413, 0.418824,
		38.277084, 31.076242, 34.658157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862888, 30.526327, 34.740356>,  <38.252953, 30.441053, 34.364979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862888, 30.526327, 34.740356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633881, 30.811453, 34.902401>,  <38.496475, 30.982529, 34.999626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633881, 30.811453, 34.902401>,  <38.862888, 30.526327, 34.740356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633881, 30.811453, 34.902401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213026, -0.347803, 0.913046,
		0.791731, 0.609038, 0.047277,
		-0.572523, 0.712816, 0.405107,
		38.462124, 31.025297, 35.023933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275261, 30.762966, 35.303204>,  <38.862888, 30.526327, 34.740356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275261, 30.762966, 35.303204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894791, 30.872093, 35.360939>,  <38.666508, 30.937569, 35.395580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894791, 30.872093, 35.360939>,  <39.275261, 30.762966, 35.303204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894791, 30.872093, 35.360939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154205, 0.014941, 0.987926,
		0.267365, 0.961950, -0.056282,
		-0.951176, 0.272816, 0.144343,
		38.609436, 30.953938, 35.404243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296696, 31.359680, 35.711098>,  <39.275261, 30.762966, 35.303204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296696, 31.359680, 35.711098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927284, 31.217363, 35.768383>,  <38.705639, 31.131973, 35.802753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927284, 31.217363, 35.768383>,  <39.296696, 31.359680, 35.711098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927284, 31.217363, 35.768383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167071, -0.037081, 0.985247,
		-0.345231, 0.933830, 0.093688,
		-0.923527, -0.355790, 0.143215,
		38.650227, 31.110626, 35.811348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198887, 31.650715, 36.444729>,  <39.296696, 31.359680, 35.711098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198887, 31.650715, 36.444729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951485, 31.349791, 36.353977>,  <38.803043, 31.169237, 36.299526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951485, 31.349791, 36.353977>,  <39.198887, 31.650715, 36.444729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951485, 31.349791, 36.353977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036156, -0.261185, 0.964612,
		-0.784945, 0.604825, 0.134345,
		-0.618510, -0.752310, -0.226884,
		38.765930, 31.124098, 36.285912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790897, 31.723871, 36.983189>,  <39.198887, 31.650715, 36.444729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790897, 31.723871, 36.983189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709106, 31.354610, 36.852970>,  <38.660030, 31.133055, 36.774837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709106, 31.354610, 36.852970>,  <38.790897, 31.723871, 36.983189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709106, 31.354610, 36.852970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163285, -0.295747, 0.941208,
		-0.965155, 0.245617, -0.090262,
		-0.204482, -0.923150, -0.325548,
		38.647762, 31.077665, 36.755306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171471, 31.542534, 37.291512>,  <38.790897, 31.723871, 36.983189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171471, 31.542534, 37.291512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391121, 31.215330, 37.223022>,  <38.522911, 31.019009, 37.181931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391121, 31.215330, 37.223022>,  <38.171471, 31.542534, 37.291512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391121, 31.215330, 37.223022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029053, -0.223433, 0.974286,
		-0.835232, -0.530036, -0.146459,
		0.549130, -0.818010, -0.171219,
		38.555859, 30.969927, 37.171658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942257, 31.072887, 37.739151>,  <38.171471, 31.542534, 37.291512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942257, 31.072887, 37.739151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270847, 30.879103, 37.618835>,  <38.468002, 30.762831, 37.546646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270847, 30.879103, 37.618835>,  <37.942257, 31.072887, 37.739151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270847, 30.879103, 37.618835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077223, -0.428105, 0.900424,
		-0.564992, -0.762903, -0.314266,
		0.821474, -0.484464, -0.300789,
		38.517288, 30.733765, 37.528599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844612, 30.476414, 37.903301>,  <37.942257, 31.072887, 37.739151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844612, 30.476414, 37.903301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242729, 30.494425, 37.868988>,  <38.481602, 30.505232, 37.848400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242729, 30.494425, 37.868988>,  <37.844612, 30.476414, 37.903301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242729, 30.494425, 37.868988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096181, -0.565636, 0.819027,
		-0.011643, -0.823425, -0.567306,
		0.995296, 0.045028, -0.085784,
		38.541317, 30.507933, 37.843254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092117, 29.774452, 38.176693>,  <37.844612, 30.476414, 37.903301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092117, 29.774452, 38.176693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395447, 30.034382, 38.197365>,  <38.577446, 30.190340, 38.209766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395447, 30.034382, 38.197365>,  <38.092117, 29.774452, 38.176693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395447, 30.034382, 38.197365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277728, -0.393788, 0.876241,
		0.589753, -0.650124, -0.479094,
		0.758327, 0.649823, 0.051680,
		38.622944, 30.229328, 38.212868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429150, 29.201214, 37.710251>,  <38.092117, 29.774452, 38.176693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429150, 29.201214, 37.710251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209553, 28.887390, 37.825539>,  <38.077793, 28.699097, 37.894711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209553, 28.887390, 37.825539>,  <38.429150, 29.201214, 37.710251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209553, 28.887390, 37.825539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687640, 0.227934, -0.689346,
		0.475137, -0.576641, -0.664628,
		-0.548996, -0.784558, 0.288222,
		38.044853, 28.652023, 37.912006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180744, 29.007536, 37.120934>,  <38.429150, 29.201214, 37.710251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180744, 29.007536, 37.120934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921070, 28.832514, 37.369804>,  <37.765266, 28.727501, 37.519127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921070, 28.832514, 37.369804>,  <38.180744, 29.007536, 37.120934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921070, 28.832514, 37.369804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740198, 0.175109, -0.649187,
		0.175109, -0.881975, -0.437558,
		0.649187, 0.437558, -0.622173,
		37.726315, 28.701246, 37.556458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767303, 28.719492, 36.692928>,  <38.180744, 29.007536, 37.120934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767303, 28.719492, 36.692928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558853, 28.737572, 37.033840>,  <37.433784, 28.748419, 37.238388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558853, 28.737572, 37.033840>,  <37.767303, 28.719492, 36.692928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558853, 28.737572, 37.033840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845779, 0.106499, -0.522796,
		-0.114398, -0.993285, -0.017270,
		-0.521125, 0.045200, 0.852283,
		37.402515, 28.751131, 37.289524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201679, 28.431103, 36.494282>,  <37.767303, 28.719492, 36.692928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201679, 28.431103, 36.494282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093960, 28.613359, 36.833660>,  <37.029327, 28.722713, 37.037289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093960, 28.613359, 36.833660>,  <37.201679, 28.431103, 36.494282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093960, 28.613359, 36.833660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912734, 0.160301, -0.375792,
		-0.307233, -0.875611, 0.372710,
		-0.269302, 0.455640, 0.848450,
		37.013168, 28.750051, 37.088196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503269, 28.200773, 36.543659>,  <37.201679, 28.431103, 36.494282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503269, 28.200773, 36.543659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549290, 28.535477, 36.757797>,  <36.576900, 28.736300, 36.886280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549290, 28.535477, 36.757797>,  <36.503269, 28.200773, 36.543659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549290, 28.535477, 36.757797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847339, 0.363934, -0.386741,
		-0.518440, -0.409125, 0.750891,
		0.115049, 0.836761, 0.535346,
		36.583805, 28.786505, 36.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840122, 28.319567, 36.861088>,  <36.503269, 28.200773, 36.543659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840122, 28.319567, 36.861088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022194, 28.675690, 36.866199>,  <36.131439, 28.889362, 36.869267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022194, 28.675690, 36.866199>,  <35.840122, 28.319567, 36.861088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022194, 28.675690, 36.866199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857518, 0.442194, -0.262921,
		-0.239731, 0.108718, 0.964733,
		0.455183, 0.890306, 0.012780,
		36.158749, 28.942781, 36.870033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314865, 28.646572, 37.051003>,  <35.840122, 28.319567, 36.861088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314865, 28.646572, 37.051003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573219, 28.925220, 36.926071>,  <35.728233, 29.092409, 36.851112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573219, 28.925220, 36.926071>,  <35.314865, 28.646572, 37.051003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573219, 28.925220, 36.926071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751496, 0.652209, -0.099382,
		0.134471, 0.298902, 0.944762,
		0.645887, 0.696621, -0.312327,
		35.766987, 29.134207, 36.832375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139378, 29.331177, 37.397552>,  <35.314865, 28.646572, 37.051003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139378, 29.331177, 37.397552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320961, 29.372934, 37.043598>,  <35.429913, 29.397989, 36.831226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320961, 29.372934, 37.043598>,  <35.139378, 29.331177, 37.397552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320961, 29.372934, 37.043598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675266, 0.688237, -0.265228,
		0.581324, 0.717936, 0.382925,
		0.453960, 0.104393, -0.884886,
		35.457150, 29.404253, 36.778133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137970, 30.009302, 37.327030>,  <35.139378, 29.331177, 37.397552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137970, 30.009302, 37.327030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189857, 29.828625, 36.973953>,  <35.220989, 29.720219, 36.762108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189857, 29.828625, 36.973953>,  <35.137970, 30.009302, 37.327030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189857, 29.828625, 36.973953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701703, 0.587147, -0.403573,
		0.700562, 0.671738, -0.240792,
		0.129715, -0.451693, -0.882693,
		35.228771, 29.693117, 36.709145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049843, 30.498442, 36.841160>,  <35.137970, 30.009302, 37.327030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049843, 30.498442, 36.841160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023453, 30.183737, 36.595673>,  <35.007618, 29.994913, 36.448380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023453, 30.183737, 36.595673>,  <35.049843, 30.498442, 36.841160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023453, 30.183737, 36.595673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794094, 0.413832, -0.445150,
		0.604204, 0.457981, -0.652066,
		-0.065976, -0.786763, -0.613719,
		35.003658, 29.947708, 36.411556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977764, 30.796673, 36.175571>,  <35.049843, 30.498442, 36.841160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977764, 30.796673, 36.175571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843250, 30.419970, 36.175072>,  <34.762543, 30.193947, 36.174770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843250, 30.419970, 36.175072>,  <34.977764, 30.796673, 36.175571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843250, 30.419970, 36.175072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847466, 0.303197, -0.435744,
		0.410746, -0.145473, -0.900070,
		-0.336287, -0.941758, -0.001253,
		34.742363, 30.137442, 36.174694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532154, 30.830292, 35.601429>,  <34.977764, 30.796673, 36.175571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532154, 30.830292, 35.601429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440178, 30.484392, 35.780022>,  <34.384995, 30.276854, 35.887177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440178, 30.484392, 35.780022>,  <34.532154, 30.830292, 35.601429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440178, 30.484392, 35.780022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972276, 0.224160, -0.066570,
		-0.042516, -0.449406, -0.892315,
		-0.229938, -0.864747, 0.446477,
		34.371197, 30.224968, 35.913963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.709103, 26.968132, 40.151775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359951, 26.953857, 40.346428>,  <40.150459, 26.945293, 40.463219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359951, 26.953857, 40.346428>,  <40.709103, 26.968132, 40.151775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359951, 26.953857, 40.346428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487159, 0.007317, -0.873283,
		0.027622, -0.999336, -0.023782,
		-0.872876, -0.035707, 0.486633,
		40.098087, 26.943151, 40.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331333, 26.624224, 39.669361>,  <40.709103, 26.968132, 40.151775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331333, 26.624224, 39.669361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050465, 26.773180, 39.912106>,  <39.881943, 26.862555, 40.057751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050465, 26.773180, 39.912106>,  <40.331333, 26.624224, 39.669361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050465, 26.773180, 39.912106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522622, 0.309272, -0.794491,
		-0.483547, -0.875028, -0.022542,
		-0.702174, 0.372393, 0.606857,
		39.839813, 26.884897, 40.094162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591366, 26.336088, 39.656891>,  <40.331333, 26.624224, 39.669361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591366, 26.336088, 39.656891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540981, 26.714153, 39.777428>,  <39.510750, 26.940992, 39.849751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540981, 26.714153, 39.777428>,  <39.591366, 26.336088, 39.656891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540981, 26.714153, 39.777428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512001, 0.198238, -0.835797,
		-0.849700, -0.259561, 0.458953,
		-0.125959, 0.945161, 0.301338,
		39.503193, 26.997702, 39.867828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948265, 26.427052, 39.513992>,  <39.591366, 26.336088, 39.656891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948265, 26.427052, 39.513992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067635, 26.801928, 39.586235>,  <39.139256, 27.026854, 39.629581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067635, 26.801928, 39.586235>,  <38.948265, 26.427052, 39.513992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067635, 26.801928, 39.586235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515437, 0.317514, -0.795933,
		-0.803285, 0.144435, 0.577816,
		0.298426, 0.937189, 0.180607,
		39.157162, 27.083084, 39.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326847, 26.792734, 39.529160>,  <38.948265, 26.427052, 39.513992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326847, 26.792734, 39.529160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604076, 27.076508, 39.478012>,  <38.770412, 27.246773, 39.447323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604076, 27.076508, 39.478012>,  <38.326847, 26.792734, 39.529160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604076, 27.076508, 39.478012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559078, 0.417027, -0.716604,
		-0.455060, 0.568147, 0.685660,
		0.693075, 0.709435, -0.127866,
		38.812000, 27.289337, 39.439651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992302, 27.425665, 39.420620>,  <38.326847, 26.792734, 39.529160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992302, 27.425665, 39.420620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345104, 27.520092, 39.257484>,  <38.556786, 27.576748, 39.159603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345104, 27.520092, 39.257484>,  <37.992302, 27.425665, 39.420620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345104, 27.520092, 39.257484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470680, 0.399351, -0.786752,
		-0.022855, 0.885884, 0.463343,
		0.882008, 0.236068, -0.407841,
		38.609707, 27.590912, 39.135132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045712, 28.098789, 39.398422>,  <37.992302, 27.425665, 39.420620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045712, 28.098789, 39.398422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313362, 28.005484, 39.116184>,  <38.473953, 27.949501, 38.946842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313362, 28.005484, 39.116184>,  <38.045712, 28.098789, 39.398422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313362, 28.005484, 39.116184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534120, 0.509205, -0.674853,
		0.516710, 0.828431, 0.216130,
		0.669124, -0.233263, -0.705593,
		38.514099, 27.935505, 38.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218910, 28.674082, 39.123829>,  <38.045712, 28.098789, 39.398422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218910, 28.674082, 39.123829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280575, 28.395910, 38.843082>,  <38.317574, 28.229008, 38.674633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280575, 28.395910, 38.843082>,  <38.218910, 28.674082, 39.123829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280575, 28.395910, 38.843082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553822, 0.527456, -0.644260,
		0.818240, 0.488026, -0.303831,
		0.154158, -0.695428, -0.701866,
		38.326820, 28.187283, 38.632523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489799, 29.054039, 38.554424>,  <38.218910, 28.674082, 39.123829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489799, 29.054039, 38.554424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.335892, 28.714115, 38.410328>,  <38.243549, 28.510160, 38.323868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.335892, 28.714115, 38.410328>,  <38.489799, 29.054039, 38.554424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335892, 28.714115, 38.410328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602305, 0.526908, -0.599664,
		0.699417, -0.013754, -0.714582,
		-0.384766, -0.849811, -0.360244,
		38.220463, 28.459171, 38.302254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162704, 29.308582, 38.208370>,  <38.489799, 29.054039, 38.554424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162704, 29.308582, 38.208370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224529, 29.687313, 38.321247>,  <39.261623, 29.914551, 38.388973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224529, 29.687313, 38.321247>,  <39.162704, 29.308582, 38.208370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224529, 29.687313, 38.321247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383687, -0.320728, 0.865978,
		0.910437, -0.025571, -0.412856,
		0.154558, 0.946826, 0.282191,
		39.270897, 29.971361, 38.405903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800167, 29.264725, 38.559589>,  <39.162704, 29.308582, 38.208370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800167, 29.264725, 38.559589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653095, 29.622881, 38.660061>,  <39.564854, 29.837774, 38.720345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653095, 29.622881, 38.660061>,  <39.800167, 29.264725, 38.559589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653095, 29.622881, 38.660061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429360, -0.076141, 0.899918,
		0.824902, 0.438726, -0.356449,
		-0.367677, 0.895389, 0.251180,
		39.542793, 29.891499, 38.735416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487991, 29.758598, 38.821693>,  <39.800167, 29.264725, 38.559589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487991, 29.758598, 38.821693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133400, 29.877203, 38.963810>,  <39.920647, 29.948366, 39.049080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133400, 29.877203, 38.963810>,  <40.487991, 29.758598, 38.821693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133400, 29.877203, 38.963810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393611, 0.079363, 0.915845,
		0.243362, 0.951726, -0.187064,
		-0.886479, 0.296512, 0.355296,
		39.867455, 29.966156, 39.070400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550220, 30.365137, 39.143127>,  <40.487991, 29.758598, 38.821693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550220, 30.365137, 39.143127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229729, 30.207050, 39.322834>,  <40.037434, 30.112198, 39.430656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229729, 30.207050, 39.322834>,  <40.550220, 30.365137, 39.143127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229729, 30.207050, 39.322834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449740, 0.097482, 0.887824,
		-0.394677, 0.913401, 0.099639,
		-0.801227, -0.395215, 0.449267,
		39.989361, 30.088486, 39.457615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383995, 30.834366, 39.704361>,  <40.550220, 30.365137, 39.143127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383995, 30.834366, 39.704361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226257, 30.472504, 39.768970>,  <40.131615, 30.255386, 39.807735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226257, 30.472504, 39.768970>,  <40.383995, 30.834366, 39.704361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226257, 30.472504, 39.768970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456793, -0.040448, 0.888653,
		-0.797391, 0.424221, 0.429190,
		-0.394345, -0.904655, 0.161528,
		40.107952, 30.201107, 39.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320515, 30.794579, 40.400917>,  <40.383995, 30.834366, 39.704361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320515, 30.794579, 40.400917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221779, 30.416590, 40.315037>,  <40.162537, 30.189796, 40.263508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221779, 30.416590, 40.315037>,  <40.320515, 30.794579, 40.400917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221779, 30.416590, 40.315037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433764, -0.305863, 0.847524,
		-0.866555, 0.116079, 0.485395,
		-0.246844, -0.944973, -0.214697,
		40.147724, 30.133099, 40.250629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973179, 30.482655, 40.946529>,  <40.320515, 30.794579, 40.400917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973179, 30.482655, 40.946529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162628, 30.198879, 40.737770>,  <40.276299, 30.028614, 40.612514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162628, 30.198879, 40.737770>,  <39.973179, 30.482655, 40.946529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162628, 30.198879, 40.737770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718371, -0.031652, 0.694940,
		-0.509535, -0.704058, 0.494648,
		0.473621, -0.709437, -0.521903,
		40.304714, 29.986048, 40.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031219, 29.877485, 41.275856>,  <39.973179, 30.482655, 40.946529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031219, 29.877485, 41.275856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314213, 29.812368, 41.000767>,  <40.484009, 29.773298, 40.835712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314213, 29.812368, 41.000767>,  <40.031219, 29.877485, 41.275856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314213, 29.812368, 41.000767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672357, -0.144733, 0.725940,
		-0.217716, -0.975987, 0.007061,
		0.707486, -0.162796, -0.687722,
		40.526459, 29.763531, 40.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381893, 29.362970, 41.449635>,  <40.031219, 29.877485, 41.275856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381893, 29.362970, 41.449635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.657700, 29.509434, 41.199677>,  <40.823185, 29.597311, 41.049702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.657700, 29.509434, 41.199677>,  <40.381893, 29.362970, 41.449635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657700, 29.509434, 41.199677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713796, -0.197351, 0.671973,
		0.122726, -0.909384, -0.397440,
		0.689517, 0.366160, -0.624895,
		40.864555, 29.619282, 41.012207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948624, 28.903975, 41.394730>,  <40.381893, 29.362970, 41.449635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948624, 28.903975, 41.394730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.136723, 29.241280, 41.290592>,  <41.249580, 29.443663, 41.228111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.136723, 29.241280, 41.290592>,  <40.948624, 28.903975, 41.394730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136723, 29.241280, 41.290592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747906, -0.224168, 0.624808,
		0.468517, -0.488524, -0.736095,
		0.470243, 0.843263, -0.260343,
		41.277794, 29.494259, 41.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637947, 28.737896, 41.278500>,  <40.948624, 28.903975, 41.394730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637947, 28.737896, 41.278500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643974, 29.130924, 41.352615>,  <41.647591, 29.366741, 41.397083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643974, 29.130924, 41.352615>,  <41.637947, 28.737896, 41.278500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643974, 29.130924, 41.352615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770250, -0.129563, 0.624442,
		0.637564, 0.133312, -0.758776,
		0.015064, 0.982569, 0.185288,
		41.648495, 29.425695, 41.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291298, 28.819756, 41.139862>,  <41.637947, 28.737896, 41.278500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291298, 28.819756, 41.139862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138680, 29.102610, 41.377983>,  <42.047108, 29.272322, 41.520855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138680, 29.102610, 41.377983>,  <42.291298, 28.819756, 41.139862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138680, 29.102610, 41.377983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807802, -0.057963, 0.586598,
		0.449308, 0.704700, -0.549108,
		-0.381548, 0.707133, 0.595301,
		42.024216, 29.314749, 41.556572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854916, 29.044825, 41.485035>,  <42.291298, 28.819756, 41.139862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854916, 29.044825, 41.485035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579163, 29.205202, 41.726364>,  <42.413712, 29.301428, 41.871162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579163, 29.205202, 41.726364>,  <42.854916, 29.044825, 41.485035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579163, 29.205202, 41.726364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661044, 0.007570, 0.750309,
		0.296264, 0.916072, -0.270259,
		-0.689383, 0.400943, 0.603321,
		42.372349, 29.325485, 41.907360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237480, 29.625399, 41.851284>,  <42.854916, 29.044825, 41.485035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237480, 29.625399, 41.851284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.914310, 29.550377, 42.074741>,  <42.720409, 29.505363, 42.208817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.914310, 29.550377, 42.074741>,  <43.237480, 29.625399, 41.851284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914310, 29.550377, 42.074741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544908, 0.123158, 0.829402,
		-0.224361, 0.974502, 0.002698,
		-0.807922, -0.187556, 0.558646,
		42.671932, 29.494110, 42.242336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.716808, 31.078081, 44.940651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953094, 30.786985, 44.801254>,  <37.094868, 30.612328, 44.717617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953094, 30.786985, 44.801254>,  <36.716808, 31.078081, 44.940651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953094, 30.786985, 44.801254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188134, 0.295769, -0.936550,
		0.784638, 0.618801, 0.037804,
		0.590719, -0.727740, -0.348489,
		37.130310, 30.568663, 44.696709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297062, 31.395855, 44.607971>,  <36.716808, 31.078081, 44.940651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297062, 31.395855, 44.607971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226273, 31.031599, 44.458618>,  <37.183800, 30.813046, 44.369007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226273, 31.031599, 44.458618>,  <37.297062, 31.395855, 44.607971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226273, 31.031599, 44.458618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003375, 0.378810, -0.925468,
		0.984210, -0.165043, -0.063966,
		-0.176973, -0.910639, -0.373385,
		37.173180, 30.758408, 44.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640053, 31.389126, 44.003506>,  <37.297062, 31.395855, 44.607971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640053, 31.389126, 44.003506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429405, 31.053415, 43.949409>,  <37.303017, 30.851990, 43.916950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429405, 31.053415, 43.949409>,  <37.640053, 31.389126, 44.003506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429405, 31.053415, 43.949409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002796, 0.157376, -0.987535,
		0.850096, -0.520434, -0.080530,
		-0.526620, -0.839274, -0.135240,
		37.271420, 30.801634, 43.908836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847946, 31.060677, 43.394917>,  <37.640053, 31.389126, 44.003506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847946, 31.060677, 43.394917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484375, 30.907280, 43.460373>,  <37.266232, 30.815243, 43.499645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484375, 30.907280, 43.460373>,  <37.847946, 31.060677, 43.394917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484375, 30.907280, 43.460373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156351, -0.050332, -0.986418,
		0.386518, -0.922172, -0.014211,
		-0.908932, -0.383490, 0.163637,
		37.211697, 30.792233, 43.509464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594570, 30.654278, 42.844360>,  <37.847946, 31.060677, 43.394917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594570, 30.654278, 42.844360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236633, 30.748333, 42.996132>,  <37.021870, 30.804766, 43.087196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236633, 30.748333, 42.996132>,  <37.594570, 30.654278, 42.844360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236633, 30.748333, 42.996132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342226, 0.184362, -0.921353,
		-0.286600, -0.954316, -0.084504,
		-0.894842, 0.235140, 0.379430,
		36.968182, 30.818874, 43.109962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136768, 30.276472, 42.498135>,  <37.594570, 30.654278, 42.844360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136768, 30.276472, 42.498135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922195, 30.578842, 42.648239>,  <36.793453, 30.760263, 42.738300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922195, 30.578842, 42.648239>,  <37.136768, 30.276472, 42.498135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922195, 30.578842, 42.648239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452100, 0.118069, -0.884118,
		-0.712634, -0.643922, 0.278418,
		-0.536431, 0.755926, 0.375257,
		36.761265, 30.805620, 42.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459278, 30.099693, 42.263618>,  <37.136768, 30.276472, 42.498135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459278, 30.099693, 42.263618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396873, 30.480360, 42.369446>,  <36.359432, 30.708759, 42.432941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396873, 30.480360, 42.369446>,  <36.459278, 30.099693, 42.263618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396873, 30.480360, 42.369446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580514, 0.128370, -0.804068,
		-0.799165, -0.279024, 0.532428,
		-0.156007, 0.951665, 0.264566,
		36.350071, 30.765860, 42.448814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793468, 30.230434, 42.190067>,  <36.459278, 30.099693, 42.263618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793468, 30.230434, 42.190067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948547, 30.598259, 42.164459>,  <36.041595, 30.818953, 42.149094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948547, 30.598259, 42.164459>,  <35.793468, 30.230434, 42.190067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948547, 30.598259, 42.164459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506031, 0.154270, -0.848607,
		-0.770468, 0.361402, 0.525136,
		0.387701, 0.919559, -0.064021,
		36.064857, 30.874126, 42.145252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320202, 30.681116, 41.958176>,  <35.793468, 30.230434, 42.190067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320202, 30.681116, 41.958176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653797, 30.881914, 41.866547>,  <35.853954, 31.002392, 41.811569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653797, 30.881914, 41.866547>,  <35.320202, 30.681116, 41.958176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653797, 30.881914, 41.866547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355120, 0.170559, -0.919130,
		-0.422328, 0.847887, 0.320512,
		0.833984, 0.501994, -0.229070,
		35.903992, 31.032513, 41.797825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997013, 31.360806, 41.577133>,  <35.320202, 30.681116, 41.958176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997013, 31.360806, 41.577133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387753, 31.333973, 41.495884>,  <35.622196, 31.317873, 41.447132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387753, 31.333973, 41.495884>,  <34.997013, 31.360806, 41.577133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387753, 31.333973, 41.495884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161871, 0.388985, -0.906911,
		0.139852, 0.918798, 0.369122,
		0.976852, -0.067083, -0.203127,
		35.680809, 31.313848, 41.434944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251881, 32.006470, 41.379459>,  <34.997013, 31.360806, 41.577133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251881, 32.006470, 41.379459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515171, 31.745083, 41.229946>,  <35.673145, 31.588251, 41.140236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515171, 31.745083, 41.229946>,  <35.251881, 32.006470, 41.379459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515171, 31.745083, 41.229946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189655, 0.336559, -0.922366,
		0.728537, 0.678018, 0.097599,
		0.658229, -0.653467, -0.373785,
		35.712639, 31.549042, 41.117809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697449, 32.407688, 41.182800>,  <35.251881, 32.006470, 41.379459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697449, 32.407688, 41.182800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764568, 32.064491, 40.988605>,  <35.804840, 31.858574, 40.872089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764568, 32.064491, 40.988605>,  <35.697449, 32.407688, 41.182800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764568, 32.064491, 40.988605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183331, 0.456719, -0.870515,
		0.968625, 0.235073, -0.080661,
		0.167795, -0.857991, -0.485486,
		35.814907, 31.807095, 40.842960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072601, 32.582794, 40.582245>,  <35.697449, 32.407688, 41.182800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072601, 32.582794, 40.582245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909302, 32.232403, 40.479492>,  <35.811321, 32.022167, 40.417839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909302, 32.232403, 40.479492>,  <36.072601, 32.582794, 40.582245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909302, 32.232403, 40.479492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261922, 0.381975, -0.886280,
		0.874487, -0.294541, -0.385380,
		-0.408251, -0.875980, -0.256886,
		35.786827, 31.969608, 40.402428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345932, 32.371899, 39.928551>,  <36.072601, 32.582794, 40.582245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345932, 32.371899, 39.928551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006744, 32.162910, 39.964264>,  <35.803230, 32.037518, 39.985691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006744, 32.162910, 39.964264>,  <36.345932, 32.371899, 39.928551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006744, 32.162910, 39.964264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293399, 0.322392, -0.899989,
		0.441430, -0.789361, -0.426670,
		-0.847972, -0.522467, 0.089284,
		35.752354, 32.006172, 39.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870541, 32.468079, 39.403618>,  <36.345932, 32.371899, 39.928551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870541, 32.468079, 39.403618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020744, 32.838573, 39.390533>,  <37.110867, 33.060871, 39.382683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020744, 32.838573, 39.390533>,  <36.870541, 32.468079, 39.403618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020744, 32.838573, 39.390533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545357, -0.192278, 0.815852,
		0.749386, -0.324200, -0.577334,
		0.375508, 0.926242, -0.032714,
		37.133396, 33.116447, 39.380718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517807, 32.332523, 39.657024>,  <36.870541, 32.468079, 39.403618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517807, 32.332523, 39.657024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.464691, 32.725143, 39.712051>,  <37.432823, 32.960716, 39.745068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.464691, 32.725143, 39.712051>,  <37.517807, 32.332523, 39.657024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464691, 32.725143, 39.712051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571610, -0.037550, 0.819666,
		0.809710, 0.187475, -0.556078,
		-0.132786, 0.981551, 0.137568,
		37.424854, 33.019608, 39.753323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177132, 32.565369, 39.723446>,  <37.517807, 32.332523, 39.657024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177132, 32.565369, 39.723446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958744, 32.859089, 39.884804>,  <37.827713, 33.035320, 39.981617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958744, 32.859089, 39.884804>,  <38.177132, 32.565369, 39.723446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958744, 32.859089, 39.884804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581703, -0.014275, 0.813276,
		0.602946, 0.678676, -0.419351,
		-0.545964, 0.734299, 0.403395,
		37.794956, 33.079380, 40.005821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663342, 33.135025, 39.857151>,  <38.177132, 32.565369, 39.723446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663342, 33.135025, 39.857151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.322727, 33.191883, 40.059017>,  <38.118359, 33.225998, 40.180138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.322727, 33.191883, 40.059017>,  <38.663342, 33.135025, 39.857151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322727, 33.191883, 40.059017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495615, -0.095787, 0.863244,
		0.171044, 0.985201, 0.011118,
		-0.851533, 0.142143, 0.504664,
		38.067268, 33.234528, 40.210415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708298, 33.820179, 40.240089>,  <38.663342, 33.135025, 39.857151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708298, 33.820179, 40.240089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420948, 33.669765, 40.474194>,  <38.248539, 33.579517, 40.614658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420948, 33.669765, 40.474194>,  <38.708298, 33.820179, 40.240089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420948, 33.669765, 40.474194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622053, 0.029399, 0.782423,
		-0.311425, 0.926139, 0.212795,
		-0.718376, -0.376036, 0.585263,
		38.205437, 33.556953, 40.649773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580597, 34.224754, 40.817509>,  <38.708298, 33.820179, 40.240089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580597, 34.224754, 40.817509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443398, 33.864487, 40.924210>,  <38.361080, 33.648327, 40.988228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443398, 33.864487, 40.924210>,  <38.580597, 34.224754, 40.817509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443398, 33.864487, 40.924210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596060, 0.010789, 0.802868,
		-0.725994, 0.434378, 0.533150,
		-0.342996, -0.900666, 0.266748,
		38.340500, 33.594288, 41.004234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361515, 34.336403, 41.528820>,  <38.580597, 34.224754, 40.817509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361515, 34.336403, 41.528820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432896, 33.951626, 41.446053>,  <38.475723, 33.720760, 41.396393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432896, 33.951626, 41.446053>,  <38.361515, 34.336403, 41.528820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432896, 33.951626, 41.446053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495321, -0.093878, 0.863622,
		-0.850184, -0.256604, 0.459720,
		0.178451, -0.961947, -0.206915,
		38.486431, 33.663040, 41.383980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295994, 33.990021, 42.170368>,  <38.361515, 34.336403, 41.528820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295994, 33.990021, 42.170368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486343, 33.684288, 41.996315>,  <38.600552, 33.500847, 41.891884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486343, 33.684288, 41.996315>,  <38.295994, 33.990021, 42.170368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486343, 33.684288, 41.996315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423080, -0.234808, 0.875139,
		-0.771071, -0.600550, 0.211635,
		0.475871, -0.764333, -0.435134,
		38.629105, 33.454987, 41.865776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083992, 33.377399, 42.667828>,  <38.295994, 33.990021, 42.170368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083992, 33.377399, 42.667828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412716, 33.322418, 42.446651>,  <38.609951, 33.289429, 42.313946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412716, 33.322418, 42.446651>,  <38.083992, 33.377399, 42.667828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412716, 33.322418, 42.446651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480516, -0.354291, 0.802236,
		-0.306166, -0.924979, -0.225114,
		0.821807, -0.137446, -0.552939,
		38.659256, 33.281181, 42.280769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230446, 32.754620, 42.861759>,  <38.083992, 33.377399, 42.667828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230446, 32.754620, 42.861759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580738, 32.886135, 42.720341>,  <38.790913, 32.965042, 42.635490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580738, 32.886135, 42.720341>,  <38.230446, 32.754620, 42.861759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580738, 32.886135, 42.720341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482626, -0.576491, 0.659341,
		0.012964, -0.748036, -0.663531,
		0.875731, 0.328785, -0.353548,
		38.843456, 32.984772, 42.614277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575642, 32.181900, 42.797363>,  <38.230446, 32.754620, 42.861759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575642, 32.181900, 42.797363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.860817, 32.460621, 42.828796>,  <39.031921, 32.627853, 42.847656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.860817, 32.460621, 42.828796>,  <38.575642, 32.181900, 42.797363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860817, 32.460621, 42.828796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486380, -0.572119, 0.660390,
		0.505122, -0.432598, -0.746800,
		0.712942, 0.696806, 0.078583,
		39.074699, 32.669662, 42.852371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190331, 31.867498, 42.830879>,  <38.575642, 32.181900, 42.797363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190331, 31.867498, 42.830879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307457, 32.220112, 42.979019>,  <39.377731, 32.431679, 43.067905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307457, 32.220112, 42.979019>,  <39.190331, 31.867498, 42.830879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307457, 32.220112, 42.979019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397749, -0.464526, 0.791209,
		0.869515, -0.084368, -0.486647,
		0.292813, 0.881532, 0.370355,
		39.395302, 32.484570, 43.090126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046474, 31.998894, 42.917992>,  <39.190331, 31.867498, 42.830879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046474, 31.998894, 42.917992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.860493, 32.245083, 43.172554>,  <39.748905, 32.392796, 43.325291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.860493, 32.245083, 43.172554>,  <40.046474, 31.998894, 42.917992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860493, 32.245083, 43.172554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418278, -0.480839, 0.770609,
		0.780298, 0.624490, -0.033872,
		-0.464951, 0.615472, 0.636408,
		39.721008, 32.429726, 43.363476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525276, 32.143196, 43.453121>,  <40.046474, 31.998894, 42.917992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525276, 32.143196, 43.453121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.166904, 32.222843, 43.611946>,  <39.951881, 32.270630, 43.707241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.166904, 32.222843, 43.611946>,  <40.525276, 32.143196, 43.453121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166904, 32.222843, 43.611946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305236, -0.373440, 0.875998,
		0.322707, 0.906032, 0.273799,
		-0.895930, 0.199118, 0.397066,
		39.898125, 32.282578, 43.731068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099827, 32.690231, 43.328114>,  <40.525276, 32.143196, 43.453121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099827, 32.690231, 43.328114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.487434, 32.648880, 43.238388>,  <41.719997, 32.624069, 43.184555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.487434, 32.648880, 43.238388>,  <41.099827, 32.690231, 43.328114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487434, 32.648880, 43.238388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220817, 0.044231, -0.974312,
		0.110642, 0.993658, 0.020033,
		0.969019, -0.103377, -0.224311,
		41.778141, 32.617867, 43.171093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264435, 33.251938, 42.870026>,  <41.099827, 32.690231, 43.328114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264435, 33.251938, 42.870026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527168, 32.960831, 42.791111>,  <41.684807, 32.786167, 42.743763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527168, 32.960831, 42.791111>,  <41.264435, 33.251938, 42.870026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527168, 32.960831, 42.791111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140948, 0.138528, -0.980277,
		0.740745, 0.671686, -0.011588,
		0.656833, -0.727769, -0.197287,
		41.724216, 32.742500, 42.731926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748634, 33.613903, 42.361656>,  <41.264435, 33.251938, 42.870026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748634, 33.613903, 42.361656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.782749, 33.215919, 42.340530>,  <41.803219, 32.977131, 42.327854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.782749, 33.215919, 42.340530>,  <41.748634, 33.613903, 42.361656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782749, 33.215919, 42.340530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058525, 0.057915, -0.996604,
		0.994636, 0.081908, 0.063170,
		0.085289, -0.994956, -0.052811,
		41.808334, 32.917431, 42.324688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327576, 33.496208, 41.889580>,  <41.748634, 33.613903, 42.361656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327576, 33.496208, 41.889580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070126, 33.192364, 41.926975>,  <41.915657, 33.010056, 41.949413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070126, 33.192364, 41.926975>,  <42.327576, 33.496208, 41.889580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070126, 33.192364, 41.926975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057616, -0.073712, -0.995614,
		0.763172, -0.646186, 0.003677,
		-0.643622, -0.759612, 0.093486,
		41.877037, 32.964481, 41.955021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658138, 32.968937, 41.479053>,  <42.327576, 33.496208, 41.889580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658138, 32.968937, 41.479053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.267315, 32.901176, 41.530685>,  <42.032822, 32.860519, 41.561665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.267315, 32.901176, 41.530685>,  <42.658138, 32.968937, 41.479053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267315, 32.901176, 41.530685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134268, 0.019500, -0.990753,
		0.165321, -0.985354, -0.041798,
		-0.977057, -0.169404, 0.129078,
		41.974197, 32.850353, 41.569408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518951, 32.694935, 40.852928>,  <42.658138, 32.968937, 41.479053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518951, 32.694935, 40.852928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154057, 32.739792, 41.010532>,  <41.935120, 32.766705, 41.105095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154057, 32.739792, 41.010532>,  <42.518951, 32.694935, 40.852928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154057, 32.739792, 41.010532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394993, 0.014250, -0.918573,
		-0.108629, -0.993590, 0.031297,
		-0.912239, 0.112146, 0.394009,
		41.880386, 32.773434, 41.128735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139626, 32.189003, 40.544613>,  <42.518951, 32.694935, 40.852928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139626, 32.189003, 40.544613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.883057, 32.469646, 40.668758>,  <41.729115, 32.638031, 40.743248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.883057, 32.469646, 40.668758>,  <42.139626, 32.189003, 40.544613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883057, 32.469646, 40.668758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379035, 0.061918, -0.923308,
		-0.667017, -0.709869, 0.226218,
		-0.641421, 0.701607, 0.310365,
		41.690632, 32.680130, 40.761868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477722, 32.029026, 40.205360>,  <42.139626, 32.189003, 40.544613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477722, 32.029026, 40.205360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441387, 32.410984, 40.318439>,  <41.419586, 32.640160, 40.386288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441387, 32.410984, 40.318439>,  <41.477722, 32.029026, 40.205360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441387, 32.410984, 40.318439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435843, 0.217117, -0.873442,
		-0.895427, -0.202555, 0.396462,
		-0.090841, 0.954899, 0.282695,
		41.414135, 32.697453, 40.403248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695782, 32.343590, 40.104816>,  <41.477722, 32.029026, 40.205360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695782, 32.343590, 40.104816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969440, 32.634968, 40.090343>,  <41.133636, 32.809795, 40.081657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969440, 32.634968, 40.090343>,  <40.695782, 32.343590, 40.104816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969440, 32.634968, 40.090343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419525, 0.352462, -0.836522,
		-0.596604, 0.587488, 0.546737,
		0.684151, 0.728442, -0.036185,
		41.174686, 32.853500, 40.079487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375282, 32.944763, 39.814877>,  <40.695782, 32.343590, 40.104816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375282, 32.944763, 39.814877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756008, 33.055439, 39.761971>,  <40.984444, 33.121845, 39.730228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756008, 33.055439, 39.761971>,  <40.375282, 32.944763, 39.814877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756008, 33.055439, 39.761971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250879, 0.454452, -0.854712,
		-0.176380, 0.846710, 0.501969,
		0.951814, 0.276687, -0.132266,
		41.041553, 33.138447, 39.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322601, 33.664894, 39.822174>,  <40.375282, 32.944763, 39.814877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322601, 33.664894, 39.822174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658714, 33.547680, 39.639725>,  <40.860382, 33.477352, 39.530254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658714, 33.547680, 39.639725>,  <40.322601, 33.664894, 39.822174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658714, 33.547680, 39.639725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315129, 0.420610, -0.850753,
		0.441148, 0.858615, 0.261091,
		0.840287, -0.293031, -0.456125,
		40.910801, 33.459770, 39.502888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458454, 34.152462, 39.433739>,  <40.322601, 33.664894, 39.822174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458454, 34.152462, 39.433739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702328, 33.879799, 39.271931>,  <40.848652, 33.716202, 39.174847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702328, 33.879799, 39.271931>,  <40.458454, 34.152462, 39.433739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702328, 33.879799, 39.271931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445489, 0.127434, -0.886172,
		0.655612, 0.720492, -0.225975,
		0.609683, -0.681654, -0.404518,
		40.885231, 33.675304, 39.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676411, 34.459064, 38.828377>,  <40.458454, 34.152462, 39.433739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676411, 34.459064, 38.828377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744953, 34.070400, 38.763245>,  <40.786079, 33.837200, 38.724167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744953, 34.070400, 38.763245>,  <40.676411, 34.459064, 38.828377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744953, 34.070400, 38.763245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537304, 0.046363, -0.842113,
		0.825798, 0.231789, -0.514132,
		0.171356, -0.971661, -0.162827,
		40.796360, 33.778900, 38.714397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006008, 34.359131, 38.115826>,  <40.676411, 34.459064, 38.828377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006008, 34.359131, 38.115826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820629, 34.027981, 38.242214>,  <40.709400, 33.829292, 38.318047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820629, 34.027981, 38.242214>,  <41.006008, 34.359131, 38.115826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820629, 34.027981, 38.242214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522736, -0.032501, -0.851874,
		0.715513, -0.559973, -0.417697,
		-0.463451, -0.827873, 0.315974,
		40.681595, 33.779617, 38.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.198875, 26.670601, 30.733212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.167828, 26.431162, 31.052124>,  <25.149199, 26.287498, 31.243471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.167828, 26.431162, 31.052124>,  <25.198875, 26.670601, 30.733212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167828, 26.431162, 31.052124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013516, 0.798987, 0.601196,
		-0.996891, 0.057442, -0.053927,
		-0.077621, -0.598599, 0.797280,
		25.144541, 26.251583, 31.291307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608210, 26.875511, 31.096462>,  <25.198875, 26.670601, 30.733212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608210, 26.875511, 31.096462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.841112, 26.689802, 31.363424>,  <24.980854, 26.578377, 31.523602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.841112, 26.689802, 31.363424>,  <24.608210, 26.875511, 31.096462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841112, 26.689802, 31.363424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134455, 0.754615, 0.642244,
		-0.801809, -0.463687, 0.376957,
		0.582258, -0.464273, 0.667403,
		25.015789, 26.550520, 31.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.326902, 27.123703, 31.822639>,  <24.608210, 26.875511, 31.096462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.326902, 27.123703, 31.822639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.700985, 26.990250, 31.870104>,  <24.925434, 26.910179, 31.898582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.700985, 26.990250, 31.870104>,  <24.326902, 27.123703, 31.822639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700985, 26.990250, 31.870104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157274, 0.691589, 0.704960,
		-0.317263, -0.640620, 0.699250,
		0.935205, -0.333631, 0.118663,
		24.981546, 26.890160, 31.905703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355141, 26.956879, 32.568680>,  <24.326902, 27.123703, 31.822639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355141, 26.956879, 32.568680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.728292, 27.015089, 32.436886>,  <24.952183, 27.050014, 32.357811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.728292, 27.015089, 32.436886>,  <24.355141, 26.956879, 32.568680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.728292, 27.015089, 32.436886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159835, 0.652499, 0.740742,
		0.322781, -0.743686, 0.585443,
		0.932880, 0.145523, -0.329481,
		25.008156, 27.058746, 32.338043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793093, 26.886335, 33.172039>,  <24.355141, 26.956879, 32.568680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793093, 26.886335, 33.172039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.976542, 27.114677, 32.899632>,  <25.086611, 27.251682, 32.736187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.976542, 27.114677, 32.899632>,  <24.793093, 26.886335, 33.172039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976542, 27.114677, 32.899632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270425, 0.640365, 0.718890,
		0.846485, -0.513863, 0.139310,
		0.458620, 0.570857, -0.681021,
		25.114128, 27.285934, 32.695324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220016, 27.192621, 33.602055>,  <24.793093, 26.886335, 33.172039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220016, 27.192621, 33.602055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271671, 27.406841, 33.268227>,  <25.302664, 27.535374, 33.067928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271671, 27.406841, 33.268227>,  <25.220016, 27.192621, 33.602055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271671, 27.406841, 33.268227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190604, 0.812519, 0.550893,
		0.973136, -0.230213, 0.002847,
		0.129136, 0.535552, -0.834571,
		25.310411, 27.567507, 33.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824919, 27.611761, 33.675301>,  <25.220016, 27.192621, 33.602055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824919, 27.611761, 33.675301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.596601, 27.794771, 33.402576>,  <25.459612, 27.904577, 33.238941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.596601, 27.794771, 33.402576>,  <25.824919, 27.611761, 33.675301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596601, 27.794771, 33.402576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149785, 0.874454, 0.461405,
		0.807316, 0.161241, -0.567663,
		-0.570793, 0.457527, -0.681810,
		25.425364, 27.932030, 33.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283752, 28.212950, 33.400444>,  <25.824919, 27.611761, 33.675301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283752, 28.212950, 33.400444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.901545, 28.281950, 33.304760>,  <25.672220, 28.323351, 33.247349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.901545, 28.281950, 33.304760>,  <26.283752, 28.212950, 33.400444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901545, 28.281950, 33.304760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097843, 0.950579, 0.294662,
		0.278217, 0.258151, -0.925177,
		-0.955522, 0.172503, -0.239209,
		25.614887, 28.333700, 33.232998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253153, 28.822733, 32.967079>,  <26.283752, 28.212950, 33.400444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253153, 28.822733, 32.967079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896217, 28.768427, 33.139267>,  <25.682056, 28.735844, 33.242580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896217, 28.768427, 33.139267>,  <26.253153, 28.822733, 32.967079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896217, 28.768427, 33.139267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083432, 0.986871, 0.138296,
		-0.443590, 0.087492, -0.891949,
		-0.892338, -0.135764, 0.430466,
		25.628515, 28.727697, 33.268406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872301, 29.446850, 32.750374>,  <26.253153, 28.822733, 32.967079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872301, 29.446850, 32.750374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689720, 29.305916, 33.077179>,  <25.580172, 29.221355, 33.273262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689720, 29.305916, 33.077179>,  <25.872301, 29.446850, 32.750374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689720, 29.305916, 33.077179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353867, 0.914393, 0.196627,
		-0.816351, -0.199364, -0.542057,
		-0.456453, -0.352333, 0.817014,
		25.552784, 29.200216, 33.322285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172117, 29.655424, 32.698368>,  <25.872301, 29.446850, 32.750374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172117, 29.655424, 32.698368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.229267, 29.576965, 33.086411>,  <25.263557, 29.529890, 33.319237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.229267, 29.576965, 33.086411>,  <25.172117, 29.655424, 32.698368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229267, 29.576965, 33.086411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288738, 0.929269, 0.230413,
		-0.946687, -0.313028, 0.076136,
		0.142876, -0.196146, 0.970110,
		25.272131, 29.518122, 33.377445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633156, 29.882172, 32.982639>,  <25.172117, 29.655424, 32.698368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633156, 29.882172, 32.982639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877846, 29.881495, 33.299068>,  <25.024660, 29.881088, 33.488926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877846, 29.881495, 33.299068>,  <24.633156, 29.882172, 32.982639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877846, 29.881495, 33.299068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354836, 0.893168, 0.276299,
		-0.707025, -0.449719, 0.545773,
		0.611725, -0.001690, 0.791069,
		25.061363, 29.880987, 33.536388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219534, 30.054943, 33.547810>,  <24.633156, 29.882172, 32.982639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219534, 30.054943, 33.547810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.595791, 30.140045, 33.653584>,  <24.821545, 30.191107, 33.717049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.595791, 30.140045, 33.653584>,  <24.219534, 30.054943, 33.547810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595791, 30.140045, 33.653584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286760, 0.914963, 0.283920,
		-0.181539, -0.342896, 0.921665,
		0.940644, 0.212754, 0.264431,
		24.877985, 30.203871, 33.732914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178030, 30.480646, 34.094131>,  <24.219534, 30.054943, 33.547810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178030, 30.480646, 34.094131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.567572, 30.523373, 34.013935>,  <24.801296, 30.549009, 33.965816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.567572, 30.523373, 34.013935>,  <24.178030, 30.480646, 34.094131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567572, 30.523373, 34.013935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059614, 0.971792, 0.228181,
		0.219213, -0.210262, 0.952751,
		0.973854, 0.106818, -0.200495,
		24.859728, 30.555418, 33.953785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568628, 30.821842, 34.653259>,  <24.178030, 30.480646, 34.094131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568628, 30.821842, 34.653259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.749763, 30.901026, 34.305523>,  <24.858444, 30.948536, 34.096882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.749763, 30.901026, 34.305523>,  <24.568628, 30.821842, 34.653259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749763, 30.901026, 34.305523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101094, 0.980152, 0.170535,
		0.885844, 0.010660, 0.463861,
		0.452836, 0.197961, -0.869339,
		24.885614, 30.960415, 34.044720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832605, 31.481380, 34.721416>,  <24.568628, 30.821842, 34.653259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832605, 31.481380, 34.721416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.861774, 31.462299, 34.322937>,  <24.879276, 31.450851, 34.083851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.861774, 31.462299, 34.322937>,  <24.832605, 31.481380, 34.721416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861774, 31.462299, 34.322937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094217, 0.994059, -0.054497,
		0.992878, 0.097833, 0.067993,
		0.072921, -0.047703, -0.996196,
		24.883650, 31.447989, 34.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335358, 31.976204, 34.600075>,  <24.832605, 31.481380, 34.721416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335358, 31.976204, 34.600075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.157101, 31.908079, 34.248531>,  <25.050146, 31.867205, 34.037605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.157101, 31.908079, 34.248531>,  <25.335358, 31.976204, 34.600075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157101, 31.908079, 34.248531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047732, 0.984860, -0.166652,
		0.893939, -0.032317, -0.447023,
		-0.445640, -0.170314, -0.878862,
		25.023409, 31.856985, 33.984871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841785, 32.233395, 34.009148>,  <25.335358, 31.976204, 34.600075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841785, 32.233395, 34.009148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.457314, 32.209934, 33.901302>,  <25.226631, 32.195858, 33.836594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.457314, 32.209934, 33.901302>,  <25.841785, 32.233395, 34.009148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457314, 32.209934, 33.901302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017435, 0.988105, -0.152787,
		0.275370, -0.142155, -0.950770,
		-0.961180, -0.058649, -0.269616,
		25.168959, 32.192341, 33.820419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768850, 32.631096, 33.485130>,  <25.841785, 32.233395, 34.009148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768850, 32.631096, 33.485130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379988, 32.614613, 33.577404>,  <25.146671, 32.604721, 33.632767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379988, 32.614613, 33.577404>,  <25.768850, 32.631096, 33.485130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379988, 32.614613, 33.577404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087732, 0.976827, -0.195222,
		-0.217295, -0.210024, -0.953243,
		-0.972155, -0.041209, 0.230686,
		25.088341, 32.602249, 33.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303413, 32.769444, 33.847023>,  <25.768850, 32.631096, 33.485130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303413, 32.769444, 33.847023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643564, 32.619820, 33.995045>,  <26.847654, 32.530045, 34.083858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643564, 32.619820, 33.995045>,  <26.303413, 32.769444, 33.847023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643564, 32.619820, 33.995045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134513, -0.525378, -0.840169,
		0.508692, 0.764237, -0.396452,
		0.850375, -0.374060, 0.370056,
		26.898678, 32.507603, 34.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799812, 33.042561, 33.417404>,  <26.303413, 32.769444, 33.847023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799812, 33.042561, 33.417404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991058, 32.735367, 33.587864>,  <27.105806, 32.551052, 33.690140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991058, 32.735367, 33.587864>,  <26.799812, 33.042561, 33.417404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991058, 32.735367, 33.587864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292767, -0.318095, -0.901722,
		0.828065, 0.555892, 0.072754,
		0.478117, -0.767985, 0.426150,
		27.134493, 32.504971, 33.715710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292473, 32.949337, 32.935524>,  <26.799812, 33.042561, 33.417404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292473, 32.949337, 32.935524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298887, 32.606266, 33.141102>,  <27.302736, 32.400425, 33.264450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298887, 32.606266, 33.141102>,  <27.292473, 32.949337, 32.935524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298887, 32.606266, 33.141102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245813, -0.494855, -0.833484,
		0.969185, 0.139699, 0.202892,
		0.016035, -0.857673, 0.513946,
		27.303698, 32.348965, 33.295284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869778, 32.729103, 32.784046>,  <27.292473, 32.949337, 32.935524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869778, 32.729103, 32.784046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637199, 32.428391, 32.908459>,  <27.497652, 32.247963, 32.983109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637199, 32.428391, 32.908459>,  <27.869778, 32.729103, 32.784046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637199, 32.428391, 32.908459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265803, -0.536857, -0.800708,
		0.768939, -0.382896, 0.511981,
		-0.581448, -0.751782, 0.311035,
		27.462765, 32.202858, 33.001770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273623, 32.102314, 32.706017>,  <27.869778, 32.729103, 32.784046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273623, 32.102314, 32.706017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893663, 31.977291, 32.706078>,  <27.665688, 31.902277, 32.706112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893663, 31.977291, 32.706078>,  <28.273623, 32.102314, 32.706017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893663, 31.977291, 32.706078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202659, -0.616269, -0.761014,
		0.237951, -0.722856, 0.648736,
		-0.949899, -0.312556, 0.000148,
		27.608694, 31.883524, 32.706123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341959, 31.413290, 32.654495>,  <28.273623, 32.102314, 32.706017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341959, 31.413290, 32.654495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969349, 31.478195, 32.524303>,  <27.745783, 31.517139, 32.446190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969349, 31.478195, 32.524303>,  <28.341959, 31.413290, 32.654495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969349, 31.478195, 32.524303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185196, -0.558579, -0.808512,
		-0.312997, -0.813425, 0.490278,
		-0.931523, 0.162264, -0.325477,
		27.689892, 31.526875, 32.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055428, 30.781656, 32.394409>,  <28.341959, 31.413290, 32.654495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055428, 30.781656, 32.394409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795794, 31.041552, 32.236156>,  <27.640013, 31.197489, 32.141205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795794, 31.041552, 32.236156>,  <28.055428, 30.781656, 32.394409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795794, 31.041552, 32.236156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036222, -0.545890, -0.837074,
		-0.759851, -0.529003, 0.377865,
		-0.649087, 0.649739, -0.395633,
		27.601067, 31.236473, 32.117466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656401, 30.314241, 32.121098>,  <28.055428, 30.781656, 32.394409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656401, 30.314241, 32.121098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584867, 30.662823, 31.938412>,  <27.541948, 30.871971, 31.828800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584867, 30.662823, 31.938412>,  <27.656401, 30.314241, 32.121098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584867, 30.662823, 31.938412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008757, -0.465589, -0.884958,
		-0.983840, -0.154261, 0.090894,
		-0.178834, 0.871453, -0.456714,
		27.531218, 30.924259, 31.801397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125635, 30.188684, 31.663179>,  <27.656401, 30.314241, 32.121098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125635, 30.188684, 31.663179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326391, 30.504318, 31.521503>,  <27.446844, 30.693699, 31.436497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326391, 30.504318, 31.521503>,  <27.125635, 30.188684, 31.663179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326391, 30.504318, 31.521503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034186, -0.427279, -0.903473,
		-0.864255, 0.441336, -0.241423,
		0.501890, 0.789085, -0.354191,
		27.476959, 30.741043, 31.415247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759682, 30.312744, 30.965151>,  <27.125635, 30.188684, 31.663179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759682, 30.312744, 30.965151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117153, 30.492203, 30.962091>,  <27.331636, 30.599878, 30.960257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117153, 30.492203, 30.962091>,  <26.759682, 30.312744, 30.965151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117153, 30.492203, 30.962091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128272, -0.271768, -0.953776,
		-0.429987, 0.851386, -0.300421,
		0.893677, 0.448646, -0.007648,
		27.385256, 30.626797, 30.959797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642067, 30.886057, 30.490469>,  <26.759682, 30.312744, 30.965151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642067, 30.886057, 30.490469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031507, 30.796774, 30.509550>,  <27.265173, 30.743204, 30.520998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031507, 30.796774, 30.509550>,  <26.642067, 30.886057, 30.490469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031507, 30.796774, 30.509550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051681, 0.012022, -0.998591,
		0.222320, 0.974697, 0.023241,
		0.973603, -0.223208, 0.047700,
		27.323589, 30.729811, 30.523861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008537, 31.316471, 29.934889>,  <26.642067, 30.886057, 30.490469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008537, 31.316471, 29.934889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273630, 31.045790, 30.063175>,  <27.432686, 30.883381, 30.140146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273630, 31.045790, 30.063175>,  <27.008537, 31.316471, 29.934889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273630, 31.045790, 30.063175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215543, -0.237773, -0.947104,
		0.717165, 0.696805, -0.011721,
		0.662733, -0.676703, 0.320714,
		27.472450, 30.842779, 30.159389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627314, 31.248766, 29.453373>,  <27.008537, 31.316471, 29.934889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627314, 31.248766, 29.453373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644365, 30.896629, 29.642340>,  <27.654596, 30.685347, 29.755720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644365, 30.896629, 29.642340>,  <27.627314, 31.248766, 29.453373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644365, 30.896629, 29.642340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054853, -0.470072, -0.880922,
		0.997584, 0.063466, 0.028251,
		0.042628, -0.880343, 0.472418,
		27.657154, 30.632526, 29.784065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899649, 30.845604, 29.010542>,  <27.627314, 31.248766, 29.453373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899649, 30.845604, 29.010542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732513, 30.573860, 29.251833>,  <27.632233, 30.410814, 29.396608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732513, 30.573860, 29.251833>,  <27.899649, 30.845604, 29.010542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732513, 30.573860, 29.251833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138889, -0.608397, -0.781385,
		0.897843, -0.410274, 0.159856,
		-0.417838, -0.679358, 0.603228,
		27.607162, 30.370052, 29.432802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287895, 30.308990, 28.773319>,  <27.899649, 30.845604, 29.010542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287895, 30.308990, 28.773319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964586, 30.176388, 28.967968>,  <27.770601, 30.096827, 29.084757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964586, 30.176388, 28.967968>,  <28.287895, 30.308990, 28.773319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964586, 30.176388, 28.967968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173981, -0.655083, -0.735253,
		0.562520, -0.678947, 0.471808,
		-0.808271, -0.331508, 0.486621,
		27.722105, 30.076935, 29.113955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291437, 29.538271, 28.710394>,  <28.287895, 30.308990, 28.773319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291437, 29.538271, 28.710394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912487, 29.631159, 28.798532>,  <27.685116, 29.686892, 28.851416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912487, 29.631159, 28.798532>,  <28.291437, 29.538271, 28.710394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912487, 29.631159, 28.798532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317283, -0.589699, -0.742689,
		-0.042530, -0.773517, 0.632346,
		-0.947377, 0.232219, 0.220345,
		27.628275, 29.700825, 28.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860445, 28.923531, 28.808331>,  <28.291437, 29.538271, 28.710394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860445, 28.923531, 28.808331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591358, 29.209164, 28.730833>,  <27.429907, 29.380545, 28.684334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591358, 29.209164, 28.730833>,  <27.860445, 28.923531, 28.808331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591358, 29.209164, 28.730833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490050, -0.626191, -0.606412,
		-0.554350, -0.312999, 0.771186,
		-0.672715, 0.714085, -0.193744,
		27.389544, 29.423389, 28.672710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316427, 28.561607, 28.668930>,  <27.860445, 28.923531, 28.808331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316427, 28.561607, 28.668930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159254, 28.912205, 28.557673>,  <27.064951, 29.122562, 28.490917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159254, 28.912205, 28.557673>,  <27.316427, 28.561607, 28.668930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159254, 28.912205, 28.557673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602932, -0.473947, -0.641754,
		-0.694319, -0.084462, 0.714694,
		-0.392930, 0.876494, -0.278145,
		27.041374, 29.175154, 28.474230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606956, 28.537306, 28.831694>,  <27.316427, 28.561607, 28.668930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606956, 28.537306, 28.831694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693094, 28.776211, 28.522655>,  <26.744776, 28.919554, 28.337233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693094, 28.776211, 28.522655>,  <26.606956, 28.537306, 28.831694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693094, 28.776211, 28.522655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581115, -0.557455, -0.592916,
		-0.784814, 0.576648, 0.227034,
		0.215343, 0.597262, -0.772597,
		26.757696, 28.955389, 28.290876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006065, 28.788015, 28.594334>,  <26.606956, 28.537306, 28.831694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006065, 28.788015, 28.594334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254829, 28.833122, 28.284363>,  <26.404089, 28.860186, 28.098381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254829, 28.833122, 28.284363>,  <26.006065, 28.788015, 28.594334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254829, 28.833122, 28.284363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504782, -0.698818, -0.506802,
		-0.598683, 0.706355, -0.377680,
		0.621912, 0.112767, -0.774926,
		26.441402, 28.866953, 28.051886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588083, 28.744190, 27.980932>,  <26.006065, 28.788015, 28.594334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588083, 28.744190, 27.980932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.958633, 28.650604, 27.862886>,  <26.180964, 28.594454, 27.792059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.958633, 28.650604, 27.862886>,  <25.588083, 28.744190, 27.980932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958633, 28.650604, 27.862886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365534, -0.747191, -0.555059,
		-0.090643, 0.622067, -0.777700,
		0.926374, -0.233964, -0.295114,
		26.236546, 28.580416, 27.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545223, 28.546774, 27.216179>,  <25.588083, 28.744190, 27.980932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545223, 28.546774, 27.216179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.887625, 28.389036, 27.349897>,  <26.093065, 28.294394, 27.430128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.887625, 28.389036, 27.349897>,  <25.545223, 28.546774, 27.216179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887625, 28.389036, 27.349897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201657, -0.850114, -0.486456,
		0.476020, 0.348994, -0.807222,
		0.856002, -0.394345, 0.334295,
		26.144424, 28.270733, 27.450186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852306, 28.198158, 26.627859>,  <25.545223, 28.546774, 27.216179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852306, 28.198158, 26.627859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956728, 28.037680, 26.979061>,  <26.019381, 27.941393, 27.189783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956728, 28.037680, 26.979061>,  <25.852306, 28.198158, 26.627859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956728, 28.037680, 26.979061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064540, -0.900255, -0.430553,
		0.963164, 0.169064, -0.209122,
		0.261054, -0.401196, 0.878005,
		26.035044, 27.917320, 27.242462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.065342, 30.328865, 42.409733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.856888, 30.020132, 42.555435>,  <42.731815, 29.834892, 42.642857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.856888, 30.020132, 42.555435>,  <43.065342, 30.328865, 42.409733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856888, 30.020132, 42.555435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359554, 0.188527, 0.913881,
		-0.774037, 0.607230, 0.179268,
		-0.521140, -0.771835, 0.364259,
		42.700546, 29.788582, 42.664711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864246, 30.576550, 43.079891>,  <43.065342, 30.328865, 42.409733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864246, 30.576550, 43.079891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.837666, 30.177465, 43.074921>,  <42.821716, 29.938015, 43.071938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.837666, 30.177465, 43.074921>,  <42.864246, 30.576550, 43.079891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837666, 30.177465, 43.074921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442560, -0.040639, 0.895818,
		-0.894273, 0.054030, 0.444248,
		-0.066455, -0.997712, -0.012431,
		42.817730, 29.878151, 43.071190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763954, 30.524946, 43.724964>,  <42.864246, 30.576550, 43.079891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763954, 30.524946, 43.724964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.867210, 30.159843, 43.598324>,  <42.929165, 29.940781, 43.522339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.867210, 30.159843, 43.598324>,  <42.763954, 30.524946, 43.724964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867210, 30.159843, 43.598324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335995, -0.222428, 0.915223,
		-0.905797, -0.342635, 0.249264,
		0.258144, -0.912758, -0.316598,
		42.944653, 29.886017, 43.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486618, 30.037033, 44.183914>,  <42.763954, 30.524946, 43.724964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486618, 30.037033, 44.183914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785023, 29.828983, 44.017570>,  <42.964066, 29.704153, 43.917763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785023, 29.828983, 44.017570>,  <42.486618, 30.037033, 44.183914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785023, 29.828983, 44.017570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313558, -0.276574, 0.908399,
		-0.587496, -0.808071, -0.043238,
		0.746009, -0.520123, -0.415863,
		43.008827, 29.672947, 43.892811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439091, 29.267748, 44.386860>,  <42.486618, 30.037033, 44.183914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439091, 29.267748, 44.386860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.809658, 29.398844, 44.312752>,  <43.031998, 29.477501, 44.268288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.809658, 29.398844, 44.312752>,  <42.439091, 29.267748, 44.386860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809658, 29.398844, 44.312752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321715, -0.433548, 0.841746,
		0.195551, -0.839417, -0.507088,
		0.926423, 0.327742, -0.185272,
		43.087585, 29.497166, 44.257172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717266, 29.003933, 44.962482>,  <42.439091, 29.267748, 44.386860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717266, 29.003933, 44.962482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036266, 29.183662, 44.801437>,  <43.227669, 29.291500, 44.704811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036266, 29.183662, 44.801437>,  <42.717266, 29.003933, 44.962482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036266, 29.183662, 44.801437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568515, -0.336320, 0.750786,
		0.201940, -0.827645, -0.523664,
		0.797503, 0.449325, -0.402612,
		43.275517, 29.318460, 44.680653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241863, 28.512636, 44.968849>,  <42.717266, 29.003933, 44.962482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241863, 28.512636, 44.968849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.420731, 28.870409, 44.971111>,  <43.528049, 29.085073, 44.972469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.420731, 28.870409, 44.971111>,  <43.241863, 28.512636, 44.968849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420731, 28.870409, 44.971111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496632, -0.253539, 0.830106,
		0.743909, -0.368384, -0.557578,
		0.447165, 0.894433, 0.005659,
		43.554882, 29.138739, 44.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805912, 28.385965, 45.301914>,  <43.241863, 28.512636, 44.968849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805912, 28.385965, 45.301914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.782696, 28.785019, 45.316666>,  <43.768764, 29.024450, 45.325516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.782696, 28.785019, 45.316666>,  <43.805912, 28.385965, 45.301914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782696, 28.785019, 45.316666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588379, 0.004339, 0.808574,
		0.806500, 0.068630, -0.587238,
		-0.058040, 0.997633, 0.036881,
		43.765285, 29.084309, 45.327728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482265, 28.655125, 45.476692>,  <43.805912, 28.385965, 45.301914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482265, 28.655125, 45.476692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235775, 28.953569, 45.577557>,  <44.087883, 29.132635, 45.638077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235775, 28.953569, 45.577557>,  <44.482265, 28.655125, 45.476692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235775, 28.953569, 45.577557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489013, 0.111494, 0.865121,
		0.617361, 0.656420, -0.433564,
		-0.616223, 0.746111, 0.252166,
		44.050907, 29.177402, 45.653206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830231, 29.142923, 45.817772>,  <44.482265, 28.655125, 45.476692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830231, 29.142923, 45.817772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.468555, 29.266056, 45.936214>,  <44.251549, 29.339935, 46.007278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.468555, 29.266056, 45.936214>,  <44.830231, 29.142923, 45.817772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468555, 29.266056, 45.936214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344231, 0.114765, 0.931844,
		0.252869, 0.944494, -0.209735,
		-0.904192, 0.307831, 0.296104,
		44.197296, 29.358406, 46.025047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891758, 29.818239, 46.194862>,  <44.830231, 29.142923, 45.817772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891758, 29.818239, 46.194862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.555450, 29.637924, 46.314796>,  <44.353668, 29.529736, 46.386757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.555450, 29.637924, 46.314796>,  <44.891758, 29.818239, 46.194862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555450, 29.637924, 46.314796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279155, 0.113565, 0.953507,
		-0.463881, 0.885377, 0.030358,
		-0.840766, -0.450788, 0.299838,
		44.303219, 29.502687, 46.404747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573322, 30.339039, 46.552956>,  <44.891758, 29.818239, 46.194862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573322, 30.339039, 46.552956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.429234, 29.985455, 46.672188>,  <44.342781, 29.773304, 46.743729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.429234, 29.985455, 46.672188>,  <44.573322, 30.339039, 46.552956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429234, 29.985455, 46.672188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217497, 0.231144, 0.948297,
		-0.907157, 0.406431, 0.108995,
		-0.360224, -0.883961, 0.298081,
		44.321167, 29.720266, 46.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339664, 30.503895, 47.148582>,  <44.573322, 30.339039, 46.552956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339664, 30.503895, 47.148582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.356552, 30.104252, 47.149395>,  <44.366684, 29.864466, 47.149883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.356552, 30.104252, 47.149395>,  <44.339664, 30.503895, 47.148582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356552, 30.104252, 47.149395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131330, 0.007569, 0.991310,
		-0.990439, -0.041586, 0.131532,
		0.042221, -0.999106, 0.002036,
		44.369217, 29.804520, 47.150005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780186, 30.216839, 47.566288>,  <44.339664, 30.503895, 47.148582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780186, 30.216839, 47.566288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129784, 30.023464, 47.546574>,  <44.339542, 29.907440, 47.534744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129784, 30.023464, 47.546574>,  <43.780186, 30.216839, 47.566288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129784, 30.023464, 47.546574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128547, 0.132202, 0.982852,
		-0.468631, -0.865339, 0.177687,
		0.873991, -0.483436, -0.049283,
		44.391983, 29.878433, 47.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490993, 30.503305, 48.197521>,  <43.780186, 30.216839, 47.566288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490993, 30.503305, 48.197521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.375561, 30.867432, 48.316208>,  <43.306301, 31.085907, 48.387421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.375561, 30.867432, 48.316208>,  <43.490993, 30.503305, 48.197521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375561, 30.867432, 48.316208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280471, 0.215936, -0.935258,
		-0.915453, -0.353123, 0.193002,
		-0.288585, 0.910316, 0.296720,
		43.288986, 31.140526, 48.405224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878792, 30.495255, 48.041634>,  <43.490993, 30.503305, 48.197521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878792, 30.495255, 48.041634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.963978, 30.886003, 48.049278>,  <43.015087, 31.120453, 48.053867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.963978, 30.886003, 48.049278>,  <42.878792, 30.495255, 48.041634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963978, 30.886003, 48.049278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235430, 0.070294, -0.969346,
		-0.948272, 0.201933, 0.244956,
		0.212962, 0.976873, 0.019116,
		43.027866, 31.179066, 48.055012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382168, 30.769234, 47.632278>,  <42.878792, 30.495255, 48.041634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382168, 30.769234, 47.632278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.626217, 31.085726, 47.648819>,  <42.772644, 31.275621, 47.658745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.626217, 31.085726, 47.648819>,  <42.382168, 30.769234, 47.632278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626217, 31.085726, 47.648819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242603, 0.236248, -0.940920,
		-0.754254, 0.564041, 0.336094,
		0.610119, 0.791230, 0.041353,
		42.809254, 31.323095, 47.661224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003124, 31.449427, 47.351479>,  <42.382168, 30.769234, 47.632278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003124, 31.449427, 47.351479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394485, 31.522215, 47.312241>,  <42.629303, 31.565887, 47.288700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394485, 31.522215, 47.312241>,  <42.003124, 31.449427, 47.351479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394485, 31.522215, 47.312241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159951, 0.365781, -0.916853,
		-0.130959, 0.912738, 0.386986,
		0.978399, 0.181969, -0.098091,
		42.688004, 31.576805, 47.282814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118393, 32.219906, 47.192482>,  <42.003124, 31.449427, 47.351479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118393, 32.219906, 47.192482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.442276, 32.014389, 47.079075>,  <42.636608, 31.891079, 47.011028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.442276, 32.014389, 47.079075>,  <42.118393, 32.219906, 47.192482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442276, 32.014389, 47.079075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171633, 0.254668, -0.951675,
		0.561171, 0.819242, 0.118023,
		0.809710, -0.513796, -0.283521,
		42.685188, 31.860250, 46.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451561, 32.656471, 46.756989>,  <42.118393, 32.219906, 47.192482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451561, 32.656471, 46.756989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.632694, 32.310848, 46.669044>,  <42.741375, 32.103474, 46.616276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.632694, 32.310848, 46.669044>,  <42.451561, 32.656471, 46.756989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632694, 32.310848, 46.669044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090117, 0.289689, -0.952869,
		0.887028, 0.411681, 0.209048,
		0.452836, -0.864060, -0.219863,
		42.768543, 32.051632, 46.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026386, 32.785988, 46.446960>,  <42.451561, 32.656471, 46.756989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026386, 32.785988, 46.446960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968182, 32.402985, 46.347366>,  <42.933258, 32.173183, 46.287609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968182, 32.402985, 46.347366>,  <43.026386, 32.785988, 46.446960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968182, 32.402985, 46.347366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217567, 0.214537, -0.952176,
		0.965138, -0.192726, 0.177105,
		-0.145514, -0.957513, -0.248988,
		42.924526, 32.115730, 46.272671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549065, 32.625660, 45.948677>,  <43.026386, 32.785988, 46.446960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549065, 32.625660, 45.948677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.238598, 32.376743, 45.908047>,  <43.052319, 32.227394, 45.883671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.238598, 32.376743, 45.908047>,  <43.549065, 32.625660, 45.948677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238598, 32.376743, 45.908047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001798, 0.163272, -0.986579,
		0.630529, -0.765564, -0.127845,
		-0.776164, -0.622297, -0.101571,
		43.005749, 32.190056, 45.877575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700733, 32.299416, 45.230919>,  <43.549065, 32.625660, 45.948677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700733, 32.299416, 45.230919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.312046, 32.234180, 45.299236>,  <43.078835, 32.195038, 45.340225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.312046, 32.234180, 45.299236>,  <43.700733, 32.299416, 45.230919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312046, 32.234180, 45.299236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210841, 0.273373, -0.938516,
		0.106370, -0.947982, -0.300027,
		-0.971716, -0.163088, 0.170795,
		43.020531, 32.185253, 45.350475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498295, 31.961390, 44.614899>,  <43.700733, 32.299416, 45.230919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498295, 31.961390, 44.614899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.157143, 32.096630, 44.774040>,  <42.952454, 32.177773, 44.869526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.157143, 32.096630, 44.774040>,  <43.498295, 31.961390, 44.614899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157143, 32.096630, 44.774040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374622, 0.134492, -0.917372,
		-0.363673, -0.931450, 0.011955,
		-0.852878, 0.338102, 0.397853,
		42.901279, 32.198059, 44.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040253, 31.553797, 44.265945>,  <43.498295, 31.961390, 44.614899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040253, 31.553797, 44.265945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.870922, 31.889744, 44.401840>,  <42.769325, 32.091312, 44.483376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.870922, 31.889744, 44.401840>,  <43.040253, 31.553797, 44.265945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870922, 31.889744, 44.401840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403074, 0.161237, -0.900852,
		-0.811372, -0.518293, 0.270272,
		-0.423328, 0.839866, 0.339733,
		42.743923, 32.141705, 44.503761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417049, 31.483660, 43.971386>,  <43.040253, 31.553797, 44.265945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417049, 31.483660, 43.971386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453598, 31.867723, 44.077023>,  <42.475529, 32.098160, 44.140404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453598, 31.867723, 44.077023>,  <42.417049, 31.483660, 43.971386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453598, 31.867723, 44.077023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488323, 0.274331, -0.828422,
		-0.867866, -0.053266, 0.493934,
		0.091375, 0.960159, 0.264093,
		42.481010, 32.155769, 44.156250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720970, 31.730354, 43.947330>,  <42.417049, 31.483660, 43.971386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720970, 31.730354, 43.947330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.982174, 32.028435, 43.893288>,  <42.138897, 32.207283, 43.860863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.982174, 32.028435, 43.893288>,  <41.720970, 31.730354, 43.947330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982174, 32.028435, 43.893288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447014, 0.235244, -0.863041,
		-0.611354, 0.623970, 0.486731,
		0.653012, 0.745199, -0.135106,
		42.178078, 32.251995, 43.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315506, 32.258907, 43.857265>,  <41.720970, 31.730354, 43.947330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315506, 32.258907, 43.857265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.670494, 32.366768, 43.707767>,  <41.883488, 32.431484, 43.618069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.670494, 32.366768, 43.707767>,  <41.315506, 32.258907, 43.857265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670494, 32.366768, 43.707767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442259, 0.270165, -0.855230,
		-0.129645, 0.924282, 0.359020,
		0.887468, 0.269656, -0.373746,
		41.936733, 32.447666, 43.595642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688423, 32.596561, 44.132668>,  <41.315506, 32.258907, 43.857265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688423, 32.596561, 44.132668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306923, 32.483772, 44.174343>,  <40.078022, 32.416100, 44.199348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306923, 32.483772, 44.174343>,  <40.688423, 32.596561, 44.132668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306923, 32.483772, 44.174343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096227, 0.041988, 0.994473,
		-0.284788, 0.958503, -0.012912,
		-0.953748, -0.281972, 0.104192,
		40.020798, 32.399181, 44.205601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407257, 32.992085, 44.699329>,  <40.688423, 32.596561, 44.132668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407257, 32.992085, 44.699329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.135635, 32.699146, 44.679119>,  <39.972664, 32.523384, 44.666992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.135635, 32.699146, 44.679119>,  <40.407257, 32.992085, 44.699329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135635, 32.699146, 44.679119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041902, -0.107383, 0.993335,
		-0.732893, 0.672409, 0.103606,
		-0.679053, -0.732349, -0.050524,
		39.931919, 32.479443, 44.663963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822395, 33.020416, 45.226406>,  <40.407257, 32.992085, 44.699329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822395, 33.020416, 45.226406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802406, 32.633190, 45.128136>,  <39.790413, 32.400856, 45.069176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802406, 32.633190, 45.128136>,  <39.822395, 33.020416, 45.226406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802406, 32.633190, 45.128136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066110, -0.242235, 0.967963,
		-0.996560, 0.064613, -0.051893,
		-0.049973, -0.968064, -0.245673,
		39.787415, 32.342770, 45.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462475, 32.771286, 45.828720>,  <39.822395, 33.020416, 45.226406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462475, 32.771286, 45.828720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608974, 32.453693, 45.634624>,  <39.696873, 32.263138, 45.518166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608974, 32.453693, 45.634624>,  <39.462475, 32.771286, 45.828720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608974, 32.453693, 45.634624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004230, -0.522891, 0.852389,
		-0.930507, -0.310135, -0.194868,
		0.366250, -0.793978, -0.485242,
		39.718849, 32.215500, 45.489052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111389, 32.193535, 46.120575>,  <39.462475, 32.771286, 45.828720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111389, 32.193535, 46.120575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441727, 32.046051, 45.949913>,  <39.639931, 31.957561, 45.847515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441727, 32.046051, 45.949913>,  <39.111389, 32.193535, 46.120575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441727, 32.046051, 45.949913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215185, -0.493301, 0.842822,
		-0.521234, -0.787846, -0.328045,
		0.825840, -0.368717, -0.426658,
		39.689480, 31.935438, 45.821918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064842, 31.454323, 46.190239>,  <39.111389, 32.193535, 46.120575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064842, 31.454323, 46.190239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452682, 31.539618, 46.142220>,  <39.685387, 31.590796, 46.113407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452682, 31.539618, 46.142220>,  <39.064842, 31.454323, 46.190239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452682, 31.539618, 46.142220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203557, -0.430538, 0.879319,
		0.135819, -0.877021, -0.460854,
		0.969597, 0.213239, -0.120049,
		39.743561, 31.603590, 46.106205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453751, 30.831444, 46.356194>,  <39.064842, 31.454323, 46.190239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453751, 30.831444, 46.356194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672928, 31.161369, 46.411964>,  <39.804436, 31.359324, 46.445427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672928, 31.161369, 46.411964>,  <39.453751, 30.831444, 46.356194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672928, 31.161369, 46.411964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227145, -0.307121, 0.924166,
		0.805084, -0.474723, -0.355637,
		0.547946, 0.824812, 0.139427,
		39.837311, 31.408813, 46.453793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379307, 29.991629, 46.455467>,  <39.453751, 30.831444, 46.356194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379307, 29.991629, 46.455467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065762, 29.841717, 46.653496>,  <38.877636, 29.751770, 46.772312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065762, 29.841717, 46.653496>,  <39.379307, 29.991629, 46.455467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065762, 29.841717, 46.653496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554003, 0.062043, -0.830199,
		0.280424, -0.925036, -0.256262,
		-0.783864, -0.374778, 0.495075,
		38.830601, 29.729284, 46.802017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202431, 29.470140, 46.015907>,  <39.379307, 29.991629, 46.455467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202431, 29.470140, 46.015907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888790, 29.567432, 46.244301>,  <38.700603, 29.625807, 46.381336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888790, 29.567432, 46.244301>,  <39.202431, 29.470140, 46.015907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888790, 29.567432, 46.244301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589871, -0.006025, -0.807475,
		-0.192962, -0.969950, 0.148198,
		-0.784103, 0.243229, 0.570983,
		38.653561, 29.640400, 46.415596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645645, 29.105209, 45.716923>,  <39.202431, 29.470140, 46.015907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645645, 29.105209, 45.716923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448917, 29.378443, 45.932888>,  <38.330879, 29.542383, 46.062466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448917, 29.378443, 45.932888>,  <38.645645, 29.105209, 45.716923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448917, 29.378443, 45.932888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665895, 0.104427, -0.738701,
		-0.560977, -0.722835, 0.403503,
		-0.491822, 0.683085, 0.539913,
		38.301373, 29.583368, 46.094864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909019, 28.959625, 45.763283>,  <38.645645, 29.105209, 45.716923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909019, 28.959625, 45.763283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911407, 29.357126, 45.807854>,  <37.912838, 29.595627, 45.834595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911407, 29.357126, 45.807854>,  <37.909019, 28.959625, 45.763283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911407, 29.357126, 45.807854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570958, 0.094866, -0.815480,
		-0.820958, -0.058756, 0.567958,
		0.005966, 0.993755, 0.111428,
		37.913197, 29.655252, 45.841282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231239, 29.246502, 45.782276>,  <37.909019, 28.959625, 45.763283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231239, 29.246502, 45.782276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430416, 29.588413, 45.723751>,  <37.549923, 29.793560, 45.688637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430416, 29.588413, 45.723751>,  <37.231239, 29.246502, 45.782276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430416, 29.588413, 45.723751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575917, 0.199810, -0.792714,
		-0.648360, 0.478990, 0.591775,
		0.497944, 0.854778, -0.146310,
		37.579800, 29.844847, 45.679859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746799, 29.841976, 45.596676>,  <37.231239, 29.246502, 45.782276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746799, 29.841976, 45.596676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102421, 29.989433, 45.488091>,  <37.315792, 30.077908, 45.422939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102421, 29.989433, 45.488091>,  <36.746799, 29.841976, 45.596676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102421, 29.989433, 45.488091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400892, 0.340539, -0.850482,
		-0.221079, 0.864949, 0.450541,
		0.889050, 0.368642, -0.271465,
		37.369137, 30.100025, 45.406651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588821, 30.507729, 45.401222>,  <36.746799, 29.841976, 45.596676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588821, 30.507729, 45.401222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939255, 30.417744, 45.230640>,  <37.149517, 30.363752, 45.128292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939255, 30.417744, 45.230640>,  <36.588821, 30.507729, 45.401222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939255, 30.417744, 45.230640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370563, 0.251709, -0.894050,
		0.308470, 0.941294, 0.137157,
		0.876088, -0.224962, -0.426453,
		37.202080, 30.350256, 45.102703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.216583, 27.461399, 46.949139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.479443, 27.732580, 46.817360>,  <42.637157, 27.895288, 46.738293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.479443, 27.732580, 46.817360>,  <42.216583, 27.461399, 46.949139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479443, 27.732580, 46.817360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581252, 0.177509, -0.794127,
		-0.479900, 0.713352, 0.510711,
		0.657147, 0.677953, -0.329450,
		42.676586, 27.935966, 46.718525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789112, 28.012024, 46.853523>,  <42.216583, 27.461399, 46.949139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789112, 28.012024, 46.853523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.123634, 28.060257, 46.639591>,  <42.324348, 28.089197, 46.511230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.123634, 28.060257, 46.639591>,  <41.789112, 28.012024, 46.853523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123634, 28.060257, 46.639591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542391, 0.039630, -0.839191,
		-0.079996, 0.991912, 0.098546,
		0.836309, 0.120582, -0.534834,
		42.374527, 28.096432, 46.479141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589008, 28.383207, 46.200558>,  <41.789112, 28.012024, 46.853523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589008, 28.383207, 46.200558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.946205, 28.230581, 46.105087>,  <42.160522, 28.139006, 46.047806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.946205, 28.230581, 46.105087>,  <41.589008, 28.383207, 46.200558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946205, 28.230581, 46.105087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257116, 0.002736, -0.966377,
		0.369390, 0.924337, -0.095663,
		0.892996, -0.381566, -0.238673,
		42.214104, 28.116112, 46.033485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909260, 28.821733, 45.660213>,  <41.589008, 28.383207, 46.200558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909260, 28.821733, 45.660213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.027248, 28.439531, 45.659214>,  <42.098042, 28.210211, 45.658615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.027248, 28.439531, 45.659214>,  <41.909260, 28.821733, 45.660213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027248, 28.439531, 45.659214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331209, -0.099795, -0.938265,
		0.896267, 0.277584, -0.345908,
		0.294967, -0.955504, -0.002495,
		42.115738, 28.152880, 45.658466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036678, 28.772211, 45.011272>,  <41.909260, 28.821733, 45.660213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036678, 28.772211, 45.011272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.057835, 28.382162, 45.097374>,  <42.070530, 28.148132, 45.149036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.057835, 28.382162, 45.097374>,  <42.036678, 28.772211, 45.011272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057835, 28.382162, 45.097374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265877, -0.221527, -0.938209,
		0.962555, -0.007605, -0.270981,
		0.052895, -0.975125, 0.215254,
		42.073704, 28.089624, 45.161949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464725, 28.441833, 44.457035>,  <42.036678, 28.772211, 45.011272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464725, 28.441833, 44.457035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.248367, 28.168917, 44.653770>,  <42.118553, 28.005167, 44.771812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.248367, 28.168917, 44.653770>,  <42.464725, 28.441833, 44.457035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248367, 28.168917, 44.653770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339274, -0.358094, -0.869863,
		0.769628, -0.637373, -0.037794,
		-0.540893, -0.682294, 0.491843,
		42.086098, 27.964228, 44.801323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514763, 27.875629, 43.955433>,  <42.464725, 28.441833, 44.457035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514763, 27.875629, 43.955433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.232803, 27.768753, 44.218258>,  <42.063629, 27.704628, 44.375954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.232803, 27.768753, 44.218258>,  <42.514763, 27.875629, 43.955433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232803, 27.768753, 44.218258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500122, -0.469668, -0.727523,
		0.502987, -0.841440, 0.197441,
		-0.704899, -0.267190, 0.657060,
		42.021336, 27.688597, 44.415375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432083, 27.210344, 43.888027>,  <42.514763, 27.875629, 43.955433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432083, 27.210344, 43.888027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.075565, 27.314224, 44.036705>,  <41.861656, 27.376553, 44.125912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.075565, 27.314224, 44.036705>,  <42.432083, 27.210344, 43.888027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075565, 27.314224, 44.036705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452804, -0.552813, -0.699548,
		0.023804, -0.791805, 0.610310,
		-0.891293, 0.259699, 0.371691,
		41.808178, 27.392134, 44.148212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020500, 26.672115, 43.698238>,  <42.432083, 27.210344, 43.888027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020500, 26.672115, 43.698238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.748295, 26.955927, 43.771416>,  <41.584972, 27.126213, 43.815323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.748295, 26.955927, 43.771416>,  <42.020500, 26.672115, 43.698238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748295, 26.955927, 43.771416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599919, -0.396165, -0.695090,
		-0.420716, -0.582765, 0.695257,
		-0.680511, 0.709534, 0.182939,
		41.544140, 27.168785, 43.826302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395390, 26.353092, 43.806446>,  <42.020500, 26.672115, 43.698238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395390, 26.353092, 43.806446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.325459, 26.730019, 43.692272>,  <41.283501, 26.956175, 43.623768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.325459, 26.730019, 43.692272>,  <41.395390, 26.353092, 43.806446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325459, 26.730019, 43.692272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674427, -0.325824, -0.662561,
		-0.717345, 0.076673, 0.692487,
		-0.174828, 0.942316, -0.285439,
		41.273010, 27.012714, 43.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791042, 26.229536, 43.574795>,  <41.395390, 26.353092, 43.806446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791042, 26.229536, 43.574795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.883286, 26.595690, 43.442799>,  <40.938633, 26.815382, 43.363602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.883286, 26.595690, 43.442799>,  <40.791042, 26.229536, 43.574795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883286, 26.595690, 43.442799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577034, -0.144416, -0.803850,
		-0.783486, 0.375792, 0.494903,
		0.230609, 0.915382, -0.329993,
		40.952469, 26.870304, 43.343800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195045, 26.541698, 43.493763>,  <40.791042, 26.229536, 43.574795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195045, 26.541698, 43.493763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.460220, 26.730358, 43.261189>,  <40.619324, 26.843554, 43.121643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.460220, 26.730358, 43.261189>,  <40.195045, 26.541698, 43.493763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460220, 26.730358, 43.261189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606657, -0.116693, -0.786352,
		-0.438733, 0.874029, 0.208771,
		0.662933, 0.471651, -0.581433,
		40.659100, 26.871853, 43.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600952, 26.751068, 43.778698>,  <40.195045, 26.541698, 43.493763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600952, 26.751068, 43.778698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.273769, 26.521210, 43.789516>,  <39.077461, 26.383295, 43.796009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.273769, 26.521210, 43.789516>,  <39.600952, 26.751068, 43.778698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273769, 26.521210, 43.789516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190652, -0.226421, 0.955189,
		-0.542771, 0.786458, 0.294759,
		-0.817955, -0.574645, 0.027045,
		39.028381, 26.348816, 43.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309788, 26.924299, 44.411228>,  <39.600952, 26.751068, 43.778698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309788, 26.924299, 44.411228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.122845, 26.587811, 44.302475>,  <39.010677, 26.385918, 44.237221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.122845, 26.587811, 44.302475>,  <39.309788, 26.924299, 44.411228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122845, 26.587811, 44.302475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006333, -0.310718, 0.950481,
		-0.884045, 0.442494, 0.150544,
		-0.467359, -0.841221, -0.271887,
		38.982635, 26.335443, 44.220909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782494, 26.839365, 44.892113>,  <39.309788, 26.924299, 44.411228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782494, 26.839365, 44.892113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.832069, 26.468437, 44.750851>,  <38.861816, 26.245880, 44.666092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.832069, 26.468437, 44.750851>,  <38.782494, 26.839365, 44.892113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832069, 26.468437, 44.750851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089995, -0.364936, 0.926673,
		-0.988200, -0.083068, -0.128684,
		0.123938, -0.927319, -0.353154,
		38.869251, 26.190241, 44.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216061, 26.462875, 45.129253>,  <38.782494, 26.839365, 44.892113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216061, 26.462875, 45.129253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499535, 26.190866, 45.054066>,  <38.669621, 26.027660, 45.008953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499535, 26.190866, 45.054066>,  <38.216061, 26.462875, 45.129253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499535, 26.190866, 45.054066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045077, -0.309527, 0.949822,
		-0.704083, -0.664652, -0.250011,
		0.708686, -0.680023, -0.187972,
		38.712139, 25.986860, 44.997673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984272, 25.802082, 45.420837>,  <38.216061, 26.462875, 45.129253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984272, 25.802082, 45.420837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.381962, 25.807772, 45.378304>,  <38.620575, 25.811186, 45.352783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.381962, 25.807772, 45.378304>,  <37.984272, 25.802082, 45.420837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381962, 25.807772, 45.378304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102185, -0.427415, 0.898262,
		-0.032672, -0.903944, -0.426401,
		0.994229, 0.014224, -0.106334,
		38.680229, 25.812038, 45.346405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185074, 25.103447, 45.796341>,  <37.984272, 25.802082, 45.420837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185074, 25.103447, 45.796341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.511726, 25.331846, 45.762707>,  <38.707718, 25.468885, 45.742527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.511726, 25.331846, 45.762707>,  <38.185074, 25.103447, 45.796341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511726, 25.331846, 45.762707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248853, -0.216899, 0.943942,
		0.520750, -0.791781, -0.319221,
		0.816634, 0.570998, -0.084087,
		38.756718, 25.503145, 45.737480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723671, 24.738756, 46.048084>,  <38.185074, 25.103447, 45.796341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723671, 24.738756, 46.048084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817493, 25.125755, 46.085892>,  <38.873787, 25.357954, 46.108578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817493, 25.125755, 46.085892>,  <38.723671, 24.738756, 46.048084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817493, 25.125755, 46.085892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302820, -0.165117, 0.938635,
		0.923734, -0.191539, -0.331707,
		0.234555, 0.967496, 0.094522,
		38.887859, 25.416004, 46.114250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040947, 24.729275, 46.642387>,  <38.723671, 24.738756, 46.048084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040947, 24.729275, 46.642387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094227, 25.121710, 46.586212>,  <39.126194, 25.357170, 46.552509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094227, 25.121710, 46.586212>,  <39.040947, 24.729275, 46.642387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094227, 25.121710, 46.586212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332106, 0.089321, 0.939003,
		0.933789, -0.171719, -0.313927,
		0.133204, 0.981088, -0.140436,
		39.134190, 25.416037, 46.544083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706085, 24.850855, 46.804726>,  <39.040947, 24.729275, 46.642387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706085, 24.850855, 46.804726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.496857, 25.189598, 46.843155>,  <39.371319, 25.392845, 46.866211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.496857, 25.189598, 46.843155>,  <39.706085, 24.850855, 46.804726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496857, 25.189598, 46.843155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502045, 0.215062, 0.837675,
		0.688731, 0.486393, -0.537653,
		-0.523068, 0.846859, 0.096071,
		39.339935, 25.443655, 46.871975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131096, 25.519823, 46.773624>,  <39.706085, 24.850855, 46.804726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131096, 25.519823, 46.773624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.805264, 25.612368, 46.986393>,  <39.609764, 25.667894, 47.114052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.805264, 25.612368, 46.986393>,  <40.131096, 25.519823, 46.773624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805264, 25.612368, 46.986393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579965, 0.341156, 0.739766,
		-0.010313, 0.911090, -0.412079,
		-0.814576, 0.231362, 0.531918,
		39.560890, 25.681776, 47.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168774, 26.245802, 46.935852>,  <40.131096, 25.519823, 46.773624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168774, 26.245802, 46.935852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.919262, 26.075615, 47.198112>,  <39.769554, 25.973503, 47.355469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.919262, 26.075615, 47.198112>,  <40.168774, 26.245802, 46.935852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919262, 26.075615, 47.198112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454967, 0.484432, 0.747216,
		-0.635531, 0.764398, -0.108608,
		-0.623784, -0.425466, 0.655647,
		39.732128, 25.947975, 47.394806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074551, 26.749744, 47.476875>,  <40.168774, 26.245802, 46.935852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074551, 26.749744, 47.476875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.934750, 26.417231, 47.649761>,  <39.850868, 26.217722, 47.753494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.934750, 26.417231, 47.649761>,  <40.074551, 26.749744, 47.476875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934750, 26.417231, 47.649761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360846, 0.306294, 0.880894,
		-0.864659, 0.463840, 0.192915,
		-0.349505, -0.831286, 0.432215,
		39.829899, 26.167845, 47.779427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729076, 26.927616, 48.063381>,  <40.074551, 26.749744, 47.476875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729076, 26.927616, 48.063381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.833660, 26.545425, 48.118092>,  <39.896408, 26.316111, 48.150917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.833660, 26.545425, 48.118092>,  <39.729076, 26.927616, 48.063381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833660, 26.545425, 48.118092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331368, 0.221946, 0.917025,
		-0.906551, -0.194439, 0.374643,
		0.261456, -0.955475, 0.136774,
		39.912098, 26.258783, 48.159122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662334, 26.883677, 48.724201>,  <39.729076, 26.927616, 48.063381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662334, 26.883677, 48.724201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.890877, 26.563740, 48.650658>,  <40.028004, 26.371778, 48.606533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.890877, 26.563740, 48.650658>,  <39.662334, 26.883677, 48.724201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890877, 26.563740, 48.650658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504629, 0.165714, 0.847283,
		-0.647223, -0.576883, 0.498306,
		0.571359, -0.799841, -0.183858,
		40.062286, 26.323788, 48.595501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205425, 27.433382, 48.547363>,  <39.662334, 26.883677, 48.724201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205425, 27.433382, 48.547363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276543, 27.748638, 48.783066>,  <39.319214, 27.937792, 48.924488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276543, 27.748638, 48.783066>,  <39.205425, 27.433382, 48.547363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276543, 27.748638, 48.783066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046521, 0.591395, -0.805039,
		-0.982968, 0.170541, 0.068480,
		0.177791, 0.788142, 0.589256,
		39.329880, 27.985081, 48.959843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669529, 27.864471, 48.417931>,  <39.205425, 27.433382, 48.547363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669529, 27.864471, 48.417931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924507, 28.115469, 48.596779>,  <39.077492, 28.266068, 48.704086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924507, 28.115469, 48.596779>,  <38.669529, 27.864471, 48.417931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924507, 28.115469, 48.596779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121451, 0.654874, -0.745916,
		-0.760866, 0.421176, 0.493655,
		0.637443, 0.627496, 0.447119,
		39.115742, 28.303719, 48.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386898, 28.565033, 48.424358>,  <38.669529, 27.864471, 48.417931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386898, 28.565033, 48.424358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773144, 28.658033, 48.470898>,  <39.004890, 28.713835, 48.498821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773144, 28.658033, 48.470898>,  <38.386898, 28.565033, 48.424358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773144, 28.658033, 48.470898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094971, 0.732020, -0.674632,
		-0.242022, 0.640383, 0.728928,
		0.965612, 0.232503, 0.116347,
		39.062828, 28.727785, 48.505802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413818, 29.312239, 48.530617>,  <38.386898, 28.565033, 48.424358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413818, 29.312239, 48.530617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.736359, 29.159985, 48.349545>,  <38.929882, 29.068632, 48.240902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.736359, 29.159985, 48.349545>,  <38.413818, 29.312239, 48.530617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736359, 29.159985, 48.349545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006086, 0.760005, -0.649889,
		0.591411, 0.526791, 0.610512,
		0.806348, -0.380636, -0.452681,
		38.978264, 29.045794, 48.213741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701920, 29.916399, 48.395489>,  <38.413818, 29.312239, 48.530617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701920, 29.916399, 48.395489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.897915, 29.635359, 48.189087>,  <39.015514, 29.466736, 48.065247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.897915, 29.635359, 48.189087>,  <38.701920, 29.916399, 48.395489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897915, 29.635359, 48.189087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079297, 0.553556, -0.829028,
		0.868113, 0.447134, 0.215524,
		0.489992, -0.702599, -0.516006,
		39.044910, 29.424580, 48.034286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037949, 30.308088, 47.850391>,  <38.701920, 29.916399, 48.395489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037949, 30.308088, 47.850391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050747, 29.922548, 47.744583>,  <39.058426, 29.691225, 47.681099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050747, 29.922548, 47.744583>,  <39.037949, 30.308088, 47.850391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050747, 29.922548, 47.744583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239540, 0.249551, -0.938267,
		0.970359, 0.093385, -0.222895,
		0.031997, -0.963848, -0.264524,
		39.060345, 29.633394, 47.665226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385353, 30.305546, 47.146946>,  <39.037949, 30.308088, 47.850391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385353, 30.305546, 47.146946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162392, 29.974346, 47.171322>,  <39.028614, 29.775625, 47.185947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162392, 29.974346, 47.171322>,  <39.385353, 30.305546, 47.146946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162392, 29.974346, 47.171322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374243, 0.185061, -0.908677,
		0.741107, -0.529309, -0.413027,
		-0.557406, -0.828000, 0.060941,
		38.995171, 29.725946, 47.189606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989548, 30.445538, 46.652885>,  <39.385353, 30.305546, 47.146946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989548, 30.445538, 46.652885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.055576, 30.830372, 46.739738>,  <40.095192, 31.061272, 46.791851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.055576, 30.830372, 46.739738>,  <39.989548, 30.445538, 46.652885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055576, 30.830372, 46.739738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136149, -0.240268, 0.961111,
		0.976839, -0.129089, -0.170648,
		0.165070, 0.962085, 0.217128,
		40.105099, 31.118998, 46.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682430, 30.626984, 47.027088>,  <39.989548, 30.445538, 46.652885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682430, 30.626984, 47.027088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.452862, 30.942213, 47.116127>,  <40.315121, 31.131351, 47.169552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.452862, 30.942213, 47.116127>,  <40.682430, 30.626984, 47.027088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452862, 30.942213, 47.116127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264220, -0.079080, 0.961215,
		0.775113, 0.610478, -0.162840,
		-0.573923, 0.788076, 0.222597,
		40.280685, 31.178637, 47.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111389, 31.091837, 47.406086>,  <40.682430, 30.626984, 47.027088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111389, 31.091837, 47.406086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.755474, 31.253450, 47.490971>,  <40.541924, 31.350418, 47.541901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.755474, 31.253450, 47.490971>,  <41.111389, 31.091837, 47.406086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755474, 31.253450, 47.490971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250842, 0.044509, 0.967004,
		0.381257, 0.913660, -0.140953,
		-0.889787, 0.404034, 0.212215,
		40.488537, 31.374660, 47.554634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248379, 31.479292, 47.969456>,  <41.111389, 31.091837, 47.406086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248379, 31.479292, 47.969456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.851604, 31.435755, 47.995407>,  <40.613541, 31.409634, 48.010979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.851604, 31.435755, 47.995407>,  <41.248379, 31.479292, 47.969456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851604, 31.435755, 47.995407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072779, -0.070246, 0.994871,
		-0.103726, 0.991574, 0.077601,
		-0.991940, -0.108842, 0.064880,
		40.554024, 31.403103, 48.014870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942986, 31.879589, 48.525467>,  <41.248379, 31.479292, 47.969456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942986, 31.879589, 48.525467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.654640, 31.602543, 48.515350>,  <40.481632, 31.436316, 48.509281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.654640, 31.602543, 48.515350>,  <40.942986, 31.879589, 48.525467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654640, 31.602543, 48.515350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218201, -0.261427, 0.940236,
		-0.657835, 0.672262, 0.339583,
		-0.720862, -0.692617, -0.025288,
		40.438381, 31.394758, 48.507763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698875, 31.780258, 49.230549>,  <40.942986, 31.879589, 48.525467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698875, 31.780258, 49.230549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.569958, 31.451488, 49.042694>,  <40.492607, 31.254227, 48.929981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.569958, 31.451488, 49.042694>,  <40.698875, 31.780258, 49.230549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569958, 31.451488, 49.042694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152636, -0.534744, 0.831114,
		-0.934252, 0.196182, 0.297803,
		-0.322298, -0.821925, -0.469641,
		40.473267, 31.204910, 48.901802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227020, 31.474527, 49.640163>,  <40.698875, 31.780258, 49.230549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227020, 31.474527, 49.640163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.383900, 31.184092, 49.414253>,  <40.478027, 31.009830, 49.278706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.383900, 31.184092, 49.414253>,  <40.227020, 31.474527, 49.640163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383900, 31.184092, 49.414253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365451, -0.440450, 0.820030,
		-0.844172, -0.528012, 0.092607,
		0.392197, -0.726090, -0.564778,
		40.501560, 30.966265, 49.244820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165916, 30.880203, 49.989998>,  <40.227020, 31.474527, 49.640163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165916, 30.880203, 49.989998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.462627, 30.784124, 49.739536>,  <40.640656, 30.726477, 49.589260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.462627, 30.784124, 49.739536>,  <40.165916, 30.880203, 49.989998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462627, 30.784124, 49.739536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422973, -0.556989, 0.714743,
		-0.520439, -0.795028, -0.311566,
		0.741780, -0.240196, -0.626155,
		40.685162, 30.712065, 49.551689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254986, 30.159966, 50.050495>,  <40.165916, 30.880203, 49.989998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254986, 30.159966, 50.050495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.600315, 30.274866, 49.884521>,  <40.807510, 30.343805, 49.784939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.600315, 30.274866, 49.884521>,  <40.254986, 30.159966, 50.050495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600315, 30.274866, 49.884521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496745, -0.628734, 0.598279,
		-0.089027, -0.722621, -0.685488,
		0.863319, 0.287249, -0.414933,
		40.859310, 30.361040, 49.760040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.906857, 33.753899, 36.140324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535309, 33.614140, 36.189510>,  <34.312378, 33.530285, 36.219025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535309, 33.614140, 36.189510>,  <34.906857, 33.753899, 36.140324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535309, 33.614140, 36.189510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011893, 0.359949, 0.932896,
		-0.370212, 0.865078, -0.338501,
		-0.928871, -0.349395, 0.122969,
		34.256649, 33.509319, 36.226402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278233, 33.535408, 35.592674>,  <34.906857, 33.753899, 36.140324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278233, 33.535408, 35.592674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572239, 33.798248, 35.525764>,  <35.748642, 33.955952, 35.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572239, 33.798248, 35.525764>,  <35.278233, 33.535408, 35.592674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572239, 33.798248, 35.525764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332056, -0.133729, 0.933732,
		0.591182, -0.741849, -0.316485,
		0.735012, 0.657096, -0.167278,
		35.792744, 33.995377, 35.475582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796314, 33.211498, 35.908390>,  <35.278233, 33.535408, 35.592674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796314, 33.211498, 35.908390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934338, 33.584885, 35.869247>,  <36.017151, 33.808918, 35.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934338, 33.584885, 35.869247>,  <35.796314, 33.211498, 35.908390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934338, 33.584885, 35.869247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485320, -0.088203, 0.869876,
		0.803369, -0.347648, -0.483465,
		0.345054, 0.933467, -0.097861,
		36.037853, 33.864925, 35.839890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533413, 33.223103, 35.864166>,  <35.796314, 33.211498, 35.908390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533413, 33.223103, 35.864166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408092, 33.572899, 36.012280>,  <36.332901, 33.782776, 36.101147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408092, 33.572899, 36.012280>,  <36.533413, 33.223103, 35.864166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408092, 33.572899, 36.012280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319791, -0.269992, 0.908206,
		0.894192, 0.402952, -0.195066,
		-0.313297, 0.874491, 0.370285,
		36.314102, 33.835247, 36.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099346, 33.412346, 36.220737>,  <36.533413, 33.223103, 35.864166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099346, 33.412346, 36.220737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805824, 33.624882, 36.390072>,  <36.629711, 33.752403, 36.491673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805824, 33.624882, 36.390072>,  <37.099346, 33.412346, 36.220737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805824, 33.624882, 36.390072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464154, -0.062913, 0.883517,
		0.496078, 0.844822, -0.200456,
		-0.733804, 0.531336, 0.423337,
		36.585682, 33.784283, 36.517075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426064, 33.986988, 36.594799>,  <37.099346, 33.412346, 36.220737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426064, 33.986988, 36.594799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066441, 33.923431, 36.757992>,  <36.850666, 33.885300, 36.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066441, 33.923431, 36.757992>,  <37.426064, 33.986988, 36.594799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066441, 33.923431, 36.757992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414169, -0.006476, 0.910177,
		-0.141974, 0.987275, 0.071629,
		-0.899059, -0.158888, 0.407980,
		36.796722, 33.875767, 36.880386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292641, 34.457993, 37.081120>,  <37.426064, 33.986988, 36.594799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292641, 34.457993, 37.081120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041538, 34.168213, 37.195030>,  <36.890877, 33.994347, 37.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041538, 34.168213, 37.195030>,  <37.292641, 34.457993, 37.081120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041538, 34.168213, 37.195030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332459, 0.081276, 0.939609,
		-0.703845, 0.684519, 0.189828,
		-0.627752, -0.724450, 0.284780,
		36.853214, 33.950878, 37.280464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180000, 34.563354, 37.876293>,  <37.292641, 34.457993, 37.081120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180000, 34.563354, 37.876293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981537, 34.230507, 37.777168>,  <36.862457, 34.030800, 37.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981537, 34.230507, 37.777168>,  <37.180000, 34.563354, 37.876293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981537, 34.230507, 37.777168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037903, -0.305908, 0.951306,
		-0.867404, 0.462606, 0.183319,
		-0.496159, -0.832115, -0.247812,
		36.832687, 33.980873, 37.702824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635937, 34.636707, 38.291367>,  <37.180000, 34.563354, 37.876293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635937, 34.636707, 38.291367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711605, 34.255398, 38.197147>,  <36.757008, 34.026611, 38.140617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711605, 34.255398, 38.197147>,  <36.635937, 34.636707, 38.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711605, 34.255398, 38.197147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004859, -0.238965, 0.971016,
		-0.981932, -0.184833, -0.040573,
		0.189172, -0.953275, -0.235546,
		36.768356, 33.969414, 38.126484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151245, 34.238316, 38.738171>,  <36.635937, 34.636707, 38.291367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151245, 34.238316, 38.738171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454609, 34.012173, 38.608444>,  <36.636627, 33.876488, 38.530609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454609, 34.012173, 38.608444>,  <36.151245, 34.238316, 38.738171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454609, 34.012173, 38.608444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196016, -0.276711, 0.940749,
		-0.621605, -0.777044, -0.099041,
		0.758410, -0.565361, -0.324318,
		36.682133, 33.842564, 38.511150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004166, 33.579384, 39.079376>,  <36.151245, 34.238316, 38.738171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004166, 33.579384, 39.079376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374798, 33.556190, 38.930737>,  <36.597179, 33.542274, 38.841553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374798, 33.556190, 38.930737>,  <36.004166, 33.579384, 39.079376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374798, 33.556190, 38.930737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335436, -0.319407, 0.886263,
		-0.170081, -0.945842, -0.276507,
		0.926583, -0.057986, -0.371594,
		36.652771, 33.538795, 38.819260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261440, 32.902691, 39.218887>,  <36.004166, 33.579384, 39.079376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261440, 32.902691, 39.218887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591690, 33.119663, 39.156769>,  <36.789841, 33.249847, 39.119499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591690, 33.119663, 39.156769>,  <36.261440, 32.902691, 39.218887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591690, 33.119663, 39.156769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395621, -0.360311, 0.844784,
		0.402285, -0.758909, -0.512078,
		0.825621, 0.542433, -0.155293,
		36.839378, 33.282394, 39.110180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173218, 32.192577, 39.163513>,  <36.261440, 32.902691, 39.218887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173218, 32.192577, 39.163513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843761, 32.133873, 39.382629>,  <35.646088, 32.098652, 39.514099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843761, 32.133873, 39.382629>,  <36.173218, 32.192577, 39.163513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843761, 32.133873, 39.382629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566561, 0.255490, -0.783411,
		-0.024985, -0.955608, -0.293579,
		-0.823641, -0.146757, 0.547793,
		35.596668, 32.089844, 39.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703316, 31.919683, 38.750317>,  <36.173218, 32.192577, 39.163513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703316, 31.919683, 38.750317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465324, 32.044216, 39.046715>,  <35.322529, 32.118935, 39.224552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465324, 32.044216, 39.046715>,  <35.703316, 31.919683, 38.750317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465324, 32.044216, 39.046715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750749, 0.113952, -0.650685,
		-0.287017, -0.943444, 0.165935,
		-0.594976, 0.311333, 0.740996,
		35.286831, 32.137615, 39.269012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089409, 31.522902, 38.600109>,  <35.703316, 31.919683, 38.750317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089409, 31.522902, 38.600109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011307, 31.844200, 38.825203>,  <34.964447, 32.036980, 38.960258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011307, 31.844200, 38.825203>,  <35.089409, 31.522902, 38.600109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011307, 31.844200, 38.825203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809754, 0.191685, -0.554576,
		-0.553330, -0.563961, 0.613004,
		-0.195256, 0.803246, 0.562735,
		34.952728, 32.085175, 38.994022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432388, 31.395725, 38.797398>,  <35.089409, 31.522902, 38.600109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432388, 31.395725, 38.797398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481529, 31.788748, 38.853233>,  <34.511013, 32.024563, 38.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481529, 31.788748, 38.853233>,  <34.432388, 31.395725, 38.797398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481529, 31.788748, 38.853233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812035, 0.180384, -0.555032,
		-0.570532, -0.045168, 0.820032,
		0.122851, 0.982559, 0.139593,
		34.518383, 32.083515, 38.895111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814762, 31.631838, 39.065834>,  <34.432388, 31.395725, 38.797398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814762, 31.631838, 39.065834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004940, 31.949310, 38.914032>,  <34.119049, 32.139793, 38.822952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004940, 31.949310, 38.914032>,  <33.814762, 31.631838, 39.065834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004940, 31.949310, 38.914032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864351, 0.341087, -0.369537,
		-0.163850, 0.503719, 0.848186,
		0.475448, 0.793679, -0.379503,
		34.147575, 32.187412, 38.800182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384048, 32.045254, 39.114880>,  <33.814762, 31.631838, 39.065834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384048, 32.045254, 39.114880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588753, 32.238571, 38.830761>,  <33.711575, 32.354561, 38.660290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588753, 32.238571, 38.830761>,  <33.384048, 32.045254, 39.114880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588753, 32.238571, 38.830761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859097, 0.294660, -0.418482,
		0.007046, 0.824380, 0.565993,
		0.511763, 0.483295, -0.710299,
		33.742283, 32.383560, 38.617672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867775, 32.587852, 38.882820>,  <33.384048, 32.045254, 39.114880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867775, 32.587852, 38.882820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141979, 32.572201, 38.592014>,  <33.306499, 32.562809, 38.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141979, 32.572201, 38.592014>,  <32.867775, 32.587852, 38.882820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141979, 32.572201, 38.592014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723748, 0.071958, -0.686302,
		0.079170, 0.996640, 0.021007,
		0.685508, -0.039131, -0.727013,
		33.347633, 32.560463, 38.373909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642750, 33.079491, 38.451260>,  <32.867775, 32.587852, 38.882820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642750, 33.079491, 38.451260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887100, 32.857372, 38.225525>,  <33.033710, 32.724102, 38.090084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887100, 32.857372, 38.225525>,  <32.642750, 33.079491, 38.451260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887100, 32.857372, 38.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659180, 0.038086, -0.751020,
		0.438529, 0.830783, -0.342771,
		0.610880, -0.555292, -0.564337,
		33.070366, 32.690784, 38.056225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720840, 33.394951, 37.745564>,  <32.642750, 33.079491, 38.451260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720840, 33.394951, 37.745564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797386, 33.005493, 37.695930>,  <32.843315, 32.771820, 37.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797386, 33.005493, 37.695930>,  <32.720840, 33.394951, 37.745564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797386, 33.005493, 37.695930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707970, -0.049366, -0.704514,
		0.679821, 0.222669, -0.698758,
		0.191368, -0.973644, -0.124083,
		32.854797, 32.713402, 37.658707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792652, 33.295036, 37.042725>,  <32.720840, 33.394951, 37.745564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792652, 33.295036, 37.042725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702892, 32.930756, 37.181446>,  <32.649036, 32.712189, 37.264679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702892, 32.930756, 37.181446>,  <32.792652, 33.295036, 37.042725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702892, 32.930756, 37.181446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677763, -0.109856, -0.727027,
		0.700201, -0.398195, -0.592587,
		-0.224399, -0.910699, 0.346803,
		32.635574, 32.657547, 37.285488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680695, 32.896698, 36.405254>,  <32.792652, 33.295036, 37.042725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680695, 32.896698, 36.405254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552227, 32.651073, 36.693638>,  <32.475147, 32.503700, 36.866669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552227, 32.651073, 36.693638>,  <32.680695, 32.896698, 36.405254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552227, 32.651073, 36.693638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640574, -0.419848, -0.642956,
		0.697508, -0.668323, -0.258510,
		-0.321167, -0.614062, 0.720958,
		32.455875, 32.466854, 36.909924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799576, 32.247932, 36.212582>,  <32.680695, 32.896698, 36.405254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799576, 32.247932, 36.212582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492783, 32.260979, 36.468918>,  <32.308708, 32.268806, 36.622719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492783, 32.260979, 36.468918>,  <32.799576, 32.247932, 36.212582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492783, 32.260979, 36.468918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555654, -0.533250, -0.637882,
		0.320921, -0.845329, 0.427117,
		-0.766980, 0.032620, 0.640841,
		32.262688, 32.270763, 36.661171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508698, 31.553942, 36.228729>,  <32.799576, 32.247932, 36.212582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508698, 31.553942, 36.228729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216705, 31.776703, 36.387218>,  <32.041512, 31.910358, 36.482311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216705, 31.776703, 36.387218>,  <32.508698, 31.553942, 36.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216705, 31.776703, 36.387218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668761, -0.462371, -0.582212,
		-0.141031, -0.689982, 0.709954,
		-0.729979, 0.556900, 0.396225,
		31.997711, 31.943773, 36.506084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962675, 31.109669, 36.370037>,  <32.508698, 31.553942, 36.228729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962675, 31.109669, 36.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800381, 31.474592, 36.347851>,  <31.703005, 31.693546, 36.334538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800381, 31.474592, 36.347851>,  <31.962675, 31.109669, 36.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800381, 31.474592, 36.347851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757575, -0.369628, -0.538011,
		-0.511332, -0.176270, 0.841111,
		-0.405734, 0.912307, -0.055465,
		31.678659, 31.748283, 36.331211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070393, 30.420218, 36.777733>,  <31.962675, 31.109669, 36.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070393, 30.420218, 36.777733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931503, 30.068920, 36.646202>,  <31.848169, 29.858143, 36.567284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931503, 30.068920, 36.646202>,  <32.070393, 30.420218, 36.777733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931503, 30.068920, 36.646202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386691, -0.453531, 0.802981,
		-0.854345, 0.151661, 0.497086,
		-0.347225, -0.878242, -0.328826,
		31.827335, 29.805449, 36.547554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723890, 29.950766, 37.350468>,  <32.070393, 30.420218, 36.777733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723890, 29.950766, 37.350468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856897, 29.704187, 37.064972>,  <31.936701, 29.556240, 36.893673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856897, 29.704187, 37.064972>,  <31.723890, 29.950766, 37.350468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856897, 29.704187, 37.064972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524881, -0.507803, 0.683108,
		-0.783539, -0.601774, 0.154707,
		0.332516, -0.616444, -0.713743,
		31.956652, 29.519255, 36.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657688, 29.287212, 37.553185>,  <31.723890, 29.950766, 37.350468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657688, 29.287212, 37.553185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965319, 29.337160, 37.302448>,  <32.149899, 29.367128, 37.152008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965319, 29.337160, 37.302448>,  <31.657688, 29.287212, 37.553185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965319, 29.337160, 37.302448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614703, -0.413183, 0.671878,
		-0.175102, -0.902046, -0.394528,
		0.769077, 0.124871, -0.626840,
		32.196041, 29.374620, 37.114395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938761, 28.658470, 37.504486>,  <31.657688, 29.287212, 37.553185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938761, 28.658470, 37.504486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212780, 28.938580, 37.424164>,  <32.377193, 29.106646, 37.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212780, 28.938580, 37.424164>,  <31.938761, 28.658470, 37.504486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212780, 28.938580, 37.424164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591893, -0.374332, 0.713820,
		0.424701, -0.607858, -0.670923,
		0.685049, 0.700274, -0.200808,
		32.418293, 29.148663, 37.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597775, 28.295298, 37.462143>,  <31.938761, 28.658470, 37.504486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597775, 28.295298, 37.462143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724205, 28.672724, 37.501705>,  <32.800064, 28.899179, 37.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724205, 28.672724, 37.501705>,  <32.597775, 28.295298, 37.462143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724205, 28.672724, 37.501705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715738, -0.305577, 0.627966,
		0.622750, -0.127695, -0.771931,
		0.316073, 0.943566, 0.098902,
		32.819027, 28.955793, 37.531376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296837, 28.460819, 37.100338>,  <32.597775, 28.295298, 37.462143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296837, 28.460819, 37.100338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243748, 28.744854, 37.376934>,  <33.211895, 28.915274, 37.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243748, 28.744854, 37.376934>,  <33.296837, 28.460819, 37.100338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243748, 28.744854, 37.376934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860937, -0.263081, 0.435403,
		0.491092, 0.653122, -0.576420,
		-0.132726, 0.710084, 0.691494,
		33.203930, 28.957880, 37.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862026, 28.570135, 37.207008>,  <33.296837, 28.460819, 37.100338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862026, 28.570135, 37.207008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664688, 28.694332, 37.532021>,  <33.546284, 28.768850, 37.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664688, 28.694332, 37.532021>,  <33.862026, 28.570135, 37.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664688, 28.694332, 37.532021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822997, -0.135762, 0.551583,
		0.281573, 0.940831, -0.188557,
		-0.493348, 0.310493, 0.812528,
		33.516685, 28.787479, 37.775780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367172, 28.956362, 37.579315>,  <33.862026, 28.570135, 37.207008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367172, 28.956362, 37.579315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095722, 28.906952, 37.868923>,  <33.932850, 28.877306, 38.042686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095722, 28.906952, 37.868923>,  <34.367172, 28.956362, 37.579315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095722, 28.906952, 37.868923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731630, -0.026922, 0.681170,
		-0.064651, 0.991976, 0.108646,
		-0.678629, -0.123527, 0.724019,
		33.892132, 28.869894, 38.086128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615406, 29.219261, 38.113670>,  <34.367172, 28.956362, 37.579315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615406, 29.219261, 38.113670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334694, 28.990509, 38.283592>,  <34.166267, 28.853258, 38.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334694, 28.990509, 38.283592>,  <34.615406, 29.219261, 38.113670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334694, 28.990509, 38.283592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555381, -0.065732, 0.828994,
		-0.446162, 0.817699, 0.363741,
		-0.701777, -0.571881, 0.424808,
		34.124161, 28.818945, 38.411034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555462, 29.380020, 38.791607>,  <34.615406, 29.219261, 38.113670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555462, 29.380020, 38.791607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386185, 29.017654, 38.785583>,  <34.284618, 28.800234, 38.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386185, 29.017654, 38.785583>,  <34.555462, 29.380020, 38.791607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386185, 29.017654, 38.785583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586701, -0.286658, 0.757370,
		-0.690429, 0.311679, 0.652813,
		-0.423190, -0.905916, -0.015054,
		34.259228, 28.745880, 38.781067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176559, 29.110500, 39.556374>,  <34.555462, 29.380020, 38.791607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176559, 29.110500, 39.556374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251987, 28.787222, 39.333210>,  <34.297245, 28.593256, 39.199310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251987, 28.787222, 39.333210>,  <34.176559, 29.110500, 39.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251987, 28.787222, 39.333210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591896, -0.359791, 0.721255,
		-0.783646, -0.466231, 0.410522,
		0.188569, -0.808195, -0.557909,
		34.308559, 28.544764, 39.165836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114616, 28.589819, 39.976761>,  <34.176559, 29.110500, 39.556374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114616, 28.589819, 39.976761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339993, 28.436802, 39.683861>,  <34.475220, 28.344992, 39.508121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339993, 28.436802, 39.683861>,  <34.114616, 28.589819, 39.976761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339993, 28.436802, 39.683861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537356, -0.503541, 0.676532,
		-0.627522, -0.774667, -0.078153,
		0.563440, -0.382543, -0.732255,
		34.509026, 28.322039, 39.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323086, 27.994644, 40.217354>,  <34.114616, 28.589819, 39.976761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323086, 27.994644, 40.217354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557281, 27.993856, 39.893082>,  <34.697800, 27.993383, 39.698517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557281, 27.993856, 39.893082>,  <34.323086, 27.994644, 40.217354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557281, 27.993856, 39.893082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713151, -0.474291, 0.516202,
		-0.385515, -0.880366, -0.276285,
		0.585487, -0.001971, -0.810680,
		34.732929, 27.993265, 39.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595455, 27.381926, 40.117966>,  <34.323086, 27.994644, 40.217354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595455, 27.381926, 40.117966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854008, 27.610077, 39.915241>,  <35.009140, 27.746967, 39.793606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854008, 27.610077, 39.915241>,  <34.595455, 27.381926, 40.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854008, 27.610077, 39.915241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754406, -0.378246, 0.536471,
		0.114294, -0.729106, -0.674790,
		0.646381, 0.570381, -0.506811,
		35.047920, 27.781191, 39.763199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232567, 27.051443, 39.941952>,  <34.595455, 27.381926, 40.117966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232567, 27.051443, 39.941952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330223, 27.439329, 39.939323>,  <35.388817, 27.672062, 39.937748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330223, 27.439329, 39.939323>,  <35.232567, 27.051443, 39.941952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330223, 27.439329, 39.939323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863866, -0.214405, 0.455815,
		0.440602, -0.116962, -0.890051,
		0.244145, 0.969717, -0.006572,
		35.403465, 27.730244, 39.937351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942581, 27.004093, 39.853977>,  <35.232567, 27.051443, 39.941952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942581, 27.004093, 39.853977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851192, 27.356800, 40.019039>,  <35.796360, 27.568424, 40.118076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851192, 27.356800, 40.019039>,  <35.942581, 27.004093, 39.853977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851192, 27.356800, 40.019039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824469, -0.050173, 0.563679,
		0.517739, 0.469004, -0.715529,
		-0.228468, 0.881770, 0.412656,
		35.782654, 27.621330, 40.142838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618633, 27.273197, 39.914665>,  <35.942581, 27.004093, 39.853977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618633, 27.273197, 39.914665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373631, 27.468941, 40.162975>,  <36.226631, 27.586388, 40.311962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373631, 27.468941, 40.162975>,  <36.618633, 27.273197, 39.914665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373631, 27.468941, 40.162975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711418, -0.001056, 0.702769,
		0.344562, 0.872081, -0.347492,
		-0.612504, 0.489360, 0.620778,
		36.189880, 27.615749, 40.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066494, 27.771585, 40.218075>,  <36.618633, 27.273197, 39.914665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066494, 27.771585, 40.218075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741814, 27.756222, 40.451199>,  <36.547005, 27.747004, 40.591072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741814, 27.756222, 40.451199>,  <37.066494, 27.771585, 40.218075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741814, 27.756222, 40.451199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573489, 0.136734, 0.807722,
		-0.110713, 0.989863, -0.088960,
		-0.811698, -0.038407, 0.582814,
		36.498306, 27.744699, 40.626041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032078, 28.417017, 40.712688>,  <37.066494, 27.771585, 40.218075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032078, 28.417017, 40.712688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861443, 28.084831, 40.855991>,  <36.759060, 27.885519, 40.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861443, 28.084831, 40.855991>,  <37.032078, 28.417017, 40.712688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861443, 28.084831, 40.855991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625715, 0.015035, 0.779907,
		-0.653073, 0.556866, 0.513221,
		-0.426587, -0.830467, 0.358258,
		36.733467, 27.835691, 40.963470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326824, 28.280226, 41.336594>,  <37.032078, 28.417017, 40.712688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326824, 28.280226, 41.336594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116589, 27.940065, 41.346222>,  <36.990448, 27.735970, 41.351997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116589, 27.940065, 41.346222>,  <37.326824, 28.280226, 41.336594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116589, 27.940065, 41.346222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374594, -0.205931, 0.904031,
		-0.763830, 0.484163, 0.426790,
		-0.525588, -0.850399, 0.024068,
		36.958912, 27.684946, 41.353443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073154, 28.162556, 41.999775>,  <37.326824, 28.280226, 41.336594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073154, 28.162556, 41.999775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042290, 27.793472, 41.848694>,  <37.023769, 27.572021, 41.758045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042290, 27.793472, 41.848694>,  <37.073154, 28.162556, 41.999775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042290, 27.793472, 41.848694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575048, -0.350656, 0.739161,
		-0.814472, -0.160158, 0.557660,
		-0.077165, -0.922708, -0.377698,
		37.019142, 27.516661, 41.735386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840912, 27.641846, 42.561802>,  <37.073154, 28.162556, 41.999775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840912, 27.641846, 42.561802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008999, 27.426102, 42.269909>,  <37.109852, 27.296656, 42.094772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008999, 27.426102, 42.269909>,  <36.840912, 27.641846, 42.561802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008999, 27.426102, 42.269909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509809, -0.524941, 0.681566,
		-0.750675, -0.658430, 0.054381,
		0.420216, -0.539358, -0.729733,
		37.135063, 27.264294, 42.050987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762886, 26.862860, 42.587559>,  <36.840912, 27.641846, 42.561802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762886, 26.862860, 42.587559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096615, 26.880039, 42.367718>,  <37.296852, 26.890347, 42.235813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096615, 26.880039, 42.367718>,  <36.762886, 26.862860, 42.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096615, 26.880039, 42.367718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501981, -0.471279, 0.725197,
		-0.227870, -0.880938, -0.414758,
		0.834320, 0.042950, -0.549604,
		37.346912, 26.892923, 42.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006763, 26.122458, 42.588181>,  <36.762886, 26.862860, 42.587559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006763, 26.122458, 42.588181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306423, 26.368656, 42.490246>,  <37.486217, 26.516375, 42.431484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306423, 26.368656, 42.490246>,  <37.006763, 26.122458, 42.588181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306423, 26.368656, 42.490246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553125, -0.377890, 0.742463,
		0.364462, -0.691639, -0.623541,
		0.749146, 0.615495, -0.244836,
		37.531166, 26.553305, 42.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746723, 25.704691, 42.643124>,  <37.006763, 26.122458, 42.588181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746723, 25.704691, 42.643124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855747, 26.089241, 42.627766>,  <37.921162, 26.319971, 42.618553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855747, 26.089241, 42.627766>,  <37.746723, 25.704691, 42.643124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855747, 26.089241, 42.627766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813626, -0.209004, 0.542522,
		0.513543, -0.179103, -0.839164,
		0.272555, 0.961374, -0.038390,
		37.937515, 26.377653, 42.616249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474609, 25.632689, 42.521763>,  <37.746723, 25.704691, 42.643124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474609, 25.632689, 42.521763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363670, 25.977175, 42.692120>,  <38.297108, 26.183867, 42.794334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363670, 25.977175, 42.692120>,  <38.474609, 25.632689, 42.521763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363670, 25.977175, 42.692120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746167, -0.086173, 0.660158,
		0.605239, 0.500881, -0.618712,
		-0.277344, 0.861216, 0.425896,
		38.280468, 26.235540, 42.819889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035873, 26.046040, 42.561516>,  <38.474609, 25.632689, 42.521763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035873, 26.046040, 42.561516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790516, 26.204777, 42.834648>,  <38.643299, 26.300018, 42.998528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790516, 26.204777, 42.834648>,  <39.035873, 26.046040, 42.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790516, 26.204777, 42.834648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654858, -0.227742, 0.720621,
		0.441482, 0.889186, -0.120179,
		-0.613396, 0.396841, 0.682834,
		38.606499, 26.323830, 43.039497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477695, 26.417440, 42.938160>,  <39.035873, 26.046040, 42.561516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477695, 26.417440, 42.938160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147926, 26.397345, 43.163654>,  <38.950066, 26.385286, 43.298950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147926, 26.397345, 43.163654>,  <39.477695, 26.417440, 42.938160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147926, 26.397345, 43.163654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565606, -0.108926, 0.817450,
		0.020336, 0.992779, 0.118218,
		-0.824425, -0.050241, 0.563737,
		38.900600, 26.382273, 43.332775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730938, 27.082973, 43.111160>,  <39.477695, 26.417440, 42.938160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730938, 27.082973, 43.111160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082653, 27.096510, 42.921124>,  <40.293682, 27.104631, 42.807102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082653, 27.096510, 42.921124>,  <39.730938, 27.082973, 43.111160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082653, 27.096510, 42.921124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475190, -0.005478, -0.879866,
		-0.032380, 0.999412, 0.011265,
		0.879287, 0.033843, -0.475088,
		40.346439, 27.106663, 42.778599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606567, 27.465155, 42.566055>,  <39.730938, 27.082973, 43.111160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606567, 27.465155, 42.566055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938255, 27.284756, 42.434002>,  <40.137268, 27.176516, 42.354771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938255, 27.284756, 42.434002>,  <39.606567, 27.465155, 42.566055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938255, 27.284756, 42.434002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375780, -0.012622, -0.926623,
		0.413738, 0.892436, -0.179943,
		0.829223, -0.450998, -0.330137,
		40.187023, 27.149456, 42.334961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966267, 27.849556, 42.006386>,  <39.606567, 27.465155, 42.566055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966267, 27.849556, 42.006386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089069, 27.475573, 41.935276>,  <40.162750, 27.251183, 41.892609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089069, 27.475573, 41.935276>,  <39.966267, 27.849556, 42.006386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089069, 27.475573, 41.935276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280430, 0.089636, -0.955680,
		0.909455, 0.343250, -0.234671,
		0.307003, -0.934957, -0.177778,
		40.181171, 27.195086, 41.881943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477024, 27.934689, 41.507973>,  <39.966267, 27.849556, 42.006386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477024, 27.934689, 41.507973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340328, 27.561386, 41.463703>,  <40.258308, 27.337404, 41.437141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340328, 27.561386, 41.463703>,  <40.477024, 27.934689, 41.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340328, 27.561386, 41.463703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182332, 0.181365, -0.966365,
		0.921937, -0.310068, -0.232142,
		-0.341742, -0.933255, -0.110672,
		40.237804, 27.281410, 41.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788631, 27.536564, 40.857250>,  <40.477024, 27.934689, 41.507973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788631, 27.536564, 40.857250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457378, 27.322731, 40.924675>,  <40.258625, 27.194431, 40.965130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457378, 27.322731, 40.924675>,  <40.788631, 27.536564, 40.857250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457378, 27.322731, 40.924675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224169, 0.040237, -0.973719,
		0.513751, -0.844158, -0.153158,
		-0.828136, -0.534582, 0.168563,
		40.208939, 27.162357, 40.975243>
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
