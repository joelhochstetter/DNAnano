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
	<24.433842, 34.515965, 34.810589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407318, 34.909767, 34.745667>,  <24.391403, 35.146049, 34.706711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407318, 34.909767, 34.745667>,  <24.433842, 34.515965, 34.810589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407318, 34.909767, 34.745667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853437, -0.028317, -0.520426,
		-0.516961, -0.173029, -0.838339,
		-0.066310, 0.984510, -0.162308,
		24.387424, 35.205120, 34.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561825, 34.744972, 34.130207>,  <24.433842, 34.515965, 34.810589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561825, 34.744972, 34.130207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635775, 35.076862, 34.340874>,  <24.680145, 35.275997, 34.467274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635775, 35.076862, 34.340874>,  <24.561825, 34.744972, 34.130207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635775, 35.076862, 34.340874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909504, 0.058577, -0.411548,
		-0.372323, 0.555090, -0.743809,
		0.184876, 0.829725, 0.526666,
		24.691238, 35.325779, 34.498875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829590, 35.249485, 33.701073>,  <24.561825, 34.744972, 34.130207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829590, 35.249485, 33.701073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952578, 35.385506, 34.056561>,  <25.026371, 35.467117, 34.269855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952578, 35.385506, 34.056561>,  <24.829590, 35.249485, 33.701073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952578, 35.385506, 34.056561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922581, 0.122196, -0.365939,
		-0.233036, 0.932435, -0.276151,
		0.307470, 0.340049, 0.888723,
		25.044819, 35.487522, 34.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063725, 36.014565, 33.727619>,  <24.829590, 35.249485, 33.701073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063725, 36.014565, 33.727619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255350, 35.820763, 34.020401>,  <25.370325, 35.704483, 34.196068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255350, 35.820763, 34.020401>,  <25.063725, 36.014565, 33.727619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255350, 35.820763, 34.020401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877153, 0.232751, -0.420034,
		0.033147, 0.843256, 0.536489,
		0.479065, -0.484506, 0.731950,
		25.399069, 35.675411, 34.239986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622488, 36.509007, 34.080341>,  <25.063725, 36.014565, 33.727619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622488, 36.509007, 34.080341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675280, 36.113007, 34.060429>,  <25.706955, 35.875404, 34.048481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675280, 36.113007, 34.060429>,  <25.622488, 36.509007, 34.080341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675280, 36.113007, 34.060429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844495, 0.138594, -0.517320,
		0.519047, 0.026233, 0.854343,
		0.131978, -0.990002, -0.049783,
		25.714872, 35.816006, 34.045494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718370, 36.172165, 34.728043>,  <25.622488, 36.509007, 34.080341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718370, 36.172165, 34.728043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031563, 35.974213, 34.577293>,  <26.219479, 35.855442, 34.486843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031563, 35.974213, 34.577293>,  <25.718370, 36.172165, 34.728043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031563, 35.974213, 34.577293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606802, 0.740964, 0.287688,
		0.136877, -0.453941, 0.880456,
		0.782979, -0.494884, -0.376873,
		26.266457, 35.825748, 34.464230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166609, 36.033943, 35.256874>,  <25.718370, 36.172165, 34.728043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166609, 36.033943, 35.256874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392006, 36.053360, 34.926994>,  <26.527245, 36.065010, 34.729069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392006, 36.053360, 34.926994>,  <26.166609, 36.033943, 35.256874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392006, 36.053360, 34.926994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265372, 0.934732, 0.236335,
		0.782340, -0.352023, 0.513833,
		0.563491, 0.048537, -0.824695,
		26.561054, 36.067921, 34.679585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909048, 36.278217, 35.490719>,  <26.166609, 36.033943, 35.256874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909048, 36.278217, 35.490719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858570, 36.374187, 35.105698>,  <26.828283, 36.431770, 34.874683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858570, 36.374187, 35.105698>,  <26.909048, 36.278217, 35.490719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858570, 36.374187, 35.105698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297935, 0.934682, 0.193917,
		0.946208, -0.262307, -0.189433,
		-0.126194, 0.239925, -0.962555,
		26.820711, 36.446163, 34.816933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366438, 36.734154, 35.374535>,  <26.909048, 36.278217, 35.490719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366438, 36.734154, 35.374535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115166, 36.806404, 35.071812>,  <26.964403, 36.849754, 34.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115166, 36.806404, 35.071812>,  <27.366438, 36.734154, 35.374535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115166, 36.806404, 35.071812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238021, 0.970661, 0.034098,
		0.740766, -0.158717, -0.652743,
		-0.628181, 0.180625, -0.756811,
		26.926712, 36.860592, 34.844769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669403, 37.104004, 35.018536>,  <27.366438, 36.734154, 35.374535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669403, 37.104004, 35.018536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324890, 37.180553, 34.830250>,  <27.118183, 37.226482, 34.717278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324890, 37.180553, 34.830250>,  <27.669403, 37.104004, 35.018536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324890, 37.180553, 34.830250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199920, 0.979279, 0.032331,
		0.467147, -0.066259, -0.881694,
		-0.861282, 0.191371, -0.470714,
		27.066505, 37.237965, 34.689037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831865, 37.690350, 34.527809>,  <27.669403, 37.104004, 35.018536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831865, 37.690350, 34.527809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434099, 37.675255, 34.567234>,  <27.195440, 37.666199, 34.590889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434099, 37.675255, 34.567234>,  <27.831865, 37.690350, 34.527809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434099, 37.675255, 34.567234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043943, 0.997133, -0.061595,
		-0.095958, -0.065582, -0.993223,
		-0.994415, -0.037734, 0.098565,
		27.135775, 37.663933, 34.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599932, 38.035824, 34.064903>,  <27.831865, 37.690350, 34.527809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599932, 38.035824, 34.064903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308672, 38.049801, 34.338715>,  <27.133917, 38.058189, 34.503002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308672, 38.049801, 34.338715>,  <27.599932, 38.035824, 34.064903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308672, 38.049801, 34.338715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005588, 0.998364, -0.056911,
		-0.685397, -0.045265, -0.726762,
		-0.728148, 0.034946, 0.684528,
		27.090227, 38.060284, 34.544071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222385, 38.588795, 33.840912>,  <27.599932, 38.035824, 34.064903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222385, 38.588795, 33.840912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102318, 38.525047, 34.217102>,  <27.030277, 38.486801, 34.442818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102318, 38.525047, 34.217102>,  <27.222385, 38.588795, 33.840912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102318, 38.525047, 34.217102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115316, 0.984776, 0.130068,
		-0.946890, -0.069410, -0.313976,
		-0.300168, -0.159366, 0.940479,
		27.012268, 38.477238, 34.499245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621733, 39.073944, 33.915474>,  <27.222385, 38.588795, 33.840912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621733, 39.073944, 33.915474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772202, 38.962990, 34.269096>,  <26.862482, 38.896416, 34.481270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772202, 38.962990, 34.269096>,  <26.621733, 39.073944, 33.915474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772202, 38.962990, 34.269096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050002, 0.946668, 0.318308,
		-0.925200, -0.163943, 0.342240,
		0.376172, -0.277386, 0.884054,
		26.885054, 38.879776, 34.534313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140186, 39.384922, 34.464657>,  <26.621733, 39.073944, 33.915474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140186, 39.384922, 34.464657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501375, 39.299774, 34.613964>,  <26.718088, 39.248688, 34.703548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501375, 39.299774, 34.613964>,  <26.140186, 39.384922, 34.464657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501375, 39.299774, 34.613964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028065, 0.896034, 0.443097,
		-0.428782, -0.389629, 0.815068,
		0.902972, -0.212867, 0.373268,
		26.772266, 39.235912, 34.725945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220850, 39.833820, 35.061455>,  <26.140186, 39.384922, 34.464657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220850, 39.833820, 35.061455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594873, 39.709278, 34.993656>,  <26.819286, 39.634552, 34.952976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594873, 39.709278, 34.993656>,  <26.220850, 39.833820, 35.061455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594873, 39.709278, 34.993656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351815, 0.873743, 0.335857,
		0.043524, -0.373676, 0.926538,
		0.935057, -0.311352, -0.169493,
		26.875391, 39.615871, 34.942810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557753, 40.126289, 35.646130>,  <26.220850, 39.833820, 35.061455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557753, 40.126289, 35.646130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822727, 40.027630, 35.363190>,  <26.981712, 39.968433, 35.193424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822727, 40.027630, 35.363190>,  <26.557753, 40.126289, 35.646130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822727, 40.027630, 35.363190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526054, 0.825415, 0.204833,
		0.533335, -0.507793, 0.676535,
		0.662435, -0.246650, -0.707350,
		27.021458, 39.953636, 35.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225380, 40.189869, 35.927311>,  <26.557753, 40.126289, 35.646130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225380, 40.189869, 35.927311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303698, 40.214226, 35.535809>,  <27.350689, 40.228840, 35.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303698, 40.214226, 35.535809>,  <27.225380, 40.189869, 35.927311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303698, 40.214226, 35.535809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460287, 0.875590, 0.146550,
		0.865910, -0.479201, 0.143408,
		0.195793, 0.060890, -0.978753,
		27.362436, 40.232494, 35.242184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913656, 40.420311, 36.023941>,  <27.225380, 40.189869, 35.927311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913656, 40.420311, 36.023941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776960, 40.493351, 35.655186>,  <27.694942, 40.537174, 35.433933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776960, 40.493351, 35.655186>,  <27.913656, 40.420311, 36.023941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776960, 40.493351, 35.655186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310516, 0.947790, 0.072625,
		0.887015, -0.261441, -0.380596,
		-0.341738, 0.182600, -0.921885,
		27.674438, 40.548130, 35.378620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469475, 40.665649, 35.652397>,  <27.913656, 40.420311, 36.023941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469475, 40.665649, 35.652397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142752, 40.813042, 35.474838>,  <27.946718, 40.901478, 35.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142752, 40.813042, 35.474838>,  <28.469475, 40.665649, 35.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142752, 40.813042, 35.474838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368691, 0.925223, 0.089610,
		0.443726, -0.090468, -0.891585,
		-0.816808, 0.368481, -0.443900,
		27.897709, 40.923588, 35.341667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744894, 41.190907, 35.338722>,  <28.469475, 40.665649, 35.652397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744894, 41.190907, 35.338722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347980, 41.239864, 35.330841>,  <28.109833, 41.269241, 35.326111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347980, 41.239864, 35.330841>,  <28.744894, 41.190907, 35.338722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347980, 41.239864, 35.330841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117650, 0.979818, 0.161604,
		0.039085, 0.158039, -0.986659,
		-0.992286, 0.122397, -0.019703,
		28.050295, 41.276585, 35.324928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577082, 41.566212, 34.712849>,  <28.744894, 41.190907, 35.338722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577082, 41.566212, 34.712849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284964, 41.629368, 34.978703>,  <28.109692, 41.667263, 35.138214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284964, 41.629368, 34.978703>,  <28.577082, 41.566212, 34.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284964, 41.629368, 34.978703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221792, 0.975019, 0.012077,
		-0.646122, 0.156230, -0.747073,
		-0.730297, 0.157892, 0.664632,
		28.065874, 41.676735, 35.178093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331755, 42.273605, 34.518520>,  <28.577082, 41.566212, 34.712849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331755, 42.273605, 34.518520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131580, 42.195057, 34.855804>,  <28.011477, 42.147926, 35.058174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131580, 42.195057, 34.855804>,  <28.331755, 42.273605, 34.518520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131580, 42.195057, 34.855804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022011, 0.976509, 0.214350,
		-0.865495, 0.088708, -0.493000,
		-0.500434, -0.196370, 0.843211,
		27.981451, 42.136147, 35.108768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589857, 42.539059, 34.553326>,  <28.331755, 42.273605, 34.518520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589857, 42.539059, 34.553326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736303, 42.521252, 34.925129>,  <27.824171, 42.510567, 35.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736303, 42.521252, 34.925129>,  <27.589857, 42.539059, 34.553326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736303, 42.521252, 34.925129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115205, 0.989003, 0.092741,
		-0.923411, -0.141037, 0.356959,
		0.366114, -0.044515, 0.929505,
		27.846138, 42.507896, 35.203979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127403, 42.923500, 34.943634>,  <27.589857, 42.539059, 34.553326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127403, 42.923500, 34.943634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462515, 42.905014, 35.161255>,  <27.663582, 42.893925, 35.291828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462515, 42.905014, 35.161255>,  <27.127403, 42.923500, 34.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462515, 42.905014, 35.161255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066178, 0.980472, 0.185189,
		-0.541981, -0.191152, 0.818362,
		0.837781, -0.046211, 0.544047,
		27.713850, 42.891151, 35.324471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073580, 43.294308, 35.643425>,  <27.127403, 42.923500, 34.943634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073580, 43.294308, 35.643425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455631, 43.273922, 35.526718>,  <27.684862, 43.261692, 35.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455631, 43.273922, 35.526718>,  <27.073580, 43.294308, 35.643425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455631, 43.273922, 35.526718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111433, 0.974541, 0.194556,
		0.274423, -0.218338, 0.936494,
		0.955131, -0.050966, -0.291766,
		27.742170, 43.258633, 35.439190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319483, 43.917015, 35.774147>,  <27.073580, 43.294308, 35.643425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319483, 43.917015, 35.774147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657495, 43.764175, 35.624519>,  <27.860302, 43.672470, 35.534744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657495, 43.764175, 35.624519>,  <27.319483, 43.917015, 35.774147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657495, 43.764175, 35.624519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459196, 0.876989, 0.141522,
		0.273975, -0.291359, 0.916541,
		0.845030, -0.382099, -0.374065,
		27.911005, 43.649548, 35.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949821, 43.952427, 36.218063>,  <27.319483, 43.917015, 35.774147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949821, 43.952427, 36.218063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026939, 43.990860, 35.827454>,  <28.073210, 44.013920, 35.593086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026939, 43.990860, 35.827454>,  <27.949821, 43.952427, 36.218063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026939, 43.990860, 35.827454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370698, 0.914312, 0.163148,
		0.908523, -0.393449, 0.140656,
		0.192794, 0.096083, -0.976524,
		28.084778, 44.019684, 35.534496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548958, 44.302238, 36.081406>,  <27.949821, 43.952427, 36.218063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548958, 44.302238, 36.081406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379414, 44.368412, 35.725208>,  <28.277687, 44.408115, 35.511490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379414, 44.368412, 35.725208>,  <28.548958, 44.302238, 36.081406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379414, 44.368412, 35.725208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304609, 0.951944, 0.031859,
		0.852969, -0.257749, -0.453883,
		-0.423860, 0.165432, -0.890491,
		28.252256, 44.418041, 35.458061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968996, 44.530407, 35.602306>,  <28.548958, 44.302238, 36.081406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968996, 44.530407, 35.602306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623981, 44.658390, 35.445511>,  <28.416973, 44.735180, 35.351433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623981, 44.658390, 35.445511>,  <28.968996, 44.530407, 35.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623981, 44.658390, 35.445511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410575, 0.895341, -0.172606,
		0.295740, -0.309821, -0.903631,
		-0.862535, 0.319962, -0.391993,
		28.365221, 44.754379, 35.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992489, 44.680508, 34.872471>,  <28.968996, 44.530407, 35.602306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992489, 44.680508, 34.872471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733906, 44.912868, 35.070320>,  <28.578756, 45.052284, 35.189030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733906, 44.912868, 35.070320>,  <28.992489, 44.680508, 34.872471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733906, 44.912868, 35.070320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447319, 0.813764, -0.371072,
		-0.618059, -0.018629, -0.785911,
		-0.646459, 0.580897, 0.494621,
		28.539968, 45.087139, 35.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565121, 44.979939, 34.334641>,  <28.992489, 44.680508, 34.872471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565121, 44.979939, 34.334641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615049, 45.179329, 34.677788>,  <28.645006, 45.298962, 34.883678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615049, 45.179329, 34.677788>,  <28.565121, 44.979939, 34.334641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615049, 45.179329, 34.677788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215579, 0.830351, -0.513851,
		-0.968476, 0.249079, -0.003815,
		0.124822, 0.498475, 0.857871,
		28.652496, 45.328873, 34.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983034, 44.394291, 34.168720>,  <28.565121, 44.979939, 34.334641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983034, 44.394291, 34.168720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379517, 44.402241, 34.116386>,  <29.617407, 44.407009, 34.084988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379517, 44.402241, 34.116386>,  <28.983034, 44.394291, 34.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379517, 44.402241, 34.116386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017798, -0.959662, -0.280593,
		-0.131128, 0.280454, -0.950869,
		0.991206, 0.019870, -0.130830,
		29.676878, 44.408203, 34.077137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145737, 44.140556, 33.418797>,  <28.983034, 44.394291, 34.168720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145737, 44.140556, 33.418797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459616, 44.087952, 33.661106>,  <29.647943, 44.056389, 33.806492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459616, 44.087952, 33.661106>,  <29.145737, 44.140556, 33.418797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459616, 44.087952, 33.661106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169261, -0.894644, -0.413475,
		0.596325, 0.426986, -0.679765,
		0.784696, -0.131508, 0.605771,
		29.695024, 44.048500, 33.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788099, 44.034588, 33.002666>,  <29.145737, 44.140556, 33.418797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788099, 44.034588, 33.002666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802616, 43.879040, 33.370895>,  <29.811327, 43.785709, 33.591835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802616, 43.879040, 33.370895>,  <29.788099, 44.034588, 33.002666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802616, 43.879040, 33.370895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465205, -0.808712, -0.359958,
		0.884459, 0.441320, 0.151555,
		0.036292, -0.388872, 0.920577,
		29.813503, 43.762379, 33.647068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357807, 43.519054, 32.974049>,  <29.788099, 44.034588, 33.002666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357807, 43.519054, 32.974049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089809, 43.435013, 33.258854>,  <29.929010, 43.384586, 33.429737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089809, 43.435013, 33.258854>,  <30.357807, 43.519054, 32.974049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089809, 43.435013, 33.258854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074762, -0.935140, -0.346301,
		0.738591, -0.285252, 0.610832,
		-0.669996, -0.210108, 0.712012,
		29.888811, 43.371979, 33.472458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722017, 42.977974, 33.437092>,  <30.357807, 43.519054, 32.974049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722017, 42.977974, 33.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325274, 42.967865, 33.487011>,  <30.087227, 42.961800, 33.516960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325274, 42.967865, 33.487011>,  <30.722017, 42.977974, 33.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325274, 42.967865, 33.487011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025389, -0.999677, -0.000667,
		0.124773, 0.002507, 0.992182,
		-0.991861, -0.025273, 0.124796,
		30.027716, 42.960281, 33.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618567, 42.345249, 33.844955>,  <30.722017, 42.977974, 33.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618567, 42.345249, 33.844955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231062, 42.403835, 33.764908>,  <29.998560, 42.438988, 33.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231062, 42.403835, 33.764908>,  <30.618567, 42.345249, 33.844955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231062, 42.403835, 33.764908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156174, -0.987160, 0.033535,
		-0.192639, 0.063741, 0.979197,
		-0.968762, 0.146465, -0.200120,
		29.940434, 42.447777, 33.704872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197609, 41.813881, 34.328766>,  <30.618567, 42.345249, 33.844955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197609, 41.813881, 34.328766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955101, 41.892475, 34.020523>,  <29.809597, 41.939632, 33.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955101, 41.892475, 34.020523>,  <30.197609, 41.813881, 34.328766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955101, 41.892475, 34.020523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153237, -0.979702, -0.129238,
		-0.780356, 0.039733, 0.624072,
		-0.606270, 0.196482, -0.770604,
		29.773220, 41.951420, 33.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674324, 41.339836, 34.408356>,  <30.197609, 41.813881, 34.328766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674324, 41.339836, 34.408356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681274, 41.448540, 34.023472>,  <29.685444, 41.513760, 33.792542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681274, 41.448540, 34.023472>,  <29.674324, 41.339836, 34.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681274, 41.448540, 34.023472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180304, -0.945726, -0.270356,
		-0.983457, 0.178188, 0.032566,
		0.017376, 0.271755, -0.962209,
		29.686487, 41.530067, 33.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134050, 41.077259, 34.101536>,  <29.674324, 41.339836, 34.408356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134050, 41.077259, 34.101536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350706, 41.111721, 33.767063>,  <29.480700, 41.132397, 33.566380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350706, 41.111721, 33.767063>,  <29.134050, 41.077259, 34.101536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350706, 41.111721, 33.767063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246587, -0.934689, -0.256031,
		-0.803631, 0.344869, -0.485018,
		0.541638, 0.086156, -0.836185,
		29.513197, 41.137569, 33.516209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708385, 40.810749, 33.573162>,  <29.134050, 41.077259, 34.101536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708385, 40.810749, 33.573162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064182, 40.826481, 33.391060>,  <29.277660, 40.835922, 33.281799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064182, 40.826481, 33.391060>,  <28.708385, 40.810749, 33.573162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064182, 40.826481, 33.391060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132221, -0.931515, -0.338818,
		-0.437405, 0.361570, -0.823374,
		0.889491, 0.039333, -0.455257,
		29.331030, 40.838280, 33.254482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556932, 40.555714, 32.811981>,  <28.708385, 40.810749, 33.573162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556932, 40.555714, 32.811981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946154, 40.518330, 32.896297>,  <29.179686, 40.495899, 32.946888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946154, 40.518330, 32.896297>,  <28.556932, 40.555714, 32.811981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946154, 40.518330, 32.896297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034198, -0.962561, -0.268898,
		0.228029, 0.254444, -0.939820,
		0.973054, -0.093457, 0.210791,
		29.238070, 40.490292, 32.959534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841393, 40.120579, 32.288357>,  <28.556932, 40.555714, 32.811981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841393, 40.120579, 32.288357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124489, 40.119183, 32.570942>,  <29.294348, 40.118347, 32.740494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124489, 40.119183, 32.570942>,  <28.841393, 40.120579, 32.288357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124489, 40.119183, 32.570942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115618, -0.985933, -0.120696,
		0.696946, 0.167102, -0.697383,
		0.707742, -0.003488, 0.706462,
		29.336811, 40.118137, 32.782879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424831, 39.682320, 32.027901>,  <28.841393, 40.120579, 32.288357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424831, 39.682320, 32.027901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463850, 39.690567, 32.425907>,  <29.487261, 39.695515, 32.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463850, 39.690567, 32.425907>,  <29.424831, 39.682320, 32.027901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463850, 39.690567, 32.425907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126696, -0.991908, 0.008135,
		0.987133, 0.125271, -0.099371,
		0.097548, 0.020620, 0.995017,
		29.493114, 39.696754, 32.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957649, 39.187050, 32.154751>,  <29.424831, 39.682320, 32.027901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957649, 39.187050, 32.154751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770866, 39.251148, 32.502605>,  <29.658796, 39.289608, 32.711319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770866, 39.251148, 32.502605>,  <29.957649, 39.187050, 32.154751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770866, 39.251148, 32.502605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134105, -0.984901, 0.109480,
		0.874051, -0.065500, 0.481398,
		-0.466958, 0.160249, 0.869638,
		29.630779, 39.299221, 32.763496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293718, 38.626858, 32.569016>,  <29.957649, 39.187050, 32.154751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293718, 38.626858, 32.569016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984823, 38.776379, 32.774509>,  <29.799486, 38.866093, 32.897804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984823, 38.776379, 32.774509>,  <30.293718, 38.626858, 32.569016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984823, 38.776379, 32.774509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209946, -0.913318, 0.348959,
		0.599641, 0.161624, 0.783778,
		-0.772239, 0.373802, 0.513730,
		29.753151, 38.888519, 32.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425100, 38.420860, 33.313530>,  <30.293718, 38.626858, 32.569016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425100, 38.420860, 33.313530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052771, 38.475159, 33.177803>,  <29.829372, 38.507736, 33.096367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052771, 38.475159, 33.177803>,  <30.425100, 38.420860, 33.313530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052771, 38.475159, 33.177803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208593, -0.959709, 0.188276,
		-0.300090, 0.246032, 0.921637,
		-0.930825, 0.135747, -0.339319,
		29.773523, 38.515884, 33.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979666, 38.223053, 33.842133>,  <30.425100, 38.420860, 33.313530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979666, 38.223053, 33.842133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773085, 38.191288, 33.501083>,  <29.649136, 38.172230, 33.296452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773085, 38.191288, 33.501083>,  <29.979666, 38.223053, 33.842133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773085, 38.191288, 33.501083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285106, -0.922935, 0.258659,
		-0.807459, 0.376674, 0.454012,
		-0.516454, -0.079415, -0.852625,
		29.618149, 38.167465, 33.245296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482475, 37.861595, 34.106274>,  <29.979666, 38.223053, 33.842133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482475, 37.861595, 34.106274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466228, 37.840466, 33.707161>,  <29.456480, 37.827789, 33.467693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466228, 37.840466, 33.707161>,  <29.482475, 37.861595, 34.106274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466228, 37.840466, 33.707161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375520, -0.924586, 0.064234,
		-0.925924, 0.377294, 0.017716,
		-0.040615, -0.052823, -0.997778,
		29.454044, 37.824619, 33.407829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816271, 37.469646, 34.013916>,  <29.482475, 37.861595, 34.106274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816271, 37.469646, 34.013916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016640, 37.434128, 33.669544>,  <29.136862, 37.412819, 33.462921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016640, 37.434128, 33.669544>,  <28.816271, 37.469646, 34.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016640, 37.434128, 33.669544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224991, -0.973884, -0.030465,
		-0.835736, 0.208961, -0.507818,
		0.500923, -0.088794, -0.860925,
		29.166916, 37.407490, 33.411266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280905, 37.085526, 33.674091>,  <28.816271, 37.469646, 34.013916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280905, 37.085526, 33.674091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621479, 37.042622, 33.468742>,  <28.825823, 37.016880, 33.345531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621479, 37.042622, 33.468742>,  <28.280905, 37.085526, 33.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621479, 37.042622, 33.468742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219310, -0.961988, -0.162735,
		-0.476404, 0.251147, -0.842594,
		0.851435, -0.107262, -0.513374,
		28.876909, 37.010445, 33.314732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162956, 36.780083, 33.172840>,  <28.280905, 37.085526, 33.674091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162956, 36.780083, 33.172840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556139, 36.706573, 33.174747>,  <28.792049, 36.662468, 33.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556139, 36.706573, 33.174747>,  <28.162956, 36.780083, 33.172840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556139, 36.706573, 33.174747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180283, -0.968717, -0.170547,
		0.035959, 0.166782, -0.985338,
		0.982957, -0.183772, 0.004767,
		28.851027, 36.651443, 33.176178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347887, 36.241699, 32.688969>,  <28.162956, 36.780083, 33.172840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347887, 36.241699, 32.688969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683046, 36.221992, 32.906410>,  <28.884142, 36.210167, 33.036873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683046, 36.221992, 32.906410>,  <28.347887, 36.241699, 32.688969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683046, 36.221992, 32.906410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000162, -0.995896, -0.090508,
		0.545829, 0.075924, -0.834450,
		0.837897, -0.049267, 0.543601,
		28.934416, 36.207214, 33.069489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662317, 35.695297, 32.382034>,  <28.347887, 36.241699, 32.688969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662317, 35.695297, 32.382034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847660, 35.725716, 32.735195>,  <28.958866, 35.743969, 32.947090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847660, 35.725716, 32.735195>,  <28.662317, 35.695297, 32.382034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847660, 35.725716, 32.735195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012807, -0.996782, 0.079136,
		0.886078, -0.025361, -0.462841,
		0.463358, 0.076049, 0.882902,
		28.986668, 35.748531, 33.000065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283663, 35.264954, 32.292343>,  <28.662317, 35.695297, 32.382034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283663, 35.264954, 32.292343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154051, 35.309605, 32.668118>,  <29.076284, 35.336395, 32.893581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154051, 35.309605, 32.668118>,  <29.283663, 35.264954, 32.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154051, 35.309605, 32.668118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077544, -0.986539, 0.143974,
		0.942863, 0.119500, 0.311012,
		-0.324030, 0.111631, 0.939437,
		29.056841, 35.343094, 32.949947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819365, 34.839371, 32.777657>,  <29.283663, 35.264954, 32.292343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819365, 34.839371, 32.777657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459005, 34.869099, 32.948704>,  <29.242790, 34.886936, 33.051331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459005, 34.869099, 32.948704>,  <29.819365, 34.839371, 32.777657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459005, 34.869099, 32.948704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035662, -0.969223, 0.243587,
		0.432563, 0.234697, 0.870521,
		-0.900898, 0.074323, 0.427619,
		29.188736, 34.891396, 33.076988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941578, 34.674213, 33.466183>,  <29.819365, 34.839371, 32.777657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941578, 34.674213, 33.466183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571400, 34.584095, 33.344337>,  <29.349293, 34.530022, 33.271229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571400, 34.584095, 33.344337>,  <29.941578, 34.674213, 33.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571400, 34.584095, 33.344337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180077, -0.968929, 0.169554,
		-0.333349, 0.102059, 0.937263,
		-0.925446, -0.225300, -0.304613,
		29.293766, 34.516506, 33.252953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364157, 35.059353, 34.019592>,  <29.941578, 34.674213, 33.466183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364157, 35.059353, 34.019592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715721, 34.874062, 33.974102>,  <30.926661, 34.762886, 33.946808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715721, 34.874062, 33.974102>,  <30.364157, 35.059353, 34.019592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715721, 34.874062, 33.974102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412943, 0.619626, 0.667489,
		-0.238729, -0.633628, 0.735883,
		0.878912, -0.463226, -0.113730,
		30.979395, 34.735092, 33.939983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619970, 34.924213, 34.698261>,  <30.364157, 35.059353, 34.019592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619970, 34.924213, 34.698261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904697, 34.962372, 34.419918>,  <31.075533, 34.985268, 34.252911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904697, 34.962372, 34.419918>,  <30.619970, 34.924213, 34.698261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904697, 34.962372, 34.419918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476841, 0.661783, 0.578504,
		0.515693, -0.743601, 0.425579,
		0.711817, 0.095397, -0.695856,
		31.118242, 34.990990, 34.211163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379757, 34.786327, 34.857983>,  <30.619970, 34.924213, 34.698261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379757, 34.786327, 34.857983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334826, 35.073051, 34.582722>,  <31.307867, 35.245087, 34.417564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334826, 35.073051, 34.582722>,  <31.379757, 34.786327, 34.857983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334826, 35.073051, 34.582722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447858, 0.654732, 0.608892,
		0.887020, -0.239800, -0.394577,
		-0.112329, 0.716814, -0.688157,
		31.301126, 35.288097, 34.376274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023985, 34.473560, 35.447689>,  <31.379757, 34.786327, 34.857983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023985, 34.473560, 35.447689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713722, 34.301411, 35.632355>,  <30.527565, 34.198120, 35.743153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713722, 34.301411, 35.632355>,  <31.023985, 34.473560, 35.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713722, 34.301411, 35.632355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135763, 0.600570, 0.787962,
		-0.616379, 0.673866, -0.407408,
		-0.775657, -0.430373, 0.461665,
		30.481026, 34.172298, 35.770855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561678, 35.117348, 35.682034>,  <31.023985, 34.473560, 35.447689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561678, 35.117348, 35.682034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526987, 34.770710, 35.878601>,  <30.506172, 34.562729, 35.996540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526987, 34.770710, 35.878601>,  <30.561678, 35.117348, 35.682034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526987, 34.770710, 35.878601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003785, 0.492987, 0.870028,
		-0.996225, 0.077314, -0.039474,
		-0.086726, -0.866595, 0.491418,
		30.500969, 34.510731, 36.026028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191511, 35.102242, 36.264507>,  <30.561678, 35.117348, 35.682034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191511, 35.102242, 36.264507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424774, 34.801464, 36.387478>,  <30.564732, 34.620998, 36.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424774, 34.801464, 36.387478>,  <30.191511, 35.102242, 36.264507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424774, 34.801464, 36.387478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145204, 0.468824, 0.871275,
		-0.799278, -0.463450, 0.382582,
		0.583156, -0.751943, 0.307426,
		30.599720, 34.575882, 36.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021465, 34.982563, 36.965481>,  <30.191511, 35.102242, 36.264507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021465, 34.982563, 36.965481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380133, 34.813614, 36.912441>,  <30.595333, 34.712242, 36.880615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380133, 34.813614, 36.912441>,  <30.021465, 34.982563, 36.965481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380133, 34.813614, 36.912441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355439, 0.508314, 0.784398,
		-0.263907, -0.750477, 0.605918,
		0.896670, -0.422375, -0.132601,
		30.649134, 34.686901, 36.872662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223454, 34.845692, 37.664471>,  <30.021465, 34.982563, 36.965481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223454, 34.845692, 37.664471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572115, 34.835739, 37.468674>,  <30.781311, 34.829769, 37.351196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572115, 34.835739, 37.468674>,  <30.223454, 34.845692, 37.664471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572115, 34.835739, 37.468674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451903, 0.427451, 0.782987,
		0.189756, -0.903696, 0.383831,
		0.871651, -0.024877, -0.489495,
		30.833611, 34.828278, 37.321827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737373, 34.609352, 38.207691>,  <30.223454, 34.845692, 37.664471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737373, 34.609352, 38.207691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901558, 34.796432, 37.894569>,  <31.000069, 34.908680, 37.706696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901558, 34.796432, 37.894569>,  <30.737373, 34.609352, 38.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901558, 34.796432, 37.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626224, 0.479432, 0.614808,
		0.662847, -0.742563, -0.096098,
		0.410461, 0.467702, -0.782800,
		31.024696, 34.936745, 37.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457178, 34.539078, 38.194118>,  <30.737373, 34.609352, 38.207691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457178, 34.539078, 38.194118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383778, 34.868694, 37.979725>,  <31.339737, 35.066463, 37.851089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383778, 34.868694, 37.979725>,  <31.457178, 34.539078, 38.194118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383778, 34.868694, 37.979725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631477, 0.516677, 0.578172,
		0.753369, -0.232365, -0.615176,
		-0.183500, 0.824046, -0.535982,
		31.328728, 35.115910, 37.818932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134140, 34.827332, 38.276432>,  <31.457178, 34.539078, 38.194118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134140, 34.827332, 38.276432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900984, 35.101578, 38.101994>,  <31.761091, 35.266125, 37.997330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900984, 35.101578, 38.101994>,  <32.134140, 34.827332, 38.276432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900984, 35.101578, 38.101994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573651, 0.727323, 0.376730,
		0.575473, -0.030575, -0.817250,
		-0.582886, 0.685614, -0.436094,
		31.726118, 35.307262, 37.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628361, 35.284969, 38.068230>,  <32.134140, 34.827332, 38.276432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628361, 35.284969, 38.068230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290089, 35.498055, 38.081154>,  <32.087124, 35.625904, 38.088909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290089, 35.498055, 38.081154>,  <32.628361, 35.284969, 38.068230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290089, 35.498055, 38.081154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506936, 0.782887, 0.360699,
		0.166850, 0.321416, -0.932123,
		-0.845681, 0.532709, 0.032312,
		32.036385, 35.657867, 38.090847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836155, 35.947529, 37.900089>,  <32.628361, 35.284969, 38.068230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836155, 35.947529, 37.900089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486683, 36.017750, 38.081581>,  <32.277000, 36.059883, 38.190475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486683, 36.017750, 38.081581>,  <32.836155, 35.947529, 37.900089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486683, 36.017750, 38.081581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431618, 0.710030, 0.556384,
		-0.224491, 0.681939, -0.696106,
		-0.873676, 0.175549, 0.453732,
		32.224579, 36.070415, 38.217701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710594, 36.714981, 37.842758>,  <32.836155, 35.947529, 37.900089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710594, 36.714981, 37.842758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480419, 36.589962, 38.145065>,  <32.342312, 36.514950, 38.326450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480419, 36.589962, 38.145065>,  <32.710594, 36.714981, 37.842758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480419, 36.589962, 38.145065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373076, 0.722028, 0.582657,
		-0.727793, 0.617243, -0.298880,
		-0.575441, -0.312549, 0.755765,
		32.307785, 36.496197, 38.371796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398251, 37.310970, 38.090866>,  <32.710594, 36.714981, 37.842758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398251, 37.310970, 38.090866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381512, 37.040184, 38.384796>,  <32.371468, 36.877712, 38.561153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381512, 37.040184, 38.384796>,  <32.398251, 37.310970, 38.090866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381512, 37.040184, 38.384796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389490, 0.666231, 0.635950,
		-0.920080, 0.312817, 0.235794,
		-0.041843, -0.676965, 0.734825,
		32.368958, 36.837093, 38.605244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096924, 37.650806, 38.626282>,  <32.398251, 37.310970, 38.090866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096924, 37.650806, 38.626282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279758, 37.342075, 38.803078>,  <32.389458, 37.156837, 38.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279758, 37.342075, 38.803078>,  <32.096924, 37.650806, 38.626282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279758, 37.342075, 38.803078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294703, 0.600291, 0.743505,
		-0.839181, -0.209589, 0.501845,
		0.457084, -0.771831, 0.441987,
		32.416885, 37.110527, 38.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021511, 37.846958, 39.330620>,  <32.096924, 37.650806, 38.626282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021511, 37.846958, 39.330620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293308, 37.553726, 39.318733>,  <32.456387, 37.377789, 39.311600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293308, 37.553726, 39.318733>,  <32.021511, 37.846958, 39.330620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293308, 37.553726, 39.318733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454808, 0.389089, 0.801099,
		-0.575709, -0.557855, 0.597793,
		0.679492, -0.733081, -0.029715,
		32.497154, 37.333801, 39.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220684, 37.595741, 40.000645>,  <32.021511, 37.846958, 39.330620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220684, 37.595741, 40.000645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549335, 37.498951, 39.794201>,  <32.746525, 37.440876, 39.670334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549335, 37.498951, 39.794201>,  <32.220684, 37.595741, 40.000645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549335, 37.498951, 39.794201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570021, 0.347213, 0.744661,
		-0.000988, -0.906031, 0.423211,
		0.821630, -0.241974, -0.516113,
		32.795826, 37.426357, 39.639366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689480, 37.192963, 40.420528>,  <32.220684, 37.595741, 40.000645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689480, 37.192963, 40.420528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919159, 37.368996, 40.144375>,  <33.056965, 37.474617, 39.978683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919159, 37.368996, 40.144375>,  <32.689480, 37.192963, 40.420528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919159, 37.368996, 40.144375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602790, 0.343381, 0.720232,
		0.554027, -0.829707, -0.068112,
		0.574193, 0.440086, -0.690382,
		33.091415, 37.501022, 39.937260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268848, 36.824829, 40.330791>,  <32.689480, 37.192963, 40.420528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268848, 36.824829, 40.330791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282856, 37.221943, 40.284935>,  <33.291260, 37.460213, 40.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282856, 37.221943, 40.284935>,  <33.268848, 36.824829, 40.330791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282856, 37.221943, 40.284935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608999, 0.069755, 0.790098,
		0.792398, -0.097490, -0.602164,
		0.035022, 0.992789, -0.114645,
		33.293362, 37.519779, 40.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052097, 36.939339, 40.229000>,  <33.268848, 36.824829, 40.330791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052097, 36.939339, 40.229000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153454, 37.288399, 40.395981>,  <34.214268, 37.497837, 40.496170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153454, 37.288399, 40.395981>,  <34.052097, 36.939339, 40.229000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153454, 37.288399, 40.395981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914241, -0.357069, 0.191482,
		0.316156, 0.333130, -0.888296,
		0.253394, 0.872655, 0.417451,
		34.229473, 37.550194, 40.521217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978699, 37.051048, 40.965927>,  <34.052097, 36.939339, 40.229000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978699, 37.051048, 40.965927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793499, 37.387646, 40.854561>,  <33.682381, 37.589603, 40.787743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793499, 37.387646, 40.854561>,  <33.978699, 37.051048, 40.965927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793499, 37.387646, 40.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096289, 0.264498, 0.959567,
		0.881112, 0.471088, -0.041436,
		-0.463000, 0.841497, -0.278413,
		33.654598, 37.640095, 40.771038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177330, 37.395721, 41.520599>,  <33.978699, 37.051048, 40.965927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177330, 37.395721, 41.520599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903984, 37.621235, 41.335056>,  <33.739975, 37.756542, 41.223728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903984, 37.621235, 41.335056>,  <34.177330, 37.395721, 41.520599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903984, 37.621235, 41.335056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374127, 0.275173, 0.885612,
		0.626932, 0.778738, 0.022882,
		-0.683363, 0.563779, -0.463861,
		33.698975, 37.790367, 41.195896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218170, 38.111988, 41.736656>,  <34.177330, 37.395721, 41.520599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218170, 38.111988, 41.736656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842464, 38.067978, 41.606625>,  <33.617043, 38.041573, 41.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842464, 38.067978, 41.606625>,  <34.218170, 38.111988, 41.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842464, 38.067978, 41.606625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342674, 0.248409, 0.906017,
		-0.018930, 0.962387, -0.271023,
		-0.939264, -0.110023, -0.325083,
		33.560684, 38.034969, 41.509098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754208, 38.712543, 41.914562>,  <34.218170, 38.111988, 41.736656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754208, 38.712543, 41.914562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506287, 38.401112, 41.875229>,  <33.357536, 38.214252, 41.851627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506287, 38.401112, 41.875229>,  <33.754208, 38.712543, 41.914562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506287, 38.401112, 41.875229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208567, 0.042630, 0.977079,
		-0.756538, 0.626100, -0.188807,
		-0.619798, -0.778576, -0.098332,
		33.320347, 38.167538, 41.845730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145618, 38.928993, 42.217178>,  <33.754208, 38.712543, 41.914562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145618, 38.928993, 42.217178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104904, 38.531116, 42.223335>,  <33.080475, 38.292393, 42.227028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104904, 38.531116, 42.223335>,  <33.145618, 38.928993, 42.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104904, 38.531116, 42.223335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304558, 0.045887, 0.951388,
		-0.947040, 0.092146, -0.307611,
		-0.101782, -0.994687, 0.015393,
		33.074371, 38.232712, 42.227955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605988, 38.814812, 42.655228>,  <33.145618, 38.928993, 42.217178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605988, 38.814812, 42.655228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777527, 38.453789, 42.639843>,  <32.880451, 38.237175, 42.630611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777527, 38.453789, 42.639843>,  <32.605988, 38.814812, 42.655228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777527, 38.453789, 42.639843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133104, -0.105246, 0.985498,
		-0.893515, -0.417513, -0.165269,
		0.428852, -0.902555, -0.038466,
		32.906181, 38.183022, 42.628304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178577, 38.322681, 43.017929>,  <32.605988, 38.814812, 42.655228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178577, 38.322681, 43.017929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544216, 38.161575, 43.036724>,  <32.763599, 38.064911, 43.048000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544216, 38.161575, 43.036724>,  <32.178577, 38.322681, 43.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544216, 38.161575, 43.036724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106840, -0.127434, 0.986076,
		-0.391168, -0.906389, -0.159519,
		0.914097, -0.402764, 0.046991,
		32.818447, 38.040745, 43.050823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110802, 37.776806, 43.493050>,  <32.178577, 38.322681, 43.017929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110802, 37.776806, 43.493050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507427, 37.817307, 43.460682>,  <32.745403, 37.841606, 43.441261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507427, 37.817307, 43.460682>,  <32.110802, 37.776806, 43.493050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507427, 37.817307, 43.460682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101000, -0.212263, 0.971979,
		0.081239, -0.971953, -0.220698,
		0.991564, 0.101253, -0.080923,
		32.804897, 37.847683, 43.436405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528526, 37.151966, 43.905750>,  <32.110802, 37.776806, 43.493050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528526, 37.151966, 43.905750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797623, 37.447338, 43.887230>,  <32.959080, 37.624561, 43.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797623, 37.447338, 43.887230>,  <32.528526, 37.151966, 43.905750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797623, 37.447338, 43.887230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085983, -0.015876, 0.996170,
		0.734864, -0.674146, -0.074173,
		0.672741, 0.738427, -0.046298,
		32.999447, 37.668865, 43.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998859, 36.985664, 44.516914>,  <32.528526, 37.151966, 43.905750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998859, 36.985664, 44.516914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097569, 37.358864, 44.412128>,  <33.156792, 37.582783, 44.349258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097569, 37.358864, 44.412128>,  <32.998859, 36.985664, 44.516914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097569, 37.358864, 44.412128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265559, 0.194868, 0.944195,
		0.931978, -0.302564, -0.199678,
		0.246769, 0.932996, -0.261961,
		33.171600, 37.638763, 44.333542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710632, 37.095707, 44.689907>,  <32.998859, 36.985664, 44.516914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710632, 37.095707, 44.689907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518078, 37.445866, 44.672268>,  <33.402546, 37.655960, 44.661686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518078, 37.445866, 44.672268>,  <33.710632, 37.095707, 44.689907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518078, 37.445866, 44.672268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464832, 0.297613, 0.833881,
		0.743103, 0.380920, -0.550180,
		-0.481383, 0.875401, -0.044094,
		33.373665, 37.708485, 44.659039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203373, 37.621529, 44.910118>,  <33.710632, 37.095707, 44.689907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203373, 37.621529, 44.910118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843632, 37.795464, 44.928375>,  <33.627789, 37.899822, 44.939331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843632, 37.795464, 44.928375>,  <34.203373, 37.621529, 44.910118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843632, 37.795464, 44.928375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228635, 0.378744, 0.896816,
		0.372681, 0.816989, -0.440043,
		-0.899352, 0.434835, 0.045641,
		33.573826, 37.925915, 44.942066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356010, 38.207645, 45.244789>,  <34.203373, 37.621529, 44.910118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356010, 38.207645, 45.244789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969666, 38.159492, 45.336548>,  <33.737858, 38.130600, 45.391602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969666, 38.159492, 45.336548>,  <34.356010, 38.207645, 45.244789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969666, 38.159492, 45.336548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137718, 0.511389, 0.848243,
		-0.219426, 0.850875, -0.477350,
		-0.965860, -0.120387, 0.229393,
		33.679909, 38.123375, 45.405365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214722, 38.850376, 45.545712>,  <34.356010, 38.207645, 45.244789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214722, 38.850376, 45.545712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911388, 38.609554, 45.645683>,  <33.729389, 38.465061, 45.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911388, 38.609554, 45.645683>,  <34.214722, 38.850376, 45.545712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911388, 38.609554, 45.645683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055407, 0.441543, 0.895528,
		-0.649511, 0.665259, -0.368194,
		-0.758331, -0.602055, 0.249927,
		33.683887, 38.428936, 45.720661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637924, 39.265564, 45.692070>,  <34.214722, 38.850376, 45.545712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637924, 39.265564, 45.692070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593052, 38.933064, 45.909855>,  <33.566128, 38.733562, 46.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593052, 38.933064, 45.909855>,  <33.637924, 39.265564, 45.692070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593052, 38.933064, 45.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010003, 0.548834, 0.835872,
		-0.993637, 0.088325, -0.069886,
		-0.112184, -0.831252, 0.544458,
		33.559395, 38.683689, 46.073193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220623, 39.449463, 46.253464>,  <33.637924, 39.265564, 45.692070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220623, 39.449463, 46.253464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355282, 39.095753, 46.382912>,  <33.436077, 38.883526, 46.460579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355282, 39.095753, 46.382912>,  <33.220623, 39.449463, 46.253464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355282, 39.095753, 46.382912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051439, 0.360439, 0.931363,
		-0.940224, -0.296896, 0.166828,
		0.336650, -0.884271, 0.323621,
		33.456276, 38.830471, 46.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724037, 39.200211, 46.840286>,  <33.220623, 39.449463, 46.253464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724037, 39.200211, 46.840286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081390, 39.022446, 46.866726>,  <33.295803, 38.915787, 46.882591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081390, 39.022446, 46.866726>,  <32.724037, 39.200211, 46.840286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081390, 39.022446, 46.866726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091411, 0.323817, 0.941693,
		-0.439907, -0.835247, 0.329916,
		0.893379, -0.444415, 0.066099,
		33.349403, 38.889122, 46.886555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741913, 38.775711, 47.515869>,  <32.724037, 39.200211, 46.840286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741913, 38.775711, 47.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119759, 38.823090, 47.393448>,  <33.346466, 38.851517, 47.319996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119759, 38.823090, 47.393448>,  <32.741913, 38.775711, 47.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119759, 38.823090, 47.393448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251914, 0.336006, 0.907546,
		0.210328, -0.934383, 0.287560,
		0.944617, 0.118442, -0.306056,
		33.403145, 38.858624, 47.301632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109901, 38.378716, 47.951336>,  <32.741913, 38.775711, 47.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109901, 38.378716, 47.951336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412125, 38.611187, 47.830429>,  <33.593460, 38.750671, 47.757885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412125, 38.611187, 47.830429>,  <33.109901, 38.378716, 47.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412125, 38.611187, 47.830429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217075, 0.213224, 0.952583,
		0.618070, -0.785346, 0.034944,
		0.755558, 0.581178, -0.302267,
		33.638790, 38.785542, 47.739750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719845, 38.164669, 48.336117>,  <33.109901, 38.378716, 47.951336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719845, 38.164669, 48.336117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808537, 38.534870, 48.213291>,  <33.861752, 38.756989, 48.139595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808537, 38.534870, 48.213291>,  <33.719845, 38.164669, 48.336117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808537, 38.534870, 48.213291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419012, 0.193916, 0.887031,
		0.880492, -0.325340, -0.344800,
		0.221725, 0.925500, -0.307063,
		33.875053, 38.812519, 48.121174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502876, 38.298470, 48.428032>,  <33.719845, 38.164669, 48.336117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502876, 38.298470, 48.428032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321480, 38.654766, 48.415901>,  <34.212643, 38.868546, 48.408623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321480, 38.654766, 48.415901>,  <34.502876, 38.298470, 48.428032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321480, 38.654766, 48.415901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372133, 0.220157, 0.901692,
		0.809853, 0.397624, -0.431315,
		-0.453492, 0.890745, -0.030326,
		34.185432, 38.921989, 48.406803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968601, 38.783245, 48.796627>,  <34.502876, 38.298470, 48.428032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968601, 38.783245, 48.796627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640961, 39.012558, 48.804859>,  <34.444378, 39.150146, 48.809799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640961, 39.012558, 48.804859>,  <34.968601, 38.783245, 48.796627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640961, 39.012558, 48.804859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271768, 0.356198, 0.894016,
		0.505193, 0.737881, -0.447562,
		-0.819098, 0.573284, 0.020583,
		34.395229, 39.184544, 48.811035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188107, 39.387112, 48.949127>,  <34.968601, 38.783245, 48.796627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188107, 39.387112, 48.949127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799828, 39.423653, 49.038029>,  <34.566860, 39.445576, 49.091370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799828, 39.423653, 49.038029>,  <35.188107, 39.387112, 48.949127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799828, 39.423653, 49.038029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240004, 0.414079, 0.878030,
		-0.011824, 0.905646, -0.423870,
		-0.970700, 0.091348, 0.222254,
		34.508617, 39.451057, 49.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023232, 40.117298, 49.135639>,  <35.188107, 39.387112, 48.949127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023232, 40.117298, 49.135639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744190, 39.889412, 49.309433>,  <34.576767, 39.752682, 49.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744190, 39.889412, 49.309433>,  <35.023232, 40.117298, 49.135639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744190, 39.889412, 49.309433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222290, 0.404396, 0.887159,
		-0.681131, 0.715466, -0.155466,
		-0.697602, -0.569713, 0.434487,
		34.534908, 39.718498, 49.439777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642330, 40.577805, 49.519363>,  <35.023232, 40.117298, 49.135639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642330, 40.577805, 49.519363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578510, 40.223560, 49.693825>,  <34.540218, 40.011013, 49.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578510, 40.223560, 49.693825>,  <34.642330, 40.577805, 49.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578510, 40.223560, 49.693825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019778, 0.444597, 0.895512,
		-0.986992, 0.134253, -0.088452,
		-0.159551, -0.885613, 0.436158,
		34.530643, 39.957878, 49.824673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220932, 40.762287, 50.034592>,  <34.642330, 40.577805, 49.519363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220932, 40.762287, 50.034592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353065, 40.401215, 50.144901>,  <34.432346, 40.184570, 50.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353065, 40.401215, 50.144901>,  <34.220932, 40.762287, 50.034592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353065, 40.401215, 50.144901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187558, 0.349127, 0.918114,
		-0.925041, -0.251562, 0.284633,
		0.330336, -0.902678, 0.275774,
		34.452168, 40.130413, 50.227634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818481, 40.384487, 50.657135>,  <34.220932, 40.762287, 50.034592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818481, 40.384487, 50.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207344, 40.295811, 50.626781>,  <34.440662, 40.242607, 50.608570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207344, 40.295811, 50.626781>,  <33.818481, 40.384487, 50.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207344, 40.295811, 50.626781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166686, 0.426690, 0.888905,
		-0.164681, -0.876806, 0.451764,
		0.972160, -0.221689, -0.075884,
		34.498993, 40.229305, 50.604015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001595, 39.892265, 51.172054>,  <33.818481, 40.384487, 50.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001595, 39.892265, 51.172054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329998, 40.109497, 51.101612>,  <34.527039, 40.239838, 51.059349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329998, 40.109497, 51.101612>,  <34.001595, 39.892265, 51.172054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329998, 40.109497, 51.101612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012828, 0.290826, 0.956690,
		0.570776, -0.787707, 0.231803,
		0.821006, 0.543082, -0.176102,
		34.576302, 40.272423, 51.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693127, 39.573315, 51.440056>,  <34.001595, 39.892265, 51.172054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693127, 39.573315, 51.440056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658863, 39.971516, 51.423916>,  <34.638306, 40.210438, 51.414230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658863, 39.971516, 51.423916>,  <34.693127, 39.573315, 51.440056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658863, 39.971516, 51.423916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115925, 0.050183, 0.991990,
		0.989558, 0.080295, -0.119703,
		-0.085659, 0.995507, -0.040351,
		34.633163, 40.270168, 51.411812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225948, 40.054619, 51.778252>,  <34.693127, 39.573315, 51.440056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225948, 40.054619, 51.778252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889442, 40.267139, 51.818253>,  <34.687538, 40.394650, 51.842251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889442, 40.267139, 51.818253>,  <35.225948, 40.054619, 51.778252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889442, 40.267139, 51.818253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104189, -0.022170, 0.994310,
		0.530491, 0.846896, -0.036704,
		-0.841263, 0.531297, 0.099998,
		34.637062, 40.426529, 51.848251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423019, 40.698475, 52.099117>,  <35.225948, 40.054619, 51.778252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423019, 40.698475, 52.099117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049366, 40.577335, 52.174675>,  <34.825172, 40.504654, 52.220009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049366, 40.577335, 52.174675>,  <35.423019, 40.698475, 52.099117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049366, 40.577335, 52.174675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140592, 0.174229, 0.974617,
		-0.328068, 0.936979, -0.120176,
		-0.934133, -0.302845, 0.188891,
		34.769127, 40.486481, 52.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833130, 40.902046, 52.705658>,  <35.423019, 40.698475, 52.099117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833130, 40.902046, 52.705658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544991, 40.633007, 52.637875>,  <35.372108, 40.471584, 52.597206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544991, 40.633007, 52.637875>,  <35.833130, 40.902046, 52.705658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544991, 40.633007, 52.637875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652241, -0.573735, -0.495388,
		0.235971, -0.467379, 0.851983,
		-0.720346, -0.672596, -0.169459,
		35.328888, 40.431229, 52.587036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175983, 40.307972, 52.836018>,  <35.833130, 40.902046, 52.705658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175983, 40.307972, 52.836018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864048, 40.282726, 52.586903>,  <35.676888, 40.267578, 52.437435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864048, 40.282726, 52.586903>,  <36.175983, 40.307972, 52.836018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864048, 40.282726, 52.586903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540144, -0.570677, -0.618524,
		-0.316373, -0.818745, 0.479128,
		-0.779841, -0.063114, -0.622787,
		35.630096, 40.263794, 52.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111809, 39.747013, 52.284767>,  <36.175983, 40.307972, 52.836018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111809, 39.747013, 52.284767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945347, 39.594116, 51.954750>,  <35.845470, 39.502377, 51.756741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945347, 39.594116, 51.954750>,  <36.111809, 39.747013, 52.284767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945347, 39.594116, 51.954750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157607, -0.923938, 0.348565,
		-0.895529, 0.015024, 0.444748,
		-0.416157, -0.382246, -0.825046,
		35.820499, 39.479443, 51.707237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496529, 39.187355, 52.461975>,  <36.111809, 39.747013, 52.284767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496529, 39.187355, 52.461975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700821, 39.140862, 52.121239>,  <35.823399, 39.112965, 51.916798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700821, 39.140862, 52.121239>,  <35.496529, 39.187355, 52.461975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700821, 39.140862, 52.121239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258239, -0.924325, 0.280957,
		-0.820038, -0.363474, -0.442069,
		0.510735, -0.116236, -0.851844,
		35.854042, 39.105991, 51.865685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520775, 38.527035, 52.207043>,  <35.496529, 39.187355, 52.461975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520775, 38.527035, 52.207043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794090, 38.622318, 51.930962>,  <35.958080, 38.679489, 51.765312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794090, 38.622318, 51.930962>,  <35.520775, 38.527035, 52.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794090, 38.622318, 51.930962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285762, -0.957126, -0.047429,
		-0.671908, -0.164826, -0.722061,
		0.683286, 0.238206, -0.690202,
		35.999077, 38.693779, 51.723900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450619, 38.029236, 51.616898>,  <35.520775, 38.527035, 52.207043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450619, 38.029236, 51.616898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815002, 38.187080, 51.664955>,  <36.033634, 38.281788, 51.693790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815002, 38.187080, 51.664955>,  <35.450619, 38.029236, 51.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815002, 38.187080, 51.664955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404189, -0.912072, -0.068960,
		0.082364, 0.111379, -0.990359,
		0.910960, 0.394612, 0.120140,
		36.088291, 38.305466, 51.700996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761204, 37.721546, 51.689339>,  <35.450619, 38.029236, 51.616898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761204, 37.721546, 51.689339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978092, 37.930176, 51.425838>,  <35.108227, 38.055355, 51.267738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978092, 37.930176, 51.425838>,  <34.761204, 37.721546, 51.689339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978092, 37.930176, 51.425838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077683, -0.749530, -0.657396,
		-0.836636, 0.407629, -0.365894,
		0.542223, 0.521578, -0.658750,
		35.140759, 38.086651, 51.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325855, 37.697620, 51.084019>,  <34.761204, 37.721546, 51.689339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325855, 37.697620, 51.084019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704731, 37.788521, 50.993519>,  <34.932056, 37.843060, 50.939220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704731, 37.788521, 50.993519>,  <34.325855, 37.697620, 51.084019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704731, 37.788521, 50.993519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044692, -0.605112, -0.794885,
		-0.317545, 0.763018, -0.562999,
		0.947190, 0.227250, -0.226251,
		34.988888, 37.856697, 50.925644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256943, 37.815922, 50.398331>,  <34.325855, 37.697620, 51.084019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256943, 37.815922, 50.398331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644939, 37.732521, 50.448372>,  <34.877735, 37.682480, 50.478397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644939, 37.732521, 50.448372>,  <34.256943, 37.815922, 50.398331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644939, 37.732521, 50.448372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012317, -0.471701, -0.881673,
		0.242840, 0.856753, -0.454976,
		0.969988, -0.208501, 0.125100,
		34.935936, 37.669971, 50.485901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541161, 37.860359, 49.726467>,  <34.256943, 37.815922, 50.398331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541161, 37.860359, 49.726467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822109, 37.661644, 49.930378>,  <34.990681, 37.542416, 50.052723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822109, 37.661644, 49.930378>,  <34.541161, 37.860359, 49.726467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822109, 37.661644, 49.930378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137318, -0.608156, -0.781851,
		0.698436, 0.619155, -0.358936,
		0.702376, -0.496784, 0.509778,
		35.032822, 37.512608, 50.083313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156185, 37.764290, 49.314220>,  <34.541161, 37.860359, 49.726467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156185, 37.764290, 49.314220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191643, 37.458607, 49.569759>,  <35.212917, 37.275196, 49.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191643, 37.458607, 49.569759>,  <35.156185, 37.764290, 49.314220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191643, 37.458607, 49.569759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416175, -0.554290, -0.720806,
		0.904953, 0.329769, 0.268908,
		0.088646, -0.764209, 0.638848,
		35.218235, 37.229343, 49.761414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809364, 37.427670, 49.196468>,  <35.156185, 37.764290, 49.314220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809364, 37.427670, 49.196468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594543, 37.158131, 49.399448>,  <35.465649, 36.996407, 49.521236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594543, 37.158131, 49.399448>,  <35.809364, 37.427670, 49.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594543, 37.158131, 49.399448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287805, -0.711845, -0.640660,
		0.792931, -0.198023, 0.576236,
		-0.537056, -0.673843, 0.507452,
		35.433426, 36.955978, 49.551685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230373, 36.885624, 49.358124>,  <35.809364, 37.427670, 49.196468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230373, 36.885624, 49.358124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864456, 36.728764, 49.396851>,  <35.644905, 36.634647, 49.420086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864456, 36.728764, 49.396851>,  <36.230373, 36.885624, 49.358124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864456, 36.728764, 49.396851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177358, -0.605314, -0.775976,
		0.362903, -0.692686, 0.623288,
		-0.914793, -0.392149, 0.096817,
		35.590019, 36.611118, 49.425896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406742, 36.277184, 49.248413>,  <36.230373, 36.885624, 49.358124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406742, 36.277184, 49.248413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014282, 36.300343, 49.174664>,  <35.778805, 36.314240, 49.130413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014282, 36.300343, 49.174664>,  <36.406742, 36.277184, 49.248413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014282, 36.300343, 49.174664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107971, -0.627022, -0.771482,
		-0.160270, -0.776847, 0.608952,
		-0.981150, 0.057896, -0.184370,
		35.719936, 36.317711, 49.119354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161472, 35.573318, 49.237354>,  <36.406742, 36.277184, 49.248413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161472, 35.573318, 49.237354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870708, 35.797848, 49.079105>,  <35.696251, 35.932564, 48.984158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870708, 35.797848, 49.079105>,  <36.161472, 35.573318, 49.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870708, 35.797848, 49.079105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014084, -0.563786, -0.825801,
		-0.686584, -0.605858, 0.401919,
		-0.726914, 0.561321, -0.395619,
		35.652634, 35.966244, 48.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689957, 35.126945, 49.018051>,  <36.161472, 35.573318, 49.237354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689957, 35.126945, 49.018051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589050, 35.461800, 48.823914>,  <35.528507, 35.662712, 48.707432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589050, 35.461800, 48.823914>,  <35.689957, 35.126945, 49.018051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589050, 35.461800, 48.823914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093283, -0.520269, -0.848893,
		-0.963150, -0.168875, 0.209339,
		-0.252270, 0.837139, -0.485344,
		35.513371, 35.712940, 48.678310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118347, 34.975742, 48.492519>,  <35.689957, 35.126945, 49.018051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118347, 34.975742, 48.492519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279129, 35.315010, 48.354515>,  <35.375599, 35.518570, 48.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279129, 35.315010, 48.354515>,  <35.118347, 34.975742, 48.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279129, 35.315010, 48.354515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065789, -0.349067, -0.934785,
		-0.913293, 0.398441, -0.084509,
		0.401956, 0.848173, -0.345014,
		35.399715, 35.569462, 48.251011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702080, 35.214554, 47.913311>,  <35.118347, 34.975742, 48.492519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702080, 35.214554, 47.913311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040150, 35.417187, 47.845127>,  <35.242992, 35.538765, 47.804214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040150, 35.417187, 47.845127>,  <34.702080, 35.214554, 47.913311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040150, 35.417187, 47.845127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138435, -0.100573, -0.985252,
		-0.516257, 0.856305, -0.014872,
		0.845172, 0.506584, -0.170464,
		35.293701, 35.569160, 47.793987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507912, 35.699799, 47.443916>,  <34.702080, 35.214554, 47.913311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507912, 35.699799, 47.443916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902317, 35.651386, 47.398071>,  <35.138958, 35.622337, 47.370564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902317, 35.651386, 47.398071>,  <34.507912, 35.699799, 47.443916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902317, 35.651386, 47.398071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129519, -0.123517, -0.983854,
		0.104920, 0.984934, -0.137464,
		0.986010, -0.121030, -0.114609,
		35.198120, 35.615078, 47.363689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645229, 36.066673, 46.891174>,  <34.507912, 35.699799, 47.443916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645229, 36.066673, 46.891174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958763, 35.821819, 46.932934>,  <35.146885, 35.674908, 46.957989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958763, 35.821819, 46.932934>,  <34.645229, 36.066673, 46.891174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958763, 35.821819, 46.932934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088874, -0.276971, -0.956759,
		0.614577, 0.740663, -0.271502,
		0.783835, -0.612131, 0.104395,
		35.193913, 35.638180, 46.964252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996227, 36.177670, 46.396461>,  <34.645229, 36.066673, 46.891174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996227, 36.177670, 46.396461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124008, 35.813614, 46.501980>,  <35.200676, 35.595181, 46.565289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124008, 35.813614, 46.501980>,  <34.996227, 36.177670, 46.396461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124008, 35.813614, 46.501980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370676, -0.376219, -0.849151,
		0.872093, 0.173486, -0.457554,
		0.319456, -0.910144, 0.263791,
		35.219845, 35.540569, 46.581116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373028, 35.883347, 45.817844>,  <34.996227, 36.177670, 46.396461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373028, 35.883347, 45.817844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273117, 35.567379, 46.041859>,  <35.213169, 35.377800, 46.176266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273117, 35.567379, 46.041859>,  <35.373028, 35.883347, 45.817844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273117, 35.567379, 46.041859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278915, -0.495163, -0.822812,
		0.927263, -0.361723, -0.096640,
		-0.249778, -0.789918, 0.560036,
		35.198185, 35.330402, 46.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614857, 35.360073, 45.420998>,  <35.373028, 35.883347, 45.817844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614857, 35.360073, 45.420998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339951, 35.214104, 45.672234>,  <35.175007, 35.126522, 45.822975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339951, 35.214104, 45.672234>,  <35.614857, 35.360073, 45.420998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339951, 35.214104, 45.672234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444353, -0.472808, -0.760922,
		0.574644, -0.802050, 0.162790,
		-0.687266, -0.364923, 0.628089,
		35.133770, 35.104626, 45.860661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546223, 34.804386, 45.251514>,  <35.614857, 35.360073, 45.420998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546223, 34.804386, 45.251514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186832, 34.792072, 45.426693>,  <34.971199, 34.784683, 45.531799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186832, 34.792072, 45.426693>,  <35.546223, 34.804386, 45.251514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186832, 34.792072, 45.426693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360196, -0.518641, -0.775416,
		0.251010, -0.854438, 0.454896,
		-0.898472, -0.030786, 0.437949,
		34.917290, 34.782837, 45.558079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291569, 34.131630, 45.190987>,  <35.546223, 34.804386, 45.251514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291569, 34.131630, 45.190987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953640, 34.327225, 45.277855>,  <34.750881, 34.444580, 45.329975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953640, 34.327225, 45.277855>,  <35.291569, 34.131630, 45.190987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953640, 34.327225, 45.277855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517038, -0.641719, -0.566453,
		-0.137626, -0.590839, 0.794965,
		-0.844826, 0.488986, 0.217169,
		34.700191, 34.473919, 45.343006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663574, 33.540218, 45.376541>,  <35.291569, 34.131630, 45.190987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663574, 33.540218, 45.376541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539619, 33.899670, 45.252327>,  <34.465248, 34.115341, 45.177799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539619, 33.899670, 45.252327>,  <34.663574, 33.540218, 45.376541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539619, 33.899670, 45.252327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506490, -0.432439, -0.745965,
		-0.804636, -0.073878, 0.589154,
		-0.309884, 0.898631, -0.310538,
		34.446655, 34.169258, 45.159164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988174, 33.426868, 45.143822>,  <34.663574, 33.540218, 45.376541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988174, 33.426868, 45.143822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052505, 33.792545, 44.995022>,  <34.091103, 34.011951, 44.905743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052505, 33.792545, 44.995022>,  <33.988174, 33.426868, 45.143822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052505, 33.792545, 44.995022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396746, -0.285231, -0.872488,
		-0.903730, 0.287907, 0.316831,
		0.160826, 0.914195, -0.371998,
		34.100754, 34.066803, 44.883423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407013, 33.576099, 44.817703>,  <33.988174, 33.426868, 45.143822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407013, 33.576099, 44.817703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663757, 33.829197, 44.644428>,  <33.817806, 33.981056, 44.540462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663757, 33.829197, 44.644428>,  <33.407013, 33.576099, 44.817703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663757, 33.829197, 44.644428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571484, 0.018053, -0.820415,
		-0.511288, 0.774154, 0.373189,
		0.641865, 0.632740, -0.433186,
		33.856316, 34.019020, 44.514473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950806, 34.094372, 44.511868>,  <33.407013, 33.576099, 44.817703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950806, 34.094372, 44.511868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305073, 34.092487, 44.326153>,  <33.517635, 34.091354, 44.214722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305073, 34.092487, 44.326153>,  <32.950806, 34.094372, 44.511868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305073, 34.092487, 44.326153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463106, 0.063134, -0.884051,
		0.033481, 0.997994, 0.053732,
		0.885670, -0.004715, -0.464291,
		33.570774, 34.091072, 44.186867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942646, 34.648666, 43.904076>,  <32.950806, 34.094372, 44.511868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942646, 34.648666, 43.904076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241890, 34.398998, 43.813965>,  <33.421436, 34.249199, 43.759899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241890, 34.398998, 43.813965>,  <32.942646, 34.648666, 43.904076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241890, 34.398998, 43.813965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374158, -0.116388, -0.920033,
		0.548034, 0.772574, -0.320607,
		0.748108, -0.624166, -0.225280,
		33.466324, 34.211750, 43.746380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093670, 34.852886, 43.265152>,  <32.942646, 34.648666, 43.904076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093670, 34.852886, 43.265152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260166, 34.489624, 43.282990>,  <33.360065, 34.271667, 43.293694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260166, 34.489624, 43.282990>,  <33.093670, 34.852886, 43.265152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260166, 34.489624, 43.282990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276979, -0.173359, -0.945108,
		0.866039, 0.381044, -0.323701,
		0.416245, -0.908159, 0.044595,
		33.385040, 34.217178, 43.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647701, 34.709290, 42.701992>,  <33.093670, 34.852886, 43.265152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647701, 34.709290, 42.701992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497204, 34.353481, 42.805676>,  <33.406906, 34.139996, 42.867886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497204, 34.353481, 42.805676>,  <33.647701, 34.709290, 42.701992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497204, 34.353481, 42.805676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377933, -0.108088, -0.919502,
		0.845937, -0.443916, -0.295513,
		-0.376241, -0.889525, 0.259206,
		33.384331, 34.086624, 42.883438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814827, 34.281437, 42.106773>,  <33.647701, 34.709290, 42.701992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814827, 34.281437, 42.106773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544262, 34.071754, 42.313721>,  <33.381924, 33.945946, 42.437889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544262, 34.071754, 42.313721>,  <33.814827, 34.281437, 42.106773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544262, 34.071754, 42.313721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426056, -0.294499, -0.855422,
		0.600781, -0.799049, -0.024136,
		-0.676416, -0.524205, 0.517369,
		33.341335, 33.914494, 42.468933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817589, 33.789547, 41.732933>,  <33.814827, 34.281437, 42.106773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817589, 33.789547, 41.732933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482811, 33.768974, 41.950882>,  <33.281944, 33.756630, 42.081650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482811, 33.768974, 41.950882>,  <33.817589, 33.789547, 41.732933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482811, 33.768974, 41.950882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522075, -0.223700, -0.823041,
		0.164220, -0.973300, 0.160371,
		-0.836940, -0.051434, 0.544872,
		33.231728, 33.753544, 42.114342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506756, 33.004841, 41.635086>,  <33.817589, 33.789547, 41.732933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506756, 33.004841, 41.635086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202282, 33.231812, 41.760700>,  <33.019596, 33.367992, 41.836067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202282, 33.231812, 41.760700>,  <33.506756, 33.004841, 41.635086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202282, 33.231812, 41.760700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530027, -0.265265, -0.805423,
		-0.373717, -0.779526, 0.502668,
		-0.761188, 0.567428, 0.314036,
		32.973927, 33.402039, 41.854912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998169, 32.538006, 41.650291>,  <33.506756, 33.004841, 41.635086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998169, 32.538006, 41.650291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840618, 32.904034, 41.615635>,  <32.746086, 33.123650, 41.594841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840618, 32.904034, 41.615635>,  <32.998169, 32.538006, 41.650291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840618, 32.904034, 41.615635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563765, -0.314956, -0.763526,
		-0.725969, -0.251889, 0.639938,
		-0.393876, 0.915071, -0.086642,
		32.722454, 33.178555, 41.589642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322052, 32.400398, 41.509754>,  <32.998169, 32.538006, 41.650291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322052, 32.400398, 41.509754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381470, 32.780090, 41.398834>,  <32.417122, 33.007904, 41.332283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381470, 32.780090, 41.398834>,  <32.322052, 32.400398, 41.509754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381470, 32.780090, 41.398834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406619, -0.196978, -0.892110,
		-0.901441, 0.245274, 0.356715,
		0.148546, 0.949232, -0.277297,
		32.426033, 33.064861, 41.315643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672729, 32.551823, 41.139713>,  <32.322052, 32.400398, 41.509754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672729, 32.551823, 41.139713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954229, 32.814323, 41.030853>,  <32.123131, 32.971825, 40.965538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954229, 32.814323, 41.030853>,  <31.672729, 32.551823, 41.139713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954229, 32.814323, 41.030853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313667, -0.056701, -0.947838,
		-0.637456, 0.752404, 0.165943,
		0.703749, 0.656256, -0.272149,
		32.165356, 33.011200, 40.949207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311460, 32.941296, 40.752235>,  <31.672729, 32.551823, 41.139713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311460, 32.941296, 40.752235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700983, 32.983486, 40.671658>,  <31.934696, 33.008801, 40.623310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700983, 32.983486, 40.671658>,  <31.311460, 32.941296, 40.752235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700983, 32.983486, 40.671658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208861, 0.064699, -0.975803,
		-0.089888, 0.992315, 0.085033,
		0.973806, 0.105473, -0.201440,
		31.993124, 33.015129, 40.611225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248348, 33.250153, 40.127525>,  <31.311460, 32.941296, 40.752235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248348, 33.250153, 40.127525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637680, 33.158401, 40.129158>,  <31.871279, 33.103352, 40.130138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637680, 33.158401, 40.129158>,  <31.248348, 33.250153, 40.127525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637680, 33.158401, 40.129158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015067, -0.081655, -0.996547,
		0.228915, 0.969907, -0.082933,
		0.973330, -0.229374, 0.004079,
		31.929680, 33.089588, 40.130383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453512, 33.479591, 39.498150>,  <31.248348, 33.250153, 40.127525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453512, 33.479591, 39.498150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777647, 33.263233, 39.588291>,  <31.972128, 33.133419, 39.642376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777647, 33.263233, 39.588291>,  <31.453512, 33.479591, 39.498150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777647, 33.263233, 39.588291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243508, -0.038960, -0.969116,
		0.532970, 0.840187, 0.100142,
		0.810337, -0.540895, 0.225357,
		32.020748, 33.100964, 39.655899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104324, 33.715549, 39.136333>,  <31.453512, 33.479591, 39.498150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104324, 33.715549, 39.136333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159824, 33.330444, 39.229153>,  <32.193123, 33.099380, 39.284843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159824, 33.330444, 39.229153>,  <32.104324, 33.715549, 39.136333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159824, 33.330444, 39.229153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189086, -0.204245, -0.960485,
		0.972108, 0.177144, 0.153705,
		0.138751, -0.962759, 0.232043,
		32.201450, 33.041618, 39.298767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676632, 33.553040, 38.807270>,  <32.104324, 33.715549, 39.136333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676632, 33.553040, 38.807270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483753, 33.208004, 38.868488>,  <32.368027, 33.000980, 38.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483753, 33.208004, 38.868488>,  <32.676632, 33.553040, 38.807270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483753, 33.208004, 38.868488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215895, -0.286310, -0.933496,
		0.849046, -0.417083, 0.324287,
		-0.482193, -0.862593, 0.153044,
		32.339096, 32.949226, 38.914402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969547, 33.091881, 38.358604>,  <32.676632, 33.553040, 38.807270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969547, 33.091881, 38.358604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631268, 32.888702, 38.424076>,  <32.428299, 32.766796, 38.463360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631268, 32.888702, 38.424076>,  <32.969547, 33.091881, 38.358604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631268, 32.888702, 38.424076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013488, -0.286263, -0.958056,
		0.533496, -0.812431, 0.235240,
		-0.845695, -0.507946, 0.163678,
		32.377560, 32.736320, 38.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495499, 32.636269, 38.605057>,  <32.969547, 33.091881, 38.358604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495499, 32.636269, 38.605057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494465, 32.239269, 38.556152>,  <33.493843, 32.001072, 38.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494465, 32.239269, 38.556152>,  <33.495499, 32.636269, 38.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494465, 32.239269, 38.556152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635081, -0.096067, 0.766449,
		-0.772442, -0.075660, 0.630563,
		-0.002587, -0.992495, -0.122257,
		33.493690, 31.941521, 38.519474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424530, 32.411068, 39.240894>,  <33.495499, 32.636269, 38.605057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424530, 32.411068, 39.240894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582489, 32.117943, 39.019249>,  <33.677265, 31.942068, 38.886261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582489, 32.117943, 39.019249>,  <33.424530, 32.411068, 39.240894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582489, 32.117943, 39.019249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580676, -0.268303, 0.768654,
		-0.711951, -0.625298, 0.319576,
		0.394895, -0.732813, -0.554115,
		33.700958, 31.898098, 38.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316059, 31.857859, 39.607979>,  <33.424530, 32.411068, 39.240894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316059, 31.857859, 39.607979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649097, 31.867678, 39.386642>,  <33.848919, 31.873569, 39.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649097, 31.867678, 39.386642>,  <33.316059, 31.857859, 39.607979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649097, 31.867678, 39.386642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553879, -0.031642, 0.831995,
		0.002917, -0.999197, -0.039943,
		0.832592, 0.024551, -0.553343,
		33.898876, 31.875042, 39.220638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771027, 31.205158, 39.673302>,  <33.316059, 31.857859, 39.607979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771027, 31.205158, 39.673302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991467, 31.524317, 39.575607>,  <34.123730, 31.715811, 39.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991467, 31.524317, 39.575607>,  <33.771027, 31.205158, 39.673302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991467, 31.524317, 39.575607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601542, -0.177037, 0.778977,
		0.578304, -0.576212, -0.577533,
		0.551101, 0.797896, -0.244234,
		34.156796, 31.763685, 39.502338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433136, 30.960978, 39.900631>,  <33.771027, 31.205158, 39.673302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433136, 30.960978, 39.900631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508232, 31.348637, 39.836746>,  <34.553291, 31.581232, 39.798416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508232, 31.348637, 39.836746>,  <34.433136, 30.960978, 39.900631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508232, 31.348637, 39.836746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727714, -0.028034, 0.685307,
		0.659685, -0.244889, -0.710524,
		0.187743, 0.969146, -0.159715,
		34.564556, 31.639380, 39.788830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122211, 30.980734, 39.981331>,  <34.433136, 30.960978, 39.900631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122211, 30.980734, 39.981331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008808, 31.361435, 40.028301>,  <34.940765, 31.589855, 40.056484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008808, 31.361435, 40.028301>,  <35.122211, 30.980734, 39.981331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008808, 31.361435, 40.028301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659064, 0.104429, 0.744801,
		0.696605, 0.288545, -0.656874,
		-0.283505, 0.951754, 0.117424,
		34.923756, 31.646961, 40.063530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776611, 31.340078, 40.110165>,  <35.122211, 30.980734, 39.981331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776611, 31.340078, 40.110165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493637, 31.580605, 40.258732>,  <35.323853, 31.724920, 40.347874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493637, 31.580605, 40.258732>,  <35.776611, 31.340078, 40.110165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493637, 31.580605, 40.258732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595904, 0.224889, 0.770924,
		0.380038, 0.766712, -0.517420,
		-0.707439, 0.601313, 0.371420,
		35.281406, 31.760998, 40.370159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148491, 31.884745, 40.400982>,  <35.776611, 31.340078, 40.110165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148491, 31.884745, 40.400982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779026, 31.892853, 40.554054>,  <35.557346, 31.897717, 40.645897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779026, 31.892853, 40.554054>,  <36.148491, 31.884745, 40.400982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779026, 31.892853, 40.554054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368668, 0.319545, 0.872912,
		-0.104590, 0.947354, -0.302623,
		-0.923658, 0.020269, 0.382680,
		35.501930, 31.898933, 40.668858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070930, 32.607403, 40.705345>,  <36.148491, 31.884745, 40.400982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070930, 32.607403, 40.705345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825569, 32.345493, 40.881981>,  <35.678352, 32.188347, 40.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825569, 32.345493, 40.881981>,  <36.070930, 32.607403, 40.705345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825569, 32.345493, 40.881981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403432, 0.220902, 0.887944,
		-0.678953, 0.722821, 0.128655,
		-0.613404, -0.654776, 0.441591,
		35.641548, 32.149059, 41.014458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889854, 32.920429, 41.371368>,  <36.070930, 32.607403, 40.705345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889854, 32.920429, 41.371368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779285, 32.542278, 41.440479>,  <35.712944, 32.315388, 41.481945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779285, 32.542278, 41.440479>,  <35.889854, 32.920429, 41.371368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779285, 32.542278, 41.440479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120579, 0.144244, 0.982168,
		-0.953443, 0.292322, 0.074121,
		-0.276418, -0.945379, 0.172776,
		35.696362, 32.258663, 41.492313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545044, 32.994579, 41.884537>,  <35.889854, 32.920429, 41.371368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545044, 32.994579, 41.884537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669270, 32.615582, 41.915001>,  <35.743805, 32.388184, 41.933277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669270, 32.615582, 41.915001>,  <35.545044, 32.994579, 41.884537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669270, 32.615582, 41.915001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239758, 0.155611, 0.958280,
		-0.919820, -0.279344, 0.275497,
		0.310560, -0.947498, 0.076159,
		35.762436, 32.331333, 41.937847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300594, 32.761189, 42.483227>,  <35.545044, 32.994579, 41.884537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300594, 32.761189, 42.483227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602360, 32.508842, 42.410702>,  <35.783417, 32.357433, 42.367188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602360, 32.508842, 42.410702>,  <35.300594, 32.761189, 42.483227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602360, 32.508842, 42.410702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223181, -0.013236, 0.974687,
		-0.617295, -0.775780, 0.130812,
		0.754411, -0.630864, -0.181310,
		35.828682, 32.319584, 42.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243969, 32.296261, 43.088238>,  <35.300594, 32.761189, 42.483227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243969, 32.296261, 43.088238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605457, 32.223305, 42.933308>,  <35.822350, 32.179531, 42.840351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605457, 32.223305, 42.933308>,  <35.243969, 32.296261, 43.088238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605457, 32.223305, 42.933308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399164, 0.031903, 0.916324,
		-0.154769, -0.982709, 0.101634,
		0.903723, -0.182387, -0.387325,
		35.876575, 32.168591, 42.817112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461720, 31.861618, 43.587898>,  <35.243969, 32.296261, 43.088238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461720, 31.861618, 43.587898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792454, 31.983398, 43.398731>,  <35.990894, 32.056465, 43.285229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792454, 31.983398, 43.398731>,  <35.461720, 31.861618, 43.587898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792454, 31.983398, 43.398731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500495, -0.014638, 0.865616,
		0.256617, -0.952415, -0.164481,
		0.826833, 0.304453, -0.472922,
		36.040504, 32.074734, 43.256855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979897, 31.492033, 43.858082>,  <35.461720, 31.861618, 43.587898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979897, 31.492033, 43.858082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160877, 31.817337, 43.711716>,  <36.269466, 32.012520, 43.623894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160877, 31.817337, 43.711716>,  <35.979897, 31.492033, 43.858082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160877, 31.817337, 43.711716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545725, 0.072028, 0.834863,
		0.705317, -0.577425, -0.411227,
		0.452451, 0.813260, -0.365919,
		36.296612, 32.061314, 43.601940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702972, 31.337467, 44.027855>,  <35.979897, 31.492033, 43.858082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702972, 31.337467, 44.027855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679272, 31.731169, 43.961235>,  <36.665051, 31.967390, 43.921265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679272, 31.731169, 43.961235>,  <36.702972, 31.337467, 44.027855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679272, 31.731169, 43.961235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361688, 0.176671, 0.915406,
		0.930414, -0.006001, -0.366460,
		-0.059249, 0.984252, -0.166548,
		36.661495, 32.026443, 43.911270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394436, 31.596622, 44.337223>,  <36.702972, 31.337467, 44.027855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394436, 31.596622, 44.337223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142666, 31.907433, 44.340145>,  <36.991604, 32.093918, 44.341896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142666, 31.907433, 44.340145>,  <37.394436, 31.596622, 44.337223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142666, 31.907433, 44.340145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266667, 0.207167, 0.941260,
		0.729868, 0.594404, -0.337604,
		-0.629429, 0.777024, 0.007304,
		36.953838, 32.140541, 44.342335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714375, 32.182652, 44.650829>,  <37.394436, 31.596622, 44.337223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714375, 32.182652, 44.650829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324837, 32.269657, 44.677097>,  <37.091114, 32.321861, 44.692860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324837, 32.269657, 44.677097>,  <37.714375, 32.182652, 44.650829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324837, 32.269657, 44.677097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139577, 0.344642, 0.928300,
		0.179282, 0.913188, -0.365988,
		-0.973846, 0.217511, 0.065672,
		37.032684, 32.334911, 44.696800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591751, 32.955078, 44.683117>,  <37.714375, 32.182652, 44.650829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591751, 32.955078, 44.683117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286243, 32.769073, 44.862190>,  <37.102940, 32.657471, 44.969635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286243, 32.769073, 44.862190>,  <37.591751, 32.955078, 44.683117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286243, 32.769073, 44.862190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201818, 0.486760, 0.849903,
		-0.613126, 0.739482, -0.277926,
		-0.763771, -0.465007, 0.447686,
		37.057114, 32.629570, 44.996494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454361, 33.369514, 45.187252>,  <37.591751, 32.955078, 44.683117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454361, 33.369514, 45.187252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201843, 33.079029, 45.296124>,  <37.050335, 32.904736, 45.361446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201843, 33.079029, 45.296124>,  <37.454361, 33.369514, 45.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201843, 33.079029, 45.296124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003648, 0.348169, 0.937425,
		-0.775538, 0.592780, -0.217147,
		-0.631290, -0.726216, 0.272181,
		37.012455, 32.861164, 45.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865784, 33.647423, 45.615246>,  <37.454361, 33.369514, 45.187252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865784, 33.647423, 45.615246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903740, 33.259872, 45.706699>,  <36.926514, 33.027344, 45.761570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903740, 33.259872, 45.706699>,  <36.865784, 33.647423, 45.615246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903740, 33.259872, 45.706699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134218, 0.240023, 0.961444,
		-0.986398, -0.060545, 0.152817,
		0.094890, -0.968877, 0.228632,
		36.932205, 32.969208, 45.775288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388599, 33.529469, 46.062325>,  <36.865784, 33.647423, 45.615246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388599, 33.529469, 46.062325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661747, 33.243389, 46.121902>,  <36.825638, 33.071743, 46.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661747, 33.243389, 46.121902>,  <36.388599, 33.529469, 46.062325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661747, 33.243389, 46.121902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173099, 0.356485, 0.918126,
		-0.709736, -0.601178, 0.367233,
		0.682870, -0.715194, 0.148946,
		36.866608, 33.028831, 46.166588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153973, 33.201313, 46.660126>,  <36.388599, 33.529469, 46.062325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153973, 33.201313, 46.660126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542770, 33.115002, 46.622894>,  <36.776051, 33.063217, 46.600555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542770, 33.115002, 46.622894>,  <36.153973, 33.201313, 46.660126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542770, 33.115002, 46.622894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183913, 0.451932, 0.872888,
		-0.146285, -0.865562, 0.478960,
		0.971997, -0.215777, -0.093077,
		36.834370, 33.050270, 46.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456932, 33.036697, 47.328152>,  <36.153973, 33.201313, 46.660126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456932, 33.036697, 47.328152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776371, 33.130981, 47.106636>,  <36.968037, 33.187550, 46.973728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776371, 33.130981, 47.106636>,  <36.456932, 33.036697, 47.328152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776371, 33.130981, 47.106636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313522, 0.622498, 0.717077,
		0.513750, -0.746282, 0.423229,
		0.798602, 0.235707, -0.553785,
		37.015953, 33.201694, 46.940502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750923, 33.442513, 47.744320>,  <36.456932, 33.036697, 47.328152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750923, 33.442513, 47.744320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976513, 33.490623, 47.417526>,  <37.111866, 33.519489, 47.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976513, 33.490623, 47.417526>,  <36.750923, 33.442513, 47.744320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976513, 33.490623, 47.417526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432302, 0.799940, 0.416187,
		0.703595, -0.587904, 0.399153,
		0.563977, 0.120273, -0.816985,
		37.145706, 33.526707, 47.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421967, 33.501465, 47.979679>,  <36.750923, 33.442513, 47.744320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421967, 33.501465, 47.979679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439758, 33.675861, 47.620140>,  <37.450432, 33.780499, 47.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439758, 33.675861, 47.620140>,  <37.421967, 33.501465, 47.979679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439758, 33.675861, 47.620140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556793, 0.736220, 0.384659,
		0.829460, -0.517582, -0.210013,
		0.044477, 0.435993, -0.898850,
		37.453102, 33.806660, 47.350487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118668, 33.568493, 47.647087>,  <37.421967, 33.501465, 47.979679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118668, 33.568493, 47.647087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863468, 33.857109, 47.539505>,  <37.710346, 34.030277, 47.474957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863468, 33.857109, 47.539505>,  <38.118668, 33.568493, 47.647087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863468, 33.857109, 47.539505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607710, 0.686302, 0.399597,
		0.472909, 0.091496, -0.876348,
		-0.638001, 0.721539, -0.268955,
		37.672070, 34.073570, 47.458820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446957, 34.065628, 47.358040>,  <38.118668, 33.568493, 47.647087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446957, 34.065628, 47.358040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128113, 34.275101, 47.478294>,  <37.936806, 34.400784, 47.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128113, 34.275101, 47.478294>,  <38.446957, 34.065628, 47.358040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128113, 34.275101, 47.478294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603677, 0.679553, 0.416871,
		0.014009, 0.513777, -0.857809,
		-0.797106, 0.523680, 0.300636,
		37.888981, 34.432205, 47.568485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717583, 34.675625, 47.231796>,  <38.446957, 34.065628, 47.358040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717583, 34.675625, 47.231796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382175, 34.769344, 47.428566>,  <38.180931, 34.825577, 47.546627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382175, 34.769344, 47.428566>,  <38.717583, 34.675625, 47.231796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382175, 34.769344, 47.428566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460461, 0.787396, 0.409857,
		-0.291309, 0.570184, -0.768133,
		-0.838519, 0.234301, 0.491924,
		38.130619, 34.839634, 47.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590614, 35.470085, 47.156834>,  <38.717583, 34.675625, 47.231796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590614, 35.470085, 47.156834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398262, 35.334034, 47.480083>,  <38.282848, 35.252403, 47.674034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398262, 35.334034, 47.480083>,  <38.590614, 35.470085, 47.156834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398262, 35.334034, 47.480083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380731, 0.749255, 0.541905,
		-0.789806, 0.568272, -0.230810,
		-0.480885, -0.340124, 0.808125,
		38.253998, 35.231998, 47.722523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294033, 36.032879, 47.538773>,  <38.590614, 35.470085, 47.156834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294033, 36.032879, 47.538773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301838, 35.749294, 47.820763>,  <38.306522, 35.579144, 47.989956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301838, 35.749294, 47.820763>,  <38.294033, 36.032879, 47.538773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301838, 35.749294, 47.820763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300988, 0.676562, 0.672063,
		-0.953428, 0.199075, 0.226592,
		0.019512, -0.708966, 0.704973,
		38.307693, 35.536606, 48.032253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074364, 36.452332, 48.129776>,  <38.294033, 36.032879, 47.538773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074364, 36.452332, 48.129776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242336, 36.111328, 48.254284>,  <38.343121, 35.906727, 48.328987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242336, 36.111328, 48.254284>,  <38.074364, 36.452332, 48.129776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242336, 36.111328, 48.254284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240492, 0.435243, 0.867598,
		-0.875111, -0.289476, 0.387794,
		0.419934, -0.852506, 0.311269,
		38.368317, 35.855576, 48.347664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895462, 36.517651, 48.796726>,  <38.074364, 36.452332, 48.129776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895462, 36.517651, 48.796726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194767, 36.253719, 48.769215>,  <38.374352, 36.095360, 48.752708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194767, 36.253719, 48.769215>,  <37.895462, 36.517651, 48.796726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194767, 36.253719, 48.769215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426442, 0.398991, 0.811760,
		-0.508178, -0.636741, 0.579928,
		0.748266, -0.659824, -0.068774,
		38.419247, 36.055771, 48.748581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086071, 36.379005, 49.433525>,  <37.895462, 36.517651, 48.796726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086071, 36.379005, 49.433525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417656, 36.253822, 49.248104>,  <38.616608, 36.178711, 49.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417656, 36.253822, 49.248104>,  <38.086071, 36.379005, 49.433525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417656, 36.253822, 49.248104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558785, 0.427506, 0.710632,
		-0.024227, -0.848112, 0.529263,
		0.828958, -0.312961, -0.463555,
		38.666344, 36.159935, 49.109039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433735, 36.011654, 49.972656>,  <38.086071, 36.379005, 49.433525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433735, 36.011654, 49.972656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697796, 36.126003, 49.694817>,  <38.856232, 36.194611, 49.528111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697796, 36.126003, 49.694817>,  <38.433735, 36.011654, 49.972656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697796, 36.126003, 49.694817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622004, 0.310347, 0.718885,
		0.421075, -0.906622, 0.027066,
		0.660157, 0.285869, -0.694601,
		38.895844, 36.211765, 49.486435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099186, 35.885639, 50.295147>,  <38.433735, 36.011654, 49.972656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099186, 35.885639, 50.295147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159462, 36.158077, 50.008537>,  <39.195625, 36.321541, 49.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159462, 36.158077, 50.008537>,  <39.099186, 35.885639, 50.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159462, 36.158077, 50.008537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499316, 0.573113, 0.649788,
		0.853215, -0.455685, -0.253722,
		0.150688, 0.681097, -0.716520,
		39.204670, 36.362408, 49.793583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683079, 36.188377, 50.464138>,  <39.099186, 35.885639, 50.295147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683079, 36.188377, 50.464138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551762, 36.469513, 50.211712>,  <39.472973, 36.638195, 50.060257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551762, 36.469513, 50.211712>,  <39.683079, 36.188377, 50.464138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551762, 36.469513, 50.211712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281986, 0.710551, 0.644671,
		0.901502, 0.033690, -0.431460,
		-0.328294, 0.702838, -0.631064,
		39.453274, 36.680363, 50.022392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229183, 36.726341, 50.392914>,  <39.683079, 36.188377, 50.464138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229183, 36.726341, 50.392914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872120, 36.889526, 50.316265>,  <39.657883, 36.987438, 50.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872120, 36.889526, 50.316265>,  <40.229183, 36.726341, 50.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872120, 36.889526, 50.316265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150047, 0.669868, 0.727161,
		0.425018, 0.620357, -0.659180,
		-0.892662, 0.407964, -0.191623,
		39.604321, 37.011917, 50.258778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240009, 37.503078, 50.117065>,  <40.229183, 36.726341, 50.392914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240009, 37.503078, 50.117065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931503, 37.375362, 50.337318>,  <39.746399, 37.298733, 50.469471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931503, 37.375362, 50.337318>,  <40.240009, 37.503078, 50.117065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931503, 37.375362, 50.337318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297183, 0.584366, 0.755115,
		-0.562876, 0.746035, -0.355813,
		-0.771267, -0.319295, 0.550634,
		39.700123, 37.279575, 50.502510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090679, 38.264267, 49.911404>,  <40.240009, 37.503078, 50.117065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090679, 38.264267, 49.911404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221184, 38.593403, 49.725288>,  <40.299488, 38.790882, 49.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221184, 38.593403, 49.725288>,  <40.090679, 38.264267, 49.911404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221184, 38.593403, 49.725288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172299, -0.432208, -0.885161,
		-0.929443, 0.368964, 0.000761,
		0.326264, 0.822838, -0.465285,
		40.319061, 38.840256, 49.585705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768612, 38.233089, 49.351761>,  <40.090679, 38.264267, 49.911404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768612, 38.233089, 49.351761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062271, 38.484131, 49.248116>,  <40.238468, 38.634758, 49.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062271, 38.484131, 49.248116>,  <39.768612, 38.233089, 49.351761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062271, 38.484131, 49.248116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073191, -0.306239, -0.949137,
		-0.675032, 0.715772, -0.178890,
		0.734149, 0.627605, -0.259109,
		40.282516, 38.672413, 49.170383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497890, 38.684727, 48.844456>,  <39.768612, 38.233089, 49.351761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497890, 38.684727, 48.844456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892593, 38.640419, 48.797047>,  <40.129414, 38.613834, 48.768600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892593, 38.640419, 48.797047>,  <39.497890, 38.684727, 48.844456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892593, 38.640419, 48.797047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146338, -0.292477, -0.945009,
		0.070015, 0.949835, -0.304813,
		0.986754, -0.110771, -0.118519,
		40.188618, 38.607189, 48.761490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506657, 38.917282, 48.165977>,  <39.497890, 38.684727, 48.844456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506657, 38.917282, 48.165977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856697, 38.735527, 48.232586>,  <40.066723, 38.626472, 48.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856697, 38.735527, 48.232586>,  <39.506657, 38.917282, 48.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856697, 38.735527, 48.232586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119507, -0.536339, -0.835499,
		0.468955, 0.711244, -0.523653,
		0.875100, -0.454391, 0.166521,
		40.119228, 38.599209, 48.282543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807095, 39.031094, 47.530785>,  <39.506657, 38.917282, 48.165977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807095, 39.031094, 47.530785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014408, 38.737289, 47.706001>,  <40.138798, 38.561008, 47.811131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014408, 38.737289, 47.706001>,  <39.807095, 39.031094, 47.530785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014408, 38.737289, 47.706001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034093, -0.529542, -0.847599,
		0.854529, 0.424362, -0.299494,
		0.518283, -0.734508, 0.438041,
		40.169891, 38.516937, 47.837414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288441, 38.953800, 47.083176>,  <39.807095, 39.031094, 47.530785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288441, 38.953800, 47.083176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345013, 38.614758, 47.287750>,  <40.378956, 38.411331, 47.410496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345013, 38.614758, 47.287750>,  <40.288441, 38.953800, 47.083176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345013, 38.614758, 47.287750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084289, -0.525062, -0.846880,
		0.986354, 0.076665, -0.145702,
		0.141429, -0.847604, 0.511435,
		40.387440, 38.360477, 47.441181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887028, 38.622211, 46.759289>,  <40.288441, 38.953800, 47.083176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887028, 38.622211, 46.759289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679474, 38.349770, 46.965923>,  <40.554943, 38.186306, 47.089905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679474, 38.349770, 46.965923>,  <40.887028, 38.622211, 46.759289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679474, 38.349770, 46.965923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211893, -0.482965, -0.849615,
		0.828169, -0.550309, 0.106280,
		-0.518881, -0.681105, 0.516583,
		40.523811, 38.145439, 47.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231987, 37.980766, 46.713310>,  <40.887028, 38.622211, 46.759289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231987, 37.980766, 46.713310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859081, 37.877541, 46.814735>,  <40.635338, 37.815605, 46.875591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859081, 37.877541, 46.814735>,  <41.231987, 37.980766, 46.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859081, 37.877541, 46.814735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045354, -0.611969, -0.789580,
		0.358933, -0.747595, 0.558810,
		-0.932261, -0.258062, 0.253562,
		40.579403, 37.800121, 46.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261597, 37.380920, 46.391125>,  <41.231987, 37.980766, 46.713310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261597, 37.380920, 46.391125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880932, 37.499737, 46.422390>,  <40.652534, 37.571026, 46.441151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880932, 37.499737, 46.422390>,  <41.261597, 37.380920, 46.391125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880932, 37.499737, 46.422390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269874, -0.687108, -0.674574,
		-0.146670, -0.663060, 0.734057,
		-0.951659, 0.297043, 0.078164,
		40.595432, 37.588848, 46.445839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887047, 36.822998, 46.512253>,  <41.261597, 37.380920, 46.391125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887047, 36.822998, 46.512253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605312, 37.073719, 46.378967>,  <40.436272, 37.224152, 46.298996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605312, 37.073719, 46.378967>,  <40.887047, 36.822998, 46.512253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605312, 37.073719, 46.378967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296936, -0.686509, -0.663728,
		-0.644774, -0.368550, 0.669655,
		-0.704341, 0.626799, -0.333207,
		40.394012, 37.261761, 46.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263969, 36.426464, 46.567272>,  <40.887047, 36.822998, 46.512253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263969, 36.426464, 46.567272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181377, 36.713856, 46.301594>,  <40.131824, 36.886292, 46.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181377, 36.713856, 46.301594>,  <40.263969, 36.426464, 46.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181377, 36.713856, 46.301594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355883, -0.687479, -0.633025,
		-0.911436, 0.105673, 0.397641,
		-0.206477, 0.718475, -0.664200,
		40.119434, 36.929398, 46.102333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652935, 36.277390, 46.427235>,  <40.263969, 36.426464, 46.567272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652935, 36.277390, 46.427235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776577, 36.499199, 46.118179>,  <39.850761, 36.632282, 45.932747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776577, 36.499199, 46.118179>,  <39.652935, 36.277390, 46.427235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776577, 36.499199, 46.118179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364836, -0.681122, -0.634797,
		-0.878266, 0.478102, -0.008228,
		0.309102, 0.554519, -0.772635,
		39.869308, 36.665554, 45.886387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049175, 36.418568, 46.039452>,  <39.652935, 36.277390, 46.427235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049175, 36.418568, 46.039452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360287, 36.453651, 45.790497>,  <39.546955, 36.474701, 45.641125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360287, 36.453651, 45.790497>,  <39.049175, 36.418568, 46.039452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360287, 36.453651, 45.790497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505932, -0.500188, -0.702741,
		-0.372946, 0.861464, -0.344662,
		0.777782, 0.087708, -0.622385,
		39.593620, 36.479965, 45.603783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716061, 36.599716, 45.470711>,  <39.049175, 36.418568, 46.039452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716061, 36.599716, 45.470711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081558, 36.485554, 45.355045>,  <39.300858, 36.417057, 45.285645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081558, 36.485554, 45.355045>,  <38.716061, 36.599716, 45.470711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081558, 36.485554, 45.355045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403244, -0.549968, -0.731389,
		0.049713, 0.784905, -0.617619,
		0.913741, -0.285411, -0.289168,
		39.355682, 36.399929, 45.268295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716602, 36.696674, 44.836628>,  <38.716061, 36.599716, 45.470711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716602, 36.696674, 44.836628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035301, 36.456703, 44.865669>,  <39.226521, 36.312721, 44.883095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035301, 36.456703, 44.865669>,  <38.716602, 36.696674, 44.836628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035301, 36.456703, 44.865669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402967, -0.616978, -0.675985,
		0.450343, 0.509332, -0.733329,
		0.796749, -0.599933, 0.072608,
		39.274326, 36.276722, 44.887451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066349, 36.665218, 44.154488>,  <38.716602, 36.696674, 44.836628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066349, 36.665218, 44.154488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147633, 36.332764, 44.361530>,  <39.196404, 36.133289, 44.485756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147633, 36.332764, 44.361530>,  <39.066349, 36.665218, 44.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147633, 36.332764, 44.361530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308341, -0.556063, -0.771829,
		0.929318, -0.002760, -0.369269,
		0.203207, -0.831135, 0.517610,
		39.208595, 36.083424, 44.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354500, 36.190041, 43.627174>,  <39.066349, 36.665218, 44.154488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354500, 36.190041, 43.627174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261120, 35.954468, 43.936668>,  <39.205090, 35.813126, 44.122364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261120, 35.954468, 43.936668>,  <39.354500, 36.190041, 43.627174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261120, 35.954468, 43.936668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363546, -0.685149, -0.631194,
		0.901850, -0.428641, -0.054153,
		-0.233453, -0.588930, 0.773732,
		39.191082, 35.777790, 44.168789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441776, 35.540298, 43.431572>,  <39.354500, 36.190041, 43.627174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441776, 35.540298, 43.431572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216583, 35.456577, 43.751381>,  <39.081467, 35.406345, 43.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216583, 35.456577, 43.751381>,  <39.441776, 35.540298, 43.431572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216583, 35.456577, 43.751381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556608, -0.619087, -0.554002,
		0.610932, -0.756916, 0.232034,
		-0.562983, -0.209305, 0.799526,
		39.047688, 35.393787, 43.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396133, 34.741379, 43.600967>,  <39.441776, 35.540298, 43.431572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396133, 34.741379, 43.600967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078434, 34.916691, 43.769291>,  <38.887814, 35.021877, 43.870285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078434, 34.916691, 43.769291>,  <39.396133, 34.741379, 43.600967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078434, 34.916691, 43.769291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603170, -0.652178, -0.459184,
		0.073190, -0.618525, 0.782349,
		-0.794248, 0.438282, 0.420808,
		38.840160, 35.048176, 43.895535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116154, 34.227242, 43.964165>,  <39.396133, 34.741379, 43.600967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116154, 34.227242, 43.964165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837395, 34.491737, 43.853104>,  <38.670139, 34.650436, 43.786469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837395, 34.491737, 43.853104>,  <39.116154, 34.227242, 43.964165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837395, 34.491737, 43.853104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440675, -0.700267, -0.561633,
		-0.565804, -0.269049, 0.779409,
		-0.696901, 0.661240, -0.277651,
		38.628323, 34.690109, 43.769810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500332, 33.901897, 44.188938>,  <39.116154, 34.227242, 43.964165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500332, 33.901897, 44.188938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425053, 34.162979, 43.895393>,  <38.379887, 34.319630, 43.719265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425053, 34.162979, 43.895393>,  <38.500332, 33.901897, 44.188938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425053, 34.162979, 43.895393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562914, -0.683990, -0.463988,
		-0.804804, 0.325781, 0.496143,
		-0.188198, 0.652705, -0.733865,
		38.368591, 34.358791, 43.675236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738979, 33.803631, 43.981205>,  <38.500332, 33.901897, 44.188938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738979, 33.803631, 43.981205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906082, 33.997433, 43.673767>,  <38.006344, 34.113712, 43.489304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906082, 33.997433, 43.673767>,  <37.738979, 33.803631, 43.981205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906082, 33.997433, 43.673767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451801, -0.623158, -0.638396,
		-0.788258, 0.613948, -0.041434,
		0.417762, 0.484501, -0.768592,
		38.031410, 34.142784, 43.443188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202686, 33.824951, 43.376320>,  <37.738979, 33.803631, 43.981205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202686, 33.824951, 43.376320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544842, 33.928226, 43.196701>,  <37.750137, 33.990192, 43.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544842, 33.928226, 43.196701>,  <37.202686, 33.824951, 43.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544842, 33.928226, 43.196701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130200, -0.731913, -0.668843,
		-0.501351, 0.630589, -0.592456,
		0.855392, 0.258187, -0.449048,
		37.801460, 34.005684, 43.061985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061604, 33.911316, 42.665268>,  <37.202686, 33.824951, 43.376320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061604, 33.911316, 42.665268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453152, 33.830215, 42.654598>,  <37.688080, 33.781555, 42.648197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453152, 33.830215, 42.654598>,  <37.061604, 33.911316, 42.665268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453152, 33.830215, 42.654598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160729, -0.682141, -0.713337,
		0.126434, 0.702550, -0.700313,
		0.978867, -0.202751, -0.026674,
		37.746811, 33.769390, 42.646595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310978, 34.103180, 41.998131>,  <37.061604, 33.911316, 42.665268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310978, 34.103180, 41.998131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598465, 33.863392, 42.139030>,  <37.770958, 33.719517, 42.223568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598465, 33.863392, 42.139030>,  <37.310978, 34.103180, 41.998131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598465, 33.863392, 42.139030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153611, -0.357188, -0.921314,
		0.678122, 0.716273, -0.164631,
		0.718717, -0.599475, 0.352245,
		37.814079, 33.683548, 42.244705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960808, 34.157040, 41.569149>,  <37.310978, 34.103180, 41.998131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960808, 34.157040, 41.569149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966663, 33.803711, 41.756565>,  <37.970177, 33.591713, 41.869015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966663, 33.803711, 41.756565>,  <37.960808, 34.157040, 41.569149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966663, 33.803711, 41.756565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261095, -0.448957, -0.854557,
		0.965202, 0.134847, 0.224056,
		0.014643, -0.883320, 0.468542,
		37.971058, 33.538715, 41.897129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575645, 33.778160, 41.367928>,  <37.960808, 34.157040, 41.569149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575645, 33.778160, 41.367928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324844, 33.489239, 41.484646>,  <38.174366, 33.315884, 41.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324844, 33.489239, 41.484646>,  <38.575645, 33.778160, 41.367928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324844, 33.489239, 41.484646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085881, -0.436374, -0.895657,
		0.774272, -0.536516, 0.335639,
		-0.626998, -0.722308, 0.291796,
		38.136745, 33.272545, 41.572186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016460, 33.198757, 41.287071>,  <38.575645, 33.778160, 41.367928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016460, 33.198757, 41.287071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632820, 33.086197, 41.299389>,  <38.402637, 33.018661, 41.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632820, 33.086197, 41.299389>,  <39.016460, 33.198757, 41.287071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632820, 33.086197, 41.299389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078225, -0.368021, -0.926521,
		0.272055, -0.886214, 0.374980,
		-0.959097, -0.281398, 0.030798,
		38.345093, 33.001778, 41.308628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040428, 32.573429, 41.036072>,  <39.016460, 33.198757, 41.287071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040428, 32.573429, 41.036072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653996, 32.666790, 40.991867>,  <38.422134, 32.722805, 40.965343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653996, 32.666790, 40.991867>,  <39.040428, 32.573429, 41.036072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653996, 32.666790, 40.991867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041860, -0.280734, -0.958872,
		-0.254830, -0.930973, 0.261441,
		-0.966079, 0.233406, -0.110510,
		38.364170, 32.736809, 40.958714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623604, 31.999319, 40.664150>,  <39.040428, 32.573429, 41.036072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623604, 31.999319, 40.664150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426323, 32.342873, 40.608910>,  <38.307957, 32.549004, 40.575768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426323, 32.342873, 40.608910>,  <38.623604, 31.999319, 40.664150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426323, 32.342873, 40.608910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004810, -0.156055, -0.987737,
		-0.869903, -0.487815, 0.072835,
		-0.493199, 0.858885, -0.138100,
		38.278362, 32.600536, 40.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078976, 31.901186, 40.166248>,  <38.623604, 31.999319, 40.664150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078976, 31.901186, 40.166248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130749, 32.297817, 40.167881>,  <38.161812, 32.535797, 40.168861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130749, 32.297817, 40.167881>,  <38.078976, 31.901186, 40.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130749, 32.297817, 40.167881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165700, -0.017574, -0.986020,
		-0.977645, 0.128302, -0.166579,
		0.129436, 0.991580, 0.004079,
		38.169579, 32.595291, 40.169106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583393, 32.164207, 39.702663>,  <38.078976, 31.901186, 40.166248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583393, 32.164207, 39.702663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867840, 32.443733, 39.733551>,  <38.038509, 32.611450, 39.752083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867840, 32.443733, 39.733551>,  <37.583393, 32.164207, 39.702663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867840, 32.443733, 39.733551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039137, 0.070315, -0.996757,
		-0.701981, 0.711835, 0.022653,
		0.711120, 0.698818, 0.077219,
		38.081177, 32.653378, 39.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297878, 32.629955, 39.315636>,  <37.583393, 32.164207, 39.702663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297878, 32.629955, 39.315636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691158, 32.700623, 39.333992>,  <37.927128, 32.743023, 39.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691158, 32.700623, 39.333992>,  <37.297878, 32.629955, 39.315636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691158, 32.700623, 39.333992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033955, 0.070003, -0.996969,
		-0.179348, 0.981777, 0.062828,
		0.983199, 0.176671, 0.045891,
		37.986118, 32.753624, 39.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517124, 33.253407, 38.839741>,  <37.297878, 32.629955, 39.315636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517124, 33.253407, 38.839741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872635, 33.077450, 38.891224>,  <38.085941, 32.971874, 38.922115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872635, 33.077450, 38.891224>,  <37.517124, 33.253407, 38.839741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872635, 33.077450, 38.891224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248928, 0.227483, -0.941428,
		0.384850, 0.868760, 0.311684,
		0.888778, -0.439895, 0.128712,
		38.139267, 32.945480, 38.929836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995697, 33.648277, 38.499310>,  <37.517124, 33.253407, 38.839741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995697, 33.648277, 38.499310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202435, 33.306519, 38.520767>,  <38.326477, 33.101463, 38.533642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202435, 33.306519, 38.520767>,  <37.995697, 33.648277, 38.499310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202435, 33.306519, 38.520767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355393, 0.157136, -0.921414,
		0.778822, 0.495296, 0.384862,
		0.516848, -0.854395, 0.053644,
		38.357491, 33.050201, 38.536861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584618, 33.837040, 38.162567>,  <37.995697, 33.648277, 38.499310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584618, 33.837040, 38.162567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575645, 33.437748, 38.140507>,  <38.570263, 33.198174, 38.127270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575645, 33.437748, 38.140507>,  <38.584618, 33.837040, 38.162567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575645, 33.437748, 38.140507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489131, 0.037156, -0.871419,
		0.871922, -0.046527, 0.487429,
		-0.022433, -0.998226, -0.055155,
		38.568916, 33.138279, 38.123959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311047, 33.603161, 38.034016>,  <38.584618, 33.837040, 38.162567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311047, 33.603161, 38.034016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064129, 33.313393, 37.911274>,  <38.915977, 33.139530, 37.837631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064129, 33.313393, 37.911274>,  <39.311047, 33.603161, 38.034016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064129, 33.313393, 37.911274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520883, -0.084032, -0.849482,
		0.589598, -0.684216, 0.429212,
		-0.617297, -0.724422, -0.306852,
		38.878941, 33.096066, 37.819218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702602, 33.217346, 37.620338>,  <39.311047, 33.603161, 38.034016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702602, 33.217346, 37.620338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358727, 33.039307, 37.520088>,  <39.152401, 32.932484, 37.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358727, 33.039307, 37.520088>,  <39.702602, 33.217346, 37.620338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358727, 33.039307, 37.520088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360048, -0.179967, -0.915411,
		0.362347, -0.877209, 0.314975,
		-0.859692, -0.445102, -0.250626,
		39.100819, 32.905777, 37.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866520, 32.570610, 37.344917>,  <39.702602, 33.217346, 37.620338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866520, 32.570610, 37.344917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513561, 32.676300, 37.189194>,  <39.301785, 32.739716, 37.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513561, 32.676300, 37.189194>,  <39.866520, 32.570610, 37.344917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513561, 32.676300, 37.189194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323739, -0.259452, -0.909878,
		-0.341420, -0.928907, 0.143399,
		-0.882398, 0.264227, -0.389305,
		39.248840, 32.755569, 37.072403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624588, 31.974930, 36.954990>,  <39.866520, 32.570610, 37.344917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624588, 31.974930, 36.954990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475636, 32.318867, 36.815273>,  <39.386265, 32.525230, 36.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475636, 32.318867, 36.815273>,  <39.624588, 31.974930, 36.954990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475636, 32.318867, 36.815273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419366, -0.179854, -0.889823,
		-0.827928, -0.477835, -0.293614,
		-0.372381, 0.859841, -0.349294,
		39.363922, 32.576820, 36.710484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387707, 31.767359, 36.330257>,  <39.624588, 31.974930, 36.954990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387707, 31.767359, 36.330257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467567, 32.158955, 36.313652>,  <39.515484, 32.393913, 36.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467567, 32.158955, 36.313652>,  <39.387707, 31.767359, 36.330257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467567, 32.158955, 36.313652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668023, -0.166987, -0.725163,
		-0.716858, 0.117044, -0.687325,
		0.199650, 0.978987, -0.041517,
		39.527462, 32.452652, 36.301197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525051, 31.913309, 35.701969>,  <39.387707, 31.767359, 36.330257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525051, 31.913309, 35.701969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722328, 32.183411, 35.921349>,  <39.840694, 32.345470, 36.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722328, 32.183411, 35.921349>,  <39.525051, 31.913309, 35.701969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722328, 32.183411, 35.921349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837520, -0.198105, -0.509229,
		-0.235208, 0.710485, -0.663241,
		0.493191, 0.675252, 0.548450,
		39.870285, 32.385986, 36.085884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903236, 32.481903, 35.331539>,  <39.525051, 31.913309, 35.701969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903236, 32.481903, 35.331539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102879, 32.438416, 35.675419>,  <40.222664, 32.412323, 35.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102879, 32.438416, 35.675419>,  <39.903236, 32.481903, 35.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102879, 32.438416, 35.675419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776472, -0.384322, -0.499388,
		0.384691, 0.916776, -0.107403,
		0.499104, -0.108715, 0.859696,
		40.252609, 32.405800, 35.933327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480106, 32.915939, 35.365505>,  <39.903236, 32.481903, 35.331539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480106, 32.915939, 35.365505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483643, 32.546566, 35.518967>,  <40.485764, 32.324944, 35.611046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483643, 32.546566, 35.518967>,  <40.480106, 32.915939, 35.365505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483643, 32.546566, 35.518967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796864, -0.225278, -0.560587,
		0.604094, 0.310677, 0.733860,
		0.008839, -0.923434, 0.383656,
		40.486294, 32.269535, 35.634064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192455, 32.647202, 35.589375>,  <40.480106, 32.915939, 35.365505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192455, 32.647202, 35.589375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998436, 32.299572, 35.550514>,  <40.882023, 32.090996, 35.527199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998436, 32.299572, 35.550514>,  <41.192455, 32.647202, 35.589375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998436, 32.299572, 35.550514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808623, -0.403443, -0.428210,
		0.332953, -0.286257, 0.898443,
		-0.485048, -0.869075, -0.097146,
		40.852921, 32.038849, 35.521370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647743, 32.150162, 35.867496>,  <41.192455, 32.647202, 35.589375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647743, 32.150162, 35.867496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416397, 32.008785, 35.573402>,  <41.277588, 31.923958, 35.396946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416397, 32.008785, 35.573402>,  <41.647743, 32.150162, 35.867496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416397, 32.008785, 35.573402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801885, -0.411946, -0.432760,
		-0.149920, -0.839867, 0.521678,
		-0.578364, -0.353446, -0.735235,
		41.242889, 31.902752, 35.352833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686165, 32.904015, 36.105877>,  <41.647743, 32.150162, 35.867496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686165, 32.904015, 36.105877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025314, 33.066994, 35.970173>,  <42.228806, 33.164780, 35.888752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025314, 33.066994, 35.970173>,  <41.686165, 32.904015, 36.105877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025314, 33.066994, 35.970173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420565, 0.127219, -0.898299,
		-0.322848, 0.904325, 0.279223,
		0.847876, 0.407445, -0.339255,
		42.279678, 33.189228, 35.868397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603184, 33.618294, 35.836422>,  <41.686165, 32.904015, 36.105877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603184, 33.618294, 35.836422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876907, 33.382389, 35.664886>,  <42.041142, 33.240845, 35.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876907, 33.382389, 35.664886>,  <41.603184, 33.618294, 35.836422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876907, 33.382389, 35.664886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389026, 0.202140, -0.898776,
		0.616753, 0.781866, -0.091109,
		0.684306, -0.589766, -0.428837,
		42.082199, 33.205460, 35.536236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832916, 34.015659, 35.278164>,  <41.603184, 33.618294, 35.836422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832916, 34.015659, 35.278164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928089, 33.634735, 35.201756>,  <41.985191, 33.406181, 35.155910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928089, 33.634735, 35.201756>,  <41.832916, 34.015659, 35.278164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928089, 33.634735, 35.201756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286795, 0.119014, -0.950571,
		0.927975, 0.280953, -0.244802,
		0.237931, -0.952314, -0.191018,
		41.999470, 33.349041, 35.144451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155148, 33.971207, 34.558102>,  <41.832916, 34.015659, 35.278164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155148, 33.971207, 34.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021873, 33.597481, 34.608780>,  <41.941910, 33.373245, 34.639187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021873, 33.597481, 34.608780>,  <42.155148, 33.971207, 34.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021873, 33.597481, 34.608780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354207, -0.000500, -0.935167,
		0.873800, -0.356458, -0.330773,
		-0.333183, -0.934311, 0.126697,
		41.921917, 33.317188, 34.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264557, 33.785866, 33.879135>,  <42.155148, 33.971207, 34.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264557, 33.785866, 33.879135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010139, 33.523941, 34.042435>,  <41.857491, 33.366787, 34.140415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010139, 33.523941, 34.042435>,  <42.264557, 33.785866, 33.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010139, 33.523941, 34.042435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305716, -0.271929, -0.912465,
		0.708509, -0.705177, -0.027229,
		-0.636045, -0.654814, 0.408248,
		41.819324, 33.327496, 34.164909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402740, 33.132412, 33.549149>,  <42.264557, 33.785866, 33.879135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402740, 33.132412, 33.549149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038353, 33.084488, 33.707020>,  <41.819721, 33.055733, 33.801743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038353, 33.084488, 33.707020>,  <42.402740, 33.132412, 33.549149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038353, 33.084488, 33.707020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365878, -0.207031, -0.907343,
		0.190423, -0.970970, 0.144763,
		-0.910973, -0.119814, 0.394681,
		41.765060, 33.048542, 33.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066490, 32.511845, 33.111580>,  <42.402740, 33.132412, 33.549149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066490, 32.511845, 33.111580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773880, 32.705128, 33.303989>,  <41.598316, 32.821098, 33.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773880, 32.705128, 33.303989>,  <42.066490, 32.511845, 33.111580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773880, 32.705128, 33.303989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584177, -0.080402, -0.807634,
		-0.351584, -0.871803, 0.341098,
		-0.731523, 0.483213, 0.481019,
		41.554424, 32.850090, 33.448296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477966, 32.061832, 33.048935>,  <42.066490, 32.511845, 33.111580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477966, 32.061832, 33.048935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346134, 32.432163, 33.122940>,  <41.267036, 32.654362, 33.167343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346134, 32.432163, 33.122940>,  <41.477966, 32.061832, 33.048935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346134, 32.432163, 33.122940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595181, -0.051625, -0.801931,
		-0.732895, -0.374416, 0.568047,
		-0.329581, 0.925822, 0.185009,
		41.247261, 32.709911, 33.178444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783890, 32.002747, 33.079140>,  <41.477966, 32.061832, 33.048935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783890, 32.002747, 33.079140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825886, 32.395653, 33.017006>,  <40.851082, 32.631397, 32.979725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825886, 32.395653, 33.017006>,  <40.783890, 32.002747, 33.079140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825886, 32.395653, 33.017006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692924, -0.039785, -0.719912,
		-0.713325, 0.183221, 0.676459,
		0.104990, 0.982266, -0.155338,
		40.857384, 32.690334, 32.970406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204212, 32.205444, 32.976837>,  <40.783890, 32.002747, 33.079140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204212, 32.205444, 32.976837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420429, 32.481564, 32.784466>,  <40.550159, 32.647236, 32.669041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420429, 32.481564, 32.784466>,  <40.204212, 32.205444, 32.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420429, 32.481564, 32.784466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591664, -0.094492, -0.800628,
		-0.598120, 0.717324, 0.357350,
		0.540543, 0.690303, -0.480933,
		40.582592, 32.688656, 32.640186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746586, 32.563313, 32.647709>,  <40.204212, 32.205444, 32.976837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746586, 32.563313, 32.647709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084949, 32.664555, 32.459934>,  <40.287968, 32.725300, 32.347271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084949, 32.664555, 32.459934>,  <39.746586, 32.563313, 32.647709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084949, 32.664555, 32.459934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482801, -0.010523, -0.875667,
		-0.226579, 0.967380, 0.113299,
		0.845911, 0.253109, -0.469436,
		40.338722, 32.740486, 32.319103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584072, 33.223881, 32.280697>,  <39.746586, 32.563313, 32.647709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584072, 33.223881, 32.280697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884689, 33.033268, 32.098225>,  <40.065060, 32.918900, 31.988741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884689, 33.033268, 32.098225>,  <39.584072, 33.223881, 32.280697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884689, 33.033268, 32.098225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497957, 0.043776, -0.866096,
		0.432695, 0.878065, -0.204395,
		0.751541, -0.476535, -0.456180,
		40.110153, 32.890308, 31.961370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666649, 33.545849, 31.678720>,  <39.584072, 33.223881, 32.280697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666649, 33.545849, 31.678720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863277, 33.202171, 31.621943>,  <39.981255, 32.995964, 31.587875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863277, 33.202171, 31.621943>,  <39.666649, 33.545849, 31.678720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863277, 33.202171, 31.621943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337115, -0.037464, -0.940718,
		0.802937, 0.510284, -0.308062,
		0.491574, -0.859190, -0.141943,
		40.010750, 32.944416, 31.579359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017765, 33.703163, 31.064194>,  <39.666649, 33.545849, 31.678720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017765, 33.703163, 31.064194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012310, 33.306736, 31.117268>,  <40.009037, 33.068882, 31.149111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012310, 33.306736, 31.117268>,  <40.017765, 33.703163, 31.064194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012310, 33.306736, 31.117268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111673, -0.130355, -0.985158,
		0.993652, -0.028254, -0.108897,
		-0.013639, -0.991065, 0.132683,
		40.008217, 33.009415, 31.157072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525604, 33.507149, 30.612223>,  <40.017765, 33.703163, 31.064194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525604, 33.507149, 30.612223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293453, 33.189354, 30.683718>,  <40.154163, 32.998676, 30.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293453, 33.189354, 30.683718>,  <40.525604, 33.507149, 30.612223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293453, 33.189354, 30.683718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127149, -0.128388, -0.983540,
		0.804359, -0.593553, -0.026505,
		-0.580380, -0.794488, 0.178739,
		40.119339, 32.951008, 30.737339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854168, 32.940586, 30.357874>,  <40.525604, 33.507149, 30.612223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854168, 32.940586, 30.357874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469814, 32.830109, 30.349590>,  <40.239204, 32.763824, 30.344620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469814, 32.830109, 30.349590>,  <40.854168, 32.940586, 30.357874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469814, 32.830109, 30.349590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030849, -0.032420, -0.998998,
		0.275242, -0.960556, 0.039671,
		-0.960880, -0.276190, -0.020709,
		40.181549, 32.747253, 30.343378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770123, 32.526825, 29.760221>,  <40.854168, 32.940586, 30.357874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770123, 32.526825, 29.760221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385540, 32.580185, 29.856392>,  <40.154789, 32.612202, 29.914095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385540, 32.580185, 29.856392>,  <40.770123, 32.526825, 29.760221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385540, 32.580185, 29.856392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248360, -0.046153, -0.967568,
		-0.117979, -0.989987, 0.077505,
		-0.961456, 0.133401, 0.240428,
		40.097103, 32.620205, 29.928520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436111, 32.024254, 29.292244>,  <40.770123, 32.526825, 29.760221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436111, 32.024254, 29.292244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157383, 32.286285, 29.409075>,  <39.990147, 32.443504, 29.479174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157383, 32.286285, 29.409075>,  <40.436111, 32.024254, 29.292244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157383, 32.286285, 29.409075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409887, -0.029531, -0.911658,
		-0.588583, -0.754983, 0.289086,
		-0.696823, 0.655079, 0.292077,
		39.948338, 32.482807, 29.496698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742882, 31.887125, 29.021387>,  <40.436111, 32.024254, 29.292244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742882, 31.887125, 29.021387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731831, 32.280655, 29.092178>,  <39.725201, 32.516773, 29.134653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731831, 32.280655, 29.092178>,  <39.742882, 31.887125, 29.021387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731831, 32.280655, 29.092178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255740, 0.164198, -0.952699,
		-0.966351, -0.071583, 0.247067,
		-0.027629, 0.983827, 0.176980,
		39.723541, 32.575802, 29.145273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180500, 32.078251, 28.778362>,  <39.742882, 31.887125, 29.021387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180500, 32.078251, 28.778362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392170, 32.417656, 28.777460>,  <39.519173, 32.621300, 28.776918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392170, 32.417656, 28.777460>,  <39.180500, 32.078251, 28.778362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392170, 32.417656, 28.777460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320643, 0.197509, -0.926379,
		-0.785596, 0.490941, 0.376585,
		0.529176, 0.848509, -0.002254,
		39.550922, 32.672207, 28.776783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744068, 32.644775, 28.468904>,  <39.180500, 32.078251, 28.778362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744068, 32.644775, 28.468904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118969, 32.777054, 28.424736>,  <39.343910, 32.856422, 28.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118969, 32.777054, 28.424736>,  <38.744068, 32.644775, 28.468904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118969, 32.777054, 28.424736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216015, 0.302206, -0.928445,
		-0.273664, 0.894042, 0.354680,
		0.937254, 0.330698, -0.110423,
		39.400146, 32.876263, 28.391609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689854, 33.218983, 28.173405>,  <38.744068, 32.644775, 28.468904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689854, 33.218983, 28.173405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082508, 33.192020, 28.102032>,  <39.318100, 33.175842, 28.059208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082508, 33.192020, 28.102032>,  <38.689854, 33.218983, 28.173405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082508, 33.192020, 28.102032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111053, 0.558610, -0.821962,
		0.155077, 0.826687, 0.540869,
		0.981641, -0.067402, -0.178433,
		39.376999, 33.171799, 28.048502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054615, 33.822014, 28.249374>,  <38.689854, 33.218983, 28.173405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054615, 33.822014, 28.249374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183716, 33.567944, 27.968695>,  <39.261177, 33.415501, 27.800287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183716, 33.567944, 27.968695>,  <39.054615, 33.822014, 28.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183716, 33.567944, 27.968695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411038, 0.573751, -0.708419,
		0.852573, 0.517067, -0.075904,
		0.322750, -0.635178, -0.701699,
		39.280540, 33.377392, 27.758184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527447, 34.128704, 27.790678>,  <39.054615, 33.822014, 28.249374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527447, 34.128704, 27.790678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282951, 33.840637, 27.659378>,  <39.136253, 33.667797, 27.580599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282951, 33.840637, 27.659378>,  <39.527447, 34.128704, 27.790678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282951, 33.840637, 27.659378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407582, 0.641946, -0.649448,
		0.678432, -0.263176, -0.685907,
		-0.611234, -0.720169, -0.328251,
		39.099579, 33.624588, 27.560904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557148, 33.995300, 27.017763>,  <39.527447, 34.128704, 27.790678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557148, 33.995300, 27.017763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206543, 33.889118, 27.178392>,  <38.996181, 33.825409, 27.274771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206543, 33.889118, 27.178392>,  <39.557148, 33.995300, 27.017763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206543, 33.889118, 27.178392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473202, 0.628255, -0.617555,
		-0.088359, -0.731320, -0.676286,
		-0.876512, -0.265453, 0.401575,
		38.943588, 33.809483, 27.298864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191261, 33.416759, 26.765942>,  <39.557148, 33.995300, 27.017763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191261, 33.416759, 26.765942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070133, 33.680458, 26.490639>,  <38.997456, 33.838676, 26.325457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070133, 33.680458, 26.490639>,  <39.191261, 33.416759, 26.765942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070133, 33.680458, 26.490639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916606, 0.003672, -0.399776,
		-0.261022, -0.751921, -0.605378,
		-0.302823, 0.659244, -0.688256,
		38.979286, 33.878231, 26.284163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601444, 33.196720, 26.119383>,  <39.191261, 33.416759, 26.765942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601444, 33.196720, 26.119383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563671, 33.585670, 26.033998>,  <39.541008, 33.819042, 25.982769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563671, 33.585670, 26.033998>,  <39.601444, 33.196720, 26.119383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563671, 33.585670, 26.033998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753862, -0.070196, -0.653272,
		-0.650211, -0.222610, -0.726409,
		-0.094434, 0.972377, -0.213460,
		39.535339, 33.877384, 25.969961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162304, 32.929043, 26.435356>,  <39.601444, 33.196720, 26.119383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162304, 32.929043, 26.435356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263538, 32.590130, 26.622149>,  <40.324280, 32.386784, 26.734224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263538, 32.590130, 26.622149>,  <40.162304, 32.929043, 26.435356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263538, 32.590130, 26.622149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956339, 0.146171, -0.253082,
		0.146171, 0.510641, 0.847278,
		0.253082, -0.847278, 0.466980,
		40.339462, 32.335945, 26.762243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667713, 33.076382, 27.016439>,  <40.162304, 32.929043, 26.435356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667713, 33.076382, 27.016439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726639, 32.717281, 26.850380>,  <40.761993, 32.501823, 26.750744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726639, 32.717281, 26.850380>,  <40.667713, 33.076382, 27.016439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726639, 32.717281, 26.850380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861978, 0.322372, -0.391242,
		0.485069, -0.300211, 0.821329,
		0.147318, -0.897747, -0.415148,
		40.770836, 32.447956, 26.725836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330788, 32.781670, 27.184000>,  <40.667713, 33.076382, 27.016439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330788, 32.781670, 27.184000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236435, 32.628822, 26.826599>,  <41.179825, 32.537113, 26.612158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236435, 32.628822, 26.826599>,  <41.330788, 32.781670, 27.184000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236435, 32.628822, 26.826599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945477, 0.122244, -0.301878,
		0.224579, -0.915992, 0.332450,
		-0.235878, -0.382119, -0.893502,
		41.165672, 32.514187, 26.558548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549923, 32.097904, 27.078747>,  <41.330788, 32.781670, 27.184000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549923, 32.097904, 27.078747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546833, 32.346218, 26.765169>,  <41.544979, 32.495205, 26.577023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546833, 32.346218, 26.765169>,  <41.549923, 32.097904, 27.078747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546833, 32.346218, 26.765169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999898, 0.014219, 0.001409,
		0.012022, -0.783854, -0.620828,
		-0.007724, 0.620782, -0.783945,
		41.544518, 32.532452, 26.529985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831890, 32.343681, 27.786022>,  <41.549923, 32.097904, 27.078747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831890, 32.343681, 27.786022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509758, 32.245190, 28.001732>,  <41.316479, 32.186096, 28.131157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509758, 32.245190, 28.001732>,  <41.831890, 32.343681, 27.786022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509758, 32.245190, 28.001732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377182, 0.488980, 0.786532,
		-0.457358, 0.836822, -0.300919,
		-0.805330, -0.246226, 0.539274,
		41.268158, 32.171322, 28.163513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578354, 32.949810, 28.099463>,  <41.831890, 32.343681, 27.786022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578354, 32.949810, 28.099463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517391, 32.602173, 28.287699>,  <41.480816, 32.393593, 28.400640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517391, 32.602173, 28.287699>,  <41.578354, 32.949810, 28.099463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517391, 32.602173, 28.287699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510367, 0.338545, 0.790515,
		-0.846344, 0.360652, 0.391959,
		-0.152405, -0.869090, 0.470590,
		41.471668, 32.341446, 28.428875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365139, 33.101513, 28.735388>,  <41.578354, 32.949810, 28.099463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365139, 33.101513, 28.735388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531952, 32.738636, 28.757591>,  <41.632042, 32.520908, 28.770912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531952, 32.738636, 28.757591>,  <41.365139, 33.101513, 28.735388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531952, 32.738636, 28.757591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533210, 0.293661, 0.793379,
		-0.736048, -0.301271, 0.606192,
		0.417037, -0.907193, 0.055508,
		41.657063, 32.466476, 28.774244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463810, 33.097836, 29.440067>,  <41.365139, 33.101513, 28.735388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463810, 33.097836, 29.440067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675556, 32.790867, 29.295385>,  <41.802605, 32.606686, 29.208576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675556, 32.790867, 29.295385>,  <41.463810, 33.097836, 29.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675556, 32.790867, 29.295385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632916, 0.073311, 0.770742,
		-0.564970, -0.636933, 0.524524,
		0.529364, -0.767426, -0.361707,
		41.834366, 32.560638, 29.186872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480461, 32.642075, 29.962629>,  <41.463810, 33.097836, 29.440067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480461, 32.642075, 29.962629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786793, 32.538517, 29.727179>,  <41.970592, 32.476383, 29.585907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786793, 32.538517, 29.727179>,  <41.480461, 32.642075, 29.962629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786793, 32.538517, 29.727179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629468, 0.114701, 0.768514,
		-0.131446, -0.959072, 0.250806,
		0.765828, -0.258892, -0.588628,
		42.016541, 32.460850, 29.550591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708443, 31.980766, 30.203972>,  <41.480461, 32.642075, 29.962629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708443, 31.980766, 30.203972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018806, 32.131218, 30.001394>,  <42.205025, 32.221489, 29.879848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018806, 32.131218, 30.001394>,  <41.708443, 31.980766, 30.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018806, 32.131218, 30.001394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584210, -0.125514, 0.801839,
		0.238030, -0.918026, -0.317127,
		0.775913, 0.376131, -0.506444,
		42.251579, 32.244057, 29.849461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318302, 31.516628, 30.315454>,  <41.708443, 31.980766, 30.203972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318302, 31.516628, 30.315454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484097, 31.867205, 30.217432>,  <42.583572, 32.077549, 30.158619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484097, 31.867205, 30.217432>,  <42.318302, 31.516628, 30.315454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484097, 31.867205, 30.217432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475262, 0.021176, 0.879590,
		0.776098, -0.481043, -0.407762,
		0.414486, 0.876441, -0.245056,
		42.608440, 32.130138, 30.143915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110474, 31.453924, 30.439295>,  <42.318302, 31.516628, 30.315454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110474, 31.453924, 30.439295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063606, 31.851105, 30.432175>,  <43.035484, 32.089413, 30.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063606, 31.851105, 30.432175>,  <43.110474, 31.453924, 30.439295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063606, 31.851105, 30.432175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596668, 0.084717, 0.798004,
		0.793888, 0.082882, -0.602389,
		-0.117173, 0.992952, -0.017802,
		43.028454, 32.148991, 30.426834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795567, 31.656538, 30.399498>,  <43.110474, 31.453924, 30.439295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795567, 31.656538, 30.399498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570553, 31.959414, 30.532297>,  <43.435543, 32.141140, 30.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570553, 31.959414, 30.532297>,  <43.795567, 31.656538, 30.399498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570553, 31.959414, 30.532297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523865, 0.015773, 0.851655,
		0.639625, 0.653008, -0.405536,
		-0.562534, 0.757187, 0.332000,
		43.401791, 32.186569, 30.631897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248016, 32.106255, 30.609663>,  <43.795567, 31.656538, 30.399498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248016, 32.106255, 30.609663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920349, 32.230495, 30.802536>,  <43.723751, 32.305038, 30.918259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920349, 32.230495, 30.802536>,  <44.248016, 32.106255, 30.609663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920349, 32.230495, 30.802536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557155, 0.231283, 0.797551,
		0.136200, 0.921973, -0.362512,
		-0.819163, 0.310601, 0.482181,
		43.674599, 32.323677, 30.947191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489346, 32.717205, 31.023489>,  <44.248016, 32.106255, 30.609663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489346, 32.717205, 31.023489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129837, 32.624092, 31.172092>,  <43.914131, 32.568226, 31.261253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129837, 32.624092, 31.172092>,  <44.489346, 32.717205, 31.023489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129837, 32.624092, 31.172092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249270, 0.425759, 0.869824,
		-0.360652, 0.874381, -0.324636,
		-0.898774, -0.232782, 0.371507,
		43.860207, 32.554256, 31.283545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215420, 33.306538, 31.359398>,  <44.489346, 32.717205, 31.023489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215420, 33.306538, 31.359398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003056, 33.018265, 31.537725>,  <43.875637, 32.845303, 31.644722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003056, 33.018265, 31.537725>,  <44.215420, 33.306538, 31.359398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003056, 33.018265, 31.537725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395078, 0.254916, 0.882571,
		-0.749696, 0.644700, 0.149387,
		-0.530913, -0.720680, 0.445817,
		43.843781, 32.802059, 31.671471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878601, 33.642548, 31.966763>,  <44.215420, 33.306538, 31.359398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878601, 33.642548, 31.966763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877750, 33.247349, 32.028538>,  <43.877239, 33.010227, 32.065601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877750, 33.247349, 32.028538>,  <43.878601, 33.642548, 31.966763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877750, 33.247349, 32.028538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350184, 0.143924, 0.925557,
		-0.936678, 0.056050, 0.345676,
		-0.002127, -0.988000, 0.154438,
		43.877113, 32.950951, 32.074867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506527, 33.532093, 32.544746>,  <43.878601, 33.642548, 31.966763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506527, 33.532093, 32.544746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750175, 33.216175, 32.515900>,  <43.896366, 33.026627, 32.498592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750175, 33.216175, 32.515900>,  <43.506527, 33.532093, 32.544746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750175, 33.216175, 32.515900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294835, 0.141092, 0.945074,
		-0.736237, -0.596927, 0.318800,
		0.609120, -0.789792, -0.072118,
		43.932911, 32.979237, 32.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395458, 33.195850, 33.197491>,  <43.506527, 33.532093, 32.544746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395458, 33.195850, 33.197491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734051, 33.060047, 33.033440>,  <43.937206, 32.978565, 32.935009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734051, 33.060047, 33.033440>,  <43.395458, 33.195850, 33.197491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734051, 33.060047, 33.033440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460151, 0.078999, 0.884319,
		-0.267833, -0.937280, 0.223096,
		0.846479, -0.339508, -0.410132,
		43.987995, 32.958195, 32.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551979, 32.711536, 33.671463>,  <43.395458, 33.195850, 33.197491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551979, 32.711536, 33.671463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898319, 32.783485, 33.484722>,  <44.106125, 32.826656, 33.372677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898319, 32.783485, 33.484722>,  <43.551979, 32.711536, 33.671463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898319, 32.783485, 33.484722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483648, -0.062164, 0.873052,
		0.128016, -0.981724, -0.140819,
		0.865851, 0.179871, -0.466851,
		44.158073, 32.837448, 33.344666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992279, 32.315258, 33.994255>,  <43.551979, 32.711536, 33.671463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992279, 32.315258, 33.994255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219154, 32.594639, 33.819691>,  <44.355282, 32.762268, 33.714951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219154, 32.594639, 33.819691>,  <43.992279, 32.315258, 33.994255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219154, 32.594639, 33.819691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561704, 0.059465, 0.825199,
		0.602316, -0.713179, -0.358597,
		0.567190, 0.698455, -0.436412,
		44.389313, 32.804176, 33.688766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783012, 32.170525, 34.138824>,  <43.992279, 32.315258, 33.994255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783012, 32.170525, 34.138824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751972, 32.562939, 34.067776>,  <44.733349, 32.798386, 34.025146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751972, 32.562939, 34.067776>,  <44.783012, 32.170525, 34.138824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751972, 32.562939, 34.067776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549382, 0.190742, 0.813509,
		0.831960, -0.034454, -0.553765,
		-0.077597, 0.981035, -0.177619,
		44.728695, 32.857250, 34.014492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438168, 32.446896, 34.320148>,  <44.783012, 32.170525, 34.138824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438168, 32.446896, 34.320148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221699, 32.782963, 34.305965>,  <45.091820, 32.984604, 34.297455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221699, 32.782963, 34.305965>,  <45.438168, 32.446896, 34.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221699, 32.782963, 34.305965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453670, 0.327200, 0.828929,
		0.708039, 0.432506, -0.558228,
		-0.541169, 0.840166, -0.035456,
		45.059349, 33.035011, 34.295330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916241, 32.956310, 34.501869>,  <45.438168, 32.446896, 34.320148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916241, 32.956310, 34.501869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549847, 33.110722, 34.545586>,  <45.330009, 33.203369, 34.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549847, 33.110722, 34.545586>,  <45.916241, 32.956310, 34.501869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549847, 33.110722, 34.545586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206208, 0.219320, 0.953612,
		0.344154, 0.896035, -0.280498,
		-0.915989, 0.386031, 0.109290,
		45.275051, 33.226532, 34.578373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009022, 33.667305, 34.907982>,  <45.916241, 32.956310, 34.501869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009022, 33.667305, 34.907982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634674, 33.527466, 34.925533>,  <45.410065, 33.443562, 34.936062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634674, 33.527466, 34.925533>,  <46.009022, 33.667305, 34.907982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634674, 33.527466, 34.925533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045814, 0.244210, 0.968640,
		-0.349354, 0.904511, -0.244565,
		-0.935870, -0.349603, 0.043877,
		45.353912, 33.422585, 34.938698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539555, 34.161026, 35.252026>,  <46.009022, 33.667305, 34.907982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539555, 34.161026, 35.252026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420506, 33.781170, 35.291222>,  <45.349075, 33.553257, 35.314739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420506, 33.781170, 35.291222>,  <45.539555, 34.161026, 35.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420506, 33.781170, 35.291222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009238, 0.105506, 0.994376,
		-0.954639, 0.295043, -0.040174,
		-0.297622, -0.949641, 0.097994,
		45.331219, 33.496277, 35.320621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904518, 34.418003, 34.692261>,  <45.539555, 34.161026, 35.252026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904518, 34.418003, 34.692261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964272, 34.774761, 34.863007>,  <46.000126, 34.988815, 34.965454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964272, 34.774761, 34.863007>,  <45.904518, 34.418003, 34.692261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964272, 34.774761, 34.863007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671439, -0.408413, 0.618360,
		0.725847, 0.194237, -0.659863,
		0.149388, 0.891891, 0.426864,
		46.009087, 35.042328, 34.991066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642326, 34.624931, 34.630981>,  <45.904518, 34.418003, 34.692261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642326, 34.624931, 34.630981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505970, 34.797852, 34.964905>,  <46.424156, 34.901604, 35.165260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505970, 34.797852, 34.964905>,  <46.642326, 34.624931, 34.630981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505970, 34.797852, 34.964905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834788, -0.269190, 0.480276,
		0.432347, 0.860611, -0.269117,
		-0.340888, 0.432302, 0.834812,
		46.403702, 34.927544, 35.215347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360893, 34.484577, 34.640011>,  <46.642326, 34.624931, 34.630981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360893, 34.484577, 34.640011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630703, 34.302315, 34.872353>,  <47.792591, 34.192955, 35.011757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630703, 34.302315, 34.872353>,  <47.360893, 34.484577, 34.640011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630703, 34.302315, 34.872353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699038, 0.647226, -0.304046,
		-0.237402, 0.611125, 0.755093,
		0.674526, -0.455658, 0.580853,
		47.833061, 34.165619, 35.046608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740887, 35.011753, 35.023731>,  <47.360893, 34.484577, 34.640011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740887, 35.011753, 35.023731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953014, 34.678532, 34.960766>,  <48.080292, 34.478600, 34.922985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953014, 34.678532, 34.960766>,  <47.740887, 35.011753, 35.023731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.953014, 34.678532, 34.960766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759892, 0.549395, -0.347462,
		0.375939, 0.064647, 0.924387,
		0.530316, -0.833058, -0.157414,
		48.112110, 34.428616, 34.913540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.809750, 39.125603, 42.674030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410255, 39.139572, 42.659592>,  <36.170559, 39.147953, 42.650928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410255, 39.139572, 42.659592>,  <36.809750, 39.125603, 42.674030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410255, 39.139572, 42.659592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023080, -0.319264, -0.947385,
		-0.044609, -0.947022, 0.318055,
		-0.998738, 0.034921, -0.036099,
		36.110634, 39.150047, 42.648762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709450, 38.619072, 42.319794>,  <36.809750, 39.125603, 42.674030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709450, 38.619072, 42.319794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354439, 38.802361, 42.300461>,  <36.141434, 38.912334, 42.288860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354439, 38.802361, 42.300461>,  <36.709450, 38.619072, 42.319794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354439, 38.802361, 42.300461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075707, -0.248489, -0.965672,
		-0.454502, -0.853397, 0.255230,
		-0.887523, 0.458222, -0.048331,
		36.088181, 38.939827, 42.285961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307003, 38.149612, 41.967888>,  <36.709450, 38.619072, 42.319794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307003, 38.149612, 41.967888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138451, 38.512238, 41.958199>,  <36.037319, 38.729813, 41.952385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138451, 38.512238, 41.958199>,  <36.307003, 38.149612, 41.967888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138451, 38.512238, 41.958199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172667, -0.106420, -0.979215,
		-0.890296, -0.408438, 0.201376,
		-0.421378, 0.906561, -0.024221,
		36.012035, 38.784206, 41.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719868, 37.995380, 41.609482>,  <36.307003, 38.149612, 41.967888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719868, 37.995380, 41.609482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747444, 38.391830, 41.564026>,  <35.763992, 38.629700, 41.536755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747444, 38.391830, 41.564026>,  <35.719868, 37.995380, 41.609482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747444, 38.391830, 41.564026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277150, -0.090395, -0.956565,
		-0.958350, 0.097443, 0.268458,
		0.068944, 0.991127, -0.113637,
		35.768127, 38.689167, 41.529934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134354, 38.230171, 41.270592>,  <35.719868, 37.995380, 41.609482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134354, 38.230171, 41.270592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399902, 38.516666, 41.184547>,  <35.559231, 38.688564, 41.132919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399902, 38.516666, 41.184547>,  <35.134354, 38.230171, 41.270592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399902, 38.516666, 41.184547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249155, -0.059380, -0.966641,
		-0.705123, 0.695321, 0.139035,
		0.663870, 0.716242, -0.215113,
		35.599064, 38.731541, 41.120014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793610, 38.846039, 40.854660>,  <35.134354, 38.230171, 41.270592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793610, 38.846039, 40.854660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184982, 38.841614, 40.772144>,  <35.419804, 38.838959, 40.722633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184982, 38.841614, 40.772144>,  <34.793610, 38.846039, 40.854660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184982, 38.841614, 40.772144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206511, -0.079587, -0.975202,
		-0.005630, 0.996766, -0.080155,
		0.978428, -0.011062, -0.206291,
		35.478512, 38.838295, 40.710258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866039, 39.337109, 40.357513>,  <34.793610, 38.846039, 40.854660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866039, 39.337109, 40.357513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205853, 39.128620, 40.324989>,  <35.409740, 39.003525, 40.305473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205853, 39.128620, 40.324989>,  <34.866039, 39.337109, 40.357513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205853, 39.128620, 40.324989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175936, -0.134630, -0.975152,
		0.497327, 0.842733, -0.206075,
		0.849537, -0.521225, -0.081312,
		35.460712, 38.972252, 40.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165890, 39.567936, 39.788387>,  <34.866039, 39.337109, 40.357513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165890, 39.567936, 39.788387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336014, 39.215000, 39.868973>,  <35.438087, 39.003239, 39.917324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336014, 39.215000, 39.868973>,  <35.165890, 39.567936, 39.788387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336014, 39.215000, 39.868973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245038, -0.326547, -0.912866,
		0.871245, 0.338884, -0.355090,
		0.425309, -0.882340, 0.201463,
		35.463608, 38.950298, 39.929413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638065, 39.415493, 39.186954>,  <35.165890, 39.567936, 39.788387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638065, 39.415493, 39.186954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585564, 39.068989, 39.379772>,  <35.554062, 38.861088, 39.495464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585564, 39.068989, 39.379772>,  <35.638065, 39.415493, 39.186954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585564, 39.068989, 39.379772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091781, -0.473547, -0.875973,
		0.987091, -0.159219, -0.017350,
		-0.131256, -0.866257, 0.482047,
		35.546188, 38.809113, 39.524387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093380, 38.982178, 38.819927>,  <35.638065, 39.415493, 39.186954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093380, 38.982178, 38.819927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837105, 38.744343, 39.014240>,  <35.683342, 38.601643, 39.130829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837105, 38.744343, 39.014240>,  <36.093380, 38.982178, 38.819927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837105, 38.744343, 39.014240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176256, -0.501898, -0.846777,
		0.747300, -0.628140, 0.216758,
		-0.640685, -0.594591, 0.485782,
		35.644897, 38.565964, 39.159973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389370, 38.375866, 38.732296>,  <36.093380, 38.982178, 38.819927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389370, 38.375866, 38.732296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004532, 38.290451, 38.800152>,  <35.773628, 38.239201, 38.840866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004532, 38.290451, 38.800152>,  <36.389370, 38.375866, 38.732296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004532, 38.290451, 38.800152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019889, -0.675302, -0.737273,
		0.271994, -0.705952, 0.653950,
		-0.962093, -0.213541, 0.169637,
		35.715904, 38.226387, 38.851044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372570, 37.692837, 38.534142>,  <36.389370, 38.375866, 38.732296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372570, 37.692837, 38.534142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980465, 37.769650, 38.552914>,  <35.745201, 37.815735, 38.564175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980465, 37.769650, 38.552914>,  <36.372570, 37.692837, 38.534142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980465, 37.769650, 38.552914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178323, -0.756555, -0.629147,
		-0.085311, -0.625100, 0.775869,
		-0.980267, 0.192028, 0.046927,
		35.686386, 37.827259, 38.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952023, 37.114548, 38.704826>,  <36.372570, 37.692837, 38.534142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952023, 37.114548, 38.704826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711758, 37.362991, 38.503464>,  <35.567600, 37.512058, 38.382645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711758, 37.362991, 38.503464>,  <35.952023, 37.114548, 38.704826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711758, 37.362991, 38.503464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174321, -0.716250, -0.675720,
		-0.780267, -0.318124, 0.538498,
		-0.600662, 0.621114, -0.503411,
		35.531559, 37.549324, 38.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364883, 36.721203, 38.506470>,  <35.952023, 37.114548, 38.704826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364883, 36.721203, 38.506470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372555, 37.031483, 38.254147>,  <35.377159, 37.217651, 38.102753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372555, 37.031483, 38.254147>,  <35.364883, 36.721203, 38.506470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372555, 37.031483, 38.254147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049212, -0.629430, -0.775497,
		-0.998604, 0.045919, 0.026101,
		0.019181, 0.775699, -0.630811,
		35.378307, 37.264191, 38.064903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978367, 36.437737, 38.032333>,  <35.364883, 36.721203, 38.506470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978367, 36.437737, 38.032333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144032, 36.756668, 37.856728>,  <35.243431, 36.948029, 37.751366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144032, 36.756668, 37.856728>,  <34.978367, 36.437737, 38.032333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144032, 36.756668, 37.856728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065179, -0.455107, -0.888048,
		-0.907868, 0.396408, -0.136517,
		0.414159, 0.797332, -0.439014,
		35.268280, 36.995869, 37.725021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653969, 36.442566, 37.353352>,  <34.978367, 36.437737, 38.032333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653969, 36.442566, 37.353352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006535, 36.627937, 37.316818>,  <35.218075, 36.739159, 37.294899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006535, 36.627937, 37.316818>,  <34.653969, 36.442566, 37.353352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006535, 36.627937, 37.316818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116356, -0.400428, -0.908911,
		-0.457786, 0.790501, -0.406866,
		0.881416, 0.463428, -0.091331,
		35.270958, 36.766964, 37.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644241, 36.759968, 36.675503>,  <34.653969, 36.442566, 37.353352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644241, 36.759968, 36.675503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026867, 36.732895, 36.788921>,  <35.256443, 36.716652, 36.856972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026867, 36.732895, 36.788921>,  <34.644241, 36.759968, 36.675503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026867, 36.732895, 36.788921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203545, -0.541220, -0.815874,
		0.208684, 0.838153, -0.503936,
		0.956567, -0.067686, 0.283546,
		35.313835, 36.712589, 36.873985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937489, 36.896374, 36.032368>,  <34.644241, 36.759968, 36.675503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937489, 36.896374, 36.032368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218906, 36.726784, 36.260498>,  <35.387756, 36.625031, 36.397377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218906, 36.726784, 36.260498>,  <34.937489, 36.896374, 36.032368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218906, 36.726784, 36.260498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391540, -0.438482, -0.808969,
		0.593058, 0.792451, -0.142490,
		0.703547, -0.423975, 0.570321,
		35.429970, 36.599590, 36.431595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585777, 37.020676, 35.686314>,  <34.937489, 36.896374, 36.032368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585777, 37.020676, 35.686314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624706, 36.707119, 35.931602>,  <35.648064, 36.518986, 36.078777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624706, 36.707119, 35.931602>,  <35.585777, 37.020676, 35.686314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624706, 36.707119, 35.931602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296436, -0.565354, -0.769741,
		0.950081, 0.256696, 0.177351,
		0.097323, -0.783890, 0.613226,
		35.653904, 36.471951, 36.115570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115841, 36.626598, 35.379498>,  <35.585777, 37.020676, 35.686314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115841, 36.626598, 35.379498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954681, 36.354435, 35.624355>,  <35.857986, 36.191135, 35.771271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954681, 36.354435, 35.624355>,  <36.115841, 36.626598, 35.379498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954681, 36.354435, 35.624355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091449, -0.695409, -0.712771,
		0.910662, -0.231198, 0.342405,
		-0.402903, -0.680407, 0.612140,
		35.833809, 36.150314, 35.807999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565876, 36.078979, 35.265297>,  <36.115841, 36.626598, 35.379498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565876, 36.078979, 35.265297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244133, 35.923363, 35.444923>,  <36.051086, 35.829994, 35.552700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244133, 35.923363, 35.444923>,  <36.565876, 36.078979, 35.265297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244133, 35.923363, 35.444923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138250, -0.857623, -0.495347,
		0.577841, -0.336351, 0.743618,
		-0.804355, -0.389037, 0.449069,
		36.002827, 35.806652, 35.579643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810852, 35.369488, 35.344505>,  <36.565876, 36.078979, 35.265297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810852, 35.369488, 35.344505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413631, 35.383186, 35.389534>,  <36.175297, 35.391407, 35.416550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413631, 35.383186, 35.389534>,  <36.810852, 35.369488, 35.344505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413631, 35.383186, 35.389534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086706, -0.859743, -0.503313,
		0.079545, -0.509577, 0.856740,
		-0.993053, 0.034249, 0.112572,
		36.115715, 35.393459, 35.423306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493275, 35.074780, 35.513206>,  <36.810852, 35.369488, 35.344505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493275, 35.074780, 35.513206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849476, 34.901432, 35.568626>,  <38.063198, 34.797424, 35.601879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849476, 34.901432, 35.568626>,  <37.493275, 35.074780, 35.513206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849476, 34.901432, 35.568626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152021, 0.570422, 0.807160,
		-0.428831, -0.697715, 0.573844,
		0.890501, -0.433372, 0.138548,
		38.116627, 34.771420, 35.610191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649075, 34.815414, 36.245361>,  <37.493275, 35.074780, 35.513206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649075, 34.815414, 36.245361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018978, 34.843376, 36.095726>,  <38.240921, 34.860153, 36.005947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018978, 34.843376, 36.095726>,  <37.649075, 34.815414, 36.245361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018978, 34.843376, 36.095726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328721, 0.348567, 0.877749,
		0.191748, -0.934674, 0.299362,
		0.924757, 0.069900, -0.374084,
		38.296406, 34.864346, 35.983501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098438, 34.555351, 36.781403>,  <37.649075, 34.815414, 36.245361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098438, 34.555351, 36.781403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352993, 34.760147, 36.550617>,  <38.505726, 34.883026, 36.412148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352993, 34.760147, 36.550617>,  <38.098438, 34.555351, 36.781403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352993, 34.760147, 36.550617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460447, 0.347960, 0.816647,
		0.618876, -0.785359, -0.014310,
		0.636382, 0.511992, -0.576960,
		38.543907, 34.913746, 36.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729496, 34.363876, 37.055775>,  <38.098438, 34.555351, 36.781403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729496, 34.363876, 37.055775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771709, 34.699543, 36.842358>,  <38.797039, 34.900944, 36.714310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771709, 34.699543, 36.842358>,  <38.729496, 34.363876, 37.055775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771709, 34.699543, 36.842358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489296, 0.423272, 0.762516,
		0.865709, -0.341530, -0.365931,
		0.105534, 0.839165, -0.533540,
		38.803371, 34.951294, 36.682297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357189, 34.606323, 37.342854>,  <38.729496, 34.363876, 37.055775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357189, 34.606323, 37.342854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209908, 34.926048, 37.152901>,  <39.121536, 35.117886, 37.038929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209908, 34.926048, 37.152901>,  <39.357189, 34.606323, 37.342854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209908, 34.926048, 37.152901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456449, 0.600390, 0.656647,
		0.809986, 0.025021, -0.585916,
		-0.368208, 0.799316, -0.474886,
		39.099445, 35.165844, 37.010433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849110, 35.141041, 37.495853>,  <39.357189, 34.606323, 37.342854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849110, 35.141041, 37.495853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549801, 35.372490, 37.366066>,  <39.370216, 35.511360, 37.288193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549801, 35.372490, 37.366066>,  <39.849110, 35.141041, 37.495853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549801, 35.372490, 37.366066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150454, 0.624386, 0.766490,
		0.646100, 0.524729, -0.554269,
		-0.748277, 0.578621, -0.324468,
		39.325317, 35.546078, 37.268726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097069, 35.885391, 37.508774>,  <39.849110, 35.141041, 37.495853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097069, 35.885391, 37.508774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702942, 35.843216, 37.562504>,  <39.466465, 35.817913, 37.594742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702942, 35.843216, 37.562504>,  <40.097069, 35.885391, 37.508774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702942, 35.843216, 37.562504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055474, 0.546303, 0.835749,
		-0.161497, 0.830925, -0.532430,
		-0.985313, -0.105435, 0.134321,
		39.407349, 35.811584, 37.602798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803764, 36.496746, 37.580257>,  <40.097069, 35.885391, 37.508774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803764, 36.496746, 37.580257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539768, 36.258503, 37.763416>,  <39.381371, 36.115559, 37.873310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539768, 36.258503, 37.763416>,  <39.803764, 36.496746, 37.580257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539768, 36.258503, 37.763416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169724, 0.475529, 0.863172,
		-0.731853, 0.647400, -0.212756,
		-0.659989, -0.595605, 0.457897,
		39.341770, 36.079823, 37.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530861, 36.970478, 38.006248>,  <39.803764, 36.496746, 37.580257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530861, 36.970478, 38.006248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408882, 36.619019, 38.153210>,  <39.335693, 36.408142, 38.241386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408882, 36.619019, 38.153210>,  <39.530861, 36.970478, 38.006248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408882, 36.619019, 38.153210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089921, 0.410615, 0.907364,
		-0.948113, 0.243665, -0.204226,
		-0.304951, -0.878648, 0.367399,
		39.317398, 36.355423, 38.263428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925667, 37.177269, 38.421505>,  <39.530861, 36.970478, 38.006248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925667, 37.177269, 38.421505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064705, 36.821510, 38.540264>,  <39.148129, 36.608055, 38.611519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064705, 36.821510, 38.540264>,  <38.925667, 37.177269, 38.421505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064705, 36.821510, 38.540264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104567, 0.277896, 0.954903,
		-0.931797, -0.362962, 0.003592,
		0.347591, -0.889400, 0.296897,
		39.168983, 36.554691, 38.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410633, 36.903042, 38.875019>,  <38.925667, 37.177269, 38.421505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410633, 36.903042, 38.875019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761837, 36.726879, 38.950005>,  <38.972557, 36.621181, 38.994995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761837, 36.726879, 38.950005>,  <38.410633, 36.903042, 38.875019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761837, 36.726879, 38.950005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096967, 0.219874, 0.970697,
		-0.468724, -0.870456, 0.150345,
		0.878006, -0.440411, 0.187466,
		39.025238, 36.594757, 39.006245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383537, 36.458271, 39.537212>,  <38.410633, 36.903042, 38.875019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383537, 36.458271, 39.537212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771671, 36.541309, 39.487648>,  <39.004551, 36.591133, 39.457909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771671, 36.541309, 39.487648>,  <38.383537, 36.458271, 39.537212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771671, 36.541309, 39.487648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091849, 0.157580, 0.983225,
		0.223639, -0.965439, 0.133839,
		0.970335, 0.207595, -0.123915,
		39.062771, 36.603588, 39.450474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789474, 35.952961, 39.827911>,  <38.383537, 36.458271, 39.537212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789474, 35.952961, 39.827911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985310, 36.301353, 39.844387>,  <39.102810, 36.510387, 39.854271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985310, 36.301353, 39.844387>,  <38.789474, 35.952961, 39.827911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985310, 36.301353, 39.844387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013628, -0.039589, 0.999123,
		0.871846, -0.489722, -0.007513,
		0.489590, 0.870979, 0.041190,
		39.132187, 36.562649, 39.856743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281010, 35.950722, 40.381317>,  <38.789474, 35.952961, 39.827911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281010, 35.950722, 40.381317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257984, 36.342541, 40.304192>,  <39.244167, 36.577633, 40.257915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257984, 36.342541, 40.304192>,  <39.281010, 35.950722, 40.381317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257984, 36.342541, 40.304192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014596, 0.193938, 0.980905,
		0.998235, 0.053650, -0.025461,
		-0.057563, 0.979546, -0.192813,
		39.240715, 36.636406, 40.246349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835930, 36.241585, 40.801121>,  <39.281010, 35.950722, 40.381317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835930, 36.241585, 40.801121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561356, 36.520412, 40.718277>,  <39.396610, 36.687710, 40.668571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561356, 36.520412, 40.718277>,  <39.835930, 36.241585, 40.801121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561356, 36.520412, 40.718277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004808, 0.280451, 0.959856,
		0.727173, 0.659877, -0.189161,
		-0.686437, 0.697072, -0.207109,
		39.355423, 36.729534, 40.656143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081371, 36.734676, 41.203911>,  <39.835930, 36.241585, 40.801121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081371, 36.734676, 41.203911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712425, 36.863571, 41.118679>,  <39.491058, 36.940910, 41.067539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712425, 36.863571, 41.118679>,  <40.081371, 36.734676, 41.203911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712425, 36.863571, 41.118679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053138, 0.440496, 0.896181,
		0.382646, 0.837929, -0.389175,
		-0.922366, 0.322240, -0.213080,
		39.435715, 36.960243, 41.054756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965019, 37.411758, 41.540401>,  <40.081371, 36.734676, 41.203911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965019, 37.411758, 41.540401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590412, 37.283813, 41.482952>,  <39.365650, 37.207047, 41.448483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590412, 37.283813, 41.482952>,  <39.965019, 37.411758, 41.540401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590412, 37.283813, 41.482952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258107, 0.351654, 0.899845,
		-0.237316, 0.879790, -0.411887,
		-0.936516, -0.319858, -0.143627,
		39.309456, 37.187855, 41.439865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529663, 37.975372, 41.692646>,  <39.965019, 37.411758, 41.540401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529663, 37.975372, 41.692646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327160, 37.634434, 41.745132>,  <39.205658, 37.429871, 41.776623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327160, 37.634434, 41.745132>,  <39.529663, 37.975372, 41.692646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327160, 37.634434, 41.745132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285293, 0.309115, 0.907225,
		-0.813826, 0.421855, -0.399659,
		-0.506257, -0.852342, 0.131214,
		39.175282, 37.378731, 41.784496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.628426, 38.153152, 41.454674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667183, 37.840221, 41.700787>,  <38.690437, 37.652462, 41.848454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667183, 37.840221, 41.700787>,  <38.628426, 38.153152, 41.454674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667183, 37.840221, 41.700787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649273, 0.418858, 0.634825,
		-0.754358, -0.460999, -0.467358,
		0.096897, -0.782328, 0.615283,
		38.696251, 37.605522, 41.885372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997368, 38.094471, 41.666630>,  <38.628426, 38.153152, 41.454674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997368, 38.094471, 41.666630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198952, 37.882149, 41.939182>,  <38.319901, 37.754757, 42.102715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198952, 37.882149, 41.939182>,  <37.997368, 38.094471, 41.666630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198952, 37.882149, 41.939182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431841, 0.528360, 0.730992,
		-0.748026, -0.662635, 0.037048,
		0.503956, -0.530801, 0.681380,
		38.350140, 37.722908, 42.143597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501789, 37.962627, 42.204166>,  <37.997368, 38.094471, 41.666630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501789, 37.962627, 42.204166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877483, 37.936176, 42.338902>,  <38.102901, 37.920307, 42.419743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877483, 37.936176, 42.338902>,  <37.501789, 37.962627, 42.204166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877483, 37.936176, 42.338902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296241, 0.339588, 0.892704,
		-0.173419, -0.938246, 0.299364,
		0.939237, -0.066128, 0.336838,
		38.159256, 37.916340, 42.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369984, 37.600719, 42.710289>,  <37.501789, 37.962627, 42.204166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369984, 37.600719, 42.710289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708336, 37.809898, 42.752262>,  <37.911346, 37.935406, 42.777447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708336, 37.809898, 42.752262>,  <37.369984, 37.600719, 42.710289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708336, 37.809898, 42.752262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342693, 0.382113, 0.858225,
		0.408718, -0.761912, 0.502434,
		0.845879, 0.522953, 0.104925,
		37.962101, 37.966782, 42.783741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531536, 37.490547, 43.473705>,  <37.369984, 37.600719, 42.710289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531536, 37.490547, 43.473705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775433, 37.790703, 43.371620>,  <37.921768, 37.970798, 43.310371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775433, 37.790703, 43.371620>,  <37.531536, 37.490547, 43.473705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775433, 37.790703, 43.371620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099791, 0.246747, 0.963928,
		0.786295, -0.613213, 0.075569,
		0.609739, 0.750391, -0.255209,
		37.958355, 38.015820, 43.295059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071026, 37.431252, 43.934742>,  <37.531536, 37.490547, 43.473705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071026, 37.431252, 43.934742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044449, 37.809662, 43.807858>,  <38.028503, 38.036709, 43.731728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044449, 37.809662, 43.807858>,  <38.071026, 37.431252, 43.934742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044449, 37.809662, 43.807858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143594, 0.305539, 0.941290,
		0.987403, 0.108096, 0.115541,
		-0.066447, 0.946024, -0.317213,
		38.024513, 38.093468, 43.712692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366238, 37.745049, 44.513229>,  <38.071026, 37.431252, 43.934742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366238, 37.745049, 44.513229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244297, 38.062576, 44.302738>,  <38.171131, 38.253094, 44.176445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244297, 38.062576, 44.302738>,  <38.366238, 37.745049, 44.513229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244297, 38.062576, 44.302738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008875, 0.550135, 0.835028,
		0.952359, 0.259230, -0.160665,
		-0.304852, 0.793821, -0.526226,
		38.152843, 38.300724, 44.144871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818401, 38.388641, 44.639137>,  <38.366238, 37.745049, 44.513229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818401, 38.388641, 44.639137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446625, 38.499729, 44.541969>,  <38.223560, 38.566383, 44.483669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446625, 38.499729, 44.541969>,  <38.818401, 38.388641, 44.639137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446625, 38.499729, 44.541969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029956, 0.712993, 0.700531,
		0.367750, 0.643826, -0.671005,
		-0.929442, 0.277721, -0.242917,
		38.167793, 38.583046, 44.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944237, 39.156021, 44.610226>,  <38.818401, 38.388641, 44.639137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944237, 39.156021, 44.610226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559391, 39.053749, 44.648079>,  <38.328484, 38.992386, 44.670792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559391, 39.053749, 44.648079>,  <38.944237, 39.156021, 44.610226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559391, 39.053749, 44.648079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155827, 0.800539, 0.578666,
		-0.223709, 0.542000, -0.810056,
		-0.962118, -0.255682, 0.094630,
		38.270756, 38.977043, 44.676468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582569, 39.698669, 44.579868>,  <38.944237, 39.156021, 44.610226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582569, 39.698669, 44.579868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318516, 39.463497, 44.766872>,  <38.160084, 39.322395, 44.879074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318516, 39.463497, 44.766872>,  <38.582569, 39.698669, 44.579868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318516, 39.463497, 44.766872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032455, 0.644134, 0.764224,
		-0.750445, 0.489318, -0.444297,
		-0.660136, -0.587928, 0.467506,
		38.120476, 39.287117, 44.907124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134678, 40.214672, 44.863777>,  <38.582569, 39.698669, 44.579868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134678, 40.214672, 44.863777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122299, 39.865223, 45.058025>,  <38.114872, 39.655552, 45.174576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122299, 39.865223, 45.058025>,  <38.134678, 40.214672, 44.863777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122299, 39.865223, 45.058025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238497, 0.478273, 0.845206,
		-0.970650, -0.089665, -0.223156,
		-0.030944, -0.873622, 0.485620,
		38.113014, 39.603138, 45.203712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532345, 40.275352, 45.370300>,  <38.134678, 40.214672, 44.863777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532345, 40.275352, 45.370300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783157, 39.987350, 45.489246>,  <37.933643, 39.814548, 45.560616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783157, 39.987350, 45.489246>,  <37.532345, 40.275352, 45.370300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783157, 39.987350, 45.489246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158636, 0.255715, 0.953648,
		-0.762673, -0.645138, 0.046122,
		0.627028, -0.720005, 0.297369,
		37.971268, 39.771351, 45.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202156, 40.078712, 45.891399>,  <37.532345, 40.275352, 45.370300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202156, 40.078712, 45.891399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577602, 39.957394, 45.957146>,  <37.802868, 39.884602, 45.996593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577602, 39.957394, 45.957146>,  <37.202156, 40.078712, 45.891399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577602, 39.957394, 45.957146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024699, 0.416168, 0.908952,
		-0.344086, -0.857215, 0.383129,
		0.938613, -0.303294, 0.164370,
		37.859188, 39.866405, 46.006458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236492, 39.838539, 46.586876>,  <37.202156, 40.078712, 45.891399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236492, 39.838539, 46.586876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621189, 39.869537, 46.481773>,  <37.852009, 39.888138, 46.418713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621189, 39.869537, 46.481773>,  <37.236492, 39.838539, 46.586876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621189, 39.869537, 46.481773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221671, 0.343392, 0.912658,
		0.160957, -0.935989, 0.313076,
		0.961746, 0.077499, -0.262753,
		37.909714, 39.892788, 46.402946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579441, 39.518578, 47.129131>,  <37.236492, 39.838539, 46.586876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579441, 39.518578, 47.129131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872673, 39.730549, 46.958595>,  <38.048611, 39.857731, 46.856274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872673, 39.730549, 46.958595>,  <37.579441, 39.518578, 47.129131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872673, 39.730549, 46.958595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247443, 0.376090, 0.892932,
		0.633538, -0.760084, 0.144575,
		0.733077, 0.529933, -0.426345,
		38.092598, 39.889530, 46.830692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157394, 39.346832, 47.464226>,  <37.579441, 39.518578, 47.129131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157394, 39.346832, 47.464226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253902, 39.704407, 47.313137>,  <38.311806, 39.918949, 47.222485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253902, 39.704407, 47.313137>,  <38.157394, 39.346832, 47.464226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253902, 39.704407, 47.313137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319053, 0.294518, 0.900813,
		0.916513, -0.337850, -0.214154,
		0.241267, 0.893933, -0.377721,
		38.326283, 39.972588, 47.199821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804005, 39.589836, 47.754826>,  <38.157394, 39.346832, 47.464226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804005, 39.589836, 47.754826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641689, 39.923233, 47.604828>,  <38.544300, 40.123272, 47.514828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641689, 39.923233, 47.604828>,  <38.804005, 39.589836, 47.754826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641689, 39.923233, 47.604828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412566, 0.533160, 0.738600,
		0.815551, 0.145007, -0.560222,
		-0.405790, 0.833495, -0.374994,
		38.519951, 40.173283, 47.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304108, 40.016788, 47.659477>,  <38.804005, 39.589836, 47.754826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304108, 40.016788, 47.659477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973373, 40.237850, 47.701256>,  <38.774933, 40.370487, 47.726322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973373, 40.237850, 47.701256>,  <39.304108, 40.016788, 47.659477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973373, 40.237850, 47.701256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420778, 0.484608, 0.766877,
		0.373204, 0.678032, -0.633238,
		-0.826840, 0.552655, 0.104443,
		38.725323, 40.403648, 47.732590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538296, 40.696831, 47.973927>,  <39.304108, 40.016788, 47.659477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538296, 40.696831, 47.973927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140434, 40.707504, 48.013813>,  <38.901718, 40.713909, 48.037743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140434, 40.707504, 48.013813>,  <39.538296, 40.696831, 47.973927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140434, 40.707504, 48.013813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090230, 0.693942, 0.714354,
		-0.050132, 0.719536, -0.692643,
		-0.994658, 0.026685, 0.099713,
		38.842037, 40.715511, 48.043728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456364, 41.353729, 48.182198>,  <39.538296, 40.696831, 47.973927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456364, 41.353729, 48.182198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106918, 41.197021, 48.297657>,  <38.897251, 41.102997, 48.366932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106918, 41.197021, 48.297657>,  <39.456364, 41.353729, 48.182198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106918, 41.197021, 48.297657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004870, 0.600180, 0.799850,
		-0.486595, 0.697355, -0.526233,
		-0.873614, -0.391766, 0.288648,
		38.844833, 41.079491, 48.384251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946560, 41.822712, 48.365345>,  <39.456364, 41.353729, 48.182198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946560, 41.822712, 48.365345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798283, 41.510353, 48.566460>,  <38.709316, 41.322937, 48.687126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798283, 41.510353, 48.566460>,  <38.946560, 41.822712, 48.365345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798283, 41.510353, 48.566460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019923, 0.534540, 0.844908,
		-0.928541, 0.323221, -0.182593,
		-0.370695, -0.780894, 0.502782,
		38.687073, 41.276085, 48.717293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344818, 42.011395, 48.596764>,  <38.946560, 41.822712, 48.365345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344818, 42.011395, 48.596764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459595, 41.728306, 48.855003>,  <38.528461, 41.558453, 49.009945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459595, 41.728306, 48.855003>,  <38.344818, 42.011395, 48.596764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459595, 41.728306, 48.855003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154679, 0.630864, 0.760319,
		-0.945376, -0.318030, 0.071554,
		0.286945, -0.707720, 0.645597,
		38.545677, 41.515991, 49.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901161, 41.808907, 49.047180>,  <38.344818, 42.011395, 48.596764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901161, 41.808907, 49.047180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256351, 41.755318, 49.223156>,  <38.469467, 41.723164, 49.328743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256351, 41.755318, 49.223156>,  <37.901161, 41.808907, 49.047180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256351, 41.755318, 49.223156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171816, 0.790712, 0.587583,
		-0.426591, -0.597348, 0.679114,
		0.887975, -0.133975, 0.439944,
		38.522743, 41.715126, 49.355141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343658, 42.180771, 49.624874>,  <37.901161, 41.808907, 49.047180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343658, 42.180771, 49.624874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364101, 42.579174, 49.654140>,  <37.376369, 42.818218, 49.671700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364101, 42.579174, 49.654140>,  <37.343658, 42.180771, 49.624874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364101, 42.579174, 49.654140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042942, -0.075381, 0.996230,
		0.997769, -0.047776, -0.046623,
		0.051110, 0.996010, 0.073161,
		37.379433, 42.877975, 49.676090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651657, 42.067486, 49.912125>,  <37.343658, 42.180771, 49.624874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651657, 42.067486, 49.912125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365761, 42.345474, 49.880722>,  <36.194221, 42.512268, 49.861881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365761, 42.345474, 49.880722>,  <36.651657, 42.067486, 49.912125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365761, 42.345474, 49.880722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356739, -0.458813, -0.813774,
		-0.601566, -0.553632, 0.575855,
		-0.714741, 0.694969, -0.078504,
		36.151337, 42.553967, 49.857170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077278, 41.718983, 49.918579>,  <36.651657, 42.067486, 49.912125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077278, 41.718983, 49.918579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991096, 42.059708, 49.727585>,  <35.939388, 42.264145, 49.612988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991096, 42.059708, 49.727585>,  <36.077278, 41.718983, 49.918579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991096, 42.059708, 49.727585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454267, -0.520267, -0.723163,
		-0.864420, 0.061096, 0.499045,
		-0.215454, 0.851816, -0.477483,
		35.926460, 42.315254, 49.584339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415222, 41.687286, 49.786705>,  <36.077278, 41.718983, 49.918579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415222, 41.687286, 49.786705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589073, 41.917332, 49.509480>,  <35.693386, 42.055359, 49.343143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589073, 41.917332, 49.509480>,  <35.415222, 41.687286, 49.786705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589073, 41.917332, 49.509480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240406, -0.667537, -0.704698,
		-0.867930, 0.472899, -0.151870,
		0.434630, 0.575118, -0.693063,
		35.719463, 42.089867, 49.301559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891975, 41.569405, 49.189354>,  <35.415222, 41.687286, 49.786705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891975, 41.569405, 49.189354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239120, 41.712841, 49.051815>,  <35.447407, 41.798904, 48.969292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239120, 41.712841, 49.051815>,  <34.891975, 41.569405, 49.189354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239120, 41.712841, 49.051815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065291, -0.603792, -0.794464,
		-0.492501, 0.711933, -0.500593,
		0.867859, 0.358590, -0.343851,
		35.499477, 41.820419, 48.948658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700096, 41.639328, 48.430859>,  <34.891975, 41.569405, 49.189354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700096, 41.639328, 48.430859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098892, 41.662003, 48.452038>,  <35.338169, 41.675606, 48.464745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098892, 41.662003, 48.452038>,  <34.700096, 41.639328, 48.430859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098892, 41.662003, 48.452038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076874, -0.631020, -0.771948,
		-0.010349, 0.773693, -0.633477,
		0.996987, 0.056686, 0.052946,
		35.397987, 41.679008, 48.467922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894558, 41.751774, 47.680817>,  <34.700096, 41.639328, 48.430859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894558, 41.751774, 47.680817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239536, 41.645481, 47.853134>,  <35.446522, 41.581707, 47.956524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239536, 41.645481, 47.853134>,  <34.894558, 41.751774, 47.680817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239536, 41.645481, 47.853134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248304, -0.519534, -0.817575,
		0.441064, 0.812079, -0.382087,
		0.862443, -0.265729, 0.430790,
		35.498268, 41.565762, 47.982372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339092, 41.918255, 47.161373>,  <34.894558, 41.751774, 47.680817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339092, 41.918255, 47.161373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475567, 41.640160, 47.414429>,  <35.557453, 41.473301, 47.566261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475567, 41.640160, 47.414429>,  <35.339092, 41.918255, 47.161373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475567, 41.640160, 47.414429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233462, -0.589256, -0.773481,
		0.910541, 0.411601, -0.038736,
		0.341191, -0.695242, 0.632635,
		35.577923, 41.431587, 47.604218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797733, 41.660526, 46.738808>,  <35.339092, 41.918255, 47.161373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797733, 41.660526, 46.738808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.759514, 41.386074, 47.027279>,  <35.736580, 41.221401, 47.200359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.759514, 41.386074, 47.027279>,  <35.797733, 41.660526, 46.738808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759514, 41.386074, 47.027279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050871, -0.726908, -0.684848,
		0.994124, -0.028752, 0.104362,
		-0.095552, -0.686133, 0.721174,
		35.730846, 41.180233, 47.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295536, 41.164387, 46.624363>,  <35.797733, 41.660526, 46.738808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295536, 41.164387, 46.624363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018177, 40.987648, 46.852039>,  <35.851761, 40.881607, 46.988644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018177, 40.987648, 46.852039>,  <36.295536, 41.164387, 46.624363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018177, 40.987648, 46.852039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010424, -0.795999, -0.605208,
		0.720482, -0.413715, 0.556548,
		-0.693395, -0.441843, 0.569191,
		35.810158, 40.855095, 47.022797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546951, 40.538395, 46.820091>,  <36.295536, 41.164387, 46.624363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546951, 40.538395, 46.820091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148796, 40.506279, 46.841118>,  <35.909904, 40.487007, 46.853733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148796, 40.506279, 46.841118>,  <36.546951, 40.538395, 46.820091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148796, 40.506279, 46.841118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018086, -0.694880, -0.718898,
		0.094253, -0.714629, 0.693125,
		-0.995384, -0.080294, 0.052570,
		35.850182, 40.482189, 46.856888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508507, 39.879208, 46.862278>,  <36.546951, 40.538395, 46.820091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508507, 39.879208, 46.862278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154598, 40.020947, 46.741203>,  <35.942253, 40.105991, 46.668560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154598, 40.020947, 46.741203>,  <36.508507, 39.879208, 46.862278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154598, 40.020947, 46.741203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046814, -0.713799, -0.698784,
		-0.463671, -0.604093, 0.648137,
		-0.884770, 0.354347, -0.302688,
		35.889168, 40.127251, 46.650398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243458, 39.308861, 46.651886>,  <36.508507, 39.879208, 46.862278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243458, 39.308861, 46.651886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002613, 39.581940, 46.486286>,  <35.858109, 39.745785, 46.386925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002613, 39.581940, 46.486286>,  <36.243458, 39.308861, 46.651886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002613, 39.581940, 46.486286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046674, -0.547738, -0.835347,
		-0.797050, -0.483646, 0.361662,
		-0.602108, 0.682693, -0.414001,
		35.821980, 39.786747, 46.362087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660027, 38.949074, 46.190586>,  <36.243458, 39.308861, 46.651886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660027, 38.949074, 46.190586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684883, 39.330181, 46.071682>,  <35.699795, 39.558846, 46.000340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684883, 39.330181, 46.071682>,  <35.660027, 38.949074, 46.190586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684883, 39.330181, 46.071682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069750, -0.292966, -0.953575,
		-0.995627, 0.079988, 0.048252,
		0.062138, 0.952771, -0.297264,
		35.703526, 39.616013, 45.982502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094204, 39.150879, 45.750484>,  <35.660027, 38.949074, 46.190586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094204, 39.150879, 45.750484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388691, 39.404404, 45.655602>,  <35.565384, 39.556519, 45.598671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388691, 39.404404, 45.655602>,  <35.094204, 39.150879, 45.750484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388691, 39.404404, 45.655602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069450, -0.277902, -0.958096,
		-0.673175, 0.721838, -0.160577,
		0.736215, 0.633814, -0.237209,
		35.609554, 39.594547, 45.584438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817692, 39.472977, 45.198112>,  <35.094204, 39.150879, 45.750484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817692, 39.472977, 45.198112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211994, 39.539013, 45.185261>,  <35.448574, 39.578636, 45.177551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211994, 39.539013, 45.185261>,  <34.817692, 39.472977, 45.198112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211994, 39.539013, 45.185261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000805, -0.186376, -0.982478,
		-0.168184, 0.968509, -0.183589,
		0.985755, 0.165089, -0.032125,
		35.507721, 39.588539, 45.175625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816944, 39.750031, 44.583092>,  <34.817692, 39.472977, 45.198112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816944, 39.750031, 44.583092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212357, 39.716522, 44.633343>,  <35.449604, 39.696415, 44.663494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212357, 39.716522, 44.633343>,  <34.816944, 39.750031, 44.583092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212357, 39.716522, 44.633343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110589, -0.164860, -0.980098,
		0.102818, 0.982753, -0.153705,
		0.988534, -0.083774, 0.125632,
		35.508915, 39.691391, 44.671032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092941, 40.239914, 44.076855>,  <34.816944, 39.750031, 44.583092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092941, 40.239914, 44.076855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354382, 39.945526, 44.147461>,  <35.511246, 39.768894, 44.189827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354382, 39.945526, 44.147461>,  <35.092941, 40.239914, 44.076855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354382, 39.945526, 44.147461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203502, -0.053744, -0.977598,
		0.728965, 0.674883, 0.114643,
		0.653603, -0.735965, 0.176518,
		35.550461, 39.724735, 44.200417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697849, 40.391376, 43.698841>,  <35.092941, 40.239914, 44.076855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697849, 40.391376, 43.698841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712879, 39.995663, 43.755287>,  <35.721897, 39.758236, 43.789154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712879, 39.995663, 43.755287>,  <35.697849, 40.391376, 43.698841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712879, 39.995663, 43.755287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268489, -0.126030, -0.955003,
		0.962550, 0.073768, 0.260876,
		0.037570, -0.989280, 0.141116,
		35.724152, 39.698879, 43.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227245, 40.201256, 43.260139>,  <35.697849, 40.391376, 43.698841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227245, 40.201256, 43.260139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011208, 39.871014, 43.325474>,  <35.881584, 39.672867, 43.364674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011208, 39.871014, 43.325474>,  <36.227245, 40.201256, 43.260139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011208, 39.871014, 43.325474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154380, -0.287967, -0.945115,
		0.827325, -0.485235, 0.282986,
		-0.540093, -0.825604, 0.163332,
		35.849178, 39.623333, 43.374474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616531, 39.721939, 43.013691>,  <36.227245, 40.201256, 43.260139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616531, 39.721939, 43.013691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263386, 39.534168, 43.008129>,  <36.051498, 39.421505, 43.004791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263386, 39.534168, 43.008129>,  <36.616531, 39.721939, 43.013691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263386, 39.534168, 43.008129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203858, -0.356388, -0.911827,
		0.423077, -0.807854, 0.410338,
		-0.882863, -0.469424, -0.013907,
		35.998528, 39.393341, 43.003956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.666733, 33.011459, 27.788551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.283077, 33.097210, 27.862404>,  <40.052883, 33.148663, 27.906715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.283077, 33.097210, 27.862404>,  <40.666733, 33.011459, 27.788551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283077, 33.097210, 27.862404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092855, -0.377906, 0.921176,
		0.267254, 0.900682, 0.342559,
		-0.959142, 0.214380, 0.184630,
		39.995335, 33.161522, 27.917793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621246, 33.368603, 28.391958>,  <40.666733, 33.011459, 27.788551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621246, 33.368603, 28.391958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253410, 33.211720, 28.382820>,  <40.032707, 33.117588, 28.377337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253410, 33.211720, 28.382820>,  <40.621246, 33.368603, 28.391958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253410, 33.211720, 28.382820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095654, -0.279921, 0.955246,
		-0.381049, 0.876252, 0.294930,
		-0.919593, -0.392207, -0.022846,
		39.977531, 33.094059, 28.375967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298996, 33.714764, 28.884714>,  <40.621246, 33.368603, 28.391958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298996, 33.714764, 28.884714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066345, 33.392189, 28.842039>,  <39.926754, 33.198647, 28.816433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066345, 33.392189, 28.842039>,  <40.298996, 33.714764, 28.884714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066345, 33.392189, 28.842039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027010, -0.150228, 0.988282,
		-0.813010, 0.571925, 0.109158,
		-0.581622, -0.806432, -0.106689,
		39.891857, 33.150261, 28.810032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742435, 33.856644, 29.353683>,  <40.298996, 33.714764, 28.884714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742435, 33.856644, 29.353683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732876, 33.464218, 29.276806>,  <39.727139, 33.228764, 29.230680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732876, 33.464218, 29.276806>,  <39.742435, 33.856644, 29.353683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732876, 33.464218, 29.276806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080812, -0.189722, 0.978507,
		-0.996443, 0.038919, -0.074748,
		-0.023901, -0.981066, -0.192192,
		39.725704, 33.169899, 29.219149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195953, 33.587582, 29.821960>,  <39.742435, 33.856644, 29.353683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195953, 33.587582, 29.821960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444454, 33.289497, 29.725042>,  <39.593555, 33.110645, 29.666891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444454, 33.289497, 29.725042>,  <39.195953, 33.587582, 29.821960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444454, 33.289497, 29.725042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118523, -0.395006, 0.911001,
		-0.774596, -0.537243, -0.333723,
		0.621251, -0.745211, -0.242294,
		39.630829, 33.065933, 29.652353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911552, 32.961132, 30.151051>,  <39.195953, 33.587582, 29.821960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911552, 32.961132, 30.151051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.289536, 32.861862, 30.065771>,  <39.516327, 32.802299, 30.014603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.289536, 32.861862, 30.065771>,  <38.911552, 32.961132, 30.151051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289536, 32.861862, 30.065771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120315, -0.342383, 0.931825,
		-0.304252, -0.906191, -0.293680,
		0.944963, -0.248176, -0.213199,
		39.573025, 32.787407, 30.001812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923363, 32.294289, 30.452538>,  <38.911552, 32.961132, 30.151051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923363, 32.294289, 30.452538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293465, 32.440208, 30.410936>,  <39.515526, 32.527760, 30.385975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293465, 32.440208, 30.410936>,  <38.923363, 32.294289, 30.452538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293465, 32.440208, 30.410936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213606, -0.274476, 0.937569,
		0.313480, -0.889709, -0.331885,
		0.925258, 0.364802, -0.104005,
		39.571041, 32.549648, 30.379734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295464, 31.898714, 31.002258>,  <38.923363, 32.294289, 30.452538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295464, 31.898714, 31.002258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544525, 32.199638, 30.916161>,  <39.693962, 32.380192, 30.864502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544525, 32.199638, 30.916161>,  <39.295464, 31.898714, 31.002258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544525, 32.199638, 30.916161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281612, 0.041200, 0.958643,
		0.730066, -0.657519, -0.186206,
		0.622655, 0.752310, -0.215244,
		39.731323, 32.425331, 30.851587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025211, 31.721432, 31.120420>,  <39.295464, 31.898714, 31.002258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025211, 31.721432, 31.120420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046787, 32.120110, 31.144724>,  <40.059734, 32.359318, 31.159306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046787, 32.120110, 31.144724>,  <40.025211, 31.721432, 31.120420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046787, 32.120110, 31.144724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413712, -0.077686, 0.907087,
		0.908808, -0.023796, -0.416535,
		0.053944, 0.996694, 0.060757,
		40.062969, 32.419117, 31.162951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708321, 31.904289, 31.405781>,  <40.025211, 31.721432, 31.120420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708321, 31.904289, 31.405781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496647, 32.241280, 31.446175>,  <40.369644, 32.443474, 31.470411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496647, 32.241280, 31.446175>,  <40.708321, 31.904289, 31.405781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496647, 32.241280, 31.446175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400505, 0.143085, 0.905054,
		0.748038, 0.519383, -0.413134,
		-0.529183, 0.842477, 0.100983,
		40.337891, 32.494022, 31.476469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197006, 32.356274, 31.440798>,  <40.708321, 31.904289, 31.405781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197006, 32.356274, 31.440798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.862560, 32.507603, 31.599686>,  <40.661892, 32.598400, 31.695019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.862560, 32.507603, 31.599686>,  <41.197006, 32.356274, 31.440798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862560, 32.507603, 31.599686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527278, 0.354562, 0.772181,
		0.151292, 0.855079, -0.495935,
		-0.836115, 0.378321, 0.397222,
		40.611725, 32.621098, 31.718853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471310, 32.985737, 31.766970>,  <41.197006, 32.356274, 31.440798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471310, 32.985737, 31.766970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112404, 32.913345, 31.928051>,  <40.897060, 32.869911, 32.024700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112404, 32.913345, 31.928051>,  <41.471310, 32.985737, 31.766970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112404, 32.913345, 31.928051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317516, 0.369253, 0.873405,
		-0.306766, 0.911537, -0.273852,
		-0.897261, -0.180979, 0.402702,
		40.843224, 32.859051, 32.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313248, 33.594719, 32.081078>,  <41.471310, 32.985737, 31.766970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313248, 33.594719, 32.081078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089432, 33.310425, 32.251617>,  <40.955143, 33.139851, 32.353943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089432, 33.310425, 32.251617>,  <41.313248, 33.594719, 32.081078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089432, 33.310425, 32.251617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244242, 0.350172, 0.904282,
		-0.791998, 0.610115, -0.022345,
		-0.559540, -0.710732, 0.426351,
		40.921570, 33.097206, 32.379524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014969, 33.907509, 32.668480>,  <41.313248, 33.594719, 32.081078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014969, 33.907509, 32.668480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999546, 33.516190, 32.749920>,  <40.990292, 33.281399, 32.798782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999546, 33.516190, 32.749920>,  <41.014969, 33.907509, 32.668480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999546, 33.516190, 32.749920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378965, 0.174214, 0.908865,
		-0.924608, 0.112203, 0.364021,
		-0.038560, -0.978295, 0.203600,
		40.987980, 33.222702, 32.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792801, 33.870285, 33.368477>,  <41.014969, 33.907509, 32.668480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792801, 33.870285, 33.368477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926613, 33.495590, 33.327267>,  <41.006901, 33.270775, 33.302540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926613, 33.495590, 33.327267>,  <40.792801, 33.870285, 33.368477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926613, 33.495590, 33.327267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219820, -0.028745, 0.975117,
		-0.916390, -0.348851, 0.196297,
		0.334528, -0.936737, -0.103026,
		41.026970, 33.214569, 33.296360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605007, 33.516483, 33.942059>,  <40.792801, 33.870285, 33.368477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605007, 33.516483, 33.942059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902451, 33.290142, 33.799587>,  <41.080917, 33.154339, 33.714104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902451, 33.290142, 33.799587>,  <40.605007, 33.516483, 33.942059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902451, 33.290142, 33.799587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325355, -0.159150, 0.932103,
		-0.584118, -0.809001, 0.065758,
		0.743606, -0.565852, -0.356175,
		41.125534, 33.120388, 33.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584435, 32.857201, 34.293877>,  <40.605007, 33.516483, 33.942059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584435, 32.857201, 34.293877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.949543, 32.936874, 34.151234>,  <41.168610, 32.984680, 34.065647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.949543, 32.936874, 34.151234>,  <40.584435, 32.857201, 34.293877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949543, 32.936874, 34.151234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382071, -0.107618, 0.917845,
		0.144446, -0.974035, -0.174334,
		0.912774, 0.199187, -0.356605,
		41.223377, 32.996632, 34.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005978, 32.327030, 34.617313>,  <40.584435, 32.857201, 34.293877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005978, 32.327030, 34.617313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234924, 32.627995, 34.486916>,  <41.372292, 32.808575, 34.408676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234924, 32.627995, 34.486916>,  <41.005978, 32.327030, 34.617313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234924, 32.627995, 34.486916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596724, -0.109514, 0.794938,
		0.562421, -0.649524, -0.511665,
		0.572366, 0.752413, -0.325994,
		41.406635, 32.853718, 34.389118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570721, 32.141720, 34.931229>,  <41.005978, 32.327030, 34.617313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570721, 32.141720, 34.931229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654766, 32.514881, 34.814243>,  <41.705193, 32.738777, 34.744053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654766, 32.514881, 34.814243>,  <41.570721, 32.141720, 34.931229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654766, 32.514881, 34.814243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690786, 0.070025, 0.719660,
		0.691856, -0.353242, -0.629726,
		0.210117, 0.932908, -0.292462,
		41.717800, 32.794754, 34.726505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351208, 32.136295, 34.846622>,  <41.570721, 32.141720, 34.931229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351208, 32.136295, 34.846622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227497, 32.505753, 34.937160>,  <42.153271, 32.727428, 34.991482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227497, 32.505753, 34.937160>,  <42.351208, 32.136295, 34.846622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227497, 32.505753, 34.937160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706428, 0.063801, 0.704903,
		0.636639, 0.377901, -0.672221,
		-0.309272, 0.923645, 0.226341,
		42.134716, 32.782845, 35.005062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983887, 32.544464, 34.938251>,  <42.351208, 32.136295, 34.846622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983887, 32.544464, 34.938251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684593, 32.672367, 35.170769>,  <42.505016, 32.749107, 35.310280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684593, 32.672367, 35.170769>,  <42.983887, 32.544464, 34.938251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684593, 32.672367, 35.170769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652809, 0.198700, 0.730999,
		0.118237, 0.926432, -0.357413,
		-0.748239, 0.319754, 0.581289,
		42.460121, 32.768291, 35.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313480, 33.069092, 35.358879>,  <42.983887, 32.544464, 34.938251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313480, 33.069092, 35.358879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991257, 32.965309, 35.571953>,  <42.797920, 32.903038, 35.699795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991257, 32.965309, 35.571953>,  <43.313480, 33.069092, 35.358879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991257, 32.965309, 35.571953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570251, -0.095388, 0.815914,
		-0.160885, 0.961032, 0.224798,
		-0.805562, -0.259460, 0.532683,
		42.749588, 32.887470, 35.731758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026100, 33.122890, 35.069675>,  <43.313480, 33.069092, 35.358879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026100, 33.122890, 35.069675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414654, 33.205631, 35.022972>,  <44.647785, 33.255276, 34.994949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414654, 33.205631, 35.022972>,  <44.026100, 33.122890, 35.069675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414654, 33.205631, 35.022972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161197, 0.213065, -0.963649,
		-0.174456, 0.954890, 0.240311,
		0.971381, 0.206852, -0.116755,
		44.706066, 33.267685, 34.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095028, 33.755100, 34.828682>,  <44.026100, 33.122890, 35.069675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095028, 33.755100, 34.828682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452232, 33.605686, 34.728279>,  <44.666553, 33.516037, 34.668037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452232, 33.605686, 34.728279>,  <44.095028, 33.755100, 34.828682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452232, 33.605686, 34.728279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249565, 0.053092, -0.966902,
		0.374495, 0.926097, -0.045808,
		0.893012, -0.373532, -0.251004,
		44.720135, 33.493626, 34.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241802, 34.065086, 34.242905>,  <44.095028, 33.755100, 34.828682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241802, 34.065086, 34.242905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492485, 33.753590, 34.231586>,  <44.642895, 33.566692, 34.224796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492485, 33.753590, 34.231586>,  <44.241802, 34.065086, 34.242905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492485, 33.753590, 34.231586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186630, -0.114748, -0.975706,
		0.756575, 0.616763, -0.217250,
		0.626709, -0.778740, -0.028291,
		44.680496, 33.519966, 34.223099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701012, 34.071205, 33.620319>,  <44.241802, 34.065086, 34.242905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701012, 34.071205, 33.620319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703201, 33.686821, 33.730976>,  <44.704514, 33.456192, 33.797371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703201, 33.686821, 33.730976>,  <44.701012, 34.071205, 33.620319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703201, 33.686821, 33.730976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235958, -0.270073, -0.933480,
		0.971748, -0.060167, -0.228224,
		0.005472, -0.960958, 0.276639,
		44.704842, 33.398533, 33.813969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062061, 33.730473, 33.068073>,  <44.701012, 34.071205, 33.620319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062061, 33.730473, 33.068073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872509, 33.435165, 33.260071>,  <44.758778, 33.257980, 33.375267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872509, 33.435165, 33.260071>,  <45.062061, 33.730473, 33.068073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872509, 33.435165, 33.260071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375284, -0.323785, -0.868519,
		0.796618, -0.591707, -0.123627,
		-0.473880, -0.738273, 0.479991,
		44.730347, 33.213684, 33.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200264, 33.090649, 32.638134>,  <45.062061, 33.730473, 33.068073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200264, 33.090649, 32.638134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879345, 33.026112, 32.868015>,  <44.686794, 32.987389, 33.005943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879345, 33.026112, 32.868015>,  <45.200264, 33.090649, 32.638134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879345, 33.026112, 32.868015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477358, -0.404632, -0.780002,
		0.358388, -0.900135, 0.247619,
		-0.802301, -0.161340, 0.574702,
		44.638653, 32.977711, 33.040424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046261, 32.392422, 32.602249>,  <45.200264, 33.090649, 32.638134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046261, 32.392422, 32.602249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711605, 32.587292, 32.702408>,  <44.510811, 32.704212, 32.762505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711605, 32.587292, 32.702408>,  <45.046261, 32.392422, 32.602249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711605, 32.587292, 32.702408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456470, -0.367415, -0.810334,
		-0.302770, -0.792258, 0.529772,
		-0.836639, 0.487169, 0.250400,
		44.460613, 32.733444, 32.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616367, 31.885698, 32.492329>,  <45.046261, 32.392422, 32.602249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616367, 31.885698, 32.492329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416031, 32.231392, 32.473328>,  <44.295830, 32.438808, 32.461926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416031, 32.231392, 32.473328>,  <44.616367, 31.885698, 32.492329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416031, 32.231392, 32.473328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522147, -0.345461, -0.779755,
		-0.690301, -0.365732, 0.624279,
		-0.500846, 0.864232, -0.047506,
		44.265778, 32.490662, 32.459076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964256, 31.650862, 32.268326>,  <44.616367, 31.885698, 32.492329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964256, 31.650862, 32.268326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932247, 32.043308, 32.197887>,  <43.913040, 32.278774, 32.155624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932247, 32.043308, 32.197887>,  <43.964256, 31.650862, 32.268326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932247, 32.043308, 32.197887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505997, -0.192191, -0.840851,
		-0.858815, 0.021818, 0.511821,
		-0.080022, 0.981115, -0.176096,
		43.908241, 32.337643, 32.145058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214371, 31.798903, 32.190994>,  <43.964256, 31.650862, 32.268326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214371, 31.798903, 32.190994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423286, 32.101280, 32.033127>,  <43.548634, 32.282707, 31.938406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423286, 32.101280, 32.033127>,  <43.214371, 31.798903, 32.190994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423286, 32.101280, 32.033127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362356, -0.222224, -0.905160,
		-0.771956, 0.615764, 0.157857,
		0.522285, 0.755944, -0.394673,
		43.579971, 32.328064, 31.914724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731365, 32.045631, 31.844076>,  <43.214371, 31.798903, 32.190994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731365, 32.045631, 31.844076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056503, 32.211952, 31.680912>,  <43.251587, 32.311745, 31.583014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056503, 32.211952, 31.680912>,  <42.731365, 32.045631, 31.844076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056503, 32.211952, 31.680912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455519, 0.017319, -0.890058,
		-0.363021, 0.909292, 0.203482,
		0.812846, 0.415799, -0.407913,
		43.300358, 32.336693, 31.558538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563076, 32.652008, 31.515114>,  <42.731365, 32.045631, 31.844076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563076, 32.652008, 31.515114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918362, 32.603210, 31.337940>,  <43.131535, 32.573933, 31.231636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918362, 32.603210, 31.337940>,  <42.563076, 32.652008, 31.515114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918362, 32.603210, 31.337940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433157, 0.098975, -0.895867,
		0.153128, 0.987584, 0.035070,
		0.888215, -0.121991, -0.442935,
		43.184826, 32.566612, 31.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704693, 33.228767, 31.039660>,  <42.563076, 32.652008, 31.515114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704693, 33.228767, 31.039660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921352, 32.917446, 30.912628>,  <43.051350, 32.730652, 30.836411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921352, 32.917446, 30.912628>,  <42.704693, 33.228767, 31.039660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921352, 32.917446, 30.912628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490576, 0.014106, -0.871284,
		0.682605, 0.627728, -0.374177,
		0.541652, -0.778305, -0.317577,
		43.083847, 32.683956, 30.817354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724171, 33.381763, 30.336651>,  <42.704693, 33.228767, 31.039660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724171, 33.381763, 30.336651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851173, 33.003571, 30.365623>,  <42.927376, 32.776653, 30.383007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851173, 33.003571, 30.365623>,  <42.724171, 33.381763, 30.336651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851173, 33.003571, 30.365623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347826, -0.187183, -0.918684,
		0.882159, 0.266500, -0.388297,
		0.317511, -0.945484, 0.072430,
		42.946426, 32.719925, 30.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125626, 33.231606, 29.721134>,  <42.724171, 33.381763, 30.336651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125626, 33.231606, 29.721134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975163, 32.882626, 29.845934>,  <42.884884, 32.673237, 29.920813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975163, 32.882626, 29.845934>,  <43.125626, 33.231606, 29.721134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975163, 32.882626, 29.845934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511966, -0.084948, -0.854795,
		0.772266, -0.481271, -0.414708,
		-0.376160, -0.872446, 0.311997,
		42.862316, 32.620892, 29.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229500, 32.762024, 29.182741>,  <43.125626, 33.231606, 29.721134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229500, 32.762024, 29.182741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940140, 32.606865, 29.411209>,  <42.766525, 32.513767, 29.548290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940140, 32.606865, 29.411209>,  <43.229500, 32.762024, 29.182741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940140, 32.606865, 29.411209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547185, -0.182402, -0.816895,
		0.421056, -0.903473, -0.080304,
		-0.723395, -0.387900, 0.571168,
		42.723122, 32.490494, 29.582560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095402, 32.137573, 28.830938>,  <43.229500, 32.762024, 29.182741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095402, 32.137573, 28.830938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762348, 32.229324, 29.032572>,  <42.562515, 32.284374, 29.153551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762348, 32.229324, 29.032572>,  <43.095402, 32.137573, 28.830938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762348, 32.229324, 29.032572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552816, -0.289522, -0.781391,
		-0.033291, -0.929281, 0.367871,
		-0.832638, 0.229379, 0.504083,
		42.512558, 32.298138, 29.183796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629906, 31.611128, 28.719719>,  <43.095402, 32.137573, 28.830938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629906, 31.611128, 28.719719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380642, 31.889818, 28.861843>,  <42.231083, 32.057034, 28.947117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380642, 31.889818, 28.861843>,  <42.629906, 31.611128, 28.719719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380642, 31.889818, 28.861843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701806, -0.297647, -0.647205,
		-0.345172, -0.652665, 0.674451,
		-0.623156, 0.696731, 0.355305,
		42.193695, 32.098835, 28.968435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089954, 31.280415, 28.959820>,  <42.629906, 31.611128, 28.719719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089954, 31.280415, 28.959820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980129, 31.656416, 28.878815>,  <41.914234, 31.882017, 28.830212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980129, 31.656416, 28.878815>,  <42.089954, 31.280415, 28.959820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980129, 31.656416, 28.878815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703871, -0.339956, -0.623695,
		-0.655121, -0.028698, 0.754979,
		-0.274559, 0.940004, -0.202513,
		41.897762, 31.938417, 28.818062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375378, 31.217508, 28.984299>,  <42.089954, 31.280415, 28.959820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375378, 31.217508, 28.984299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429516, 31.566618, 28.796705>,  <41.461998, 31.776083, 28.684149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429516, 31.566618, 28.796705>,  <41.375378, 31.217508, 28.984299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429516, 31.566618, 28.796705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731962, -0.230938, -0.641014,
		-0.667767, 0.430039, 0.607580,
		0.135348, 0.872774, -0.468985,
		41.470119, 31.828449, 28.656010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.314117, 36.721424, 39.360813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919464, 36.667549, 39.397511>,  <39.682671, 36.635223, 39.419529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919464, 36.667549, 39.397511>,  <40.314117, 36.721424, 39.360813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919464, 36.667549, 39.397511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009350, -0.515245, -0.856992,
		0.162697, -0.846393, 0.507098,
		-0.986632, -0.134689, 0.091742,
		39.623474, 36.627144, 39.425034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167561, 36.022865, 39.232079>,  <40.314117, 36.721424, 39.360813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167561, 36.022865, 39.232079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806679, 36.187546, 39.180649>,  <39.590149, 36.286354, 39.149792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806679, 36.187546, 39.180649>,  <40.167561, 36.022865, 39.232079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806679, 36.187546, 39.180649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138524, -0.558903, -0.817581,
		-0.408460, -0.719813, 0.561275,
		-0.902204, 0.411700, -0.128578,
		39.536018, 36.311054, 39.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725300, 35.507240, 39.029793>,  <40.167561, 36.022865, 39.232079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725300, 35.507240, 39.029793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529064, 35.837475, 38.918274>,  <39.411324, 36.035614, 38.851364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529064, 35.837475, 38.918274>,  <39.725300, 35.507240, 39.029793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529064, 35.837475, 38.918274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294492, -0.458201, -0.838645,
		-0.820120, -0.329327, 0.467918,
		-0.490589, 0.825588, -0.278795,
		39.381886, 36.085152, 38.834637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067448, 35.252499, 38.811466>,  <39.725300, 35.507240, 39.029793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067448, 35.252499, 38.811466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105114, 35.611797, 38.639755>,  <39.127712, 35.827377, 38.536728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105114, 35.611797, 38.639755>,  <39.067448, 35.252499, 38.811466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105114, 35.611797, 38.639755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379280, -0.366312, -0.849683,
		-0.920478, 0.242827, 0.306195,
		0.094163, 0.898249, -0.429282,
		39.133362, 35.881271, 38.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501152, 35.286121, 38.402237>,  <39.067448, 35.252499, 38.811466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501152, 35.286121, 38.402237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746468, 35.562721, 38.249550>,  <38.893658, 35.728683, 38.157940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746468, 35.562721, 38.249550>,  <38.501152, 35.286121, 38.402237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746468, 35.562721, 38.249550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220604, -0.314078, -0.923411,
		-0.758429, 0.650522, -0.040071,
		0.613285, 0.691502, -0.381714,
		38.930454, 35.770172, 38.135036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138374, 35.668167, 37.898041>,  <38.501152, 35.286121, 38.402237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138374, 35.668167, 37.898041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525902, 35.677769, 37.799404>,  <38.758419, 35.683529, 37.740223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525902, 35.677769, 37.799404>,  <38.138374, 35.668167, 37.898041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525902, 35.677769, 37.799404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236141, -0.211726, -0.948372,
		-0.074979, 0.977034, -0.199456,
		0.968822, 0.024008, -0.246593,
		38.816547, 35.684971, 37.725426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282314, 36.221581, 37.319546>,  <38.138374, 35.668167, 37.898041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282314, 36.221581, 37.319546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595341, 35.972801, 37.308495>,  <38.783157, 35.823532, 37.301865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595341, 35.972801, 37.308495>,  <38.282314, 36.221581, 37.319546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595341, 35.972801, 37.308495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201388, -0.210899, -0.956538,
		0.589093, 0.754121, -0.290296,
		0.782568, -0.621951, -0.027632,
		38.830112, 35.786217, 37.300205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689754, 36.297680, 36.647621>,  <38.282314, 36.221581, 37.319546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689754, 36.297680, 36.647621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812138, 35.929890, 36.746380>,  <38.885567, 35.709217, 36.805637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812138, 35.929890, 36.746380>,  <38.689754, 36.297680, 36.647621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812138, 35.929890, 36.746380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227616, -0.322459, -0.918810,
		0.924437, 0.224915, -0.307945,
		0.305954, -0.919474, 0.246899,
		38.903923, 35.654049, 36.820450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947639, 36.077316, 35.996723>,  <38.689754, 36.297680, 36.647621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947639, 36.077316, 35.996723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957798, 35.731369, 36.197266>,  <38.963894, 35.523800, 36.317593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957798, 35.731369, 36.197266>,  <38.947639, 36.077316, 35.996723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957798, 35.731369, 36.197266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255480, -0.490479, -0.833162,
		0.966481, -0.106926, -0.233414,
		0.025398, -0.864868, 0.501356,
		38.965416, 35.471909, 36.347672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268276, 35.668758, 35.580372>,  <38.947639, 36.077316, 35.996723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268276, 35.668758, 35.580372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058456, 35.427605, 35.820831>,  <38.932564, 35.282913, 35.965107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058456, 35.427605, 35.820831>,  <39.268276, 35.668758, 35.580372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058456, 35.427605, 35.820831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226187, -0.582031, -0.781076,
		0.820785, -0.545685, 0.168940,
		-0.524549, -0.602883, 0.601149,
		38.901093, 35.246738, 36.001175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436535, 34.858715, 35.426384>,  <39.268276, 35.668758, 35.580372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436535, 34.858715, 35.426384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086941, 34.861881, 35.620735>,  <38.877182, 34.863781, 35.737347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086941, 34.861881, 35.620735>,  <39.436535, 34.858715, 35.426384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086941, 34.861881, 35.620735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263304, -0.848089, -0.459799,
		0.408430, -0.529794, 0.743306,
		-0.873989, 0.007919, 0.485881,
		38.824745, 34.864258, 35.766499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311382, 34.168514, 35.768459>,  <39.436535, 34.858715, 35.426384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311382, 34.168514, 35.768459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968231, 34.357910, 35.688610>,  <38.762341, 34.471546, 35.640701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968231, 34.357910, 35.688610>,  <39.311382, 34.168514, 35.768459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968231, 34.357910, 35.688610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311535, -0.788204, -0.530736,
		-0.408638, -0.393120, 0.823694,
		-0.857881, 0.473489, -0.199619,
		38.710865, 34.499958, 35.628723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280334, 34.596619, 36.457100>,  <39.311382, 34.168514, 35.768459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280334, 34.596619, 36.457100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490681, 34.770271, 36.164524>,  <39.616886, 34.874462, 35.988979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490681, 34.770271, 36.164524>,  <39.280334, 34.596619, 36.457100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490681, 34.770271, 36.164524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094018, -0.884335, -0.457289,
		-0.845358, 0.171702, -0.505854,
		0.525861, 0.434132, -0.731436,
		39.648438, 34.900513, 35.945091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083591, 33.806255, 36.545444>,  <39.280334, 34.596619, 36.457100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083591, 33.806255, 36.545444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054737, 33.473221, 36.325775>,  <39.037426, 33.273399, 36.193974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054737, 33.473221, 36.325775>,  <39.083591, 33.806255, 36.545444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054737, 33.473221, 36.325775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222401, -0.523322, 0.822601,
		-0.972283, 0.181475, -0.147418,
		-0.072134, -0.832587, -0.549177,
		39.033096, 33.223446, 36.161022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375755, 33.574924, 36.592709>,  <39.083591, 33.806255, 36.545444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375755, 33.574924, 36.592709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645611, 33.280167, 36.575542>,  <38.807526, 33.103310, 36.565243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645611, 33.280167, 36.575542>,  <38.375755, 33.574924, 36.592709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645611, 33.280167, 36.575542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297971, -0.325064, 0.897523,
		-0.675333, -0.592718, -0.438875,
		0.674640, -0.736898, -0.042914,
		38.848003, 33.059097, 36.562668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080116, 32.955166, 36.573242>,  <38.375755, 33.574924, 36.592709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080116, 32.955166, 36.573242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438095, 32.890823, 36.739712>,  <38.652882, 32.852219, 36.839592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438095, 32.890823, 36.739712>,  <38.080116, 32.955166, 36.573242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438095, 32.890823, 36.739712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445912, -0.290282, 0.846699,
		-0.015389, -0.943325, -0.331514,
		0.894945, -0.160856, 0.416173,
		38.706577, 32.842567, 36.864563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005623, 32.385361, 37.006714>,  <38.080116, 32.955166, 36.573242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005623, 32.385361, 37.006714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332348, 32.554966, 37.163189>,  <38.528385, 32.656727, 37.257072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332348, 32.554966, 37.163189>,  <38.005623, 32.385361, 37.006714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332348, 32.554966, 37.163189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330291, -0.212242, 0.919707,
		0.472993, -0.880436, -0.033315,
		0.816814, 0.424012, 0.391189,
		38.577393, 32.682171, 37.280544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039951, 32.101307, 37.624413>,  <38.005623, 32.385361, 37.006714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039951, 32.101307, 37.624413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310940, 32.390148, 37.680405>,  <38.473534, 32.563454, 37.714001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310940, 32.390148, 37.680405>,  <38.039951, 32.101307, 37.624413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310940, 32.390148, 37.680405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140089, -0.060160, 0.988310,
		0.722085, -0.689162, 0.060402,
		0.677472, 0.722106, 0.139984,
		38.514183, 32.606781, 37.722401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469681, 31.854887, 38.185505>,  <38.039951, 32.101307, 37.624413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469681, 31.854887, 38.185505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525864, 32.250019, 38.158791>,  <38.559574, 32.487099, 38.142761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525864, 32.250019, 38.158791>,  <38.469681, 31.854887, 38.185505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525864, 32.250019, 38.158791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142973, 0.086982, 0.985897,
		0.979710, -0.128926, 0.153450,
		0.140455, 0.987832, -0.066784,
		38.568001, 32.546368, 38.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912350, 31.935242, 38.679043>,  <38.469681, 31.854887, 38.185505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912350, 31.935242, 38.679043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752472, 32.296459, 38.616104>,  <38.656544, 32.513187, 38.578339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752472, 32.296459, 38.616104>,  <38.912350, 31.935242, 38.679043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752472, 32.296459, 38.616104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070888, 0.140693, 0.987512,
		0.913903, 0.405859, 0.007780,
		-0.399696, 0.903041, -0.157351,
		38.632565, 32.567371, 38.568897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261406, 32.424023, 39.169262>,  <38.912350, 31.935242, 38.679043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261406, 32.424023, 39.169262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904503, 32.582901, 39.083370>,  <38.690361, 32.678230, 39.031834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904503, 32.582901, 39.083370>,  <39.261406, 32.424023, 39.169262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904503, 32.582901, 39.083370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085146, 0.319023, 0.943915,
		0.443426, 0.860498, -0.250831,
		-0.892258, 0.397199, -0.214731,
		38.636826, 32.702061, 39.018951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190952, 33.106419, 39.441784>,  <39.261406, 32.424023, 39.169262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190952, 33.106419, 39.441784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811913, 32.980141, 39.422199>,  <38.584488, 32.904373, 39.410446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811913, 32.980141, 39.422199>,  <39.190952, 33.106419, 39.441784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811913, 32.980141, 39.422199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084172, 0.098860, 0.991535,
		-0.308182, 0.943697, -0.120253,
		-0.947597, -0.315695, -0.048966,
		38.527634, 32.885433, 39.407509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910542, 33.596680, 39.810394>,  <39.190952, 33.106419, 39.441784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910542, 33.596680, 39.810394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630398, 33.312206, 39.785988>,  <38.462311, 33.141521, 39.771343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630398, 33.312206, 39.785988>,  <38.910542, 33.596680, 39.810394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630398, 33.312206, 39.785988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263006, 0.177647, 0.948298,
		-0.663574, 0.680192, -0.311461,
		-0.700355, -0.711182, -0.061013,
		38.420292, 33.098850, 39.767685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316021, 33.841663, 40.047485>,  <38.910542, 33.596680, 39.810394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316021, 33.841663, 40.047485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259953, 33.448589, 40.095951>,  <38.226311, 33.212746, 40.125031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259953, 33.448589, 40.095951>,  <38.316021, 33.841663, 40.047485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259953, 33.448589, 40.095951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269387, 0.155607, 0.950377,
		-0.952776, 0.100576, -0.286534,
		-0.140171, -0.982686, 0.121165,
		38.217899, 33.153782, 40.132301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615623, 33.689236, 40.501137>,  <38.316021, 33.841663, 40.047485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615623, 33.689236, 40.501137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827667, 33.350525, 40.518818>,  <37.954895, 33.147301, 40.529427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827667, 33.350525, 40.518818>,  <37.615623, 33.689236, 40.501137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827667, 33.350525, 40.518818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134253, -0.032341, 0.990419,
		-0.837233, -0.530967, -0.130826,
		0.530111, -0.846775, 0.044207,
		37.986702, 33.096493, 40.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139214, 33.126595, 40.770210>,  <37.615623, 33.689236, 40.501137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139214, 33.126595, 40.770210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526699, 33.045517, 40.827496>,  <37.759190, 32.996872, 40.861866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526699, 33.045517, 40.827496>,  <37.139214, 33.126595, 40.770210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526699, 33.045517, 40.827496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165468, -0.097378, 0.981396,
		-0.184977, -0.974388, -0.127871,
		0.968712, -0.202694, 0.143217,
		37.817314, 32.984711, 40.870461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123199, 32.591866, 41.286671>,  <37.139214, 33.126595, 40.770210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123199, 32.591866, 41.286671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482754, 32.766464, 41.302052>,  <37.698486, 32.871223, 41.311279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482754, 32.766464, 41.302052>,  <37.123199, 32.591866, 41.286671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482754, 32.766464, 41.302052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059160, 0.033952, 0.997671,
		0.434175, -0.899065, 0.056342,
		0.898884, 0.436497, 0.038448,
		37.752419, 32.897411, 41.313587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352104, 32.341488, 41.869843>,  <37.123199, 32.591866, 41.286671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352104, 32.341488, 41.869843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576138, 32.661888, 41.785259>,  <37.710556, 32.854126, 41.734509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576138, 32.661888, 41.785259>,  <37.352104, 32.341488, 41.869843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576138, 32.661888, 41.785259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045032, 0.225435, 0.973217,
		0.827215, -0.554601, 0.090191,
		0.560079, 0.800998, -0.211458,
		37.744160, 32.902187, 41.721821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089771, 31.922056, 42.424492>,  <37.352104, 32.341488, 41.869843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089771, 31.922056, 42.424492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717144, 32.017815, 42.533943>,  <36.493568, 32.075268, 42.599613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717144, 32.017815, 42.533943>,  <37.089771, 31.922056, 42.424492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717144, 32.017815, 42.533943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335307, -0.274815, -0.901136,
		-0.140531, -0.931218, 0.336279,
		-0.931569, 0.239394, 0.273624,
		36.437672, 32.089634, 42.616032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735382, 31.446234, 42.110584>,  <37.089771, 31.922056, 42.424492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735382, 31.446234, 42.110584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460361, 31.728079, 42.180775>,  <36.295349, 31.897186, 42.222889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460361, 31.728079, 42.180775>,  <36.735382, 31.446234, 42.110584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460361, 31.728079, 42.180775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426503, -0.196293, -0.882929,
		-0.587677, -0.681903, 0.435481,
		-0.687554, 0.704612, 0.175477,
		36.254097, 31.939463, 42.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077141, 31.129440, 42.041050>,  <36.735382, 31.446234, 42.110584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077141, 31.129440, 42.041050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003689, 31.521404, 42.009914>,  <35.959618, 31.756582, 41.991234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003689, 31.521404, 42.009914>,  <36.077141, 31.129440, 42.041050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003689, 31.521404, 42.009914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589746, -0.173170, -0.788804,
		-0.786435, -0.098944, 0.609697,
		-0.183628, 0.979909, -0.077835,
		35.948601, 31.815376, 41.986565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447483, 31.081688, 41.800537>,  <36.077141, 31.129440, 42.041050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447483, 31.081688, 41.800537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545380, 31.454691, 41.694305>,  <35.604118, 31.678493, 41.630566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545380, 31.454691, 41.694305>,  <35.447483, 31.081688, 41.800537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545380, 31.454691, 41.694305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546447, -0.093609, -0.832246,
		-0.800936, 0.348810, 0.486655,
		0.244741, 0.932507, -0.265581,
		35.618801, 31.734444, 41.614632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805759, 31.469406, 41.691936>,  <35.447483, 31.081688, 41.800537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805759, 31.469406, 41.691936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073902, 31.645638, 41.453102>,  <35.234787, 31.751375, 41.309803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073902, 31.645638, 41.453102>,  <34.805759, 31.469406, 41.691936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073902, 31.645638, 41.453102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657164, -0.021192, -0.753449,
		-0.344606, 0.897465, 0.275325,
		0.670360, 0.440577, -0.597085,
		35.275009, 31.777811, 41.273975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392063, 31.870687, 41.308910>,  <34.805759, 31.469406, 41.691936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392063, 31.870687, 41.308910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740692, 31.873072, 41.112816>,  <34.949867, 31.874502, 40.995159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740692, 31.873072, 41.112816>,  <34.392063, 31.870687, 41.308910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740692, 31.873072, 41.112816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487204, 0.122218, -0.864693,
		0.054763, 0.992485, 0.109424,
		0.871569, 0.005958, -0.490236,
		35.002163, 31.874859, 40.965744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220116, 32.318619, 40.879169>,  <34.392063, 31.870687, 41.308910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220116, 32.318619, 40.879169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544796, 32.148357, 40.719185>,  <34.739605, 32.046200, 40.623196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544796, 32.148357, 40.719185>,  <34.220116, 32.318619, 40.879169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544796, 32.148357, 40.719185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409544, 0.073467, -0.909328,
		0.416438, 0.901901, -0.114690,
		0.811698, -0.425649, -0.399962,
		34.788303, 32.020664, 40.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508930, 32.852394, 40.386009>,  <34.220116, 32.318619, 40.879169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508930, 32.852394, 40.386009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625374, 32.482262, 40.288834>,  <34.695240, 32.260181, 40.230530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625374, 32.482262, 40.288834>,  <34.508930, 32.852394, 40.386009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625374, 32.482262, 40.288834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404256, 0.111173, -0.907865,
		0.867084, 0.362494, -0.341708,
		0.291107, -0.925332, -0.242937,
		34.712708, 32.204662, 40.215954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725300, 32.956726, 39.781651>,  <34.508930, 32.852394, 40.386009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725300, 32.956726, 39.781651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664986, 32.561394, 39.790222>,  <34.628796, 32.324192, 39.795364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664986, 32.561394, 39.790222>,  <34.725300, 32.956726, 39.781651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664986, 32.561394, 39.790222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393526, 0.040128, -0.918437,
		0.906864, -0.146917, -0.394986,
		-0.150784, -0.988335, 0.021426,
		34.619751, 32.264893, 39.796650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955982, 32.673260, 39.117016>,  <34.725300, 32.956726, 39.781651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955982, 32.673260, 39.117016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699291, 32.393295, 39.242435>,  <34.545277, 32.225319, 39.317688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699291, 32.393295, 39.242435>,  <34.955982, 32.673260, 39.117016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699291, 32.393295, 39.242435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496866, 0.067978, -0.865161,
		0.584220, -0.710989, -0.391385,
		-0.641725, -0.699910, 0.313552,
		34.506775, 32.183323, 39.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954521, 32.289951, 38.578938>,  <34.955982, 32.673260, 39.117016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954521, 32.289951, 38.578938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631584, 32.152199, 38.770607>,  <34.437824, 32.069550, 38.885609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631584, 32.152199, 38.770607>,  <34.954521, 32.289951, 38.578938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631584, 32.152199, 38.770607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512525, 0.006805, -0.858645,
		0.292439, -0.938806, -0.181997,
		-0.807340, -0.344379, 0.479172,
		34.389381, 32.048885, 38.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745617, 31.669294, 38.246925>,  <34.954521, 32.289951, 38.578938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745617, 31.669294, 38.246925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412262, 31.804926, 38.421509>,  <34.212250, 31.886305, 38.526260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412262, 31.804926, 38.421509>,  <34.745617, 31.669294, 38.246925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412262, 31.804926, 38.421509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495015, -0.106681, -0.862310,
		-0.245831, -0.934689, 0.256756,
		-0.833383, 0.339081, 0.436460,
		34.162247, 31.906649, 38.552448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.682926, 32.024075, 46.238327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406921, 32.313286, 46.224960>,  <37.241318, 32.486813, 46.216942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406921, 32.313286, 46.224960>,  <37.682926, 32.024075, 46.238327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406921, 32.313286, 46.224960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316180, -0.342631, -0.884666,
		-0.651087, -0.599864, 0.465025,
		-0.690012, 0.723026, -0.033418,
		37.199917, 32.530193, 46.214935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030663, 31.684994, 45.977665>,  <37.682926, 32.024075, 46.238327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030663, 31.684994, 45.977665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995148, 32.079231, 45.920090>,  <36.973839, 32.315773, 45.885544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995148, 32.079231, 45.920090>,  <37.030663, 31.684994, 45.977665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995148, 32.079231, 45.920090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520690, -0.169120, -0.836828,
		-0.849116, 0.000647, 0.528205,
		-0.088788, 0.985595, -0.143940,
		36.968510, 32.374908, 45.876907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358109, 31.730471, 45.695435>,  <37.030663, 31.684994, 45.977665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358109, 31.730471, 45.695435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572483, 32.057659, 45.611820>,  <36.701107, 32.253971, 45.561649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572483, 32.057659, 45.611820>,  <36.358109, 31.730471, 45.695435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572483, 32.057659, 45.611820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324741, -0.028826, -0.945363,
		-0.779305, 0.574538, 0.250180,
		0.535935, 0.817970, -0.209040,
		36.733265, 32.303051, 45.549107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984413, 32.107933, 45.418602>,  <36.358109, 31.730471, 45.695435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984413, 32.107933, 45.418602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323555, 32.268818, 45.280403>,  <36.527039, 32.365349, 45.197483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323555, 32.268818, 45.280403>,  <35.984413, 32.107933, 45.418602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323555, 32.268818, 45.280403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364909, -0.030132, -0.930556,
		-0.384693, 0.915050, 0.121224,
		0.847852, 0.402213, -0.345501,
		36.577911, 32.389481, 45.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814335, 32.686131, 44.873310>,  <35.984413, 32.107933, 45.418602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814335, 32.686131, 44.873310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.203533, 32.605858, 44.827682>,  <36.437050, 32.557693, 44.800304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.203533, 32.605858, 44.827682>,  <35.814335, 32.686131, 44.873310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203533, 32.605858, 44.827682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111019, 0.026428, -0.993467,
		0.202387, 0.979300, 0.003434,
		0.972993, -0.200683, -0.114070,
		36.495430, 32.545654, 44.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051060, 33.071049, 44.313271>,  <35.814335, 32.686131, 44.873310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051060, 33.071049, 44.313271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.359467, 32.816368, 44.308392>,  <36.544510, 32.663559, 44.305466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.359467, 32.816368, 44.308392>,  <36.051060, 33.071049, 44.313271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359467, 32.816368, 44.308392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154022, -0.167865, -0.973704,
		0.617909, 0.752619, -0.227493,
		0.771016, -0.636699, -0.012194,
		36.590771, 32.625359, 44.304733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521030, 33.314186, 43.797428>,  <36.051060, 33.071049, 44.313271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521030, 33.314186, 43.797428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568485, 32.918446, 43.831169>,  <36.596958, 32.681004, 43.851414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568485, 32.918446, 43.831169>,  <36.521030, 33.314186, 43.797428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568485, 32.918446, 43.831169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226132, -0.109641, -0.967907,
		0.966845, 0.095756, -0.236731,
		0.118638, -0.989348, 0.084352,
		36.604076, 32.621639, 43.856476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889076, 33.118141, 43.195847>,  <36.521030, 33.314186, 43.797428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889076, 33.118141, 43.195847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697872, 32.791035, 43.324074>,  <36.583149, 32.594772, 43.401009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697872, 32.791035, 43.324074>,  <36.889076, 33.118141, 43.195847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697872, 32.791035, 43.324074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198400, -0.255006, -0.946366,
		0.855651, -0.515978, -0.040349,
		-0.478015, -0.817765, 0.320566,
		36.554466, 32.545704, 43.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160301, 32.579510, 42.813171>,  <36.889076, 33.118141, 43.195847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160301, 32.579510, 42.813171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795757, 32.469486, 42.935658>,  <36.577030, 32.403473, 43.009151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795757, 32.469486, 42.935658>,  <37.160301, 32.579510, 42.813171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795757, 32.469486, 42.935658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277304, -0.139497, -0.950601,
		0.304188, -0.951253, 0.050857,
		-0.911358, -0.275059, 0.306220,
		36.522350, 32.386971, 43.027523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938221, 32.413937, 42.594059>,  <37.160301, 32.579510, 42.813171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938221, 32.413937, 42.594059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987198, 32.750092, 42.382870>,  <38.016586, 32.951786, 42.256157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987198, 32.750092, 42.382870>,  <37.938221, 32.413937, 42.594059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987198, 32.750092, 42.382870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170378, 0.506282, 0.845370,
		0.977741, -0.193468, -0.081191,
		0.122446, 0.840386, -0.527975,
		38.023933, 33.002209, 42.224476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647167, 32.802235, 42.758514>,  <37.938221, 32.413937, 42.594059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647167, 32.802235, 42.758514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376846, 33.053272, 42.603897>,  <38.214653, 33.203896, 42.511127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376846, 33.053272, 42.603897>,  <38.647167, 32.802235, 42.758514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376846, 33.053272, 42.603897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235333, 0.680693, 0.693740,
		0.698506, 0.377864, -0.607708,
		-0.675802, 0.627595, -0.386544,
		38.174107, 33.241550, 42.487934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991444, 33.495857, 42.720772>,  <38.647167, 32.802235, 42.758514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991444, 33.495857, 42.720772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609379, 33.586086, 42.644054>,  <38.380138, 33.640224, 42.598026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609379, 33.586086, 42.644054>,  <38.991444, 33.495857, 42.720772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609379, 33.586086, 42.644054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099006, 0.853792, 0.511113,
		0.279043, 0.469207, -0.837842,
		-0.955161, 0.225574, -0.191791,
		38.322830, 33.653759, 42.586517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983124, 34.226391, 42.499905>,  <38.991444, 33.495857, 42.720772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983124, 34.226391, 42.499905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619801, 34.179245, 42.660442>,  <38.401806, 34.150955, 42.756767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619801, 34.179245, 42.660442>,  <38.983124, 34.226391, 42.499905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619801, 34.179245, 42.660442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085317, 0.887109, 0.453607,
		-0.409505, 0.446258, -0.795714,
		-0.908310, -0.117866, 0.401349,
		38.347309, 34.143887, 42.780846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508091, 34.844772, 42.382996>,  <38.983124, 34.226391, 42.499905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508091, 34.844772, 42.382996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402115, 34.667130, 42.725357>,  <38.338528, 34.560543, 42.930775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402115, 34.667130, 42.725357>,  <38.508091, 34.844772, 42.382996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402115, 34.667130, 42.725357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013675, 0.889268, 0.457182,
		-0.964168, 0.109421, -0.241676,
		-0.264940, -0.444105, 0.855907,
		38.322632, 34.533897, 42.982128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246460, 35.365494, 42.888725>,  <38.508091, 34.844772, 42.382996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246460, 35.365494, 42.888725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262894, 35.054302, 43.139500>,  <38.272755, 34.867588, 43.289967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262894, 35.054302, 43.139500>,  <38.246460, 35.365494, 42.888725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262894, 35.054302, 43.139500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242787, 0.616437, 0.749039,
		-0.969209, 0.121439, 0.214211,
		0.041085, -0.777983, 0.626940,
		38.275219, 34.820908, 43.327583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722279, 35.532036, 43.549271>,  <38.246460, 35.365494, 42.888725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722279, 35.532036, 43.549271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030704, 35.283276, 43.603970>,  <38.215759, 35.134022, 43.636791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030704, 35.283276, 43.603970>,  <37.722279, 35.532036, 43.549271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030704, 35.283276, 43.603970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209308, 0.450372, 0.867961,
		-0.601372, -0.640632, 0.477434,
		0.771066, -0.621898, 0.136752,
		38.262024, 35.096706, 43.644997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750816, 35.487442, 44.341042>,  <37.722279, 35.532036, 43.549271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750816, 35.487442, 44.341042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093212, 35.318039, 44.222431>,  <38.298649, 35.216396, 44.151264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093212, 35.318039, 44.222431>,  <37.750816, 35.487442, 44.341042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093212, 35.318039, 44.222431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464318, 0.377530, 0.801174,
		-0.227354, -0.823477, 0.519803,
		0.855990, -0.423504, -0.296522,
		38.350010, 35.190987, 44.133476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259636, 35.226601, 45.007233>,  <37.750816, 35.487442, 44.341042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259636, 35.226601, 45.007233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491871, 35.284885, 44.686810>,  <38.631210, 35.319855, 44.494556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491871, 35.284885, 44.686810>,  <38.259636, 35.226601, 45.007233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491871, 35.284885, 44.686810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713110, 0.383807, 0.586658,
		0.392941, -0.911842, 0.118913,
		0.580579, 0.145724, -0.801057,
		38.666046, 35.328598, 44.446491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003487, 34.987461, 45.168125>,  <38.259636, 35.226601, 45.007233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003487, 34.987461, 45.168125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049614, 35.244305, 44.864971>,  <39.077290, 35.398411, 44.683079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049614, 35.244305, 44.864971>,  <39.003487, 34.987461, 45.168125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049614, 35.244305, 44.864971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772784, 0.421380, 0.474598,
		0.624104, -0.640414, -0.447621,
		0.115321, 0.642113, -0.757887,
		39.084209, 35.436939, 44.637604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682343, 34.969032, 44.935139>,  <39.003487, 34.987461, 45.168125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682343, 34.969032, 44.935139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548737, 35.323860, 44.807671>,  <39.468575, 35.536755, 44.731190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548737, 35.323860, 44.807671>,  <39.682343, 34.969032, 44.935139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548737, 35.323860, 44.807671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772761, 0.451294, 0.446289,
		0.539700, -0.097187, -0.836229,
		-0.334011, 0.887068, -0.318666,
		39.448532, 35.589981, 44.712070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284740, 35.448765, 44.882626>,  <39.682343, 34.969032, 44.935139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284740, 35.448765, 44.882626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967953, 35.692253, 44.901546>,  <39.777878, 35.838348, 44.912899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967953, 35.692253, 44.901546>,  <40.284740, 35.448765, 44.882626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967953, 35.692253, 44.901546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507543, 0.613309, 0.605187,
		0.339383, 0.503297, -0.794677,
		-0.791971, 0.608723, 0.047298,
		39.730362, 35.874870, 44.915737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564060, 36.098766, 44.810806>,  <40.284740, 35.448765, 44.882626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564060, 36.098766, 44.810806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202362, 36.162567, 44.969254>,  <39.985344, 36.200848, 45.064320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202362, 36.162567, 44.969254>,  <40.564060, 36.098766, 44.810806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202362, 36.162567, 44.969254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362440, 0.777167, 0.514439,
		-0.225795, 0.608746, -0.760556,
		-0.904242, 0.159498, 0.396115,
		39.931091, 36.210415, 45.088089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631470, 36.690166, 44.854370>,  <40.564060, 36.098766, 44.810806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631470, 36.690166, 44.854370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306507, 36.630836, 45.079937>,  <40.111530, 36.595238, 45.215275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306507, 36.630836, 45.079937>,  <40.631470, 36.690166, 44.854370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306507, 36.630836, 45.079937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202952, 0.834704, 0.511936,
		-0.546634, 0.530347, -0.648015,
		-0.812405, -0.148326, 0.563913,
		40.062786, 36.586338, 45.249111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.425095, 38.608002, 45.098396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773380, 38.421562, 45.035648>,  <32.982353, 38.309700, 44.998001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773380, 38.421562, 45.035648>,  <32.425095, 38.608002, 45.098396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773380, 38.421562, 45.035648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256618, -0.158500, -0.953428,
		0.419525, 0.870421, -0.257617,
		0.870716, -0.466096, -0.156871,
		33.034595, 38.281734, 44.988586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692554, 38.815620, 44.452126>,  <32.425095, 38.608002, 45.098396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692554, 38.815620, 44.452126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924095, 38.493961, 44.506203>,  <33.063019, 38.300964, 44.538651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924095, 38.493961, 44.506203>,  <32.692554, 38.815620, 44.452126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924095, 38.493961, 44.506203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028721, -0.145586, -0.988929,
		0.814929, 0.576323, -0.061176,
		0.578848, -0.804150, 0.135195,
		33.097748, 38.252716, 44.546761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251125, 38.903065, 43.991795>,  <32.692554, 38.815620, 44.452126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251125, 38.903065, 43.991795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250469, 38.518867, 44.103107>,  <33.250076, 38.288349, 44.169895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250469, 38.518867, 44.103107>,  <33.251125, 38.903065, 43.991795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250469, 38.518867, 44.103107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042434, -0.278102, -0.959614,
		0.999098, 0.010237, 0.041214,
		-0.001638, -0.960497, 0.278286,
		33.249977, 38.230717, 44.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918232, 38.564770, 43.729324>,  <33.251125, 38.903065, 43.991795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918232, 38.564770, 43.729324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617210, 38.304546, 43.770210>,  <33.436600, 38.148415, 43.794743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617210, 38.304546, 43.770210>,  <33.918232, 38.564770, 43.729324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617210, 38.304546, 43.770210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003632, -0.159318, -0.987221,
		0.658526, -0.742561, 0.122258,
		-0.752550, -0.650554, 0.102218,
		33.391445, 38.109379, 43.800877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105732, 37.945312, 43.429806>,  <33.918232, 38.564770, 43.729324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105732, 37.945312, 43.429806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705803, 37.941616, 43.423313>,  <33.465843, 37.939400, 43.419418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705803, 37.941616, 43.423313>,  <34.105732, 37.945312, 43.429806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705803, 37.941616, 43.423313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017103, -0.104032, -0.994427,
		0.007504, -0.994531, 0.104172,
		-0.999826, -0.009244, -0.016229,
		33.405857, 37.938843, 43.418446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963440, 37.415607, 42.951988>,  <34.105732, 37.945312, 43.429806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963440, 37.415607, 42.951988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627605, 37.630886, 42.981461>,  <33.426105, 37.760056, 42.999142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627605, 37.630886, 42.981461>,  <33.963440, 37.415607, 42.951988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627605, 37.630886, 42.981461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116417, -0.045788, -0.992144,
		-0.530598, -0.841573, 0.101099,
		-0.839591, 0.538200, 0.073678,
		33.375729, 37.792347, 43.003563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479706, 36.986809, 42.586987>,  <33.963440, 37.415607, 42.951988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479706, 36.986809, 42.586987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330219, 37.357033, 42.611259>,  <33.240528, 37.579166, 42.625824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330219, 37.357033, 42.611259>,  <33.479706, 36.986809, 42.586987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330219, 37.357033, 42.611259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108308, 0.021428, -0.993886,
		-0.921198, -0.378005, 0.092237,
		-0.373717, 0.925556, 0.060680,
		33.218105, 37.634701, 42.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886852, 36.966198, 42.107265>,  <33.479706, 36.986809, 42.586987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886852, 36.966198, 42.107265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934082, 37.359943, 42.159542>,  <32.962421, 37.596191, 42.190910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934082, 37.359943, 42.159542>,  <32.886852, 36.966198, 42.107265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934082, 37.359943, 42.159542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012148, 0.130173, -0.991417,
		-0.992930, 0.118651, 0.003413,
		0.118076, 0.984366, 0.130694,
		32.969505, 37.655254, 42.198750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392921, 37.304138, 41.628048>,  <32.886852, 36.966198, 42.107265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392921, 37.304138, 41.628048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687851, 37.563103, 41.705208>,  <32.864811, 37.718483, 41.751503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687851, 37.563103, 41.705208>,  <32.392921, 37.304138, 41.628048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687851, 37.563103, 41.705208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116955, 0.158897, -0.980343,
		-0.665337, 0.745392, 0.041441,
		0.737325, 0.647412, 0.192898,
		32.909050, 37.757328, 41.763077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316292, 37.968674, 41.236160>,  <32.392921, 37.304138, 41.628048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316292, 37.968674, 41.236160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 37.925419, 41.310646>,  <32.941280, 37.899467, 41.355335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 37.925419, 41.310646>,  <32.316292, 37.968674, 41.236160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706909, 37.925419, 41.310646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205154, 0.204505, -0.957126,
		0.065418, 0.972874, 0.221892,
		0.976541, -0.108136, 0.186210,
		32.999870, 37.892979, 41.366508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601990, 38.481422, 40.866199>,  <32.316292, 37.968674, 41.236160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601990, 38.481422, 40.866199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905109, 38.232124, 40.943459>,  <33.086983, 38.082546, 40.989815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905109, 38.232124, 40.943459>,  <32.601990, 38.481422, 40.866199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905109, 38.232124, 40.943459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368305, 0.164222, -0.915086,
		0.538603, 0.764590, 0.353991,
		0.757798, -0.623245, 0.193152,
		33.132450, 38.045151, 41.001404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101936, 38.827095, 40.458923>,  <32.601990, 38.481422, 40.866199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101936, 38.827095, 40.458923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243690, 38.464649, 40.551323>,  <33.328743, 38.247181, 40.606762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243690, 38.464649, 40.551323>,  <33.101936, 38.827095, 40.458923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243690, 38.464649, 40.551323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488174, -0.031418, -0.872181,
		0.797556, 0.421857, 0.431209,
		0.354387, -0.906118, 0.230997,
		33.350006, 38.192814, 40.620621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918907, 38.693062, 40.423893>,  <33.101936, 38.827095, 40.458923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918907, 38.693062, 40.423893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711952, 38.356377, 40.362144>,  <33.587780, 38.154366, 40.325096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711952, 38.356377, 40.362144>,  <33.918907, 38.693062, 40.423893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711952, 38.356377, 40.362144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422765, -0.094572, -0.901291,
		0.744029, -0.531579, 0.404777,
		-0.517388, -0.841713, -0.154369,
		33.556736, 38.103863, 40.315834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429226, 38.259483, 40.204899>,  <33.918907, 38.693062, 40.423893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429226, 38.259483, 40.204899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069817, 38.163784, 40.057701>,  <33.854172, 38.106365, 39.969383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069817, 38.163784, 40.057701>,  <34.429226, 38.259483, 40.204899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069817, 38.163784, 40.057701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394648, -0.073381, -0.915897,
		0.192126, -0.968181, 0.160355,
		-0.898521, -0.239252, -0.367992,
		33.800259, 38.092007, 39.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795414, 37.801659, 39.726200>,  <34.429226, 38.259483, 40.204899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795414, 37.801659, 39.726200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087337, 38.017395, 39.558155>,  <35.262489, 38.146835, 39.457329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087337, 38.017395, 39.558155>,  <34.795414, 37.801659, 39.726200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087337, 38.017395, 39.558155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301115, 0.298104, 0.905794,
		0.613770, -0.787556, 0.055155,
		0.729806, 0.539341, -0.420112,
		35.306278, 38.179195, 39.432121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399147, 37.639626, 40.101803>,  <34.795414, 37.801659, 39.726200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399147, 37.639626, 40.101803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451721, 37.999023, 39.934265>,  <35.483265, 38.214661, 39.833740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451721, 37.999023, 39.934265>,  <35.399147, 37.639626, 40.101803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451721, 37.999023, 39.934265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325364, 0.360008, 0.874375,
		0.936409, -0.251206, -0.245018,
		0.131439, 0.898493, -0.418848,
		35.491154, 38.268570, 39.808609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007259, 37.821209, 40.253490>,  <35.399147, 37.639626, 40.101803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007259, 37.821209, 40.253490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869522, 38.180862, 40.145420>,  <35.786880, 38.396652, 40.080578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869522, 38.180862, 40.145420>,  <36.007259, 37.821209, 40.253490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869522, 38.180862, 40.145420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535307, 0.424440, 0.730272,
		0.771282, 0.106835, -0.627463,
		-0.344339, 0.899131, -0.270173,
		35.766220, 38.450603, 40.064369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582443, 38.314621, 40.406429>,  <36.007259, 37.821209, 40.253490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582443, 38.314621, 40.406429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249813, 38.528263, 40.345478>,  <36.050236, 38.656448, 40.308907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249813, 38.528263, 40.345478>,  <36.582443, 38.314621, 40.406429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249813, 38.528263, 40.345478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224468, 0.574121, 0.787400,
		0.508035, 0.620578, -0.597313,
		-0.831574, 0.534104, -0.152374,
		36.000340, 38.688496, 40.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789066, 38.979008, 40.580303>,  <36.582443, 38.314621, 40.406429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789066, 38.979008, 40.580303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392643, 38.941940, 40.618698>,  <36.154789, 38.919701, 40.641735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392643, 38.941940, 40.618698>,  <36.789066, 38.979008, 40.580303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392643, 38.941940, 40.618698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054432, 0.375993, 0.925023,
		-0.121812, 0.921977, -0.367587,
		-0.991060, -0.092670, 0.095985,
		36.095325, 38.914139, 40.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534065, 39.581539, 40.929222>,  <36.789066, 38.979008, 40.580303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534065, 39.581539, 40.929222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223778, 39.335838, 40.987125>,  <36.037605, 39.188419, 41.021870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223778, 39.335838, 40.987125>,  <36.534065, 39.581539, 40.929222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223778, 39.335838, 40.987125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043289, 0.177057, 0.983248,
		-0.629591, 0.768992, -0.110757,
		-0.775720, -0.614249, 0.144763,
		35.991062, 39.151562, 41.030556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927250, 39.959866, 41.392883>,  <36.534065, 39.581539, 40.929222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927250, 39.959866, 41.392883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883633, 39.565624, 41.444572>,  <35.857460, 39.329079, 41.475586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883633, 39.565624, 41.444572>,  <35.927250, 39.959866, 41.392883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883633, 39.565624, 41.444572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022136, 0.132375, 0.990952,
		-0.993790, 0.105199, -0.036252,
		-0.109046, -0.985601, 0.129224,
		35.850918, 39.269943, 41.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431538, 39.909103, 41.857380>,  <35.927250, 39.959866, 41.392883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431538, 39.909103, 41.857380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607033, 39.550358, 41.879784>,  <35.712330, 39.335110, 41.893227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607033, 39.550358, 41.879784>,  <35.431538, 39.909103, 41.857380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607033, 39.550358, 41.879784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147627, -0.010461, 0.988988,
		-0.886404, -0.442178, -0.136991,
		0.438742, -0.896866, 0.056005,
		35.738655, 39.281300, 41.896584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987663, 39.585018, 42.117504>,  <35.431538, 39.909103, 41.857380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987663, 39.585018, 42.117504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314281, 39.364254, 42.185204>,  <35.510254, 39.231796, 42.225822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314281, 39.364254, 42.185204>,  <34.987663, 39.585018, 42.117504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314281, 39.364254, 42.185204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219868, -0.026254, 0.975176,
		-0.533764, -0.833492, -0.142784,
		0.816550, -0.551908, 0.169245,
		35.559246, 39.198681, 42.235977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781605, 39.180599, 42.589905>,  <34.987663, 39.585018, 42.117504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781605, 39.180599, 42.589905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176228, 39.119370, 42.612804>,  <35.413002, 39.082634, 42.626545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176228, 39.119370, 42.612804>,  <34.781605, 39.180599, 42.589905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176228, 39.119370, 42.612804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036728, 0.133650, 0.990348,
		-0.159244, -0.979136, 0.126231,
		0.986556, -0.153071, 0.057245,
		35.472195, 39.073448, 42.629978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988319, 38.547905, 43.010807>,  <34.781605, 39.180599, 42.589905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988319, 38.547905, 43.010807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287617, 38.812054, 43.036240>,  <35.467194, 38.970543, 43.051498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287617, 38.812054, 43.036240>,  <34.988319, 38.547905, 43.010807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287617, 38.812054, 43.036240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173927, 0.102771, 0.979381,
		0.640221, -0.743873, 0.191754,
		0.748242, 0.660372, 0.063584,
		35.512089, 39.010166, 43.055313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369884, 38.436909, 43.596062>,  <34.988319, 38.547905, 43.010807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369884, 38.436909, 43.596062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506142, 38.805695, 43.522362>,  <35.587894, 39.026966, 43.478142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506142, 38.805695, 43.522362>,  <35.369884, 38.436909, 43.596062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506142, 38.805695, 43.522362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083046, 0.165698, 0.982674,
		0.936517, -0.350043, -0.020122,
		0.340644, 0.921962, -0.184249,
		35.608334, 39.082283, 43.467087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829838, 38.436943, 44.105595>,  <35.369884, 38.436909, 43.596062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829838, 38.436943, 44.105595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815601, 38.820240, 43.992107>,  <35.807060, 39.050220, 43.924015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815601, 38.820240, 43.992107>,  <35.829838, 38.436943, 44.105595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815601, 38.820240, 43.992107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114666, 0.285940, 0.951362,
		0.992766, 0.001326, -0.120055,
		-0.035590, 0.958247, -0.283720,
		35.804924, 39.107716, 43.906990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410488, 38.795113, 44.336384>,  <35.829838, 38.436943, 44.105595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410488, 38.795113, 44.336384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142826, 39.087132, 44.280872>,  <35.982227, 39.262344, 44.247566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142826, 39.087132, 44.280872>,  <36.410488, 38.795113, 44.336384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142826, 39.087132, 44.280872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088156, 0.263419, 0.960645,
		0.737872, 0.630590, -0.240628,
		-0.669159, 0.730046, -0.138779,
		35.942078, 39.306145, 44.239239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093624, 39.067482, 44.105007>,  <36.410488, 38.795113, 44.336384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093624, 39.067482, 44.105007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440372, 38.909721, 44.226986>,  <37.648422, 38.815067, 44.300171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440372, 38.909721, 44.226986>,  <37.093624, 39.067482, 44.105007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440372, 38.909721, 44.226986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220394, -0.245485, -0.944015,
		0.447178, 0.885543, -0.125879,
		0.866867, -0.394399, 0.304944,
		37.700432, 38.791401, 44.318470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578476, 39.249775, 43.549149>,  <37.093624, 39.067482, 44.105007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578476, 39.249775, 43.549149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776123, 38.956638, 43.736248>,  <37.894711, 38.780758, 43.848507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776123, 38.956638, 43.736248>,  <37.578476, 39.249775, 43.549149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776123, 38.956638, 43.736248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431555, -0.260298, -0.863716,
		0.754720, 0.628639, 0.187643,
		0.494122, -0.732842, 0.467745,
		37.924358, 38.736786, 43.876572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140049, 39.292366, 43.262691>,  <37.578476, 39.249775, 43.549149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140049, 39.292366, 43.262691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119621, 38.918209, 43.402649>,  <38.107365, 38.693714, 43.486626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119621, 38.918209, 43.402649>,  <38.140049, 39.292366, 43.262691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119621, 38.918209, 43.402649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269900, -0.350243, -0.896931,
		0.961533, 0.048631, 0.270350,
		-0.051069, -0.935396, 0.349895,
		38.104301, 38.637589, 43.507618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747837, 38.942039, 43.079575>,  <38.140049, 39.292366, 43.262691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747837, 38.942039, 43.079575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490341, 38.643497, 43.147167>,  <38.335842, 38.464371, 43.187721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490341, 38.643497, 43.147167>,  <38.747837, 38.942039, 43.079575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490341, 38.643497, 43.147167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283854, -0.437953, -0.853009,
		0.710651, -0.501151, 0.493784,
		-0.643740, -0.746355, 0.168978,
		38.297218, 38.419590, 43.197861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159584, 38.396923, 42.908009>,  <38.747837, 38.942039, 43.079575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159584, 38.396923, 42.908009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781036, 38.269974, 42.932220>,  <38.553909, 38.193806, 42.946747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781036, 38.269974, 42.932220>,  <39.159584, 38.396923, 42.908009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781036, 38.269974, 42.932220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168023, -0.643460, -0.746812,
		0.275968, -0.696587, 0.662275,
		-0.946367, -0.317374, 0.060532,
		38.497128, 38.174763, 42.950378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257889, 37.715393, 43.083469>,  <39.159584, 38.396923, 42.908009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257889, 37.715393, 43.083469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911133, 37.772892, 42.892536>,  <38.703079, 37.807392, 42.777977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911133, 37.772892, 42.892536>,  <39.257889, 37.715393, 43.083469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911133, 37.772892, 42.892536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232796, -0.729971, -0.642611,
		-0.440808, -0.668192, 0.599339,
		-0.866887, 0.143744, -0.477330,
		38.651066, 37.816017, 42.749336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991024, 37.044323, 43.030609>,  <39.257889, 37.715393, 43.083469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991024, 37.044323, 43.030609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.808624, 37.268356, 42.753948>,  <38.699184, 37.402775, 42.587952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.808624, 37.268356, 42.753948>,  <38.991024, 37.044323, 43.030609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808624, 37.268356, 42.753948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428617, -0.542882, -0.722196,
		-0.779970, -0.625772, 0.007493,
		-0.455998, 0.560079, -0.691649,
		38.671825, 37.436378, 42.546455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745724, 36.548447, 42.593521>,  <38.991024, 37.044323, 43.030609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745724, 36.548447, 42.593521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760712, 36.893116, 42.391090>,  <38.769703, 37.099918, 42.269630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760712, 36.893116, 42.391090>,  <38.745724, 36.548447, 42.593521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760712, 36.893116, 42.391090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461020, -0.464223, -0.756279,
		-0.886598, -0.204973, -0.414643,
		0.037470, 0.861674, -0.506076,
		38.771954, 37.151619, 42.239269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467442, 36.302593, 41.865574>,  <38.745724, 36.548447, 42.593521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467442, 36.302593, 41.865574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.669205, 36.646496, 41.833599>,  <38.790264, 36.852837, 41.814415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.669205, 36.646496, 41.833599>,  <38.467442, 36.302593, 41.865574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669205, 36.646496, 41.833599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226152, -0.220884, -0.948718,
		-0.833324, 0.460463, -0.305852,
		0.504407, 0.859758, -0.079933,
		38.820526, 36.904423, 41.809620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109196, 36.676308, 41.320671>,  <38.467442, 36.302593, 41.865574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109196, 36.676308, 41.320671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471226, 36.843136, 41.353867>,  <38.688446, 36.943233, 41.373783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471226, 36.843136, 41.353867>,  <38.109196, 36.676308, 41.320671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471226, 36.843136, 41.353867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182133, -0.203840, -0.961913,
		-0.384266, 0.885722, -0.260453,
		0.905079, 0.417067, 0.082991,
		38.742748, 36.968258, 41.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141453, 37.050941, 40.724960>,  <38.109196, 36.676308, 41.320671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141453, 37.050941, 40.724960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522179, 37.023388, 40.844498>,  <38.750614, 37.006855, 40.916218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522179, 37.023388, 40.844498>,  <38.141453, 37.050941, 40.724960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522179, 37.023388, 40.844498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304060, 0.084978, -0.948855,
		0.039963, 0.993999, 0.101827,
		0.951814, -0.068881, 0.298840,
		38.807724, 37.002724, 40.934151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511993, 37.678131, 40.542019>,  <38.141453, 37.050941, 40.724960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511993, 37.678131, 40.542019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.755829, 37.361435, 40.557716>,  <38.902130, 37.171417, 40.567135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.755829, 37.361435, 40.557716>,  <38.511993, 37.678131, 40.542019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755829, 37.361435, 40.557716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106452, 0.032705, -0.993780,
		0.785535, 0.609978, 0.104219,
		0.609593, -0.791743, 0.039242,
		38.938705, 37.123913, 40.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996788, 37.933556, 40.022984>,  <38.511993, 37.678131, 40.542019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996788, 37.933556, 40.022984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111130, 37.555214, 40.084480>,  <39.179737, 37.328209, 40.121380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111130, 37.555214, 40.084480>,  <38.996788, 37.933556, 40.022984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111130, 37.555214, 40.084480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026261, -0.168108, -0.985419,
		0.957912, 0.277652, -0.072895,
		0.285858, -0.945859, 0.153741,
		39.196888, 37.271458, 40.130604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674767, 37.757786, 39.730034>,  <38.996788, 37.933556, 40.022984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674767, 37.757786, 39.730034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441307, 37.433720, 39.751900>,  <39.301231, 37.239281, 39.765018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441307, 37.433720, 39.751900>,  <39.674767, 37.757786, 39.730034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441307, 37.433720, 39.751900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043193, -0.036256, -0.998409,
		0.810856, -0.585082, -0.013832,
		-0.583650, -0.810163, 0.054669,
		39.266212, 37.190670, 39.768299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.666632, 42.645119, 36.180981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358150, 42.741325, 35.945217>,  <28.173061, 42.799049, 35.803761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358150, 42.741325, 35.945217>,  <28.666632, 42.645119, 36.180981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358150, 42.741325, 35.945217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224274, -0.969169, -0.102037,
		-0.595775, 0.053497, 0.801368,
		-0.771203, 0.240517, -0.589405,
		28.126789, 42.813480, 35.768394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163750, 42.331524, 36.460854>,  <28.666632, 42.645119, 36.180981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163750, 42.331524, 36.460854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077560, 42.397156, 36.075802>,  <28.025846, 42.436535, 35.844772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077560, 42.397156, 36.075802>,  <28.163750, 42.331524, 36.460854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077560, 42.397156, 36.075802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341048, -0.936351, -0.083267,
		-0.915018, 0.310360, 0.257718,
		-0.215472, 0.164085, -0.962626,
		28.012918, 42.446381, 35.787014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611032, 41.983910, 36.336208>,  <28.163750, 42.331524, 36.460854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611032, 41.983910, 36.336208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733604, 42.030334, 35.958290>,  <27.807148, 42.058189, 35.731541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733604, 42.030334, 35.958290>,  <27.611032, 41.983910, 36.336208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733604, 42.030334, 35.958290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469995, -0.844670, -0.256197,
		-0.827772, 0.522554, -0.204283,
		0.306429, 0.116061, -0.944792,
		27.825533, 42.065151, 35.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027452, 41.790581, 35.918839>,  <27.611032, 41.983910, 36.336208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027452, 41.790581, 35.918839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346594, 41.768276, 35.678730>,  <27.538078, 41.754894, 35.534664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346594, 41.768276, 35.678730>,  <27.027452, 41.790581, 35.918839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346594, 41.768276, 35.678730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332824, -0.870960, -0.361466,
		-0.502653, 0.488180, -0.713457,
		0.797853, -0.055764, -0.600268,
		27.585949, 41.751549, 35.498650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789415, 41.520855, 35.259556>,  <27.027452, 41.790581, 35.918839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789415, 41.520855, 35.259556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178820, 41.431118, 35.277225>,  <27.412462, 41.377277, 35.287827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178820, 41.431118, 35.277225>,  <26.789415, 41.520855, 35.259556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178820, 41.431118, 35.277225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180777, -0.873487, -0.452041,
		0.139998, 0.432080, -0.890903,
		0.973509, -0.224340, 0.044176,
		27.470873, 41.363815, 35.290478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923714, 41.298077, 34.609665>,  <26.789415, 41.520855, 35.259556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923714, 41.298077, 34.609665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224295, 41.171326, 34.841152>,  <27.404644, 41.095276, 34.980045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224295, 41.171326, 34.841152>,  <26.923714, 41.298077, 34.609665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224295, 41.171326, 34.841152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154118, -0.937159, -0.313020,
		0.641535, 0.146029, -0.753066,
		0.751453, -0.316874, 0.578714,
		27.449730, 41.076263, 35.014767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163847, 40.825157, 34.203831>,  <26.923714, 41.298077, 34.609665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163847, 40.825157, 34.203831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339329, 40.740051, 34.553062>,  <27.444618, 40.688988, 34.762604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339329, 40.740051, 34.553062>,  <27.163847, 40.825157, 34.203831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339329, 40.740051, 34.553062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053958, -0.976051, -0.210743,
		0.897011, 0.045344, -0.439677,
		0.438703, -0.212763, 0.873082,
		27.470940, 40.676224, 34.814987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589554, 40.365330, 33.998039>,  <27.163847, 40.825157, 34.203831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589554, 40.365330, 33.998039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574596, 40.321281, 34.395325>,  <27.565622, 40.294853, 34.633698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574596, 40.321281, 34.395325>,  <27.589554, 40.365330, 33.998039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574596, 40.321281, 34.395325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296861, -0.947817, -0.116264,
		0.954188, -0.299194, 0.002750,
		-0.037392, -0.110122, 0.993215,
		27.563379, 40.288246, 34.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965477, 39.699902, 34.186600>,  <27.589554, 40.365330, 33.998039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965477, 39.699902, 34.186600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700842, 39.771454, 34.477886>,  <27.542061, 39.814384, 34.652660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700842, 39.771454, 34.477886>,  <27.965477, 39.699902, 34.186600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700842, 39.771454, 34.477886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325016, -0.943575, -0.063490,
		0.675773, -0.278688, 0.682395,
		-0.661585, 0.178885, 0.728221,
		27.502367, 39.825119, 34.696354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086006, 39.226898, 34.714272>,  <27.965477, 39.699902, 34.186600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086006, 39.226898, 34.714272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709606, 39.345394, 34.779705>,  <27.483767, 39.416492, 34.818966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709606, 39.345394, 34.779705>,  <28.086006, 39.226898, 34.714272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709606, 39.345394, 34.779705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298845, -0.954259, 0.009044,
		0.158779, -0.040375, 0.986488,
		-0.941000, 0.296243, 0.163582,
		27.427305, 39.434265, 34.828781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882969, 38.969212, 35.312374>,  <28.086006, 39.226898, 34.714272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882969, 38.969212, 35.312374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532269, 39.044338, 35.135273>,  <27.321848, 39.089417, 35.029011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532269, 39.044338, 35.135273>,  <27.882969, 38.969212, 35.312374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532269, 39.044338, 35.135273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301493, -0.931887, 0.201712,
		-0.374709, 0.310338, 0.873661,
		-0.876752, 0.187819, -0.442752,
		27.269243, 39.100685, 35.002449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443596, 38.597801, 35.666828>,  <27.882969, 38.969212, 35.312374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443596, 38.597801, 35.666828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257725, 38.687912, 35.324291>,  <27.146202, 38.741978, 35.118771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257725, 38.687912, 35.324291>,  <27.443596, 38.597801, 35.666828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257725, 38.687912, 35.324291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281683, -0.954465, -0.098243,
		-0.839482, 0.195566, 0.506975,
		-0.464677, 0.225280, -0.856343,
		27.118322, 38.755497, 35.067387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757055, 38.364235, 35.772888>,  <27.443596, 38.597801, 35.666828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757055, 38.364235, 35.772888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815386, 38.376686, 35.377361>,  <26.850384, 38.384155, 35.140045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815386, 38.376686, 35.377361>,  <26.757055, 38.364235, 35.772888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815386, 38.376686, 35.377361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336095, -0.938500, -0.079105,
		-0.930470, 0.343873, -0.126398,
		0.145827, 0.031123, -0.988820,
		26.859135, 38.386024, 35.080715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194572, 38.003284, 35.493000>,  <26.757055, 38.364235, 35.772888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194572, 38.003284, 35.493000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.465261, 38.027275, 35.199482>,  <26.627674, 38.041672, 35.023373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.465261, 38.027275, 35.199482>,  <26.194572, 38.003284, 35.493000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465261, 38.027275, 35.199482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223334, -0.932990, -0.282226,
		-0.701549, 0.354869, -0.617978,
		0.676721, 0.059980, -0.733793,
		26.668278, 38.045269, 34.979343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854885, 37.806126, 34.985210>,  <26.194572, 38.003284, 35.493000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854885, 37.806126, 34.985210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241182, 37.749298, 34.898350>,  <26.472961, 37.715202, 34.846233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241182, 37.749298, 34.898350>,  <25.854885, 37.806126, 34.985210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241182, 37.749298, 34.898350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200666, -0.939447, -0.277799,
		-0.164533, 0.311858, -0.935775,
		0.965744, -0.142071, -0.217149,
		26.530905, 37.706676, 34.833206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885511, 37.494343, 34.372299>,  <25.854885, 37.806126, 34.985210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885511, 37.494343, 34.372299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266478, 37.420715, 34.469479>,  <26.495058, 37.376541, 34.527786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266478, 37.420715, 34.469479>,  <25.885511, 37.494343, 34.372299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266478, 37.420715, 34.469479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053973, -0.886318, -0.459921,
		0.299984, 0.424924, -0.854078,
		0.952416, -0.184066, 0.242947,
		26.552202, 37.365494, 34.542362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224339, 37.126301, 33.776901>,  <25.885511, 37.494343, 34.372299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224339, 37.126301, 33.776901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459469, 37.056992, 34.092987>,  <26.600546, 37.015408, 34.282639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459469, 37.056992, 34.092987>,  <26.224339, 37.126301, 33.776901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459469, 37.056992, 34.092987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152684, -0.935476, -0.318704,
		0.794450, 0.307995, -0.523439,
		0.587824, -0.173274, 0.790215,
		26.635817, 37.005009, 34.330051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782755, 36.729000, 33.558826>,  <26.224339, 37.126301, 33.776901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782755, 36.729000, 33.558826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788649, 36.642063, 33.949219>,  <26.792185, 36.589901, 34.183456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788649, 36.642063, 33.949219>,  <26.782755, 36.729000, 33.558826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788649, 36.642063, 33.949219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093266, -0.972134, -0.215074,
		0.995532, -0.087858, -0.034593,
		0.014734, -0.217339, 0.975985,
		26.793068, 36.576862, 34.242016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297855, 36.153202, 33.606659>,  <26.782755, 36.729000, 33.558826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297855, 36.153202, 33.606659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063856, 36.124619, 33.929810>,  <26.923456, 36.107468, 34.123699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063856, 36.124619, 33.929810>,  <27.297855, 36.153202, 33.606659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063856, 36.124619, 33.929810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087479, -0.984740, -0.150450,
		0.806302, -0.158686, 0.569821,
		-0.585000, -0.071461, 0.807879,
		26.888355, 36.103180, 34.172173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476675, 35.554916, 33.892189>,  <27.297855, 36.153202, 33.606659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476675, 35.554916, 33.892189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105080, 35.603359, 34.032082>,  <26.882122, 35.632427, 34.116016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105080, 35.603359, 34.032082>,  <27.476675, 35.554916, 33.892189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105080, 35.603359, 34.032082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201211, -0.958368, -0.202594,
		0.310638, -0.258577, 0.914681,
		-0.928988, 0.121110, 0.349735,
		26.826384, 35.639690, 34.137001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204395, 35.184238, 33.867302>,  <27.476675, 35.554916, 33.892189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204395, 35.184238, 33.867302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528168, 35.089424, 33.652401>,  <28.722431, 35.032536, 33.523460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528168, 35.089424, 33.652401>,  <28.204395, 35.184238, 33.867302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528168, 35.089424, 33.652401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236586, 0.969007, -0.071080,
		0.537446, -0.069571, 0.840424,
		0.809431, -0.237034, -0.537248,
		28.770998, 35.018314, 33.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735054, 35.579247, 34.154140>,  <28.204395, 35.184238, 33.867302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735054, 35.579247, 34.154140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848742, 35.469501, 33.786674>,  <28.916954, 35.403652, 33.566196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848742, 35.469501, 33.786674>,  <28.735054, 35.579247, 34.154140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848742, 35.469501, 33.786674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322137, 0.929802, -0.178030,
		0.903021, -0.245337, 0.352651,
		0.284218, -0.274367, -0.918664,
		28.934008, 35.387192, 33.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507710, 35.808022, 34.166115>,  <28.735054, 35.579247, 34.154140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507710, 35.808022, 34.166115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344135, 35.791073, 33.801483>,  <29.245991, 35.780903, 33.582703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344135, 35.791073, 33.801483>,  <29.507710, 35.808022, 34.166115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344135, 35.791073, 33.801483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251627, 0.954961, -0.157271,
		0.877187, -0.293691, -0.379853,
		-0.408934, -0.042375, -0.911580,
		29.221455, 35.778358, 33.528008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023876, 36.223209, 33.749771>,  <29.507710, 35.808022, 34.166115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023876, 36.223209, 33.749771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687191, 36.218227, 33.533859>,  <29.485180, 36.215237, 33.404312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687191, 36.218227, 33.533859>,  <30.023876, 36.223209, 33.749771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687191, 36.218227, 33.533859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145788, 0.957358, -0.249424,
		0.519873, -0.288637, -0.804003,
		-0.841711, -0.012455, -0.539784,
		29.434677, 36.214493, 33.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136316, 36.499737, 33.157730>,  <30.023876, 36.223209, 33.749771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136316, 36.499737, 33.157730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738943, 36.544521, 33.167137>,  <29.500519, 36.571392, 33.172783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738943, 36.544521, 33.167137>,  <30.136316, 36.499737, 33.157730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738943, 36.544521, 33.167137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105125, 0.974463, -0.198418,
		-0.045133, -0.194642, -0.979835,
		-0.993434, 0.111960, 0.023519,
		29.440912, 36.578110, 33.174194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017361, 36.770702, 32.541908>,  <30.136316, 36.499737, 33.157730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017361, 36.770702, 32.541908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702007, 36.851776, 32.774242>,  <29.512794, 36.900421, 32.913643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702007, 36.851776, 32.774242>,  <30.017361, 36.770702, 32.541908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702007, 36.851776, 32.774242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149776, 0.978994, -0.138337,
		-0.596671, -0.022068, -0.802182,
		-0.788385, 0.202689, 0.580832,
		29.465492, 36.912582, 32.948494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757633, 37.282597, 32.272633>,  <30.017361, 36.770702, 32.541908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757633, 37.282597, 32.272633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585043, 37.337418, 32.629292>,  <29.481489, 37.370312, 32.843288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585043, 37.337418, 32.629292>,  <29.757633, 37.282597, 32.272633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585043, 37.337418, 32.629292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272082, 0.962137, -0.016228,
		-0.860116, 0.235601, -0.452431,
		-0.431477, 0.137056, 0.891652,
		29.455601, 37.378536, 32.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278748, 37.774002, 32.131756>,  <29.757633, 37.282597, 32.272633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278748, 37.774002, 32.131756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327398, 37.781971, 32.528706>,  <29.356588, 37.786751, 32.766876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327398, 37.781971, 32.528706>,  <29.278748, 37.774002, 32.131756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327398, 37.781971, 32.528706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130461, 0.990804, -0.035878,
		-0.983965, 0.133830, 0.117908,
		0.121625, 0.019920, 0.992376,
		29.363886, 37.787949, 32.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709875, 38.243752, 32.314774>,  <29.278748, 37.774002, 32.131756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709875, 38.243752, 32.314774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004875, 38.223156, 32.584126>,  <29.181875, 38.210800, 32.745739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004875, 38.223156, 32.584126>,  <28.709875, 38.243752, 32.314774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004875, 38.223156, 32.584126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071631, 0.997429, -0.002189,
		-0.671537, 0.049849, 0.739292,
		0.737500, -0.051486, 0.673381,
		29.226126, 38.207710, 32.786140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546072, 38.824718, 32.791939>,  <28.709875, 38.243752, 32.314774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546072, 38.824718, 32.791939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918791, 38.725204, 32.897667>,  <29.142422, 38.665497, 32.961102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918791, 38.725204, 32.897667>,  <28.546072, 38.824718, 32.791939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918791, 38.725204, 32.897667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225968, 0.967443, 0.113988,
		-0.284070, -0.046486, 0.957676,
		0.931795, -0.248784, 0.264317,
		29.198330, 38.650570, 32.976963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670254, 39.086529, 33.558186>,  <28.546072, 38.824718, 32.791939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670254, 39.086529, 33.558186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026604, 39.049881, 33.380222>,  <29.240414, 39.027893, 33.273445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026604, 39.049881, 33.380222>,  <28.670254, 39.086529, 33.558186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026604, 39.049881, 33.380222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153913, 0.982394, 0.105886,
		0.427374, -0.162809, 0.889295,
		0.890877, -0.091621, -0.444908,
		29.293867, 39.022396, 33.246750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208672, 39.284523, 33.930828>,  <28.670254, 39.086529, 33.558186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208672, 39.284523, 33.930828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365187, 39.310596, 33.563644>,  <29.459095, 39.326241, 33.343334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365187, 39.310596, 33.563644>,  <29.208672, 39.284523, 33.930828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365187, 39.310596, 33.563644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288270, 0.938605, 0.189527,
		0.873953, -0.338779, 0.348475,
		0.391288, 0.065183, -0.917957,
		29.482573, 39.330151, 33.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704119, 39.756058, 33.985054>,  <29.208672, 39.284523, 33.930828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704119, 39.756058, 33.985054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646830, 39.731628, 33.589931>,  <29.612455, 39.716972, 33.352859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646830, 39.731628, 33.589931>,  <29.704119, 39.756058, 33.985054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646830, 39.731628, 33.589931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215334, 0.972260, -0.091330,
		0.965981, -0.225789, -0.126100,
		-0.143223, -0.061070, -0.987804,
		29.603863, 39.713306, 33.293591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258280, 39.966633, 33.674747>,  <29.704119, 39.756058, 33.985054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258280, 39.966633, 33.674747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971767, 40.018921, 33.400562>,  <29.799860, 40.050293, 33.236053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971767, 40.018921, 33.400562>,  <30.258280, 39.966633, 33.674747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971767, 40.018921, 33.400562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214499, 0.975984, -0.038015,
		0.664027, -0.174259, -0.727119,
		-0.716281, 0.130723, -0.685458,
		29.756884, 40.058136, 33.194923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514790, 40.418697, 33.228901>,  <30.258280, 39.966633, 33.674747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514790, 40.418697, 33.228901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122337, 40.441608, 33.155037>,  <29.886866, 40.455357, 33.110718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122337, 40.441608, 33.155037>,  <30.514790, 40.418697, 33.228901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122337, 40.441608, 33.155037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038522, 0.993870, 0.103627,
		0.189465, 0.094559, -0.977324,
		-0.981132, 0.057282, -0.184661,
		29.827997, 40.458794, 33.099640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538479, 40.912350, 32.823563>,  <30.514790, 40.418697, 33.228901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538479, 40.912350, 32.823563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160072, 40.880203, 32.949162>,  <29.933029, 40.860916, 33.024521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160072, 40.880203, 32.949162>,  <30.538479, 40.912350, 32.823563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160072, 40.880203, 32.949162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096097, 0.994759, -0.034924,
		-0.309544, -0.063213, -0.948782,
		-0.946017, -0.080365, 0.313996,
		29.876266, 40.856094, 33.043362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099543, 41.347565, 32.415844>,  <30.538479, 40.912350, 32.823563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099543, 41.347565, 32.415844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956488, 41.301544, 32.786541>,  <29.870655, 41.273930, 33.008961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956488, 41.301544, 32.786541>,  <30.099543, 41.347565, 32.415844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956488, 41.301544, 32.786541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055891, 0.993239, 0.101742,
		-0.932186, -0.015410, -0.361652,
		-0.357639, -0.115056, 0.926745,
		29.849195, 41.267029, 33.064564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554083, 41.895771, 32.457600>,  <30.099543, 41.347565, 32.415844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554083, 41.895771, 32.457600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607332, 41.795879, 32.841248>,  <29.639282, 41.735947, 33.071438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607332, 41.795879, 32.841248>,  <29.554083, 41.895771, 32.457600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607332, 41.795879, 32.841248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258413, 0.925517, 0.276842,
		-0.956818, -0.284704, 0.058677,
		0.133125, -0.249725, 0.959122,
		29.647270, 41.720963, 33.128983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153090, 42.397564, 32.778984>,  <29.554083, 41.895771, 32.457600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153090, 42.397564, 32.778984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331917, 42.246891, 33.103512>,  <29.439213, 42.156487, 33.298229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331917, 42.246891, 33.103512>,  <29.153090, 42.397564, 32.778984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331917, 42.246891, 33.103512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103188, 0.879234, 0.465081,
		-0.888527, -0.291642, 0.354209,
		0.447070, -0.376687, 0.811317,
		29.466038, 42.133884, 33.346909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695116, 42.553524, 33.376049>,  <29.153090, 42.397564, 32.778984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695116, 42.553524, 33.376049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080076, 42.539265, 33.483761>,  <29.311052, 42.530708, 33.548389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080076, 42.539265, 33.483761>,  <28.695116, 42.553524, 33.376049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080076, 42.539265, 33.483761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062223, 0.936057, 0.346303,
		-0.264407, -0.350038, 0.898645,
		0.962402, -0.035648, 0.269281,
		29.368797, 42.528572, 33.564545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766321, 42.927040, 34.005081>,  <28.695116, 42.553524, 33.376049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766321, 42.927040, 34.005081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145851, 42.919495, 33.878986>,  <29.373569, 42.914967, 33.803329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145851, 42.919495, 33.878986>,  <28.766321, 42.927040, 34.005081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145851, 42.919495, 33.878986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112361, 0.953060, 0.281160,
		0.295132, -0.302192, 0.906409,
		0.948827, -0.018865, -0.315233,
		29.430500, 42.913834, 33.784416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268194, 43.225040, 34.504623>,  <28.766321, 42.927040, 34.005081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268194, 43.225040, 34.504623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426647, 43.255756, 34.138634>,  <29.521719, 43.274185, 33.919041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426647, 43.255756, 34.138634>,  <29.268194, 43.225040, 34.504623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426647, 43.255756, 34.138634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218403, 0.960016, 0.175129,
		0.891840, -0.269208, 0.363522,
		0.396133, 0.076793, -0.914977,
		29.545486, 43.278793, 33.864140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.289421, 37.302834, 44.818790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.158947, 37.127419, 45.153763>,  <40.080662, 37.022171, 45.354748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.158947, 37.127419, 45.153763>,  <40.289421, 37.302834, 44.818790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158947, 37.127419, 45.153763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228358, 0.823093, 0.519973,
		-0.917308, 0.360843, -0.168341,
		-0.326188, -0.438533, 0.837431,
		40.061092, 36.995857, 45.404991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853542, 37.781181, 45.144245>,  <40.289421, 37.302834, 44.818790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853542, 37.781181, 45.144245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955070, 37.524158, 45.433434>,  <40.015987, 37.369946, 45.606949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955070, 37.524158, 45.433434>,  <39.853542, 37.781181, 45.144245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955070, 37.524158, 45.433434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041008, 0.739631, 0.671762,
		-0.966383, -0.200151, 0.161380,
		0.253816, -0.642561, 0.722975,
		40.031216, 37.331390, 45.650326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415585, 38.045605, 45.810352>,  <39.853542, 37.781181, 45.144245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415585, 38.045605, 45.810352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710739, 37.809338, 45.940968>,  <39.887833, 37.667576, 46.019337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710739, 37.809338, 45.940968>,  <39.415585, 38.045605, 45.810352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710739, 37.809338, 45.940968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035970, 0.517552, 0.854895,
		-0.673963, -0.619072, 0.403142,
		0.737889, -0.590669, 0.326543,
		39.932106, 37.632137, 46.038929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341740, 37.947956, 46.566700>,  <39.415585, 38.045605, 45.810352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341740, 37.947956, 46.566700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724133, 37.839294, 46.522343>,  <39.953568, 37.774097, 46.495728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724133, 37.839294, 46.522343>,  <39.341740, 37.947956, 46.566700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724133, 37.839294, 46.522343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224245, 0.432681, 0.873214,
		-0.189233, -0.859645, 0.474553,
		0.955984, -0.271657, -0.110893,
		40.010929, 37.757797, 46.489075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381264, 37.496086, 47.183712>,  <39.341740, 37.947956, 46.566700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381264, 37.496086, 47.183712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752464, 37.571503, 47.055168>,  <39.975185, 37.616753, 46.978043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752464, 37.571503, 47.055168>,  <39.381264, 37.496086, 47.183712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752464, 37.571503, 47.055168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211723, 0.442865, 0.871231,
		0.306577, -0.876541, 0.371061,
		0.928000, 0.188538, -0.321356,
		40.030865, 37.628063, 46.958759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789040, 37.180420, 47.712360>,  <39.381264, 37.496086, 47.183712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789040, 37.180420, 47.712360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002258, 37.466450, 47.531460>,  <40.130188, 37.638069, 47.422920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002258, 37.466450, 47.531460>,  <39.789040, 37.180420, 47.712360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002258, 37.466450, 47.531460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280011, 0.355306, 0.891825,
		0.798411, -0.602016, -0.010836,
		0.533043, 0.715077, -0.452251,
		40.162170, 37.680973, 47.395786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278801, 37.286160, 48.159241>,  <39.789040, 37.180420, 47.712360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278801, 37.286160, 48.159241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.331722, 37.606941, 47.926220>,  <40.363476, 37.799412, 47.786407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.331722, 37.606941, 47.926220>,  <40.278801, 37.286160, 48.159241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331722, 37.606941, 47.926220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387293, 0.499170, 0.775134,
		0.912414, -0.328172, -0.244548,
		0.132306, 0.801955, -0.582549,
		40.371414, 37.847527, 47.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041000, 37.537109, 48.204342>,  <40.278801, 37.286160, 48.159241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041000, 37.537109, 48.204342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788506, 37.830154, 48.102497>,  <40.637009, 38.005981, 48.041389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788506, 37.830154, 48.102497>,  <41.041000, 37.537109, 48.204342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788506, 37.830154, 48.102497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320680, 0.545434, 0.774381,
		0.706194, 0.407165, -0.579229,
		-0.631232, 0.732611, -0.254612,
		40.599136, 38.049938, 48.026115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322121, 38.136997, 48.471359>,  <41.041000, 37.537109, 48.204342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322121, 38.136997, 48.471359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.959377, 38.289673, 48.399895>,  <40.741730, 38.381279, 48.357014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.959377, 38.289673, 48.399895>,  <41.322121, 38.136997, 48.471359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959377, 38.289673, 48.399895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170877, 0.720558, 0.672010,
		0.385234, 0.578889, -0.718666,
		-0.906860, 0.381685, -0.178665,
		40.687321, 38.404179, 48.346294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454880, 38.756741, 48.571087>,  <41.322121, 38.136997, 48.471359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454880, 38.756741, 48.571087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.055573, 38.742771, 48.590046>,  <40.815990, 38.734390, 48.601421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.055573, 38.742771, 48.590046>,  <41.454880, 38.756741, 48.571087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055573, 38.742771, 48.590046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018213, 0.582449, 0.812663,
		-0.055985, 0.812117, -0.580803,
		-0.998266, -0.034919, 0.047400,
		40.756092, 38.732296, 48.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270409, 39.396145, 48.733631>,  <41.454880, 38.756741, 48.571087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270409, 39.396145, 48.733631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948490, 39.194241, 48.858536>,  <40.755337, 39.073097, 48.933479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948490, 39.194241, 48.858536>,  <41.270409, 39.396145, 48.733631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948490, 39.194241, 48.858536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010398, 0.538012, 0.842873,
		-0.593454, 0.675098, -0.438241,
		-0.804801, -0.504763, 0.312265,
		40.707050, 39.042812, 48.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784645, 39.912907, 48.982414>,  <41.270409, 39.396145, 48.733631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784645, 39.912907, 48.982414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664028, 39.579144, 49.166950>,  <40.591660, 39.378887, 49.277672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664028, 39.579144, 49.166950>,  <40.784645, 39.912907, 48.982414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664028, 39.579144, 49.166950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066450, 0.501082, 0.862845,
		-0.951135, 0.229527, -0.206543,
		-0.301541, -0.834407, 0.461344,
		40.573566, 39.328823, 49.305355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216370, 40.105022, 49.452507>,  <40.784645, 39.912907, 48.982414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216370, 40.105022, 49.452507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401081, 39.782646, 49.600677>,  <40.511909, 39.589218, 49.689579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401081, 39.782646, 49.600677>,  <40.216370, 40.105022, 49.452507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401081, 39.782646, 49.600677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189308, 0.497543, 0.846530,
		-0.866558, -0.320786, 0.382327,
		0.461779, -0.805945, 0.370423,
		40.539616, 39.540863, 49.711803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629715, 40.563534, 49.599236>,  <40.216370, 40.105022, 49.452507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629715, 40.563534, 49.599236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.522228, 40.280342, 49.337990>,  <39.457737, 40.110428, 49.181244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.522228, 40.280342, 49.337990>,  <39.629715, 40.563534, 49.599236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522228, 40.280342, 49.337990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936343, 0.032945, 0.349536,
		-0.225947, 0.705465, -0.671764,
		-0.268717, -0.707978, -0.653114,
		39.441612, 40.067947, 49.142056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900078, 40.487537, 49.781025>,  <39.629715, 40.563534, 49.599236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900078, 40.487537, 49.781025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772888, 40.802521, 49.569820>,  <38.696575, 40.991512, 49.443096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772888, 40.802521, 49.569820>,  <38.900078, 40.487537, 49.781025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772888, 40.802521, 49.569820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102944, -0.582298, -0.806432,
		-0.942494, -0.202070, 0.266221,
		-0.317976, 0.787462, -0.528010,
		38.677494, 41.038761, 49.411419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369431, 40.215080, 49.403744>,  <38.900078, 40.487537, 49.781025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369431, 40.215080, 49.403744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468472, 40.536095, 49.186623>,  <38.527897, 40.728703, 49.056351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468472, 40.536095, 49.186623>,  <38.369431, 40.215080, 49.403744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468472, 40.536095, 49.186623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172705, -0.514719, -0.839784,
		-0.953345, 0.301675, 0.011157,
		0.247599, 0.802531, -0.542806,
		38.542751, 40.776855, 49.023781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842995, 40.351822, 48.905529>,  <38.369431, 40.215080, 49.403744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842995, 40.351822, 48.905529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154327, 40.538326, 48.737339>,  <38.341125, 40.650230, 48.636425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154327, 40.538326, 48.737339>,  <37.842995, 40.351822, 48.905529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154327, 40.538326, 48.737339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265445, -0.362537, -0.893368,
		-0.568980, 0.806950, -0.158407,
		0.778331, 0.466260, -0.420477,
		38.387825, 40.678204, 48.611195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587460, 40.508377, 48.271275>,  <37.842995, 40.351822, 48.905529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587460, 40.508377, 48.271275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977154, 40.580875, 48.217587>,  <38.210972, 40.624374, 48.185375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977154, 40.580875, 48.217587>,  <37.587460, 40.508377, 48.271275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977154, 40.580875, 48.217587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101317, -0.179977, -0.978439,
		-0.201494, 0.966829, -0.156977,
		0.974236, 0.181245, -0.134221,
		38.269424, 40.635250, 48.177319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636147, 41.095150, 47.764206>,  <37.587460, 40.508377, 48.271275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636147, 41.095150, 47.764206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977589, 40.886883, 47.757805>,  <38.182457, 40.761921, 47.753963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977589, 40.886883, 47.757805>,  <37.636147, 41.095150, 47.764206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977589, 40.886883, 47.757805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068356, -0.081501, -0.994326,
		0.516408, 0.849861, -0.105160,
		0.853610, -0.520667, -0.016006,
		38.233673, 40.730682, 47.753002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012405, 41.267662, 47.102417>,  <37.636147, 41.095150, 47.764206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012405, 41.267662, 47.102417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159729, 40.916191, 47.223927>,  <38.248123, 40.705311, 47.296833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159729, 40.916191, 47.223927>,  <38.012405, 41.267662, 47.102417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159729, 40.916191, 47.223927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005799, -0.324565, -0.945845,
		0.929684, 0.350129, -0.114447,
		0.368313, -0.878673, 0.303774,
		38.270222, 40.652588, 47.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535748, 41.110603, 46.639793>,  <38.012405, 41.267662, 47.102417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535748, 41.110603, 46.639793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470085, 40.764641, 46.829525>,  <38.430687, 40.557064, 46.943363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470085, 40.764641, 46.829525>,  <38.535748, 41.110603, 46.639793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470085, 40.764641, 46.829525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017465, -0.478231, -0.878061,
		0.986280, -0.152421, 0.063398,
		-0.164153, -0.864907, 0.474331,
		38.420837, 40.505169, 46.971825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007744, 40.675797, 46.284683>,  <38.535748, 41.110603, 46.639793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007744, 40.675797, 46.284683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.742939, 40.425175, 46.449203>,  <38.584057, 40.274803, 46.547916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.742939, 40.425175, 46.449203>,  <39.007744, 40.675797, 46.284683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742939, 40.425175, 46.449203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099568, -0.470389, -0.876824,
		0.742848, -0.621423, 0.249020,
		-0.662015, -0.626552, 0.411301,
		38.544334, 40.237209, 46.572594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004551, 40.179184, 45.787613>,  <39.007744, 40.675797, 46.284683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004551, 40.179184, 45.787613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.706142, 40.068878, 46.030067>,  <38.527096, 40.002693, 46.175541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.706142, 40.068878, 46.030067>,  <39.004551, 40.179184, 45.787613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706142, 40.068878, 46.030067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249078, -0.728602, -0.638044,
		0.617584, -0.626971, 0.474866,
		-0.746023, -0.275767, 0.606137,
		38.482334, 39.986149, 46.211910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091553, 39.384499, 45.926952>,  <39.004551, 40.179184, 45.787613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091553, 39.384499, 45.926952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.719055, 39.519978, 45.980717>,  <38.495556, 39.601265, 46.012978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.719055, 39.519978, 45.980717>,  <39.091553, 39.384499, 45.926952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719055, 39.519978, 45.980717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343287, -0.691725, -0.635350,
		-0.122212, -0.637810, 0.760436,
		-0.931245, 0.338695, 0.134415,
		38.439682, 39.621586, 46.021042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692848, 38.793030, 45.999405>,  <39.091553, 39.384499, 45.926952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692848, 38.793030, 45.999405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479862, 39.100517, 45.857674>,  <38.352070, 39.285011, 45.772633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479862, 39.100517, 45.857674>,  <38.692848, 38.793030, 45.999405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479862, 39.100517, 45.857674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260499, -0.547114, -0.795492,
		-0.805368, -0.331271, 0.491571,
		-0.532468, 0.768717, -0.354332,
		38.320122, 39.331131, 45.751373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052700, 38.429737, 45.829315>,  <38.692848, 38.793030, 45.999405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052700, 38.429737, 45.829315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070522, 38.786869, 45.650040>,  <38.081215, 39.001148, 45.542477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070522, 38.786869, 45.650040>,  <38.052700, 38.429737, 45.829315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070522, 38.786869, 45.650040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248366, -0.424645, -0.870627,
		-0.967641, 0.150103, 0.202829,
		0.044554, 0.892830, -0.448184,
		38.083889, 39.054718, 45.515583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361492, 38.459339, 45.551384>,  <38.052700, 38.429737, 45.829315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361492, 38.459339, 45.551384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588169, 38.721321, 45.351429>,  <37.724174, 38.878510, 45.231457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588169, 38.721321, 45.351429>,  <37.361492, 38.459339, 45.551384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588169, 38.721321, 45.351429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246073, -0.444481, -0.861327,
		-0.786323, 0.611119, -0.090718,
		0.566695, 0.654958, -0.499886,
		37.758179, 38.917809, 45.201462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028622, 38.602211, 44.872513>,  <37.361492, 38.459339, 45.551384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028622, 38.602211, 44.872513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408340, 38.721611, 44.833057>,  <37.636173, 38.793251, 44.809383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408340, 38.721611, 44.833057>,  <37.028622, 38.602211, 44.872513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408340, 38.721611, 44.833057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027505, -0.233690, -0.971922,
		-0.313173, 0.925356, -0.213631,
		0.949298, 0.298504, -0.098638,
		37.693130, 38.811161, 44.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748302, 39.347839, 44.748413>,  <37.028622, 38.602211, 44.872513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748302, 39.347839, 44.748413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363827, 39.457306, 44.734436>,  <36.133141, 39.522987, 44.726048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363827, 39.457306, 44.734436>,  <36.748302, 39.347839, 44.748413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363827, 39.457306, 44.734436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072051, 0.371271, 0.925725,
		0.266314, 0.887280, -0.376579,
		-0.961190, 0.273667, -0.034945,
		36.075470, 39.539406, 44.723953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743420, 39.961876, 45.021343>,  <36.748302, 39.347839, 44.748413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743420, 39.961876, 45.021343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366222, 39.834244, 45.059177>,  <36.139904, 39.757664, 45.081879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366222, 39.834244, 45.059177>,  <36.743420, 39.961876, 45.021343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366222, 39.834244, 45.059177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030307, 0.200690, 0.979186,
		-0.331423, 0.926234, -0.179580,
		-0.942995, -0.319082, 0.094584,
		36.083324, 39.738518, 45.087551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454346, 40.544235, 45.341133>,  <36.743420, 39.961876, 45.021343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454346, 40.544235, 45.341133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191002, 40.251026, 45.409546>,  <36.032997, 40.075100, 45.450592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191002, 40.251026, 45.409546>,  <36.454346, 40.544235, 45.341133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191002, 40.251026, 45.409546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164419, 0.361782, 0.917649,
		-0.734530, 0.576018, -0.358703,
		-0.658355, -0.733019, 0.171032,
		35.993496, 40.031120, 45.460854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841957, 40.860104, 45.505234>,  <36.454346, 40.544235, 45.341133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841957, 40.860104, 45.505234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812061, 40.498306, 45.673191>,  <35.794125, 40.281227, 45.773964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812061, 40.498306, 45.673191>,  <35.841957, 40.860104, 45.505234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812061, 40.498306, 45.673191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277215, 0.423317, 0.862528,
		-0.957897, -0.051939, -0.282375,
		-0.074735, -0.904492, 0.419892,
		35.789642, 40.226959, 45.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224075, 40.805794, 45.802818>,  <35.841957, 40.860104, 45.505234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224075, 40.805794, 45.802818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388168, 40.483162, 45.973057>,  <35.486626, 40.289581, 46.075199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388168, 40.483162, 45.973057>,  <35.224075, 40.805794, 45.802818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388168, 40.483162, 45.973057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289529, 0.327349, 0.899453,
		-0.864802, -0.492208, -0.099240,
		0.410232, -0.806581, 0.425601,
		35.511238, 40.241188, 46.100739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678085, 40.524174, 46.328457>,  <35.224075, 40.805794, 45.802818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678085, 40.524174, 46.328457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047607, 40.413216, 46.434010>,  <35.269321, 40.346642, 46.497341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047607, 40.413216, 46.434010>,  <34.678085, 40.524174, 46.328457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047607, 40.413216, 46.434010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187152, 0.274105, 0.943314,
		-0.334002, -0.920825, 0.201304,
		0.923806, -0.277394, 0.263886,
		35.324749, 40.329998, 46.513176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659271, 40.156998, 46.937950>,  <34.678085, 40.524174, 46.328457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659271, 40.156998, 46.937950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046837, 40.255856, 46.933365>,  <35.279377, 40.315170, 46.930614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046837, 40.255856, 46.933365>,  <34.659271, 40.156998, 46.937950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046837, 40.255856, 46.933365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086207, 0.380672, 0.920683,
		0.231905, -0.891072, 0.390143,
		0.968911, 0.247144, -0.011463,
		35.337509, 40.329998, 46.929924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559486, 39.528446, 47.214207>,  <34.659271, 40.156998, 46.937950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559486, 39.528446, 47.214207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276741, 39.309349, 47.393238>,  <34.107094, 39.177891, 47.500656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276741, 39.309349, 47.393238>,  <34.559486, 39.528446, 47.214207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276741, 39.309349, 47.393238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210689, -0.440994, -0.872430,
		0.675242, -0.710990, 0.196320,
		-0.706865, -0.547739, 0.447576,
		34.064682, 39.145027, 47.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690815, 38.829636, 47.065540>,  <34.559486, 39.528446, 47.214207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690815, 38.829636, 47.065540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294762, 38.849045, 47.118122>,  <34.057129, 38.860691, 47.149670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294762, 38.849045, 47.118122>,  <34.690815, 38.829636, 47.065540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294762, 38.849045, 47.118122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136727, -0.539761, -0.830641,
		0.030650, -0.840419, 0.541070,
		-0.990135, 0.048520, 0.131451,
		33.997723, 38.863602, 47.157558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508450, 38.197113, 46.863770>,  <34.690815, 38.829636, 47.065540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508450, 38.197113, 46.863770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179363, 38.424290, 46.873371>,  <33.981911, 38.560596, 46.879131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179363, 38.424290, 46.873371>,  <34.508450, 38.197113, 46.863770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179363, 38.424290, 46.873371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336522, -0.452589, -0.825782,
		-0.458159, -0.687446, 0.563479,
		-0.822705, 0.567963, 0.023983,
		33.932549, 38.594673, 46.880569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922104, 37.783199, 47.035934>,  <34.508450, 38.197113, 46.863770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922104, 37.783199, 47.035934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784523, 38.105656, 46.843338>,  <33.701977, 38.299129, 46.727779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784523, 38.105656, 46.843338>,  <33.922104, 37.783199, 47.035934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784523, 38.105656, 46.843338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312885, -0.581870, -0.750687,
		-0.885326, -0.107545, 0.452362,
		-0.343948, 0.806140, -0.481495,
		33.681339, 38.347496, 46.698891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222607, 37.657822, 46.775009>,  <33.922104, 37.783199, 47.035934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222607, 37.657822, 46.775009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332588, 37.968399, 46.548195>,  <33.398579, 38.154747, 46.412106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332588, 37.968399, 46.548195>,  <33.222607, 37.657822, 46.775009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332588, 37.968399, 46.548195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274232, -0.501939, -0.820277,
		-0.921518, 0.381041, 0.074914,
		0.274957, 0.776444, -0.567039,
		33.415077, 38.201332, 46.378082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747402, 37.673813, 46.206551>,  <33.222607, 37.657822, 46.775009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747402, 37.673813, 46.206551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045414, 37.887108, 46.046257>,  <33.224220, 38.015083, 45.950081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045414, 37.887108, 46.046257>,  <32.747402, 37.673813, 46.206551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045414, 37.887108, 46.046257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275497, -0.301140, -0.912916,
		-0.607477, 0.790552, -0.077454,
		0.745032, 0.533237, -0.400730,
		33.268925, 38.047077, 45.926037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452053, 37.849285, 45.605885>,  <32.747402, 37.673813, 46.206551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452053, 37.849285, 45.605885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842133, 37.914013, 45.545486>,  <33.076180, 37.952850, 45.509247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842133, 37.914013, 45.545486>,  <32.452053, 37.849285, 45.605885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842133, 37.914013, 45.545486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093071, -0.319158, -0.943120,
		-0.200810, 0.933784, -0.296182,
		0.975199, 0.161822, -0.150998,
		33.134693, 37.962559, 45.500187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.546822, 37.064621, 50.499958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817970, 37.325974, 50.365150>,  <38.980659, 37.482784, 50.284267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817970, 37.325974, 50.365150>,  <38.546822, 37.064621, 50.499958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817970, 37.325974, 50.365150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464253, -0.735889, -0.492887,
		-0.570048, 0.177656, -0.802175,
		0.677875, 0.653381, -0.337014,
		39.021332, 37.521988, 50.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478344, 37.365791, 49.800083>,  <38.546822, 37.064621, 50.499958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478344, 37.365791, 49.800083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852234, 37.306019, 49.929058>,  <39.076569, 37.270157, 50.006443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852234, 37.306019, 49.929058>,  <38.478344, 37.365791, 49.800083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852234, 37.306019, 49.929058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156273, -0.642056, -0.750562,
		0.319179, 0.751955, -0.576792,
		0.934721, -0.149426, 0.322441,
		39.132648, 37.261192, 50.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901905, 37.602333, 49.255325>,  <38.478344, 37.365791, 49.800083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901905, 37.602333, 49.255325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.098125, 37.323845, 49.464947>,  <39.215858, 37.156754, 49.590721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.098125, 37.323845, 49.464947>,  <38.901905, 37.602333, 49.255325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098125, 37.323845, 49.464947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099489, -0.642201, -0.760052,
		0.865714, 0.320707, -0.384299,
		0.490552, -0.696221, 0.524056,
		39.245293, 37.114979, 49.622162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329655, 37.209785, 48.736408>,  <38.901905, 37.602333, 49.255325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329655, 37.209785, 48.736408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.324833, 36.958183, 49.047333>,  <39.321938, 36.807224, 49.233887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.324833, 36.958183, 49.047333>,  <39.329655, 37.209785, 48.736408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324833, 36.958183, 49.047333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019453, -0.777367, -0.628747,
		0.999738, 0.007540, 0.021608,
		-0.012057, -0.629002, 0.777310,
		39.321217, 36.769482, 49.280525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655540, 36.581177, 48.522205>,  <39.329655, 37.209785, 48.736408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655540, 36.581177, 48.522205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.461597, 36.429039, 48.837231>,  <39.345230, 36.337757, 49.026245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.461597, 36.429039, 48.837231>,  <39.655540, 36.581177, 48.522205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461597, 36.429039, 48.837231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347416, -0.742638, -0.572530,
		0.802629, -0.551208, 0.227938,
		-0.484859, -0.380340, 0.787562,
		39.316139, 36.314938, 49.073498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769066, 35.906948, 48.525547>,  <39.655540, 36.581177, 48.522205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769066, 35.906948, 48.525547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.420528, 35.990368, 48.703209>,  <39.211407, 36.040421, 48.809807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.420528, 35.990368, 48.703209>,  <39.769066, 35.906948, 48.525547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420528, 35.990368, 48.703209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468051, -0.624978, -0.624764,
		0.147291, -0.752269, 0.642181,
		-0.871340, 0.208551, 0.444154,
		39.159126, 36.052933, 48.836456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466911, 35.219620, 48.706989>,  <39.769066, 35.906948, 48.525547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466911, 35.219620, 48.706989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.157253, 35.472206, 48.689354>,  <38.971458, 35.623756, 48.678772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.157253, 35.472206, 48.689354>,  <39.466911, 35.219620, 48.706989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157253, 35.472206, 48.689354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547437, -0.702847, -0.454223,
		-0.317817, -0.327498, 0.889796,
		-0.774148, 0.631467, -0.044093,
		38.925011, 35.661648, 48.676125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897839, 34.805676, 48.884819>,  <39.466911, 35.219620, 48.706989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897839, 34.805676, 48.884819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747093, 35.123333, 48.694107>,  <38.656647, 35.313927, 48.579681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747093, 35.123333, 48.694107>,  <38.897839, 34.805676, 48.884819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747093, 35.123333, 48.694107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630832, -0.596952, -0.495679,
		-0.678253, 0.113966, 0.725937,
		-0.376859, 0.794141, -0.476778,
		38.634037, 35.361576, 48.551075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236599, 34.558571, 48.858971>,  <38.897839, 34.805676, 48.884819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236599, 34.558571, 48.858971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.244652, 34.874039, 48.613178>,  <38.249485, 35.063320, 48.465702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.244652, 34.874039, 48.613178>,  <38.236599, 34.558571, 48.858971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244652, 34.874039, 48.613178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519413, -0.516908, -0.680453,
		-0.854286, 0.332871, 0.399240,
		0.020133, 0.788671, -0.614485,
		38.250690, 35.110641, 48.428833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575073, 34.746490, 48.732594>,  <38.236599, 34.558571, 48.858971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575073, 34.746490, 48.732594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.765453, 34.896973, 48.414612>,  <37.879681, 34.987259, 48.223824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.765453, 34.896973, 48.414612>,  <37.575073, 34.746490, 48.732594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765453, 34.896973, 48.414612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565796, -0.561032, -0.604251,
		-0.673312, 0.737372, -0.054169,
		0.475948, 0.376201, -0.794951,
		37.908237, 35.009834, 48.176128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069725, 35.005157, 48.219212>,  <37.575073, 34.746490, 48.732594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069725, 35.005157, 48.219212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.401501, 34.931309, 48.008331>,  <37.600567, 34.887001, 47.881802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.401501, 34.931309, 48.008331>,  <37.069725, 35.005157, 48.219212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401501, 34.931309, 48.008331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551072, -0.424793, -0.718241,
		-0.091347, 0.886265, -0.454082,
		0.829443, -0.184623, -0.527199,
		37.650333, 34.875923, 47.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744614, 34.980099, 47.578075>,  <37.069725, 35.005157, 48.219212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744614, 34.980099, 47.578075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113422, 34.827553, 47.551426>,  <37.334709, 34.736027, 47.535435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113422, 34.827553, 47.551426>,  <36.744614, 34.980099, 47.578075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113422, 34.827553, 47.551426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338000, -0.709077, -0.618842,
		0.188762, 0.593105, -0.782685,
		0.922022, -0.381361, -0.066623,
		37.390030, 34.713146, 47.531441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506874, 35.518089, 47.329155>,  <36.744614, 34.980099, 47.578075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506874, 35.518089, 47.329155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108475, 35.553810, 47.330990>,  <35.869434, 35.575241, 47.332092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108475, 35.553810, 47.330990>,  <36.506874, 35.518089, 47.329155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108475, 35.553810, 47.330990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052054, 0.537362, 0.841744,
		0.072701, 0.838611, -0.539858,
		-0.995995, 0.089297, 0.004586,
		35.809677, 35.580601, 47.332367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365978, 36.188782, 47.416363>,  <36.506874, 35.518089, 47.329155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365978, 36.188782, 47.416363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058895, 35.983074, 47.569286>,  <35.874645, 35.859650, 47.661041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058895, 35.983074, 47.569286>,  <36.365978, 36.188782, 47.416363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058895, 35.983074, 47.569286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083625, 0.511107, 0.855439,
		-0.635323, 0.688695, -0.349375,
		-0.767705, -0.514264, 0.382310,
		35.828583, 35.828796, 47.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911549, 36.648052, 47.830574>,  <36.365978, 36.188782, 47.416363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911549, 36.648052, 47.830574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742672, 36.307671, 47.955559>,  <35.641346, 36.103443, 48.030548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742672, 36.307671, 47.955559>,  <35.911549, 36.648052, 47.830574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742672, 36.307671, 47.955559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149486, 0.405325, 0.901868,
		-0.894094, 0.334056, -0.298332,
		-0.422196, -0.850951, 0.312462,
		35.616013, 36.052383, 48.049297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221313, 36.785545, 47.984108>,  <35.911549, 36.648052, 47.830574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221313, 36.785545, 47.984108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312500, 36.459248, 48.196747>,  <35.367210, 36.263470, 48.324329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312500, 36.459248, 48.196747>,  <35.221313, 36.785545, 47.984108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312500, 36.459248, 48.196747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350744, 0.440523, 0.826389,
		-0.908301, -0.374843, -0.185692,
		0.227964, -0.815740, 0.531601,
		35.380890, 36.214527, 48.356228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729023, 36.699142, 48.459396>,  <35.221313, 36.785545, 47.984108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729023, 36.699142, 48.459396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982166, 36.435013, 48.621117>,  <35.134052, 36.276535, 48.718151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982166, 36.435013, 48.621117>,  <34.729023, 36.699142, 48.459396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982166, 36.435013, 48.621117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294841, 0.277306, 0.914424,
		-0.715934, -0.697904, -0.019196,
		0.632857, -0.660326, 0.404303,
		35.172024, 36.236916, 48.742409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397194, 36.359543, 48.969025>,  <34.729023, 36.699142, 48.459396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397194, 36.359543, 48.969025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791512, 36.332150, 49.030357>,  <35.028103, 36.315716, 49.067158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791512, 36.332150, 49.030357>,  <34.397194, 36.359543, 48.969025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791512, 36.332150, 49.030357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128005, 0.284589, 0.950065,
		-0.108699, -0.956201, 0.271781,
		0.985799, -0.068482, 0.153333,
		35.087250, 36.311604, 49.076359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441170, 36.001884, 49.641933>,  <34.397194, 36.359543, 48.969025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441170, 36.001884, 49.641933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791245, 36.186378, 49.583542>,  <35.001289, 36.297073, 49.548508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791245, 36.186378, 49.583542>,  <34.441170, 36.001884, 49.641933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791245, 36.186378, 49.583542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083609, 0.441398, 0.893407,
		0.476509, -0.769692, 0.424869,
		0.875185, 0.461240, -0.145977,
		35.053802, 36.324749, 49.539749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812973, 36.022881, 50.160053>,  <34.441170, 36.001884, 49.641933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812973, 36.022881, 50.160053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991055, 36.323238, 49.964935>,  <35.097904, 36.503452, 49.847862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991055, 36.323238, 49.964935>,  <34.812973, 36.022881, 50.160053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991055, 36.323238, 49.964935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105281, 0.584881, 0.804258,
		0.889220, -0.306701, 0.339445,
		0.445201, 0.750899, -0.487798,
		35.124615, 36.548508, 49.818596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199726, 36.383858, 50.731533>,  <34.812973, 36.022881, 50.160053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199726, 36.383858, 50.731533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.223537, 36.635265, 50.421329>,  <35.237823, 36.786110, 50.235207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.223537, 36.635265, 50.421329>,  <35.199726, 36.383858, 50.731533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223537, 36.635265, 50.421329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137516, 0.764320, 0.630003,
		0.988709, -0.144148, -0.040935,
		0.059526, 0.628519, -0.775513,
		35.241394, 36.823822, 50.188675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735008, 36.773304, 50.880566>,  <35.199726, 36.383858, 50.731533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735008, 36.773304, 50.880566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536472, 37.011024, 50.627441>,  <35.417351, 37.153656, 50.475567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536472, 37.011024, 50.627441>,  <35.735008, 36.773304, 50.880566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536472, 37.011024, 50.627441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168974, 0.781134, 0.601063,
		0.851527, 0.191401, -0.488127,
		-0.496337, 0.594302, -0.632815,
		35.387573, 37.189316, 50.437595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154991, 37.301186, 50.729622>,  <35.735008, 36.773304, 50.880566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154991, 37.301186, 50.729622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.781677, 37.422012, 50.651909>,  <35.557690, 37.494507, 50.605282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.781677, 37.422012, 50.651909>,  <36.154991, 37.301186, 50.729622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781677, 37.422012, 50.651909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119318, 0.770998, 0.625560,
		0.338748, 0.560642, -0.755599,
		-0.933281, 0.302064, -0.194279,
		35.501694, 37.512630, 50.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181042, 38.098721, 50.546471>,  <36.154991, 37.301186, 50.729622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181042, 38.098721, 50.546471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.808075, 38.026276, 50.671562>,  <35.584297, 37.982807, 50.746616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.808075, 38.026276, 50.671562>,  <36.181042, 38.098721, 50.546471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808075, 38.026276, 50.671562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032642, 0.819615, 0.571984,
		-0.359913, 0.543534, -0.758310,
		-0.932415, -0.181112, 0.312732,
		35.528351, 37.971943, 50.765381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968895, 38.748486, 50.541389>,  <36.181042, 38.098721, 50.546471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968895, 38.748486, 50.541389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.692390, 38.544762, 50.746433>,  <35.526489, 38.422527, 50.869457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.692390, 38.544762, 50.746433>,  <35.968895, 38.748486, 50.541389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692390, 38.544762, 50.746433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044129, 0.737812, 0.673562,
		-0.721258, 0.442985, -0.532495,
		-0.691259, -0.509311, 0.512605,
		35.485012, 38.391968, 50.900215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466846, 39.398716, 50.558819>,  <35.968895, 38.748486, 50.541389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466846, 39.398716, 50.558819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115089, 39.582340, 50.609322>,  <34.904037, 39.692513, 50.639622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115089, 39.582340, 50.609322>,  <35.466846, 39.398716, 50.558819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115089, 39.582340, 50.609322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370835, -0.494114, -0.786341,
		-0.298590, -0.738321, 0.604753,
		-0.879389, 0.459057, 0.126258,
		34.851273, 39.720058, 50.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884357, 38.924961, 50.520962>,  <35.466846, 39.398716, 50.558819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884357, 38.924961, 50.520962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729286, 39.282150, 50.429482>,  <34.636242, 39.496464, 50.374596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729286, 39.282150, 50.429482>,  <34.884357, 38.924961, 50.520962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729286, 39.282150, 50.429482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522967, -0.417377, -0.743170,
		-0.759083, -0.168513, 0.628805,
		-0.387682, 0.892973, -0.228697,
		34.612980, 39.550041, 50.360874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164452, 38.822342, 50.379261>,  <34.884357, 38.924961, 50.520962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164452, 38.822342, 50.379261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299313, 39.154125, 50.201126>,  <34.380230, 39.353195, 50.094246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299313, 39.154125, 50.201126>,  <34.164452, 38.822342, 50.379261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299313, 39.154125, 50.201126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411838, -0.295429, -0.862039,
		-0.846592, 0.474045, 0.241998,
		0.337152, 0.829460, -0.445338,
		34.400459, 39.402962, 50.067524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549648, 38.921021, 49.877518>,  <34.164452, 38.822342, 50.379261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549648, 38.921021, 49.877518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818504, 39.190002, 49.753559>,  <33.979816, 39.351391, 49.679184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818504, 39.190002, 49.753559>,  <33.549648, 38.921021, 49.877518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818504, 39.190002, 49.753559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179347, -0.258211, -0.949295,
		-0.718376, 0.693637, -0.052951,
		0.672139, 0.672454, -0.309894,
		34.020145, 39.391739, 49.660591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227905, 39.471107, 49.396000>,  <33.549648, 38.921021, 49.877518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227905, 39.471107, 49.396000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618782, 39.458546, 49.311989>,  <33.853310, 39.451008, 49.261581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618782, 39.458546, 49.311989>,  <33.227905, 39.471107, 49.396000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618782, 39.458546, 49.311989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212235, -0.178346, -0.960806,
		-0.007286, 0.983467, -0.180942,
		0.977191, -0.031402, -0.210026,
		33.911938, 39.449123, 49.248981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343124, 39.935604, 48.826874>,  <33.227905, 39.471107, 49.396000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343124, 39.935604, 48.826874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659275, 39.690647, 48.820259>,  <33.848965, 39.543671, 48.816292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659275, 39.690647, 48.820259>,  <33.343124, 39.935604, 48.826874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659275, 39.690647, 48.820259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117447, -0.124984, -0.985183,
		0.601256, 0.780609, -0.170708,
		0.790378, -0.612396, -0.016533,
		33.896389, 39.506927, 48.815300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777706, 40.157562, 48.419014>,  <33.343124, 39.935604, 48.826874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777706, 40.157562, 48.419014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887112, 39.772896, 48.411118>,  <33.952755, 39.542095, 48.406380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887112, 39.772896, 48.411118>,  <33.777706, 40.157562, 48.419014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887112, 39.772896, 48.411118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166447, -0.027110, -0.985678,
		0.947356, 0.272885, -0.167481,
		0.273517, -0.961664, -0.019738,
		33.969166, 39.484398, 48.405197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187077, 40.030266, 47.808388>,  <33.777706, 40.157562, 48.419014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187077, 40.030266, 47.808388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058159, 39.665409, 47.909676>,  <33.980808, 39.446495, 47.970448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058159, 39.665409, 47.909676>,  <34.187077, 40.030266, 47.808388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058159, 39.665409, 47.909676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154199, -0.213331, -0.964734,
		0.933995, -0.349977, -0.071895,
		-0.322297, -0.912144, 0.253217,
		33.961472, 39.391766, 47.985641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849895, 40.228352, 47.696495>,  <34.187077, 40.030266, 47.808388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849895, 40.228352, 47.696495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154976, 40.409470, 47.511776>,  <35.338024, 40.518139, 47.400944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154976, 40.409470, 47.511776>,  <34.849895, 40.228352, 47.696495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154976, 40.409470, 47.511776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055644, 0.665448, 0.744367,
		0.644338, -0.593435, 0.482352,
		0.762713, 0.452784, -0.461795,
		35.383789, 40.545307, 47.373238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341808, 40.377808, 48.249733>,  <34.849895, 40.228352, 47.696495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341808, 40.377808, 48.249733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.479519, 40.607632, 47.952721>,  <35.562145, 40.745525, 47.774513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.479519, 40.607632, 47.952721>,  <35.341808, 40.377808, 48.249733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479519, 40.607632, 47.952721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222873, 0.718261, 0.659113,
		0.912031, -0.392408, 0.119227,
		0.344277, 0.574559, -0.742533,
		35.582802, 40.779999, 47.729961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032166, 40.513165, 48.436775>,  <35.341808, 40.377808, 48.249733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032166, 40.513165, 48.436775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916153, 40.796921, 48.179825>,  <35.846546, 40.967175, 48.025654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916153, 40.796921, 48.179825>,  <36.032166, 40.513165, 48.436775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916153, 40.796921, 48.179825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276605, 0.704721, 0.653344,
		0.916172, 0.011805, -0.400612,
		-0.290032, 0.709386, -0.642380,
		35.829144, 41.009735, 47.987110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487312, 40.956509, 48.569061>,  <36.032166, 40.513165, 48.436775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487312, 40.956509, 48.569061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191254, 41.158745, 48.391724>,  <36.013618, 41.280087, 48.285320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191254, 41.158745, 48.391724>,  <36.487312, 40.956509, 48.569061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191254, 41.158745, 48.391724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157309, 0.771200, 0.616851,
		0.653785, 0.386818, -0.650336,
		-0.740148, 0.505591, -0.443349,
		35.969208, 41.310421, 48.258720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684467, 41.704243, 48.488781>,  <36.487312, 40.956509, 48.569061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684467, 41.704243, 48.488781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.285030, 41.720978, 48.475689>,  <36.045368, 41.731018, 48.467834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.285030, 41.720978, 48.475689>,  <36.684467, 41.704243, 48.488781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285030, 41.720978, 48.475689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007961, 0.727032, 0.686557,
		0.052522, 0.685327, -0.726339,
		-0.998588, 0.041841, -0.032729,
		35.985455, 41.733532, 48.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540340, 42.385567, 48.481697>,  <36.684467, 41.704243, 48.488781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540340, 42.385567, 48.481697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210773, 42.217457, 48.633762>,  <36.013031, 42.116592, 48.725002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210773, 42.217457, 48.633762>,  <36.540340, 42.385567, 48.481697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210773, 42.217457, 48.633762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003803, 0.674922, 0.737879,
		-0.566694, 0.606507, -0.557679,
		-0.823920, -0.420273, 0.380168,
		35.963596, 42.091373, 48.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016254, 42.896084, 48.328865>,  <36.540340, 42.385567, 48.481697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016254, 42.896084, 48.328865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.928307, 42.653671, 48.634647>,  <35.875538, 42.508224, 48.818115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.928307, 42.653671, 48.634647>,  <36.016254, 42.896084, 48.328865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928307, 42.653671, 48.634647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143428, 0.795194, 0.589147,
		-0.964927, 0.019894, -0.261763,
		-0.219873, -0.606028, 0.764451,
		35.862347, 42.471863, 48.863983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679245, 43.380302, 48.892845>,  <36.016254, 42.896084, 48.328865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679245, 43.380302, 48.892845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752979, 43.051632, 49.108578>,  <35.797218, 42.854431, 49.238018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752979, 43.051632, 49.108578>,  <35.679245, 43.380302, 48.892845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752979, 43.051632, 49.108578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224834, 0.569434, 0.790693,
		-0.956802, -0.024492, 0.289706,
		0.184334, -0.821672, 0.539329,
		35.808281, 42.805130, 49.270378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523666, 43.842453, 49.349316>,  <35.679245, 43.380302, 48.892845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523666, 43.842453, 49.349316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205235, 43.725197, 49.137531>,  <35.014175, 43.654842, 49.010460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205235, 43.725197, 49.137531>,  <35.523666, 43.842453, 49.349316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205235, 43.725197, 49.137531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238566, 0.652023, -0.719689,
		0.556193, -0.699239, -0.449126,
		-0.796075, -0.293140, -0.529465,
		34.966412, 43.637257, 48.978691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.786209, 35.375191, 35.390938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186050, 35.381268, 35.400398>,  <35.425957, 35.384914, 35.406075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186050, 35.381268, 35.400398>,  <34.786209, 35.375191, 35.390938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186050, 35.381268, 35.400398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027701, 0.675485, 0.736853,
		-0.004785, -0.737217, 0.675639,
		0.999605, 0.015190, 0.023654,
		35.485931, 35.385826, 35.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012184, 35.200775, 36.157257>,  <34.786209, 35.375191, 35.390938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012184, 35.200775, 36.157257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294857, 35.410061, 35.966743>,  <35.464458, 35.535633, 35.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294857, 35.410061, 35.966743>,  <35.012184, 35.200775, 36.157257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294857, 35.410061, 35.966743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086797, 0.603975, 0.792263,
		0.702190, -0.601216, 0.381403,
		0.706679, 0.523214, -0.476289,
		35.506863, 35.567024, 35.823856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367958, 35.296547, 36.640388>,  <35.012184, 35.200775, 36.157257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367958, 35.296547, 36.640388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514816, 35.566677, 36.384533>,  <35.602932, 35.728756, 36.231018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514816, 35.566677, 36.384533>,  <35.367958, 35.296547, 36.640388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514816, 35.566677, 36.384533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175695, 0.624934, 0.760650,
		0.913419, -0.391652, 0.110792,
		0.367148, 0.675326, -0.639638,
		35.624962, 35.769276, 36.192642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035320, 35.529869, 36.953690>,  <35.367958, 35.296547, 36.640388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035320, 35.529869, 36.953690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898922, 35.811131, 36.704117>,  <35.817081, 35.979889, 36.554375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898922, 35.811131, 36.704117>,  <36.035320, 35.529869, 36.953690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898922, 35.811131, 36.704117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072611, 0.681431, 0.728271,
		0.937255, 0.203036, -0.283425,
		-0.341000, 0.703155, -0.623932,
		35.796623, 36.022076, 36.516937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454285, 36.081108, 37.085178>,  <36.035320, 35.529869, 36.953690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454285, 36.081108, 37.085178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146027, 36.249084, 36.893448>,  <35.961071, 36.349869, 36.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146027, 36.249084, 36.893448>,  <36.454285, 36.081108, 37.085178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146027, 36.249084, 36.893448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090686, 0.672243, 0.734756,
		0.630774, 0.609707, -0.479981,
		-0.770649, 0.419937, -0.479325,
		35.914833, 36.375065, 36.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520618, 36.762722, 37.308392>,  <36.454285, 36.081108, 37.085178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520618, 36.762722, 37.308392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150326, 36.750572, 37.157604>,  <35.928150, 36.743282, 37.067131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150326, 36.750572, 37.157604>,  <36.520618, 36.762722, 37.308392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150326, 36.750572, 37.157604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291233, 0.693155, 0.659333,
		0.241266, 0.720148, -0.650521,
		-0.925729, -0.030379, -0.376965,
		35.872608, 36.741459, 37.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398254, 37.439999, 37.270573>,  <36.520618, 36.762722, 37.308392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398254, 37.439999, 37.270573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052803, 37.238537, 37.261765>,  <35.845531, 37.117661, 37.256481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052803, 37.238537, 37.261765>,  <36.398254, 37.439999, 37.270573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052803, 37.238537, 37.261765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408110, 0.672816, 0.617062,
		-0.295971, 0.541896, -0.786607,
		-0.863625, -0.503654, -0.022019,
		35.793716, 37.087440, 37.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860123, 37.907040, 37.148571>,  <36.398254, 37.439999, 37.270573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860123, 37.907040, 37.148571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643936, 37.605812, 37.298653>,  <35.514225, 37.425076, 37.388702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643936, 37.605812, 37.298653>,  <35.860123, 37.907040, 37.148571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643936, 37.605812, 37.298653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423457, 0.628821, 0.652126,
		-0.727035, 0.193569, -0.658749,
		-0.540467, -0.753071, 0.375207,
		35.481796, 37.379890, 37.411213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166752, 38.222630, 37.257397>,  <35.860123, 37.907040, 37.148571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166752, 38.222630, 37.257397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242912, 37.910919, 37.496220>,  <35.288609, 37.723892, 37.639511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242912, 37.910919, 37.496220>,  <35.166752, 38.222630, 37.257397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242912, 37.910919, 37.496220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276988, 0.540824, 0.794221,
		-0.941819, -0.316601, -0.112874,
		0.190406, -0.779278, 0.597053,
		35.300034, 37.677135, 37.675335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671738, 38.252487, 37.709888>,  <35.166752, 38.222630, 37.257397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671738, 38.252487, 37.709888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940903, 38.042183, 37.918026>,  <35.102402, 37.916000, 38.042908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940903, 38.042183, 37.918026>,  <34.671738, 38.252487, 37.709888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940903, 38.042183, 37.918026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134376, 0.604848, 0.784921,
		-0.727411, -0.598109, 0.336363,
		0.672916, -0.525761, 0.520345,
		35.142776, 37.884453, 38.074131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487267, 38.351955, 38.356720>,  <34.671738, 38.252487, 37.709888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487267, 38.351955, 38.356720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843590, 38.186630, 38.432228>,  <35.057384, 38.087433, 38.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843590, 38.186630, 38.432228>,  <34.487267, 38.351955, 38.356720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843590, 38.186630, 38.432228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039878, 0.484954, 0.873630,
		-0.452631, -0.770707, 0.448482,
		0.890805, -0.413317, 0.188771,
		35.110832, 38.062634, 38.488861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457020, 37.969250, 38.987240>,  <34.487267, 38.351955, 38.356720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457020, 37.969250, 38.987240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838680, 38.080372, 38.942654>,  <35.067677, 38.147045, 38.915901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838680, 38.080372, 38.942654>,  <34.457020, 37.969250, 38.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838680, 38.080372, 38.942654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008884, 0.398487, 0.917131,
		0.299195, -0.874091, 0.382684,
		0.954150, 0.277801, -0.111460,
		35.124924, 38.163712, 38.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777611, 38.021706, 38.953007>,  <34.457020, 37.969250, 38.987240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777611, 38.021706, 38.953007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587757, 37.838001, 39.253353>,  <33.473843, 37.727779, 39.433559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587757, 37.838001, 39.253353>,  <33.777611, 38.021706, 38.953007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587757, 37.838001, 39.253353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592179, -0.464516, -0.658444,
		0.651187, -0.757169, -0.051488,
		-0.474637, -0.459260, 0.750866,
		33.445366, 37.700222, 39.478615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721909, 37.254700, 38.771946>,  <33.777611, 38.021706, 38.953007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721909, 37.254700, 38.771946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447792, 37.316635, 39.056591>,  <33.283321, 37.353798, 39.227379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447792, 37.316635, 39.056591>,  <33.721909, 37.254700, 38.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447792, 37.316635, 39.056591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624890, -0.626848, -0.465375,
		0.374016, -0.763600, 0.526334,
		-0.685292, 0.154843, 0.711617,
		33.242203, 37.363087, 39.270077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539913, 36.538502, 39.197922>,  <33.721909, 37.254700, 38.771946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539913, 36.538502, 39.197922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216545, 36.769207, 39.244923>,  <33.022526, 36.907631, 39.273121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216545, 36.769207, 39.244923>,  <33.539913, 36.538502, 39.197922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216545, 36.769207, 39.244923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565131, -0.704730, -0.428931,
		-0.164588, -0.413157, 0.895663,
		-0.808416, 0.576764, 0.117498,
		32.974022, 36.942238, 39.280170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997120, 36.083878, 39.504238>,  <33.539913, 36.538502, 39.197922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997120, 36.083878, 39.504238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833900, 36.385933, 39.299000>,  <32.735970, 36.567165, 39.175858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833900, 36.385933, 39.299000>,  <32.997120, 36.083878, 39.504238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833900, 36.385933, 39.299000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576322, -0.648937, -0.496722,
		-0.708060, 0.093022, 0.699999,
		-0.408049, 0.755134, -0.513097,
		32.711487, 36.612473, 39.145073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320457, 35.983070, 39.600994>,  <32.997120, 36.083878, 39.504238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320457, 35.983070, 39.600994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338852, 36.242809, 39.297352>,  <32.349888, 36.398651, 39.115166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338852, 36.242809, 39.297352>,  <32.320457, 35.983070, 39.600994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338852, 36.242809, 39.297352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643037, -0.562286, -0.519941,
		-0.764453, 0.512044, 0.391691,
		0.045990, 0.649343, -0.759104,
		32.352650, 36.437611, 39.069622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593737, 36.174980, 39.465775>,  <32.320457, 35.983070, 39.600994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593737, 36.174980, 39.465775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820986, 36.253922, 39.146202>,  <31.957336, 36.301289, 38.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820986, 36.253922, 39.146202>,  <31.593737, 36.174980, 39.465775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820986, 36.253922, 39.146202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673946, -0.445545, -0.589310,
		-0.472262, 0.873236, -0.120117,
		0.568124, 0.197357, -0.798928,
		31.991423, 36.313129, 38.906525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159470, 36.299049, 38.926868>,  <31.593737, 36.174980, 39.465775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159470, 36.299049, 38.926868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484236, 36.211430, 38.710419>,  <31.679094, 36.158859, 38.580547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484236, 36.211430, 38.710419>,  <31.159470, 36.299049, 38.926868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484236, 36.211430, 38.710419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528932, -0.668280, -0.523099,
		-0.247038, 0.710929, -0.658447,
		0.811913, -0.219049, -0.541123,
		31.727810, 36.145714, 38.548080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977625, 36.333176, 38.235989>,  <31.159470, 36.299049, 38.926868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977625, 36.333176, 38.235989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303133, 36.104778, 38.192627>,  <31.498438, 35.967739, 38.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303133, 36.104778, 38.192627>,  <30.977625, 36.333176, 38.235989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303133, 36.104778, 38.192627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537662, -0.668787, -0.513461,
		0.220681, 0.476124, -0.851238,
		0.813769, -0.570990, -0.108406,
		31.547264, 35.933483, 38.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015259, 36.200333, 37.489613>,  <30.977625, 36.333176, 38.235989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015259, 36.200333, 37.489613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265215, 35.931171, 37.647961>,  <31.415190, 35.769676, 37.742970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265215, 35.931171, 37.647961>,  <31.015259, 36.200333, 37.489613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265215, 35.931171, 37.647961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251647, -0.653608, -0.713772,
		0.739043, 0.346410, -0.577768,
		0.624892, -0.672901, 0.395871,
		31.452682, 35.729301, 37.766724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351818, 36.020100, 36.904045>,  <31.015259, 36.200333, 37.489613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351818, 36.020100, 36.904045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343243, 35.748238, 37.197334>,  <31.338099, 35.585121, 37.373306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343243, 35.748238, 37.197334>,  <31.351818, 36.020100, 36.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343243, 35.748238, 37.197334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314831, -0.691487, -0.650175,
		0.948906, -0.244778, -0.199152,
		-0.021438, -0.679654, 0.733220,
		31.336811, 35.544342, 37.417301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583706, 35.543941, 36.628819>,  <31.351818, 36.020100, 36.904045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583706, 35.543941, 36.628819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438917, 35.362617, 36.954639>,  <31.352043, 35.253822, 37.150131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438917, 35.362617, 36.954639>,  <31.583706, 35.543941, 36.628819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438917, 35.362617, 36.954639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393357, -0.717921, -0.574333,
		0.845131, -0.528301, 0.081556,
		-0.361972, -0.453306, 0.814549,
		31.330326, 35.226627, 37.199005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977865, 34.924744, 36.725605>,  <31.583706, 35.543941, 36.628819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977865, 34.924744, 36.725605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629906, 34.852482, 36.909187>,  <31.421131, 34.809124, 37.019337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629906, 34.852482, 36.909187>,  <31.977865, 34.924744, 36.725605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629906, 34.852482, 36.909187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239459, -0.658815, -0.713178,
		0.431205, -0.730294, 0.529843,
		-0.869897, -0.180651, 0.458960,
		31.368937, 34.798286, 37.046875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911787, 34.301529, 36.638763>,  <31.977865, 34.924744, 36.725605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911787, 34.301529, 36.638763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534975, 34.417522, 36.706280>,  <31.308887, 34.487118, 36.746788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534975, 34.417522, 36.706280>,  <31.911787, 34.301529, 36.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534975, 34.417522, 36.706280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333873, -0.760234, -0.557292,
		-0.033286, -0.581339, 0.812980,
		-0.942030, 0.289982, 0.168788,
		31.252365, 34.504517, 36.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528982, 33.704983, 36.793072>,  <31.911787, 34.301529, 36.638763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528982, 33.704983, 36.793072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251316, 33.970573, 36.681885>,  <31.084717, 34.129929, 36.615173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251316, 33.970573, 36.681885>,  <31.528982, 33.704983, 36.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251316, 33.970573, 36.681885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377963, -0.664867, -0.644280,
		-0.612598, -0.342177, 0.712487,
		-0.694167, 0.663978, -0.277966,
		31.043066, 34.169765, 36.598495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775162, 33.458378, 36.854065>,  <31.528982, 33.704983, 36.793072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775162, 33.458378, 36.854065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853062, 33.713322, 36.555843>,  <30.899801, 33.866287, 36.376911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853062, 33.713322, 36.555843>,  <30.775162, 33.458378, 36.854065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853062, 33.713322, 36.555843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303711, -0.683567, -0.663698,
		-0.932648, 0.355687, 0.060449,
		0.194748, 0.637356, -0.745554,
		30.911486, 33.904530, 36.332176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971174, 32.963341, 37.524910>,  <30.775162, 33.458378, 36.854065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971174, 32.963341, 37.524910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337105, 33.092205, 37.622318>,  <31.556664, 33.169521, 37.680763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337105, 33.092205, 37.622318>,  <30.971174, 32.963341, 37.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337105, 33.092205, 37.622318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003727, -0.596256, 0.802786,
		0.403828, -0.735318, -0.544271,
		0.914828, 0.322159, 0.243526,
		31.611553, 33.188854, 37.695377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104450, 32.612000, 38.140789>,  <30.971174, 32.963341, 37.524910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104450, 32.612000, 38.140789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440496, 32.827156, 38.112850>,  <31.642124, 32.956249, 38.096088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440496, 32.827156, 38.112850>,  <31.104450, 32.612000, 38.140789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440496, 32.827156, 38.112850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278928, -0.317980, 0.906139,
		0.465197, -0.780741, -0.417174,
		0.840113, 0.537895, -0.069847,
		31.692530, 32.988525, 38.091896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293730, 32.064686, 38.700089>,  <31.104450, 32.612000, 38.140789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293730, 32.064686, 38.700089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634308, 32.266430, 38.642601>,  <31.838655, 32.387478, 38.608109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634308, 32.266430, 38.642601>,  <31.293730, 32.064686, 38.700089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634308, 32.266430, 38.642601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197542, -0.054576, 0.978774,
		0.485813, -0.861766, -0.146101,
		0.851448, 0.504363, -0.143722,
		31.889742, 32.417740, 38.599483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744255, 31.788200, 39.128021>,  <31.293730, 32.064686, 38.700089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744255, 31.788200, 39.128021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903770, 32.145248, 39.043926>,  <31.999479, 32.359478, 38.993469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903770, 32.145248, 39.043926>,  <31.744255, 31.788200, 39.128021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903770, 32.145248, 39.043926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243910, 0.117759, 0.962622,
		0.884012, -0.435161, -0.170758,
		0.398787, 0.892618, -0.210240,
		32.023407, 32.413033, 38.980854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231445, 31.769997, 39.580368>,  <31.744255, 31.788200, 39.128021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231445, 31.769997, 39.580368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226772, 32.160259, 39.492771>,  <32.223969, 32.394417, 39.440212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226772, 32.160259, 39.492771>,  <32.231445, 31.769997, 39.580368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226772, 32.160259, 39.492771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245496, 0.215108, 0.945230,
		0.969327, -0.042718, -0.242033,
		-0.011685, 0.975656, -0.218997,
		32.223267, 32.452957, 39.427071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724380, 32.032276, 40.062199>,  <32.231445, 31.769997, 39.580368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724380, 32.032276, 40.062199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525352, 32.347160, 39.916473>,  <32.405933, 32.536091, 39.829037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525352, 32.347160, 39.916473>,  <32.724380, 32.032276, 40.062199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525352, 32.347160, 39.916473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152886, 0.493010, 0.856485,
		0.853842, 0.370466, -0.365662,
		-0.497574, 0.787208, -0.364314,
		32.376080, 32.583324, 39.807178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113766, 32.600483, 40.241638>,  <32.724380, 32.032276, 40.062199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113766, 32.600483, 40.241638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752827, 32.769161, 40.205978>,  <32.536263, 32.870369, 40.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752827, 32.769161, 40.205978>,  <33.113766, 32.600483, 40.241638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752827, 32.769161, 40.205978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049095, 0.306044, 0.950751,
		0.428213, 0.853527, -0.296860,
		-0.902343, 0.421698, -0.089148,
		32.482124, 32.895672, 40.179234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246010, 33.387363, 40.361237>,  <33.113766, 32.600483, 40.241638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246010, 33.387363, 40.361237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870998, 33.272991, 40.440521>,  <32.645992, 33.204369, 40.488091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870998, 33.272991, 40.440521>,  <33.246010, 33.387363, 40.361237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870998, 33.272991, 40.440521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061500, 0.424540, 0.903318,
		-0.342432, 0.859075, -0.380434,
		-0.937528, -0.285929, 0.198209,
		32.589741, 33.187214, 40.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859100, 33.960361, 40.466568>,  <33.246010, 33.387363, 40.361237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859100, 33.960361, 40.466568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677303, 33.659935, 40.658123>,  <32.568226, 33.479679, 40.773056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677303, 33.659935, 40.658123>,  <32.859100, 33.960361, 40.466568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677303, 33.659935, 40.658123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058389, 0.511351, 0.857386,
		-0.888834, 0.417639, -0.188553,
		-0.454495, -0.751064, 0.478891,
		32.540955, 33.434616, 40.801792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572548, 34.305050, 40.985260>,  <32.859100, 33.960361, 40.466568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572548, 34.305050, 40.985260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509575, 33.924637, 41.091663>,  <32.471790, 33.696388, 41.155506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509575, 33.924637, 41.091663>,  <32.572548, 34.305050, 40.985260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509575, 33.924637, 41.091663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070860, 0.257792, 0.963599,
		-0.984985, 0.170547, 0.026806,
		-0.157428, -0.951029, 0.266006,
		32.462345, 33.639328, 41.171467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098946, 34.302250, 41.516911>,  <32.572548, 34.305050, 40.985260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098946, 34.302250, 41.516911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318348, 33.968227, 41.533939>,  <32.449989, 33.767815, 41.544155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318348, 33.968227, 41.533939>,  <32.098946, 34.302250, 41.516911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318348, 33.968227, 41.533939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304812, 0.247108, 0.919797,
		-0.778606, -0.491540, 0.390077,
		0.548509, -0.835060, 0.042573,
		32.482903, 33.717709, 41.546711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045265, 34.134979, 42.310707>,  <32.098946, 34.302250, 41.516911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045265, 34.134979, 42.310707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336571, 33.906197, 42.159710>,  <32.511356, 33.768929, 42.069111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336571, 33.906197, 42.159710>,  <32.045265, 34.134979, 42.310707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336571, 33.906197, 42.159710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418501, -0.065007, 0.905887,
		-0.542663, -0.817707, 0.192020,
		0.728267, -0.571952, -0.377489,
		32.555050, 33.734612, 42.046463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102047, 33.579479, 42.629097>,  <32.045265, 34.134979, 42.310707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102047, 33.579479, 42.629097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469040, 33.635696, 42.480251>,  <32.689236, 33.669426, 42.390945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469040, 33.635696, 42.480251>,  <32.102047, 33.579479, 42.629097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469040, 33.635696, 42.480251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380444, -0.036964, 0.924065,
		0.116114, -0.989385, -0.087382,
		0.917486, 0.140541, -0.372113,
		32.744286, 33.677856, 42.368618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537746, 33.104687, 43.116585>,  <32.102047, 33.579479, 42.629097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537746, 33.104687, 43.116585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765560, 33.366482, 42.917675>,  <32.902248, 33.523560, 42.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765560, 33.366482, 42.917675>,  <32.537746, 33.104687, 43.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765560, 33.366482, 42.917675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598713, 0.084198, 0.796526,
		0.563185, -0.751370, -0.343897,
		0.569530, 0.654487, -0.497274,
		32.936420, 33.562828, 42.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154163, 32.903919, 43.374462>,  <32.537746, 33.104687, 43.116585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154163, 32.903919, 43.374462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208424, 33.270851, 43.224743>,  <33.240982, 33.491013, 43.134911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208424, 33.270851, 43.224743>,  <33.154163, 32.903919, 43.374462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208424, 33.270851, 43.224743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649699, 0.202855, 0.732626,
		0.747990, -0.342565, -0.568472,
		0.135655, 0.917333, -0.374298,
		33.249119, 33.546051, 43.112453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851883, 33.045109, 43.439304>,  <33.154163, 32.903919, 43.374462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851883, 33.045109, 43.439304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689285, 33.408497, 43.400448>,  <33.591728, 33.626530, 43.377136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689285, 33.408497, 43.400448>,  <33.851883, 33.045109, 43.439304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689285, 33.408497, 43.400448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617266, 0.351457, 0.703890,
		0.673606, 0.226168, -0.703636,
		-0.406496, 0.908474, -0.097138,
		33.567337, 33.681038, 43.371307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448364, 33.453522, 43.543304>,  <33.851883, 33.045109, 43.439304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448364, 33.453522, 43.543304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138149, 33.702816, 43.583534>,  <33.952019, 33.852394, 43.607670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138149, 33.702816, 43.583534>,  <34.448364, 33.453522, 43.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138149, 33.702816, 43.583534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487066, 0.489354, 0.723394,
		0.401633, 0.610004, -0.683071,
		-0.775537, 0.623240, 0.100571,
		33.905487, 33.889790, 43.613705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691322, 34.079380, 43.527454>,  <34.448364, 33.453522, 43.543304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691322, 34.079380, 43.527454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346191, 34.101360, 43.728455>,  <34.139114, 34.114548, 43.849056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346191, 34.101360, 43.728455>,  <34.691322, 34.079380, 43.527454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346191, 34.101360, 43.728455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493623, 0.305786, 0.814145,
		-0.108920, 0.950513, -0.290965,
		-0.862828, 0.054950, 0.502501,
		34.087341, 34.117844, 43.879204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666668, 34.767162, 43.895641>,  <34.691322, 34.079380, 43.527454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666668, 34.767162, 43.895641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430050, 34.508659, 44.088486>,  <34.288078, 34.353558, 44.204193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430050, 34.508659, 44.088486>,  <34.666668, 34.767162, 43.895641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430050, 34.508659, 44.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377224, 0.306634, 0.873886,
		-0.712586, 0.698805, 0.062397,
		-0.591543, -0.646257, 0.482109,
		34.252586, 34.314781, 44.233120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326244, 35.181519, 44.370560>,  <34.666668, 34.767162, 43.895641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326244, 35.181519, 44.370560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259014, 34.821548, 44.531498>,  <34.218674, 34.605568, 44.628063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259014, 34.821548, 44.531498>,  <34.326244, 35.181519, 44.370560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259014, 34.821548, 44.531498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323026, 0.335340, 0.884987,
		-0.931345, 0.278718, 0.234335,
		-0.168080, -0.899924, 0.402350,
		34.208591, 34.551571, 44.652203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808685, 35.230152, 44.922058>,  <34.326244, 35.181519, 44.370560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808685, 35.230152, 44.922058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037174, 34.905842, 44.973194>,  <34.174267, 34.711254, 45.003876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037174, 34.905842, 44.973194>,  <33.808685, 35.230152, 44.922058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037174, 34.905842, 44.973194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208595, 0.294037, 0.932754,
		-0.793846, -0.506144, 0.337085,
		0.571224, -0.810778, 0.127841,
		34.208542, 34.662609, 45.011547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628696, 35.096264, 45.611740>,  <33.808685, 35.230152, 44.922058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628696, 35.096264, 45.611740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966240, 34.892227, 45.545162>,  <34.168766, 34.769806, 45.505215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966240, 34.892227, 45.545162>,  <33.628696, 35.096264, 45.611740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966240, 34.892227, 45.545162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337714, 0.263874, 0.903504,
		-0.416953, -0.818641, 0.394939,
		0.843860, -0.510095, -0.166444,
		34.219398, 34.739197, 45.495228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862095, 34.954849, 46.246128>,  <33.628696, 35.096264, 45.611740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862095, 34.954849, 46.246128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191402, 34.870365, 46.035370>,  <34.388988, 34.819675, 45.908913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191402, 34.870365, 46.035370>,  <33.862095, 34.954849, 46.246128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191402, 34.870365, 46.035370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553419, 0.092072, 0.827798,
		-0.126325, -0.973095, 0.192687,
		0.823268, -0.211208, -0.526898,
		34.438381, 34.807003, 45.877300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292088, 34.514568, 46.605515>,  <33.862095, 34.954849, 46.246128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292088, 34.514568, 46.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546246, 34.700794, 46.359097>,  <34.698742, 34.812531, 46.211246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546246, 34.700794, 46.359097>,  <34.292088, 34.514568, 46.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546246, 34.700794, 46.359097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623545, 0.161232, 0.764981,
		0.455478, -0.870201, -0.187856,
		0.635399, 0.465569, -0.616047,
		34.736866, 34.840466, 46.174282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839622, 34.363667, 46.958645>,  <34.292088, 34.514568, 46.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839622, 34.363667, 46.958645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947533, 34.664177, 46.717712>,  <35.012280, 34.844482, 46.573151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947533, 34.664177, 46.717712>,  <34.839622, 34.363667, 46.958645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947533, 34.664177, 46.717712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577256, 0.374486, 0.725628,
		0.770713, -0.543456, -0.332652,
		0.269774, 0.751276, -0.602334,
		35.028465, 34.889561, 46.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564247, 34.369808, 46.991844>,  <34.839622, 34.363667, 46.958645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564247, 34.369808, 46.991844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466473, 34.732174, 46.853527>,  <35.407806, 34.949593, 46.770535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466473, 34.732174, 46.853527>,  <35.564247, 34.369808, 46.991844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466473, 34.732174, 46.853527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581311, 0.422332, 0.695495,
		0.776097, -0.031007, -0.629851,
		-0.244441, 0.905911, -0.345795,
		35.393139, 35.003948, 46.749790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191219, 34.796886, 47.111061>,  <35.564247, 34.369808, 46.991844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191219, 34.796886, 47.111061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872749, 35.035595, 47.071125>,  <35.681667, 35.178822, 47.047161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872749, 35.035595, 47.071125>,  <36.191219, 34.796886, 47.111061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872749, 35.035595, 47.071125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308182, 0.541962, 0.781857,
		0.520702, 0.591725, -0.615411,
		-0.796174, 0.596773, -0.099842,
		35.633896, 35.214626, 47.041172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823013, 34.809586, 46.845055>,  <36.191219, 34.796886, 47.111061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823013, 34.809586, 46.845055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123074, 34.603508, 47.010872>,  <37.303112, 34.479862, 47.110363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123074, 34.603508, 47.010872>,  <36.823013, 34.809586, 46.845055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123074, 34.603508, 47.010872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141479, -0.737428, -0.660442,
		0.645952, 0.436782, -0.626073,
		0.750153, -0.515190, 0.414547,
		37.348118, 34.448952, 47.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325569, 34.488495, 46.278858>,  <36.823013, 34.809586, 46.845055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325569, 34.488495, 46.278858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377728, 34.267445, 46.608124>,  <37.409023, 34.134815, 46.805683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377728, 34.267445, 46.608124>,  <37.325569, 34.488495, 46.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377728, 34.267445, 46.608124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009059, -0.829554, -0.558354,
		0.991420, 0.080266, -0.103167,
		0.130399, -0.552629, 0.823163,
		37.416847, 34.101654, 46.855072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717651, 33.866940, 46.055275>,  <37.325569, 34.488495, 46.278858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717651, 33.866940, 46.055275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545208, 33.750328, 46.396839>,  <37.441742, 33.680363, 46.601776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545208, 33.750328, 46.396839>,  <37.717651, 33.866940, 46.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545208, 33.750328, 46.396839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218422, -0.884502, -0.412247,
		0.875466, -0.364234, 0.317636,
		-0.431104, -0.291530, 0.853909,
		37.415878, 33.662868, 46.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018974, 33.199947, 46.124599>,  <37.717651, 33.866940, 46.055275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018974, 33.199947, 46.124599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728123, 33.207417, 46.399097>,  <37.553612, 33.211899, 46.563797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728123, 33.207417, 46.399097>,  <38.018974, 33.199947, 46.124599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728123, 33.207417, 46.399097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315736, -0.896727, -0.310147,
		0.609586, -0.442190, 0.657931,
		-0.727128, 0.018672, 0.686247,
		37.509983, 33.213017, 46.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048080, 32.611618, 46.556416>,  <38.018974, 33.199947, 46.124599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048080, 32.611618, 46.556416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667095, 32.731518, 46.534626>,  <37.438503, 32.803455, 46.521553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667095, 32.731518, 46.534626>,  <38.048080, 32.611618, 46.556416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667095, 32.731518, 46.534626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249767, -0.870662, -0.423751,
		-0.174446, -0.390001, 0.904139,
		-0.952463, 0.299746, -0.054474,
		37.381355, 32.821442, 46.518284>
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
